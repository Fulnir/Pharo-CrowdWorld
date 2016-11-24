phrases
updateAllPhrasesForLocale: aLocale
	| allPhrasesInDB |
	allPhrasesInDB := CWDatabase default readAllCWTranslationsForLocale: aLocale.
	allPhrasesInDB do: [:each| 
		CWNaturalLanguageTranslator  for: each key setCWTranslation: each locale: aLocale. 
		].