actions
errorMessage: aMessage
	
	self colorString: 'Red'.
	self messageString: aMessage.
	self messageType: 'error'.
	self iconString: 'flag'.
	self wasShown: false