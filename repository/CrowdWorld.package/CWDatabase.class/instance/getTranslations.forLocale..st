mongo
getTranslations: aTerm forLocale: aLocale
	| result queryData regex expression options orExpressions |
	expression := aTerm , '.*'.
	options := 'i'.	" i	Case insensitivity to match upper and lower cases."
	regex := Dictionary new
		at: '$regex' put: expression;
		at: '$options' put: options;
		yourself.
	orExpressions := OrderedCollection
		with:
			(Dictionary new
				at: 'key' put: regex;
				yourself)
		with:
			(Dictionary new
				at: 'base' put: regex;
				yourself)
		with:
			(Dictionary new
				at: 'translation' put: regex;
				yourself).
	queryData := Dictionary new
		at: 'locale' put: aLocale;
		at: '$or' put: orExpressions;
		yourself.
	result := self translationsCollection query: [ :query | query where: queryData ].
	^ result collect: [ :v | CWTranslation createFromMongoDict: v withDB: self ]