#tag Class
Private Class Instance
Inherits Shell
	#tag Event
		Sub Completed()
		  if DebugBuild then
		    System.DebugLog(PortIndicated.ToString + " : completed")
		  end if
		  
		  if KillSignal then Return  // do not try to resuscitate
		  
		  select case AutoRestartsLeft
		    
		  case -1
		    Execute(ExecutableFile.NativePath , InstanceParams)
		    
		  case 0
		    
		    Return // do not try to resuscitate
		    
		  else
		    
		    Execute(ExecutableFile.NativePath , InstanceParams)
		    AutoRestartsLeft = AutoRestartsLeft - 1
		    
		  end Select
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		AutoRestartsLeft As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ExecutableFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		InstanceParams As String
	#tag EndProperty

	#tag Property, Flags = &h0
		KillSignal As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		MaxAutoRestarts As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		#tag Note
			Indicates that an InstanceDown event has been raised for this instance going down and not restarted
			
		#tag EndNote
		NotifiedTermination As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		PortIndicated As Integer
	#tag EndProperty


	#tag ViewBehavior
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
			InitialValue=""
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
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOut"
			Visible=true
			Group=""
			InitialValue=""
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExecuteMode"
			Visible=true
			Group=""
			InitialValue=""
			Type="ExecuteModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Synchronous"
				"1 - Asynchronous"
				"2 - Interactive"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Arguments"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backend"
			Visible=true
			Group=""
			InitialValue=""
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Canonical"
			Visible=true
			Group=""
			InitialValue=""
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoRestartsLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InstanceParams"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PortIndicated"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxAutoRestarts"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KillSignal"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NotifiedTermination"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
