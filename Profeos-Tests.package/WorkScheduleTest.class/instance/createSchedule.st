setup
createSchedule

	| holidays mon tue wed thu fri sat sun |
	holidays := { HolidayCalendarTest new initializeCalendar }.
	mon := WorkingTimeRange newWithP5: 5 andP95: 11.
	tue := WorkingTimeRange newWithP5: 5 andP95: 11.
	wed := WorkingTimeRange newWithP5: 5 andP95: 11.
	thu := WorkingTimeRange newWithP5: 5 andP95: 11.
	fri := WorkingTimeRange newWithP5: 5 andP95: 11.
	sat := nil.
	sun := nil.

	^ WorkSchedule
		  newWithHolidays: holidays
		  andMon: mon
		  andTue: tue
		  andWed: wed
		  andThu: thu
		  andFri: fri
		  andSat: sat
		  andSun: sun