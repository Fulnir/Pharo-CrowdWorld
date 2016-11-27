mongo
removeFromDatabase
	| queryData |
	queryData := Dictionary new
		at: 'locale' put: locale greaseString;
		at: 'key' put: key;
		at: 'translation' put: translation;
		yourself.
	CWDatabase default  translationsCollection remove: queryData