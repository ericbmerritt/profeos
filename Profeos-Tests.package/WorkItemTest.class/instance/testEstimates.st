tests
testEstimates

	| estimates workerId workItem estimate2 estimate |
	workerId := UUID new.
	estimate := WorkingTimeRange newWith: 1 and: 5.
	estimates := Dictionary newFrom: { (workerId -> estimate) }.
	workItem := WorkItem new.
	workItem
		skills: (Set newFrom: { (Skill newWith: 'FE') });
		estimates: estimates;
		workDependencies: (Set newFrom: { UUID new }).
	self
		assert: [ estimates = workItem estimates ]
		description: 'Estimates were not retrieved correctly'.
	estimate2 := workItem estimates at: workerId.
	self
		assert: [ estimate = estimate2 ]
		description: 'Estimate we got back was not the same we sent in'