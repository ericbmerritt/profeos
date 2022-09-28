tests
testDocCommentsAllWork

	"This runs tests all the doc comments for profeos infrastruture. Doc comments look like the following
	 (1 + 1) >>> 2"

	| classes docComments |
	classes := (RPackageOrganizer default packageNamed: 'Profeos')
		           definedClasses.

	docComments := classes flatCollect: [ :class | 
		               class methods flatCollect: [ :method | 
			               method ast pharoDocCommentNodes collect: [ :comment | 
				               Dictionary newFrom: { 
						               ('method' -> method name).
						               ('comment' -> comment) } ] ] ].

	docComments do: [ :test | 
		| commentTest |
		commentTest := CommentTestCase for: (test at: 'comment').
		self
			assert: [ commentTest expectedValue = commentTest currentValue ]
			description: ('Examples failed to run for comments at {1}' format:
					 { (test at: 'method') }) ]