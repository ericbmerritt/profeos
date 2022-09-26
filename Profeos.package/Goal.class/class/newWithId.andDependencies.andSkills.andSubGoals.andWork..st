instance creation
newWithId: anId andDependencies: someDeps andSkills: someSkills andSubGoals: someSubGoals andWork: someWork

	"creates a new valid goal with an ID"

	^ self basicNew
		  initializeWithId: anId
		  andDependencies: someDeps
		  andSkills: someSkills
		  andSubGoals: someSubGoals
		  andWork: someWork;
		  yourself