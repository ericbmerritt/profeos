baselines
magritte: spec

	spec baseline: 'Magritte' with: [ 
		spec
			repository: 'github://magritte-metamodel/magritte:v3.8';
			loads: #( default Seaside ) ]