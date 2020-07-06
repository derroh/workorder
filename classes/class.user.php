<?php

include('class.password.php');

class User extends Password{

    private $db;

	function __construct($db){
		parent::__construct();

		$this->_db = $db;
	}

	public function is_logged_in(){
		if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
			return true;
		}
	}
  public function get_user(){
			return $_SESSION['user'];
	}

	private function get_user_hash($user_email){

		try {

			$stmt = $this->_db->prepare('SELECT Password FROM profilemaster WHERE Email = :Email');
			$stmt->execute(array('Email' => $user_email));

			$row = $stmt->fetch();
			return $row['Password'];

		} catch(PDOException $e) {
		    echo '	<div class="alert alert-danger">'.$e->getMessage().'</div>';
		}
	}

	public function login($user_email,$password){

		$hashed = $this->get_user_hash($user_email);

		if($this->password_verify($password,$hashed) == 1){

		    $_SESSION['loggedin'] = true;
		    return true;
		}
	}

	public function logout(){
		session_destroy();
	}
  public function GetUser_Info($Id)
  {
    $query = "select `profilemaster`.`Id`,
                 `profilemaster`.`Name`,
                 `profilemaster`.`Email`,
                 `profilemaster`.`Username`,
                 `profilemaster`.`PhoneNumber`,
                 `profilemaster`.`Password`,
                 `profilemaster`.`Role`,
                 `profilemaster`.`Status`
            from (`profilemaster` `profilemaster`)
           where (`profilemaster`.`Id` = :Id)
          ";
    $stmt = $this->_db->prepare($query);
    $stmt->execute(array('Id' => $Id));

    $jobData = array();
    $row = $stmt->fetchAll();
    $jobData = $row;

    $this->data [] = $jobData;

    return $jobData;
  }
  public function GetUserInfo($Id)
  {
    $query = "select `profilemaster`.`Id`,
                 `profilemaster`.`Name`,
                 `profilemaster`.`Email`,
                 `profilemaster`.`Username`,
                 `profilemaster`.`PhoneNumber`,
                 `profilemaster`.`Password`,
                 `profilemaster`.`Role`,
                 `profilemaster`.`Status`,
                 `worker_skill`.`Skills`
            from (`profilemaster` `profilemaster`
            inner join `worker_skill` `worker_skill`
                 on (`worker_skill`.`WorkerId` = `profilemaster`.`Id`))
           where (`profilemaster`.`Id` = :Id)
          ";
    $stmt = $this->_db->prepare($query);
    $stmt->execute(array('Id' => $Id));

    $jobData = array();
    $row = $stmt->fetchAll();
    $jobData = $row;

    $this->data [] = $jobData;

    return $jobData;
  }

  //// Send Email
  public function send_mail($email,$message,$subject)
  {
    require_once('mailer/class.phpmailer.php');

    $mail = new PHPMailer();
    $mail->IsSMTP();
    $mail->SMTPDebug  = 0;
    $mail->SMTPAuth   = true;
    $mail->SMTPSecure = "ssl";
    $mail->Host       = "smtp.gmail.com";
    $mail->Port       = 465;
    $mail->AddAddress($email);
    $mail->Username="youremail@gmail.com";
    $mail->Password="eegrnnxbbvghjmxu";
    $mail->SetFrom('youremail@gmail.com','Keysight Technologies');
    $mail->AddReplyTo("youremail@gmail.com","Keysight Technologies");
    $mail->Subject    = $subject;
    $mail->MsgHTML($message);
    $mail->Send();
  }

  public function getLastUserID()
  {
    try {

			$stmt = $this->_db->prepare('SELECT MAX(Id) FROM profilemaster ');
			$stmt->execute();
      $row = $stmt->fetch();

			return $row['MAX(Id)'];

		} catch(PDOException $e) {
		    echo '<p class="error">'.$e->getMessage().'</p>';
		}
  }

  public function EmailExists($user_email)
  {
    try {

			$stmt = $this->_db->prepare('SELECT Password FROM profilemaster WHERE Email = :user_email');
			$stmt->execute(array('user_email' => $user_email));
      $row = $stmt->fetch();

			return $stmt->rowCount();

		} catch(PDOException $e) {
		    echo '<p class="error">'.$e->getMessage().'</p>';
		}
  }
  public function UsernameExists($Username)
  {
    try {

      $stmt = $this->_db->prepare('SELECT Password FROM profilemaster WHERE Username = :Username');
      $stmt->execute(array('Username' => $Username));
      $row = $stmt->fetch();

      return $stmt->rowCount();

    } catch(PDOException $e) {
        echo '<p class="error">'.$e->getMessage().'</p>';
    }
  }
  
  public function check_if_Username_exists($user_name)
  {
    try {

			$stmt = $this->_db->prepare('SELECT Password FROM profilemaster WHERE Username = :user_name');
			$stmt->execute(array('user_name' => $user_name));
      $row = $stmt->fetch();

			return $stmt->rowCount();

		} catch(PDOException $e) {
		    echo '<p class="error">'.$e->getMessage().'</p>';
		}
  }





  public function countUnapprovedRequests()
  {
    $status = "P";
    try {

			$stmt = $this->_db->prepare('SELECT COUNT(Status) as SignUpRequests FROM profilemaster WHERE Status =:Status');
			$stmt->execute(array('Status' => $status));
      $row = $stmt->fetch();

			return $row['SignUpRequests'];
      //	return 0;
		} catch(PDOException $e) {
		    echo '<p class="error">'.$e->getMessage().'</p>';
		}
  }
  



