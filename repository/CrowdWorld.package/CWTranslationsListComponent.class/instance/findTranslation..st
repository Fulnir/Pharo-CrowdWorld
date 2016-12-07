as yet unclassified
findTranslation: aTerm
	self class resetNextSuggestionJQuery.
	translationsList := SortedCollection sortBlock: [ :x :y | x translation voted == y translation voted ].
	database := CWDatabase newDefault openMongo.
	self session isLoggedIn
		ifTrue: [ aTerm
				ifEmpty: [ (CWDatabase default getTranslationsForLocale: currentLang greaseString) do: [ :aTranslation | self addTranslation: aTranslation ] ]
				ifNotEmpty: [ (CWDatabase default getTranslations: aTerm forLocale: self currentLang greaseString) do: [ :aTranslation | self addTranslation: aTranslation ] ] ]