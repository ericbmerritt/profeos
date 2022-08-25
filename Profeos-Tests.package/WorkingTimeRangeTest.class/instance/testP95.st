tests
testP95

	| p95 estimate |
	p95 := 9.
	estimate := WorkingTimeRange newWith: 1 and: p95.
	self
		assert: [ p95 = estimate p95 ]
		description:
		'P95 is not the same one that we used to create the estimate'