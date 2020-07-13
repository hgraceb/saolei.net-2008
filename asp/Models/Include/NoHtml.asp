<%
'------------------------
'Code:Zhang Shen Jia
'Date:2007-12-17
'------------------------
Function NoHtml(Text)

	If Not IsNull(Text) Then
		Text = Replace(Text,"&","&amp;")
		Text = Replace(Text,"<","&lt;")
		Text = Replace(Text,">","&gt;")
		Text = Replace(Text," ","&nbsp;")
		Text = Replace(Text,vbTab,"&nbsp;&nbsp;&nbsp;&nbsp;")
		Text = Replace(Text,vbcrlf,"<br>")
	
		NoHtml = Text
	End If

End Function

Function Html(Text)

	Text = Replace(Text,"&amp;","&")
	Text = Replace(Text,"&lt;","<")
	Text = Replace(Text,"&gt;",">")
	Text = Replace(Text,"&nbsp;"," ")
	Text = Replace(Text,"&nbsp;&nbsp;&nbsp;&nbsp;",vbTab)
	Text = Replace(Text,"<br>",vbcrlf)
	
	Html = Text

End Function

Function NoHtml_Message(Text)

	Text = Replace(Text,"&","&amp;")
	Text = Replace(Text,"<","&lt;")
	Text = Replace(Text,">","&gt;")
	Text = Replace(Text," ","&nbsp;")
	Text = Replace(Text,vbTab,"&nbsp;&nbsp;&nbsp;&nbsp;")
	
	NoHtml_Message = Text

End Function
%>