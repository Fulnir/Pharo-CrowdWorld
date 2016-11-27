rendering
renderContentOn: html
	| message |
	html code id: #informerField; with: ''.
	
		
	html break.
	self session isLoggedIn
		ifTrue: [ self renderAdminToolsOn: html.
			html section
				id: #translations;
				with: [ self renderFindTranslationOn: html.
					html unorderedList
								id: 'translation-list';
								with: [ self renderTranslationsOn: html ].
							self renderFooterOn: html ] ] 
		ifFalse: [ message := CWMessageComponent new infoMessage: 'You must connected to the app'.
			html render: message ]