accessing-cookies
valueForCookie: aKey
	| aCookie |
	aCookie := self requestContext request cookieAt: aKey.
	aCookie ifNotNil: [ ^ aCookie value ].
	^ nil