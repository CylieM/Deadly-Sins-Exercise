<?php
include_once("./database/constants.php");
if (isset($_SESSION["userid"])) {
    header("location:".DOMAIN."/dashboard.php");

}
?>
/// THIS CODE WAS FROM OUR IM2 PROJECT, I JUST STRIPPED IT DOWN TO ITS REGISTER / LOGIN  FILES.
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title> NHOJS Sportswear </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="sha384-wESLQ85D6gbsF459vf1CiZ2+rr+CsxRY0RpiF1tLlQpDnAgg6rwdsUF1+Ics2bni" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./includes/style.css">
    <script type="text/javascript" src="./js/main.js"></script>

 </head>
<body>
    <div class="overlay"><div class="loader"></div></div>
    <br/><br/>
///FIRST SIN: avoid using hidden inputs when trying to do verification . I didn't use any hidden tokens in here so I guess I'm safe? :D
    <div class="container">
<?php
	if (isset($_GET["msg"]) AND !empty($_GET["msg"]) ){
?>
<div class="alert alert-success alert-dismissible fade show" role="alert">
 <?php echo $_GET["msg"];  ?>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<?php
	}
?>	


        <div class="card mx-auto" style="width: 20rem;">
            <img src="./images/login2.png" style="width:40%;" class="card-img-top mx-auto" alt="Login Icon">
            <div class="card-body">
                <form id="form_login" onsubmit="return false">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" name="log_email" id="log_email"  placeholder="Enter email">
                        <small id="e_error" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" name="log_password" id="log_password" placeholder="Password">
						<small id="p_error" class="form-text text-muted"></small>
					</div>
                    <br/>
                    <button type="submit" class="btn btn-primary">Login</button>
                    <span><a href="register.php">Register</a></span>
                </form>
             </div>

    </div>

  



</body>
</html>