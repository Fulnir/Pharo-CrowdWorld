rendering
renderTranslationInfoOn: html
	html mdlTable
		shadow: 2;
		with: [ html
				tableHead: [ html
						tableRow: [ html mdlTableHeading: (self localize: 'Key').
							html tableHeading: (self localize: 'Group').
							html tableHeading: (self localize: 'Base').
							html tableHeading: (self localize: 'Translation') ] ].
			html
				tableBody: [ html
						tableRow: [ html tableData with: [ html label: translation key ].
							html tableData with: [ html label: translation group ].
							html tableData with: [ html label: translation base ].
							html tableData with: [ html label: translation translation ] ] ] ].
	^ html div
		class: 'note';
		with: [ html text:  translation comment ]