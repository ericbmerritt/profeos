tests
testValidateId

	PUIUser validateId:
		(UUID fromString: '43271d4a-050e-426e-b1ca-3d5366290065').
		
	self should: [ PUIUser validateId: nil ] raise: Error.

	self should: [ PUIUser validateId: '' ] raise: Error.

	self should: [ PUIUser validateId: 'foo bar baz' ] raise: Error