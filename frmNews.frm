VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "msinet.ocx"
Begin VB.Form w 
   Caption         =   "Breaking News"
   ClientHeight    =   10455
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   27195
   FillColor       =   &H00C0FFC0&
   ForeColor       =   &H00C0FFC0&
   Icon            =   "frmNews.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   10455
   ScaleWidth      =   27195
   StartUpPosition =   3  'Windows Default
   Begin SHDocVwCtl.WebBrowser wb2 
      Height          =   7695
      Left            =   19680
      TabIndex        =   13
      Top             =   2280
      Width           =   6615
      ExtentX         =   11668
      ExtentY         =   13573
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   ""
   End
   Begin VB.TextBox txtReuters 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1935
      Left            =   20160
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   12
      Top             =   120
      Width           =   6135
   End
   Begin VB.OptionButton optV 
      Caption         =   "She"
      Height          =   255
      Index           =   1
      Left            =   6960
      TabIndex        =   11
      Top             =   360
      Width           =   615
   End
   Begin VB.OptionButton optV 
      Caption         =   "He"
      Height          =   255
      Index           =   0
      Left            =   6960
      TabIndex        =   10
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox txtRead 
      Height          =   285
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   9
      Top             =   720
      Width           =   12135
   End
   Begin VB.Timer tmrSpeak 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   9960
      Top             =   240
   End
   Begin SHDocVwCtl.WebBrowser wb 
      Height          =   4575
      Left            =   240
      TabIndex        =   8
      Top             =   5160
      Width           =   18015
      ExtentX         =   31776
      ExtentY         =   8070
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.TextBox txturl 
      Height          =   375
      Left            =   10200
      TabIndex        =   7
      Top             =   240
      Width           =   9015
   End
   Begin VB.TextBox txtInterval 
      Height          =   375
      Left            =   4200
      TabIndex        =   6
      Text            =   "60000"
      Top             =   240
      Width           =   1215
   End
   Begin VB.TextBox txtCounter 
      Height          =   285
      Left            =   5760
      TabIndex        =   5
      Top             =   240
      Width           =   975
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   9000
      Top             =   240
   End
   Begin VB.CommandButton Command3 
      Cancel          =   -1  'True
      Caption         =   "&Exit"
      Height          =   495
      Left            =   2550
      TabIndex        =   4
      Top             =   240
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "S&top"
      Height          =   495
      Left            =   1335
      TabIndex        =   3
      Top             =   240
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   6000
      Left            =   9360
      Top             =   240
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   3135
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   2
      Top             =   1680
      Width           =   19695
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   1080
      Width           =   19695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Start"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1215
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   8400
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      Protocol        =   4
      RemoteHost      =   "www.google.ca"
      URL             =   "http://www.google.ca"
   End
End
Attribute VB_Name = "w"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Sub Sleep Lib "kernel32.dll" (ByVal dwMilliseconds As Long)

Dim lastNews As String
Dim i As Integer
Dim oldText As String
Private V As SpeechLib.SpVoice
Private t As SpeechLib.ISpeechObjectToken
Dim mailcount As Integer

Dim tts  As SpeechLib.SpVoice
Dim SpeakHeadLine As String
Dim SpeakThisText As String
Private Sub Command1_Click()
Init
   ActivateSpeak ("Starting...")
getData
'parseNews ("")
End Sub

Function Init()
'sendmail "hey Sylvia", "This is message from laptop"
    Timer1.Enabled = True
    Timer2.Enabled = True
    lastNews = ""
    Timer1.Interval = Val(txtInterval)
    wb2.Navigate "http://www.google.ca", 4
End Function

Private Sub Command2_Click()
Timer1.Enabled = False
Timer2.Enabled = False

End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Form_Load()
Set tts = CreateObject("SAPI.spVoice")
     optV.Item(1).Value = True
    Set tts.Voice = tts.GetVoices().Item(1)
               
    wb.AddressBar = True
    wb.Silent = True
    wb.Navigate "http://www.google.ca", 4
    ActivateSpeak ("Today is: " & Format(Now(), "mmm dd hhmm"))
    Init
    
