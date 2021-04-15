<?php
if(session_status() != PHP_SESSION_ACTIVE) {
session_start();
}
if ($_SESSION["employe"]) {
    if ($_SESSION['role'] == "Admin") {
?>
<!DOCTYPE html>
<html lang="FR">

<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="img/icon.png">
    <title>~ Host*Students ~</title>
    <script src='vendor/jquery-3.2.1.min.js'></script>
    <script src='vendor/bootstrap-4.1/popper.min.js'></script>
    <script src='vendor/bootstrap-4.1/bootstrap.min.js'></script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    
    
    <link rel='stylesheet' href='vendor/bootstrap-4.1/bootstrap.min.css'>
    <link rel='stylesheet' href='vendor/font-awesome-5/css/fontawesome-all.min.css'>
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/theme.css">
    <link rel="stylesheet" href="style/main.css">
    <link href="vendor/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" media="all">      
    <script src="vendor/slick/slick.min.js"></script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="vendor/animsition/animsition.min.js"></script>
    <script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <script src="vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor/counter-up/jquery.counterup.min.js"></script>
    <script src="vendor/circle-progress/circle-progress.min.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="js/main.js"></script>


    <script src="vendor/datatable/jquery.dataTables.min.js" type="text/javascript"></script>

    <script src="vendor/datatable/dataTables.bootstrap4.min.js" type="text/javascript"></script>

    <script src='vendor/chartjs/Chart.js'></script>
</head>
<body>
    <div class="page-wrapper chiller-theme toggled">
        <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
            <i class="fas fa-bars"></i>
        </a>
        <nav style="background-color: red;" id="sidebar" class="sidebar-wrapper">
            <div class="sidebar-content">
                <div class="sidebar-brand">
                    <a href="./" class="h2 pt-2"><span><i class="fa fa-tachometer"></i></span><span>Education</span></a>
                    <div id="close-sidebar">
                        <i class="fas fa-times"></i>
                    </div>
                </div>
                <div class="sidebar-header">
                    <div class="user-pic">
                        <img class="img-responsive img-rounded"
                            src="img/<?php if (isset($_SESSION['photo'])) {
                                        echo $_SESSION['photo'];
                                        } else
                                            echo '1559910959404.png'
                                        ?>"
                            alt="User picture">
                    </div>
                    <div class="user-info">
                        <span class="user-name">
                            <strong><?php
                                        if (isset($_SESSION['nom'])) {
                                            echo $_SESSION['nom'];
                                        }
                                    ?></strong>
                        </span>
                        <span class="user-role"><?php
                                        if (isset($_SESSION['role'])) {
                                            echo $_SESSION['role'];
                                        }
                                    ?></span>
                        <span class="user-status">
                            <i class="fa fa-circle"></i>
                            <span style="color:green">Online</span>
                            
                        </span>
                    </div>
                </div>
                <!-- sidebar-header  -->

                <!-- sidebar-search  -->
                <div class="sidebar-menu">
                    <ul>
                        <li class="header-menu">
                            <span>Gestion</span>
                        
                        <li>
                            <a href="./index.php?p=filiere"><i class="zmdi zmdi-graduation-cap"></i>Filieres</a>
                        </li>
                        <li>
                            <a href="./index.php?p=classes"><i class="fa fa-home"></i>Classes</a>
                        </li>
                        <li class="header-menu">
                            <span>Statistique</span>
                        </li>
                        <li>
                            <a href="./index.php?p=Search"><i class="fa fa-search"></i>Recherche</a>
                        </li>
                        <li>
                            <a href="./index.php?p=statistiques"><i class="zmdi zmdi-chart"></i>Statistiques</a>
                        </li>
                        

                    </ul>
                </div>
                                 <!-- sidebar-menu  -->
                            </div>
                            <!-- sidebar-content  -->
                            <div class="sidebar-footer">
                                <a href="./logout.php">
                                    <i class="fa fa-power-off"></i>
                                    <span>Déconnexion</span>
                                </a>
                            </div>
        </nav>
        <!-- sidebar-wrapper  -->
        <main class="page-content">
            <div class="container-fluid" id="main-content">

                <?php
                    if( isset($_GET['p']) && $_GET['p'] != ""){
                        if($_GET['p']=="departement"){
                            include_once './pages/departement.php';
                        }elseif ($_GET['p']=="employe"){
                            include_once './pages/employe.php';
                        }elseif($_GET['p']=="fonction"){
                            include_once './pages/Fonction.php';
                        }elseif($_GET['p']=="pointage"){
                            include_once './pages/Pointage.php';
                        }elseif($_GET['p']=="historique"){
                            include_once './pages/historique.php';
                        }elseif($_GET['p']=="filiere"){
                            include_once './pages/Filiere.php';
                        }elseif($_GET['p']=="classes"){
                            include_once './pages/Classes.php';
                        }elseif($_GET['p']=="statistiques"){
                            include_once './pages/statistiques.php';
                        
                        }elseif ($_GET['p']=="Search"){
                        include_once './pages/Search.php';}
                    }else{
                        include_once './pages/statistiques.php';
                    }
                ?>
            </div>

        </main>
        <!-- page-content" -->
    </div>
    <!-- page-wrapper -->
    <script src="script/index.js"></script>

</body>
</html>
<?php
    } else {
        include_once './pages/HistoriqueSimple.php';
    }
} else {
    header('Location:./login.php');
}
?>