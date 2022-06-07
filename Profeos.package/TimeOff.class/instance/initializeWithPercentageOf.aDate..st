initialization
initializeWithPercentageOf: aPercentage aDate: aDate

	"Initialize this PTO with a date and the percentage of that day covered. This will usually be 100% or 50%"

	"scope: class-variables  &  class-instance-variables"

	self
		assert: [ aPercentage > 0 and: aPercentage <= 100 ]
		description: 'aPercentage does not represent a valid percentage'.
	percentage := aPercentage.
	date := aDate.