<?php
	session_start();
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css" />
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>   
    <script src="menu.js"></script>
    
    <title>Menuvezerelt PHP program</title>
</head>
<body>
<div class="container  p-2">

    <div class="row shadow p-2 m-1 bg-light rounded justify-content-center">
		<div class="col-md-7"><h1>A nyilvátartásban levő filmek</h1></div>
	</div>     

	<div class="row ">

		<div class="col-2" >
			<div class="shadow p-2 m-1 bg-light rounded">
			 <nav class="nav flex-column" id="linkek"> 
                <a class="nav-item btn-info m-1 p-1 rounded" href="index.php">Filmek listája</a>
                <a class="nav-item btn-info m-1 p-1 rounded" href="index.php?oldal=insert">Új bevezetése</a>
                <a class="nav-item btn-info m-1 p-1 rounded" href="index.php?oldal=update">Módosítás</a>
                <a class="nav-item btn-info m-1 p-1 rounded" href="index.php?oldal=delete">Törlés</a>
				<a class="nav-item btn-info m-1 p-1 rounded" href="index.php?oldal=filter">Szűrés</a>
			</nav> 
			</div>
		</div>
		
		<div class="col-10">
			<div class="shadow p-2 m-1 bg-light rounded h-100">
				<?php
				//tartalom
				if(isset($_GET["oldal"])){
					$oldal = $_GET["oldal"];
					include($oldal.".php");
				  }	
				 else include("fooldal.php");
				?>
			</div>
        </div>
        
	</div>
	                                 

    
</body>
</html>