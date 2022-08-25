calculating
randomHoursFor: aDate

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	^ (holidayCalendars anySatisfy: [ :calendar | 
		   calendar isHoliday: aDate ])
		  ifTrue: [ 0 ]
		  ifFalse: [ 
			  | workingTime |
			  workingTime := dayDefaults at: aDate dayOfWeekName.
			  ^ workingTime ifNotNil: [ workingTime randomUnits ] ifNil: [ 0 ] ]