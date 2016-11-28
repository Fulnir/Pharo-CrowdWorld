*CrowdWorld-Core
localize: aGUIstring
	aGUIstring ifNil: [ ^ '' ].
	^ CWNaturalLanguageTranslator translate: aGUIstring forLocaleID: self session localizeLocale