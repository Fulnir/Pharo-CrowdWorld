testing
testUpdateAllPhrases
	| testPhrases  newTranslation loadedTranslation |
	
	"Create Dictionary"
	cwDatabase naturalLanguageTranslator allKnownTranslatedPhrases.
	
	newTranslation := CWTranslation newWithDB: cwDatabase .
	newTranslation key: 'testTranslation-1'; translation:'translatedTestTranslation-1';locale:(WALocale language: 'en').
	newTranslation addToDatabase.
	
	cwDatabase naturalLanguageTranslator updateAllPhrases.
	
	testPhrases:= CWNaturalLanguageTranslatorForTest allKnownTranslatedPhrases at: 'en'.
	self assert: (testPhrases at:  'testTranslation-1')translation  equals:'translatedTestTranslation-1' .
	testPhrases removeKey: 'testTranslation-1'.
	loadedTranslation := cwDatabase getTranslationForKey: 'testTranslation-1' locale: 'en'.
	self assert: loadedTranslation first  translation  equals:'translatedTestTranslation-1' .
	self assert: loadedTranslation size  = 1 .
	newTranslation removeFromDatabase.
	loadedTranslation := cwDatabase getTranslationForKey: 'testTranslation-1' locale: 'en'.
	self assert: loadedTranslation isNil .