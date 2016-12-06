initialization
newDefault

	default ifNotNil: [ default mongo  ifNotNil: [ default mongo close ]].
	default := self new.
	CWNaturalLanguageTranslator contextDB: default.
	default naturalLanguageTranslator: CWNaturalLanguageTranslator.
	^ default