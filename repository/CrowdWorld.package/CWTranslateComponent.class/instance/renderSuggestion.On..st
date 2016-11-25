rendering
renderSuggestion: aKey On: html
	html listItem
		passenger: self;
		with: [ html div
				class: 'suggestion-view';
				with: [ html text: aKey.
					html button class: 'vote' ] ]