

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<div class="left_content">
<div class="title"><span class="title_icon"><img
            src="${pageContext.servletContext.contextPath }/assets/images/bullet1.gif"
            alt=""></span>Register</div>
<div class="feat_prod_box_details">
    <p class="details"> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
        labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. </p>
    <div class="contact_form">
        <div class="form_subtitle">create new account</div>
        ${error }
        <s:form method="post" commandName="account"
                action="${pageContext.request.contextPath }/account/register.htm">
            <div class="form_row">
                <label class="contact"><strong>Username:</strong></label>
                <s:input path="Username" cssClass="contact_input"></s:input>
                </div>
                <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                <s:password path="password" cssClass="contact_input"></s:password>
                </div>
                <div class="form_row">
                    <label class="contact"><strong>Full Name:</strong></label>
                <s:input path="fullname" cssClass="contact_input"></s:input>
                </div>
                <div class="form_row">
                    <label class="contact"><strong>Email:</strong></label>
                <s:input path="email" cssClass="contact_input"></s:input>
                </div>
                <div class="form_row">
                    <input type="submit" class="register" value="register">
                </div></s:form>
    </div>
</div>
<div class="clear"></div>
</div>

