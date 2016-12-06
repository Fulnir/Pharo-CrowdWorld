phrases
allKnownPhrases
	"CWNaturalLanguageTranslator allKnownPhrases"

	self cWAllKnownPhrasesSet ifNil: [ self cWAllKnownPhrasesSet: Set new ].
	^ self cWAllKnownPhrasesSet 