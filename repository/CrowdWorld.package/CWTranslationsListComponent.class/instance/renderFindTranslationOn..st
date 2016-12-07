rendering
renderFindTranslationOn: html
	| findTranslation helpId |
	html header
		id: #header;
		with: [ helpId := html nextId.
			html
				form: [ html mdlTextFieldContainer
						floatingLabel;
						with: [ html mdlTextFieldLabel
								for: 'floating-text';
								with: (self localize: 'Find a term to  translate').
							html mdlTextFieldInput
								id: 'floating-text';
								callback: [ :value | findTranslation := self findTranslation: value ];
								type: 'text' ]
					"html textInput
						id: #'new-translation';
						autofocus;
						attributeAt: 'autocomplete' put: 'on';
						callback: [ :value | findTranslation := self findTranslation: value ];
							placeholder: (self localize: 'Find a term to  translate') " ] ]