<html>
    <head>
        <title>Поиск</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <formset>
            <legend>Поиск</legend>

            <g:form action="results">
                <label for="userId">Имя:</label>
                <g:textField name="userId" />
                
                <g:submitButton name="search" value="Найти"/>
            </g:form>

        </formset>

    </body>
</html>
