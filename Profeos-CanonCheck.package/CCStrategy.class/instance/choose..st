actions
choose: aCollection

	"Return any random item from the collection"

	self
		assert: [ aCollection isNotNil ]
		description: [ 'Only collections can be choosen from' ].
		
	^ aCollection atRandom: rng