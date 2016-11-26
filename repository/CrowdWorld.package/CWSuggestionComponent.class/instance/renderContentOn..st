rendering
renderContentOn: html
	| listId |

	html listItem
		"id: listId;"
		passenger: self;
		with: [ html div
				class: 'suggestion-view';

				with: [ self voted
						ifTrue: [ html text: '👌' ].
					html text: suggestion.
					html code id: nextJQueryID; with: DateAndTime now.
html button
         onClick: (html jQuery ajax
            script: [ :s | s <<(s jQuery:nextJQueryID) html: DateAndTime now ]);
         with: 'Replace'.
					html button class: 'vote'


					"          onChange: (((html jQuery id: listId) load)
                    serializeForm;
                    html: [:ajaxHtml | self renderContentOn: ajaxHtml])."
					" value: anItem done;
                    callback: [:value | anItem done: value]" 
] ]";
		script:
			(html jQuery this
				on: 'click'
				selector: '.vote'
				do: ((html jQuery ajax callback: [ :passengers | passengers first vote ] passengers: self) asFunction: #(#event)))"