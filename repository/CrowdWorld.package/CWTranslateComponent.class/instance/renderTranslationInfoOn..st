rendering
renderTranslationInfoOn: html
	html mdlCell
				size: 1;
				id: 'SugesstionInfo';
				with: [ html text: (self localize: 'CW_Key').
					html break.
					html text: (self localize: 'CW_Group') ].
			html mdlCell
				size: 1;
				id: 'SugesstionInfo';
				with: [ html label: translation key.
					html break.
					html label: translation group ].
			html mdlCell
				size: 1;
				id: 'SugesstionInfo';
				with: [ html text: (self localize: 'CW_Base').
					html break.
					html text: (self localize: 'CW_Translation') ].
			html mdlCell
				size: 4;
				id: 'SugesstionInfo';
				with: [ html label: translation base.
					html break.
					html label: translation translation ] 

	"	html mdlTable
		shadow: 2;
		
		with: [ html
				tableHead: [ html
						tableRow: [ html mdlTableHeading id: 'keyColumn';with: (self localize: 'CW_Key').
							html tableHeading with: (self localize: 'CW_Group').
							html tableHeading: (self localize: 'CW_Base').
							html tableHeading: (self localize: 'CW_Translation') ] ].
			html
				tableBody: [ html
						tableRow: [ html tableData with: [ html label: translation key ].
							html tableData with: [ html label: translation group ].
							html tableData with: [ html label: translation base ].
							html tableData with: [ html label: translation translation ] ] ] ]."