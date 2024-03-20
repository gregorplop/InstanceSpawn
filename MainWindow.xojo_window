#tag DesktopWindow
Begin DesktopWindow MainWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   True
   Height          =   682
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "InstanceSpawn Harness"
   Type            =   0
   Visible         =   True
   Width           =   736
   Begin DesktopButton InitBtn
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "1. Init SpawnMaster"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   303
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin DesktopButton LaunchBtn
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "2. Launch Instances"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   80
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   335
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin DesktopTextField ExecutablePathField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   "ExecutableFile"
      Index           =   -2147483648
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   "ExecutableFile"
      Top             =   43
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   509
   End
   Begin DesktopTextField MaxAutoRestartsField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   18.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   34
      Hint            =   "MaxAutoRestarts"
      Index           =   -2147483648
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "10"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   "MaxAutoRestarts"
      Top             =   100
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   124
   End
   Begin DesktopLabel AutoRestartHelpLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   34
      Index           =   -2147483648
      Italic          =   False
      Left            =   343
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "-1 = Always AutoRestart / 0 = No Auto-Restart\r\nn = Auto-Restart n times before InstanceDown Event"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   373
   End
   Begin DesktopListBox InstancesList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "30%,70%"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   1
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   154
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Double-click on existing: Edit\r\nDouble-click on empty: Create new\r\nChange both columns to empty: Remove row"
      Top             =   169
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   509
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel ExecutableLabel
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Server Executable File"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   180
   End
   Begin DesktopLabel AutoRestartLabel
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Instance Auto-Restarts (if it terminates by itself)"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   77
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   509
   End
   Begin DesktopLabel Label3
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Command Line Parameters for each executable instance (Double-click to edit)"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   146
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   509
   End
   Begin DesktopListBox LogList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "30%,80%"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   1
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   303
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   207
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   359
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   509
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopLabel LogLabel
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   207
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Action Log"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   335
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   509
   End
   Begin DesktopButton CloseAllBtn
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "3. CloseAll"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   80
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   427
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
   Begin DesktopButton LicenseBtn
      AllowAutoDeactivate=   True
      Bold            =   True
      Cancel          =   False
      Caption         =   "License"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   30
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   632
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   175
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Function CancelClosing(appQuitting As Boolean) As Boolean
		  if IsNull(SpawnMaster) then Return False // allow close
		  
		  if SpawnMaster.isRunning then
		    log("Cannot close window while SpawnMaster is running")
		    Return true
		  end if
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Title = Title + " R" + app.NonReleaseVersion.ToString
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ConfControlsEnable(Value as Boolean)
		  InitBtn.Enabled = Value
		  AutoRestartHelpLabel.Enabled = Value
		  AutoRestartLabel.Enabled = value
		  ExecutablePathField.Enabled = value
		  MaxAutoRestartsField.Enabled = value
		  InstancesList.Enabled = value
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Log(Msg as string)
		  LogList.AddRow DateTime.Now.SQLDateTime , Msg
		  LogList.SelectedRowIndex = LogList.LastAddedRowIndex
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpawnMaster_InstanceDown(sender as InstanceSpawn.SpawnMaster, IndicatedPort as Integer, ExitCode as integer, LastConsoleMsg as String)
		  Log("InstanceDown: Port=" + IndicatedPort.ToString + " Return=" + ExitCode.ToString + " Msg=" + LastConsoleMsg.ReplaceAll(EndOfLine , "//"))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SpawnMaster_Stopped(sender as InstanceSpawn.SpawnMaster)
		  Log("SpawnMaster Stopped")
		  
		  CloseAllBtn.Enabled = false
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		SpawnMaster As InstanceSpawn.SpawnMaster
	#tag EndProperty


#tag EndWindowCode

