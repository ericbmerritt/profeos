tests
testIsoCountryCode

	| calendar |
	calendar := self initializeCalendar.

	self
		assert: [ calendar isoCountryCode = 'US' ]
		description: 'Calendar does not have the correct country code'