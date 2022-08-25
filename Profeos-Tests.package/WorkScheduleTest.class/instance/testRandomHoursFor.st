tests
testRandomHoursFor

	| schedule workday saturday sunday dayAfterThanksgiving |
	saturday := '02/06/2021' asDate.
	sunday := '09/19/2021' asDate.
	dayAfterThanksgiving := '11/26/2021' asDate.
	workday := '07/15/2021' asDate.

	schedule := self createSchedule.
	self
		assert: [ (schedule randomHoursFor: saturday) = 0 ]
		description: 'Schedule did not return 0 random hours for saturday'.

	self
		assert: [ (schedule randomHoursFor: sunday) = 0 ]
		description: 'Schedule did not return 0 random hours for sunday'.

	self
		assert: [ (schedule randomHoursFor: dayAfterThanksgiving) = 0 ]
		description: 'Schedule did not return 0 random hours for saturday'.

	self
		assert: [ (schedule randomHoursFor: workday) > 0 ]
		description: 'Schedule returned 0 hours for a normal work day'