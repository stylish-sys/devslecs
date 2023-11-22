<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>선용 셋팅</title>
        <c:import url="/setting/header" />
    </head>
    <body class="" id="">
    	<div id="wrap">
	        <c:import url="/setting/menu" />
	        <c:import url="${contents}" />
	        <c:import url="/setting/left" />
	        <c:import url="/setting/footer" />
    	</div>
    </body>
</html>