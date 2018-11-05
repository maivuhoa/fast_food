<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="main-content">
	<div class="page-title">
		<h3>
			<strong>Manage Orders</strong>
		</h3>
	</div>
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12 table-responsive">
							<table id="products-table" class="table table-tools table-hover">
								<thead>
									<tr>
										<th style="min-width: 70px"><strong>ID</strong>
										<th><strong>Purchase Date</strong></th>
										<th><strong>Customer</strong></th>
										<th><strong>Phone</strong></th>
										<th><strong>Amount</strong></th>
										<th class="text-center"><strong>Status</strong></th>
										<th class="text-center"><strong>Actions</strong></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="order" items="${orders}" varStatus="status">
										<tr>
											<td>${order.idOrder}</td>
											<td><fmt:formatDate pattern="dd/MM/yyyy"
													value="${order.createAt}" /></td>
											<c:choose>
												<c:when test="${empty order.customer }">
													<td>${order.name}</td>
												</c:when>
												<c:otherwise>
													<td>${order.customer.email}</td>
												</c:otherwise>
											</c:choose>
											<td>${order.phone}</td>
											<c:choose>
												<c:when test="${empty order.orderDetails }">
													<td>0</td>
												</c:when>
												<c:otherwise>
													<c:set var="totalPrice" value="${0}" />
													<c:set var="Qty" value="${0}" />
													<c:forEach var="orderDetail" items="${order.orderDetails}">
														<c:set var="totalPrice"
															value="${totalPrice + (orderDetail.price)}" />
														<c:set var="Qty" value="${Qty + (orderDetail.quantity)}" />
													</c:forEach>
													<td>$<fmt:formatNumber type="number"
															value="${totalPrice+order.shipCost}" /> <br>
														Qty:${Qty}
													</td>
												</c:otherwise>
											</c:choose>
											<td class="text-center"><c:choose>
													<c:when test="${order.status == 0}">
														<span class="label label-warning w-300">Waiting</span>
													</c:when>
													<c:otherwise>
														<span class="label label-success w-300">Shipped</span>
													</c:otherwise>
												</c:choose></td>
											<td class="text-center"><a href="/admin/order_detail"
												class="view btn btn-sm btn-default"><i
													class="fa fa-search"></i> View</a></td>
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