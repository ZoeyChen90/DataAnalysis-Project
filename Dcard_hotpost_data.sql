SELECT P.id, P.title, P.content, P.forumAlias, P.forumName, P.rxnCount, 
COUNT(IF(C.gender = 'M', 1, NULL)) AS Comment_M, 
COUNT(IF(C.gender = 'F', 1, NULL)) AS Comment_F
FROM media.DcardPost AS P
LEFT JOIN media.DcardComment AS C
ON P.id = C.postID
WHERE P.createtime BETWEEN 1682870400 AND 1685548799
AND (P.content LIKE '%電商%' OR P.content LIKE '%網購%' OR P.content LIKE '%團購%')
GROUP BY P.id, P.title, P.content, P.forumAlias, P.forumName, P.rxnCount
ORDER BY P.rxnCount DESC ;