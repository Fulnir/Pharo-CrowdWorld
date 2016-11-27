*CrowdWorld-Core
localize: aGUIstring

	aGUIstring ifNil: [ ^ '' ].
	^ CWNaturalLanguageTranslator translate: aGUIstring forLocaleID:  self session localizeLocale
"	^ aGUIstring 
		localizeToLang: self session localizeLang language 
		andCountry: self session localizeLang country"