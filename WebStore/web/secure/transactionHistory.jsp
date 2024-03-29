<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Transaction History</title>
		<link rel="stylesheet" type="text/css" href="<s:url value="/main.css"/>"/>
    </head>
    <body>
		<div class="content">
			<s:include value="/header.jsp" />
			<div class="sectionHeader">
				<p class="sectionHeaderText">Transaction History</p>
			</div>


			<ol style="text-align: left;">
				<s:iterator value="transactions" var="transaction">
					<li>
						<a href="<s:url action="viewTransaction"><s:param name="transactionId" value="#transaction.id"/></s:url>">
							<s:text name="format.date">
								<s:param value="#transaction.date" />
							</s:text>
						</a>
						- <s:property value="#transaction.productName"/> -
						<s:text name="format.currency">
							<s:param value="#transaction.price"/>
						</s:text>
					</li>
				</s:iterator>
			</ol>
		</div>
    </body>
</html>
