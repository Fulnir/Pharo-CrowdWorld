rendering
renderSuggestionsOn: html
	html section
		id: 'suggestions';
		with: [ 
		
			html unorderedList
				id: 'suggestions-list';
				"script:
					(html jQuery this
						on: 'click'
						selector: '.vote'
						do:
							((html jQuery ajax callback: [ :passengers | passengers first vote . ] passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li'))
								asFunction: #(#event)));"
				with: [ suggestionList do: [ :each | each renderOn: html ]

					"	   self suggestionsKeys do: [ :aSugesstionKey | self renderSuggestion: aSugesstionKey On: html  ]" ]	" ;
								onComplete: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li')remove" ]