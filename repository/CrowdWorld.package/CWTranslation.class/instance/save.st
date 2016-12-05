mongo
save
	| queryData result |
	
	queryData := Dictionary new
		at: '_id' put: self oid;
		yourself.
	result := CWDatabase default translationsCollection query: [ :query | query where: queryData ].
	result isEmpty
		ifFalse: [ CWDatabase default translationsCollection
				replace:
					(Dictionary new
						at: '_id' put: self oid;
						yourself)
				with: mongo ]