<?php
  require('../func/config.php');
  //if not logged in redirect to login page
  if(!$user->is_logged_in()){ header('Location: login'); }

  if ($_REQUEST['upload']) {

    $pid = $_REQUEST['upload'];
     
      //$file = $_FILES["file"]["tmp_name"];

      $file_open = fopen(__DIR__ . '../../uploads/'.$pid.'', "r");

      fgetcsv($file_open); 

     // $file_open = fopen($file,"r");
    // while(($csv = fgetcsv($file_open, 1000, ",")) !== false) 
      while( $csv = fgetcsv( $file_open) ) 
      { 
        $Model = $csv[0]; 
        $Serial = $csv[1]; 
        
        $SR = $csv[2]; 
        $ServiceOderNumber = $csv[3]; 

       // echo $ServiceOderNumber;
        $TypeClass = $csv[4];
        
        $ReceivedDate = $csv[5];

       
        $PartCost = $csv[6];
        $LaborCost = $csv[7];
        $TotalCost = $csv[8];
        $CustomerName = $csv[9]; 
        $CustomerCountry = $csv[10]; 
        $CustomerCity = $csv[11];
        $CustomerZipCode = $csv[12];
        $ProductLine = $csv[13];
        $RepairOffice = $csv[14];
        $ReportDate = $csv[15];

        
        $TurnaroundTime = $csv[16]; 
        $FailAge = $csv[17]; 
        $FailAgeInYears = $csv[18];
        $OPT_CDS = $csv[19];
        $ActivityBillType = $csv[20];
        $ActivityType = $csv[21];
        $ReportYearMonth = $csv[22];
       // 
        $Month = $csv[23];
        

        $stmt = $db->prepare("INSERT INTO `analysis_table`(`Model`, `Serial#`, `SR#`, `Service Oder Number`, `Type/Class`, `Received Date`, `Part Cost`, `Labor Cost`, `Total Cost`, `Customer Name`, `Customer Country`, `Customer City`, `Customer Zip Code`, `Product Line`, `Repair Office`, `ReportDate`, `Turnaround Time`, `Fail Age`, `Fail Age In Years`, `OPT_CDS`, `Activity Bill Type`, `Activity Type`, `Report Year Month`, `Month`) VALUES 
        (:Model, :Serial, :SR, :ServiceOderNumber, :TypeClass, :ReceivedDate, :PartCost, :LaborCost, :TotalCost,
        :CustomerName, :CustomerCountry, :CustomerCity, :CustomerZipCode, :ProductLine, :RepairOffice,
        :ReportDate, :TurnaroundTime, :FailAge, :FailAgeInYears, :OPT_CDS, :ActivityBillType, :ActivityType, 
        :ReportYearMonth, :Month)");

        $stmt->bindparam(':Model', $Model);
        $stmt->bindparam(':Serial', $Serial);
        $stmt->bindparam(':SR', $SR);
        $stmt->bindparam(':ServiceOderNumber', $ServiceOderNumber);
        $stmt->bindparam(':TypeClass', $TypeClass);
        $stmt->bindparam(':ReceivedDate', $ReceivedDate);
        $stmt->bindparam(':PartCost', $PartCost);
        $stmt->bindparam(':LaborCost', $LaborCost);
        $stmt->bindparam(':TotalCost', $TotalCost);
        $stmt->bindparam(':CustomerName', $CustomerName);
        $stmt->bindparam(':CustomerCountry', $CustomerCountry);
        $stmt->bindparam(':CustomerCity', $CustomerCity);
        $stmt->bindparam(':CustomerZipCode', $CustomerZipCode);
        $stmt->bindparam(':ProductLine', $ProductLine);
        $stmt->bindparam(':RepairOffice', $RepairOffice);
        $stmt->bindparam(':ReportDate', $ReportDate);        
        $stmt->bindparam(':TurnaroundTime', $TurnaroundTime);
        $stmt->bindparam(':FailAge', $FailAge);
        $stmt->bindparam(':FailAgeInYears', $FailAgeInYears);
        $stmt->bindparam(':OPT_CDS', $OPT_CDS);
        $stmt->bindparam(':ActivityBillType', $ActivityBillType);
        $stmt->bindparam(':ActivityType', $ActivityType);
        $stmt->bindparam(':ReportYearMonth', $ReportYearMonth);
        $stmt->bindparam(':Month', $Month);
        $stmt->execute();
      }


    echo "CSV Imported Successfully";

}

  ?>
