hooks
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: CWLibrary / #cwCss.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://code.getmdl.io/1.2.1/material.indigo-light_blue.min.css').
	anHtmlRoot title: self class appName