rendering
renderContentOn: html
	
	html listItem
		passenger: self;
		with: [ html div
				class: 'view';
				with: [ "html checkbox
						class: 'toggle';
						callback: [ :value | self voteDone: value ];
						value: voteDone."
					html
						mdlGrid: [ html mdlCell size: 1.
							html mdlCell
								size: 7;
								with: [ html mdlTable 
										shadow: 2;
										with: [ html
												tableHead: [ html
														tableRow: [ html mdlTableHeading: (self localize: 'Key').
															html tableHeading: (self localize: 'Base').
															html tableHeading: (self localize: 'Translation') ] ].
											html
												tableBody: [ html
														tableRow: [ html tableData with: [ html label: translation key ].
															html tableData with: [ html label: translation base ].
															html tableData with: [ html label: translation translation ] ] ] ].
												html text: (self localize: 'Group'), ' ' .
												html text: translation group.
												html break.
												html heading level: 5;  
													onClick: html scriptaculous effect highlight;  
        													with:   (self localize: 'Comment'), ' ' ,translation comment.
												 ].
							html mdlCell
								size: 4;
								with: [ html mdlTable
										shadow: 2;
										"selectable;"
											with: [ html
												tableHead: [ html
														tableRow: [ html mdlTableHeading: (self localize: 'Sugesstions').
															html tableHeading: (self localize: 'Vote') ] ].
											html
												tableBody: [ 
													self suggestionsKeys
														do: [ :aSugesstionKey | 
															
															html
																tableRow: [ html mdlTableCell: aSugesstionKey.
																	" script: (html jQuery new selectable
         onStop: (html jQuery ajax
            callback: [ :value | selected := value asSet .]
            passengers: (html jQuery this find: '.ui-selected')))."
																	html tableData
																	with: [

																		
"toggleBox := html mdlButton
		fab;
		class: 'vote';
		rippleEffect;
	
		with: 'ok'."
		
																			toggleBox := html checkbox
																				class: 'toggle';
																				callback: [ :value | self voteDone: value ];
																				value: voteDone  
																				;script: (html jQuery new selectable
         onStop: (html jQuery ajax
            callback: [ :value | selected := value asSet .]
            passengers: (html jQuery this find: '.ui-selected'))).
																				
																				
																				]. ]

															" html text: aSugesstionKey .
						html checkbox
						class: 'toggle';
						callback: [ :value | self voteDone: value ];
						value: voteDone ." ] ] ] ] ].
	self session isAdmin
		ifTrue: [ html button class: 'lock' ].
		 
					 ].
				 html image 
								url: CWLibrary / #CardBottom2Png
			"	html textInput
			class: 'edit';
			style: 'display:none';
			callback:[:value | self description: value];
			value:  'Ein Text'" ]