#VisualFreeBasic_Form#  Version=5.7.5
Locked=0

[Form]
Name=Form2
ClassStyle=CS_DBLCLKS,CS_HREDRAW,CS_VREDRAW
ClassName=
WinStyle=WS_MAXIMIZEBOX,WS_MINIMIZEBOX,WS_SYSMENU,WS_EX_CONTROLPARENT,WS_EX_LEFT,WS_EX_LTRREADING,WS_EX_RIGHTSCROLLBAR,WS_VISIBLE,WS_CLIPSIBLINGS,WS_CLIPCHILDREN,WS_CAPTION,WS_POPUP,WS_SIZEBOX
Style=5 - 自定义
Icon=losu.ico
Caption=洛书编辑器--NEUQ洛书小组
StartPosition=1 - 屏幕中心
WindowState=0 - 正常
Enabled=True
Repeat=True
Left=0
Top=0
Width=800
Height=600
TopMost=False
Child=False
MdiChild=False
TitleBar=True
SizeBox=True
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
TransPer=100
TransColor=SYS,25
Shadow=3 - 中阴影
BackColor=SYS,5
MousePointer=0 - 默认
Tag=
Tab=True
ToolTip=
ToolTipBalloon=False
AcceptFiles=True

[RichEdit]
Name=RichEdit1
Index=-1
Style=3 - 凹边框
TextScrollBars=3 - 垂直和水平
Text=
Enabled=True
Visible=True
MaxLength=0
Font=华文中宋,12
TextAlign=0 - 左对齐
Locked=False
HideSelection=False
Multiline=True
SaveSel=True
NoScroll=False
AutoHScroll=True
AutoVScroll=True
ContextMenu=True
LeftMargin=15
RightMargin=0
Left=0
Top=0
Width=785
Height=600
Layout=0 - 不锚定
MousePointer=0 - 默认
Tag=
Tab=True
ToolTip=
ToolTipBalloon=False
AcceptFiles=True

[TopMenu]
Name=TopMenu1
Menu=文件    Form2_TopMenu1_Menu10-10{新建Form2_TopMenu1_Menu20-10打开Form2_TopMenu1_Menu30-10保存Form2_TopMenu1_Menu40-10关闭当前文件Form2_TopMenu1_Menu60-10退出Form2_TopMenu1_Menu150-10}程序    Form2_TopMenu1_Menu70-10{编译并运行Form2_TopMenu1_Menu180-10编译Form2_TopMenu1_Menu80-10执行Form2_TopMenu1_Menu90-10调试Form2_TopMenu1_Menu170-10打开终端Form2_TopMenu1_Menu50-10清空Form2_TopMenu1_Menu160-10}关于    Form2_TopMenu1_Menu100-10{洛书帮助文档Form2_TopMenu1_Menu110-10关于洛书Form2_TopMenu1_Menu120-10联系我们Form2_TopMenu1_Menu130-10关于我们Form2_TopMenu1_Menu140-10}
Tag=


[AllCode]
'这是标准的工程模版，你也可做自己的模版。
'写好工程，复制全部文件到VFB软件文件夹里【template】里即可，子文件夹名为 VFB新建工程里显示的名称
'快去打造属于你自己的工程模版吧。

'Dim ofn As OPENFILENAME
Sub lpk()
   losu_cmd =1
   Shell("C:&cd C:\losu\pro&Color F1&cls&lpk")
   losu_cmd = 0
End Sub

Function formate() As String
   Function=ReplaceString(RichEdit1.Text,Chr(9),"    ",1,1)  
End Function
Sub _formate()
   RichEdit1.Text =ReplaceString(RichEdit1.Text,"    ",Chr(9),1,1)  
End Sub

