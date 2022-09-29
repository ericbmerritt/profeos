tests
testWorker

	| estimate |
	estimate := self createEstimate.
	self assert: [ estimate worker isNotNil ]
	description: 'The worker should not be nil'