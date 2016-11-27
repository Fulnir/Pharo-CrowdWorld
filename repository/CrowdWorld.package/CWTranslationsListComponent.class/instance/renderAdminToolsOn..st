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
				onClick: (html jQuery ajax script: [ :s | CWNaturalLanguageTranslator updateAllPhrases ]);
				with: (self localize: 'Update App from DB').
			html mdlButton
				raised;
				id: 'adminButton-1';
				onClick: (html jQuery ajax script: [ :s | CWNaturalLanguageTranslator updateAllPhrasesForLocale: self session localizeLocale ]);
				with: (self localize: 'Update App from DB for Locale' , ' ' , self session localizeLocale greaseString).
				
				codes := WALocale iso2Languages keys  "collect:[:aLang | aLang first ]".
		html form: [ html
				render:
				(MDLSelectWidget
						possibilities: codes
						inputLabel: (self localize: 'Delect a language')
						labelBlock: [ :number | 
							(WALocale iso2Languages at:number)  ]
						callback: [ :input | 
							Transcript
								<< input;
								cr ]
						selectedObject: self session localizeLocale language
						tooltip: 'description'
						sortBlock: [ :a :b | a <= b ]).
				 ]]