testing
testUpdateAllPhrases
	| testPhrases  newTranslation loadedTranslation |
	
	newTranslation := CWTranslation new.
	newTranslation key: 'testTranslation-1'; translation:'translatedTestTranslation-1';locale:(WALocale language: 'en').
	newTranslation addToDatabase.
	CWNaturalLanguageTranslator updateAllPhrases.
	testPhrases:=CWNaturalLanguageTranslator allKnownTranslatedPhrases at: 'en'.
	self assert: (testPhrases at:  'testTranslation-1')translation  equals:'translatedTestTranslation-1' .
	testPhrases removeKey: 'testTranslation-1'.
	loadedTranslation := CWDatabase default getTranslationForKey: 'testTranslation-1' locale: 'en'.
	self assert: loadedTranslation first  translation  equals:'translatedTestTranslation-1' .
	self assert: loadedTranslation size  = 1 .
	newTranslation removeFromDatabase.
	loadedTranslation := CWDatabase default getTranslationForKey: 'testTranslation-1' locale: 'en'.
	self assert: loadedTranslation isNil .