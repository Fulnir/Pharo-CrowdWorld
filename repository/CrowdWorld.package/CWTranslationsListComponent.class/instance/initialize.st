initialization
initialize
	super initialize.
	"selected := Set new."
	self class resetNextSuggestionJQuery.
	translationsList := SortedCollection sortBlock: [ :x :y | x translation voted == y translation voted ].
	database := CWDatabase newDefault openMongo.
	self session isLoggedIn
		ifTrue: [ (CWDatabase default getTranslationsForLocale: self session localizeLocale language) do: [ :aTranslation | self addTranslation: aTranslation ] ].
	currentLang := self session localizeLocale