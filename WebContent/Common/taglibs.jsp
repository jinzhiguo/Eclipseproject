<!-- 自定义标签 -->
<%@page language="java" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("ctx", request.getContextPath());%>
<%pageContext.setAttribute("locale", request.getLocale());%>
<%pageContext.setAttribute("systemTitle", "统计信息移动端后台管理系统");%>