rendering
renderContentOn: html
	html listItem
		id: nextJQueryID;
		passenger: self;
		with: [ html div
				id: 'suggestion-view';
				with: [ 
					html text: suggestion.
					html code
						id: nextJQueryID , 'voted';
						with: [ self voted
								ifTrue: [ html text: '👍' ]
								ifFalse: [ html text: ' ' ] ].
					html button
						class: 'vote';
						onClick: ( html jQuery ajax script: [:s | self renderVotesOn:s ]);
						onClick: (html jQuery ajax callback: [ self vote. ]);
						onClick: (html jQuery ajax script: [ :s | s << (s jQuery: (nextJQueryID , 'voted') asSymbol) html: '👍' ]) ] ];
		onClick: (html jQuery ajax script: [ :s | s << (s jQuery: #informerField) html: (self localize: 'You voted for ') , ' ' , suggestion ])