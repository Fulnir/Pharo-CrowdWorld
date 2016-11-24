rendering
renderContentOn: html
	html
		mdlGrid: [ html mdlCell size: 2.
			html mdlCell
				size: 8;
				with: [ 
					html heading: (self localize: 'Localization') , ' ' , (self localize: 'with') , ' ' , 'CrowdWorld'.
					html render: localizationComponent ].
			html mdlCell size: 2 ]