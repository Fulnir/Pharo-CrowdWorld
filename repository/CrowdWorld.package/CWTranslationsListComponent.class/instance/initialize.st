initialization
initialize
	super initialize.
	selected := Set new.
	translationsList := SortedCollection sortBlock: [ :x :y | x translation voted == y translation voted ].
	database := CWDatabase newDefault openMongo.
	(CWDatabase default getTranslationsForLocale: self session localizeLang language) do: [ :aTranslation | self addTranslation: aTranslation ]