tests
testInitialization

	"Test that valid arguments do not cause problems during initialization"


	| validDate |
	validDate := Date newDay: 20 year: 2015.
	TimeOff newWithPercentageOf: 99 aDate: validDate. 