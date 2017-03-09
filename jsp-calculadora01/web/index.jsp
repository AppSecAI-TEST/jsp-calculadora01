<%-- 
    Document   : index
    Created on : 09/03/2017, 00:04:25
    Author     : Edson Melo de Souza (prof.edson.melo@gmail.com)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora 01</title>
    </head>
    <body>
        <h1>Exemplo Calculadora - Utilizando request.getParameter()</h1>

        <!-- Criação do formulário com dois campos que receberão valores -->
        <form name="calculadora01" action="saida.jsp" method="POST">
            <label>Valor 1: </label><input type="text" name="valor1" /><br><br>
            <label>Valor 2: </label><input type="text" name="valor2" /><br><br>

            <!-- 
                Criação dos botões para realizar os cálculos.
                O nome dos botões são os mesmos, alterando apenas o VALOR deles
            -->
            <label>Operação: </label>
            <input type="submit" name="operacao" value="+" />&nbsp;
            <input type="submit" name="operacao" value="-" />&nbsp;
            <input type="submit" name="operacao" value="*" />&nbsp;
            <input type="submit" name="operacao" value="/" />&nbsp;

            <br><br><br><br>
            <p>Abaixo é apresentada uma lista com as opções de operações (select)</p>
            <!-- 
                A opção a seguir é utilizando um Lista DropDown. 
                Nesta caso é necessário utilizar um botão para realizar o 
                cálculo. Perceba que o nome da lista é o mesmo dos botões, pois
                isso permite que seja utilizada a mesma estrutura lógica de 
                decisão na página saida.jsp
            -->
            <label>Operação: </label>
            <select name="operacao">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
            &nbsp;
            <input type="submit" name="btCalcular" value="Calcular" /><br>
        </form>
    </body>
</html>
