
<?php
     include "config.php";
     $sql="select id,cim from filmek order by cim";
    $stmt=$db->query($sql);
    $str="";
    while($row=$stmt->fetch())
        $str.="<option value='{$row['id']}'>{$row['cim']}</option>";

$cim=$rendezo=$gyarto=$ev=$hossz=$id="";

//ha van kivalasztva, meg kell jeleniteni az adatokat:
if(isset($_POST['filmId']) && $_POST['filmId']!=0){
    $id=$_POST['filmId'];
    $sql="select * from filmek where id={$id}";
    $stmt=$db->query($sql);
    $row=$stmt->fetch();
   // print_r($row);
    $cim=$row['cim'];
    $rendezo=$row['rendezo'];
    $gyarto=$row['gyarto'];
    $ev=$row['ev'];
    $hossz=$row['hossz'];
    $id=$row['id'];
}

//ha meglett nyomva a modositas submit gomb:
if(isset($_POST['modosit'])){
    $id=$_POST['id'];
    $cim=$_POST['cim'];
    $rendezo=$_POST['rendezo'];
    $gyarto=$_POST['gyarto'];
    $ev=$_POST['ev'];
    $hossz=$_POST['hossz'];
    $sql="update filmek set cim='{$cim}', rendezo='{$rendezo}', gyarto='{$gyarto}', ev={$ev}, hossz={$hossz} where id={$id}";
     //echo $sql;
     $stmt=$db->exec($sql);
     $_SESSION['msg']=$stmt ? "sikeres modisitas" : "nem sikerult az adatmodositas";
     header("Location:index.php");
 
}

?>
<div class="col-6">

    <form action="" method="post">
        <select  class= "form-control" name="filmId" >
            <option value="0">válassz ki egy filmet...</option>
            <?=$str?>
        </select>
  
        <input class="btn btn-outline-secondary" type="submit" value="megjelenít">
    </form>

    <form action="" method="post" class="border p-2 m-2">
            <input type="hidden" name="id" value="<?=$id?>">
            Cím:<input class="form-control" type="text" name="cim" required value="<?=$cim?>">
            Rendező:<input  class="form-control" type="text" name="rendezo" required value="<?=$rendezo?>">
            Gyártó:<input  class="form-control" type="text" name="gyarto" required value="<?=$gyarto?>">
          Gyártás éve:<input class="form-control" type="number" name="ev" required value="<?=$ev?>">
          Hossz:<input class="form-control" type="number" name="hossz" required value="<?=$hossz?>">
          <input class="btn btn-outline-primary" name="modosit" type="submit" value="modosit">
    </form>
</div>

