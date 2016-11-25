actions
vote
	voted := true.
	translation addUser: self session userID toSuggestion: suggestion.
	"self halt."
	translation save