setup
createEstimate

	| worker range |
	worker := WorkerTest new createWorker.
	range := WorkingTimeRange newWithP5: 1 andP95: 10.
	^ Estimate newWithWorker: worker andRange: range