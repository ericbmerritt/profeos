tests
testNewWithId

	| workItem id |
	id := UUID new.
	workItem := WorkItem newWithId: id.
	self
		assert: [ id = workItem id ]
		description: 'Id were not retrieved correctly'