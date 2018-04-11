<?php
class Jobs{

    private $db;

	function __construct($db){
		$this->_db = $db;
	}

  public function GetCountImport(){

    try {

      $stmt = $this->_db->prepare('SELECT COUNT(`Id`) as notify FROM `uploaded_files` WHERE `Imported` = 0');
      $stmt->execute();
      $row = $stmt->fetch();

      return $row['notify'];

    } catch(PDOException $e) {
        echo '<p class="error">'.$e->getMessage().'</p>';
    }
  }

  public function Payments()
  {
    $query = "SELECT * FROM `analysis_table`";
            $stmt = $this->_db->prepare($query);
            $stmt->execute();

            $jobData = array();
            $row = $stmt->fetchAll();
            $jobData = $row;

            $this->data [] = $jobData;

            return $jobData;
  }

  

}

?>
