testing
testAllTranslations
	| translationDict |
	"baseLang"
	self assert: cwDatabase baseLang equals: 'en'.

	"allMongoDocuments := Set new.
	allPhrasesInDB := CWDatabase default
		withAllTranslationsDo: [ :aMongoDocument |  ]"

	"	cwDatabase	withAllTranslationsDo:  [ :each | ].
"
	cwDatabase translationsCollection do: [ :each | self assert: (each at: 'locale') size >= 2 ].
	cwDatabase withAllTranslationsDo: [ :each | self assert: (each at: 'locale') size >= 2 ]