accessing
translate: aPhrase forLocaleID: locale iso2: aIso2 translation: otherTranslation
	| phraseDict lang translation |
	self
		for: aPhrase
		translation: otherTranslation
		locale: (WALocale fromString: aIso2)
		group: nil
		comment: nil.
	phraseDict := self allKnownTranslatedPhrases
		at: locale greaseString
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			^ translation translation ].
	translation := phraseDict
		at: aPhrase
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [  ].
			^ translation translation ].
	^ translation translation