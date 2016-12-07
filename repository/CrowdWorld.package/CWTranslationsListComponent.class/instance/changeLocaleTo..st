initialization
changeLocaleTo: aLocale
	currentLang := aLocale .	
		
	"selected := Set new."
	self class resetNextSuggestionJQuery.
	translationsList := SortedCollection sortBlock: [ :x :y | x translation voted == y translation voted ].
	database := CWDatabase newDefault openMongo.
	self session isLoggedIn
		ifTrue: [ (CWDatabase default getTranslationsForLocale: aLocale greaseString )
				do: [ :aTranslation | self addTranslation: aTranslation ] ]