mongo
getTranslationsForLanguage: aLocalizeLang
	| result queryData |
	queryData := Dictionary new
		at: 'lang' put: aLocalizeLang;
		yourself.
	result := CWDatabase default translationsCollection  query: [ :query | query where: queryData ].
	^ result collect: [ :v | CWTranslation createFromMongoDict: v ]