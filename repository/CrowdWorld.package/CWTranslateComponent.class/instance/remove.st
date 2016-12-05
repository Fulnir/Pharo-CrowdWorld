actions
remove

	self session isAdmin 
		ifTrue: [ self translation lock: true.
			self translation save.
			translationsList remove: self]