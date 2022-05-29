<?php
	include "./include/db.php";
?>
<!DOCTYPE html>
<head>
	<meta charset="utf-8" />
	<title>청운 쇼핑</title>
	<link rel="stylesheet" href="./css/common.css" />
	<link rel="stylesheet" href="./css/sub.css" />
</head>
<body>
<header>
	<div id="header_in">
		<div id="logo">
			<a href="/"><img src="./imgs/logo.png" alt="logo" title="logo" /></a>
		</div>
		<form action="" method="get">
			<div id="search_bar">
				<input type="text" />
			</div>
			<div id="search_bt">
				<img src="./imgs/search_bt.png" alt="search_bt" title="search_bt" />
			</div>
		</form>
		<div id="header_in2">
			<div id="service_menu">
				<ul>
					<li>로그인</li>
					<li>회원가입</li>
				</ul>
			</div>
			<nav>
				<ul>
					<li><a href="">내 정보</a></li>
					<li><a href="">주문조회</a></li>
					<li><a href="">장바구니</a></li>
					<li><a href="">고객센터</a></li>
					<li><a href="">로그아웃</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>