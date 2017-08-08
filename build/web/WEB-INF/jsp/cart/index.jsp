
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="left_content">
    <div class="title"><span class="title_icon"><img
                src="${pageContext.servletContext.contextPath }/assets/images/bullet1.gif"
                alt=""></span>My cart</div>
    <div class="feat_prod_box_details">
        <table class="cart_table">
            <tbody><tr class="cart_title">
                    <td>Option</td>
                    <td>Item pic</td>
                    <td>Product name</td>
                    <td>Unit price</td>
                    <td>Qty</td>
                    <td>Sub-Total</td>
                </tr>
            <c:set var="s" value="0"></c:set>
            <c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
                <c:set var="s" value="${s + item.product.price * item.quantity}"></c:set>
                <tr>
                    <td><a href="${pageContext.request.contextPath
                           }/cart/delete/${i.index}.htm">X</a></td>
                    <td><a href="${pageContext.request.contextPath
                           }/product/detail/${item.product.id}.htm"><img
                                src="${pageContext.servletContext.contextPath
                                }/assets/images/${item.product.photo}"
                                alt="" width="30" height="31" border="0" class="cart_thumb"></a></td>
                    <td>${item.product.name}</td>
                    <td>${item.product.price}$</td>
                    <td>${item.quantity}</td>
                    <td>${item.product.price * item.quantity}$</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="5" class="cart_total"><span class="red">TOTAL:</span></td>
                <td> ${s }$</td></tr>
            </tbody></table>
        <a href="http://all-free-download.com/free-website-templates/" class="continue">&lt;
            continue</a> <a href="http://all-free-download.com/free-website-templates/"
                        class="checkout">checkout &gt;</a> </div>
    <div class="clear"></div>
</div>