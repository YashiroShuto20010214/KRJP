<%@ page pageEncoding="Windows-31J"
	contentType="text/html;charset=Windows-31J" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<title>Ryo�����˂�</title>
	<link rel="stylesheet" type="text/css" href="threadList.css" >
</head>
<body style="background: #FFAD90;">
	<h1>���X���b�h�ꗗ</h1><div id="dwrite"><a href="#bottom">�X���b�h�쐬��</a></div>
	<div class="res">
        <form method="post" action="ResponseServlet">
	
		
		<c:forEach var="thre" items="${thread_table}">
				<label>
					<a><input type="submit" name="thread_id" value="${thre.thread_id}" style="border-width:0px;border-style:None;background-color:#FFFFFF;
font-size: 18px;" type="text" name="timeSecond" id="timeSecond" value="180" readonly size="1"></a>
					<span class="font f"><c:out value="${thre.thread_title}" /></span>
					<span>(<c:out value="${thre.latest_res}" />)</span>
				</label>
				<br>
		</c:forEach>
	   </form>
	   </div>
		<div class="res">
        
        <form method="post" action="CreateThreadServlet">
        <a class="resp">�@�`�X���b�h��V�K�쐬����`</a><br>
            <input type="text"  name="thread_name" size="100" maxlength="50" id="bottom" required>
            <input type="submit"   value="���e����">
            
            
        </form>
        </div>
    
<div id="top_page"><a href="index.jsp">��<br>T<br>O<br>P</a></div>

<div id="page_top"><a href="#">��</a></div>

</body>

</html>