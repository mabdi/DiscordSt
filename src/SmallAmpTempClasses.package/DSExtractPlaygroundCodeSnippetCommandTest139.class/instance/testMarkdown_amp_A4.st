as yet unclassified
testMarkdown_amp_A4
	"I test correctness of: 

- `^ selectionInterval` in method: `DSExtractPlaygroundCodeSnippetCommand >> #selectionInterval` when {#selectionInterval->nil}

"

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
	self assert: command selectionInterval isNil.
	command playground: playground.
	self should: [ command markdown ] raise: MessageNotUnderstood