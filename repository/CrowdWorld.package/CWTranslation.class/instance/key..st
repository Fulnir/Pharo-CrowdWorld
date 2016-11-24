accessing
key: anObject
	mongo at: 'key' put: anObject.
	^ key := anObject