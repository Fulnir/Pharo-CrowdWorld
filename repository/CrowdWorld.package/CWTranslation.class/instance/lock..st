accessing
lock: anObject
	mongo at:'lock' put: anObject.
	^ lock := anObject