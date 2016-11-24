mongo
openMongoTest
	mongo := Mongo host: 'localhost' port: 27017.
	mongo isOpen
		ifFalse: [ mongo open.
			database := mongo databaseNamed: 'crowdworld_test_database'.
			translationsCollection := database getCollection: 'translationsCollection' ].
	translationsCollection size = 0
		ifTrue: [ translationsCollection addAll: crowdDictionaryList ].
	