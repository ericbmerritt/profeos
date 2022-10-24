tests
testValidateEmail

	PUIUser validateEmail: 'foo@bar.com'.

	self should: [ PUIUser validateEmail: nil ] raise: Error.

	self should: [ PUIUser validateEmail: '' ] raise: Error.
	self should: [ PUIUser validateEmail: 'ee.eeeeeeeeeeeee' ] raise: Error.