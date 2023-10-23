<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<html> 
 
<body> 
 
<h2>Уважаемый сотрудник, пожалуйста, заполните свои данные</h2> 
 
<br> 
<br> 
 
<form:form action="showDetails" modelAttribute="employee"> 
 
   Введите ваше имя<form:input type="text" path="name"/>
   <form:errors path="name"/>
   <br> 
   <br> 
   Введите вашу фамилию<form:input type="text" path="surname"/>
   <form:errors path="surname"/>
    <br> 
   <br> 
  Введите вашу зарплату<form:input type="text" path="salary"/> 
  <form:errors path="salary"/>
    <br> 
   <br> 
  Введите департамент<form:select path="department"> 
   <form:option value="Information Technology" label="IT"/> 
   <form:option value="Information Technology" label="IT"/> 
   <form:option value="Human Resources" label="HR"/> 
   <form:option value="Sales" label="Sales"/> 
   </form:select> 
   <br> 
   <br>
   Выберите автомобиль  
   BMW<form:radiobutton path="carBrand" value="BMW"/> 
   Volkswagen<form:radiobutton path="carBrand" value="Volkswagen"/> 
  Mercedes-Benz<form:radiobutton path="carBrand" value="Mercedes-Benz"/> 
   <br> 
   <br> 
   Какими языками владеете? 
  English<form:checkbox path="languages" value="English"/> 
   Japan<form:checkbox path="languages" value="Japan"/> 
   Chinese<form:checkbox path="languages" value="Chinese"/> 
   <br> 
   <br> 
   Введите ваш номер телефона<form:input path="phoneNumber"/> 
     <form:errors path="phoneNumber"/>
   <br> 
   <br> 
   Введите ваш email<form:input path="email"/> 
     <form:errors path="email"/>
    <br> 
   <br> 
    <input type="submit" value="OK"> 
 
</form:form> 
 
</body> 
 
</html>