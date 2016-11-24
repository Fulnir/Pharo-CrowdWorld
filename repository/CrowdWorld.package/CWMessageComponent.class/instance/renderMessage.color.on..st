rendering
renderMessage: aString color: aColorAsString on: html
	
	(html div)
		class: 'shortMessage' , aColorAsString;
		with:
				["html image
				id: 'icon';
				url: (self resources addToPath: 'messageIcon',self colorString) ."
					html text: aString]