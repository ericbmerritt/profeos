tests
testEmail

	| user |
	user := PUIUser example1.
	self
		assert: [ user email isNotNil ]
		description: 'email should not be nil'.

	user email: 'foo@bar.com'.
	self assert: [ user email = 'foo@bar.com' ].

	self should: [ user email: nil ] raise: Error.

	self should: [ user email: '' ] raise: Error.
	self should: [ user email: 'eeeeeeeeee' ] raise: Error