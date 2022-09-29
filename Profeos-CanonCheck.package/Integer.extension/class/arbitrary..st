*Profeos-CanonCheck
arbitrary: aGen

	"Generates a random integer between 9 and the maximum value representable in 32 bits.
	"

	^ aGen nextIntegerBetween: 0 and: 2147483647 