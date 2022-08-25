tests
testNew

	self
		should: [ HolidayCalendar  new ]
		raise: Error
		description: 'HolidayCalendar should not allow the use of "new"'