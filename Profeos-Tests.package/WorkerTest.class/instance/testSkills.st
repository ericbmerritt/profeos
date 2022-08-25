tests
testSkills

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
		description: 'Worker skills did not match passed in skills'