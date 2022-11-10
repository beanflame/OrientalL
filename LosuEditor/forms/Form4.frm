#VisualFreeBasic_Form#  Version=5.7.5
Locked=0

[Form]
Name=Form4
ClassStyle=CS_DBLCLKS,CS_HREDRAW,CS_VREDRAW
ClassName=
WinStyle=WS_BORDER,WS_CAPTION,WS_CLIPCHILDREN,WS_CLIPSIBLINGS,WS_SYSMENU,WS_VISIBLE,WS_EX_CONTROLPARENT,WS_EX_LEFT,WS_EX_LTRREADING,WS_EX_RIGHTSCROLLBAR,WS_EX_TOOLWINDOW,WS_EX_TOPMOST,WS_POPUP
Style=4 - 工具窗口
Icon=
Caption=打开
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
Text=
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
Caption=打开
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
'这是标准的工程模版，你也可做自己的模版。
'写好工程，复制全部文件到VFB软件文件夹里【template】里即可，子文件夹名为 VFB新建工程里显示的名称
'快去打造属于你自己的工程模版吧。



Sub Form4_Command1_BN_Clicked(hWndForm As hWnd, hWndControl As hWnd)  '单击
   'hWndForm    当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'hWndControl 当前控件的句柄(也是窗口句柄，如果多开本窗口，必须 Me.控件名.hWndForm = hWndForm 后才可以执行后续操作本控件的代码 )
   Dim tmp As String
   LOSU_FILE_NAME = "C:\losu\pro\"& Text1.Text
   If FileExists(LOSU_FILE_NAME & ".losu") = -1 Then 
      Open LOSU_FILE_NAME & ".losu" For Input As #1
      Line Input #1 ,tmp
      Form2.RichEdit1.Text=tmp
      Do
         Line Input #1 ,tmp
         Form2.RichEdit1.Text = Form2.RichEdit1.Text & vbCrLf & tmp
      Loop Until EOF(1) = -1 
      Close #1
      Form2.Enabled = True
      Form2.Caption = LOSU_FILE_NAME
      Form4.Close()
   Else
      
      Select Case MsgBox( hWndForm,"找不到要打开的文件", _
            MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
         Case IDOK
      End Select
   End If
   _formate()
End Sub



Function Form4_WM_Close(hWndForm As hWnd) As LResult  '即将关闭窗口，返回非0可阻止关闭
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   Form2.Enabled =True
   Function = FALSE ' 返回 TRUE 阻止关闭窗口。
End Function







