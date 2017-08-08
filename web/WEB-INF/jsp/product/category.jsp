
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
   
    <div class="bottom-grid">
       
        <div class="col-md-4 shirt">
             <c:forEach var="product" items="${products }">
            <div class="bottom-grid-top">
                <a href="${pageContext.request.contextPath }/product/details/${product.id}.htm "><img
                                src="${pageContext.servletContext.contextPath }/assets/images/${product.photo}"
                                alt="" class="thumb" border="0"></a>
                    <div class="five">
                        <h6>-50%</h6>
                    </div>
                    <div class="pre">
                        <p><a href="${pageContext.request.contextPath }/product/details/${product.id}.htm ">${product.name}</a></p>
                        <span>${product.price}</span>
                        <div class="clearfix"> </div>
                    </div>
        
            </div>
            </c:forEach> 
        </div>
        
    </div>
                  


