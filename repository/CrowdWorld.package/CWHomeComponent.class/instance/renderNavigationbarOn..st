rendering
renderNavigationbarOn: html
	html mdlLayoutHeader
		with: [ html
				mdlLayoutHeaderRow: [ html mdlLayoutTitle
						with: [ html image
								style: 'height: 60px; margin-top: 20px';
								url: CWLibrary / #BalloonPng.
							html text: (self localize: 'Localization') , ' ' , (self localize: 'with') , ' ' , 'CrowdWorld' ].
					html mdlLayoutSpacer.
					self renderUserOptionOn: html .
					html mdlLayoutSpacer.
					html mdlNavigation: [ html text: '© 2016 by Edwin Bühler ' ] ] ]