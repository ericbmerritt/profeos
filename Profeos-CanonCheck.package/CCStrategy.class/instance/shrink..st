generating
shrink: aValue

	"Produces a (possibly) empty list of all the possible immediate shrinks of the given value.

	The default implementation returns the empty list, so will not try to shrink the value. 
	
	Most implementations of shrink should try at least three things:

	* Shrink a term to any of its immediate subterms. You can use subterms to do this.
	* Recursively apply shrink to all immediate subterms. You can use recursivelyShrink to do this.
	* Type-specific shrinkings such as replacing a constructor by a simpler constructor."

	self subclassResponsibility