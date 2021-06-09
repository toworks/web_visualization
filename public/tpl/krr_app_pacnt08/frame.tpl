<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<!-- <LINK href="visalization_files/tree_files/bootstrap.min.css" rel="stylesheet">
<LINK href="start_files/lightbox.min.css" rel="stylesheet"> 	 
<LINK href="visalization_files/tree_files/openwebicons-bootstrap.css" rel="stylesheet">
<LINK href="visalization_files/tree_files/font-awesome.min.css" rel="stylesheet"> -->

<LINK href="|site_preffix|styles/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<LINK href="|site_preffix|styles/lightbox/css/lightbox.min.css" rel="stylesheet"> 	 
<LINK href="|site_preffix|styles/openwebicons/css/openwebicons-bootstrap.css" rel="stylesheet">
<LINK href="|site_preffix|styles/font-awesome/css/font-awesome.min.css" rel="stylesheet">


</head>
<body>
<!--===========================================================================================================-->
	<style>

		html body{
			background-color: rgb(221, 230, 241);
			height: 100%;
			width: 100%;
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;}		

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
/*			background-color: rgb(221, 230, 241);*/
			height: 4%;
			width: 70%; 
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;
			float: right;
			/*font-family: "Helvetica Neue","Helvetica","Arial","sans-serif";*/
		}

		#navigation { 
/*			background-color: rgb(221, 230, 241);*/
			height: 96%;
			width:  30%; 
			clear: left; 
/*			clear: right;*/
			float: left;}

		#content {  
			height: 96%;
			width:  70%;
/*			clear: right;*/
			float:  left;}
		#footer { height: 5%;   width:100%; clear: left; clear: right; float: right;}
		#target { height: 100%; width:100%; clear: left; border: 0}
		iframe{height: 100%; width:100%}
	</style>
 
<!--===========================================================================================================-->
<script>
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
			}
		
		else if(flag==0){

			 a.style.width = "30%";	
			 b.style.width = "70%"; 
			 flag=1;	
			 }
	}
</script>
<script>
	function urlRightside(n)
		{
			
			if (flag!=0) hidepanel();
			var frameR = document.getElementById( "rightside" );
			var url;
			if(n=="Dashboard")
			{url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fDashboard_O2&rs:Command=Render";}
			if(n=="Cold"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fManagers%%2fBF_Cold+blast+flow&amp;rs%%3aCommand=Render";}
			if(n=="Parametrs"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fSinter+and+Blast%%2fBF_Gas_hour&rs:Command=Render";}
			if(n=="Water"){url=    "https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fWater_supply_tables_for_ED&rs:Command=Render";}
			if(n=="Oxygen"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fSteelmaking%%2fOxygen_BOF1-6&rs:Command=Render";}
			if(n=="LindeOnline"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fLindeGas_online&rs%%3aCommand=Render";}
			if(n=="LindeCur"){url="https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%%2fProductivity%%2fEnergy%%2fLindeGas_current&rs%%3aCommand=Render";}			
			frameR.src=url;
			//alert(url);
			
		}
</script>
<script>	


</script> 
	 
<div id="top"> 
	
<!--<input type="button" class="glyphicon glyphicon-menu-hamburger btn btn-default" onclick="hidepanel();">-->
	
<!--		<button type="button" onclick="hidepanel();" class="glyphicon glyphicon-menu-hamburger"> Menu </button>-->
		<button class ="glyphicon glyphicon-menu-hamburger btn btn-default" type="button" onclick="hidepanel();" style="padding:1px;margin:1px;"> <b>Menu </b></button>
	
</div>

<div id="topbutton" class="text-center">
		<button class ="btn btn-default" type="button" onclick="urlRightside('Dashboard');" style="padding:1px;margin:1px;"> <b>O2 </b></button>
		<button class ="btn btn-default" type="button" onclick="urlRightside('Cold');" style="padding:1px;margin:1px;"><b>Дутье</b></button>
		<button class ="btn btn-default" type="button" onclick="urlRightside('Parametrs');" style="padding:1px;margin:1px;"><b>Параметры ПГЦ</b></button>
		<button class ="btn btn-default" type="button" onclick="urlRightside('Water');" style="padding:1px;margin:1px;"><b>Вода</b></button>
		<button class ="btn btn-default" type="button" onclick="urlRightside('Oxygen');"style="padding:1px;margin:1px;"><b>О2 КЦ</b></button>
		<button class ="btn btn-default" type="button" onclick="urlRightside('LindeOnline');"style="padding:1px;margin:1px;"><b>Линде графики</b></button>	 
		<button class ="btn btn-default" type="button" onclick="urlRightside('LindeCur');"style="padding:1px;margin:1px;"><b>Линде текущие</b></button>
</div>	 
	 
<div id="navigation" style="">
<!--<a class="btn btn-primary btn-sm" href="" target="rightside" >Menu</a>	-->

<iframe id="leftside" name="leftside" src="|site_preffix|/tree"></iframe>			
</div>
	 
<div id="content" style="">
<iframe id="rightside" name="rightside" src="|site_preffix|/start"></iframe>
<!--
<iframe hidden name="Dashboard" src=""></iframe>
<iframe hidden name="Cold" src=""></iframe>
<iframe hidden name="Parametrs" src=""></iframe>	
-->

</div>

<!--
	 <div id="footer"><p align="center">Footer</p>
	</div>
-->

<!--===========================================================================================================-->
<!-- <SCRIPT src="visalization_files/tree_files/jquery-1.12.0.min.js"></SCRIPT>						
<SCRIPT src="visalization_files/tree_files/bootstrap.min.js"></SCRIPT>
<SCRIPT src="start_files/ie10-viewport-bug-workaround.js"></SCRIPT>
<SCRIPT src="start_files/lightbox.min.js"></SCRIPT>
 -->
<SCRIPT src="|site_preffix|js/jquery-1.12.0.min.js"></SCRIPT>						
<SCRIPT src="|site_preffix|styles/bootstrap/js/bootstrap.min.js"></SCRIPT>						
<SCRIPT src="|site_preffix|styles/lightbox/js/lightbox.min.js"></SCRIPT>
<!--===========================================================================================================-->		
</body>
</html>