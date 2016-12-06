rendering
renderTranslationInfo2On: html
	html mdlCell
		size: 7;
		with: [ html mdlCard
				shadow: 2;
				class: 'mdl-typography--text-left';
				style: 'margin: 10px; width: 100%; height: 60px; ';
				with: [ html
						mdlGrid: [ html mdlCell
								size: 2;
								id: 'SugesstionInfo';
								with: [ html text: (self localize: 'CW_Key').
									html break.
									html text: (self localize: 'CW_Group') ].
							html mdlCell
								size: 3;
								id: 'SugesstionInfo';
								with: [ html label: translation key.
									html break.
									html label: translation group ].
							html mdlCell size: 7.
							html mdlCell
								size: 2;
								with: [ html text: (self localize: 'CW_Base').
									html break.
									html text: (self localize: 'CW_Translation') ].
							html mdlCell
								size: 4;
								with: [ html label: translation base.
									html break.
									html label: translation translation ] ].
					html mdlCell
						size: 12;
						class: 'note';
						with: [ html text: translation comment ] ] ]