instance creation
newWithHolidays: someCalendars andMon: monSched andTue: tueSched andWed: wedSched andThu: thuSched andFri: friSched andSat: satSched andSun: sunSched

	^ self basicNew
		  initializeWithHolidays: someCalendars
		  andMon: monSched
		  andTue: tueSched
		  andWed: wedSched
		  andThu: thuSched
		  andFri: friSched
		  andSat: satSched
		  andSun: sunSched;
		  yourself