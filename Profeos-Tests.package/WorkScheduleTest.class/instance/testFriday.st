tests
testFriday

	| schedule schedule2 mon tue wed thu fri sat sun holidays |
	holidays := HolidayCalendarTest new initializeCalendar.
	mon := WorkingTimeRange newWith: 6 and: 11.
	tue := WorkingTimeRange newWith: 3 and: 20.
	wed := WorkingTimeRange newWith: 3 and: 6.
	thu := WorkingTimeRange newWith: 5 and: 11.
	fri := WorkingTimeRange newWith: 5 and: 11.
	sat := nil.
	sun := WorkingTimeRange newWith: 5 and: 11.

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