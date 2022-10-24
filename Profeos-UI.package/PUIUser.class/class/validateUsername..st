validations
validateUsername: aUsername
	
	self
		assert: [ aUsername isNotNil and: [ aUsername isNotEmpty ] ]
		description: 'The username must not be nil'.