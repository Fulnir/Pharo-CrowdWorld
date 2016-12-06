as yet unclassified
allKnownTranslatedPhrases
	"
	
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWDatabase default openMongo.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
	
	CWNaturalLanguageTranslator updateAllPhrases.
	"

	self cWAllKnownTranslatedPhrasesDictionary
		ifNil: [ self cWAllKnownTranslatedPhrasesDictionary: Dictionary new.
			self for: 'Translations' translation: 'Translations' locale: (WALocale language: 'en').
			self for: 'Localization' translation: 'Localization' locale: (WALocale language: 'en').
			self for: 'CW_Key' translation: 'Key' locale: (WALocale language: 'en') group: 'CrowdWorld' comment:'The key for a phrase.'.
			
		].
	 ^ self cWAllKnownTranslatedPhrasesDictionary