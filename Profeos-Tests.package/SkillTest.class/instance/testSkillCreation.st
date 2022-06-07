tests
testSkillCreation

	"Test that skills can be created and that two skills with the same string name are equal"

	| skill1 skill2 |
	skill1 := Skill newWith: 'a skill'.
	skill2 := Skill newWith: 'a skill'.
	self assert: skill1 equals: skill2