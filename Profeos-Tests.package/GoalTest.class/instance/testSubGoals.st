tests
testSubGoals 


	| subGoals goal |
	subGoals := Set newFrom: { Goal new. Goal new }.
	goal := Goal new.
	goal subGoals: subGoals.
	self assert: [ subGoals = goal subGoals ]
		description: 'SubGoals passed in was not recovered'.