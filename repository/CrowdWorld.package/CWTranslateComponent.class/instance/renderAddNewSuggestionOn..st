rendering
renderAddNewSuggestionOn: html
	| newSuggestion |
	html textInput
		class: 'new-suggestion';
		 id: 'new-suggestion',translation key;
		autofocus;
		attributeAt: 'autocomplete' put: 'off';
		callback: [ :value | newSuggestion := self addSuggestion: value ];
		onChange:
			(html jQuery ajax
				serializeThis;
				
				script:  [:s | self newSuggestion: newSuggestion on:s ]  ;
				"script: [ :s | s << ((s jQuery id: 'suggestions-list-',translation key) append: newSuggestion) ];"
				onComplete: ( (html jQuery id: 'new-suggestion',translation key) value: ''   )    ";
				onComplete: ( html jQuery ajax script: [:s | newSuggestion renderVotesOn:s ]);
				onComplete: (html jQuery ajax callback: [ newSuggestion vote])"   );
				
		placeholder: (self localize: 'Suggest a new translation.')
		
"	 ( html jQuery ajax script: [:s | self renderVotesOn:s ])"