tests
testInitializeWithWorkerAndRange

	| estimate |
	estimate := self createEstimate.
	self
		assert: [ estimate isNotNil ]
		description: 'The return estimate is nil'