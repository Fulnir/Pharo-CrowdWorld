actions
warningMessage: aMessage
	
	self colorString: 'Red'.
	self messageString: aMessage.
	self messageType: 'warning'.
	self iconString: 'warning-sign'.
	self wasShown: false