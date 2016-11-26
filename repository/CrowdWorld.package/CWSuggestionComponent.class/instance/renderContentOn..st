rendering
renderContentOn: html
	html listItem
		id: nextJQueryID;
		passenger: self;
		with: [ html div
				class: 'suggestion-view';
				with: [ self voted
						ifTrue: [ html text: '👌' ].
					html text: suggestion.
					html button
						class: 'vote';
						onClick: (html jQuery ajax script: [ :s | s << (s jQuery: #informerField) html: (self localize: 'You voted for ') , ' ' , suggestion ]);
						onClick: (html jQuery ajax callback: [ self vote ]) ] ]