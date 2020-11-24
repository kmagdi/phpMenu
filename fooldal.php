  <style>th{position: sticky;top: 0;}</style>
<?php
    include "config.php";
    $sql="select * from filmek order by cim";
    $stmt=$db->query($sql);
    $tbl="";
    while($row=$stmt->fetch())
        $tbl.="<tr><td>{$row['id']}</td><td>{$row['cim']}</td><td>{$row['rendezo']}</td><td>{$row['gyarto']}</td><td>{$row['ev']}</td><td>{$row['hossz']}</td></tr>";
?>
<div><?=isset($_SESSION['msg']) ? $_SESSION['msg'] : "" ?></div>
<div class="table" style="height: 500px;overflow: scroll;">      
    <table class="table-sm table-striped ">
        <thead class="thead-dark" >
            <th>Azonosító</th>
            <th>Cím</th>
            <th>Rendező</th>
            <th>Gyártó</th>
            <th>Év</th>
            <th>Hossz</th>
        </thead>
        <tbody><?=$tbl?></tbody>
    </table>
</div>

