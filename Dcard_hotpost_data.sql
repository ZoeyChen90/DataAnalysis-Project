SELECT P.id, P.title, P.content, P.forum_alias, P.forum_name, P.rxn_count, 
COUNT(IF(C.gender = 'M', 1, NULL)) AS Comment_M, 
COUNT(IF(C.gender = 'F', 1, NULL)) AS Comment_F
FROM Dcard_Post AS P
LEFT JOIN Dcard_Comment AS C
ON P.id = C.postID
WHERE P.createtime BETWEEN 1682870400 AND 1685548799
AND (P.content LIKE '%電商%' OR P.content LIKE '%網購%' OR P.content LIKE '%團購%')
GROUP BY P.id, P.title, P.content, P.forum_alias, P.forum_name, P.rxn_count
ORDER BY P.rxn_count DESC ;
