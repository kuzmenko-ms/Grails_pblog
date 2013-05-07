<div id="newPost">

    <input id="charLeft" name="charLeft" size="5" value="160" readonly="true"/>

    <h4>
        Введите текст объявления:
    </h4>

    <g:if test="${flash.message}">
        <div class="flash">
            ${flash.message}
        </div>
    </g:if>

    <p>
       

        <g:form name="postMessage" action="ajaxAdd">
            <g:textArea id='postContent' name="content" rows="3" cols="50" onkeydown="updateCounter()" /><br/>
            <g:submitToRemote value="Разместить"
                 url="[controller: 'post', action: 'addPostAjax']"
                 update="allPosts"
                 onSuccess="clearPost(e)"
                 onLoading="showSpinner(true)"
                 onComplete="showSpinner(false)"/>

             <g:hiddenField name="timelineToReturn" value="${timelineType}"/>
             <img id="spinner" style=" display: none" src="${resource(dir:'/images', file:'spinner.gif')}"/>
             </g:form>


        

        <g:javascript>
            function clearPost(e) {
                $('postContent').value=''
            }
            function showSpinner(visible) {
                $('spinner').style.display = visible ? "inline" : "none"
            }



                function addTinyUrl(e) {
                    var tinyUrl = e.responseJSON.urls.small
                    $("postContent").value += tinyUrl
                    updateCounter()
                    toggleTinyUrl()
                }

            function updateCounter() {
                $("charLeft").value = 160 - $F("postContent").length
            }
            updateCounter();
        </g:javascript>

    </p>
</div>
