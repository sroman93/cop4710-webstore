<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Edit Products</title>
		<link rel="stylesheet" type="text/css" href="<s:url value="/main.css"/>"/>
    </head>
    <body>
		<div class="content">
			<s:include value="/header.jsp" />
			<div class="sectionHeader">
				<p class="sectionHeaderText">Select Product to Edit</p>
			</div>

			<ol style="text-align: left;">
				<s:iterator value="products" var="product">
					<li><a href="<s:url action="editProduct"><s:param name="productId" value="#product.id"/></s:url>"><s:property value="#product.name"/></a>  <s:text name="format.currency"><s:param value="#product.price"/></s:text></li>
				</s:iterator>
			</ol>
		</div>
    </body>
</html>
