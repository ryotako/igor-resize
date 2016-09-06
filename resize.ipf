#pragma moduleName=Resize

// Options
strconstant Resize_Menu  = "Resize"
strconstant Resize_Unit  = "cm" // cm, inch, or points
strconstant Resize_Range = "4;5;6;7;8;9;10"
constant Resize_AutoLock = 0
constant Resize_ReuseSetting = 3

// Menus
Menu StringFromList(0,Resize_Menu), dynamic
	RemoveListItem(0,Resize_Menu)
	"Target: "+Resize#Target(),/Q,Execute/Q/Z "DoWindow/F "+Resize#Target()
	"----------"
	// Last Setting {{{
	Resize#MenuItemLastSetting(0),  /Q, Resize#MenuCommandLastSetting(0)
	Resize#MenuItemLastSetting(1),  /Q, Resize#MenuCommandLastSetting(1)
	Resize#MenuItemLastSetting(2),  /Q, Resize#MenuCommandLastSetting(2)
	Resize#MenuItemLastSetting(3),  /Q, Resize#MenuCommandLastSetting(3)
	Resize#MenuItemLastSetting(4),  /Q, Resize#MenuCommandLastSetting(4)
	Resize#MenuItemLastSetting(5),  /Q, Resize#MenuCommandLastSetting(5)
	Resize#MenuItemLastSetting(6),  /Q, Resize#MenuCommandLastSetting(6)
	Resize#MenuItemLastSetting(7),  /Q, Resize#MenuCommandLastSetting(7)
	Resize#MenuItemLastSetting(8),  /Q, Resize#MenuCommandLastSetting(8)
	Resize#MenuItemLastSetting(9),  /Q, Resize#MenuCommandLastSetting(9)
	Resize#MenuItemLastSetting(10), /Q, Resize#MenuCommandLastSetting(10)
	Resize#MenuItemLastSetting(11), /Q, Resize#MenuCommandLastSetting(11)
	Resize#MenuItemLastSetting(12), /Q, Resize#MenuCommandLastSetting(12)
	Resize#MenuItemLastSetting(13), /Q, Resize#MenuCommandLastSetting(13)
	Resize#MenuItemLastSetting(14), /Q, Resize#MenuCommandLastSetting(14)
	Resize#MenuItemLastSetting(15), /Q, Resize#MenuCommandLastSetting(15)
	Resize#MenuItemLastSetting(16), /Q, Resize#MenuCommandLastSetting(16)
	Resize#MenuItemLastSetting(17), /Q, Resize#MenuCommandLastSetting(17)
	Resize#MenuItemLastSetting(18), /Q, Resize#MenuCommandLastSetting(18)
	Resize#MenuItemLastSetting(19), /Q, Resize#MenuCommandLastSetting(19)
	Resize#MenuItemLastSetting(20), /Q, Resize#MenuCommandLastSetting(20)
	//}}}
	Submenu "\\M0Resize Graph (1:1)" //{{{
		Resize#MenuItem( 0), /Q, Resize#MenuCommand(0,  (1/1), 0)
		Resize#MenuItem( 1), /Q, Resize#MenuCommand(1,  (1/1), 0)
		Resize#MenuItem( 2), /Q, Resize#MenuCommand(2,  (1/1), 0)
		Resize#MenuItem( 3), /Q, Resize#MenuCommand(3,  (1/1), 0)
		Resize#MenuItem( 4), /Q, Resize#MenuCommand(4,  (1/1), 0)
		Resize#MenuItem( 5), /Q, Resize#MenuCommand(5,  (1/1), 0)
		Resize#MenuItem( 6), /Q, Resize#MenuCommand(6,  (1/1), 0)
		Resize#MenuItem( 7), /Q, Resize#MenuCommand(7,  (1/1), 0)
		Resize#MenuItem( 8), /Q, Resize#MenuCommand(8,  (1/1), 0)
		Resize#MenuItem( 9), /Q, Resize#MenuCommand(9,  (1/1), 0)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (1/1), 0)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (1/1), 0)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (1/1), 0)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (1/1), 0)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (1/1), 0)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (1/1), 0)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (1/1), 0)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (1/1), 0)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (1/1), 0)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (1/1), 0)
	End //}}}
	"(Wide"
	Submenu "\\M0Resize Graph (4:3)" //{{{
		"(Select Width"
		Resize#MenuItem( 0), /Q, Resize#MenuCommand(0,  (4/3), 0)
		Resize#MenuItem( 1), /Q, Resize#MenuCommand(1,  (4/3), 0)
		Resize#MenuItem( 2), /Q, Resize#MenuCommand(2,  (4/3), 0)
		Resize#MenuItem( 3), /Q, Resize#MenuCommand(3,  (4/3), 0)
		Resize#MenuItem( 4), /Q, Resize#MenuCommand(4,  (4/3), 0)
		Resize#MenuItem( 5), /Q, Resize#MenuCommand(5,  (4/3), 0)
		Resize#MenuItem( 6), /Q, Resize#MenuCommand(6,  (4/3), 0)
		Resize#MenuItem( 7), /Q, Resize#MenuCommand(7,  (4/3), 0)
		Resize#MenuItem( 8), /Q, Resize#MenuCommand(8,  (4/3), 0)
		Resize#MenuItem( 9), /Q, Resize#MenuCommand(9,  (4/3), 0)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (4/3), 0)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (4/3), 0)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (4/3), 0)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (4/3), 0)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (4/3), 0)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (4/3), 0)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (4/3), 0)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (4/3), 0)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (4/3), 0)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (4/3), 0)
		"----------"
		"(Select Height"
		Resize#MenuItem( 0), /Q, Resize#MenuCommand(0,  (4/3), 1)
		Resize#MenuItem( 1), /Q, Resize#MenuCommand(1,  (4/3), 1)
		Resize#MenuItem( 2), /Q, Resize#MenuCommand(2,  (4/3), 1)
		Resize#MenuItem( 3), /Q, Resize#MenuCommand(3,  (4/3), 1)
		Resize#MenuItem( 4), /Q, Resize#MenuCommand(4,  (4/3), 1)
		Resize#MenuItem( 5), /Q, Resize#MenuCommand(5,  (4/3), 1)
		Resize#MenuItem( 6), /Q, Resize#MenuCommand(6,  (4/3), 1)
		Resize#MenuItem( 7), /Q, Resize#MenuCommand(7,  (4/3), 1)
		Resize#MenuItem( 8), /Q, Resize#MenuCommand(8,  (4/3), 1)
		Resize#MenuItem( 9), /Q, Resize#MenuCommand(9,  (4/3), 1)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (4/3), 1)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (4/3), 1)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (4/3), 1)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (4/3), 1)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (4/3), 1)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (4/3), 1)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (4/3), 1)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (4/3), 1)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (4/3), 1)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (4/3), 1)
	End //}}}
	Submenu "\\M0Resize Graph (16:9)" //{{{
		"(Select Width"
		Resize#MenuItem( 0), /Q, Resize#MenuCommand(0,  (16/9), 0)
		Resize#MenuItem( 1), /Q, Resize#MenuCommand(1,  (16/9), 0)
		Resize#MenuItem( 2), /Q, Resize#MenuCommand(2,  (16/9), 0)
		Resize#MenuItem( 3), /Q, Resize#MenuCommand(3,  (16/9), 0)
		Resize#MenuItem( 4), /Q, Resize#MenuCommand(4,  (16/9), 0)
		Resize#MenuItem( 5), /Q, Resize#MenuCommand(5,  (16/9), 0)
		Resize#MenuItem( 6), /Q, Resize#MenuCommand(6,  (16/9), 0)
		Resize#MenuItem( 7), /Q, Resize#MenuCommand(7,  (16/9), 0)
		Resize#MenuItem( 8), /Q, Resize#MenuCommand(8,  (16/9), 0)
		Resize#MenuItem( 9), /Q, Resize#MenuCommand(9,  (16/9), 0)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (16/9), 0)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (16/9), 0)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (16/9), 0)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (16/9), 0)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (16/9), 0)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (16/9), 0)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (16/9), 0)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (16/9), 0)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (16/9), 0)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (16/9), 0)
		"----------"
		"(Select Height"
		Resize#MenuItem( 0), /Q, Resize#MenuCommand(0,  (16/9), 1)
		Resize#MenuItem( 1), /Q, Resize#MenuCommand(1,  (16/9), 1)
		Resize#MenuItem( 2), /Q, Resize#MenuCommand(2,  (16/9), 1)
		Resize#MenuItem( 3), /Q, Resize#MenuCommand(3,  (16/9), 1)
		Resize#MenuItem( 4), /Q, Resize#MenuCommand(4,  (16/9), 1)
		Resize#MenuItem( 5), /Q, Resize#MenuCommand(5,  (16/9), 1)
		Resize#MenuItem( 6), /Q, Resize#MenuCommand(6,  (16/9), 1)
		Resize#MenuItem( 7), /Q, Resize#MenuCommand(7,  (16/9), 1)
		Resize#MenuItem( 8), /Q, Resize#MenuCommand(8,  (16/9), 1)
		Resize#MenuItem( 9), /Q, Resize#MenuCommand(9,  (16/9), 1)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (16/9), 1)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (16/9), 1)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (16/9), 1)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (16/9), 1)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (16/9), 1)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (16/9), 1)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (16/9), 1)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (16/9), 1)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (16/9), 1)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (16/9), 1)
	End //}}}
	"(Tall"
	Submenu "\\M0Resize Graph (3:4)" //{{{
		"(Select Width"
		Resize#MenuItem( 0), /Q, Resize#MenuCommand(0,  (3/4), 0)
		Resize#MenuItem( 1), /Q, Resize#MenuCommand(1,  (3/4), 0)
		Resize#MenuItem( 2), /Q, Resize#MenuCommand(2,  (3/4), 0)
		Resize#MenuItem( 3), /Q, Resize#MenuCommand(3,  (3/4), 0)
		Resize#MenuItem( 4), /Q, Resize#MenuCommand(4,  (3/4), 0)
		Resize#MenuItem( 5), /Q, Resize#MenuCommand(5,  (3/4), 0)
		Resize#MenuItem( 6), /Q, Resize#MenuCommand(6,  (3/4), 0)
		Resize#MenuItem( 7), /Q, Resize#MenuCommand(7,  (3/4), 0)
		Resize#MenuItem( 8), /Q, Resize#MenuCommand(8,  (3/4), 0)
		Resize#MenuItem( 9), /Q, Resize#MenuCommand(9,  (3/4), 0)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (3/4), 0)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (3/4), 0)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (3/4), 0)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (3/4), 0)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (3/4), 0)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (3/4), 0)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (3/4), 0)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (3/4), 0)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (3/4), 0)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (3/4), 0)
		"----------"
		"(Select Height"
		Resize#MenuItem( 0),  /Q, Resize#MenuCommand(1,  (3/4), 1)
		Resize#MenuItem( 1),  /Q, Resize#MenuCommand(2,  (3/4), 1)
		Resize#MenuItem( 2),  /Q, Resize#MenuCommand(3,  (3/4), 1)
		Resize#MenuItem( 3),  /Q, Resize#MenuCommand(4,  (3/4), 1)
		Resize#MenuItem( 4),  /Q, Resize#MenuCommand(5,  (3/4), 1)
		Resize#MenuItem( 5),  /Q, Resize#MenuCommand(6,  (3/4), 1)
		Resize#MenuItem( 6),  /Q, Resize#MenuCommand(7,  (3/4), 1)
		Resize#MenuItem( 7),  /Q, Resize#MenuCommand(8,  (3/4), 1)
		Resize#MenuItem( 8),  /Q, Resize#MenuCommand(9,  (3/4), 1)
		Resize#MenuItem( 9),  /Q, Resize#MenuCommand(10, (3/4), 1)
		Resize#MenuItem( 10), /Q, Resize#MenuCommand(11, (3/4), 1)
		Resize#MenuItem( 11), /Q, Resize#MenuCommand(12, (3/4), 1)
		Resize#MenuItem( 12), /Q, Resize#MenuCommand(13, (3/4), 1)
		Resize#MenuItem( 13), /Q, Resize#MenuCommand(14, (3/4), 1)
		Resize#MenuItem( 14), /Q, Resize#MenuCommand(15, (3/4), 1)
		Resize#MenuItem( 15), /Q, Resize#MenuCommand(16, (3/4), 1)
		Resize#MenuItem( 16), /Q, Resize#MenuCommand(17, (3/4), 1)
		Resize#MenuItem( 17), /Q, Resize#MenuCommand(18, (3/4), 1)
		Resize#MenuItem( 18), /Q, Resize#MenuCommand(19, (3/4), 1)
		Resize#MenuItem( 19), /Q, Resize#MenuCommand(20, (3/4), 1)
	End //}}}
	Submenu "\\M0Resize Graph (9:16)" //{{{
		"(Select Width"
		Resize#MenuItem(0),  /Q, Resize#MenuCommand(0,  (9/16), 0)
		Resize#MenuItem(1),  /Q, Resize#MenuCommand(1,  (9/16), 0)
		Resize#MenuItem(2),  /Q, Resize#MenuCommand(2,  (9/16), 0)
		Resize#MenuItem(3),  /Q, Resize#MenuCommand(3,  (9/16), 0)
		Resize#MenuItem(4),  /Q, Resize#MenuCommand(4,  (9/16), 0)
		Resize#MenuItem(5),  /Q, Resize#MenuCommand(5,  (9/16), 0)
		Resize#MenuItem(6),  /Q, Resize#MenuCommand(6,  (9/16), 0)
		Resize#MenuItem(7),  /Q, Resize#MenuCommand(7,  (9/16), 0)
		Resize#MenuItem(8),  /Q, Resize#MenuCommand(8,  (9/16), 0)
		Resize#MenuItem(9),  /Q, Resize#MenuCommand(9,  (9/16), 0)
		Resize#MenuItem(10), /Q, Resize#MenuCommand(10, (9/16), 0)
		Resize#MenuItem(11), /Q, Resize#MenuCommand(11, (9/16), 0)
		Resize#MenuItem(12), /Q, Resize#MenuCommand(12, (9/16), 0)
		Resize#MenuItem(13), /Q, Resize#MenuCommand(13, (9/16), 0)
		Resize#MenuItem(14), /Q, Resize#MenuCommand(14, (9/16), 0)
		Resize#MenuItem(15), /Q, Resize#MenuCommand(15, (9/16), 0)
		Resize#MenuItem(16), /Q, Resize#MenuCommand(16, (9/16), 0)
		Resize#MenuItem(17), /Q, Resize#MenuCommand(17, (9/16), 0)
		Resize#MenuItem(18), /Q, Resize#MenuCommand(18, (9/16), 0)
		Resize#MenuItem(19), /Q, Resize#MenuCommand(19, (9/16), 0)
	End //}}}
	"----------"
	"Capture Size",/Q,Resize#CaptureSize()
	"----------"
	Submenu "Size Lock" //{{{
		"Target",/Q,Resize#SizeLock(Resize#Target())
		"All",/Q,Resize#SizeLockAll()
	End //}}} 
	Submenu "Size Unlock" //{{{
		"Target",/Q,Resize#SizeUnlock(Resize#Target())
		"All",/Q,Resize#SizeUnlockAll()
	End //}}} 	
