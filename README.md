# igor-resize

resize.ipf provides an user defined menu to resize graphs

### Features
- Modify size of the front graph.
- Record the settings of resizing (menu items beginning with >>).
- Capture size of the front graph.
- Lock or unlock size of all graphs or the front graph. 

### Options
The behavior of this procedure can be tuned without touching the ipf file.
Write the following lines in your main procedure window, which is opend by pressing `control+M` or `Command+M`.
```
override strconstant Resize_Menu     = "Graph;-" // Name of menu (;- means a dividing line)
override strconstant Resize_Unit     = "inch"    // Unit of length (cm, inch, or points)
override strconstant Resize_Range    = "1;2;3;4" // Sizes displayed as Mmnu items
override constant Resize_AutoLock    = 1         // 1: Lock the size after resizing, 0: unlock
override constant Resize_ReuseSetting= 5         // Number of records of resizing (menu items beginning with >>)
```

You can use [igor-override](https://github.com/ryotako/igor-override) to summerize these setting into one function. You do not have to retype the seme override statements in every pxp file.
```igor
#include "override"
// When one use this function, the above override statements are written in your main procedure window.
// (If the value is the same as the default value, the override statement is not written.)
Function ResizeSetting()
	override("Resize_Menu= Graph;-")
	override("Resize_Unit = inch")
	override("Resize_Range = 1;2;3;4")
	override("Resize_AutoLock = 1")
	override("Resize_ReuseSetting = 5")
End
```

### Screenshot
<img src="https://raw.github.com/wiki/ryotako/igor-resize/ScreenShot.png" width="800px">
