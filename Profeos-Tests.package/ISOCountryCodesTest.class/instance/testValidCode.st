tests
testValidCode

	self
		assert: [ ISOCountryCodes validCode: 'YT' ]
		description: 'YT should be a valid code'.
	self
		assert: [ ISOCountryCodes validCode: 'BZ' ]
		description: 'BZ should be a valid code'.
	self
		assert: [ ISOCountryCodes validCode: 'SN' ]
		description: 'SN should be a valid code'