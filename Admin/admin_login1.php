<?php
  include "connection.php";
  include "navbar.php"
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="login1.css">
</head>
<body>
<div class="main">
<div class="form-box">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" id="login_btn" class="toggle-btn" onclick="login()">Login</button>
                <button type="button" id="register_btn" class="toggle-btn" onclick="register()">Register</button>
            </div>
            
            <form class="input-group" id="login" action="admin_login1.php" method="post">
                <input type="username" name="username" class="input-field" placeholder="Username" required>
                <input type="password" name="password" class="input-field" placeholder="Enter Password" required>
                <input style="margin-top:5px; position:relative; right:140px" type="checkbox" class="check-box"><span>Remember Password</span>
                <button style="margin-top:10px;" type="submit" name="submit" class="submit-btn">Log in</button>
                <p class="p-class">
            <a style=" color: #d50215; text-decoration: none;" href="update_password.php">Forgot password?</a>  
      </p>
      <div class="alert alert-danger" id="alert_1" style="background-color: #de1313; color: white; display:none;" >
        <strong>The username and password doesn't match</strong>
      </div>   
            </form>
            
            <form class="input-group"  style ="top:100px;"id="register" action="login_login1.php" method="post">
                <input type="text" name="first"class="input-field" placeholder="First Name" required>
                <input type="text" name="last"class="input-field" placeholder="Last Name" required>
                <input type="text" name="username"class="input-field" placeholder="Username" required>
                <input type="text" name="email" class="input-field" placeholder="Email" required>
                <input type="password" name="password" class="input-field" placeholder="Enter Password" required>
                <input type="text" name="contact"class="input-field" placeholder="Phone no" required>
                <input style="margin-top:5px; position:relative; right:140px" type="checkbox" name="agree" class="check-box"><span>I agree to to the terms and conditions.</span>
                <button  style="margin-top:10px;" type="submit" name="sub" class="submit-btn">Register</button>
            </form>
        </div> 
        <?php

if(isset($_POST['submit']))
{
  $count=0;
  $res=mysqli_query($db,"SELECT * FROM `admin` WHERE username='$_POST[username]' && password='$_POST[password]';");
  
  $row= mysqli_fetch_assoc($res);
  $count=mysqli_num_rows($res);

  if($count==0)
  {
    ?>
          
          <script type="text/javascript">
            document.getElementById("alert_1").style.display="block";
          </script> 
         
         
    <?php
  }
  else
      {
        $_SESSION['login_user'] = $_POST['username'];
        $_SESSION['pic']= $row['pic'];

        ?>
          <script type="text/javascript">
            window.location="profile.php"
          </script>
        <?php
      }
}
?>
<!--  registration php -->
<?php

      if(isset($_POST['sub']))
      {
        $count=0;

        $sql="SELECT username from `admin`";
        $res=mysqli_query($db,$sql);

        while($row=mysqli_fetch_assoc($res))
        {
          if($row['username']==$_POST['username'])
          {
            $count=$count+1;
          }
        }
        if($count==0)
        {
          mysqli_query($db,"INSERT INTO `ADMIN` VALUES('$_POST[first]', '$_POST[last]', '$_POST[username]', '$_POST[password]', '$_POST[email]', '$_POST[contact]', 'p.jpg');");
        ?>
          <script type="text/javascript">
           alert("Registration successful");
          </script>
        <?php
        }
        else
        {

          ?>
            <script type="text/javascript">
              alert("The username already exist.");
            </script>
          <?php

        }

      }

    ?>
    <!-- ----------------------- -->
        <script>
        var logIn = document.getElementById("login");
var regisTer = document.getElementById("register");
var btn = document.getElementById("btn");

var login_btn = document.getElementById("login_btn");
var register_btn = document.getElementById("register_btn");

function register() {
    logIn.style.left = "-400px";
    regisTer.style.left = "50px";
    btn.style.left = "110px";
    register_btn.style.color = "#eeeeee";
    login_btn.style.color = "#000000";
}

function login() {
    logIn.style.left = "50px";
    regisTer.style.left = "450px";
    btn.style.left = "0";
    register_btn.style.color = "#000000";
    login_btn.style.color = "#eeeeee";
}</script>
</div>
        

</body>
</html>