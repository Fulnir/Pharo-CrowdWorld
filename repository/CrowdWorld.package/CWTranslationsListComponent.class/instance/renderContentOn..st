rendering
renderContentOn: html
	| message |
	self session isLoggedIn
		ifTrue: [ html section
				id: #translations;
				with: [ self renderFindTranslationOn: html.
					html unorderedList
								id: 'translation-list';
								with: [ self renderTranslationsOn: html ].
							self renderFooterOn: html ] ] 
		ifFalse: [ message := CWMessageComponent new infoMessage: 'You must connected to the app'.
			html render: message ]