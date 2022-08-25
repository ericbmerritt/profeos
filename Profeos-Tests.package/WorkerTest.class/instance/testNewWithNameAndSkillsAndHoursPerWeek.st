tests
testNewWithNameAndSkillsAndHoursPerWeek

	| worker skills schedule |
	schedule := WorkScheduleTest new createSchedule.
	skills := Set newFrom: { 
			          (Skill newWith: 'FE').
			          (Skill newWith: 'Ops') }.
	worker := Worker
		          newWithName: 'Emily Harris'
		          andSkills: skills
		          andSchedule: schedule.
	self
		assert: [ worker skills = skills ]
		description: 'Worker skills did not match passed in skills'.
	self
		assert: [ worker name = 'Emily Harris' ]
		description: 'Worker name did not match passed in name'