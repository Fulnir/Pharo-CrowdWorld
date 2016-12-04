mongo
addToDatabase
	mongo
		at: 'key' put: key;
		at: 'locale' put: locale greaseString;
		at: 'translation' put: translation;
		yourself.
"self halt.	"
	Transcript show:key;cr.
	CWDatabase default translationsCollection add: mongo.
	(CWDatabase default getTranslationForKey: key locale: locale )
		ifNotNilDo: [ :v | 
			self mongo: v first  mongo.
			oid := self mongo at: '_id'.
			
			self addToCWNaturalLanguageTranslator.
			^ self ].
	^ self error: 'database access failed'