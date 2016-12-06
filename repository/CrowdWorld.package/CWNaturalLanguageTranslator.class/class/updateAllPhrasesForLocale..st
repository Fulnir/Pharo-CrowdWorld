phrases
updateAllPhrasesForLocale: aLocale
	| allPhrasesInDB allMongoDocuments |
	allMongoDocuments := Set new.
	self halt.	
	allPhrasesInDB := self openMongo readAllCWTranslationsForLocale: aLocale.
	allPhrasesInDB do: [:each| 
		self contextDB naturalLanguageTranslator  for: each key setCWTranslation: each locale: aLocale. 
		
		].