End Sub

Private Sub Form_Resize()
wb.Width = Me.Width - 900
wb.Top = Text2.Top + Text2.Height
If Not Me.WindowState = 1 Then
    wb.Height = Me.Height - wb.Top - 800
    txturl = Me.Height
    Me.txtCounter = wb.Height
End If
End Sub

Private Sub Inet1_StateChanged(ByVal State As Integer)
'MsgBox State
End Sub

Private Sub optV_Click(Index As Integer)
    Set tts.Voice = tts.GetVoices().Item(Index)
End Sub

Private Sub Timer1_Timer()
If Timer1.Interval < 6000 Then

MsgBox ("Timer too small. Defaulting to 1 min.")
txtInterval = 60000
Else
    i = 0
    getData
End If
End Sub


Private Sub getData()
On Error GoTo weberror
Dim msg As String
Dim t As String
Dim pos As Integer
Dim url As String
Dim msg2 As String
Dim slp As Integer

slp = 0
Text1.Text = Inet1.OpenURL("http://www.cnbc.com/franchise/20991458?callback=breakingNews&mode=breaking_news")

'http://quote.cnbc.com/quote-html-webservice/quote.htm?callback=webQuoteRequest&symbols=TD.TO&symbolType=symbol&requestMethod=quick&exthrs=1&extMode=&fund=1&entitlement=0&skipcache=&extendedMask=1&partnerId=2&output=jsonp&noform=1
'http://quote.cnbc.com/quote-html-webservice/quote.htm?callback=webQuoteRequest&symbols=MSFT &symbolType=symbol&requestMethod=quick&exthrs=1&extMode=&fund=1&entitlement=0&skipcache=&extendedMask=1&partnerId=2&output=jsonp&noform=1
'http://apps.cnbc.com/view.asp?uid=stocks/financials&view=cashFlowStatement&symbol=ry.to
'http://apps.cnbc.com/view.asp?uid=stocks/financials&view=balanceSheet&symbol=TD.TO
'http://apps.cnbc.com/view.asp?uid=stocks/financials&view=incomeStatement&symbol=TD.TO
'http://data.cnbc.com/quotes/TD.TO
If Len(Text1) > 20 And Text1 <> oldText Then
    slp = 10000
    oldText = Text1
    lastNews = parseNews(Text1)
    Text2 = lastNews & vbCrLf & Text2
    Beep
    Beep
    Beep
    SpeakThisText = SpeakHeadLine
    'sendmail "Headline", SpeakHeadLine
    tmrSpeak.Enabled = True
End If


t = Inet1.OpenURL("http://www.reuters.com/assets/breakingNews")
't = "<div id=""breakingNewsContainer"" class=""breakingStory""><div id=""breakingNewsUltra""> <div class=""breakingNewsContent""><h1><span class=""breakingNewsLabel"">Breaking News: </span><a href=""http://www.reuters.com/article/us-usa-stocks-idUSKBN0UL1BD20160107"">Stock futures tumble as China allows yuan to fall further</a></h1>"
pos = InStr(t, "Breaking News:")
If pos > 0 Then
    t = Mid(t, pos + Len("Breaking News:") + 17)
    pos = InStr(t, ">")
    url = Mid(t, 1, pos - 2)
    msg2 = Mid(t, pos + 1)
    msg2 = Mid(msg2, 1, Len(msg2) - 9)
    txtReuters = txtReuters & vbCrLf & msg2
    wb2.AddressBar = True
    wb2.Silent = True
    wb2.Navigate url, 4
    Sleep slp
    ActivateSpeak (msg2)
End If

Exit Sub
weberror:
Text2 = Text2 & "____Error:" & Err.Description

End Sub

Private Sub Timer2_Timer()
i = i + 1
txtCounter = Timer1.Interval / 1000 - i
End Sub 'txtur,r



Function parseNews(m As String) As String
Dim url As String
Dim id As String
Dim headline As String
Dim what As String
Dim what1 As String
Dim what2 As String
Dim pos As Integer


