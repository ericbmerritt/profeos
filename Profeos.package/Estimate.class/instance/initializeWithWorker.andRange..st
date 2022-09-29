initialization
initializeWithWorker: aWorker andRange: aRange
			
	self assert: [ aWorker isNotNil ]
	description: 'The provided worker can not be nil'.
	
	self assert: [ aRange isNotNil ]
	description: 'The provided range can not be nil'.
	
	worker := aWorker.
	range := aRange.