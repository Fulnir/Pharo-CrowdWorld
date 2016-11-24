testing
testInitialCrowdDictionary
	| translationDict |
	"baseLang"
	self assert: cwDatabase baseLang equals: 'en'.

	"{('lang' -> 'de').
	('key' -> 'Login').
	('translation' -> 'Anmelden').
	('suggestions'
		->
			{('Anmelden' -> {}).
			('Connect' -> {}).
			('Login' -> {})} asDictionary)} asDictionary"
	translationDict := (cwDatabase crowdDictionaryList select: [ :aDict | (aDict at: 'translation' ) =  'Anmelden' ]) first.
	self assert: (translationDict at: 'lang') equals: 'de'.
	self assert: (translationDict at: 'key') equals: 'Login'.
	self assert: ((translationDict at: 'suggestions') at: 'Anmelden')size equals: 0.
	self assert: ((translationDict at: 'suggestions') at:  'Connect' )size equals: 0.