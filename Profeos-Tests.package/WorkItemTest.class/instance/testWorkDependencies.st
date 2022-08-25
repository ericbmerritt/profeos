tests
testWorkDependencies

	| workItem workDeps |
	workDeps := Set newFrom: { UUID new }.
	workItem := WorkItem new.
	workItem
		skills: (Set newFrom: { (Skill newWith: 'FE') });
		goalDependencies: (Set newFrom: { UUID new });
		workDependencies: workDeps.

	self
		assert: [ workDeps = workItem workDependencies ]
		description: 'Work Deps were not retrieved correctly'