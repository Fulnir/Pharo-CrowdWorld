initialization
newDefault
	default ifNotNil: [ default mongo close ].
	default := self new.
	^ default