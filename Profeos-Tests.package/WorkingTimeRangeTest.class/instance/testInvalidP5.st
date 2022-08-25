tests
testInvalidP5

	"Test invalid p5"

	| p5 |
	p5 := 0.

	self
		should: [ WorkingTimeRange newWith: p5 and: 22 ]
		raise: AssertionFailure
		description: 'The P5 being zero didnt trigger ane exception'.
	self
		should: [ WorkingTimeRange newWith: nil and: 22 ]
		raise: AssertionFailure
		description: 'The P5 being nil didnt trigger ane exception'