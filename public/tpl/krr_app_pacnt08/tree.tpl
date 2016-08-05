    
	<link href="/styles/easy_tree/skin-win8/ui.easytree.css" rel="stylesheet" class="skins" type="text/css">
	
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/jquery-1.12.0.min.js"></script>

	<!-- easytree js -->
    <script src="/styles/easy_tree/jquery.easytree.min.js"></script>
	
	<div id="content">

		<div class="content_box">
			<h5>Initalised from Data</h5>

		<div id="demo3_menu"></div>

				<script>
					var jsonData = [{
						"href": "http:\/\/www.easyjstree.com",
						"hrefTarget": "rightside",
						"text": "Home"
					}, {
						"children": [{
							"href": "https:\/\/ukr.net",
							"hrefTarget": "rightside",
							"text": "Go to ukr.net"
						}, {
							"href": "http:\/\/krr-sql-paclx02.europe.mittalco.com\/ReportServer_PACLX02\/Pages\/ReportViewer.aspx?%2fProductivity%2fManagers%2f%d0%98%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f+%d0%bf%d0%be+%d0%b2%d0%b5%d1%81%d0%be%d0%b2%d1%8b%d0%bc&rs:Command=Render",
							"hrefTarget": "rightside",
							"text": "Go to ReportServer_PACLX02"
						}, {
							"href": "http:\/\/krr-sql-paclx02.europe.mittalco.com\/ReportServer_PACLX02\/Pages\/ReportViewer.aspx?%2fProductivity%2fManagers%2f%d0%98%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f+%d0%bf%d0%be+%d0%b2%d0%b5%d1%81%d0%be%d0%b2%d1%8b%d0%bc&rs:Command=Render",
							"hrefTarget": "rightside",
							"text": "Go to ReportServer_PACLX02 wery long name rke prpeotpr porpeotore rte[o[proe t popop[ [popero[ortpeo o[po[po[po e[rt[ END"
						}],
						"isActive": false,
						"isExpanded": true,
						"isFolder": true,
						"text": "Folder 1",
						"tooltip": "Bookmarks"
					}, {
						"children": [{
							"text": "Sub Node 1"
						}, {
							"text": "Sub Node 2"
						}, {
							"text": "Sub Node 3"
						}],
						"isActive": false,
						"text": "Node 1"
					}, {
						"text": "Node 2"
					}
/*						,{
							"href": "http:\/\/www.easyjstree.com",
							"hrefTarget": "rightside",
							"text": "Home"
						}*/, {
							"children": [{
								"href": "https:\/\/ukr.net",
								"hrefTarget": "rightside",
								"text": "Go to ukr.net"
							}, {
								"href": "http:\/\/krr-sql-paclx02.europe.mittalco.com\/ReportServer_PACLX02\/Pages\/ReportViewer.aspx?%2fProductivity%2fManagers%2f%d0%98%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f+%d0%bf%d0%be+%d0%b2%d0%b5%d1%81%d0%be%d0%b2%d1%8b%d0%bc&rs:Command=Render",
								"hrefTarget": "rightside",
								"text": "Go to ReportServer_PACLX02"
							}, {
								"href": "http:\/\/krr-sql-paclx02.europe.mittalco.com\/ReportServer_PACLX02\/Pages\/ReportViewer.aspx?%2fProductivity%2fManagers%2f%d0%98%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f+%d0%bf%d0%be+%d0%b2%d0%b5%d1%81%d0%be%d0%b2%d1%8b%d0%bc&rs:Command=Render",
								"hrefTarget": "rightside",
								"text": "Go to ReportServer_PACLX02 wery long name rke prpeotpr porpeotore rte[o[proe t popop[ [popero[ortpeo o[po[po[po e[rt[ END"
							}],
							"isActive": false,
							//"isExpanded": true,
							"isFolder": true,
							"text": "Folder test",
							"tooltip": "Bookmarks"
						}
					
					
					]
					$('#demo3_menu').easytree({
						data: jsonData
					});
				</script>
			</div>
		</div>


		
<div id="demo1_menu">
    <ul>
        <li><a href="http://www.easyjstree.com" target="rightside">Home</a></li>
        <li class="isFolder isExpanded" title="Bookmarks">
            Folder 1
            <ul>
               <li><a href="https://ukr.net" target="rightside">Go to Google.com</a></li>
               <li><a href="http://www.yahoo.com" target="rightside">Go to Yahoo.com</a></li>
			   <li><a href="http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2f%d0%98%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f+%d0%bf%d0%be+%d0%b2%d0%b5%d1%81%d0%be%d0%b2%d1%8b%d0%bc&rs:Command=Render" target="rightside">Go to ReportServer_PACLX02 wery long name rke prpeotpr porpeotore rte[o[proe t popop[ [popero[ortpeo o[po[po[po e[rt[ END</a></li>
            </ul>
        </li>
        <li>
            Node 1
            <ul>
                <li>Sub Node 1</li>
                <li>Sub Node 2</li>
                <li>Sub Node 3</li>
            </ul>
        </li>
        <li>Node 2</li>
    </ul>
</div>
<script>
    $('#demo1_menu').easytree();
</script>


                <div class="cleaner"></div>
            </div>

            <div id="main_bottom">
            </div>

        </div> <!-- end of wrapper -->
    </div><div id="easytree-reject" class="easytree-drag-helper easytree-drop-reject" style="top: 264px; left: 993px;"><span class="easytree-drag-helper-img"></span></div><div id="easytree-accept" class="easytree-drag-helper easytree-drop-accept" style="top: 264px; left: 993px;"><span class="easytree-drag-helper-img"></span></div>

<!--
    <script>
        function stateChangedMain(nodes, nodesJson) {
            var t = nodes[0].text;
            $.cookie('main_menu', nodesJson, { path: '/' });
        }

        function getId(nodes, pathName) {
            var i = 0;
            for (i = 0; i < nodes.length; i++) {
                if (nodes[i].href && nodes[i].href.toLowerCase() == pathName) {
                    return nodes[i].id;
                }
                if (nodes[i].children && nodes[i].children.length > 0) {
                    var id = getId(nodes[i].children, pathName);
                    if (id) {
                        return id;
                    }
                }
            }
        }

        //alert($.cookie('main_menu'));
        var mainMenu = $('#main_menu').easytree({
            data: $.cookie('main_menu'),
            stateChanged: stateChangedMain
        });

        var pathName = window.location.pathname.toLowerCase();
        var allNodes = mainMenu.getAllNodes();
        var currentId = getId(allNodes, pathName);
        if (currentId) {
            mainMenu.activateNode(currentId);
        }
        
    </script>
-->