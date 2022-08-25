side-effects
getCalendarFor: aCountryCode forYear: aYear

	"Get the calendar for a particular country code and a particular year"

	<ignoreForCoverage>
	| url dates |
	self
		assert: [ ISOCountryCodes validCode: aCountryCode ]
		description: 'Provided ISO Country Code is not valid'.

	url := ('https://date.nager.at/api/v3/PublicHolidays/{1}/{2}' 
		        format: { 
				        aYear.
				        aCountryCode }) asUrl.
	dates := ZnClient new
		         url: url;
		         enforceHttpSuccess: true;
		         accept: ZnMimeType applicationJson;
		         contentReader: [ :entity | 
			         NeoJSONReader fromString: entity readStream ];
		         get.
	^ HolidayCalendar
		  newWithCountryCode: aCountryCode
		  andYear: aYear
		  andDateDescriptions: dates