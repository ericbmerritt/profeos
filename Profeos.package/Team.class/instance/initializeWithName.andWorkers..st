initialization
initializeWithName: aName andWorkers: someWorkers
	"Simply initializes the team data object with the provided name and some workers"	
			
	self assert: [ aName isNotEmpty ]
	description: 'The name provided can not be empty'.
	
	self assert: [ someWorkers isNotEmpty  ]
	description: 'It doesnt make sense to have a team that has no one to do work'.
	
	name := aName.
	workers := someWorkers.