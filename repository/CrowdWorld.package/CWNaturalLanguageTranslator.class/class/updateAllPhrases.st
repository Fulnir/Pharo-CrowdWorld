phrases
updateAllPhrases
	| allPhrasesInDB |
	allPhrasesInDB := CWDatabase default
		withAllTranslationsDo: [ :aMongoDocument | 
			| translation |
			translation := CWTranslation createFromMongoDict: aMongoDocument.
			CWNaturalLanguageTranslator for: translation key setCWTranslation: translation locale: translation locale ]