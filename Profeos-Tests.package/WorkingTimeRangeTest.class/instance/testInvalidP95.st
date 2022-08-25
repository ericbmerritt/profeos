tests
testInvalidP95

	"Test invalid p95"

	| p95 |
	p95 := 0.

	self
		should: [ WorkingTimeRange newWith: 22 and: p95 ]
		raise: AssertionFailure
		description: 'The P95 being zero didnt trigger ane exception'.
	self
		should: [ WorkingTimeRange newWith: 22 and: nil ]
		raise: AssertionFailure
		description: 'The P95 being nil didnt trigger ane exception'