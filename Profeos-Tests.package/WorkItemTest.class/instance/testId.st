tests
testId

	| workItem newId |
	newId := UUID new.
	workItem := WorkItem newWithId: newId.
	self
		assert: [ newId = workItem id ]
		description: 'Id was not retrieved correctly'