tests
testInitializeWithIdAndNameAndSkillsAndSchedule

	| worker skills id schedule |
	schedule := WorkScheduleTest new createSchedule.
	skills := Set newFrom: { 
			          (Skill newWith: 'FE').
			          (Skill newWith: 'Ops') }.
	id := UUID new.
	worker := Worker
		          newWithId: id
		          andName: 'Emily Harris'
		          andSkills: skills
		          andSchedule: schedule.
	self
		assert: [ worker id = id ]
		description: 'Id does not match passed in id'.
	self
		assert: [ worker skills = skills ]
		description: 'Worker skills did not match passed in skills'.
	self
		assert: [ worker name = 'Emily Harris' ]
		description: 'Worker name did not match passed in name'