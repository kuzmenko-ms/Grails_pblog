<html>
    <head>
        <title>Регистрация:</title>
        <style>
            dd {
                text-align: left;
                margin-left: 80px;
                margin-top: 5px;
            }
        </style>
    </head>
    <body>

        <h1>Добро пожаловать!</h1>

        <g:hasErrors bean="${userDetails}">
            <div class="errors">
               <g:renderErrors bean="${userDetails}" as="list" />
            </div>
        </g:hasErrors>

        <g:form action="register">
            <dl>
                <dt>Логин:</dt>
                <dd><g:textField name="userId" value="${userDetails?.userId}"/></dd>
                <dt>Пароль:</dt>
                <dd><g:passwordField name="password" value="${userDetails?.password}"/></dd>
                <dt>Повторный ввод пароля:</dt>
                <dd><g:passwordField name="passwordRepeat" value="${userDetails?.passwordRepeat}"/></dd>
                <dt>Настоящее имя:</dt>
                <dd><g:textField name="fullName" value="${userDetails?.fullName}"/></dd>
                <dt>Организация:</dt>
                <dd><g:textArea name="bio" value="${userDetails?.bio}"/></dd>
                <dt>Email</dt>
                <dd><g:textField name="email" value="${userDetails?.email}"/></dd>
                <dt><g:submitButton name="register" value="Регистрация"/></dt>
            </dl>

        </g:form>

    </body>
</html>
