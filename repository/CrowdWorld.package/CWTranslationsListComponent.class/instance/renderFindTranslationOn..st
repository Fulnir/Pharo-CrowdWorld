rendering
renderFindTranslationOn: html
	| findTranslation helpId |
	html header
		id: #header;
		with: [ helpId := html nextId.
			html heading
				class: 'helplink';
				level: 1;
				onClick:
					(html scriptaculous effect
						id: helpId;
						toggleAppear);
				with: (self localize: 'Translations') , ' - ' , self session localizeLang language.
			html div
				id: helpId;
				class: 'help';
				style: 'display: none';
				with:( (self localize: 'Translations for the base language {base} and the target language {localized}')format: (Dictionary with: (#base->CWDatabase default baseLang)  with: #localized->self session localizeLang language)).
			html textInput
				id: #'new-translation';
				autofocus;
				attributeAt: 'autocomplete' put: 'on';
				callback: [ :value | findTranslation := self findTranslation: value ];
				"onChange: (html jQuery ajax 
								serializeThis;
								onComplete: ((html jQuery ajax script: [:s | s << ((s jQuery id: 'todo-list') append: newTodo)]),
											   ((html jQuery id: #'new-todo') value: '')));"
					"		onChange: (html jQuery ajax 
								serializeThis;
								script: [:s | s << ((s jQuery id: 'translation-list') append: findTranslation)];
								onComplete: ((html jQuery id: #'new-translation') value: ''));"
					placeholder: (self localize: 'Find a term to  translate') ]