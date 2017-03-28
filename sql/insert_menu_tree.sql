--insert into [KRR-PA-DEV-Development]..menu (name, link) values(N'root node 2', N'link root node2')
--insert into [KRR-PA-DEV-Development]..menu (name, link, parent, type) values(N'folder 2/2', N'link folder 2/2', 5, N'folder')
--insert into [KRR-PA-DEV-Development]..menu (name, link, parent) values(N'folder 2/2 | link 1', N'f2/2 link_1', 22),(N'folder 2/2 | link 2/2', N'f2/2 link_3', 22)
--update [KRR-PA-DEV-Development]..menu set type = 'folder' where id = 16

-- add foder
-- insert into [KRR-PA-GLB-SERVICE].[dbo].[visualization_menu] (name, link, parent, type) values(N'Прокатный департамент | Rolling Mill', N'none', 29, N'folder')
-- add link
-- insert into [KRR-PA-GLB-SERVICE]..visualization_menu (name, link, parent) values(N'Система Totus | System Totus', N'https://krr-sql-paclx02.europe.mittalco.com/ReportServer_PACLX02/Pages/ReportViewer.aspx?%2fProductivity%2fRolling%2ftotus_reports&amp;rs%3aCommand=Render', 197)