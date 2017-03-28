select

N'insert into [KRR-PA-GLB-SERVICE].[dbo].visualization_menu 
( [id], [name], [link], [type], [parent], [sortid] )
values( '+
	cast(id as nvarchar(max)) + ', N'''+
	name+''', N'''+
	link+''', N'''+
	type+''', '+
	isnull(cast(parent as nvarchar(max)), 'NULL')+', '+
	isnull(cast(sortid as nvarchar(max)), 'NULL')+
N')'

from [KRR-PA-GLB-SERVICE].[dbo].visualization_menu
where name not like '%older%' and name not like '%link%' and name not like '%root%'

