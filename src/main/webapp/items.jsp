<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String parentItemId = request.getParameter("parent_item_id");
			System.out.println("parentItemId=" + parentItemId);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    window.onload = function() {
        setTimeout(myAjax, 100);
    }
</script>

<script>
    function myAjax() {
        var parentItemId = $('#parent_item_id').val();
        alert("parentItemId=" + parentItemId);

        var getData = {
            parent_item_id : parentItemId,
            item_type : 1
        };

        $.ajax("leyao_web/getItemUrls", {
            type : "GET",
            data : getData,
            dataType : "json",
            success : function(data, textStatus) {
                console.info('data');
                console.info(data);
            },
            error : function(XMLHttpRequest, textStatus, errorThrown) {

            }
        });
    }
</script>
</head>
<body>
  <input type="hidden" id="parent_item_id" value=<%=parentItemId%> />
  items.jsp
  <%@ include file="footer.jsp"%>
</body>
</html>