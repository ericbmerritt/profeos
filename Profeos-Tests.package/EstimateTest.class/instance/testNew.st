tests
testNew

	self
		should: [ Estimate new ]
		raise: Error
		description: 'Estimate does not throw an error when "new" is called'