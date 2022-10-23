initialization
initializeWith: aId and: aUsername and: anEmail and: aPassword

	"Initialize this user with an id, username, email and password"

	self
		assert: [ aId isNotNil ]
		description: 'The id provided must not be nil'.

	self
		assert: [ aUsername isNotNil and: [ aUsername isNotEmpty ] ]
		description: 'The username must not be nil'.

	self
		assert: [ anEmail isNotNil and: [ anEmail isNotEmpty ] ]
		description: 'The email must not be nil'.

	self
		assert: [ aPassword isNotNil and: [ aPassword isNotEmpty ] ]
		description: 'The password must not be nil'.

	id := aId.
	username := aUsername.
	email := anEmail.
	password := aPassword