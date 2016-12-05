rendering
renderVotesOn: s
	translationComponent suggestionList
		do: [ :aSuggestionsComponent | s << (s jQuery: (aSuggestionsComponent nextJQueryID , 'voted') asSymbol) html: ' ' ]