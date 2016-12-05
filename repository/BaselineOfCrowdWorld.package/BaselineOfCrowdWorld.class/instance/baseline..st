baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside30: spec;
				mongoTalk: spec;
				neoJSON: spec;
				materialDesignLite: spec.
			spec
				package: #'CrowdWorld';
				package: #'CrowdWorld' with: [ spec requires: #('Seaside30' 'MongoTalk'  'NeoJSON' 'MaterialDesignLite' ) ].
			"spec
				group: 'default' with: #('CrowdWorld-Core' 'CrowdWorld-Tests' 'CrowdWorld-Example')" ]