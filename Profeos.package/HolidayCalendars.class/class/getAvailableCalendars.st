side-effects
getAvailableCalendars

	"Get a list of available national calendars as a dictionary of country code and name"

	<ignoreForCoverage>
	^ ZnClient new
		  url: 'https://date.nager.at/api/v3/AvailableCountries' asUrl;
		  enforceHttpSuccess: true;
		  accept: ZnMimeType applicationJson;
		  contentReader: [ :entity | 
			  NeoJSONReader fromString: entity readStream ];
		  get