initialization
initializeWithHolidays: someCalendars andMon: monSched andTue: tueSched andWed: wedSched andThu: thuSched andFri: friSched andSat: satSched andSun: sunSched

	holidayCalendars := someCalendars.
	dayDefaults := Dictionary newFrom: { 
			               (#Monday -> monSched).
			               (#Tuesday -> tueSched).
			               (#Wednesday -> wedSched).
			               (#Thursday -> thuSched).
			               (#Friday -> friSched).
			               (#Saturday -> satSched).
			               (#Sunday -> sunSched) }.
	self initialize