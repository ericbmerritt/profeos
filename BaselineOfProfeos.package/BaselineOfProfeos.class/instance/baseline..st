baselines
baseline: spec

	<baseline>
	spec
		for: #common do: [ "Dependencies"
			self polyMath: spec.
			self neoJSON: spec.
			self faker: spec.
			self seaside: spec.
			self magritte: spec.
			"Packages"
			spec
				package: 'Profeos'
				with: [ spec requires: #( 'NeoJSON' 'PolyMath' ) ];
				package: 'Profeos-Tests'
				with: [ spec requires: #( 'Profeos' 'Faker' ) ] ];
		package: 'Profeos-UI' with: [ 
		spec
			requires: #( 'Profeos' 'Seaside3' 'Magritte' );
			loads: #( Core 'Magritte-Seaside' ) ]