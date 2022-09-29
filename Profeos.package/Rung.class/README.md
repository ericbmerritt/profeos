I describe a unit of work in a Tech Ladder.

I am a unit of work that is owned by a <Team>, that has an <Estimate> per team member that 
could work on me, a set of <Skill>s that describe what is needed to work on me and set of 
prerequisite <TechLadder>s and <Rung>s that must be complete before complete before an 
engineer can start to work on me can be started. 
 
## Internal Representation and Key Implementation Points.

    Instance Variables
	estimates:		<Dictionary>
	prereqLadders:		<TechLadder>
	prereqRungs:		<Rung>
	skills:		<Set>
	team:		<Team>