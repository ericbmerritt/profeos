tests
testRange

	| estimate |
	estimate := self createEstimate.
	self assert: [ estimate range isNotNil ]
	description: 'The estimate range is nil'