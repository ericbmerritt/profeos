instance creation
newWith: aSeed

	"creates a new strategy with a specific seed"

	^ self basicNew
		  initializeWith: aSeed;
		  yourself