tests
testId

	| worker id schedule |
	schedule := WorkScheduleTest new createSchedule.
	id := UUID new.
	worker := Worker
		          newWithId: id
		          andName: 'Niklas Korpela'
		          andSkills: (Set newFrom: {  })
		          andSchedule: schedule.
	self
		assert: [ worker id = id ]
		description: 'Id does not match passed in id'