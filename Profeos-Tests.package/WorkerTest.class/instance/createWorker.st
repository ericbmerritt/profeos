setup
createWorker

	| skills id schedule |
	
	schedule := WorkScheduleTest new createSchedule.
	skills := Set newFrom: { 
			          (Skill newWith: 'FE').
			          (Skill newWith: 'Ops') }.
	id := UUID new.
	 ^ Worker newWithId: id
		          andName: 'Emily Harris'
		          andSkills: skills
		          andSchedule: schedule