<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%
    String parentItemId = request.getParameter("parent_item_id");
			System.out.println("parentItemId=" + parentItemId);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function() {
        var parentItemId = $('#parent_item_id').val();

        var getData = {
            parent_item_id :0,
            item_type : 1
        };

        $.ajax("leyao_web/getItemUrls", {
            type : "GET",
            data : getData,
            dataType : "json",
            success : function(data, textStatus) {
                for ( var index in data.rows) {
                    var row = data.rows[index];
                    var imageUrl = 'image/' + row.itemUrl;
                    var targetUrl = 'items.jsp?parent_item_id=' + data.rows[index].itemId;

                    var htmlString = "<div class=\"col-sm-6 col-xs-12\"><a href="+targetUrl+"><img src=\""+imageUrl+"\" class=\"img-responsive\" style=\"margin-bottom:10px;\"></a></div>";
                    $(".my-music").before(htmlString);
                }
            },
            error : function(XMLHttpRequest, textStatus, errorThrown) {

            }
        });
    });
</script>
</head>
<body>
  <%@ include file="header.jsp"%>

  <input type="hidden" id="parent_item_id" value=<%=parentItemId%> />

  <div class="container outside">
    <div class="row inside">
      <div class="col-xs-12">
        <div class="row my-music"></div>
      </div>
    </div>
  </div>

  <%@ include file="footer.jsp"%>
</body>
</html>