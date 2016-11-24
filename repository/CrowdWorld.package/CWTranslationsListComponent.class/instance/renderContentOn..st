rendering
renderContentOn: html
	| message |
	self session isLoggedIn
		ifTrue: [ html section
				id: #translations;
				with: [ self renderFindTranslationOn: html.
					self renderTranslationsOn: html.
					self renderFooterOn: html ] ]
		ifFalse: [ 
			message := T4FMessageComponent new infoMessage: 'You must connected to Strava'.
			html render: message ]