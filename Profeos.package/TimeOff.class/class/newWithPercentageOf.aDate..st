instance creation
newWithPercentageOf: aPercentage aDate: aDate
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	| ptoInstance |
	ptoInstance := self basicNew.
	ptoInstance initializeWithPercentageOf: aPercentage aDate: aDate.
	^ ptoInstance .
	
	