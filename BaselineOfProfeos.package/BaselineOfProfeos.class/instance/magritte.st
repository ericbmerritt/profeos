baselines
magritte

	Metacello new
		baseline: 'Magritte';
		repository: 'github://magritte-metamodel/magritte:v3.8';
		onConflictUseLoaded;
		lock;
		load:#( default Seaside )