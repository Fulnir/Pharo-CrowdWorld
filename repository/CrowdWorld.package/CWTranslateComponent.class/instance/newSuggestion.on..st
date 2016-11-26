as yet unclassified
newSuggestion: newSuggestion on: s
	newSuggestion renderVotesOn: s.
	s << ((s jQuery id: 'suggestions-list-' , translation key) append: newSuggestion)