<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- MATERIAL CON -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <!-- STYLESHEET -->
    <link rel="stylesheet" href="assets/css/login.css" />
</head>
<body>
    <div class="contrainer">
        <div class="video-wrap">
            <video src="assets/images/black_ink_oil.mov" muted autoplay loop></video>
        </div>
        
        <div class="text-wrap">
            <small>Welcome to our</small>
            <h1 class="logo">PINY<br>Catch U</h1>
            <button type="submit" class="btnlogin-popup">Login</button>
        </div>

        <div class="wrapper">
            <span class="icon-close">
                <ion-icon name="close"></ion-icon>
            </span>
    
            <div class="form-box login">
                <h2>Login</h2>
                <form action="/main" method="post">
                    <div class="input-box">
                        <span class="icon"><ion-icon name="person"></ion-icon></span>
                        <input type="text" name="id" required placeholder="ID" autocomplete="off">
                    </div>
                    <div class="input-box">
                        <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                        <input type="password" name="pw" required placeholder="Password">
                    </div>
                    <button type="submit" class="btn">Login</button>
                    <div class="login-register">
                        <p>Don't have an account?<a href="#" class="register-link">Register</a></p>
                    </div>
                </form>
            </div>
    
            <div class="form-box register">
                <h2>Registration</h2>
                <form action="/join" method="post">
                    <div class="input-box">
                        <span class="icon"><ion-icon name="person"></ion-icon></ion-icon></span>
                        <input type="text" name="id" required placeholder="ID" autocomplete="off">
                    </div>
                    <div class="input-box">
                        <span class="icon"><ion-icon name="mail"></ion-icon></span>
                        <input type="email" name="email" required placeholder="Email" autocomplete="off">
                    </div>
                    <div class="input-box">
                        <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                        <input type="password" name="pw" required placeholder="Password">
                    </div>
                    <button type="submit" class="btn">Register</button>
                    <div class="login-register">
                        <p>Already have an account?<a href="#" class="login-link">Login</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="assets/js/login.js"></script>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</body>
</html>