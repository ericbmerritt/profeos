tests
testP95

	| p95 estimate |
	p95 := 9.
	estimate := WorkingTimeRange newWithP5: 1 andP95: p95.
	self
		assert: [ p95 = estimate p95 ]
		description:
		'P95 is not the same one that we used to create the estimate'