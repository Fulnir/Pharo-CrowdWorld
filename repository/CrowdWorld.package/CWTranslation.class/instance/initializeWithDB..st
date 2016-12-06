initialization
initializeWithDB: aDB
	super initialize.
	contextDB := aDB.
	mongo := Dictionary new.
	mongo at: 'sugesstions' put: Dictionary new.
	voted := false.
	lock := false.
	newTranslation := ''.
	translation := ''.
	group := ''.
	comment :=''.
	suggestions := Dictionary new.
	suggestionsKeys := SortedCollection sortBlock: [ :x :y | x  > y  ]