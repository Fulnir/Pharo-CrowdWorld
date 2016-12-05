rendering
renderFooterOn: html
	html mdlMiniFooter
		with: [ html
				mdlMiniFooterLeftSection: [ html mdlNavigationLink
						style: 'color: #fff';
						url: 'http://www.edwin-buehler.net';
						with: [ html text: '© 2016 by Edwin Bühler '.
							html image								
								style: 'height: 20px;';
								url: CWLibrary / #edwinpaintingavatar512Png ].
					html mdlNavigationLink
						style: 'color: #fff';
						url: 'http://www.pharo.org';
						with: [ html text: '      Build with the '.
							html text: ' Smalltalk '.
							html image
								style: 'height: 20px;';
								url: CWLibrary / #BalloonPng.
							html text: ' IDE  Pharo '.
							html image
								style: 'height: 20px;';
								url: CWLibrary / #pharoPng ].
					html space.
					html space.
					html space ].
			html mdlMiniFooterRightSection: [  ] ]