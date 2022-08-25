tests
testGoalDependencies

	| workItem goalDeps |
	goalDeps := Set newFrom: { UUID new }.
	workItem := WorkItem new.
	workItem
		skills: (Set newFrom: { (Skill newWith: 'FE') });
		goalDependencies: goalDeps;
		workDependencies: (Set newFrom: { UUID new }).
	self
		assert: [ goalDeps = workItem goalDependencies ]
		description: 'Goal Deps were not retrieved correctly'