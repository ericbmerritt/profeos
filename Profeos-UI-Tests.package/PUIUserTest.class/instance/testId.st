tests
testId

	| user testId |
	user := PUIUser example1.
	self
		assert: [ user id isNotNil and: [ user id isNilUUID not ] ]
		description: 'id should not be nil'.

	testId := UUID fromString: '43271d4a-050e-426e-b1ca-3d5366290065'.
	user id: testId.
	self assert: [ user id = testId ].

	self should: [ user id: nil ] raise: Error.

	self should: [ user id: '' ] raise: Error.

	self should: [ user id: 'foo bar baz' ] raise: Error