tests
initializeCalendar: year

	| holidays |
	
	holidays := { 
		            (Dictionary newFrom: { 
				             ('date' -> '01/01/2021' asDate).
				             ('countryCode' -> 'US').
				             ('localName' -> 'New Year''s Day').
				             ('name' -> 'New Year''s Day') }).
		            (Dictionary newFrom: { 
				             ('date' -> '01/18/2021' asDate).
				             ('countryCode' -> 'US').
				             ('localName' -> 'Martin Luther King Jr. Day').
				             ('name' -> 'Martin Luther King Jr. Day') }).
		            (Dictionary newFrom: { 
				             ('date' -> '02/15/2021' asDate).
				             ('countryCode' -> 'US').
				             ('localName' -> 'Presidents Day').
				             ('name' -> 'Presidents Day') }).
		            (Dictionary newFrom: { 
				             ('date' -> '11/25/2021' asDate).
				             ('countryCode' -> 'US').
				             ('localName' -> 'Thanksgiving Day').
				             ('name' -> 'Thanksgiving Day') }).
		            (Dictionary newFrom: { 
				             ('date' -> '11/26/2021' asDate).
				             ('countryCode' -> 'US').
				             ('localName' -> 'Day after Thanksgiving').
				             ('name' -> 'Day after Thanksgiving') }) }.



	^ HolidayCalendar
		  newWithCountryCode: 'US'
		  andYear: 2021
		  andDateDescriptions: holidays