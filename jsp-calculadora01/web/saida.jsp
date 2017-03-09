<%-- 
    Document   : saida.jsp
    Created on : 09/03/2017, 00:41:33
    Author     : Edson Melo de Souza (prof.edson.melo@gmail.com)
--%>

<%
    /**
     * Declarando variáveis, fazendo a conversão dos tipos e atribuindo valores
     * originados do formulário.
     */
    int valor1 = Integer.parseInt(request.getParameter("valor1"));
    int valor2 = Integer.parseInt(request.getParameter("valor2"));
    double resultado = 0.0;

    // Recupera o que foi selecionado (botão ou lista)
    String operacao = request.getParameter("operacao");

    if (operacao.equals("+")) {
        resultado = (valor1 + valor2);
        operacao = "Adição";
    } else if (operacao.equals("-")) {
        resultado = (valor1 - valor2);
        operacao = "Subtração";
    } else if (operacao.equals("*")) {
        resultado = (valor1 * valor2);
        operacao = "Multiplicação";
    } else if (operacao.equals("/")) {
        /**
         * Forçando a conversão de tipos de inteiro para double
         *
         * ATENÇÃO: para receber valores quebrados na entrada, a conversão terá
         * que ser feita para um double, ex.: double.parseDouble(valor (0.5))
         */
        resultado = ((double) valor1 / (double) valor2);
        operacao = "Divisão";
    } else {
    }

    /**
     * Faz a concatenação do resultado e apresenta na tela
     */
    out.print("Valor 1: " + String.valueOf(valor1) + "<br>");
    out.print("Valor 2: " + String.valueOf(valor2) + "<br>");
    out.print("Operação: " + operacao + "<br>");
    out.print("Resultado: " + String.valueOf(resultado));
%>
<!--Criando um link para voltar à tela anterior (html)-->
<br><br>
<a href="index.jsp">Voltar</a>
