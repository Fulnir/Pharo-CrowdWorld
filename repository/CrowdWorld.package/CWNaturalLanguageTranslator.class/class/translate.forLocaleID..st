accessing
translate: aPhrase forLocaleID: locale
	| phraseDict lang translation |
	phraseDict := self allKnownTranslatedPhrases
		at: locale greaseString
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [ ^ self getBaseFor:  aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [ ^ self getBaseFor: aPhrase ].
			^ translation translation ].
	translation := phraseDict
		at: aPhrase
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [ ^ self getBaseFor: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [ ^ self getBaseFor: aPhrase ].
			^ translation translation ].
	^ translation translation