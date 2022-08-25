tests
testNew

	self
		should: [ WorkSchedule new ]
		raise: Error
		description:
		'WorkingSchedule does not throw an error when "new" is called'