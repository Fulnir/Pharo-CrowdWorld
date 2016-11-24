accessing
for: aPhrase setCWTranslation: aCWTranslation locale: aLocale
	| aDict |
	aDict := CWAllKnownTranslatedPhrasesDictionary
		at: aLocale greaseString
		ifAbsent: [ aDict := CWAllKnownTranslatedPhrasesDictionary at: aLocale greaseString put: Dictionary new ].
	aDict at: aPhrase put: aCWTranslation