rendering
renderAdminToolsOn: html
	| codes |
	self session isAdmin
		ifTrue: [ html heading
				level: 5;
				with: (self localize: 'Admin').
			html mdlButton
				raised;
				id: 'adminButton-1';
				onClick: (html jQuery ajax script: [ :s | CWDatabase default naturalLanguageTranslator updateAllPhrases ]);
				with: (self localize: 'Update App from DB').
			html mdlButton
				raised;
				id: 'adminButton-2';
				onClick: (html jQuery ajax script: [ :s | CWNaturalLanguageTranslator updateAllPhrasesForLocale: self session localizeLocale ]);
				with: (self localize: 'Update App from DB for Locale' , ' ' , self session localizeLocale greaseString).
			codes := CWNaturalLanguageTranslator allowedLanguages.	"WALocale iso2Languages keys."	"collect:[:aLang | aLang first ]"
					html break.
			html
				form: [ html
						render:
							(MDLSelectWidget
								possibilities: codes
								inputLabel: (self localize: 'Select a language')
								labelBlock:
									[ :number | self localize: ((CWNaturalLanguageTranslator languagesEnglishNative at: (number first: 2)) at: 'name')	" (WALocale iso2Languages at: (number first: 2))" ]
								callback: [ :input | self changeLocaleTo: (WALocale fromString: input) ]
								selectedObject: currentLang language
								tooltip: (self localize: 'CW_Lang_Select_Tooltip')
								sortBlock: [ :a :b | a <= b ]).
					html space.
					html mdlButton
						accentColor;
						raised;
						beSubmit;
						with: (self localize: 'Submit') ] ]