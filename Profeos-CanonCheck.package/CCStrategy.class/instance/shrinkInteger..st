generating
shrinkInteger: aValue

	"Correctly shrinks an integer"

	| result quo targetValue intermediate |
	aValue = 0 ifTrue: [ #(  ) ].
	result := OrderedCollection new.
	aValue < 0 ifTrue: [ result add: aValue abs ].
	quo := aValue quo: 2.
	intermediate := quo.
	result add: 0.
	result add: quo.
	targetValue := aValue abs - 1.
	[ intermediate abs < targetValue ] whileTrue: [ 
		quo := quo quo: 2.
		intermediate := aValue - quo.
		result add: intermediate ].

	^ result