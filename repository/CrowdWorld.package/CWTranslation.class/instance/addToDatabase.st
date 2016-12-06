mongo
addToDatabase
	mongo
		at: 'key' put: key;
		at: 'locale' put: locale greaseString;
		at: 'translation' put: translation;
		yourself.
	self group ifNotEmpty:  [ mongo
		at: 'group' put: group].
	self comment ifNotEmpty: [ mongo
		at: 'comment' put: comment].
"self halt.	"
	Transcript show:'s ';show:key;cr.
	contextDB  translationsCollection add: mongo.
	Transcript show:'e '; show:key;cr.
	(contextDB getTranslationForKey: key locale: locale )
		ifNotNilDo: [ :v | 
			self mongo: v first  mongo.
			oid := self mongo at: '_id'.
			
			self addToCWNaturalLanguageTranslator.
			^ self ].
	^ self error: 'database access failed'