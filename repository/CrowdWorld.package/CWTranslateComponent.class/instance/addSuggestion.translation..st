as yet unclassified
addSuggestion: aSuggestion translation: aTranslation
	| newSuggestion |
	newSuggestion := CWSuggestionComponent new .
	newSuggestion suggestion: aSuggestion.
	newSuggestion translation: aTranslation.
	suggestionList add: newSuggestion.
	^ newSuggestion 