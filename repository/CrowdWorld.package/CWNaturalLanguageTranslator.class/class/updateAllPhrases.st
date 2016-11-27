phrases
updateAllPhrases
	"  CWNaturalLanguageTranslator updateAllPhrases "

	| allPhrasesInDB allMongoDocuments |
	allMongoDocuments := Set new.
	allPhrasesInDB := CWDatabase default openMongo withAllTranslationsDo: [ :aMongoDocument | allMongoDocuments add: aMongoDocument ].
	allMongoDocuments
		do: [ :aMongoDocument | 
			| translation |
			translation := CWTranslation createFromMongoDict: aMongoDocument.
			CWNaturalLanguageTranslator for: translation key setCWTranslation: translation locale: translation locale ]