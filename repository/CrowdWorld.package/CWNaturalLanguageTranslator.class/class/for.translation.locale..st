accessing
for: aPhrase translation: aTranslation locale: aLocale
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
	aDict at: aPhrase put: aGui.
	aGui addToDatabase