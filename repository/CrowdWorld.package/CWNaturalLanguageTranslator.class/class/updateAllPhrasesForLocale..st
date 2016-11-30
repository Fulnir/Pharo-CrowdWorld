phrases
updateAllPhrasesForLocale: aLocale
	| allPhrasesInDB allMongoDocuments |
	allMongoDocuments := Set new.
	allPhrasesInDB := CWDatabase default openMongo readAllCWTranslationsForLocale: aLocale.
	allPhrasesInDB do: [:each| 
		CWNaturalLanguageTranslator  for: each key setCWTranslation: each locale: aLocale. 
		
		].