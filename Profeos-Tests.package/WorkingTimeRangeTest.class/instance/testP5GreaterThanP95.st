tests
testP5GreaterThanP95

	"Test creation of a skill"

	| p5 p95 |
	p5 := 99.
	p95 := 1.

	self
		should: [ WorkingTimeRange newWithP5: p5 andP95: p95 ]
		raise: AssertionFailure
		description:
		'The P5 being larger then the P95 did not trigger an exception'