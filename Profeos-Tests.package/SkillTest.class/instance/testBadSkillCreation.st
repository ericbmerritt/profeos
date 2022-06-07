tests
testBadSkillCreation

	"Test creation of a skill"

	self
		should: [ Skill newWith: '' ]
		raise: BadArgument
		description: 'An empty skill didnt trigger an exception'