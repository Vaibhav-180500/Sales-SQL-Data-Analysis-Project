
SELECT  
	 [DateKey]
	,[FullDateAlternateKey] AS Date

		--,[DayNumberOfWeek]
		--,[EnglishDayNameOfWeek]
		--,[SpanishDayNameOfWeek]
	
	,[FrenchDayNameOfWeek] AS Day

		--,[DayNumberOfMonth]
		--,[DayNumberOfYear]
	
	,[WeekNumberOfYear] AS WeekNum

		--,[EnglishMonthName]
		--,[SpanishMonthName]
	
	,[FrenchMonthName] AS Month
	,LEFT([FrenchMonthName],4) AS MonthShort 
	,[MonthNumberOfYear] AS MonthNum
	,[CalendarQuarter] AS Quarter
	,[CalendarYear] AS Year

		--,[CalendarSemester]
		--,[FiscalQuarter]
		--,[FiscalYear]
		--,[FiscalSemester]

FROM [AdventureWorksDW2022].[dbo].[DimDate]

WHERE CalendarYear >= 2020