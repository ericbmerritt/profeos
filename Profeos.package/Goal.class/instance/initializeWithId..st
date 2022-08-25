initialization
initializeWithId: goalId

	"Initialize this goal with new data"

	id := goalId.
	skills := Set new.
	work := Array new.
	dependencies := Set new.
	subGoals := Array new. 