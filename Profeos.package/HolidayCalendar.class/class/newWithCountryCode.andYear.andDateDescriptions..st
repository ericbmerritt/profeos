instance creation
newWithCountryCode: aCode andYear: aYear andDateDescriptions: someDates

	^ self basicNew
		  initializeWithCountryCode: aCode
		  andYear: aYear
		  andDateDescriptions: someDates;
		  yourself
	