Dim Shared LOSU_FILE_NAME As String 
Dim Shared losu_cmd As BOOL=0
Sub Form2_RichEdit1_EN_Update(hWndForm As hWnd, hWndControl As hWnd)  '文本被修改
   'hWndForm    当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'hWndControl 当前控件的句柄(也是窗口句柄，如果多开本窗口，必须 Me.控件名.hWndForm = hWndForm 后才可以执行后续操作本控件的代码 )
    
End Sub

Sub Form2_WM_Size(hWndForm As hWnd, fwSizeType As Long, nWidth As Long, nHeight As Long)  '窗口已经改变了大小
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'fwSizeType = SIZE_MAXHIDE     SIZE_MAXIMIZED   SIZE_MAXSHOW    SIZE_MINIMIZED    SIZE_RESTORED  
   ''            其他窗口最大化   窗口已最大化     其他窗口恢复    窗口已最小化      窗口已调整大小
   RichEdit1.Height = Form2.Height
   RichEdit1.Width = Form2.Width 


End Sub



Function Form2_FormPaintStart(hWndForm As hWnd,gg As yGDI,nBackColor As Long) As LResult  '重绘开始，刚画好背景色，还没画虚拟控件，用 gg 来画。
   'hWndForm    当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'gg          yGDI画画类，封装了 GDI和GDI+的 API操作类，方便绘画。
   'nBackColor  窗口背景颜色（GDI颜色值，由设计时设置）

   Function = FALSE ' 若不想系统继续画虚拟控件等，则应返回 TRUE 。
End Function

Function Form2_WM_Close(hWndForm As hWnd) As LResult  '即将关闭窗口，返回非0可阻止关闭
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   Open LOSU_FILE_NAME & ".losu" For Output As #1
      Print #1 ,formate()
      Close #1
   End
   Function = False ' 返回 TRUE 阻止关闭窗口。
End Function

Sub Form2_Shown(hWndForm As hWnd,UserData As Integer)  '窗口完全显示后。UserData 来自显示窗口最后1个参数。
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'UserData  来自显示窗口最后1个参数，例： Form2.Show(父窗口句柄,模式,UserData)
   LOSU_FILE_NAME = ""
   Dim tm As Integer
   For tm = 1 To 50
      Sleep(1)
      Form2.TransPer = Form2.TransPer - 2     
   Next

End Sub

