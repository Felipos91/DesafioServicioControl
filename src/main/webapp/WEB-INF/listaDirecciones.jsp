<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="template/navbar.jsp">
		<jsp:param value="Alumnos" name="title" />
	</jsp:include>

	<div class="d-flex justify-content-center">

		<section class="h-100 mx-5 my-3 w-50">
			<div class="h-100">
				<div class="row  h-100">
					<div class="col-12">
						<div class="card shadow-lg">
							<div class="card-body p-5">


								<div class="row mt-3">
									<div class="col">
										<table class="table">
											<thead>
												<tr>
													<th scope="col">Calle</th>
													<th scope="col">Número</th>
													<th scope="col">Ciudad</th>
													<th scope="col">Tipo</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="direccion" items="${listaDirecciones}">
													
													<tr>
														<td><c:out value="${direccion.calle}"></c:out></td>
														<td><c:out value="${direccion.numero}"></c:out></td>
														<td><c:out value="${direccion.ciudad}"></c:out></td>
														<td><c:out value="${direccion.tipoDireccionEnum}"></c:out></td>
														
													</tr>
													
												</c:forEach>
												
											</tbody>
										</table>
									</div>

								</div>

							</div>

						</div>

					</div>
				</div>
			</div>
		</section>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>