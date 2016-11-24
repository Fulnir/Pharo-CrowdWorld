initialization
initializeCrowdDictionary
	crowdDictionaryList := Collection new.
	"key ist der Schlüssel mit dem per (html localize'key) die Übersetzung aufgerufen wird.
	translation ist die aktuell gewählte Übersetzung.
	suggestions sind die Vorschläge für Übersetzungen
		Der Valuewert sind die ID#S der Nutzer die für diesen  Vorschlag gestimmt haben(Nur einmal). Der mit den meisten Stimmen wird ausgewählt. Ausgenommen admin hat gelockt ('lock' ->true). 
	 {
		('key' -> 'Hello'). 
		('translation' -> 'Hello')
		('lock' ->false)
		('suggestions' -> { 
			'Hi'-> { 
				OID(3123123123).
				OID(9976423123).
				 }
			 }
	}
	"
	crowdDictionaryList := {{('locale' -> 'en').
	('key' -> 'Hello').
	('translation' -> 'Hello').
	('lock' -> true)} asDictionary.
	{('locale' -> 'en').
	('key' -> 'Login').
	('group' -> 'User').
	('comment' -> 'Used in the main navigation br and drawer menu').
	('translation' -> 'Login').
	('lock' -> true)} asDictionary.
	{('locale' -> 'en').
	('key' -> 'Home').
	('translation' -> 'Home').
	('lock' -> true)} asDictionary.
	{('locale' -> 'de_CH').
	('key' -> 'Hello').
	('translation' -> 'Grüezi').
	('lock' -> false).
	('suggestions' -> {('Grüezi' -> {})} asDictionary)} asDictionary.
	{('locale' -> 'de').
	('key' -> 'Hello').
	('translation' -> 'Hallo').
	('suggestions'
		->
			{('Hallo' -> {}).
			('Guten Tag' -> {})} asDictionary)} asDictionary.
	{('locale' -> 'de').
	('key' -> 'Login').
	('translation' -> 'Anmelden').
	('suggestions'
		->
			{('Anmelden' -> {}).
			('Connect' -> {}).
			('Login' -> {})} asDictionary)} asDictionary}.
	^ crowdDictionaryList