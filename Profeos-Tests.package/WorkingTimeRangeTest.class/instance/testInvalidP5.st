tests
testInvalidP5

	"Test invalid p5"

	| p5 |
	p5 := 0.

	self
		should: [ WorkingTimeRange newWithP5: p5 andP95: 22 ]
		raise: AssertionFailure
		description: 'The P5 being zero didnt trigger ane exception'.
	self
		should: [ WorkingTimeRange newWithP5: nil andP95: 22 ]
		raise: AssertionFailure
		description: 'The P5 being nil didnt trigger ane exception'