<html>
<head>
    <title>additionQuiz2</title>
</head>
<body>
    <%
        int correctCount = 0;
        for (int i = 0; i < 10; i++)
        {
            int x = Integer.parseInt(request.getParameter("x"+i));
            int y = Integer.parseInt(request.getParameter("y"+i));
            int answer = Integer.parseInt(request.getParameter("answer"+i));
            if (x + y == answer)
            {
                correctCount++;
                out.println(x + " + " + y + " = " + answer + " Correct<br>");
            }
            else
                out.println(x + " + " + y + " = " + answer + " Wrong<br>");
        }
        out.println("the total correct count is " + correctCount);
    %>
</body>
</html>