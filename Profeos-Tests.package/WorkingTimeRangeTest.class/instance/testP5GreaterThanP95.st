tests
testP5GreaterThanP95

	"Test creation of a skill"

	| p5 p95 |
	p5 := 99.
	p95 := 1.

	self
		should: [ WorkingTimeRange newWith: p5 and: p95 ]
		raise: AssertionFailure
		description:
		'The P5 being larger then the P95 did not trigger an exception'