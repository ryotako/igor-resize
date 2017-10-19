#pragma moduleName = Resize
#pragma version = 1.0

// Options
strconstant Resize_Menu  = "Resize"
strconstant Resize_Range = "5;6;7;8;9;10;11;12"
constant Resize_ReuseSetting = 3

// Menus
Menu StringFromList(0, Resize_Menu), dynamic
	RemoveListItem(0, Resize_Menu)
	
	"Target: " + Resize#TargetWindow(), /Q, DoWindow/F $Resize#TargetWindow()
	Resize#MenuItems_LastSetting(), /Q, Resize#MenuAction_LastSetting()
	"-"
	SubMenu "Resize Graph 1:1"
		Resize#MenuItems(), /Q, Resize#MenuAction( 1/ 1, "width")
	End
	"(Wide"
	SubMenu "Resize Graph 4:3"
		"(Select Width;"    + Resize#MenuItems(), /Q, Resize#MenuAction( 4/ 3, "width")	
		"-;(Select Height;" + Resize#MenuItems(), /Q, Resize#MenuAction( 4/ 3, "height")
	End
	SubMenu "Resize Graph 16:9"
		"(Select Width;"    + Resize#MenuItems(), /Q, Resize#MenuAction(16/ 9, "width")	
		"-;(Select Height;" + Resize#MenuItems(), /Q, Resize#MenuAction(16/ 9, "height")
	End
	"(Tall"
	SubMenu "Resize Graph 3:4"
		"(Select Width;"   + Resize#MenuItems(), /Q, Resize#MenuAction(3/4, "width")	
		"-;(Select Height" + Resize#MenuItems(), /Q, Resize#MenuAction(3/4, "height")
	End
	SubMenu "Resize Graph 9:16"
		"(Select Width;"   + Resize#MenuItems(), /Q, Resize#MenuAction(16/9, "width")	
		"-;(Select Height" + Resize#MenuItems(), /Q, Resize#MenuAction(16/9, "height")
	End
	"-;Capture Graph Size", /Q, Resize#CaptureGraphSize()
End

// Functions
static Function/S MenuItems()
	String items = ""
	Variable i
	for(i = 0; i < ItemsInList(Resize_Range); i += 1)
		items += StringFromList(i, Resize_Range) + " cm;"
	endfor
	return items
End

static Function MenuAction(ratio, baseDirection)
	Variable ratio; String baseDirection

	GetLastUserMenuInfo
	String number, unit
	SplitString/E="(\\d+(?:\\.\\d+)?) (\\w+)" S_Value, number, unit
	
	Variable width, height
	strSwitch(baseDirection)
		case "height":
			height = Str2Num(number)
			width = height * ratio
			break
		case "width":
		default:
			width = Str2Num(number)
			height = width / ratio
	endSwitch

	SaveSetting(width, height)
	ResizeGraph(width, height)
End

static Function/S MenuItems_LastSetting()
	String items = ""
	
	WAVE/T set=root:Packages:Resize:setting
	Variable i
	for(i = 0; i < min(Resize_ReuseSetting, DimSize(set, 0)); i += 1)
		String item
		sprintf item, ">> %.3g cm : %.3g cm;", NumberByKey("width" ,set[i]), NumberByKey("height" ,set[i])
		items += item
	endfor
	
	return items
End

static Function MenuAction_LastSetting()
	GetLastUserMenuInfo
	String strWidth, strHeight
	SplitString/E="(\\d+(?:\\.\\d+)?) cm : (\\d+(?:\\.\\d+)?) cm" S_Value, strWidth, strHeight
	
	Variable width  = Str2Num(strWidth)
	Variable height = Str2Num(strHeight)

	if(NumType(width) == 0 && NumType(height) == 0)
		SaveSetting(width, height)
		ResizeGraph(width, height)
	endif
End

static Function CaptureGraphSize()
	GetWindow/Z $TargetWindow() psize
	Variable width  = (V_right-V_left) / (72 / 2.54) // points -> cm
	Variable height = (V_bottom-V_top) / (72 / 2.54) // points -> cm
	SaveSetting(width, height)
End

static Function/S TargetWindow()
	return StringFromList(0,WinList("*",";","WIN:1")) // forefront graph
End

static Function ResizeGraph(width, height)
	Variable width, height // cm

	width  *= (72 / 2.54) // cm -> points
	height *= (72 / 2.54) // cm -> points
	String cmd, win = TargetWindow()
	if(strlen(win))
		sprintf cmd, "ModifyGraph/W=%s width=%g, height=%g; DoUpdate; ModifyGraph/W=%s width=0, height=0", win, width, height, win
		Execute/P cmd	
	endif
End

static Function SaveSetting(width, height)
	Variable width, height // cm
	if(NumType(width) || NumType(height))
		return NaN
	endif
	
	NewDataFolder/O root:Packages
	NewDataFOlder/O root:Packages:Resize
	WAVE/T set = root:Packages:Resize:Setting
	if(!WaveExists(set))
		Make/O/T/N=0 $"root:Packages:Resize:Setting"/WAVE=set
	endif

	String setting="width:"+Num2Str(width)+";height:"+Num2Str(height)
	Extract/T/O set, set, cmpstr(set,setting)
	InsertPoints 0,1,set; set[0] = "width:"+Num2Str(width)+";height:"+Num2Str(height)
	DeletePoints Resize_ReuseSetting, DimSize(set,0), set
End