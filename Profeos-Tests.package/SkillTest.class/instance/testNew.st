tests
testNew

	self
		should: [ Skill new ]
		raise: Error
		description: 'Skill does not throw an error when "new" is called'