rendering
renderSuggestionsOn: html
	html section
		id: 'suggestions';
		with: [ html unorderedList
				id: 'suggestions-list-' , translation key;
				with: [ suggestionList do: [ :each | each renderOn: html ] ].
			self renderAddNewSuggestionOn: html ]