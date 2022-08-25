I provide a mechanism to group work items together and provide defaults of several attributes for WorkItems grouped with me.

Like WorkItems, Goals have skills, and dependencies. When the goal is 'flattened out' into SimWorkItems goal based dependencies are resolved to work item dependencies.

Note thas this class is has mutators simply to get around the problem of not having pragmas to disable linters in smalltalk. There are too many fields to have them all initialized in one go so we have to initialize them in the mutators. Not great, but something to keep in mind.
