Dim sql, numCur, numRows, row, txt
'sql = "select WareHouse, count(1) as count from WM_ItemDetail  group by WareHouse"
numCur = $DBCursorOpenSQL("DB", "exec warehouse_inventory")
' 这里是执行的stored procedure
numRows = $DBCursorRowCount(numCur)
For row=1 To numRows
	$quantity[row] = $DBCursorGetValue(numCur, "count")
	$warehouse[row] = $DBCursorGetValue(numCur, "WareHouse")
	$DBCursorNext(numCur)
Next
$DBCursorClose(numCur)
