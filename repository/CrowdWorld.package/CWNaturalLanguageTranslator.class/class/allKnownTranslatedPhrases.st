phrases
allKnownTranslatedPhrases
	"
	CWNaturalLanguageTranslator cleanUpPhrases.
	CWAllKnownPhrasesSet := nil.
	CWAllKnownTranslatedPhrasesDictionary := nil.
	CWNaturalLanguageTranslator allKnownTranslatedPhrases.
	"

	CWAllKnownTranslatedPhrasesDictionary
		ifNil: [ CWAllKnownTranslatedPhrasesDictionary := Dictionary new.
			self for: 'Cancel' translation: 'Abbruch' language: (WALocale language: 'de' country: 'DE').
			self for: 'Cancel' translation: 'Abbruch' language: (WALocale language: 'de').
			self for: 'About' translation: 'About' language: (WALocale language: 'en').
			self for: 'About' translation: 'Über' language: (WALocale language: 'de').
			self for: 'Help_Support' translation: 'Help' language: (WALocale language: 'en').
			self for: 'Help_Support' translation: 'Hilfe' language: (WALocale language: 'de') ].
	^ CWAllKnownTranslatedPhrasesDictionary