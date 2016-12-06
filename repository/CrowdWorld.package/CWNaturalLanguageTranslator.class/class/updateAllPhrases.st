phrases
updateAllPhrases
	"  CWNaturalLanguageTranslator updateAllPhrasesInDB: CWDatabase default"

	| allPhrasesInDB allMongoDocuments  aCWT |
	Transcript
		show: 'updateAllPhrases ', self class asString;
		cr.
	
	allMongoDocuments := Set new.
	allPhrasesInDB := self openMongo withAllTranslationsDo: [ :aMongoDocument | allMongoDocuments add: aMongoDocument ].
	allMongoDocuments
		do: [ :aMongoDocument | 
			| translation |
			translation := CWTranslation createFromMongoDict: aMongoDocument  withDB: self contextDB.
			self contextDB naturalLanguageTranslator for: translation key setCWTranslation: translation locale: translation locale ].
	
	self allKnownTranslatedPhrases do: [:dictForLocale |  dictForLocale  do:[:aTranslation | aTranslation oid ifNil: [ aTranslation addToDatabase ]] ].
	self allKnownPhrases
		do: [ :aPhrase | 
			self allowedLanguages
				do: [ :aLanguage | 
					(self contextDB getTranslationForKey: aPhrase locale: (WALocale language: aLanguage))
						ifNil: [aCWT := (CWTranslation newWithDB: self contextDB)
								setLocale: (WALocale language: aLanguage);
								key: aPhrase;
								yourself.
							aLanguage = 'en'
								ifTrue: [ aCWT translation: aPhrase ].
							aCWT addToDatabase.
							 Transcript
								show:
									('Added phrase {1} for language {2} to database: '
										format:
											{aPhrase.
											aLanguage});
								cr ] ] ]