End

// Functions
static Function ResizeGraph(win,width,height)
	String win; Variable width,height
	ModifyGraph/W=$win width =Size2Points(width)
	ModifyGraph/W=$win height=Size2Points(height)
	SaveSetting(width,height)
	if(RESIZE_AUTOLOCK)
	else
		DoUpdate
		ModifyGraph/W=$win width=0,height=0
	endif
End

static Function Size2Points(size)
	Variable size
	Variable factor
	StrSwitch(RESIZE_UNIT)
	case "inch":
		factor=72	
		break
	case "cm":
		factor=72/2.54
		break	
	case "points": 
	default:
		factor=1
	EndSwitch
	return factor*size
End
static Function Points2Size(pnt)
	Variable pnt
	return pnt / Size2Points(1)
End

static Function SaveSetting(width,height)
	Variable width, height
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

static Function/S Target()
	return StringFromList(0,WinList("*",";","WIN:1"))
End

static Function/S AbbrUnit()
	StrSwitch(RESIZE_UNIT)
	case "inch":
		return "in"
	case "cm":
		return "cm"
	case "points": 
	default:
		return "pnt"
	EndSwitch
End

static Function/S MenuItem(index)
	Variable index
	if(index>=ItemsInList(RESIZE_RANGE))
		return ""
	endif
	return StringFromList(index,RESIZE_RANGE)+" "+AbbrUnit()
