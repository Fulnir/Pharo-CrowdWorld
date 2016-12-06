as yet unclassified
createFromMongoDict: mongoObject withDB: aDB
	| newObject suggestions |
	newObject := self newWithDB: aDB.
	"Key ist hier strava id"

	mongoObject
		at: 'suggestions'
		ifPresent: [ suggestions := Dictionary new.
			(mongoObject at: 'suggestions') keysAndValuesDo: [ :aKey :aValue | suggestions at: aKey put: (OrderedCollection newFrom: aValue) ].
			mongoObject at: 'suggestions' put: suggestions ].
	newObject mongo: mongoObject.
	newObject loadMongoData.
	^ newObject