accessing
getBaseFor: aPhrase
	| phraseDict  translation |
	phraseDict := self allKnownTranslatedPhrases at: 'en'.
	translation := phraseDict at: aPhrase ifAbsent: [ ^ self addKnownPhrase: aPhrase ].
	^ translation translation