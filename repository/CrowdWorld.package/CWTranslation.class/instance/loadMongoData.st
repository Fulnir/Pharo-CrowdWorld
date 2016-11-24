mongo
loadMongoData
	| baseTranslation |
	self mongo
		at: '_id' ifPresent: [ :arg1 | oid := arg1 ];
		"locale Locale ?"
			at: 'locale' ifPresent: [ :arg2 | locale := WALocale fromString: arg2 ];
		at: 'key' ifPresent: [ :arg3 | key := arg3 ];
		at: 'translation' ifPresent: [ :arg4 | translation := arg4 ];
		at: 'lock' ifPresent: [ :arg5 | lock := arg5 ];
		at: 'suggestions'
			ifPresent: [ :arg6 | 
			suggestions addAll: arg6.
			suggestionsKeys addAll: arg6 keys ].
	"Group and comment  only needed for base entries"
	locale greaseString = CWDatabase default baseLang
		ifTrue: [ self mongo
				at: 'group' ifPresent: [ :arg7 | group := arg7 ];
				at: 'comment' ifPresent: [ :arg8 | comment := arg8 ] ]
		ifFalse: [ baseTranslation := CWDatabase default getBaseTranslationForKey: key.
			base := baseTranslation translation.
			group := baseTranslation group.
			comment := baseTranslation comment.
				 ].	"Base = English"

	"Schon abgestimmt?"
	voted := false.
	newTranslation := ''