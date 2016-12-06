actions
vote
	voted := true.
	translation addUser: self session userID toSuggestion: suggestion.
	translation checkVoting.
	translation save