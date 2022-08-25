tests
testThursday

	| schedule schedule2 holidays mon tue wed thu fri sat sun |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWith: 6 and: 11.
	tue := WorkingTimeRange newWith: 3 and: 20.
	wed := WorkingTimeRange newWith: 3 and: 6.
	thu := WorkingTimeRange newWith: 5 and: 11.
	fri := WorkingTimeRange newWith: 5 and: 11.
	sat := WorkingTimeRange newWith: 2 and: 11.
	sun := WorkingTimeRange newWith: 6 and: 11.

	schedule := WorkSchedule
		            newWithHolidays: holidays
		            andMon: mon
		            andTue: tue
		            andWed: wed
		            andThu: thu
		            andFri: fri
		            andSat: sat
		            andSun: sun.
	self
		assert: [ 
			schedule thursday isNotNil and: [ 
				schedule thursday randomUnits >= 0 ] ]
		description: 'WorkSchedule getter for thursday is bad'.

	schedule2 := WorkSchedule
		             newWithHolidays: holidays
		             andMon: mon
		             andTue: tue
		             andWed: wed
		             andThu: nil
		             andFri: fri
		             andSat: sat
		             andSun: sun.
	self
		assert: [ schedule2 thursday isNil ]
		description: 'WorkSchedule getter for thursday is not nil'