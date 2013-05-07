<html>
    <head>
        <title>Результат поиска</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <h1>Поиск</h1>
        <p>Найдено ${com.grailsinaction.User.count()} 
      
        </p>
        <ul>
            <g:each var="user" in="${users}">
                <li>${user.userId}</li>
            </g:each>
        </ul>

        <g:link action='search'>Ещё раз?</g:link>

    </body>
</html>
