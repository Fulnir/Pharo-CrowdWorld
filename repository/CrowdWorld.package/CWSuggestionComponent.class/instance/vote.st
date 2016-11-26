actions
vote
	voted := true.
	translation addUser: self session userID toSuggestion: suggestion.
	Transcript cr; show: suggestion.
	"self halt."
	translation save