instance creation
newWith: aSkill

	"creates a new skill object with a valid skill"

	^ self basicNew
		  initializeWith: aSkill;
		  yourself