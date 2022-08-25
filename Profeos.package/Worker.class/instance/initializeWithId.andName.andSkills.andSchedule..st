initialization
initializeWithId: anId andName: aName andSkills: newSkills andSchedule: aSchedule

	"This method initializes a worker with a new id, name and skills, and the number of hours per week"

	self
		assert: [ aName isNotEmpty ]
		description: 'The name may not be empty'.

	id := anId.
	name := aName.
	skills := newSkills.
	schedule := aSchedule