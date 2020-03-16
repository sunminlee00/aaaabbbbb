<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-3.3.1/dt-1.10.20/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-3.3.1/dt-1.10.20/datatables.min.js"></script>
<script>
$(document).ready(function() {
    $('#userTable').DataTable( {
        "ajax": "http://localhost:8080/dd/t1",
        "columns": [
            { "data": "name" },
            { "data": "age" },
        ]
    } );
} );


</script>
</head>
<body>
<table id="userTable" class="table table-striped table-bordered table-hover" >
    <thead>
        <tr>
            <th>name</th>
            <th>age</th>
        </tr>
    </thead>
    <!-- tbody 태그 필요 없다. -->
</table>

</body>
</html>