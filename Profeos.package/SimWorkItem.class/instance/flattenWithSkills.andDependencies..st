copying
flattenWithSkills: newSkills andDependencies: newDeps

	"Create a new work item, merging the instance variables with the variables from a Group"

	| mergedSkills mergedDependencies |
	mergedSkills := skills , newSkills.
	mergedDependencies := dependencies , newDeps.

	^ self class
		  newWithSkills: mergedSkills
		  andDependencies: mergedDependencies