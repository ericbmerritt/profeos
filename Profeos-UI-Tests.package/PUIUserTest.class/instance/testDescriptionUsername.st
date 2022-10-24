tests
testDescriptionUsername

	| user |
	user := PUIUser example1.
	self
		assert: [ user descriptionUsername isNotNil ]
		description: 'Username should have a magritte description'