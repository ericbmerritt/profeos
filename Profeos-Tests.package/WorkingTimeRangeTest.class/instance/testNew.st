tests
testNew

	self
		should: [ WorkingTimeRange new ]
		raise: Error
		description: 'WorkingTimeRange should not allow the use of "new"'
	