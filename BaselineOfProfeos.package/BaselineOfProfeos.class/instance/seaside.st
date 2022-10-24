baselines
seaside

	Metacello new
		baseline: 'Seaside3';
		repository: 'github://SeasideSt/Seaside:v3.4.8/repository';
		onConflictUseLoaded;
		lock;
		load