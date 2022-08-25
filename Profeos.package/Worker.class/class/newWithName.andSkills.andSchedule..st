instance creation
newWithName: aName andSkills: newSkills andSchedule: aSchedule

	"Create a new worker with a name and skills, generating a new unque id"

	
	^ self 
		newWithId: UUID new
		andName: aName
		andSkills: newSkills
		andSchedule: aSchedule