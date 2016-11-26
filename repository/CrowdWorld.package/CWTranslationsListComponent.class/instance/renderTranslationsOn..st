rendering
renderTranslationsOn: html
	html section
		id: 'main';
		with: [ html unorderedList
				id: 'translation-list';
				script:
					(html jQuery this
						on: 'click'
						selector: '.lock'
						do:
							((html jQuery ajax
								callback: [ :passengers | passengers first remove ]
									passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li');
								onComplete: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li') remove) asFunction: #(#event)));
				"		script:		
					(html jQuery this
						on: 'change'
						selector: '.lock'
						do:			
								
			(html jQuery ajax
				serializeThis;
				script: [ :s | s << ((s jQuery id: 'suggestions-list') append: newSuggestion) ];
				onComplete: ((html jQuery id: #'new-suggestion') value: '')));"
					with: [ self translationsList do: [ :each | each renderOn: html ] ] ]