public function getUsersFullName($payroll)
{
  try {

    $stmt = $this->_db->prepare('SELECT Name FROM profilemaster WHERE Id = :Id');
    $stmt->execute(array('Id' => $payroll));
    $row = $stmt->fetch();

    return $row['Name'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function paginate($item_per_page, $current_page, $total_records, $total_pages, $page_url)
{

    $pagination = '';
    if($total_pages > 0 && $total_pages != 1 && $current_page <= $total_pages)
    { //verify total pages and current page number
        $pagination .= '<ul class="pagination middle">';
        $right_links    = $current_page + 3;
        $previous       = $current_page - 3; //previous link
        $next           = $current_page + 1; //next link
        $first_link     = true; //boolean var to decide our first link

        if($current_page > 1){
            $previous_link = $current_page - 1;

            $pagination .= '<li><a href="'.$page_url.'?page=1" title="First"><i class="ace-icon fa fa-step-backward middle"></i></a></li>'; //first link


            $pagination .= '<li><a href="'.$page_url.'?page='.$previous_link.'" title="Previous"><span><i class="ace-icon fa fa-caret-left bigger-140 middle"></i></span></a></li>'; //previous link

                $pagination .= '<li><span><input value="'.$current_page.'" maxlength="3" type="text" /></span></li>';
                if($current_page == $total_pages){
                  $pagination .= '<li class="disabled"><span><i class="ace-icon fa fa-caret-right bigger-140 middle"></i></span></li>'; //previous link
                  $pagination .= '<li class="disabled"><span><i class="ace-icon fa fa-step-forward middle"></i></span></li>';
                }

            $first_link = false; //set first link to false
        }

        if($current_page < $total_pages){
                $next_link = $current_page + 1;

                if($current_page == 1){
                  $pagination .= '<li class="disabled"><span><i class="ace-icon fa fa-step-backward middle"></i></span></li>';
                  $pagination .= '<li class="disabled"><span><i class="ace-icon fa fa-caret-left bigger-140 middle"></i></span></li>';
                  $pagination .= '<li><span><input value="'.$current_page.'" maxlength="3" type="text" /></span></li>';
                }

                $pagination .= '<li><a href="'.$page_url.'?page='.$next_link.'" title="Next"><span><i class="ace-icon fa fa-caret-right bigger-140 middle"></i></span></a></li>'; //previous link
                $pagination .= '<li><a href="'.$page_url.'?page='.$total_pages.'" title="Last"><i class="ace-icon fa fa-step-forward middle"></i></a></li>'; //first link

        }

        $pagination .= '</ul>';
    }
    return $pagination; //return pagination links
  }
  public function timeago($date) {
  	   $timestamp = strtotime($date);

  	   $strTime = array("second", "minute", "hour", "day", "month", "year");
  	   $length = array("60","60","24","30","12","10");

  	   $currentTime = time();
  	   if($currentTime >= $timestamp) {
  			$diff     = time()- $timestamp;
  			for($i = 0; $diff >= $length[$i] && $i < count($length)-1; $i++) {
  			$diff = $diff / $length[$i];
  			}

  			$diff = round($diff);
  			return $diff . " " . $strTime[$i] . "(s) ago ";
  	   }
  	}

    public function countItemsIncharge($PayrollNumber) {
      try {

        $stmt = $this->_db->prepare("SELECT COUNT(SerialNumber) as Items FROM assigneditems WHERE AssignedUser = :AssignedUser");
        $stmt->execute(array('AssignedUser' => $PayrollNumber));
        $row = $stmt->fetch();

       return $row['Items'];

      } catch(PDOException $e) {
          echo '<p class="error">'.$e->getMessage().'</p>';
      }
  }
  public function countTotalAssets($Year) {
    try {

      $stmt = $this->_db->prepare("SELECT COUNT(DISTINCT AssetNumber, AssetSerial) Total FROM new_inventory WHERE DateAdded = :DateAdded AND Status !='Untraceable'");
      $stmt->execute(array('DateAdded' => $Year));
      $row = $stmt->fetch();

     return $row['Total'];

    } catch(PDOException $e) {
        echo '<p class="error">'.$e->getMessage().'</p>';
    }
}
public function countTotalUntraceableAssets($Year) {
  try {

    $stmt = $this->_db->prepare("SELECT COUNT(DISTINCT AssetNumber, AssetSerial) Total FROM new_inventory WHERE DateAdded = :DateAdded AND Status ='Untraceable'");
    $stmt->execute(array('DateAdded' => $Year));
    $row = $stmt->fetch();

   return $row['Total'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function countTotalStoreAssets($Year) {
  try {

    $stmt = $this->_db->prepare("SELECT COUNT(DISTINCT AssetNumber, AssetSerial) Total FROM new_inventory WHERE DateAdded = :DateAdded AND Status ='In storage'");
    $stmt->execute(array('DateAdded' => $Year));
    $row = $stmt->fetch();

   return $row['Total'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function paginateSearchResults($item_per_page, $current_page, $total_records, $total_pages, $page_url)
{

  $pagination = '';
  if($total_pages > 0 && $total_pages != 1 && $current_page <= $total_pages)
  { //verify total pages and current page number
      $pagination .= '<ul class="pagination">';
      $right_links    = $current_page + 3;
      $previous       = $current_page - 3; //previous link
      $next           = $current_page + 1; //next link
      $first_link     = true; //boolean var to decide our first link

      if($current_page > 1){
          $previous_link = $current_page - 1;

        $pagination .= '<li><a href="'.$page_url.'?page='.$previous_link.'" ><i class="ace-icon fa fa-angle-double-left"></i></a></li>'; //previous link
        if($current_page==$total_pages){
          $pagination .= '<li><a href="'.$page_url.'?page=1">1</a></li>'; //first link
        }
      //    $pagination .= '<li><a href="'.$page_url.'?page='.$previous_link.'" title="Previous">&lt;</a></li>'; //previous link
              for($i = ($current_page-2); $i < $current_page; $i++){ //Create left-hand side links
                  if($i > 0){
                      $pagination .= '<li><a href="'.$page_url.'?page='.$i.'">'.$i.'</a></li>';
                  }
              }
          $first_link = false; //set first link to false
      }
      if($current_page == 1){
        //  $previous_link = $current_page - 1;
        $pagination .= '<li class="disabled"><a href="#"><i class="ace-icon fa fa-angle-double-left"></i></a></li>'; //previous link
      //    $pagination .= '<li><a href="'.$page_url.'?page='.$previous_link.'" title="Previous">&lt;</a></li>'; //previous link
              for($i = ($current_page-2); $i < $current_page; $i++){ //Create left-hand side links
                  if($i > 0){
                      $pagination .= '<li><a href="'.$page_url.'?page='.$i.'">'.$i.'</a></li>';
                  }
              }
          $first_link = false; //set first link to false
      }

      if($first_link){ //if current active page is first link
          $pagination .= '<li class="active"><a>'.$current_page.'</a></li>';
      }elseif($current_page == $total_pages){ //if it's the last active link
          $pagination .= '<li class="active"><a>'.$current_page.'</a></li>';
      }else{ //regular current link
          $pagination .= '<li class="active"><a>'.$current_page.'</a></li>';
      }

      for($i = $current_page+1; $i < $total_pages+1 ; $i++){ //create right-hand side links
          if($i<=$total_pages){
              $pagination .= '<li><a href="'.$page_url.'?page='.$i.'">'.$i.'</a></li>';
          }
      }
      if($current_page < $total_pages){
              $next_link = $current_page + 1;
          //    $pagination .= '<li><a href="'.$page_url.'?page='.$next_link.'" title="Next">&gt;</a></li>'; //next link
              $pagination .= '<li><a href="'.$page_url.'?page='.$next_link.'"><i class="ace-icon fa fa-angle-double-right"></i></a></li>'; //next link
            //  $pagination .= '<li class="last"><a href="'.$page_url.'?page='.$total_pages.'" title="Last">&raquo;</a></li>'; //last link
      }
      if($current_page == $total_pages){

          //    $pagination .= '<li><a href="'.$page_url.'?page='.$next_link.'" title="Next">&gt;</a></li>'; //next link
              $pagination .= '<li class="disabled"><a href="#"><i class="ace-icon fa fa-angle-double-right"></i></a></li>'; //next link
            //  $pagination .= '<li class="last"><a href="'.$page_url.'?page='.$total_pages.'" title="Last">&raquo;</a></li>'; //last link
      }

      $pagination .= '</ul>';
  }
  return $pagination; //return pagination links
}
public function countTotalAssetByType($Year, $AssetType) {
  try {

    $stmt = $this->_db->prepare("SELECT COUNT(DISTINCT AssetNumber, AssetSerial) Total FROM new_inventory WHERE DateAdded = :DateAdded AND AssetType =:AssetType");
    $stmt->execute(array('DateAdded' => $Year, 'AssetType' => $AssetType));
    $row = $stmt->fetch();

   return $row['Total'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function countTotalInStore($Year, $Type) {
  try {

    $stmt = $this->_db->prepare("SELECT TotalInStore FROM inventory_summary WHERE InventoryYear = :InventoryYear AND AssetType = :AssetType");
    $stmt->execute(array('InventoryYear' => $Year, 'AssetType' => $Type));
    $row = $stmt->fetch();

   return $row['TotalInStore'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function countTotal_Untraceable($Year, $Type) {
  try {

    $stmt = $this->_db->prepare("SELECT TotalUntraceable FROM inventory_summary WHERE InventoryYear = :InventoryYear AND AssetType = :AssetType");
    $stmt->execute(array('InventoryYear' => $Year, 'AssetType' => $Type));
    $row = $stmt->fetch();

   return $row['TotalUntraceable'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function getMaxYear() {
  try {

    $stmt = $this->_db->prepare("SELECT MAX(DateAdded) as yr FROM new_inventory");
    $stmt->execute();
    $row = $stmt->fetch();

   return $row['yr'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}

public function getPurchasePrice($id) {
  try {

    $stmt = $this->_db->prepare("SELECT PurchasePrice FROM new_item WHERE Id = :Id");
    $stmt->execute(array('Id' => $id));
    $row = $stmt->fetch();

   return $row['PurchasePrice'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function getSalvageValue($id) {
  try {

    $stmt = $this->_db->prepare("SELECT ScrapValue FROM new_item WHERE Id = :Id");
    $stmt->execute(array('Id' => $id));
    $row = $stmt->fetch();

   return $row['ScrapValue'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function getAssetLife($id) {
  try {

    $stmt = $this->_db->prepare("SELECT ExpectedAssetLife FROM new_item WHERE Id = :Id");
    $stmt->execute(array('Id' => $id));
    $row = $stmt->fetch();

   return $row['ExpectedAssetLife'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function getCustodian($SerialNum) {
  try {

    $stmt = $this->_db->prepare("SELECT AssignedUser FROM assigneditems WHERE SerialNumber = :Id");
    $stmt->execute(array('Id' => $SerialNum));
    $row = $stmt->fetch();

   return $row['AssignedUser'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
}
public function getLicenceName($licenceId){

  try {

    $stmt = $this->_db->prepare('SELECT Name FROM new_licence WHERE Id = :Id');
    $stmt->execute(array('Id' => $licenceId));
    $row = $stmt->fetch();

    return $row['Name'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function checkIfAssigned($AssetId){

  try {

    $stmt = $this->_db->prepare('SELECT * FROM assigneditems WHERE SerialNumber = :SerialNumber');
    $stmt->execute(array('SerialNumber' => $AssetId));
    $row = $stmt->fetch();

    return $row['SerialNumber'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function getUserOffice($UserId){

  try {

    $stmt = $this->_db->prepare('SELECT Office FROM profilemaster WHERE Id = :id');
    $stmt->execute(array('id' => $UserId));
    $row = $stmt->fetch();

    return $row['Office'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function getUserUsername($UserId){

  try {

    $stmt = $this->_db->prepare('SELECT Username FROM profilemaster WHERE Id = :id');
    $stmt->execute(array('id' => $UserId));
    $row = $stmt->fetch();

    return $row['Username'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function getUserDepartment($UserId){

  try {

    $stmt = $this->_db->prepare('SELECT Department FROM profilemaster WHERE Id = :id');
    $stmt->execute(array('id' => $UserId));
    $row = $stmt->fetch();

    return $row['Department'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function getAssignedUserName($UserId){

  try {

    $stmt = $this->_db->prepare('SELECT Name FROM profilemaster WHERE Id = :id');
    $stmt->execute(array('id' => $UserId));
    $row = $stmt->fetch();

    return $row['Name'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function getAssetName($SerialAssetNumber){

  try {

    $stmt = $this->_db->prepare("SELECT  AssetName FROM new_item WHERE SerialNumber = '$SerialAssetNumber' OR AssetNumber = '$SerialAssetNumber'");
    $stmt->execute();
    $row = $stmt->fetch();

    return $row['AssetName'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}
public function getAssetNumber($Id){

  try {

    $stmt = $this->_db->prepare("SELECT AssetNumber FROM new_item WHERE Id = '$Id'");
    $stmt->execute();
    $row = $stmt->fetch();

    return $row['AssetNumber'];

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }
//  return true;
}

public function getLastRecord($Table){

  try {

    $stmt = $this->_db->prepare("SELECT COALESCE(MAX(Id),0) as LastID  FROM $Table ");
    $stmt->execute();
    $row = $stmt->fetch();

    return $row['LastID']+1;

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }

}
public function sendMessage($To, $message){

  $Opened = "No";
  $Time = date('Y-m-d H:i:s');
  try {

    $stmt = $this->_db->prepare('INSERT INTO private_msg(UserFrom, UserTo, MessageBody, Date, Opened) VALUES (:UserFrom, :UserTo, :MessageBody, :Date, :Opened)') ;
    $stmt->execute(array(
     ':UserFrom' => 'Administrator',
     ':UserTo' => $To,
     ':MessageBody' => $message,
     ':Date' => $Time,
     ':Opened' => $Opened
    ));

  } catch(PDOException $e) {
      echo '<p class="error">'.$e->getMessage().'</p>';
  }

}

///end
}


?>
