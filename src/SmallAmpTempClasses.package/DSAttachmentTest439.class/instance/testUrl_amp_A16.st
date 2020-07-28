as yet unclassified
testUrl_amp_A16
	"I test correctness of: 

- `^ GLMGenericAction new
	action: [ :presentation | self openTonelArchive ];
	icon: (self iconNamed: #glamorousOpen);
	condition: [ self filename = 'tonel.zip' ];
	title: 'Open Tonel Archive'` in method: `DSAttachment >> #gtInspectorActionOpenTonelArchive`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	attachment := self newAttachment.
	aGLMGenericAction := attachment
		url: self anyString;
		gtInspectorActionOpenTonelArchive.
	self assert:
		aGLMGenericAction class equals: GLMGenericAction