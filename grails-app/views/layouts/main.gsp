<html>
<head>
  <title>Пищеblog &raquo; <g:layoutTitle default="Welcome" /></title>
  <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
  <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'reset-fonts-grids.css')}"/>
  <link rel="stylesheet" href="<g:createLinkTo dir='css' file='hubbub.css'/>"/>
   <script src="http://code.jquery.com/jquery.js"></script>
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'superfish.css')}" type="text/css">
 
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                <script type="text/javascript" src="http://jqueryjs.googlecode.com/files/jquery-1.3.2.js"></script>
                <script src="${resource(dir: 'js', file: 'gallery.js')}"></script>
                          <script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
                 <script src="${resource(dir: 'js', file: 'jquery-1.2.6.min.js')}"></script>
                   <script src="${resource(dir: 'js', file: 'hoverIntent.js')}"></script>
                   <script src="${resource(dir: 'js', file: 'superfish.js')}"></script>
                     <script src="${resource(dir: 'js', file: 'supesub.js')}"></script>
                     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
                     <script src="${resource(dir: 'js', file: 'autoadvance.js')}"></script>
                     <script src="${resource(dir: 'js', file: 'script.js')}"></script>
                     <script src="${resource(dir: 'js', file: 'kar.js')}"></script>
                <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

        
            
                

  <g:layoutHead />
  <g:javascript library="application" />
  <g:javascript library="scriptaculous"/>
  <img src="${resource(dir: 'images', file: '3g.png')}" width="417" height="151" align="middle" />
  <div id="top-panel">
    
<div class="main">
            <div class="panel">
                <div id="link">
                <a  href="#join_form" id="join_pop">Регистрация</a></div>
            </div>
 
        </div>
 

      
        <!-- раскрывающаяся форма #2 -->
        <a href="#x" class="overlay" id="join_form"></a>
        <div class="popup">
            <h2>Регистрация</h2>
            <p>Пожалуйста, введите свои данные здесь</p>
            
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
                <dt>Email:</dt>
                <dd><g:textField name="email" value="${userDetails?.email}"/></dd>
                <dt><g:submitButton name="register" value="Регистрация"/></dt>
            </dl>

        </g:form>
            <a class="close" href="#close"></a>   
        </div>
</div>
</head>

<body>
  
  <div id="doc3" class="yui-t5">
   
   <a href="${resource(dir:'/')}">
    Главная страница
   </a>
    
    <div id="bd"><!-- start body -->
      <g:layoutBody/>
    </div>  <!-- end body -->
    
    <div id="ft">
       
    </div>
  </div>
  <r:layoutResources/>		
</body>	
</html>
