$conn = New-Object System.Data.Odbc.OdbcConnection("dsn=KiCAD_SQLite")
$conn.Open()
$cmd = $conn.CreateCommand()
$cmd.CommandText = "SELECT * FROM Resistors"
$reader = $cmd.ExecuteReader()
$reader.Read()
$reader[0]
$reader[1]
$reader[2]
$reader[3]
$reader.Close()
$conn.Close()
