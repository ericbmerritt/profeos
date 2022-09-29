tests
testThursday

	| schedule schedule2 holidays mon tue wed thu fri sat sun |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWithP5: 6 andP95: 11.
	tue := WorkingTimeRange newWithP5: 3 andP95: 20.
	wed := WorkingTimeRange newWithP5: 3 andP95: 6.
	thu := WorkingTimeRange newWithP5: 4 andP95: 12.
	fri := WorkingTimeRange newWithP5: 5 andP95: 11.
	sat := WorkingTimeRange newWithP5: 6 andP95: 15.
	sun := WorkingTimeRange newWithP5: 5 andP95: 11.

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