as yet unclassified
testMarkdown_amp_A2
	<madeBySmallAmp>
	| script page playground command result aGTPlayPage |
	script := 'World submorphs'.
	aGTPlayPage := GTPlayPage new.
	page := aGTPlayPage
		saveContent: script;
		yourself.
	playground := GTPlayground new.
	playground entity: page.
	command := self classToTest new.
	command playground: playground.
	self should: [ command hasSelection ] raise: MessageNotUnderstood