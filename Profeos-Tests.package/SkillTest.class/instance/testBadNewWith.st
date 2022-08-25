tests
testBadNewWith

	"Test creation of a skill"

	self
		should: [ Skill newWith: '' ]
		raise: AssertionFailure 
		description: 'An empty skill didnt trigger an exception'