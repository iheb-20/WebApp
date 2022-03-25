<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="LoginCss/Login.css" rel="stylesheet">
</head>
<body>
<div class="Container">
    <form method="post" action="Login">
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="inputEmail3" name="Username" value="<c:out value="${User.getLogin()}"/>" placeholder="Username">
            </div>
            <c:if test="${!empty LoginLengthException}">
                <c:out value="${LoginLengthException}"/>
            </c:if>
        </div>
        <div class="form-group row">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" id="inputPassword3" name="Password" value="<c:out value="${User.getPassword()}"/>" placeholder="Password">
            </div>
        </div>
        <c:if test="${!empty LoginInfoError}">
            <c:out value="${LoginInfoError}"/>
        </c:if>
        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary">Sign in</button>
            </div>
        </div>
    </form>
    <p>Or <a href="Register.html">Register</a> </p>

</div>
</body>
</html>