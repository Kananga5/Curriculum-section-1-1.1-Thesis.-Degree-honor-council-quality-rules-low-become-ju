VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm10 
   Caption         =   "UserForm10"
   ClientHeight    =   9948
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   20148
   OleObjectBlob   =   "UserForm9995 form acess databse.frx":0000
   StartUpPosition =   1  'CenterOwner
   WhatsThisButton =   -1  'True
   WhatsThisHelp   =   -1  'True
End
Attribute VB_Name = "UserForm10"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub ComboBox1_Change()

End Sub

Private Sub Frame1_Click()

End Sub

Private Sub Label1_Click()

End Sub

Private Sub Label10_Click()

End Sub

Private Sub Label12_Click()

End Sub

Private Sub Label14_Click()

End Sub

Private Sub Label16_Click()

End Sub

Private Sub Label19_Click()

End Sub

Private Sub Label21_Click()

End Sub

Private Sub Label24_Click()

End Sub

Private Sub Label3_Click()

End Sub

Private Sub Label7_Click()

End Sub

Private Sub ScrollBar1_Change()

End Sub

Private Sub SpinButton1_Change()

End Sub

Private Sub SpinButton2_Change()

End Sub

Private Sub TabStrip1_Change()

End Sub

Private Sub TextBox1_Change()

End Sub

Private Sub TextBox10_Change()

End Sub

Private Sub TextBox12_Change()

End Sub

Private Sub TextBox14_Change()

End Sub

Private Sub TextBox15_Change()

End Sub

Private Sub TextBox16_Change()

End Sub

Private Sub TextBox17_Change()

End Sub

Private Sub TextBox19_Change()

End Sub

Private Sub TextBox20_Change()

End Sub

Private Sub TextBox22_Change()

End Sub

Private Sub TextBox24_Change()

End Sub

Private Sub TextBox3_Change()

End Sub

Private Sub TextBox5_Change()

End Sub

Private Sub TextBox6_Change()

End Sub

Private Sub TextBox7_Change()

End Sub

Private Sub TextBox8_Change()

End Sub

Private Sub TextBox9_Change()

End Sub

Private Sub UserForm_AddControl(ByVal Control As MSForms.Control)

End Sub

Private Sub UserForm_BeforeDragOver(ByVal Cancel As MSForms.ReturnBoolean, ByVal Control As MSForms.Control, ByVal Data As MSForms.DataObject, ByVal X As Single, ByVal Y As Single, ByVal State As MSForms.fmDragState, ByVal Effect As MSForms.ReturnEffect, ByVal Shift As Integer)

End Sub

Private Sub UserForm_BeforeDropOrPaste(ByVal Cancel As MSForms.ReturnBoolean, ByVal Control As MSForms.Control, ByVal Action As MSForms.fmAction, ByVal Data As MSForms.DataObject, ByVal X As Single, ByVal Y As Single, ByVal Effect As MSForms.ReturnEffect, ByVal Shift As Integer)

End Sub

Private Sub UserForm_Click()

End Sub

Private Sub UserForm_Deactivate()

End Sub

Private Sub UserForm_KeyDown(ByVal KeyCode As MSForms.ReturnInteger, ByVal Shift As Integer)

End Sub

Private Sub UserForm_Layout()

End Sub

Private Sub UserForm_MouseDown(ByVal Button As Integer, ByVal Shift As Integer, ByVal X As Single, ByVal Y As Single)

End Sub

Private Sub UserForm_MouseMove(ByVal Button As Integer, ByVal Shift As Integer, ByVal X As Single, ByVal Y As Single)

End Sub

Private Sub UserForm_MouseUp(ByVal Button As Integer, ByVal Shift As Integer, ByVal X As Single, ByVal Y As Single)

End Sub

Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)

End Sub

Private Sub UserForm_RemoveControl(ByVal Control As MSForms.Control)

End Sub

Private Sub UserForm_Resize()

End Sub

Private Sub UserForm_Scroll(ByVal ActionX As MSForms.fmScrollAction, ByVal ActionY As MSForms.fmScrollAction, ByVal RequestDx As Single, ByVal RequestDy As Single, ByVal ActualDx As MSForms.ReturnSingle, ByVal ActualDy As MSForms.ReturnSingle)

End Sub

End Sub

    Dim conn As Object
    Dim rs As Object
    Dim sql As String

    Set conn = CreateObject("ADODB.Connection")
    Set rs = CreateObject("ADODB.Recordset")

    conn.Open "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\YourPath\merchstore.accdb"

    sql = "SELECT * FROM Products WHERE ProductID = '" & ComboBox1.Value & "'"
    rs.Open sql, conn

    If Not rs.EOF Then
        TextBox1.Value = rs("ProductName")
        TextBox5.Value = rs("Price")
        TextBox6.Value = rs("Stock")
    End If

    rs.Close
    conn.Close
End Sub
