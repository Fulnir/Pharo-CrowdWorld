accessing
for: aPhrase translation: aTranslation locale: aLocale group: aGroup comment: aComment
	| aDict aGui |
	self addKnownPhrase: aPhrase.
	aDict := self cWAllKnownTranslatedPhrasesDictionary
		at: aLocale greaseString
		ifAbsent: [ aDict := self cWAllKnownTranslatedPhrasesDictionary at: aLocale greaseString put: Dictionary new ].
	aGui := self newCWTranslation
		setLocale: aLocale;
		key: aPhrase;
		translation: aTranslation;
		yourself.
	aGroup ifNotNil: [ aGui group: aGroup ].
	aComment ifNotNil: [ aGui comment: aComment ].
	aDict at: aPhrase put: aGui.
	aGui addToDatabase