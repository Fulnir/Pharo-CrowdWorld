rendering
renderContentOn: html
	| theMDLLayout |
	theMDLLayout := html mdlLayout.
	theMDLLayout
		with: [ self renderNavigationbarOn: html.
			html mdlLayoutContent
				with: [ html
						mdlGrid: [ html mdlCell size: 2.
							html mdlCell
								size: 8;
								with: [ html heading: (self localize: 'Localization') , ' ' , (self localize: 'with') , ' ' , 'CrowdWorld'.
									html render: localizationComponent ].
							html mdlCell size: 2 ] ].
			self renderFooterOn: html ]