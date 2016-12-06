accessing
for: aPhrase setCWTranslation: aCWTranslation locale: aLocale
	| aDict |

	Transcript show:'for:  ',aPhrase,' setCWTranslation:  locale:  ' , aLocale greaseString  ;cr.	
	aDict := self cWAllKnownTranslatedPhrasesDictionary
		at: aLocale greaseString
		ifAbsent: [ aDict := self cWAllKnownTranslatedPhrasesDictionary at: aLocale greaseString put: Dictionary new ].
	aDict at: aPhrase put: aCWTranslation.
	
	^aDict