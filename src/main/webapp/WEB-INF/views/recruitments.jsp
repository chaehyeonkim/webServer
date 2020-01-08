<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="container-wrapper">

	<div class="container">
		<h2>All recruitments</h2>
		<table class="table table-striped">
			<thead>
				<tr class="bg-success">
					<th>recruitment_form</th>
					<th>recruit_category</th>
					<th>recruitment_school</th>
					<th>work_location</th>
					<th>pay</th>
					<th>position</th>
					<th>start_day</th>
					<th>finish_day</th>
					<th>require_documents</th>
					<th>status</th>
					<th>require_how_many</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="recruitment" items="${recruitments }">
					<tr>
						<td>${recruitment.recruitment_form }</td>
						<td>${recruitment.recruit_category }</td>
						<td>${recruitment.recruitment_school }</td>
						<td>${recruitment.work_location }</td>
						<td>${recruitment.pay }</td>
						<td>${recruitment.position }</td>
						<td>${recruitment.start_day }</td>
						<td>${recruitment.finish_day }</td>
						<td>${recruitment.require_documents }</td>
						<td>${recruitment.status }</td>
						<td>${recruitment.require_how_many }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>








