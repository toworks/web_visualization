WITH tree (id, parent, level, name, type, link, rn) as 
(
   SELECT id, parent, 0 as level, name, type, link,
       convert(varchar(max),right(row_number() over (order by id),10)) rn
   FROM [KRR-PA-DEV-Development]..menu
   WHERE parent is null

   UNION ALL

   SELECT c2.id, c2.parent, tree.level + 1, c2.name, c2.type, c2.link,
       rn + '/' + convert(varchar(max),right(row_number() over (order by tree.id),10))
   FROM [KRR-PA-DEV-Development]..menu c2 
     INNER JOIN tree ON tree.id = c2.parent
)
SELECT *
FROM tree
order by RN
