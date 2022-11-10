#VisualFreeBasic_Form#  Version=5.7.5
Locked=0

[Form]
Name=Form1
ClassStyle=CS_VREDRAW,CS_HREDRAW,CS_DBLCLKS
ClassName=
WinStyle=WS_MAXIMIZEBOX,WS_MINIMIZEBOX,WS_SYSMENU,WS_VISIBLE,WS_EX_CONTROLPARENT,WS_EX_LEFT,WS_EX_LTRREADING,WS_EX_RIGHTSCROLLBAR,WS_CLIPSIBLINGS,WS_CLIPCHILDREN,WS_EX_TOPMOST,WS_POPUP
Style=0 - 无边框
Icon=losu.ico
Caption=Form1
StartPosition=1 - 屏幕中心
WindowState=0 - 正常
Enabled=True
Repeat=False
Left=0
Top=0
Width=800
Height=400
TopMost=True
Child=False
MdiChild=False
TitleBar=False
SizeBox=False
SysMenu=True
MaximizeBox=True
MinimizeBox=True
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

[Image]
Name=Image1
Index=-1
Picture=bgpng.png
Stretch=4 - 宽度高度调整
Percent=0
GrayScale=False
Enabled=True
Visible=True
Left=0
Top=0
Width=800
Height=400
Layout=5 - 宽度和高度
MousePointer=13 - 沙漏
Tag=
ToolTip=
ToolTipBalloon=False


[AllCode]
 #include"window9.bi"
Sub Form1_Shown(hWndForm As hWnd ,UserData As Integer) 
   
   Dim tm As Integer 
   Form1.TransPer = 100
   For tm = 1 To 100
      Sleep(10)
      Form1.TransPer = Form1.TransPer - 1
   Next
   Sleep(1000)
   
   For tm = 1 To 50
      Sleep(1)
      Form1.TransPer = Form1.TransPer + 2
      
   Next
   Form2.Show
   Form1.Height = 0
   Form1.Width=0
   Form1.Enabled=0
   
End Sub


