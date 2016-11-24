accessing
translate: aPhrase forLocaleID: locale
	| phraseDict lang translation |
	phraseDict := self allKnownTranslatedPhrases
		at: locale greaseString
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			^ translation content ].
	translation := phraseDict
		at: aPhrase
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			^ translation content ].
	^ translation content