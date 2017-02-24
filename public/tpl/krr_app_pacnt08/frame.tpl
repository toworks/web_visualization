<!DOCTYPE HTML SYSTEM>
<HTML>
	<HEAD>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--		<meta charset="windows-1251">-->
<!--		<META content="IE=5.0000" http-equiv="X-UA-Compatible">-->
<!--		<META http-equiv="Content-Type" content="text/html; charset=windows-1251">-->
<!--		<META name="GENERATOR" content="MSHTML 11.00.9600.18525">-->
<!--			<LINK href="styles/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
<!--			<LINK href="styles/lightbox/css/lightbox.min.css" rel="stylesheet"> 	 -->
<!--			<LINK href="styles/openwebicons/css/openwebicons-bootstrap.css" rel="stylesheet">-->
<!--			<LINK href="styles/font-awesome/css/font-awesome.min.css" rel="stylesheet">	 -->
	</HEAD>
<body>
<!--===========================================================================================================-->
	<style type="text/css">

		html body{
			background-color: rgb(221, 230, 241);
			height: 100%;
			width: 100%;
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;}		

	
		#rightside{z-index: 100}
		#fr2{z-index: 5}
		#fr3{z-index: 4}
		#fr4{z-index: 3}
		#fr5{z-index: 2}
		#fr6{z-index: 1}
		
		body{
			overflow-x:hidden;
			overflow-y:hidden;
		}
		
		#top { 
/*			background-color: rgb(221, 230, 241);*/
			height: 4%;
			width: 25%; 
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;
			float: left;
		}

		#topbutton { 

			height: 4%;
			width: 70%; 
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;
			float: right;
			font-family: sans-serif;
		}

		#navigation { 
/*			background-color: rgb(221, 230, 241);*/
			height: 96%;
			width:  30%; 
			clear: left; 
/*			clear: right;*/
			float: left;
/*			z-index: 1*/
		}

		#content {  
/*			background-color: rgb(221, 230, 241);*/
			height: 96%;
			width:  70%;
/*			clear: right;*/
			float:  left;
/*			z-index: 2*/
		}
		#footer { height: 5%;   width:100%; clear: left; clear: right; float: right;}
		#target { height: 100%; width:100%; clear: left; border: 0}
		iframe{height: 100%; width:100%; 
			position: absolute;
		}
		.topBtnGroup
		{
			align-content: center;
		}
	</style>
<!--
 <LINK href="visalization_files/tree_files/bootstrap.min.css" rel="stylesheet">
 <LINK href="start_files/lightbox.min.css" rel="stylesheet"> 	 
 <LINK href="visalization_files/tree_files/openwebicons-bootstrap.css" rel="stylesheet">
 <LINK href="visalization_files/tree_files/font-awesome.min.css" rel="stylesheet">
-->

<!--===========================================================================================================-->
<script type="text/javascript">
	var flag=1;

	function hidepanel()
	{

		a = document.getElementById( "navigation" );
		b = document.getElementById( "content" );

		if(flag!=0)
			{
			a.style.width = "0%"; 
			b.style.width = "100%";	 
			flag=0;		
			a.style.visibility = "hidden";
			}
		
		else if(flag==0){

			 a.style.width = "30%";
			 a.style.visibility = "visible";
			 b.style.width = "70%";
			  flag=1;	
			 }
		
	}
