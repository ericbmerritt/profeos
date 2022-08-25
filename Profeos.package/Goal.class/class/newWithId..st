instance creation
newWithId: goalId

	"creates a new valid goal with an ID"

	| newInstance |
	newInstance := self basicNew.
	newInstance
		initializeWithId: goalId.
	^ newInstance