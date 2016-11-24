*CrowdWorld-Core
localize: aGUIstring

	aGUIstring ifNil: [ ^ '' ].
	^ aGUIstring 
		localizeToLang: self session localizeLang language 
		andCountry: self session localizeLang country