rendering
renderNavigationbarOn: html
	html mdlLayoutHeader
		with: [ html
				mdlLayoutHeaderRow: [ html mdlLayoutTitle
						with: [ html image
								style: 'height: 100px; margin-top: 40px';
								url: CWLibrary / #BalloonPng .
								html text: (self localize: 'Localization') , ' ' , (self localize: 'with') , ' ' , 'CrowdWorld'].
					html mdlLayoutSpacer.
					html code id: #informerField; with: ''.
					html mdlLayoutSpacer.
					html mdlNavigation: [ html text: '© 2016 by Edwin Bühler ' ] ] ]