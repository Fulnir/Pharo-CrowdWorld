accessing
for: aPhrase translation: aTranslation locale: aLocale group: aGroup comment: aComment
	| aDict aGui |
	self addKnownPhrase: aPhrase.
	aDict := CWAllKnownTranslatedPhrasesDictionary
		at: aLocale greaseString
		ifAbsent: [ aDict := CWAllKnownTranslatedPhrasesDictionary at: aLocale greaseString put: Dictionary new ].
	aGui := CWTranslation new
		setLocale: aLocale;
		key: aPhrase;
		translation: aTranslation;
		yourself.
	aGroup ifNotNil: [ aGui group: aGroup ].
	aComment ifNotNil: [ aGui comment: aComment ].
	aDict at: aPhrase put: aGui.
	aGui addToDatabase