rendering
renderContentOn: html
	| listId |
	html listItem
		passenger: self;
		with: [ 
			listId := html nextId.
			html div
				class: 'suggestion-view';
				with: [ self voted
						ifTrue: [ html text: '👌' ].
					html text: suggestion.
					(html button class: 'vote')
					
      "          onChange: (((html jQuery id: listId) load)
                    serializeForm;
                    html: [:ajaxHtml | self renderContentOn: ajaxHtml])."
                   " value: anItem done;
                    callback: [:value | anItem done: value]".

 ] ]