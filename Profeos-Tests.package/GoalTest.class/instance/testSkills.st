tests
testSkills

	| skills goal |
	skills := Set newFrom: { Skill newWith: 'FE' }.
	goal := Goal new.
	goal skills: skills.
	self assert: [ skills = goal skills ]
		description: 'Skills passed in was not recovered'.