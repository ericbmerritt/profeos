tests
testUsername

		| user |
	user := PUIUser example1.
	self
		assert: [ user username isNotNil ]
		description: 'username should not be nil'.

	user username: 'orticklo'.
	self assert: [ user username = 'orticklo' ].

	self should: [ user username: nil ] raise: Error.

	self should: [ user username: '' ] raise: Error