*CrowdWorld-Core
localize: aGUIstring base: baseTranslation

	aGUIstring ifNil: [ ^ '' ].
	^ CWNaturalLanguageTranslator translate: aGUIstring forLocaleID:  self session localizeLocale base: baseTranslation
