initialization
initializeWith: aDate and: aDescription

	"Initialize this entry with a date and a description"

	self
		assert: [ aDescription isNotEmpty ]
		description: 'Provided description must not be empty'.

	self
		assert: [ aDate isNotNil ]
		description: 'The date provided for an entry must not be nil'.

	description := aDescription.
	date := aDate