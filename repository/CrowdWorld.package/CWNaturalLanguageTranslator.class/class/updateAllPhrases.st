phrases
updateAllPhrases
	"  CWNaturalLanguageTranslator updateAllPhrases "

	| allPhrasesInDB allMongoDocuments  aCWT |
	Transcript
		show: 'updateAllPhrases ';
		cr.
	allMongoDocuments := Set new.
	allPhrasesInDB := CWDatabase default openMongo withAllTranslationsDo: [ :aMongoDocument | allMongoDocuments add: aMongoDocument ].
	allMongoDocuments
		do: [ :aMongoDocument | 
			| translation |
			translation := CWTranslation createFromMongoDict: aMongoDocument.
			CWNaturalLanguageTranslator for: translation key setCWTranslation: translation locale: translation locale ].
	
	self allKnownTranslatedPhrases do: [ :aTranslation | aTranslation oid ifNil: [ aTranslation addToDatabase ] ].
	self allKnownPhrases
		do: [ :aPhrase | 
			self allowedLanguages
				do: [ :aLanguage | 
					(CWDatabase default getTranslationForKey: aPhrase locale: (WALocale language: aLanguage))
						ifNil: [ aCWT := CWTranslation new
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