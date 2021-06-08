

update [KRR-PA-GLB-SERVICE]..[visualization_menu] set link = 
--http://krr-sql-paclx02.europe.mittalco.com/Reports_PACLX02/Pages/Report.aspx?ItemPath=%2fProductivity%2fManagers%2fCharge+analyzer+data&ViewMode=Detail
N'http://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fManagers%2fCharge+analyzer+data&amp;rs%3aCommand=Render'
where id = 26

