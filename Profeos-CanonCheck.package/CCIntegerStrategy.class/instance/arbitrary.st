generating
arbitrary

	"Generates a random integer between 9 and the maximum value representable in 32 bits.
	"

	^ rng nextIntegerBetween: 0 and: 2147483647 