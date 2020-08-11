tests
testHasSelectionError
	| script page playground command aGTPlayPage |
	script := 'World submorphs'.
	aGTPlayPage := GTPlayPage new.
	page := aGTPlayPage
		saveContent: script;
		yourself.
	playground := GTPlayground new.
	playground entity: page.
	command := self classToTest new.
	command playground: playground.
	self should: [ command hasSelection ] raise: MessageNotUnderstood. "#notEmpty was sent to nil"
	command markdown