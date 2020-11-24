
<?php
//print_r($_POST);
if(isset($_POST['beir'])){
    include "config.php";
    $cim=$_POST['cim'];
    $rendezo=$_POST['rendezo'];
    $gyarto=$_POST['gyarto'];
    $ev=$_POST['ev'];
    $hossz=$_POST['hossz'];
    $sql="insert into filmek values (null,'{$cim}','{$rendezo}','{$gyarto}',{$ev},{$hossz})";
    //echo $sql;
    $stmt=$db->exec($sql);
    $_SESSION['msg']=$stmt ? "sikeres adatbeiras" : "nem sikerult az adatbeiras";
    header("Location:index.php");
}
   
?>
<div class="col-6">
    <form action="" method="post">
            Cím:<input class="form-control" type="text" name="cim" required>
            Rendező:<input  class="form-control" type="text" name="rendezo" required >
            Gyártó:<input  class="form-control" type="text" name="gyarto" required>
          Gyártás éve:<input class="form-control" type="number" name="ev" required>
          Hossz:<input class="form-control" type="number" name="hossz" required>
          <input class="btn btn-outline-primary" name="beir" type="submit" value="beír">
    </form>
</div>
