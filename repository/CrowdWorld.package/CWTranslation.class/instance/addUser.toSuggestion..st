accessing
addUser: userID toSuggestion: aSuggestion
	self suggestions at: aSuggestion ifAbsent: [ self suggestions at: aSuggestion put: (SortedCollection sortBlock: [ :x :y | x > y ]) ].
	mongo at: 'suggestions' ifAbsent: [ mongo at: 'suggestions' put: Dictionary new ].
	(mongo at: 'suggestions') at: aSuggestion ifAbsent: [ (mongo at: 'suggestions') at: aSuggestion put: OrderedCollection new ].
	(mongo at: 'suggestions')
		keysAndValuesDo: [ :aKey :aValue | 
			(((mongo at: 'suggestions') at: aKey) includes: userID)
				ifTrue: [ ((mongo at: 'suggestions') at: aKey) remove: userID.
					(suggestions at: aKey) remove: userID ] ].
	((suggestions at: aSuggestion) includes: userID)
		ifFalse: [ ((mongo at: 'suggestions') at: aSuggestion) add: userID.
			^ (suggestions at: aSuggestion) add: userID ]