Sub Form2_TopMenu1_WM_Command(hWndForm As hWnd ,wID As ULong) '点击了菜单项
   Dim tmp As String
   Dim _tmp_i As Integer
   Select Case wID
      Case Form2_TopMenu1_Menu1 ' 文件    
         
         
      Case Form2_TopMenu1_Menu2 ' 新建
         Form2.RichEdit1.Text=""
         Form2.Enabled =0
         Form3.Show
         
      Case Form2_TopMenu1_Menu3 ' 打开
            Form2.Enabled =0
            Form4.Show
      Case Form2_TopMenu1_Menu4 ' 保存
         If LOSU_FILE_NAME <> "" Then
            
            Open LOSU_FILE_NAME & ".losu" For Output As #1
               Print #1 ,formate()
            Close #1
         
            Select Case MsgBox( hWndForm,"已保存", _
                  "洛书Editor",MB_OK Or MB_ICONINFORMATION Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDOK
            End Select
         Else
            Form5.Show
            Form2.Enabled=0
         End If   
      Case Form2_TopMenu1_Menu6 ' 关闭当前文件
         If LOSU_FILE_NAME<>""Then
            Open LOSU_FILE_NAME & ".losu" For Output As #1
               Print #1 ,formate()
            Close #1
            LOSU_FILE_NAME = ""
            RichEdit1.Text = ""
            Form2.Caption=""
         End If 
      Case Form2_TopMenu1_Menu15 ' 退出
         If LOSU_FILE_NAME<>"" Then
            Open LOSU_FILE_NAME & ".losu" For Output As #1
               Print #1 ,formate()
            Close #1
            
         End If
         End
      Case Form2_TopMenu1_Menu7 ' 程序    
      Case Form2_TopMenu1_Menu18 '编译并运行
         If LOSU_FILE_NAME <> "" Then
            Open LOSU_FILE_NAME & ".losu" For Output As #1
            Print #1 ,formate()
            Close #1
            _tmp_i = Shell("losuc "& LOSU_FILE_NAME)
            If _tmp_i<> 0 Then 
               Shell("losuc "& LOSU_FILE_NAME & "&pause")
               Select Case MsgBox( hWndForm,"编译出错,请仔细检查代码", _
                     "洛书编译器",MB_OK Or MB_ICONERROR Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
                  Case IDOK
               End Select
            Else
               
               Shell("losu " & LOSU_FILE_NAME & ".lsc&pause")
            End If
         Else
            MsgBox( hWndForm,"请先保存或打开文件", MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
         End If
      Case Form2_TopMenu1_Menu8 ' 编译
         If LOSU_FILE_NAME <> "" Then
            Open LOSU_FILE_NAME & ".losu" For Output As #1
            Print #1 ,formate()
            Close #1
            If Shell("losuc "& LOSU_FILE_NAME) <> 0 Then 
             Shell("losuc "& LOSU_FILE_NAME & "&pause")
            Select Case MsgBox( hWndForm,"编译出错,请仔细检查代码", _
               "洛书编译器",MB_OK Or MB_ICONERROR Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDOK
            End Select
            Else
            Select Case MsgBox( hWndForm,"编译成功结束", _
               "洛书编译器",MB_OK Or MB_ICONINFORMATION Or MB_DEFBUTTON1 Or MB_APPLMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDOK
            End Select
            End If
         Else
               MsgBox( hWndForm,"请先保存或打开文件", MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               
         End If
      Case Form2_TopMenu1_Menu9 ' 执行
         If LOSU_FILE_NAME<>"" Then         
            If FileExists(LOSU_FILE_NAME & ".lsc") = -1 Then
               Shell("losu "& LOSU_FILE_NAME & ".lsc&pause")
            Else
               Select Case MsgBox( hWndForm,"源码尚未编译，是否编译后执行?", _
                  MB_YESNO Or MB_ICONQUESTION Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDYES
                  If LOSU_FILE_NAME <> "" Then
                     Open LOSU_FILE_NAME & ".losu" For Output As #1
                        Print #1 ,formate()
                     Close #1
                     If Shell("losuc "& LOSU_FILE_NAME) <> 0 Then 
                        Shell("losuc "& LOSU_FILE_NAME & "&pause")
                        Select Case MsgBox( hWndForm,"编译出错,请仔细检查代码", _
                           "洛书编译器",MB_OK Or MB_ICONERROR Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
                        Case IDOK
                        End Select
                     Else
                        Shell("losu "& LOSU_FILE_NAME & ".lsc&pause")
                     End If
                  
                  End If
        
               Case IDNO
               End Select
            End If
         Else   
            MsgBox( hWndForm,"请先保存或打开文件", MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
             
            
            
         End If
      Case Form2_TopMenu1_Menu17 ' 调试
         If LOSU_FILE_NAME<>"" Then         
            If FileExists(LOSU_FILE_NAME & ".lsc") = -1 Then
               Shell("losudb "& LOSU_FILE_NAME & ".lsc&pause")
            Else
               Select Case MsgBox( hWndForm,"源码尚未编译，是否编译后执行?", _
                  MB_YESNO Or MB_ICONQUESTION Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDYES
                  If LOSU_FILE_NAME <> "" Then
                     Open LOSU_FILE_NAME & ".losu" For Output As #1
                        Print #1 ,formate()
                     Close #1
                     If Shell("losuc "& LOSU_FILE_NAME) <> 0 Then 
                        Shell("losuc "& LOSU_FILE_NAME & "&pause")
                        Select Case MsgBox( hWndForm,"编译出错,请仔细检查代码", _
                           "洛书编译器",MB_OK Or MB_ICONERROR Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
                        Case IDOK
                        End Select
                     Else
                        Shell("losudb "& LOSU_FILE_NAME & ".lsc&pause")
                     End If
                  
                  End If
        
               Case IDNO
               End Select
            End If
         Else   
            MsgBox( hWndForm,"请先保存或打开文件", MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
             
            
            
         End If            
      Case Form2_TopMenu1_Menu5 ' 打开终端
         If losu_cmd = 0 Then
            Threadcall lpk 
         Else
            
            Select Case MsgBox( hWndForm,"已经打开了一个交互终端" & vbCrLf & _
                                 "请关闭后重试", _
                  MB_OK Or MB_ICONWARNING Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDOK
            End Select  
         End If
          
      Case Form2_TopMenu1_Menu16 '清空
         If FileExists(LOSU_FILE_NAME & ".lsc") = -1 Then 
            Kill(LOSU_FILE_NAME & ".lsc")            
            Select Case MsgBox( hWndForm,"已经清空生成文件", _
                  MB_OK Or MB_ICONINFORMATION Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDOK
            End Select    
         Else
            Select Case MsgBox( hWndForm,"没有需要清空的生成文件", _
                  MB_OK Or MB_ICONINFORMATION Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
               Case IDOK
            End Select 
          End If  
                
      Case Form2_TopMenu1_Menu10 ' 关于    

      Case Form2_TopMenu1_Menu11 ' 洛书帮助文档
           Shell("start https://gitee.com/chen-chaochen/lpk/wikis/pages")
      Case Form2_TopMenu1_Menu12 ' 关于洛书
           Shell("start https://gitee.com/chen-chaochen/lpk")
      Case Form2_TopMenu1_Menu13 ' 联系我们

           Select Case MsgBox( hWndForm,"意见反馈:" & vbCrLf & _
                                 "请向洛书官方仓库提交issues,我们收到后会在第一时间回复" & vbCrLf & _
                                 "负责人联系方式:" & vbCrLf & _
                                 "手机 19855078537" & vbCrLf & _
                                 "邮箱 3174025065@qq.com" & vbCrLf & _
                                 "QQ群 805995065" & vbCrLf & _
                                 "微信 chen-chaochen" & vbCrLf & _
                                 "公司 宿州市汤洛信息科技有限公司", _
                                 "联系我们",MB_OK Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
                  Case IDOK
            End Select
      Case Form2_TopMenu1_Menu14 ' 关于本软件
         
                 Select Case MsgBox( hWndForm,"     我们是来自NEUQ的热心团队" & vbCrLf & _
                                 "致力于为中文编程的推广贡献自己的力量" & vbCrLf & _
                                 "     " & vbCrLf & _
                                 "                         (c)汤洛科技" & vbCrLf & _
                                 "                           2022/11/1", _
                                 "关于我们",MB_OK Or MB_ICONINFORMATION Or MB_DEFBUTTON1 Or MB_TASKMODAL Or MB_SETFOREGROUND Or MB_TOPMOST)
                                 Case IDOK
                  End Select

   End Select
   'hWndForm 当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   ''           本控件为功能控件，就是无窗口，无显示，只有功能。如果多开本窗口，必须 Me.控件名.hWndForm = hWndForm 后才可以执行后续操作本控件的代码 
   'wID      菜单项命令ID

End Sub

Sub Form2_WM_Create(hWndForm As hWnd,UserData As Integer)  '完成创建窗口及所有的控件后，此时窗口还未显示。注：自定义消息里 WM_Create 此时还未创建控件和初始赋值。
   'hWndForm  当前窗口的句柄(WIN系统用来识别窗口的一个编号，如果多开本窗口，必须 Me.hWndForm = hWndForm 后才可以执行后续操作本窗口的代码)
   'UserData  来自显示窗口最后1个参数，例： Form2.Show(父窗口句柄,模式,UserData)

End Sub






















































