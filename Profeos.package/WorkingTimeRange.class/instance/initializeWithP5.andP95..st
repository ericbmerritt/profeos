initialization
initializeWithP5: aP5 andP95: aP95

	"Set up a new working time range with a p5 that is less than the p95"

	self assert: [ aP5 isNotNil ] description: 'The P5 is nil'.
	self assert: [ aP5 > 0 ] description: 'The P5 is nil'.
	self assert: [ aP95 isNotNil ] description: 'The P95 is nil'.
	self
		assert: [ aP95 > 0 ]
		description: 'The P95 is not greater than zero'.
	self
		assert: [ aP5 < aP95 ]
		description: 'The P95 is not greater than the P5'.

	p5 := aP5.
	p95 := aP95.
	self initialize