<?php
session_start();
$message = "";
if (isset($_POST['btn_submit'])) {
    if ($_POST['email'] != '' && $_POST['password'] != '') {
        include_once 'beans/Employe.php';
        include_once 'services/EmployeService.php';
        $es = new EmployeService();
        $cin = $es->findByEmail($_POST['email']);
        $em = $es->findById($cin);
        if ($em->getPassword() == md5($_POST['password'])) {
            $_SESSION['employe'] = $em->getCin();
            $_SESSION['photo'] = $em->getPhoto();
            $_SESSION['nom'] = $em->getNom().' '.$em->getPrenom();
            $_SESSION['role'] = $em->getRole();
            $_SESSION['email'] = $em->getEmail();
            header('Location:./index.php');
        }
        else{
          header('Location:./login.php?error=invalid');
        }
    } else {
        header('Location:./login.php?error=vide');
    }
}

?>


<!DOCTYPE html>
    <html>
        <head>

            <link rel="icon" type="image/png" href="img/icon.png">
             <title>~ Login ~</title>
               
        </head>
    <body align="center">
         
          <!-- background Animation -->
          <?php
           include'style/stylestars.php';
           include'style/loginbutton.php';
           include'style/style.php';


            ?>

              <div id="stars"></div>
              <div id="stars2"></div>
              <div id="stars3"></div>  
           
                   </br></br></br>
           <!-- Créer une forme Login -->
          <div id="frm">
              
              <div id="title">
               <H1>Login</H1>
              </div>

                 <form action="" method="POST" id="checkLogin" >                     
                      <!--TEST IF username or password are required-->
               

                <p style="margin-left: 55px;">
                    <label id="txt">Email: </label> 
                    <input style="font-size: 18px;" type="text" id="email" name="email" placeholder="Votre mail.."/>
                </p>
                <p>
                    <label id="txt" style="margin-left: 1.5%;">Mot de passe: </label>   
                    <input style="font-size: 18px;" type="password" id="password" name="password" placeholder="Votre mot de passe.."/>
                </p>
                <p>
                    <button id="connect" type="submit" class ="button" name="btn_submit" style="margin-left: 0px;">
                       <span>
                        Sign In
                        </span>
                      </button>
                </p>
               </form>
                  

        
                     <a href="./forget.php">
                      <button class ="butREG2">
                       <span>
                        Forget Password
                       </span>
                      </button>
                     </a>
               
    

          </div>
         
              
        </body>
    </html>



