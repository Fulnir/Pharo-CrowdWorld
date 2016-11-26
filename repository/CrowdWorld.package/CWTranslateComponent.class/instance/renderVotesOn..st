rendering
renderVotesOn: s

	self suggestionList
		do: [ :aSuggestionsComponent | s << (s jQuery: (aSuggestionsComponent nextJQueryID , 'voted') asSymbol) html: ' ' ]