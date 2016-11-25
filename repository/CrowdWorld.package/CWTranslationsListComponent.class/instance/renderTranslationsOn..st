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
								callback: [ :passengers | passengers first remove ] passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li');
								onComplete: ((html jQuery expression: (JSStream on: 'event.target')) closest: 'li') remove) asFunction: #(#event)));
				with: [
				"	html
						mdlGrid: [ html mdlCell size: 1.
							html mdlCell
								size: 7;
								with: [ html text: (self localize: 'Key').].
							html mdlCell
								size: 4;
								with: [ 
									html text: (self localize: 'Sugesstions'). ] ]."
					
					 self translationsList do: [ :each | each renderOn: html ] ] ]