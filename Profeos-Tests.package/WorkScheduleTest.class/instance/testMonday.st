tests
testMonday

	| schedule schedule2 holidays mon tue wed thu fri sat sun |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWith: 5 and: 11.
	tue := WorkingTimeRange newWith: 5 and: 11.
	wed := WorkingTimeRange newWith: 5 and: 11.
	thu := WorkingTimeRange newWith: 5 and: 11.
	fri := WorkingTimeRange newWith: 5 and: 11.
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