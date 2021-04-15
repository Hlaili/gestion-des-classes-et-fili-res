
<?php
                                    if(isset($_GET['success']))
                                        if($_GET['success']=="ok")
                                            echo '<p id="mssg" style="margin-left: 350px;">Mot de passe été envoyé à votre email</p>';
                                    if(isset($_GET['error'])){
                                        if($_GET['error']=="invalid")
                                            echo '<p id="mssg" style="margin-left: 350px;">Invalide email</p>';
                                        if($_GET['error']=="vide")
                                            echo '<p id="mssg" style="margin-left: 350px;">Champ email est vide</p>';
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
                               <H1>Forget Password</H1>
                              </div>

                 <form action="controller/forgetPassword.php" method="POST" id="checkLogin" >                   
                      <!--TEST IF username or password are required-->
               

          <p style="margin-left: 55px;">
            <label id="txt">Email: </label> 
            <input style="font-size: 18px;" type="text" id="email" name="email" placeholder="Votre mail.."/>
          </p>
          
                       
                     <a action="controller/forgetPassword.php" method="POST" id="checkLogin">
                      <button id="connect" name="btn_submit" class ="button" type="submit">
                       <span>
                        Envoyer
                       </span>
                      </button>
                     </a> 
    </form>


        </div>
         
              
    </body>
  </html>
