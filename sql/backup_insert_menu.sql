select

N'insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent] )
values( '+
cast(id as nvarchar(max)) + ', N'''+name+''', N'''+link+''', N'''+type+''', '+isnull(cast(parent as nvarchar(max)), 'NULL')+
N')'

from [KRR-PA-DEV-Development].[dbo].[menu]
where name not like '%older%' and name not like '%link%' and name not like '%root%'
