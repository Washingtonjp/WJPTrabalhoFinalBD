<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!DOCTYPE html>
            <html lang="pt-br">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
                <title>Projeto final</title>
            </head>

            <body>
                <header class="bg-danger">
                    <div class="container-fluid">
                        <div class="row mb-5">
                            <h1> Usuarios </h1>
                        </div>
                    </div>
                </header>

                <div class="container mt-5 ">
                    <form action="ServletDB" method="post">
                        <button class = "btn btn-danger" type="submit" name="option" value="insertForm">Cadastrar Usuario</button>
                    </form>


                    <table class="table mt-5">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Id</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Email</th>
                                <th scope="col">Telefone</th>
                                <th scope="col">Pais</th>
                                <th scope="col">acoes</th>
                            </tr>
                        </thead>
                        <tbody>
  					
  					
                            <c:forEach var="user" items="${lista}">  
                                   <form action="ServletDB" method="post">           	
                               	<tr>
                                   <input type="hidden" name="id" value="${user.id}"/>
                                        <td>${user.id} </td>
                                        <td>${user.nome}</td>
                                        <td>${user.email}</td>
                                        <td>${user.telefone}</td>
                                        <td>${user.pais}</td>
                                       
                                        <td><button type="submit" name="option" value="delete"
                                                class="btn-primary btn ">Remover</button></td>
                                        <td><button type="submit" name="option" value="updateForm"
                                                class="btn-primary btn ">Alterar</button></td>
                                  
                                   </tr>
                               	 </form> 
                               	
                                
								 
           
                            </c:forEach>
                    
                        </tbody>
                    </table>
                </div>

            </body>

            </html>