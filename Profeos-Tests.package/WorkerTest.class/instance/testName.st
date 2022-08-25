tests
testName

	| worker name schedule |
	schedule := WorkScheduleTest new createSchedule.
	name := 'Niklas Korpela'.
	worker := Worker
		          newWithName: name
		          andSkills: (Set newFrom: {  })
		          andSchedule: schedule.
	self
		assert: [ worker name = name ]
		description: 'Name does not match passed in id'