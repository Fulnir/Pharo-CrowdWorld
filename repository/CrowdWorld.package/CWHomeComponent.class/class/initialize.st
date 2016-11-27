initialization
initialize
	| application |
	"  
	WAAdmin clearConfigurationCaches .
	CWHomeComponent initialize.
	"
	application := (WAAdmin register: self asApplicationAt: self appName).
	application
		addLibrary: JQ2DevelopmentLibrary ;
		"addLibrary: JQUiDevelopmentLibrary ;"
		addLibrary: MDLLibrary;
		"addLibrary: TBSDeploymentLibrary;"
		addLibrary: CWLibrary.
	application preferenceAt: #sessionClass put: CWSession.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	^ application