instance creation
new

	"Answer with an error to prevent new HolidayCalendar to be created that are not initialized"

	self error: 'Use newWithCountryCode:andYear:andDateDescriptions'