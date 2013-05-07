<html>
    <head>
        <title>Расширенный поиск</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <formset>
            <legend>Расширенный поиск пользователей:</legend>

            <table>
                <g:form action="advResults">
                    <tr>
                        <td>Имя</td>
                        <td><g:textField name="fullName" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><g:textField name="email" /></td>
                    </tr>
                    <tr>
                        <td>Домашняя страница</td>
                        <td><g:textField name="homepage" /></td>
                    </tr>
                    <tr>
                        <td>Тип запроса:</td>
                        <td><g:radioGroup name="queryType" labels="['And','Or','Not']" values="['and','or','not']" value="and" >
${it.radio} ${it.label}
                            </g:radioGroup>
                        </td>
                    </tr>


                    <tr>
                        <td/>
                        <td>
                        <g:submitButton name="search" value="Поиск"/></td>
                    </tr>
                </g:form>
            </table>

        </formset>

    </body>
</html>
