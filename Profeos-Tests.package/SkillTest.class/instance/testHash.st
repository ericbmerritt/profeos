tests
testHash

	| set skill1 skill2 |
	skill1 := Skill newWith: 'FE'.
	skill2 := Skill newWith: 'BE'.
	set := Set new.
	set add: skill1.
	set add: skill2.
	self
		assert: [ 
			{ 
				skill2.
				skill1 } = set asArray ]
		description: 'Hash doesnt seem to be working for ordered collection'