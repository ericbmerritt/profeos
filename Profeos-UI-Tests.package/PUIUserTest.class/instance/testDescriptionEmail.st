tests
testDescriptionEmail

	| user |
	user := PUIUser example1.
	self
		assert: [ user descriptionEmail isNotNil ]
		description: 'Email should have a magritte description'