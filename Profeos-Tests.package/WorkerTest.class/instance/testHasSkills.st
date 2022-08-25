tests
testHasSkills

	| worker extantSkills allSkills missingSkills schedule |
	schedule := WorkScheduleTest new createSchedule.
	allSkills := Set newFrom: { 
			             (Skill newWith: 'FE').
			             (Skill newWith: 'Ops') }.
	extantSkills := Set newFrom: { (Skill newWith: 'FE') }.
	missingSkills := Set newFrom: { (Skill newWith: 'BE') }.
	worker := Worker
		          newWithName: 'Emily Harris'
		          andSkills: allSkills
		          andSchedule: schedule.
	self
		assert: [ worker hasSkills: allSkills ]
		description: 'Worker did not have all skills'.
	self
		assert: [ worker hasSkills: extantSkills ]
		description:
		'Worker did not have the extant skills they should have'.
	self
		assert: [ (worker hasSkills: missingSkills) not ]
		description: 'Worker had skills they should not have had'