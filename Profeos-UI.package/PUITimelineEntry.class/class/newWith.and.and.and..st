instance creation
newWith: anId and: aUsername and: anEmail and: aPassword

	"creates a new PUI user"

	^ self basicNew
		  initializeWith: anId
		  and: aUsername
		  and: anEmail
		  and: aPassword;
		  yourself