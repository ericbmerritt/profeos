tests
testInitializeWithCountryCodeAndYearAndDateDescriptions

	| calendar |
	calendar := self initializeCalendar.
	self
		assert: [ calendar isNotNil ]
		description: 'Calendar is nil when it should be initialized'.

	self
		assert: [ calendar dates includesKey: '02/15/2021' asDate ]
		description: 'Calendar does not include that it should include'