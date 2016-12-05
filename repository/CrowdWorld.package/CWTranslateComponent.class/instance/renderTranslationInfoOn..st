rendering
renderTranslationInfoOn: html
	html mdlTable
		shadow: 2;
		with: [ html
				tableHead: [ html
						tableRow: [ html mdlTableHeading: (self localize: 'CW_Key').
							html tableHeading: (self localize: 'CW_Group').
							html tableHeading: (self localize: 'CW_Base').
							html tableHeading: (self localize: 'CW_Translation') ] ].
			html
				tableBody: [ html
						tableRow: [ html tableData with: [ html label: translation key ].
							html tableData with: [ html label: translation group ].
							html tableData with: [ html label: translation base ].
							html tableData with: [ html label: translation translation ] ] ] ].
	^ html div
		class: 'note';
		with: [ html text:  translation comment ]