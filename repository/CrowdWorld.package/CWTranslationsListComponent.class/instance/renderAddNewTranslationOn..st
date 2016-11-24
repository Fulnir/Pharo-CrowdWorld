rendering
renderAddNewTranslationOn: html	
	
	|newTranslation|
	html header
		id: #header;
		with:[
			html heading
				level: 1;
				with: (self localize:'Translations').
			html textInput
				id: #'new-translation';
				autofocus;
				attributeAt: 'autocomplete' put: 'off';
				callback: [:value | newTranslation := self addTranslation:( CWTranslation new key: value;yourself)];
				"onChange: (html jQuery ajax 
								serializeThis;
								onComplete: ((html jQuery ajax script: [:s | s << ((s jQuery id: 'todo-list') append: newTodo)]),
											   ((html jQuery id: #'new-todo') value: '')));"
				onChange: (html jQuery ajax 
								serializeThis;
								script: [:s | s << ((s jQuery id: 'translation-list') append: newTranslation)];
								onComplete: ((html jQuery id: #'new-translation') value: ''));
				placeholder: 'What needs to be done?']