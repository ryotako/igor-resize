# igor-resize

### 概要
resize.ipf はグラフのサイズを変更するためのユーザー定義メニューを提供します．

### 機能
- 最前面のグラフのサイズを変更
- 直前のサイズ変更の履歴を保存 (メニューの>>で始まる項目)
- 最前面のグラフのサイズの取得
- 最前面 or すべてのグラフのサイズを固定 or オートサイズに設定

### オプション
メインプロシージャウィンドウに以下のように記述することで，ipfファイルを直接編集せずに挙動を変更することができます．
```
override strconstant Resize_Memu     = "Rsz"     // メニューの項目名
override strconstant Resize_Unit     = "inch"    // 単位の指定 (cm, inch, or points)
override strconstant Resize_Range    = "1;2;3;4" // ;を区切り文字として，サイズの選択肢を指定
override constant Resize_AutoLock    = 1         // 1に設定するとサイズ変更後にサイズを固定. 0で無効
override constant Resize_ReuseSetting= 5         // サイズ変更履歴を記録する数(メニューの>>項目の数)
```
エクスペリメントファイルを作るたびにメインプロシージャウィンドウで設定をするのが面倒な場合は，[igor-override](https://github.com/ryotako/igor-override)を用いて上記の定数定義を一つの関数にまとめておくと便利です．

```igor
#include "override"
// この関数を実行すると上記の設定がメインプロシージャウィンドウに書き出される．
// (ただし，値がデフォルトから変更されていない場合は書き出されない)
Function ResizeSetting()
	override("Resize_Memu= Rsz")
	override("Resize_Unit = inch")
	override("Resize_Range = 1;2;3;4")
	override("Resize_AutoLock = 1")
	override("Resize_ReuseSetting = 5")
End
```

### スクリーンショット
<img src="https://raw.github.com/wiki/ryotako/igor-resize/ScreenShot.png" width="800px">
