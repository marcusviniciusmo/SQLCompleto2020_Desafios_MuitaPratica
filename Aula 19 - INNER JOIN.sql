-- INNER JOIN
/*
	 ____________			 _____________
	|   Cliente  |			|   Endereco  |
	|------------|			|-------------|
	| ClienteId  |			| EnderecoId  |
	| Nome       |			| Rua         |
	| EnderecoId |			| Cidade      |
	 ------------			 -------------

	 SELECT C.ClienteId, C.Nome, E.Rua, E.Cidade
	 FROM Cliente C
	 INNER JOIN Endereco E ON C.EnderecoId = E.EnderecoId
*/

-- Trazer as seguintes colunas: BusinessEntityId, FirstName, LastName, EmailAddress
SELECT Person.BusinessEntityID, Person.FirstName, Person.LastName, Email.EmailAddress
FROM Person.Person Person
INNER JOIN Person.EmailAddress Email
	ON Email.BusinessEntityID = Person.BusinessEntityID

-- Nome dos produtos e as informações de suas subcategorias
SELECT Product.Name, SubCategory.Name, Product.ListPrice
FROM Production.Product Product
INNER JOIN Production.ProductSubcategory SubCategory 
	ON Product.ProductSubcategoryID = SubCategory.ProductSubcategoryID

-- Juntar todas as colunas
SELECT *
FROM Person.BusinessEntityAddress BEA
INNER JOIN Person.Address PA 
	ON BEA.AddressID = PA.AddressID

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 1:
/*
	Trazer as colunas BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber das colunas
	PhoneNumberType e PersonPhone
*/

SELECT Phone.BusinessEntityID, Type.Name, Type.PhoneNumberTypeID, Phone.PhoneNumber
FROM Person.PhoneNumberType Type
INNER JOIN Person.PersonPhone Phone 
	ON Type.PhoneNumberTypeID = Phone.PhoneNumberTypeID

----------------------------------------------- // -----------------------------------------------
-- DESAFIO 2:
/*
	Trazer as colunas AddressId, City, StateProvinceId, Name
	StateProvince e Address
*/

SELECT PA.AddressID, PA.City, PSP.StateProvinceID, PSP.Name
FROM Person.StateProvince PSP
INNER JOIN Person.Address PA ON PSP.StateProvinceID = PA.StateProvinceID