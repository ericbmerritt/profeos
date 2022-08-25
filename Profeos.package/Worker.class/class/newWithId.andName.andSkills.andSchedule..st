instance creation
newWithId: newId andName: aName andSkills: newSkills andSchedule: aSchedule

	"Create the goal with a new id"

	| newWorker |
	newWorker := self basicNew.
	newWorker
		initializeWithId: newId andName: aName andSkills: newSkills andSchedule: aSchedule
		.
	^ newWorker