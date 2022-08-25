tests
testDates

	| calendar |
	calendar := self initializeCalendar.
	self
		assert: [ calendar dates includesKey: '02/15/2021' asDate ]
		description:
		'Calendar does not include the dates that it should include'