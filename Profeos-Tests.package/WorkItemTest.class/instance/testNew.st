tests
testNew

	| workItem |
	
	workItem := WorkItem new.
	self
		assert: [ workItem id isNotNil ]
		description: 'The id is empty when it shouldnt be'