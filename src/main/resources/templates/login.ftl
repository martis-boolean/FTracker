<#import 'includes/wrapper.ftl' as wrapper>

<@wrapper.page>
    <section class="jumbotron">
        <h1>Page: Login</h1>
        <p>Enter to your account</p>
    </section>

    <div class="container p-md-5">
        <#if error??>
            Invalid username or password.
        </#if>
        <#if logout??>
            You have been logged out.
        </#if>
        <form action="/login" method="post">
            <div><label> User Name : <input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <input type="hidden" name="_csrf" value="${ _csrf.token }">
            <div><input type="submit" value="Sign In"/></div>
        </form>
        <a href="/signup">Create account</a>
    </div>
</@wrapper.page>