End

static Function MenuCommand(index,rate,base)
	Variable index
	Variable rate // width/height
	Variable base // 0:width 1:height
	Variable param=Str2Num(StringFromList(index,RESIZE_RANGE))
	Switch(base)
	case 0:
		Resize#ResizeGraph(Target(),param,param/rate)			
		break
	case 1:
		Resize#ResizeGraph(Target(),param*rate,param)	
		break
	EndSwitch	
End

static Function/S MenuItemLastSetting(i)
	Variable i
	WAVE/T set=root:Packages:resize:setting
	if(!WaveExists(set))
		return ""
	elseif(i < min(DimSize(set,0),Resize_ReuseSetting))
		Variable order = 2
		Variable width  = round(NumberByKey("width" ,set[i])*10^order)/10^order
		Variable height = round(NumberByKey("height",set[i])*10^order)/10^order
		return "\\M0>> Resize Graph ("+Num2Str(width)+" "+AbbrUnit()+" : "+Num2Str(height)+" "+AbbrUnit()+")"
	elseif(i == Resize_ReuseSetting && i>0)
		return "--"
	else
		return ""
	endif
End
static Function MenuCommandLastSetting(i)
	Variable i
	WAVE/T set=root:Packages:resize:setting
	Resize#ResizeGraph(Target(),NumberByKey("width",set[i]),NumberByKey("height",set[i]))
End

static Function SizeLock(win)
	String win
	GetWindow/Z $win, psize
	ModifyGraph/W=$win width=V_right-V_left, height=V_bottom-V_top
End
static Function SizeUnlock(win)
	String win
	ModifyGraph/W=$win width=0, height=0
End

static Function SizeLockAll()
	String graphs = WinList("*",";","WIN:1")
	Make/FREE/N=(ItemsInList(graphs)) f=SizeLock(StringFromList(p,graphs))
End
static Function SizeUnlockAll()
	String graphs = WinList("*",";","WIN:1")
	Make/FREE/N=(ItemsInList(graphs)) f=SizeUnlock(StringFromList(p,graphs))
End

static Function CaptureSize()
	GetWindow/Z $Target(), psize
	SaveSetting(Points2Size(V_right-V_left), Points2Size(V_bottom-V_top))
End

