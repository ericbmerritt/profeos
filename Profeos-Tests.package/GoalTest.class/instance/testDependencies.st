tests
testDependencies

	| deps goal |
	deps := Set newFrom: { 1 }.
	goal := Goal new.
	goal dependencies: deps.
	self assert: [ deps = goal dependencies ]
		description: 'Dependencies passed in was not recovered'.