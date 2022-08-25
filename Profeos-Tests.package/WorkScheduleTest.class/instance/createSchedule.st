setup
createSchedule

	| holidays mon tue wed thu fri sat sun |
	holidays := { HolidayCalendarTest new initializeCalendar }.
	mon := WorkingTimeRange newWith: 5 and: 11.
	tue := WorkingTimeRange newWith: 5 and: 11.
	wed := WorkingTimeRange newWith: 5 and: 11.
	thu := WorkingTimeRange newWith: 5 and: 11.
	fri := WorkingTimeRange newWith: 5 and: 11.
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