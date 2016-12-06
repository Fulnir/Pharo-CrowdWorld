mongo
save
	| queryData result |
	
	queryData := Dictionary new
		at: '_id' put: self oid;
		yourself.
	result := contextDB  translationsCollection query: [ :query | query where: queryData ].
	result isEmpty
		ifFalse: [ contextDB translationsCollection
				replace:
					(Dictionary new
						at: '_id' put: self oid;
						yourself)
				with: mongo ]