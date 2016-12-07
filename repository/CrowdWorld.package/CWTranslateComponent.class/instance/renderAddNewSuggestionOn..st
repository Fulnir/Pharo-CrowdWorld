rendering
renderAddNewSuggestionOn: html
	| newSuggestion |
	html textInput
		class: 'new-suggestion';
		id: 'new-suggestion' , translation key;
		autofocus;
		attributeAt: 'autocomplete' put: 'off';
		callback: [ :value | newSuggestion := self addSuggestion: value ];
		onChange:
			(html jQuery ajax
				serializeThis;
				script: [ :s | self newSuggestion: newSuggestion on: s ];
				onComplete: ((html jQuery id: 'new-suggestion' , translation key) value: ''));
		placeholder: (self localize: 'CW_SuggestTranslation')    