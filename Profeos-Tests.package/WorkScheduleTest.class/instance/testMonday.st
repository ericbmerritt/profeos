tests
testMonday

	| schedule schedule2 holidays mon tue wed thu fri sat sun |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWithP5: 5 andP95: 11.
	tue := WorkingTimeRange newWithP5: 5 andP95: 11.
	wed := WorkingTimeRange newWithP5: 5 andP95: 11.
	thu := WorkingTimeRange newWithP5: 5 andP95: 11.
	fri := WorkingTimeRange newWithP5: 5 andP95: 11.
	sat := nil.
	sun := nil.

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
		schedule monday isNotNil and: [ schedule monday randomUnits >= 0 ] ]
		description: 'WorkSchedule getter for monday is bad'.

	schedule2 := WorkSchedule
		             newWithHolidays: holidays
		             andMon: nil
		             andTue: tue
		             andWed: wed
		             andThu: thu
		             andFri: fri
		             andSat: sat
		             andSun: sun.
	self
		assert: [ schedule2 monday isNil ]
		description: 'WorkSchedule getter for monday is not nil'