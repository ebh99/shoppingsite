<?php include "../include/header.php";
        date_default_timezone_set('Asia/Seoul');
        $currdt = date("Y-m-d H:i:s"); 
		$bno = $_GET['pno']; /* bno함수에 pno값을 받아와 넣음*/
        $userid="";
        $userip = $_SERVER['REMOTE_ADDR'];

        if(isset($_SESSION['userid'])){
            $userid = $_SESSION['userid'];
        }else{
            $userid = "guest";
        }

        $sql = mq("insert into recent(pro_no,ip_addr,userid,creation_date) values('".$bno."', '".$userip."', '".$userid."', '".$currdt."')");
		$sql2 = mq("select * from product pr inner join catagory ca on pr.pro_class = ca.title where pro_num='".$bno."'"); /* 받아온 idx값을 선택 */
		$product = $sql2->fetch_array();

?>


<?php include "../include/footer.php"; ?>