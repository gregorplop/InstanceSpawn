#tag Class
Protected Class SpawnMaster
Inherits Timer
	#tag Event
		Sub Action()
		  Dim RunningInstances as Integer = 0
		  
		  for i as Integer = 0 to Instances.LastIndex
		    
		    if Instances(i).IsRunning then
		      RunningInstances = RunningInstances + 1
		      
		    else  // instance is no longer running
		      
		      if Instances(i).NotifiedTermination then Continue for i // we notified about it closing, nothing left to do 
		      
		      if Instances(i).KillSignal or Instances(i).AutoRestartsLeft = 0 then  // we need to notify
		        Instances(i).NotifiedTermination = true
		        RaiseEvent InstanceDown(Instances(i).PortIndicated , Instances(i).ExitCode , Instances(i).Result)
		      end if
		      
		    end if
		    
		  next i
		  
		  if RunningInstances = 0 then 
		    RunMode = Timer.RunModes.Off
		    Running = false
		    RaiseEvent Stopped // nothing's running
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CloseAll()
		  for i as Integer = 0 to Instances.LastIndex
		    
		    // This method doesn't work on windows
		    Instances(i).KillSignal = true  // so that it doesn't automatically restart
		    Instances(i).Close
		    
		    // This method doesn't work in Windows
		    //Instances(i).Write(String.ChrByte(3))
		    
		    // This method doesn't work in Windows
		    //Instances(i).Execute(String.ChrByte(3))
		    
		    
		  next i
		  
		  if TargetWindows then
		    dim s as new Shell
		    s.ExecuteMode = shell.ExecuteModes.Synchronous
		    s.Execute("taskkill.exe" , "/F /IM " + Instances(0).ExecutableFile.Name)
		  end if
		  
		  Running = false
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(InitConf as InstanceSpawn.AppConf)
		  RunMode = Timer.RunModes.Off
		  Period = 500
		  
		  if IsNull(InitConf) then Raise new InstanceSpawn.InstanceSpawnException("Null Configuration" , 1)
		  if InitConf.InstancesConf.Count = 0 then Raise new InstanceSpawn.InstanceSpawnException("No Instances Defined" , 2)
		  
		  
		  if IsNull(InitConf.ExecutableFile) then Raise new InstanceSpawn.InstanceSpawnException("Null Executable" , 10)
		  if not InitConf.ExecutableFile.Exists then Raise new InstanceSpawn.InstanceSpawnException("Executable does not exist" , 11)
		  if not InitConf.ExecutableFile.IsReadable then Raise new InstanceSpawn.InstanceSpawnException("Executable is not readable" , 12)
		  
		  if InitConf.MaxAutoRestarts < -1 then Raise new InstanceSpawn.InstanceSpawnException("Invalid AutoRestarts value" , 20)
		  
		  for i as Integer = 0 to InitConf.InstancesConf.LastIndex
		    if IsNull(InitConf.InstancesConf(i)) then Raise new InstanceSpawn.InstanceSpawnException("Null Instance Configuration" , 3)
		    if InitConf.InstancesConf(i).PortIndicated < 1 then Raise new InstanceSpawn.InstanceSpawnException("Invalid port number" , 30)
		    
		    for j as Integer = 0 to Instances.LastIndex  // check for duplicate ports and params in already created instances
		      if InitConf.InstancesConf(i).PortIndicated = Instances(j).PortIndicated then Raise new InstanceSpawn.InstanceSpawnException("Duplicate Indicated Port" , 31) 
		      if InitConf.InstancesConf(i).Params = Instances(j).InstanceParams then Raise new InstanceSpawn.InstanceSpawnException("Duplicate Params" , 32)
		    next j
		    
		    Instances.Add new InstanceSpawn.Instance // all conf is held in instance shell objects
		    
		    Instances(Instances.LastIndex).AutoRestartsLeft = InitConf.MaxAutoRestarts
		    Instances(Instances.LastIndex).ExecutableFile = new FolderItem(InitConf.ExecutableFile)
		    Instances(Instances.LastIndex).ExecuteMode = Shell.ExecuteModes.Interactive
		    Instances(Instances.LastIndex).InstanceParams = InitConf.InstancesConf(i).Params
		    Instances(Instances.LastIndex).MaxAutoRestarts = InitConf.MaxAutoRestarts
		    Instances(Instances.LastIndex).PortIndicated = InitConf.InstancesConf(i).PortIndicated
		    Instances(Instances.LastIndex).TimeOut = -1
		    Instances(Instances.LastIndex).Canonical = true // allow ctrl+c termination
		    
		  next i
		  
		  
		  InitializedOK = true  // ready to call Launch
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isInitializedOK() As Boolean
		  Return InitializedOK
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isRunning() As Boolean
		  Return Running
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Launch()
		  if not InitializedOK then raise new InstanceSpawn.InstanceSpawnException("Spawn Engine not initialized" , 100)
		  if Running then raise new InstanceSpawn.InstanceSpawnException("Spawn Engine already running" , 101)
		  
		  Running = true
		  
		  for i as Integer = 0 to Instances.LastIndex
		    
		    Instances(i).KillSignal = False
		    Instances(i).NotifiedTermination = false
		    Instances(i).AutoRestartsLeft = Instances(i).MaxAutoRestarts
		    
		    Instances(i).Execute(Instances(i).ExecutableFile.NativePath , Instances(i).InstanceParams)
		    
		  next i
		  
		  RunMode = Timer.RunModes.Multiple
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProcessCount() As Integer
		  Return Instances.Count
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event InstanceDown(IndicatedPort as Integer, ExitCode as integer, LastConsoleMsg as String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Stopped()
	#tag EndHook


	#tag Property, Flags = &h21
		Private InitializedOK As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Instances() As InstanceSpawn.Instance
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Running As Boolean = False
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="RunMode"
			Visible=true
			Group="Behavior"
			InitialValue="2"
			Type="RunModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Off"
				"1 - Single"
				"2 - Multiple"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Period"
			Visible=true
			Group="Behavior"
			InitialValue="1000"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
