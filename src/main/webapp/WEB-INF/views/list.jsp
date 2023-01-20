<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SUN - 이어폰 만족도 조사</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
   <link rel="stylesheet" href="./bootstraps/css/all.css" />
  </head>
  <body>
    <%-- <%@ include file="header.jsp" %> --%>
<%--  --%>
    <div class="container border border-dark rounded bg-white my-4">
      <main class="p-5">
      
<table class="table table-striped table-hover table-bordered mt-5">
	<thead>
		<tr class="text-center table-dark ">
			
			<th>USER_UID</th>
			<th>PHONE</th>
			<th>NAME</th>
			<th>EMAIL</th>
			<th>ID</th>
			<th>PWD</th>
			<th>SURVEYCHECK</th>
			<th>AUTH</th>	
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${resultMap}" var="resultData" varStatus="loop">
			<tr>
				<td>${resultData.USER_UID}</td>
				<td>${resultData.PHONE}</td>
				<td>${resultData.NAME}</td>
				<td>${resultData.EMAIL}</td>
				<td>${resultData.ID}</td>
				<td>${resultData.PWD}</td>
				<td>${resultData.SURVEYCHECK}</td>
				<td>${resultData.AUTH}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

      </main>
    </div>
<%--  --%>
    <%-- <%@ include file="footer.jsp" %> --%>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
