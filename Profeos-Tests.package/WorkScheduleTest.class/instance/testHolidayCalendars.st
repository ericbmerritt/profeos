tests
testHolidayCalendars

	| schedule |
	schedule := self createSchedule.
	self
		assert: [ schedule holidayCalendars size = 1 ]
		description: 'There should only be one holiday calendar'