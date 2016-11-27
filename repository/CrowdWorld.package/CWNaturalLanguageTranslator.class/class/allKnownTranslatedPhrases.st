phrases
allKnownTranslatedPhrases
	"
	CWNaturalLanguageTranslator cleanUpPhrases.
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWDatabase default openMongo.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
	CWNaturalLanguageTranslator updateAllPhrases.
	"

	CWAllKnownTranslatedPhrasesDictionary
		ifNil: [ CWAllKnownTranslatedPhrasesDictionary := Dictionary new.
			self for: 'Cancel' translation: 'Abbruch' locale: (WALocale language: 'de' country: 'DE').
			self for: 'Cancel' translation: 'Abbruch' locale: (WALocale language: 'de').
			self for: 'About' translation: 'About' locale: (WALocale language: 'en').
			self for: 'About' translation: 'Über' locale: (WALocale language: 'de').
			self for: 'Help_Support' translation: 'Help' locale: (WALocale language: 'en').
			self for: 'Help_Support' translation: 'Hilfe' locale: (WALocale language: 'de') ].
	^ CWAllKnownTranslatedPhrasesDictionary