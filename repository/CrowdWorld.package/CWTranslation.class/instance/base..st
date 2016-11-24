accessing
base: anObject
	mongo at: 'base' put: anObject.
	base := anObject