</script>
<script>
	function urlRightside(n)
		{
			
			if (flag!=0) hidepanel();
			var frameR = document.getElementById(n);
			var url;
			
		if (frameR.style.zIndex!=100)
		{
			var divcont = document.getElementById("content");
			var contchild = divcont.children;
			var style;
				
			for (var i = 0; i < contchild.length; i++) 
			{
				style = window.getComputedStyle(contchild[i], null);
				if(style.zIndex=="100")
				{
					contchild[i].style.zIndex=frameR.style.zIndex;//-"+style.zIndex);
					frameR.style.visibility = "hidden";
				}
			}
			
			 frameR.style.zIndex=100;
			 
			
		}
			if (frameR.style.visibility=="hidden") frameR.style.visibility="visible";
			
			
			if(n=="fr2")
			{url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fDashboard_O2&rs:Command=Render";}
			if(n=="fr3"){url="http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fManagers%%2fBF_Cold+blast+flow&amp;rs%%3aCommand=Render";}
			if(n=="fr4"){url="http://krr-fas41/dpa_reports/(S(mhmynjknboyqu1ohainnp0eq))/Account/ed/DefaultReport.aspx?Owner=27";}
			if(n=="fr5"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fWater_supply_tables_for_ED&rs:Command=Render";}
			if(n=="fr6"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fSteelmaking%%2fOxygen_BOF1-6&rs:Command=Render";}
			if(n=="fr7"){url="http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fLindeGas_online&rs%%3aCommand=Render";}
			if(n=="fr8") {url="http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fLindeGas_current&rs%%3aCommand=Render";}			

				
			if (frameR.src!=url) {frameR.src=url;}
			//alert(url);
			
		}
</script>
<script>	
function test()
	{
		//var elem1 = document.getElementById(elemId);
		//var style = window.getComputedStyle(elem1, null);
		   
		
		var divcont = document.getElementById("content");
		var contchild = divcont.children;
				
		var style;
				
		for (var i = 0; i < contchild.length; i++) 
		{
			
			style = window.getComputedStyle(contchild[i], null);
			//var divcont = document.getElementById("content");
			//curZindex = 
			if(style.zIndex=="100")
			{
				console.log("id - "+contchild[i].id+" zindex -"+style.zIndex);
			
			}

    	}
		
		
//  }
//		var elem2 = document.getElementById(elemId);
		
		
/*		alert("test");
		fr_right = document.getElementById("rightside");
		fr_right.style.visibility = "hidden";
		fr_right.style.zIndex = "0";
//		alert(fr_right.style.visibility);
//		fr_right.style.visibility = "visible";
//		alert(fr_right.style.visibility);
		
		//bodyteg=document.getElementsByTagName("body");
		//alert(bodyteg.style.overflowY);
		//bodyteg.style.overflowY= "hidden";
		//alert(document.getElementsByTagName(body).style.overflowY);
		
		fr_dashboard = document.getElementById("Dashboard");
		//alert("1 "+fr_dashboard.style.visibility);
		fr_dashboard.style.visibility = "visible";
		
		alert("top "+fr_dashboard.style.top +"zindex "+fr_dashboard.style.zIndex);
		//fr_dashboard.style.top="0";
		fr_dashboard.style.zIndex ="2";
		alert("top "+fr_dashboard.style.top +"zindex "+fr_dashboard.style.zIndex);
		//alert("2 "+fr_dashboard.style.visibility);
	
*/	
	
	
	
	}
	 
</script> 
	 
<div id="top"> 
	
<!--<input type="button" class="glyphicon glyphicon-menu-hamburger btn btn-default" onclick="hidepanel();">-->
	
<!--		<button type="button" onclick="hidepanel();" class="glyphicon glyphicon-menu-hamburger"> Menu </button>-->
		<button class ="glyphicon glyphicon-menu-hamburger btn btn-default" type="button" onclick="hidepanel();"> <b>Menu</b> </button>
	
</div>

<div id="topbutton" class="text-center">
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr2');" > <b>O2</b> </button>
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr3');" ><b>Дутье</b></button>
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr4');" ><b>Параметры ПГЦ</b></button>
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr5');" ><b>Вода</b></button>
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr6');"><b>О2 КЦ</b></button>
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr7');"><b>Линде графики</b></button>	 
	<button class ="btn btn-default" type="button" onclick="urlRightside('fr8');"><b>Линде текущие</b></button>
	<a class="btn btn-default" onclick="test();">тест</a>
	
</div> 
	 
<div id="navigation" style="" class="">
<!--<a class="btn btn-primary btn-sm" href="" target="rightside" >Menu</a>	-->

<iframe name="leftside" src="visalization_files/tree.htm"></iframe>			
</div>
	 
<div id="content"  style="background-color: white;">
<iframe  id="rightside" name="rightside" src="visalization_files/start.htm" style="" seamless></iframe>
<iframe  id="fr2" name="Dashboard" style="visibility: hidden;" src=""></iframe>
<iframe  id="fr3" name="Cold" style="visibility: hidden" src=""></iframe>
<iframe  id="fr4" name="Parametrs" style="visibility: hidden" src=""></iframe>	
<iframe  id="fr5" name="Water" style="visibility: hidden" src=""></iframe>
<iframe  id="fr6" name="Oxygen" style="visibility: hidden" src=""></iframe>
<iframe  id="fr7" name="LindeOnline" style="visibility: hidden" src=""></iframe>
<iframe  id="fr8" name="LindeCur" style="visibility: hidden" src=""></iframe>	

</div>

<!--
	 <div id="footer"><p align="center">Footer</p>
	</div>
-->

<!--===========================================================================================================-->
<!--<SCRIPT src="visalization_files/tree_files/jquery-1.12.0.min.js"></SCRIPT>						-->
<!--<SCRIPT src="visalization_files/tree_files/bootstrap.min.js"></SCRIPT>-->
<!--<SCRIPT src="start_files/ie10-viewport-bug-workaround.js"></SCRIPT>-->
<!--<SCRIPT src="start_files/lightbox.min.js"></SCRIPT>	-->
<!--===========================================================================================================-->
<!--<SCRIPT src="js/jquery-1.12.0.min.js"></SCRIPT>						-->
<!--<SCRIPT src="styles/bootstrap/js/bootstrap.min.js"></SCRIPT>						-->
<!--<SCRIPT src="styles/lightbox/js/lightbox.min.js"></SCRIPT>-->
</body>		
</HTML>
