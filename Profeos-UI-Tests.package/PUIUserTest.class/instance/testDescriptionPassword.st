tests
testDescriptionPassword

	| user |
	user := PUIUser example1.
	self
		assert: [ user descriptionPassword isNotNil ]
		description: 'Password should have a magritte description'