tests
testSunday

	| schedule schedule2 holidays mon tue wed thu fri sat sun |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWith: 6 and: 11.
	tue := WorkingTimeRange newWith: 3 and: 20.
	wed := WorkingTimeRange newWith: 3 and: 6.
	thu := WorkingTimeRange newWith: 4 and: 12.
	fri := WorkingTimeRange newWith: 5 and: 11.
	sat := WorkingTimeRange newWith: 6 and: 15.
	sun := WorkingTimeRange newWith: 2 and: 16.

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
		schedule sunday isNotNil and: [ schedule sunday randomUnits >= 0 ] ]
		description: 'WorkSchedule getter for sunday is bad'.

	schedule2 := WorkSchedule
		             newWithHolidays: holidays
		             andMon: mon
		             andTue: tue
		             andWed: wed
		             andThu: thu
		             andFri: fri
		             andSat: sat
		             andSun: nil.
	self
		assert: [ schedule2 sunday isNil ]
		description: 'WorkSchedule getter for sunday is not nil'