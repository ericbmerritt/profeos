tests
testSchedule

	| worker skills id schedule |
	schedule := WorkScheduleTest new createSchedule.
	skills := Set newFrom: { 
			          (Skill newWith: 'FE').
			          (Skill newWith: 'Ops') }.
	id := UUID new.
	worker := Worker
		          newWithName: 'Emily Harris'
		          andSkills: skills
		          andSchedule: schedule.

	self
		assert: [ worker schedule = schedule ]
		description:
		'The schedule we got is different from what was passed in'