initialization
initialize
	super initialize.
	'CWTranslation initialize' log.
	self initializeWithDB: CWDatabase new.
	