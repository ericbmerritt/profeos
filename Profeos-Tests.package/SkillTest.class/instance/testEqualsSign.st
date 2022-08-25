tests
testEqualsSign

	| skill1 skill2 |
	skill1 := Skill newWith: 'a skill1'.
	skill2 := Skill newWith: 'a skill2'.
	self
		assert: [ skill1 ~= skill2 ]
		description: 'Skill1 should not equal Skill2'.
	self
		assert: [ skill1 = skill1 ]
		description: 'Skill1 should equal Skill2'