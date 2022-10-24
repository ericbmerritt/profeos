validations
validatePassword: aPassword

	self
		assert: [ aPassword isNotNil and: [ aPassword isNotEmpty ] ]
		description: 'The password must not be nil'