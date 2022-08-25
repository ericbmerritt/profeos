tests
testId

	| id id2 goal |
	id := UUID new.
	goal := Goal newWithId: id.
	self assert: [ id = goal id ]
		description: 'Id passed in was not recovered'.
	id2 := UUID new.
	goal id: id2.
	self assert: [ id2 = goal id ]
		description: 'Id2 passed in was not recovered'.