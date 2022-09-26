setup
createGoal

	| id  deps skills |
	skills := Set newFrom: { (Skill newWith: 'FE') }.
	deps := Set newFrom: { 1 }.
	id := UUID new.
	^ Goal
		  newWithId: id
		  andDependencies: deps
		  andSkills: skills
		  andSubGoals: #(  )
		  andWork: #(  )