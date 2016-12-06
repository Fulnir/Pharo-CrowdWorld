mongo
getTranslationForKey: key locale: aLocale
	| queryData results  |
	queryData := Dictionary new
		at: 'key' put: key;
		at: 'locale' put: aLocale greaseString;
		yourself.
	
	results:= self translationsCollection  query: [ :query | query where: queryData ].
	results isEmpty
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ results collect: [ :v | CWTranslation createFromMongoDict: v  withDB: self] ]
		
	