#tag Events InitBtn
	#tag Event
		Sub Pressed()
		  dim conf as new InstanceSpawn.AppConf
		  
		  conf.ExecutableFile = new FolderItem(ExecutablePathField.Text.Trim)
		  
		  conf.MaxAutoRestarts = MaxAutoRestartsField.Text.ToInteger  // 0=no auto-restart -1=always autorestart
		  MaxAutoRestartsField.Text = conf.MaxAutoRestarts.ToString  // show whatever ToInteger returned
		  
		  
		  for i as Integer = 0 to InstancesList.LastRowIndex
		    
		    conf.InstancesConf.Add new InstanceSpawn.InstanceConf(InstancesList.CellTextAt(i , 0).ToInteger , InstancesList.CellTextAt(i , 1))
		    
		  next
		  
		  // --- finished config -----
		  
		  try
		    
		    SpawnMaster = new InstanceSpawn.SpawnMaster(conf)
		    
		  Catch e as InstanceSpawn.InstanceSpawnException
		    Log("InstanceSpawnException: " + "Code = " + e.ErrorNumber.ToString + " : "  + e.Message)
		    Return  // SpawnMaster object remains nill
		  end try
		  
		  
		  AddHandler SpawnMaster.InstanceDown , WeakAddressOf SpawnMaster_InstanceDown
		  AddHandler SpawnMaster.Stopped , WeakAddressOf SpawnMaster_Stopped
		  
		  ConfControlsEnable(False)
		  LaunchBtn.Enabled = true
		  Log("Initialization OK")
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LaunchBtn
	#tag Event
		Sub Pressed()
		  try
		    
		    SpawnMaster.Launch
		    
		    me.Enabled = False
		    CloseAllBtn.Enabled = true
		    
		    Log(SpawnMaster.ProcessCount.ToString + " processes started")
		    
		  Catch e as InstanceSpawn.InstanceSpawnException
		    
		    MessageBox "InstanceSpawnException: " + EndOfLine + EndOfLine + "Code = " + e.ErrorNumber.ToString + EndOfLine + e.Message
		    
		  end try
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExecutablePathField
	#tag Event
		Sub Opening()
		  if TargetWindows then
		    me.Text = "C:\temp\DummyWebApp\DummyWebApp.exe"
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events InstancesList
	#tag Event
		Sub Opening()
		  me.HeaderAt(0) = "Indicated Port"
		  me.HeaderAt(1) = "Command Line Params"
		  
		  me.AddRow "8000" , "--port=8000"
		  me.AddRow "8001" , "--port=8001"
		  me.AddRow "8002" , "--port=8002"
		  me.AddRow "8003" , "--port=8003"
		  me.AddRow "8004" , "--port=8004"
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoublePressed()
		  Var row, column As Integer
		  row = Me.RowFromXY(System.MouseX - Me.Left - Me.Window.Left, System.MouseY - Me.Top - Me.Window.Top)
		  column = Me.ColumnFromXY(System.MouseX - Me.Left - Me.Window.Left, System.MouseY - Me.Top - Me.Window.Top)
		  
		  if row < 0 or column < 0 then 
		    me.AddRow "port" , "instance args"
		  else
		    me.EditCellAt(row , column)
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  if me.CellTextAt(row , 0).Trim = "" and me.CellTextAt(row , 1).Trim = "" then me.RemoveRowAt(row)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LogList
	#tag Event
		Sub DoublePressed()
		  Var row, column As Integer
		  row = Me.RowFromXY(System.MouseX - Me.Left - Me.Window.Left, System.MouseY - Me.Top - Me.Window.Top)
		  column = Me.ColumnFromXY(System.MouseX - Me.Left - Me.Window.Left, System.MouseY - Me.Top - Me.Window.Top)
		  
		  MessageBox me.CellTextAt(row , column)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CloseAllBtn
	#tag Event
		Sub Pressed()
		  Log("Called CloseAll Method")
		  
		  SpawnMaster.CloseAll
		  
		  me.Enabled = False
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LicenseBtn
	#tag Event
		Sub Pressed()
		  MessageBox app.License
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
