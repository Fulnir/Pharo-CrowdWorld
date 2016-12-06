phrases
addCountriesToKnownTranslatedPhrases
	"
	
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWDatabase default openMongo.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
		CWNaturalLanguageTranslator addCountriesToKnownTranslatedPhrases.
		CWNaturalLanguageTranslatoraddLanguagesToKnownTranslatedPhrases.
		
	CWNaturalLanguageTranslator updateAllPhrases.
	"

	self cWAllKnownTranslatedPhrasesDictionary
		ifNotNil: [ 
			"Countries"
			self countriesEnglish keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'en') group: 'Country' comment:'The  country ',aTranslation ].
			self countriesGerman keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'de') ].
			self countriesFrench  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'fr') ].
			self countriesItalian  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'it') ].
			self countriesSpanish  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'es') ].
			self countriesJapanese   keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'ja') ].
			self countriesChineseSimplified  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'zh-CN') ].
			self countriesChineseTraditional  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'zh-TW') ].
			self countriesArabic  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'ar') ].
			self countriesDutch  keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'nl') ].
			self countriesGreek keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'el') ].
			self countriesRussian keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'ru') ].
		].
	 ^ self cWAllKnownTranslatedPhrasesDictionary