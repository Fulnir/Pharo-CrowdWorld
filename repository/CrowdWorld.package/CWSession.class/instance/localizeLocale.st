localization
localizeLocale
	| acceptLanguage theLang theCountry aCookieValue |
	userlang ifNotNil: [ ^ WALocale language: userlang country: usercountry ].
	theLang := 'en'.
	acceptLanguage := self requestContext request acceptLanguage.
	acceptLanguage ifNil: [ ^ WALocale language: theLang ].
	acceptLanguage size > 0
		ifTrue: [ acceptLanguage := acceptLanguage first ].
	theLang := acceptLanguage value language.
	theCountry := acceptLanguage value country.
	theLang ifNil: [ theLang := 'en' ].
	theLang size = 2
		ifFalse: [ theLang := 'en' ].
	aCookieValue := self valueForCookie: CWHomeComponent appName asLowercase, 'userlanguage'.
	aCookieValue ifNotNil: [ theLang := aCookieValue ].
	aCookieValue := self valueForCookie: CWHomeComponent appName asLowercase, 'usercountry'.
	aCookieValue ifNotNil: [ theCountry := aCookieValue ].
	userlang := theLang.
	usercountry := theCountry.
	^ WALocale language: theLang country: theCountry