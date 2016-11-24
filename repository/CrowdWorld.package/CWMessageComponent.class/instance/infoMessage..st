actions
infoMessage: aMessage
	
	self colorString: 'Yellow'.
	self messageString: aMessage.
	self messageType: 'info'.
	self iconString: 'comment'.
	self wasShown: false