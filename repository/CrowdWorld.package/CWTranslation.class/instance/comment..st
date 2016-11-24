accessing
comment: anObject
	mongo at: 'comment' put: anObject.
	comment := anObject