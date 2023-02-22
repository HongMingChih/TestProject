﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>販賣機</title>
	<style type="text/css">
		.page {
			display:inline-block;
			padding-left: 10px;
		}
	</style>
	<script type="text/javascript">

	</script>
</head>

<body align="center">
<table width="1000" height="400" align="center">
	<tr>
		<td colspan="2" align="right">
			<form action="FrontendAction.do" method="get">
				<input type="hidden" name="action" value="searchGoods"/>
				<input type="hidden" name="pageNo" value="1"/>
				<input type="text" name="searchKeyword"/>
				<input type="submit" value="商品查詢"/>
			</form>
		</td>
	</tr>
	<tr>
		<form action="FrontendAction.do" method="post">
		<input type="hidden" name="customerID" value="A124243295"/>
		<td width="400" height="200" align="center">		
			<img border="0" src="DrinksImage/coffee.jpg" width="200" height="200" >			
			<h1>歡迎光臨，Tomcat！</h1>		
			<a href="BackendAction.do?action=queryGood" align="left" >後臺頁面</a>&nbsp; &nbsp;
			<a href="LoginAction.do?action=logout" align="left">登出</a>
			<br/><br/>
			<font face="微軟正黑體" size="4" >
				<b>投入:</b>
				<input type="number" name="inputMoney" max="100000" min="0"  size="5" value="0">
				<b>元</b>		
				<b><input type="submit" value="送出">					
				<br/><br/>
			</font>
			<div style="border-width:3px;border-style:dashed;border-color:#FFAC55;
				padding:5px;width:300px;">
				<p style="color: blue;">~~~~~~~ 消費明細 ~~~~~~~</p>
				<p style="margin: 10px;">
					投入金額：150
				</p>
				<p style="margin: 10px;">
					購買金額：111
				</p>
				<p style="margin: 10px;">
					找零金額：39
				</p>
				<p style="margin: 10px;">
					fanta_grape 7 * 3
				</p>
				<p style="margin: 10px;">
					spring_original 20 * 2
				</p>
				<p style="margin: 10px;">
					pepsi_original 25 * 2
				</p>				
			</div>	
		</td>
		<td width="600" height="400">
			<input type="hidden" name="action" value="buyGoods"/>
			<table border="1" style="border-collapse: collapse">
				<tr>
					<td width="300">							
						<font face="微軟正黑體" size="5" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							金桔百香鮮果茶 
						</font>
						<br/>
						<font face="微軟正黑體" size="4" style="color: gray;" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							100 元/罐  
						</font>
						<br/>
						<!-- 各商品圖片 -->
						<img border="0" src="DrinksImage/2020040717580083.jpg" width="150" height="150" >						
						<br/>
						<font face="微軟正黑體" size="3">
							<input type="hidden" name="goodsIDs" value="1">
							<!-- 設定最多不能買大於庫存數量 -->
							購買<input type="number" name="buyQuantitys" min="0" max="30" size="5" value="0">罐	
							<!-- 顯示庫存數量 -->
							<br><p style="color: red;">(庫存 0 罐)</p>
						</font>			
					</td>					
					<td width="300">							
						<font face="微軟正黑體" size="5" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							紅心芭樂檸檬鮮果茶 
						</font>
						<br/>
						<font face="微軟正黑體" size="4" style="color: gray;" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							7 元/罐  
						</font>
						<br/>
						<!-- 各商品圖片 -->
						<img border="0" src="DrinksImage/20200407180213118.jpg" width="150" height="150">						
						<br/>
						<font face="微軟正黑體" size="3">
							<input type="hidden" name="goodsIDs" value="2">
							<!-- 設定最多不能買大於庫存數量 -->
							購買<input type="number" name="buyQuantitys" min="0" max="30" size="5" value="0">罐	
							<!-- 顯示庫存數量 -->
							<br><p style="color: red;">(庫存 0 罐)</p>
						</font>			
					</td>					
					<td width="300">						
					<font face="微軟正黑體" size="5" >
						<!-- 例如: 可口可樂 30元/罐 -->	
						柳橙檸檬蜂蜜水
					</font>
					<br/>
					<font face="微軟正黑體" size="4" style="color: gray;" >
						<!-- 例如: 可口可樂 30元/罐 -->	
						20 元/罐  
					</font>
					<br/>
					<!-- 各商品圖片 -->
					<img border="0" src="DrinksImage/2021110210202761.jpg" width="150" height="150" >					
					<br/>
					<font face="微軟正黑體" size="3">
						<input type="hidden" name="goodsIDs" value="3">
						<!-- 設定最多不能買大於庫存數量 -->
						購買<input type="number" name="buyQuantitys" min="0" max="30" size="5" value="0">罐	
						<!-- 顯示庫存數量 -->
						<br><p style="color: red;">(庫存 0 罐)</p>
					</font>		
					</td>
				</tr>					
				<tr>
					<td width="300">							
						<font face="微軟正黑體" size="5" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							柳橙汁
						</font>
						<br/>
						<font face="微軟正黑體" size="4" style="color: gray;" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							10 元/罐  
						</font>
						<br/>
						<!-- 各商品圖片 -->
						<img border="0" src="DrinksImage/20190201101804603.jpg" width="150" height="150" >						
						<br/>
						<font face="微軟正黑體" size="3">
							<input type="hidden" name="goodsIDs" value="4">
							<!-- 設定最多不能買大於庫存數量 -->
							購買<input type="number" name="buyQuantitys" min="0" max="30" size="5" value="0">罐	
							<!-- 顯示庫存數量 -->
							<br><p style="color: red;">(庫存 0 罐)</p>
						</font>	
					</td>
					<td width="300">							
						<font face="微軟正黑體" size="5" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							葡萄莓果綜合果汁
						</font>
						<br/>
						<font face="微軟正黑體" size="4" style="color: gray;" >
							<!-- 例如: 可口可樂 30元/罐 -->	
							25 元/罐  
						</font>
						<br/>
						<!-- 各商品圖片 -->
						<img border="0" src="DrinksImage/20190201104121279.jpg" width="150" height="150">						
						<br/>
						<font face="微軟正黑體" size="3">
							<input type="hidden" name="goodsIDs" value="5">
							<!-- 設定最多不能買大於庫存數量 -->
							購買<input type="number" name="buyQuantitys" min="0" max="30" size="5" value="0">罐	
							<!-- 顯示庫存數量 -->
							<br><p style="color: red;">(庫存 0 罐)</p>
						</font>	
					</td>
					<td width="300">						
					<font face="微軟正黑體" size="5">
						<!-- 例如: 可口可樂 30元/罐 -->	
						藍莓優格飲
					</font>
					<br/>
					<font face="微軟正黑體" size="4" style="color: gray;" >
						<!-- 例如: 可口可樂 30元/罐 -->	
						25 元/罐  
					</font>
					<br/>				
					<!-- 各商品圖片 -->
					<img border="0" src="DrinksImage/20180131121732511.jpg" width="150" height="150">					
					<br/>
					<font face="微軟正黑體" size="3">
						<input type="hidden" name="goodsIDs" value="6">
						<!-- 設定最多不能買大於庫存數量 -->
						購買<input type="number" name="buyQuantitys" min="0" max="30" size="5" value="0">罐	
						<!-- 顯示庫存數量 -->
						<br><p style="color: red;">(庫存 0 罐)</p>
					</font>
					</td>			
				</tr>			
			</table>
		</td>
		</form>
	</tr>
	<tr>
		<td colspan="2" align="right">				
			<h3 class="page"> <a href="FrontendAction.do?action=searchGoods&pageNo=1"> 上一頁 </a> </h3>
			<h3 class="page"> <a href="FrontendAction.do?action=searchGoods&pageNo=1"> 1 </a> </h3>
			<h3 class="page"> <a href="FrontendAction.do?action=searchGoods&pageNo=2"> 2 </a> </h3>
			<h3 class="page"> <a href="FrontendAction.do?action=searchGoods&pageNo=3"> 3 </a> </h3>  
			<h3 class="page"> <a href="FrontendAction.do?action=searchGoods&pageNo=4"> 下一頁 </a> </h3>
		</td>
	</tr>
</table>


</body>

</html>