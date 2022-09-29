generating
shrink: aValue

	| intermediateInts |
	intermediateInts := self shrinkInteger: aValue asInteger.
	^ intermediateInts collect: [ :int | Character value: int ]