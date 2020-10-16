-- OUTER JOIN
-- LEFT JOIN (a forma abrevida de LEFT OUTER JOIN)

-- Descobrir quais pessoas têm um cartão de crédito registrado.
SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard SPCC
ON PP.BusinessEntityID  = SPCC.BusinessEntityID
-- INNER JOIN: 19.118

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard SPCC
ON PP.BusinessEntityID = SPCC.BusinessEntityID
-- LEFT JOIN: 19.972

-- LEFT JOIN - INNER JOIN = 19.972 - 19.118 = 854
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard SPCC
ON PP.BusinessEntityID = SPCC.BusinessEntityID
WHERE SPCC.BusinessEntityID IS NULL
-- RESULTADO: 854