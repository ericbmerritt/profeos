generating
shrink: aDate

	| collectionOfJulianDays |
	collectionOfJulianDays := self shrinkInteger: aDate julianDayNumber.
	^ collectionOfJulianDays collect: [ :julianDays | Date julianDayNumber: julianDays ]