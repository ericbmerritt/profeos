tests
testInitialize

	| user |
	user := PUIUser new.
	self
		assert: [ user id isNotNil ]
		description: 'The new user creation should not be nil'