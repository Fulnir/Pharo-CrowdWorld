rendering
renderContentOn: html
	| message |
	html code
		id: #informerField;
		with: ''.
	html break.
	self session isLoggedIn
		ifTrue: [ self renderAdminToolsOn: html.
			html heading
				level: 1;
				id: 'tooltipHeader1';
				with:
					(self localize: 'Translations') , '  ' , (self localize: ((CWNaturalLanguageTranslator languagesEnglishNative at: CWDatabase default baseLang) at: 'name'))
						, ' - ' , (self localize: ((CWNaturalLanguageTranslator languagesEnglishNative at: currentLang language) at: 'name')) , ' ('
						, currentLang greaseString , ')'.
			html mdlTooltip
				for: 'tooltipHeader1';
				with:
					((self localize: 'Translations for the base language {base} and the target language {localized}')
						format: (Dictionary with: #base -> CWDatabase default baseLang with: #localized -> self session localizeLocale language)).
			html section
				id: #translations;
				with: [ self renderFindTranslationOn: html.
					html unorderedList
						id: 'translation-list';
						with: [ self renderTranslationsOn: html ].
					self renderFooterOn: html ] ]
		ifFalse: [ message := CWMessageComponent new infoMessage: 'You must connected to the app'.
			html render: message ]