<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet"/>
        <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
        <script>
            function togglePassword() {
                var x = document.getElementById("password");
                var v = document.getElementById("vi");
                if (x.type === "password") {
                    x.type = "text";
                    v.src = "${url.resourcesPath}/img/eye.png";
                } else {
                    x.type = "password";
                    v.src = "${url.resourcesPath}/img/eye-off.png";
                }
            }
        </script>
    <#elseif section = "form">
    
    <div class="login-left">
        <div class="title">
            <!--img class="logo" src="${url.resourcesPath}/img/alfresco-logo.svg" alt="Alfresco" -->

            <img class="brand" src="${url.resourcesPath}/icon/imgLogo">
    
            <div class="sys-name">
                <p>Hệ thống quản lý nhân sự</p>
            </div>
        </div>
        <div class="login-form">
            <div class="title-login">
                <p>ĐĂNG NHẬP</p>
            </div>
        <#if realm.password>
            <div class="form-input">
               <form id="kc-form-login" class="form" onsubmit="return true;" action="${url.loginAction}" method="post">
                    <div class="txt-input">
                        <input class="login-field" placeholder="${msg("username")}" type="text" name="username" tabindex="1">
                    </div>
                    <div txt-input password>
                        <input class="login-field" placeholder="${msg("password")}" type="password" name="password" tabindex="2">
                        <label class="visibility" id="v" onclick="togglePassword()"><img id="vi" src="${url.resourcesPath}/img/eye-off.png"></label>
                    </div>
                    
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="remember">
                        <p id="form-check-save-password">Lưu mật khẩu</p>
                    </label>
                    </div>

                    <div class="button-submit">
                        <button type="submit" class="button-login" value="${msg("doLogIn")}" tabindex="3">Đăng nhập</button>
                    </div>
                </form>
            </div>
        </#if>
        <#if social.providers??>
            <p class="para">${msg("selectAlternative")}</p>
            <div id="social-providers">
                <#list social.providers as p>
                <input class="social-link-style" type="button" onclick="location.href='${p.loginUrl}';" value="${p.displayName}"/>
                </#list>
            </div>
        </#if>
    </div>

    <div class="login-right" >
    <div class="info-right">
        <p id="info-txt">Kênh thông tin dành cho MBers trên HCM</p>
    </div>
    <div class="select-info">
      <div class="radio-button1">
        <label for="myRadioId" class="radio">
          <input type="radio" name="myRadioField" id="myRadioId" class="radio__input" checked>
          <div class="radio__radio"></div>
        </label>
      </div>

      <div class="radio-button2">
        <label for="myRadioId" class="radio">
          <input type="radio" name="myRadioField" id="myRadioId" class="radio__input" checked>
          <div class="radio__radio"></div>
        </label>
      </div>

      <div class="radio-button3">
        <label for="myRadioId" class="radio">
          <input type="radio" name="myRadioField" id="myRadioId" class="radio__input">
          <div class="radio__radio"></div>
        </label>
      </div>


      <div class="radio-button4">
        <label for="myRadioId" class="radio">
          <input type="radio" name="myRadioField" id="myRadioId" class="radio__input">
          <div class="radio__radio"></div>
        </label>
      </div>
    </div>
</div>

    
    </#if>
</@layout.registrationLayout>
