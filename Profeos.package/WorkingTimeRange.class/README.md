I represent a low and high range of working time and can give a random value within that time fram.

The low value is called the p5. That represents your five percent confidence value. The high 
value represents your ninety-fifth percent confidence range. For example, lets say you have
a child. That child has a loose tooth that is going to fall out sometime soon. You could say
that I am five percent confident that that tooth is going to fall out tomorrow, but I am 
ninety five percent confidence that it will fall out by the end of the week. 

I am designed to be immutable following the pattern defined for the Profeos package.

## Public API and Key Messages

- newWith:and:
- randomUnits
- p5
- p95

## How to create instances.

    WorkingTimeRang newWith: p5 and: p95
 
## Internal Representation and Key Implementation Points.

    Instance Variables
	p5:	 <Number>
	p95: <Number>
