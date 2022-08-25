tests
testSkill

	| skill1 |
	skill1 := Skill newWith: 'a skill1'.
	self
		assert: [ skill1 skill = 'a skill1' ]
		description:
		'The internal string representation of a skill should not change'