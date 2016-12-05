*CrowdWorld-Core
localize: aGUIstring base: baseTranslation french: frenchTranslation

	aGUIstring ifNil: [ ^ '' ].
	^ CWNaturalLanguageTranslator translate: aGUIstring forLocaleID:  self session localizeLocale  iso2: 'fr' translation: frenchTranslation
