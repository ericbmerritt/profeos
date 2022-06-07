accessing
skill: aSkill

	"Set the internal value of the skill variable to aSkill"

	aSkill size <= 0 ifTrue: [ 
		^ BadArgument new signal: 'Provided skill is empty' ].
	skill := aSkill