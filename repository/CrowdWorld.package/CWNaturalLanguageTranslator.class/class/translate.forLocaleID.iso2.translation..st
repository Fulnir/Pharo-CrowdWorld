accessing
translate: aPhrase forLocaleID: locale  iso2: aIso2 translation: otherTranslation
	| phraseDict lang translation |
	phraseDict := self allKnownTranslatedPhrases
		at: locale greaseString
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [  self addKnownPhrase: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [  self addKnownPhrase: aPhrase ].
			phraseDict
			 ].
	
	translation := phraseDict
		at: aPhrase
		ifAbsent: [ lang := locale language.
			phraseDict := self allKnownTranslatedPhrases at: lang ifAbsent: [  self addKnownPhrase: aPhrase ].
			translation := phraseDict at: aPhrase ifAbsent: [  self addKnownPhrase: aPhrase.
				(self for: aPhrase setCWTranslation: otherTranslation locale: aIso2)at:aPhrase
				
				 ].
			 ].
	^ translation translation