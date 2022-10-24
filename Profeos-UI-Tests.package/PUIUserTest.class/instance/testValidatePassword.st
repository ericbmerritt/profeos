tests
testValidatePassword

	PUIUser validatePassword: 'some random string'.
	self should: [ PUIUser validatePassword: nil ] raise: Error.

	self should: [ PUIUser validatePassword: '' ] raise: Error