'm = "breakingNews({\""url"":""http:\/\/www.cnbc.com\/2015\/10\/15\/early-movers-gs-bud-unh-mo-sbux-wmt-nflx-unh-more.html"",""id"":103080254,""headline"":""Early movers: GS, BUD, UNH, MO, SBUX, WMT, NFLX, UNH & more""});"
'
'REUTERS
'http://www.reuters.com/assets/breakingNews

'<div id="breakingNewsContainer" class="breakingStory">
'                        <div id="breakingNewsUltra">
'                            <div class="breakingNewsContent">
'                                <h1>
'                                    <span class="breakingNewsLabel">Breaking News: </span><a href="http://www.reuters.com/article/us-usa-stocks-idUSKBN0UL1BD20160107">Stock futures tumble as China allows yuan to fall further</a></h1>
'                            </div>
'                        </div>
'                    </div>
'<div class="linebreak"></div>



what = "url"":"
what1 = """,""id"":"
what2 = ",""headline"":"
pos = InStr(1, m, what, vbTextCompare)
url = Mid(m, pos + Len(what) + 1)
url = Mid(url, 1, InStr(1, url, what1, vbTextCompare) - 1)
url = Replace(url, "\", "")
 
id = Mid(m, InStr(1, m, what1, vbTextCompare) + Len(what) + 1)
id = Mid(id, 1, InStr(1, id, what2, vbTextCompare) - 1)
pos = InStr(1, m, what2, vbTextCompare)

headline = Mid(m, pos + Len(what2) + 1)
headline = Mid(headline, 1, Len(headline) - 4)
SpeakHeadLine = headline
'MsgBox m
'MsgBox InStr(1, m, what2, vbTextCompare)
'MsgBox Mid(m, InStr(1, m, what2, vbTextCompare) + Len(what2))
'MsgBox "headline:" & headline

txturl = wb.LocationURL
wb.Navigate url, 4
parseNews = Format(Now(), "mmm-dd hh:mm") & " - " & headline & "(" & id & ")"
End Function

Private Sub tmrSpeak_Timer()
tmrSpeak.Enabled = False
readAloud (SpeakThisText)
SpeakThisText = ""

End Sub

Private Sub txtInterval_Change()
Timer1.Interval = Val(txtInterval)
i = 0
If IsNumeric(Timer1.Interval) Then txtCounter = Timer1.Interval / 1000
End Sub

Private Sub txtRead_Change()
ActivateSpeak (txtRead)
End Sub

Private Sub txturl_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then wb.Navigate txturl, 4
End Sub

Private Sub wb_StatusTextChange(ByVal Text As String)
txturl = wb.LocationURL
End Sub
Function ActivateSpeak(txt)
    SpeakThisText = txt
    tmrSpeak.Enabled = True
End Function


Function readAloud(txt As String) As String
DoEvents
tts.Speak txt, SVSFlagsAsync
End Function

Sub sendmail(hd As String, body As String)
Dim iMsg As Object
Dim iConf As Object

Dim Flds As Variant

Set iMsg = CreateObject("CDO.Message")
Set iConf = CreateObject("CDO.Configuration")

iConf.Load -1 ' CDO Source Defaults
Set Flds = iConf.Fields
With Flds
.Item("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True
.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
.Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = "kogutc@gmail.com"
.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = ""
.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.gmail.com"
.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465
.Update
End With

With iMsg
Set .Configuration = iConf
.To = "KOGUTC2@td.COM"
.CC = ""
.BCC = ""
' Note: The reply address is not working if you use this Gmail example
' It will use your Gmail address automatic. But you can add this line
' to change the reply address .ReplyTo = "Reply@something.com"
.From = "kogutc@gmail.com"
.Subject = hd
'.TextBody = ""
.HTMLBody = "<html> <Body><i><font color=""Green"">" & body & "</font>" & Now() & "</i><body></html>"

.Send
mailcount = mailcount + 1
If mailcount > 100 Then End

End With

End Sub
