as yet unclassified
createFromMongoDict: mongoObject
	|newObject|
	newObject := self new.
	"Key ist hier strava id"
	newObject mongo: mongoObject.
		
	newObject loadMongoData.
	^newObject