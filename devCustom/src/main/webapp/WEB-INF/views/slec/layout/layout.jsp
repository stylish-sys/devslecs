<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>우리의 결혼을 축하해주세요</title>
        <c:import url="/cmmn/header" />
    </head>
    <body>
        <c:import url="/cmmn/menu" />
        <c:import url="/cmmn/left" />
        <c:import url="/WEB-INF/views/slec/${contents}" />
        <c:import url="/cmmn/footer" />
        <c:import url="/cmmn/weddingBorder" />
    </body>
</html>