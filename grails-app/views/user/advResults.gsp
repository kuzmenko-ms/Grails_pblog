<html>
    <head>
    
        <meta name="layout" content="main"/>
    </head>
    <body>

        <h1>Advanced Results</h1>
        <p>Найдено: <em>${term}</em>.
         <strong>${profiles.size()}</strong>
        </p>
        <ul>
            <g:each var="profile" in="${profiles}">
                <li>${profile.fullName}</li>
            </g:each>
        </ul>

        <g:link action='advSearch'>Ещё раз?</g:link>

    </body>
</html>
