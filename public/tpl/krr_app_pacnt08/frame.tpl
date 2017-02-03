
    <!-- <frameset cols="20%*, 2*" FRAMESPACING="1" BORDER="1" >
		<frame src="/tree">
        <frame src="/start" name="rightside">
    </frameset> -->

<style>

		html body{
			height: 100%;
			width: 100%;
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;}		

		#top { 
			height: 4%;
			width:100%; 
			margin-left: 0;
			margin-right: 0;
			margin-top: 0;
			margin-bottom: 0;;
		}

		#navigation { 
			height: 96%;
			width:  29%; 
			float:  left;}

		#content {  
			height: 96%;
			width:  70%;
			float:  left;}
		#footer { height: 5%;   width:100%; clear: left; clear:right;float:right;}
		#target { height: 100%; width:100%; clear: left; border: 0}
		iframe{height: 100%; width:100%}
	</style>
 <LINK href="visalization_files/tree_files/bootstrap.min.css" rel="stylesheet">
 <LINK href="start_files/lightbox.min.css" rel="stylesheet"> 	 
 <LINK href="visalization_files/tree_files/openwebicons-bootstrap.css" rel="stylesheet">
 <LINK href="visalization_files/tree_files/font-awesome.min.css" rel="stylesheet">
<!--===========================================================================================================-->
<div id="top"> 
	
<script>
	var flag=1;
	function hidepanel()
	{
		//alert("hidepanel OK");
		a = document.getElementById( "navigation" );
		b = document.getElementById( "content" );
//		alert(b.style.width);
//		alert("flag= "+flag);
		if(flag!=0)
			{
			a.style.width = "0%"; 
			b.style.width = "100%";	 
			flag=0;		
			}
		
		else if(flag==0){
//			alert("условие сработало flag= "+flag);
			 a.style.width = "29%";	
			 b.style.width = "70%"; 
			 flag=1;	
			 }
	}
	</script>
<!--<input type="button" class="glyphicon glyphicon-menu-hamburger btn btn-default" onclick="hidepanel();">-->
	<span>
		<button type="button" onclick="hidepanel();" class="glyphicon glyphicon-menu-hamburger"> Menu </button>
	</span>
<!--
	<span  style= "right:10 px">
		<button type="button" onclick="hidepanel();">Dashboard O2</button>
		<button type="button" onclick="hidepanel();">Cold blast flow</button>
		<button type="button" onclick="hidepanel();">Parametrs</button>
		<button type="button" onclick="hidepanel();">Water supply</button>
		<button type="button" onclick="hidepanel();">Oxygen BOF1-6</button>
	</span>
-->
</div>

<div id="navigation" style="">
<!--<a class="btn btn-primary btn-sm" href="" target="rightside" >Menu</a>	-->

<iframe name="leftside" src="/tree"></iframe>			
</div>
<div id="content" style="">
<iframe  name="rightside" src="/start"></iframe>
<!--
</div>
	<div id="footer"><p align="center">Footer</p>
	</div>
-->
<!--===========================================================================================================-->
<SCRIPT src="visalization_files/tree_files/jquery-1.12.0.min.js"></SCRIPT>						
<SCRIPT src="visalization_files/tree_files/bootstrap.min.js"></SCRIPT>
<SCRIPT src="start_files/ie10-viewport-bug-workaround.js"></SCRIPT>
<SCRIPT src="start_files/lightbox.min.js"></SCRIPT>	
<!--===========================================================================================================-->		