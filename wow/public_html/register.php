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

    <div class="container">
         <div class="card mx-auto" style="width:30rem;">
            <div class="card-header">Register</div>
            <div class="card-body">
             <form id="register_form" onsubmit="return false" autocomplete="off">
                <div class="form-group">
                    <label for="username">Full Name</label>
                    <input type="text" name="username" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter username">
					<small id="u_error" class="form-text text-muted"></small>
				</div>
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="emaik" name="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="e_error" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                    <label for="password1">Password</label>
                    <input type="password" name="password1" class="form-control" id="password1" aria-describedby="emailHelp" placeholder="Password">
					<small id="p1_error" class="form-text text-muted"></small>
				</div>
                <div class="form-group">
                    <label for="password2">Re-enter Password</label>
                    <input type="password" name="password2" class="form-control" id="password2" aria-describedby="emailHelp" placeholder="Password">
					<small id="p2_error" class="form-text text-muted"></small>
				</div>
                <div class="form-group">
                    <label for="usertype">Usertype</label>
                    <select name="usertype" class="form-control" id="usertype">
						<option value="">Choose User Type</option>
                        <option value="Admin">Admin</option>
                        <option value="Other">Other</option>
                    </select>
					<small id="t_error" class="form-text text-muted"></small>
                </div>
                <button type="submit" name="user_register" class="btn btn-primary">Register</button>
                <span><a href="index.php">Login</a></span>
            <form>
        </div>
        <div class="card-footer text-muted">
            
        </div>
     </div>
 </div>

  



</body>
</html>