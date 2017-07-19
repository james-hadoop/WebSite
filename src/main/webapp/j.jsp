<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<title>Insert title here</title>

<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function() {
        //var htmlString = "<img src=\"image/items/item7.jpg\" class=\"img-responsive\">";

        $(".image-container").after(htmlString);
        $(".image-container").after(htmlString);
    });
</script>
</head>
<body>
  <div class="container outside">
    <div class="row inside">
      <div class="col-xs-12">
          <div class="image-container"></div>
        </div>
    </div>
  </div>
</body>
</html>