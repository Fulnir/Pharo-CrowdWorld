*CrowdWorld-Core
localizeTo: locale
	"answer the receiver translated to the given locale id"

	^ CWNaturalLanguageTranslator translate: self forLocaleID: locale