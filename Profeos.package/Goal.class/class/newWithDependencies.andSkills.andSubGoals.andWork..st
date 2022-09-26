instance creation
newWithDependencies: someDeps andSkills: someSkills andSubGoals: someSubGoals andWork: someWork

	"creates a new valid goal with an ID"

	| uuid |
	uuid := UUID new.
	^ self
		  newWithId: uuid
		  andDependencies: someDeps
		  andSkills: someSkills
		  andSubGoals: someSubGoals
		  andWork: someWork