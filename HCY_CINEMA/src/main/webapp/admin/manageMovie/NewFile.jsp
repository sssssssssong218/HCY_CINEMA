<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.147/jsp_prj/common/main/favicon.png">
<!-- bootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style>
</style>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
	      var files=$('#file')[0].files;
          var fileName="";
          for(var i= 0; i<files.length; i++){
              fileName+=files[i].name+",";
          }
          $("#hide").val(fileName);
          var hide=$("#hide").val();
          alert(hide);
          $("#frm").submit();
	});//click
});


</script>
</head>
<body>
<form action="NewFile1.jsp" name="frm" id="frm">

<input type="file" name="file" id="file" multiple="multiple"/>
<input type="hidden" name="hide" id="hide">
<input type="button" value="click" id="btn">

</form>
<div>

</div>
</body>
</html>



