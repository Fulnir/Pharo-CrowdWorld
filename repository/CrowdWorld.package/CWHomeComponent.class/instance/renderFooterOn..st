rendering
renderFooterOn: html
	html mdlMiniFooter
		with: [ html
				mdlMiniFooterLeftSection: [ html mdlNavigationLink
						style: 'color: #fff';
						url: 'http://www.edwin-buehler.net';
						with: [ html text: '© 2016 by Edwin Bühler '.
							html tbsImage
								beCircle;
								style: 'height: 20px;';
								url: T4FLibrary / #edwinpaintingavatar512Png ].
					html mdlNavigationLink
						style: 'color: #fff';
						url: 'http://www.pharo.org';
						with: [ html text: '      Build with the '.
							html text: ' Smalltalk '.
							html image
								style: 'height: 20px;';
								url: T4FLibrary / #BalloonPng.
							html text: ' IDE  Pharo '.
							html image
								style: 'height: 20px;';
								url: T4FLibrary / #pharoPng ].
					html space.
					html space.
					html space ].
			html mdlMiniFooterRightSection: [  ] ]