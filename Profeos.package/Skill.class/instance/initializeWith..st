accessing
initializeWith: aSkill
	"Set the internal value of the skill variable to aSkill"

	self
		assert: [ aSkill isNotEmpty  ]
		description: 'Provided skill is empty'.
	skill := aSkill