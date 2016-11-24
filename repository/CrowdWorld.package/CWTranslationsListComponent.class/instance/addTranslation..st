as yet unclassified
addTranslation: aTranslation
	| newTranslation |
	aTranslation lock ifFalse: [ newTranslation := CWTranslateComponent new  initializeWithTranslation: aTranslation in: translationsList.
	translationsList add: newTranslation.
	^ newTranslation ]
	