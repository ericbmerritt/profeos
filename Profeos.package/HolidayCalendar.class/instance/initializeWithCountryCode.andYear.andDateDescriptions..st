intialization
initializeWithCountryCode: aCode andYear: aYear andDateDescriptions: allHolidays

	self
		assert: [ 
			allHolidays allSatisfy: [ :element | 
				(element includesKey: 'date') and: (element includesKey: 'name') ] ]
		description:
		'AllHolidays is not an Array of Dictionaries that contain a "date" and a "name" key'.

	self
		assert: [ ISOCountryCodes validCode: aCode ]
		description: 'aCode is a not a valid ISO Country Code'.

	self
		assert: [ aYear >= 0 and: aYear <= 9999 ]
		description:
		'The year provided is not in a reasonable range between 0 and 9999'.

	isoCountryCode := aCode.
	year := aYear.
	dates := Dictionary newFrom: (allHolidays collect: [ :holidayDesc | 
			          (holidayDesc at: 'date') -> (holidayDesc at: 'name') ])