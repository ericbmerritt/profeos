tests
testSkills

	| workItem skills |
	skills := (Set newFrom: { (Skill newWith: 'FE') }).
	workItem := WorkItem new.
	workItem
		skills: skills;
		
		workDependencies: (Set newFrom: { UUID new }).
	self
		assert: [ skills = workItem skills ]
		description: 'Goal Deps were not retrieved correctly'