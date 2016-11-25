rendering
renderContentOn: html
	html listItem
		passenger: self;
		with: [ html div
				class: 'translation-view';
				with: [ html
						mdlGrid: [ html mdlCell size: 1.
							html mdlCell
								size: 7;
								with: [ self renderTranslationInfoOn: html ].
							html mdlCell
								size: 4;
								with: [ 
									self renderSuggestionsOn: html ] ].
					self session isAdmin
						ifTrue: [ html button class: 'lock' ] ] ]