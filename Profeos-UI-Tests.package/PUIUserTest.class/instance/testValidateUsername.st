tests
testValidateUsername



	PUIUser validateUsername: 'orticklo'.

	self should: [ PUIUser validateUsername: nil ] raise: Error.

	self should: [ PUIUser validateUsername: '' ] raise: Error