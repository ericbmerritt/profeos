instance creation
newWithSkills: newSkills andDependencies: newDependencies

	"Set the internal value of the skills to the skills provided. This will provide skills to any WorkItem in the group"
	| newWork |
	newWork := self basicNew.
	newWork initializeWithSkills: newSkills andDependencies: newDependencies.
	^ newWork
