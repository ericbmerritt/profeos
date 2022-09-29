initialization
initializeWith: aSeed

	"Set the internal value of the random generator to a <Randam>"

	self
		assert: [ aSeed >= 0 ]
		description: 'Provided seed can not be zero'.
	rng := Random seed: aSeed