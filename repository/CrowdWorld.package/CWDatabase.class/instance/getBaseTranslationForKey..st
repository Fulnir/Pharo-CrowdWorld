mongo
getBaseTranslationForKey: aKey
	| result queryData  aBaseTranslation |
	queryData := Dictionary new
		at: 'locale' put: baseLang;
		at: 'key' put: aKey;
		yourself.
	result := self translationsCollection query: [ :query | query where: queryData ].
	result
		ifEmpty: [ aBaseTranslation := CWTranslation new
				locale: (WALocale language: baseLang);
				key: aKey;
				translation: aKey;
				yourself.
			aBaseTranslation addToDatabase.
			^ aBaseTranslation ].
	^ CWTranslation createFromMongoDict: result first