SELECT 
       p.[ProductKey]
      ,p.[ProductAlternateKey] AS ProductItemCode

			--,[ProductSubcategoryKey]
			--,[WeightUnitMeasureCode]
			--,[SizeUnitMeasureCode]
      
	  ,p.[EnglishProductName] AS [Product Name]
	  ,psc.[EnglishProductSubcategoryName] AS [Product Sub Category] -- Joined From Product Sub Category Table
	  ,pc.[EnglishProductCategoryName] AS [Product Category] -- Joined From Product Category Table

			--,[SpanishProductName]
			--,[FrenchProductName]
			--,[StandardCost]
			--,[FinishedGoodsFlag]
      
	  ,p.[Color]

			--,[SafetyStockLevel]
			--,[ReorderPoint]
			--,[ListPrice]
			--,[Size]
      
	  ,p.[SizeRange] AS [Product Size]

			--,[Weight]
			--,[DaysToManufacture]
      
	  ,p.[ProductLine] AS [Product Line]

			--,[DealerPrice]
			--,[Class]
			--,[Style]
      
	  ,p.[ModelName] AS [Product Model Name]

			--,[LargePhoto]
      
	  ,p.[EnglishDescription] AS [Product Description]

			--,[FrenchDescription]
			--,[ChineseDescription]
			--,[ArabicDescription]
			--,[HebrewDescription]
			--,[ThaiDescription]
			--,[GermanDescription]
			--,[JapaneseDescription]
			--,[TurkishDescription]
			--,[StartDate]
			--,[EndDate]
      
	  ,ISNULL(p.Status, 'Outdated') AS [Product Status]

 FROM dbo.DimProduct AS p
 LEFT JOIN dbo.DimProductSubcategory AS psc ON psc.ProductSubcategoryKey = p.ProductSubcategoryKey
 LEFT JOIN dbo.DimProductCategory AS pc ON psc.ProductCategoryKey = pc.ProductCategoryKey

 ORDER BY
 p.ProductKey ASC
