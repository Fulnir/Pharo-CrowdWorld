accessing
for: aPhrase setCWTranslation: aCWTranslation locale: aLocale
	| aDict |
	"self halt."
	Transcript show:'for:  ',aPhrase,' setCWTranslation:  locale:  ' , aLocale greaseString  ;cr.	
	aDict := CWAllKnownTranslatedPhrasesDictionary
		at: aLocale greaseString
		ifAbsent: [ aDict := CWAllKnownTranslatedPhrasesDictionary at: aLocale greaseString put: Dictionary new ].
	aDict at: aPhrase put: aCWTranslation.
	
	^aDict