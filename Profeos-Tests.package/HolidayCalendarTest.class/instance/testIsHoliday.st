tests
testIsHoliday

	| calendar dayAfterThanksgiving workday |
	dayAfterThanksgiving := '11/26/2021' asDate.
	workday := '07/15/2021' asDate.

	calendar := self initializeCalendar.
	self
		assert: [ calendar isHoliday: dayAfterThanksgiving ]
		description: 'The day after thanksgiving should be a holiday'.

	self
		assert: [ (calendar isHoliday: workday) not ]
		description: '7/15/2021 should not be a holiday'