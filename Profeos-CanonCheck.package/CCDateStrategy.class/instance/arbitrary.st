generating
arbitrary

	"Generates a valid date starting from  12:00 January 1, 4713 BC (Julian day start)
     and ending on 1 January 2500"

	| julianDays |
	julianDays := rng
		              nextIntegerBetween: self class minDays
		              and: self class maxDays.
	^ Date julianDayNumber: julianDays