<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Registration page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="Registration.css" rel="stylesheet">
</head>
<body>

<h2>personal information</h2>
<form method="post" action="register">
    <div class="form-group row">
        <label for="firstname" class="col-sm-2 col-form-label">Username</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="firstname" placeholder="enter first name">
        </div>
        <div class="form-group row">
            <label for="familyname" class="col-sm-2 col-form-label">familyname</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="familyname" placeholder="enter family name">
            </div>
        </div>

        <p>
            genre:
            <input type="radio" id="male"/>
            <label for="male">male</label>
            <input type="radio" id="female"/>
            <label for="male">female</label><br/>
        </p>

        <p>
            <label for="grade">grade</label>
            <select name="grade" id="grade">
                <option value="worker">worker</option>
                <option value="student">student</option>
                <option value="other">other</option>
            </select>
        </p>

        <div class="form-group row">
            <label for="address" class="col-sm-2 col-form-label">address</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" id="address" placeholder="enter your address">
            </div>

            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">email</label>
                <div class="col-sm-3">
                    <input type="email" class="form-control" id="email" placeholder="enter your address">
                </div>

                <div class="form-group row">
                    <label for="telephone" class="col-sm-2 col-form-label">telephone</label>
                    <div class="col-sm-3">
                        <input type="tel" class="form-control" id="telephone" placeholder="enter your phone number">
                    </div>
</form>
<h2>connection information</h2>

<form method="post" action="Login">
    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="username" placeholder="Username">
        </div>

        <div class="form-group row">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" id="password"  placeholder="Password">
            </div>
        </div>

        <div class="form-group row">
            <label for="passwordcon" class="col-sm-2 col-form-label">Password confirmation</label>
            <div class="col-sm-3">
                <input type="password" class="form-control" id="passwordcon"  placeholder="Password">
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-10">
                <button type="submit" class="btn btn-primary" id="register">Register</button>
            </div>
        </div>
</html>