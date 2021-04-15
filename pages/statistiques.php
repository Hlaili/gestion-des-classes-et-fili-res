<?php
if(session_status() == PHP_SESSION_NONE){
    session_start();
}
  if(isset($_SESSION['employe'])){
?>


<div class="container-fluid" style="margin-top: 5%;">
    <div class="">
        <p class="h2 text-center text-purple text-uppercase font-weight-bold">Statistiques des Filieres & Classes</p>
        <hr class="line-seprate">
        <section class="statistic statistic2">
                <div class="container">
                    <div class="row">
                        <a href="./index.php?p=classes" class="col-md-6 col-lg-3" style="left: 190px;">
                            <div class="statistic__item statistic__item--green">
                                <h2 class="number">...</h2>
                                <span class="desc">Classes</span>
                                <div class="icon">
                                    <i class="fa fa-home"></i>
                                </div>
                            </div>
                        </a>
                        <a href="./index.php?p=filiere" class="col-md-6 col-lg-3" style="left: 300px;"  >

                            <div class="statistic__item statistic__item--blue">
                                <h2 class="number">...</h2>
                                <span class="desc">Filieres</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-graduation-cap"></i>
                                </div>
                            </div>
                        </a>

<hr class="line-seprate">
<div class="row" >
<canvas id="myChart" width="800" height="400"></canvas>
</div>
            </div>
                    </div>
                </div>
            </section>
    </div>
</div>
<script src="script/statistique.js" type="text/javascript"></script>
<?php
}
else{
  header("Location: ../index.php");
}
 ?>