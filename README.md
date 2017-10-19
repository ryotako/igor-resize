# igor-resize

resize.ipf provides an user defined menu to resize graphs

### Features
- Modify size of the front graph.
- Record the settings of resizing (menu items beginning with >>).
- Capture size of the front graph.

### Options
The behavior of this procedure can be tuned without touching the ipf file.
Write the following lines in your main procedure window, which is opend by pressing `control+M` or `Command+M`.
```
#include "resize"
override strconstant Resize_Menu      = "Graph;-" // Name of menu (;- means a dividing line)
override strconstant Resize_Range     = "6;7;8;9" // Sizes displayed as Menu items
override constant Resize_ReuseSetting = 5         // Number of records of resizing (menu items beginning with >>)
```

### Screenshot

![Screenshot](http://img.f.hatena.ne.jp/images/fotolife/r/ryotako/20160816/20160816034054.png)
