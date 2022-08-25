tests
testCountryNameForISOCode

	self
		assert: [ 
		(ISOCountryCodes countryNameForISOCode: 'US') = 'United States of America' ]
		description:
		'Country name returned for "US" doesnt match "United States of America"'.
			self
		assert: [ 
		(ISOCountryCodes countryNameForISOCode: 'AR') = 'Argentina' ]
		description:
		'Country name returned for "AR" doesnt match "Argentina"'