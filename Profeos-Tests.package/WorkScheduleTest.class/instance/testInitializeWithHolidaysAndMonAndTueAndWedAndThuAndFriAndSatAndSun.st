tests
testInitializeWithHolidaysAndMonAndTueAndWedAndThuAndFriAndSatAndSun

	| schedule |
	
	schedule := self createSchedule.
	
	self
		assert: [ schedule isNotNil ]
		description: 'WorkSchedule returned was nil'