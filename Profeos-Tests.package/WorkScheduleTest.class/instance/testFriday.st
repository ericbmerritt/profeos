tests
testFriday

	| schedule schedule2 mon tue wed thu fri sat sun holidays |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWithP5: 6 andP95: 11.
	tue := WorkingTimeRange newWithP5: 3 andP95: 20.
	wed := WorkingTimeRange newWithP5: 3 andP95: 6.
	thu := WorkingTimeRange newWithP5: 5 andP95: 11.
	fri := WorkingTimeRange newWithP5: 5 andP95: 11.
	sat := nil.
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
		schedule friday isNotNil and: [ schedule friday randomUnits >= 0 ] ]
		description: 'WorkSchedule getter for friday is bad'.

	schedule2 := WorkSchedule
		             newWithHolidays: holidays
		             andMon: mon
		             andTue: tue
		             andWed: wed
		             andThu: thu
		             andFri: nil
		             andSat: sat
		             andSun: sun.
	self
		assert: [ schedule2 friday isNil ]
		description: 'WorkSchedule getter for friday is not nil'