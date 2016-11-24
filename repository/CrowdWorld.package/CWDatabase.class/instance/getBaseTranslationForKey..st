mongo
getBaseTranslationForKey: aKey
	| result queryData   |
	
	queryData := Dictionary new
		at: 'lang' put:baseLang;
		at: 'key' put:aKey;
		yourself.
	result := CWDatabase default translationsCollection  query: [ :query | query where: queryData ].
	^ result first