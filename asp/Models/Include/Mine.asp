<%
'------------------------
'Code:Zhang Shen Jia
'Date:2008-1-1
'------------------------
Mine_Width=210
Mine_Height=18
%>
<div id="Mine_Box" style="position:absolute; top:404;left:279; width:<%=Mine_Width+10%>px; height:<%=Mine_Height+10%>px; z-index:1; display: none;">
	<div style="position:absolute;">
		<div style="position:absolute;">
		<table width="<%=Mine_Width%>" height="<%=Mine_Height%>" border="0" cellspacing="1" cellpadding="0" bgcolor="#DDDDDD">
		<tr>
		<td bgcolor="#444444" align="left" >
			<table width="<%=Mine_Width%>" height="<%=Mine_Height%>" border="0" cellspacing="1" cellpadding="0" bgcolor="#444444">
				<tr>
					<td><Img src="/Models/Images/Mine/Black.gif" style="cursor:pointer;" onClick="addMine('.');" title="分割使用"></td>
					<td><Img src="/Models/Images/Mine/Blank.gif" style="cursor:pointer;" onClick="addMine(' ');" title="小键盘[0]"></td>
					<td><Img src="/Models/Images/Mine/Block.gif" style="cursor:pointer;" onClick="addMine('Q');" title="小键盘[.]"></td>
					<td><Img src="/Models/Images/Mine/1.gif" style="cursor:pointer;" onClick="addMine('1');" title="小键盘[1]"></td>
					<td><Img src="/Models/Images/Mine/2.gif" style="cursor:pointer;" onClick="addMine('2');" title="小键盘[2]"></td>
					<td><Img src="/Models/Images/Mine/3.gif" style="cursor:pointer;" onClick="addMine('3');" title="小键盘[3]"></td>
					<td><Img src="/Models/Images/Mine/4.gif" style="cursor:pointer;" onClick="addMine('4');" title="小键盘[4]"></td>
					<td><Img src="/Models/Images/Mine/5.gif" style="cursor:pointer;" onClick="addMine('5');" title="小键盘[5]"></td>
					<td><Img src="/Models/Images/Mine/6.gif" style="cursor:pointer;" onClick="addMine('6');" title="小键盘[6]"></td>
					<td><Img src="/Models/Images/Mine/7.gif" style="cursor:pointer;" onClick="addMine('7');" title="小键盘[7]"></td>
					<td><Img src="/Models/Images/Mine/8.gif" style="cursor:pointer;" onClick="addMine('8');" title="小键盘[8]"></td>
					<td><Img src="/Models/Images/Mine/Mine.gif" style="cursor:pointer;" onClick="addMine('*');" title="小键盘[*]"></td>
					<td><Img src="/Models/Images/Mine/IsMine.gif" style="cursor:pointer;" onClick="addMine('+');" title="小键盘[+]"></td>
					<td><Img src="/Models/Images/Mine/Flag.gif" style="cursor:pointer;" onClick="addMine('!');" title="小键盘[9]"></td>
					<td><Img src="/Models/Images/Mine/Mark.gif" style="cursor:pointer;" onClick="addMine('?');" title="小键盘[/]"></td>
					<td><Img src="/Models/Images/Mine/Num.gif" style="cursor:pointer;" onClick="addMine('-');" title="小键盘[-]"></td>
				</tr>
			</table>
		</td>
		</tr>
		</table>
		</div>
	</div>
</div>
<script language="javascript">
function Mine()
{
	Hide('Face_Box');
	ShowHide('Mine_Box');
	document.Title_Form.Title_Text.focus();
	
}
function addMine(I)
 {
	let end=textarea.selectionEnd;//选择内容的结束位置
	textarea.focus();//获取焦点，不然无法进行其他操作
	textarea.setSelectionRange(end,end);
	textarea.setRangeText('['+I+']');
	textarea.setSelectionRange(end,end+2+I.toString().length);
 }
function KeyDown(){ 
	if (Mine_Box.style.display=='')  
	{
		if (event.keyCode==96)   
		{
			event.returnValue=false;
			addMine(' ');
		}
		if (event.keyCode==97)   
		{
			event.returnValue=false;
			addMine('1');
		}
		if (event.keyCode==98)   
		{
			event.returnValue=false;
			addMine('2');
		}
		if (event.keyCode==99)   
		{
			event.returnValue=false;
			addMine('3');
		}
		if (event.keyCode==100)   
		{
			event.returnValue=false;
			addMine('4');
		}
		if (event.keyCode==101)   
		{
			event.returnValue=false;
			addMine('5');
		}
		if (event.keyCode==102)   
		{
			event.returnValue=false;
			addMine('6');
		}
		if (event.keyCode==103)   
		{
			event.returnValue=false;
			addMine('7');
		}
		if (event.keyCode==104)   
		{
			event.returnValue=false;
			addMine('8');
		}
		if (event.keyCode==110)   
		{
			event.returnValue=false;
			addMine('Q');
		}
		if (event.keyCode==106)   
		{
			event.returnValue=false;
			addMine('*');
		}
		if (event.keyCode==105)   
		{
			event.returnValue=false;
			addMine('!');
		}
		if (event.keyCode==111)   
		{
			event.returnValue=false;
			addMine('?');
		}
		if (event.keyCode==109)   
		{
			event.returnValue=false;
			addMine('-');
		}
		if (event.keyCode==107)   
		{
			event.returnValue=false;
			addMine('+');
		}
	}
}
</script>