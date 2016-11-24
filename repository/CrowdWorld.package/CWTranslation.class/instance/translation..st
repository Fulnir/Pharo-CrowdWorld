accessing
translation: anObject
	mongo at: 'translation' put: anObject.
	^ translation := anObject