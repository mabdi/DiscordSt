as yet unclassified
testCodeSnippet_amp_L0
	"I test correctness of: 

- `^ self codeSnippet isNotEmpty` in method: `DSExtractPlaygroundCodeSnippetCommand >> #hasCodeSnippet`

"

	<madeBySmallAmp>
	| script page playground command result aGTPlayPage |
	script := ''.
	aGTPlayPage := GTPlayPage new.
	page := aGTPlayPage
		saveContent: script;
		yourself.
	playground := GTPlayground new.
	playground entity: page.
	command := self classToTest new.
	command
		playground: playground;
		execute.
	self deny: command hasCodeSnippet.
	result := command codeSnippet