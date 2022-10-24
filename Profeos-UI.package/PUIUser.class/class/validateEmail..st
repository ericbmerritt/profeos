validations
validateEmail: anEmail

	self
		assert: [ anEmail isNotNil and: [ anEmail isNotEmpty ] ]
		description: 'The email must not be nil'.

	self
		assert: [ EmailRegex matches: anEmail ]
		description: 'The email must be mostly shaped like an email'