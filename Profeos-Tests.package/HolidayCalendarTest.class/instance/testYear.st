tests
testYear

	| calendar |
	calendar := self initializeCalendar.
	self
		assert: [ calendar year = 2021 ]
		description: 'Calendar does not have the correct year'