initialization
default

	^ default
		ifNil: [ default := self new.
			CWNaturalLanguageTranslator contextDB: default.
			default naturalLanguageTranslator: CWNaturalLanguageTranslator ]