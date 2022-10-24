validations
validateId: anId
	
	self assert: [ anId isNotNil and: [ anId isNilUUID not ] ]
		description: 'An id must exist and not be a nil id'