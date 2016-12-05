phrases
allKnownTranslatedPhrases
	"
	
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWDatabase default openMongo.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
	
	CWNaturalLanguageTranslator updateAllPhrases.
	"

	CWAllKnownTranslatedPhrasesDictionary
		ifNil: [ CWAllKnownTranslatedPhrasesDictionary := Dictionary new.
			self for: 'Translations' translation: 'Translations' locale: (WALocale language: 'en').
			self for: 'Localization' translation: 'Localization' locale: (WALocale language: 'en').
			self for: 'CW_Key' translation: 'Key' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The key for a phrase.'.
			self for: 'CW_Base' translation: 'Base' locale: (WALocale language: 'en' ) group: 'CrowdWorld' comment:'The base language is english.'.
			self for: 'CW_Key' translation: 'Key' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The key for a phrase.'.
			self for: 'CW_Group' translation: 'Group' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'Phrases group like countries. languages ...'.
			self for: 'CW_Translation' translation: 'Translation' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The current tranlation for a phrase'.
			self for: 'CW_SuggestTranslation' translation: 'Suggest a new translation' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The placeholder text for the suggestion field.'.
			self for: 'Suggestion' translation: 'Suggestion' locale: (WALocale language: 'en').
			self for: 'Help_Support' translation: 'Help' locale: (WALocale language: 'en').			
			self for: 'About' translation: 'About' locale: (WALocale language: 'en').
			self for: 'Cancel' translation: 'Cancel' locale: (WALocale language: 'en').
			
			self for: 'About' translation: 'Über' locale: (WALocale language: 'de').
			self for: 'Cancel' translation: 'Abbruch' locale: (WALocale language: 'de').
			self for: 'Help_Support' translation: 'Hilfe' locale: (WALocale language: 'de').	
			self for: 'Cancel' translation: 'Abbruch' locale: (WALocale language: 'de' country: 'DE').
			self for: 'Translations' translation: 'Übersetzung' locale: (WALocale language: 'de').
			self for: 'Localization' translation: 'Lokalisierung' locale: (WALocale language: 'de').
			self for: 'Key' translation: 'Schlüssel' locale: (WALocale language: 'de').
			self for: 'Base' translation: 'Basis' locale: (WALocale language: 'de').
			self for: 'Suggestion' translation: 'Vorschläge' locale: (WALocale language: 'de').
			
			self welcome.
			"Countries"
			self countriesEnglish keysAndValuesDo: [ :aKey :aTranslation |  self for: aKey translation: aTranslation locale: (WALocale language: 'en') group: 'Country' comment:'The englisch name for the country ',aTranslation ].
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
			"Language"
			self languagesEnglishNative keysAndValuesDo: [  :aISO2 :aNameDict| 
				self for:(aNameDict at: 'name') translation:(aNameDict at: 'name')  locale: (WALocale language: 'en') group: 'Language' comment:'A language name'.
				self for:(aNameDict at: 'name') translation:(aNameDict at: 'nativeName')  locale: (WALocale language: aISO2).
				].
		].
	 ^ CWAllKnownTranslatedPhrasesDictionary