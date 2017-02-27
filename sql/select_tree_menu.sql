
-- WITH tree (id, parent, level, name, type, link, rn) as 
-- (
   -- SELECT id, parent, 0 as level, name, type, link,
       -- convert(varchar(max),right(row_number() over (order by id),10)) rn
   -- FROM [KRR-PA-GLB-SERVICE]..visualization_menu
   -- WHERE parent is null

   -- UNION ALL

   -- SELECT c2.id, c2.parent, tree.level + 1, c2.name, c2.type, c2.link,
       -- rn + '/' + convert(varchar(max),right(row_number() over (order by tree.id),10))
   -- FROM [KRR-PA-GLB-SERVICE]..visualization_menu c2 
     -- INNER JOIN tree ON tree.id = c2.parent
-- )
-- SELECT *
-- FROM tree
-- order by RN

WITH tree (sortid, parent, level, name, type, link, rn) as 
(
   SELECT sortid, parent, 0 as level, name, type, link,
       convert(varchar(max),right(row_number() over (order by sortid),10)) rn
	   
   FROM [KRR-PA-GLB-SERVICE]..visualization_menu
   WHERE parent is null

   UNION ALL

   SELECT c2.sortid, c2.parent, tree.level + 1, c2.name, c2.type, c2.link,

       rn + '/' + convert(varchar(max),right(row_number() over (order by tree.sortid),10))
	   
   FROM [KRR-PA-GLB-SERVICE]..visualization_menu c2 
     INNER JOIN tree ON tree.sortid = c2.parent
)
SELECT * FROM tree 
--where parent is null
order by RN

