tests
testRandomUnits

	"Test that we can get working units from a valid time range"

	| p5 p95 result estimate |
	p5 := 1.
	p95 := 5.
	estimate := WorkingTimeRange newWith: p5 and: p95.
	result := estimate randomUnits.
	self
		assert: [ result >= 0 ]
		description: 'workingUnits did not return a valid number'