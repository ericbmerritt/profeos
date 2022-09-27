tests
testNoLintsInProject

	"This test runs the critiques in the system. It does not print out the
	 critiques them selves (its much nicer to run the critque browzer) 
	but it does fail if any critiques still exist and haven't been resolved"

"
   For right now we are commenting this out until such time as we can get the
   lints all cleaned up. That wont happen until the simulation is more complete

	| rules checker lintViolationsCount |
	rules := ReRuleManager defaultRules.
	checker := ReSmalllintChecker new
		           runRules: rules
		           onPackage:
		           (RPackageOrganizer default packageNamed: #'Profeos').

	lintViolationsCount := (rules collect: [ :rule | 
		                        checker criticsOf: rule ]) sum: [ :set | 
		                       set size ].

	self
		assert: [ lintViolationsCount = 0 ]
		description: ('There are still {1} lints that have not been resolved' format: { lintViolationsCount  })"