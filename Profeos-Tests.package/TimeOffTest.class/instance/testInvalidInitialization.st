tests
testInvalidInitialization

	"Test invalid initialization with a bad percent"

	| validDate |
	validDate := Date newDay: 20 year: 2015.
	self
		should: [ TimeOff newWithPercentageOf: 9999 aDate: validDate ]
		raise: AssertionFailure 
		description: 'Didnt raise an exception with an invalid percentage'