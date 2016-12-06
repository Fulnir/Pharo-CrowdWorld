as yet unclassified
checkVoting
	| max |
	max := 1.
	newTranslation := translation.
	suggestions
		keysAndValuesDo: [ :aSuggestion :votings | 
			max < votings size
				ifTrue: [ max := votings size.
					newTranslation := aSuggestion ] ].
	translation := newTranslation