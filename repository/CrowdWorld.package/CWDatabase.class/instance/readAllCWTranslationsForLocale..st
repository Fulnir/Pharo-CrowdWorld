mongo
readAllCWTranslationsForLocale: aLocale
	| data results |
	data := Dictionary new.
	data at: 'locale' put: aLocale greaseString.
	
	results := self translationsCollection query: [ :query | query where: data ].	
	^ results collect: [ :each | CWTranslation buildFromDatabaseRecord: each ]