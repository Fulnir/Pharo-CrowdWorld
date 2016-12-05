actions
addSuggestion: newSuggestion

	| newTranslation |
	newTranslation := translation.
	"newTranslation addSuggestion: newSuggestion."
	newTranslation addUser: self session userID toSuggestion: newSuggestion.
	newTranslation save.
	^self addSuggestion: newSuggestion translation: newTranslation.
	