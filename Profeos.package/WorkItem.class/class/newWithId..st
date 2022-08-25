instance creation
newWithId: newId 

	"Create the goal with a new id"

	| newWork |
	newWork := self basicNew.
	newWork
		initializeWithId: newId
		.
	^ newWork