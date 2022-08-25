tests
testWork


	| work goal |
	work := Array newFrom: { 1 }.
	goal := Goal new.
	goal work: work.
	self assert: [ work = goal work ]
		description: 'Work passed in was not recovered'.