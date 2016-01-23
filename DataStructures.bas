Attribute VB_Name = "DataStructures"
Option Explicit

Sub ImplementStructures()
On Error GoTo ErrHandle:

    Dim arr As Variant, arritem As Variant
    Dim i As Integer, j As Integer
    
    Dim simplelanguages(), simpledatabases(), simpleoperatingsystems()
    
    ' -------------------------------
    ' ARRAY
    ' -------------------------------
    
    ' POPULATING (SIMPLE)
    simplelanguages = Array("C++", "C", "Java", "C#", "Python", "PHP", _
                            "Perl", "R", "Ruby", "VB.NET", "Javascript", "Matlab")
    simpledatabases = Array("Oracle", "SQL Server", "PostgreSQL", "MySQL", "DB2", _
                           "SQLite", "MS Access", "SAP Sybase", "Teradata", "MongoDB")
    simpleoperatingsystems = Array("Windows 7 ", "Windows XP", "Windows 8", "Windows 8.1", _
                                   "Windows 10", "Windows Vista", "Mac OS X 11", "Mac OS X 10", _
                                   "Linux Mint", "Linux Debian", "Android", "iOS")
    
    
    ' POPULATING (NESTED)
    Dim nestedlanguages(0 To 12) As Variant
    
    nestedlanguages(0) = Array("Language", "Uses", "Ranking")
    nestedlanguages(1) = Array("C++", "computing", "99.6")
    nestedlanguages(2) = Array("C", "computing", "99.9")
    nestedlanguages(3) = Array("Java", "application", "100")
    nestedlanguages(4) = Array("C#", "application", "91.8")
    nestedlanguages(5) = Array("Python", "application", "95.8")
    nestedlanguages(6) = Array("PHP", "web", "84.5")
    nestedlanguages(7) = Array("Perl", "web", "66.9")
    nestedlanguages(8) = Array("R", "computing", "84.7")
    nestedlanguages(9) = Array("Ruby", "web", "75.3")
    nestedlanguages(10) = Array("VB.NET", "application", "63.4")
    nestedlanguages(11) = Array("Javascript", "web", "83")
    nestedlanguages(12) = Array("Matlab", "computing", "72.4")
    
    Debug.Print vbNewLine & "MULTI-DIMENSIONAL ARRAY NESTED FOR LOOP W/ BOUND LIMITS"
    For i = LBound(nestedlanguages) To UBound(nestedlanguages)
        For Each arritem In nestedlanguages(i)
            Debug.Print arritem
        Next arritem
    Next i
    
    
    Dim nesteddatabases() As Variant
    ReDim nesteddatabases(0 To 10, 0 To 10) As Variant
    
    nesteddatabases(0, 0) = "Databases": nesteddatabases(0, 1) = "Type"
    nesteddatabases(0, 2) = "Size": nesteddatabases(0, 3) = "Ranking"
    nesteddatabases(1, 0) = "Oracle": nesteddatabases(1, 1) = "Proprietary"
    nesteddatabases(1, 2) = "Server": nesteddatabases(1, 3) = 1497.55
    nesteddatabases(2, 0) = "SQL Server": nesteddatabases(2, 1) = "Proprietary"
    nesteddatabases(2, 2) = "Server": nesteddatabases(2, 3) = 1123.16
    nesteddatabases(3, 0) = "PostgreSQL": nesteddatabases(3, 1) = "Open-Source"
    nesteddatabases(3, 2) = "Server": nesteddatabases(3, 3) = 280.09
    nesteddatabases(4, 0) = "MySQL": nesteddatabases(4, 1) = "Open-Source"
    nesteddatabases(4, 2) = "Server": nesteddatabases(4, 3) = 1298.54
    nesteddatabases(5, 0) = "DB2": nesteddatabases(5, 1) = "Proprietary"
    nesteddatabases(5, 2) = "Server": nesteddatabases(5, 3) = 196.13
    nesteddatabases(6, 0) = "SQLite": nesteddatabases(6, 1) = "Open-Source"
    nesteddatabases(6, 2) = "File": nesteddatabases(6, 3) = 100.85
    nesteddatabases(7, 0) = "MS Access": nesteddatabases(7, 1) = "Proprietary"
    nesteddatabases(7, 2) = "File": nesteddatabases(7, 3) = 140.21
    nesteddatabases(8, 0) = "SAP Sybase": nesteddatabases(8, 1) = "Proprietary"
    nesteddatabases(8, 2) = "Server": nesteddatabases(8, 3) = 81.47
    nesteddatabases(9, 0) = "Teradata": nesteddatabases(9, 1) = "Proprietary"
    nesteddatabases(9, 2) = "Server": nesteddatabases(9, 3) = 75.72
    nesteddatabases(10, 0) = "MongoDB": nesteddatabases(10, 1) = "Open-Source"
    nesteddatabases(10, 2) = "Server": nesteddatabases(10, 3) = 301.39

    Debug.Print vbNewLine & "MULTI-DIMENSIONAL ARRAY NESTED FOR LOOP"
    For i = 0 To 10
        For j = 0 To 2
            Debug.Print nesteddatabases(i, j)
        Next j
    Next i
    
    
    Dim nestedoperatingsystems(0 To 12) As Variant
    
    nestedoperatingsystems(0) = Split("Operating Systems, Type, Kernel, Market Share", ", ")
    nestedoperatingsystems(1) = Split("Windows 7, desktop, NT, 56.11", ", ")
    nestedoperatingsystems(2) = Split("Windows XP, desktop, NT, 10.59", ", ")
    nestedoperatingsystems(3) = Split("Windows 8, desktop, NT, 2.88", ", ")
    nestedoperatingsystems(4) = Split("Windows 8.1, desktop, NT, 11.15", ", ")
    nestedoperatingsystems(5) = Split("Windows 10, desktop, NT, 9", ", ")
    nestedoperatingsystems(6) = Split("Windows Vista, desktop, NT, 0", ", ")
    nestedoperatingsystems(7) = Split("Mac OS X 11, desktop, Unix, 2.66", ", ")
    nestedoperatingsystems(8) = Split("Mac OS X 10, desktop, Unix, 2.45", ", ")
    nestedoperatingsystems(9) = Split("Linux Mint, desktop, Linux, 0", ", ")
    nestedoperatingsystems(10) = Split("Linux Debian, desktop, Linux, 0", ", ")
    nestedoperatingsystems(11) = Split("Android, mobile, Linux, 48.12", ", ")
    nestedoperatingsystems(12) = Split("iOS, mobile, Unix, 34.71", ", ")


    ' -------------------------------
    ' COLLECTIONS
    ' -------------------------------
    Dim langcollection As New Collection
    Dim dbcollection As New Collection
    Dim oscollection As New Collection
    Dim ossubcollection As New Collection
        
        
    ''' NESTED ARRAY COLLECTIONS '''
    langcollection.Add Array("Language", "Uses", "Ranking"), "Language"
    langcollection.Add Array("C++", "computing", "99.6"), "C++"
    langcollection.Add Array("C", "computing", "99.9"), "C"
    langcollection.Add Array("Java", "application", "100"), "Java"
    langcollection.Add Array("C#", "application", "91.8"), "C#"
    langcollection.Add Array("Python", "application", "95.8"), "Python"
    langcollection.Add Array("PHP", "web", "84.5"), "PHP"
    langcollection.Add Array("Perl", "web", "66.9"), "Perl"
    langcollection.Add Array("R", "computing", "84.7"), "R"
    langcollection.Add Array("Ruby", "web", "75.3"), "Ruby"
    langcollection.Add Array("VB.NET", "application", "63.4"), "VB.NET"
    langcollection.Add Array("Javascript", "web", "83"), "Javascript"
    langcollection.Add Array("Matlab", "computing", "72.4"), "Matlab"
    
    For j = 0 To 10
        dbcollection.Add Split("" & nesteddatabases(j, 0) & ", " & nesteddatabases(j, 1) & ", " _
                                  & nesteddatabases(j, 2) & ", " & nesteddatabases(j, 3) & "", ", "), nesteddatabases(j, 0)
    Next j


    ''' NESTED COLLECTIONS '''
    ossubcollection.Add "Operating Systems": ossubcollection.Add "Type"
    ossubcollection.Add "Kernel": ossubcollection.Add "Market Share"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Windows 7": ossubcollection.Add "desktop"
    ossubcollection.Add "NT": ossubcollection.Add "56.11"
    oscollection.Add ossubcollection, ossubcollection(1)
    
    Set ossubcollection = New Collection
    ossubcollection.Add "Windows XP": ossubcollection.Add "desktop"
    ossubcollection.Add "NT": ossubcollection.Add "10.59"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Windows 8": ossubcollection.Add "desktop"
    ossubcollection.Add "NT": ossubcollection.Add "2.88"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Windows 8.1": ossubcollection.Add "desktop"
    ossubcollection.Add "NT": ossubcollection.Add "11.15"
    oscollection.Add ossubcollection

    Set ossubcollection = New Collection
    ossubcollection.Add "Windows 10": ossubcollection.Add "desktop"
    ossubcollection.Add "NT": ossubcollection.Add "9"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Windows Vista": ossubcollection.Add "desktop"
    ossubcollection.Add "NT": ossubcollection.Add "0"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Mac OS X 11": ossubcollection.Add "desktop"
    ossubcollection.Add "Unix": ossubcollection.Add "2.66"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Mac OS X 10": ossubcollection.Add "desktop"
    ossubcollection.Add "Unix": ossubcollection.Add "2.45"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Linux Mint": ossubcollection.Add "desktop"
    ossubcollection.Add "Linux": ossubcollection.Add "0"
    oscollection.Add ossubcollection, ossubcollection(1)

    Set ossubcollection = New Collection
    ossubcollection.Add "Linux Debian": ossubcollection.Add "desktop"
    ossubcollection.Add "Linux": ossubcollection.Add "0"
    oscollection.Add ossubcollection, ossubcollection(1)
    
    Set ossubcollection = New Collection
    ossubcollection.Add "Android": ossubcollection.Add "mobile"
    ossubcollection.Add "Linux": ossubcollection.Add 48.12
    oscollection.Add ossubcollection, ossubcollection(1)
    
    Set ossubcollection = New Collection
    ossubcollection.Add "iOS": ossubcollection.Add "mobile"
    ossubcollection.Add "Unix": ossubcollection.Add 34.71
    oscollection.Add ossubcollection, ossubcollection(1)

    Debug.Print vbNewLine & "MULTI-DIMENSIONAL COLLECTION NESTED FOR LOOP"
    For i = 1 To 13
        For Each arritem In oscollection(i)
            Debug.Print arritem
        Next arritem
    Next i
    
    ' -------------------------------
    ' DICTIONARY
    ' -------------------------------
    Dim langdict As Object
    Dim key As String, val As Variant
    Dim element As Variant, item As Variant
    
    Set langdict = CreateObject("Scripting.Dictionary")
        
    key = "C++": val = Array("computing", "99.6"): langdict.Add key, val
    key = "C": val = Array("computing", "99.9"): langdict.Add key, val
    key = "Java": val = Array("application", "100"): langdict.Add key, val
    key = "C#": val = Array("application", "91.8"): langdict.Add key, val
    key = "Python": val = Array("application", "95.8"): langdict.Add key, val
    key = "PHP": val = Array("web", "84.5"): langdict.Add key, val
    key = "Perl": val = Array("web", "66.9"): langdict.Add key, val
    key = "R": val = Array("computing", "84.7"): langdict.Add key, val
    key = "Ruby": val = Array("web", "75.3"): langdict.Add key, val
    key = "VB.NET": val = Array("application", "63.4"): langdict.Add key, val
    key = "Javascript": val = Array("web", "83"): langdict.Add key, val
    key = "Matlab": val = Array("computing", "72.4"): langdict.Add key, val
       
    Debug.Print vbNewLine & "DICTIONARY NESTED FOR LOOP - KEY/VALUE PAIRS"
    For Each element In langdict.keys
        Debug.Print element
        For Each item In langdict(element)
            Debug.Print item
        Next item
    Next element
    
    langdict.RemoveAll
    Set langdict = Nothing


    ' -------------------------------
    ' ARRAY LIST
    ' -------------------------------
    Dim dbarrlist As Object
    
    Set dbarrlist = CreateObject("System.Collections.ArrayList")
    
    dbarrlist.Add Array("Oracle", "Proprietary", "Server", "1497.55")
    dbarrlist.Add Array("SQL Server", "Proprietary", "Server", "1123.16")
    dbarrlist.Add Array("PostgreSQL", "Open-Source", "Server", "280.09")
    dbarrlist.Add Array("MySQL", "Open-Source", "Server", "1298.54")
    dbarrlist.Add Array("DB2", "Proprietary", "Server", "196.13")
    dbarrlist.Add Array("SQLite", "Open-Source", "File", "100.85")
    dbarrlist.Add Array("MS Access", "Proprietary", "File", "140.21")
    dbarrlist.Add Array("SAP Sybase", "Proprietary", "Server", "81.47")
    dbarrlist.Add Array("Teradata", "Proprietary", "Server", "75.72")
    dbarrlist.Add Array("MongoDB", "Open-Source", "Server", "301.39")
    
    dbarrlist.Clear
    Set dbarrlist = Nothing
        
    ' -------------------------------
    ' STACK
    ' -------------------------------
    Dim osstack As Object
    Set osstack = CreateObject("System.Collections.Stack")
        
    osstack.Push Array("Windows 7 ", "desktop", "NT", "56.11")
    osstack.Push Array("Windows XP", "desktop", "NT", "10.59")
    osstack.Push Array("Windows 8", "desktop", "NT", "2.88")
    osstack.Push Array("Windows 8.1", "desktop", "NT", "11.15")
    osstack.Push Array("Windows 10", "desktop", "NT", "9")
    osstack.Push Array("Windows Vista", "desktop", "NT", "0")
    osstack.Push Array("Mac OS X 11", "desktop", "Unix", "2.66")
    osstack.Push Array("Mac OS X 10", "desktop", "Unix", "2.45")
    osstack.Push Array("Linux Mint", "desktop", "Linux", "0")
    osstack.Push Array("Linux Debian", "desktop", "Linux", "0")
    osstack.Push Array("Android", "mobile", "Linux", "48.12")
    osstack.Push Array("iOS", "mobile", "Unix", "34.71")
    
    Debug.Print vbNewLine & "STACK NESTED FOR LOOP ELMEENT/ITEMS"
    For Each element In osstack
        For Each item In element
            Debug.Print item
        Next item
    Next element
    
    osstack.Clear
    Set osstack = Nothing
    
    ' -------------------------------
    ' QUEUE
    ' -------------------------------
    Dim osqueue As Object
    Set osqueue = CreateObject("System.Collections.Queue")
    
    osqueue.Enqueue Array("Windows 7 ", "desktop", "NT", "56.11")
    osqueue.Enqueue Array("Windows XP", "desktop", "NT", "10.59")
    osqueue.Enqueue Array("Windows 8", "desktop", "NT", "2.88")
    osqueue.Enqueue Array("Windows 8.1", "desktop", "NT", "11.15")
    osqueue.Enqueue Array("Windows 10", "desktop", "NT", "9")
    osqueue.Enqueue Array("Windows Vista", "desktop", "NT", "0")
    osqueue.Enqueue Array("Mac OS X 11", "desktop", "Unix", "2.66")
    osqueue.Enqueue Array("Mac OS X 10", "desktop", "Unix", "2.45")
    osqueue.Enqueue Array("Linux Mint", "desktop", "Linux", "0")
    osqueue.Enqueue Array("Linux Debian", "desktop", "Linux", "0")
    osqueue.Enqueue Array("Android", "mobile", "Linux", "48.12")
    osqueue.Enqueue Array("iOS", "mobile", "Unix", "34.71")
    
    Debug.Print vbNewLine & "QUEUE NESTED FOR LOOP ELMEENT/ITEMS"
    For Each element In osqueue
        For Each item In element
            Debug.Print item
        Next item
    Next element
        
    osqueue.Clear
    Set osqueue = Nothing
    
    
    ' -------------------------------
    ' NAMED RANGES
    ' -------------------------------
    i = 3: j = 4
    For Each arr In oscollection
        For Each arritem In arr
            Cells(i, j) = arritem
            j = j + 1
        Next arritem
        j = 4
        i = i + 1
    Next arr
    
    Dim osMatrix As Range, wsh As Worksheet
        
    Sheets(1).Range(Cells(3, 4), Cells(15, 7)).Name = "osMatrix"
    Set wsh = Sheets(1)
    
    Set osMatrix = Sheets(1).Range("osMatrix")
        
    osMatrix.Clear
    Names("osMatrix").Delete
    Set osMatrix = Nothing
        
    
    ' -------------------------------
    ' BASIC OPERATIONS
    ' -------------------------------
    
    ' SORT
    Dim dbArray As Range
    For i = 1 To 10
        For j = 0 To 3
            Cells(2 + i, 4 + j) = nesteddatabases(i, j)
        Next j
    Next i
    
    Set dbArray = Range(Cells(3, 4), Cells(12, 7))
    dbArray.Sort key1:=dbArray, order1:=xlAscending, MatchCase:=False
    
    Erase nesteddatabases
    ReDim nesteddatabases(0 To 10, 0 To 10) As Variant
    For i = 0 To dbArray.Rows.Count - 1
        For j = 0 To dbArray.Columns.Count - 1
            nesteddatabases(i, j) = dbArray(i + 1, j + 1)
        Next j
    Next i
    Set dbArray = Nothing
    Sheets(1).Range(Cells(3, 4), Cells(15, 7)).ClearContents
    Range("A1").Activate
    
    ' FILTER
    Dim tempdb(0 To 10, 0 To 10) As Variant
    j = 0
    For i = 0 To 9
        If nesteddatabases(i, 1) = "Open-Source" Then
            tempdb(j, 0) = nesteddatabases(i, 0)
            tempdb(j, 1) = nesteddatabases(i, 1)
            tempdb(j, 2) = nesteddatabases(i, 2)
            tempdb(j, 3) = nesteddatabases(i, 3)
            j = j + 1
        End If
    Next i

    Erase nesteddatabases
    ReDim nesteddatabases(0 To j, 0 To 3) As Variant
    For i = 0 To j
        nesteddatabases(i, 0) = tempdb(i, 0)
        nesteddatabases(i, 1) = tempdb(i, 1)
        nesteddatabases(i, 2) = tempdb(i, 2)
        nesteddatabases(i, 3) = tempdb(i, 3)
    Next i
    
    ' AGGREGATE
    Dim icnt As Integer, jcnt As Integer
    Dim desktopavgmktshare As Double, mobileavgmktshare As Double
    
    i = 0: j = 0: icnt = 0: jcnt = 0
    For Each arr In nestedoperatingsystems
                
            Select Case arr(1)
                Case "desktop"
                i = i + arr(3)
                icnt = icnt + 1
                
                Case "mobile"
                j = j + arr(3)
                jcnt = jcnt + 1
            End Select
        
    Next arr
    
    desktopavgmktshare = i / icnt
    mobileavgmktshare = j / jcnt

    ' MERGE
    Dim cpuArray() As Variant
    Dim cpuColl As New Collection
    
    cpuArray = Array(simplelanguages, simpledatabases, simpleoperatingsystems)
    cpuArray = Array(nestedlanguages, nesteddatabases, nestedoperatingsystems)
    cpuColl.Add langcollection
    cpuColl.Add dbcollection
    cpuColl.Add oscollection
    
    
    ' -------------------------------
    ' WORKSHEET
    ' -------------------------------
    Application.DisplayAlerts = False
    Workbooks.Add
    j = 1
    For i = 0 To 12
        For Each arritem In nestedlanguages(i)
            Worksheets(1).Cells(i + 1, j) = arritem
            j = j + 1
        Next arritem
        j = 1
    Next i
    ActiveWorkbook.SaveAs Workbooks(1).Path & "\Data\Languages_XL.csv", FileFormat:=xlCSV
    ActiveWorkbook.Close False
    
    Workbooks.Add
    j = 1
    For i = 1 To 11
        For Each arritem In dbcollection(i)
            Worksheets(1).Cells(i, j) = arritem
            j = j + 1
        Next arritem
        j = 1
    Next i
    
    ActiveWorkbook.SaveAs Workbooks(1).Path & "\Data\Databases_XL.csv", FileFormat:=xlCSV
    ActiveWorkbook.Close False
    
    Workbooks.Add
    For i = 0 To 12
        For Each arritem In nestedoperatingsystems(i)
            Worksheets(1).Cells(i + 1, j) = arritem
            j = j + 1
        Next arritem
        j = 1
    Next i
    
    ActiveWorkbook.SaveAs Workbooks(1).Path & "\Data\OperatingSystems_XL.csv", FileFormat:=xlCSV
    ActiveWorkbook.Close False
    
    Application.DisplayAlerts = True
    
    Debug.Print vbNewLine & "Successfully outputted array data!"
    MsgBox "Successfully outputted array data!", vbInformation
    Exit Sub
    
ErrHandle:
    MsgBox Err.Number & " - " & Err.Description
    Exit Sub
End Sub

