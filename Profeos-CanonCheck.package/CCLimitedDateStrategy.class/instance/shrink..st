generating
shrink: aDate

	| collectionOfJulianDays |
	collectionOfJulianDays := self shrinkInteger: aDate julianDayNumber.
	^ collectionOfJulianDays
		  select: [ :julianDay | julianDay >= self class minDays ]
		  thenCollect: [ :julianDay | Date julianDayNumber: julianDay ]