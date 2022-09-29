I group units of work such that ladder up to a deliverable goal.

In some organizations, I may be called an Initiative or an Epic. Tech Ladders 
may depend on other Tech Ladders (as pre-requisites) or contain subsidiary 
Tech Ladders. The best way to think of a Tech Ladder is as a graph where 
Ladders are the Vertices and Rungs are the edges. Rungs identify actual 
work, and Ladders are groups of work.


## Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.
 
### Internal Representation and Key Implementation Points.

    Instance Variables
	ladders:			<TechLadder>
	prereqLadders:	<TechLadder>
	prereqRungs:		<Rung>
	rungs:			<Rung>
	skills:			<Array>
	team:			<Team>
