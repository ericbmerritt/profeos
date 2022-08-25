initialization
initializeWithId: newId

	"Initialize the Work Item with an Id"

	id := newId.
	skills := Set new.
	workDependencies := Set new.
	goalDependencies := Set new.
	estimates := Dictionary new.