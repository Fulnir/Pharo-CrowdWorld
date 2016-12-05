*CrowdWorld-Core
localize: aGUIstring base: baseTranslation german: germanTranslation

	aGUIstring ifNil: [ ^ '' ].
	^ CWNaturalLanguageTranslator translate: aGUIstring forLocaleID:  self session localizeLocale  iso2: 'de' translation: germanTranslation
