instance creation
newWith: aP5 and: aP95

	"Create a new working time range from the p5 and the p95"

	^ self basicNew
		  initializeWith: aP5 and: aP95;
		  yourself