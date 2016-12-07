phrases
addLanguagesToKnownTranslatedPhrases
	"
	
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWDatabase default openMongo.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
		CWNaturalLanguageTranslator addCountriesToKnownTranslatedPhrases.
		CWNaturalLanguageTranslatoraddLanguagesToKnownTranslatedPhrases.
	
	CWNaturalLanguageTranslator languagesEnglishNative.
	"

	self cWAllKnownTranslatedPhrasesDictionary
		ifNotNil: [ 
			"Language"
			self languagesEnglishNative keysAndValuesDo: [  :aISO2 :aNameDict| 
				self for:(aNameDict at: 'name') translation:(aNameDict at: 'name')  locale: (WALocale language: 'en') group: 'Language' comment:'The language ', (aNameDict at: 'name'), ' (',(aNameDict at: 'nativeName'),')'.
				self for:(aNameDict at: 'name') translation:(aNameDict at: 'nativeName')  locale: (WALocale language: aISO2).
				].
		].
	 ^ self cWAllKnownTranslatedPhrasesDictionary