tests
testPassword

	| user |
	user := PUIUser example1.
	self
		assert: [ user password isNotNil ]
		description: 'password should not be nil'.

	user password: 'Set a random password'.
	self assert: [ user password = 'Set a random password' ].

	self should: [ user password: nil ] raise: Error.

	self should: [ user password: '' ] raise: Error