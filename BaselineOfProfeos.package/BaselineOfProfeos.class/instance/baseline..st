baselines
baseline: spec

	<baseline>
	spec for: #common do: [ 
		"Dependencies"
			self polyMath:  spec.
			self neoJSON: spec.
			"Packages"
		spec
			package: 'Profeos';
			package: 'Profeos-Tests' with: [ spec requires: #('Profeos') ] ]