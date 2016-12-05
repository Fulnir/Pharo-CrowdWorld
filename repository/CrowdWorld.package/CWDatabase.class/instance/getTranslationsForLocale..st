mongo
getTranslationsForLocale: aLocale
	| result queryData |
	queryData := Dictionary new
		at: 'locale' put: aLocale;
		yourself.
	result := self translationsCollection  query: [ :query | query where: queryData ].
	^ result collect: [ :v | CWTranslation createFromMongoDict: v ]