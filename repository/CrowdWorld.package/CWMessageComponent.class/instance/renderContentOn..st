rendering
renderContentOn: html
	"	
	html div
id: #someDivId;
with:[self renderDivContentOn: html];
script: (html jqElement
id: #someDivId;
curvyCorners)
"
	
	(html div)
		id: 'message';
		"class: 'ui-widget';"
		
		with:
				["html space."
					(self wasShown not and: [ self messageString isNotNil ])
						ifTrue:
							[self 
								renderMessage: self messageString 
								messageType: self messageType 
								messageIcon: self iconString 
								on: html.
							self wasShown: true]	"html space."]	";
	script: (html jqElement
	id: 'message';
	curvyCorner)"