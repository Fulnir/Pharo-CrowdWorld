as yet unclassified
addSuggestion: aSuggestion translation: aTranslation
	| newSuggestion |
	newSuggestion := CWSuggestionComponent new .
	newSuggestion translationComponent: self.
	newSuggestion suggestion: aSuggestion.
	newSuggestion translation: aTranslation.
	newSuggestion voted: (aTranslation isSuggestionVoted: aSuggestion fromUser: self session userID ).
	suggestionList add: newSuggestion.
	^ newSuggestion 