baselines
baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'github://fulnir/CrowdWorld:master/repository'.
		spec 
			configuration: 'Seaside30' with: [
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: '3.2.1';
					repository: 'http://smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main' ];
			project: 'MongoTalk' with: [
				spec
					className: 'ConfigurationOfMongoTalk';
					versionString: #'stable' ];
			baseline: 'MaterialDesignLite' with: [
				spec
					loads: #();
					repository: 'github://DuneSt/MaterialDesignLite:master/src' ].
		spec 
			package: 'CrowdWorld-Core' with: [
				spec requires: #('Seaside3' 'MongoTalk' 'MaterialDesignLite' ). ];
			package: 'CrowdWorld-Tests''CrowdWorld-Example'.
		spec 
			group: 'default' with: #('Core' );
			group: 'Core' with: #('cc' );
			group: 'Tests' with: #('CrowdWorld-Tests' );
			group: 'Core Tests' with: #('Core' 'Tests' ). ].
