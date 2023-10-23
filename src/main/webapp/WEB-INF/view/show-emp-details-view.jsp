<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<html> 
 
<body> 
 
<h1>Добро пожаловать, дорогой ${employee.name} ${employee.surname}!</h1> 
<br> 
<br> 
<h2>Твоя зарплата - ${employee.salary} !</h2> 
<br> 
<br> 
<h2>Твой департамент - ${employee.department} !</h2> 
<br> 
<br> 
<h2>Твой автомобиль - ${employee.carBrand} !</h2> 
<br> 
<br> 
<h2>Вы владеете языками -</h2>  
<ul> <h2>
<c:forEach var="lang" items="${employee.languages}"> 
<li> ${lang} </li> 
</c:forEach> 
</h2>
</ul> 
<br> 
<br> 
<h2>Ваш номер телефона - ${employee.phoneNumber} !</h2>
 <br> 
<br>
<h2>Ваш email - ${employee.email} !</h2>
<br> 
<br>
</body> 
</html>