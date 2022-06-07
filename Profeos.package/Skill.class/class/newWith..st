instance creation
newWith: aSkill
	"creates a new skill object with a valid skill"
	| newInstance |	
	newInstance := self new.
	newInstance skill: aSkill.
	^newInstance.
	
	