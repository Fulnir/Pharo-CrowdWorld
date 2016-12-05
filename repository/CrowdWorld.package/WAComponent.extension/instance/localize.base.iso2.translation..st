*CrowdWorld-Core
localize: aGUIstring base: baseTranslation  iso2: aIso2 translation: otherTranslation

	aGUIstring ifNil: [ ^ '' ].
	^ CWNaturalLanguageTranslator translate: aGUIstring forLocaleID:  self session localizeLocale  iso2: aIso2 translation: otherTranslation
