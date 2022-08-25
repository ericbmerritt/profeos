tests
testP5

	| p5 estimate |
	p5 := 1.
	estimate := WorkingTimeRange newWith: p5 and: 9.
	self
		assert: [ p5 = estimate p5 ]
		description:
		'P5 is not the same one that we used to create the estimate'