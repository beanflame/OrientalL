#VisualFreeBasic_Form#  Version=5.7.5
Locked=0

[Form]
Name=Form5
ClassStyle=CS_DBLCLKS,CS_HREDRAW,CS_VREDRAW
ClassName=
WinStyle=WS_BORDER,WS_CAPTION,WS_CLIPCHILDREN,WS_CLIPSIBLINGS,WS_SYSMENU,WS_VISIBLE,WS_EX_CONTROLPARENT,WS_EX_LEFT,WS_EX_LTRREADING,WS_EX_RIGHTSCROLLBAR,WS_EX_TOOLWINDOW,WS_EX_TOPMOST,WS_POPUP
Style=4 - 工具窗口
Icon=
Caption=保存
StartPosition=1 - 屏幕中心
WindowState=0 - 正常
Enabled=True
Repeat=False
Left=0
Top=0
Width=300
Height=100
TopMost=True
Child=False
MdiChild=False
TitleBar=True
SizeBox=False
SysMenu=True
MaximizeBox=False
MinimizeBox=False
Help=False
Hscroll=False
Vscroll=False
MinWidth=0
MinHeight=0
MaxWidth=0
MaxHeight=0
NoActivate=False
MousePass=False
TransPer=0
TransColor=SYS,25
Shadow=0 - 无阴影
BackColor=SYS,15
MousePointer=0 - 默认
Tag=
Tab=True
ToolTip=
ToolTipBalloon=False
AcceptFiles=False

[TextBox]
Name=Text1
Index=-1
Style=3 - 凹边框
TextScrollBars=0 - 无滚动条
Text=新项目
Enabled=True
Visible=True
MaxLength=0
ForeColor=SYS,8
BackColor=SYS,5
Font=微软雅黑,12
TextAlign=0 - 左对齐
PasswordChar=
Locked=False
HideSelection=True
Multiline=False
Uppercase=False
Lowercase=False
Number=False
AutoHScroll=True
AutoVScroll=False
Left=0
Top=0
Width=300
Height=36
Layout=0 - 不锚定
MousePointer=0 - 默认
Tag=
Tab=True
ToolTip=
ToolTipBalloon=False
LeftMargin=0
RightMargin=0
AcceptFiles=False

[Button]
Name=Command1
Index=-1
Caption=保存
TextAlign=1 - 居中
Ico=
Enabled=True
Visible=True
Default=True
OwnDraw=False
MultiLine=False
Font=华文中宋,14,1
Left=-6
Top=26
Width=300
Height=50
Layout=0 - 不锚定
MousePointer=0 - 默认
Tag=
Tab=True
ToolTip=
ToolTipBalloon=False


[AllCode]

Sub Form5_Command1_BN_Clicked(hWndForm As hWnd, hWndControl As hWnd)  '单击
   'hWndForm    当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'hWndControl 当前控件 的句柄(也是窗口句柄，如果多开本窗口，必须 Me.控件名.hWndForm = hWndForm 后才可以执行后续操作本控件的代码 )
   If Text1.Text <> "" Then
      LOSU_FILE_NAME = "C:\losu\pro\" & Text1.Text
      Open LOSU_FILE_NAME & ".losu" For Output As #1
      Print #1 ,Form2.RichEdit1.Text
      Close #1
      Form2.Caption=LOSU_FILE_NAME
      Form5.Close
   Else
      MsgBox( hWndForm,"请输入正确的保存文件", MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST) 

      
   End If
End Sub 

Sub Form5_Shown(hWndForm As hWnd,UserData As Integer)  '窗口完全显示后。UserData 来自显示窗口最后1个参数。
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'UserData  来自显示窗口最后1个参数，例： Form2.Show(父窗口句柄,模式,UserData)

End Sub

Function Form5_WM_Close(hWndForm As hWnd) As LResult  '即将关闭窗口，返回非0可阻止关闭
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   Form2.Enabled=1
   Function = FALSE ' 返回 TRUE 阻止关闭窗口。
End Function









