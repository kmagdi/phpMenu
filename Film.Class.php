<?php

class Film{
    public $id;
    public $cim;
    public $rendezo;
    public $gyarto;
    public $ev;
    public $hossz;

    public function __construct($id,$cim,$rendezo,$gyarto,$ev,$hossz){
        $this->id=$id;
        $this->cim=$cim;
        $this->rendezo=$rendezo;
        $this->gyarto=$gyarto;
        $this->ev=$ev;
        $this->hossz=$hossz;
        
    }
     public function htmlTableRow(){
        return "<tr><td>{$this->cim}</td><td>{$this->cim}</td><td>{$this->rendezo}</td><td>{$this->gyarto}</td><td>{$this->ev}</td><td>{$this->hossz}</td></tr>";
     }
    
}
?>
