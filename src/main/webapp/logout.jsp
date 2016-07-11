<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.Locale" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://jakarta.apache.org/taglibs/i18n-1.0" prefix="i18n" %>
<%
  request.getSession().invalidate();
  Locale locale = null;
  try {
    locale = new Locale( request.getParameter( "locale" ) );
  } catch ( Exception e ) {
    locale = request.getLocale();
  }
%>

<i18n:bundle id="bundle" baseName="org.kie.workbench.client.resources.i18n.LoginConstants"
             locale='<%= locale%>' />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%--    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/base.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/forms.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/styles/login-screen.css">
    <link rel="shortcut icon" href="favicon.ico" />--%>

    <link rel="stylesheet" href="styles/base.css">
    <link rel="stylesheet" href="styles/forms.css">
    <link rel="stylesheet" href="styles/login-screen.css">
    <link rel="shortcut icon" href="favicon.ico" />
    <title>Red Hat Enterprise Hiring Application</title>
</head>
<body id="login">
<div id="rcue-login-screen">
    <img id="logo" src="../resources/login-screen-logo.png" alt="Red Hat Logo">
    <div id="login-wrapper" class="png_bg">

        <div id="login-content" class="png_bg">
            <form action="<%= request.getContextPath() %>/kie-wb.html" method="GET">
                <fieldset>
                    <legend>Red Hat Enterprise Hiring Application</legend>

                    <h3><i18n:message key="loginFailed">Login failed: Not Authorized</i18n:message></h3>
                    <p>
                        <input class="button login" type="submit" value='<i18n:message key="loginAsAnotherUser">Login as another user</i18n:message>'/>
                    </p>
                </fieldset>

            </form>
        </div>
    </div>
</div>
</body>
</html>
