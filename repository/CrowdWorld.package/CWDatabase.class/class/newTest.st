initialization
newTest

	test ifNotNil: [ test mongo  ifNotNil: [ test mongo close ]].
	test := self new.
	CWNaturalLanguageTranslatorForTest contextDB: test.
	test naturalLanguageTranslator: CWNaturalLanguageTranslatorForTest.
	^ test