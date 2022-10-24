tests
testDescriptionId

	| user |
	user := PUIUser example1.
	self
		assert: [ user descriptionId isNotNil ]
		description: 'Id should have a magritte description'