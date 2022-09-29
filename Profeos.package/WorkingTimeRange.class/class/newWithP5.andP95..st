instance creation
newWithP5: aP5 andP95: aP95

	"Create a new working time range from the p5 and the p95"

	^ self basicNew
		  initializeWithP5: aP5 andP95: aP95;
		  yourself