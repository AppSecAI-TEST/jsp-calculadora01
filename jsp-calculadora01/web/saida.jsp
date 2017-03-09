<%-- 
    Document   : saida.jsp
    Created on : 09/03/2017, 00:41:33
    Author     : Edson Melo de Souza (prof.edson.melo@gmail.com)
--%>

<%
    /**
     * Declarando vari�veis, fazendo a convers�o dos tipos e atribuindo valores
     * originados do formul�rio.
     */
    int valor1 = Integer.parseInt(request.getParameter("valor1"));
    int valor2 = Integer.parseInt(request.getParameter("valor2"));
    double resultado = 0.0;

    // Recupera o que foi selecionado (bot�o ou lista)
    String operacao = request.getParameter("operacao");

    if (operacao.equals("+")) {
        resultado = (valor1 + valor2);
        operacao = "Adi��o";
    } else if (operacao.equals("-")) {
        resultado = (valor1 - valor2);
        operacao = "Subtra��o";
    } else if (operacao.equals("*")) {
        resultado = (valor1 * valor2);
        operacao = "Multiplica��o";
    } else if (operacao.equals("/")) {
        /**
         * For�ando a convers�o de tipos de inteiro para double
         *
         * ATEN��O: para receber valores quebrados na entrada, a convers�o ter�
         * que ser feita para um double, ex.: double.parseDouble(valor (0.5))
         */
        resultado = ((double) valor1 / (double) valor2);
        operacao = "Divis�o";
    } else {
    }

    /**
     * Faz a concatena��o do resultado e apresenta na tela
     */
    out.print("Valor 1: " + String.valueOf(valor1) + "<br>");
    out.print("Valor 2: " + String.valueOf(valor2) + "<br>");
    out.print("Opera��o: " + operacao + "<br>");
    out.print("Resultado: " + String.valueOf(resultado));
%>
<!--Criando um link para voltar � tela anterior (html)-->
<br><br>
<a href="index.jsp">Voltar</a>
