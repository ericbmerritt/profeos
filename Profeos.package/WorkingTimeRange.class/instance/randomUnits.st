simulation
randomUnits

	"Produces a gaussian random number generator that's setup so that only 5% of random numbers are at or below the p5, and 5% at or above p90.
	
	The range between p5 and p95 is a 90% range, eg 95-5=90. The normal random distribution function by default uses a centroid of 0 and a std dev width, so we have to shift it and scale it so it's the.  The 90 is the scaling part"

	| mean stddev units |
	mean := p95 + p5 / 2.0.
	stddev := p95 - mean / self class p90PercentileFactor.
	units := PMGaussianGenerator new
		         standardDeviation: stddev;
		         mean: mean;
		         next.
	"These are time units, the random number can return zero based on what p5 and p95 is intered
	because we have no time travel device we can't have things go backwards in time, so we always
	set a floor of zero"
	units < 0
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ units ]