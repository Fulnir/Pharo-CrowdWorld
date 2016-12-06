testing
testVote
	| cancelTranslation suggestion  |
	"baseLang"
	
	cancelTranslation := (cwDatabase getTranslationForKey: 'Login' locale: (WALocale language: 'de')) first.
	self assert:cancelTranslation key equals: 'Login'.
	self assert:cancelTranslation suggestions size equals:3.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:0.
	self assert:(cancelTranslation suggestions at:  'Connect')size equals:0.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:0.
	suggestion := (cancelTranslation suggestions at:  'Anmelden').
	cancelTranslation addUser: 1 toSuggestion: 'Anmelden'.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:1.
	self assert:cancelTranslation translation equals: 'Anmelden'.
	cancelTranslation checkVoting.
	self assert:cancelTranslation translation equals: 'Anmelden'.
	cancelTranslation addUser: 1 toSuggestion: 'Anmelden'.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:1.
	cancelTranslation addUser: 1 toSuggestion: 'Login'.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:1.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:0.
	self assert:(cancelTranslation suggestions at:  'Connect')size equals:0.
	cancelTranslation addUser: 2 toSuggestion: 'Login'.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:2.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:0.
	self assert:(cancelTranslation suggestions at:  'Connect')size equals:0.
	cancelTranslation addUser: 3 toSuggestion: 'Connect'.	
	self assert:(cancelTranslation suggestions at:  'Login')size equals:2.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:0.
	self assert:(cancelTranslation suggestions at:  'Connect')size equals:1.
	cancelTranslation checkVoting.
	self assert:cancelTranslation translation equals: 'Login'.
	cancelTranslation addUser: 4 toSuggestion: 'Login'.
	cancelTranslation checkVoting.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:3.
	self assert: cancelTranslation translation equals: 'Login'.
	cancelTranslation addUser: 5 toSuggestion: 'Anmelden'.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:1.
	cancelTranslation addUser: 6 toSuggestion: 'Anmelden'.
	cancelTranslation checkVoting.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:2.
	self assert:cancelTranslation translation equals: 'Login'.
	cancelTranslation addUser: 7 toSuggestion: 'Anmelden'.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:3.
	cancelTranslation addUser: 7 toSuggestion: 'Anmelden'.
	cancelTranslation checkVoting.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:3.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:3.
	self assert:cancelTranslation translation equals: 'Login'.
	cancelTranslation addUser: 8 toSuggestion: 'Anmelden'.
	cancelTranslation checkVoting.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:3.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:4.
	self assert:cancelTranslation translation equals: 'Anmelden'.
	cancelTranslation save.
	self assert:(cancelTranslation suggestions at:  'Login')size equals:3.
	self assert:(cancelTranslation suggestions at:  'Anmelden')size equals:4.
	self assert:cancelTranslation translation equals: 'Anmelden'.
	