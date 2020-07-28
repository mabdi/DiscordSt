as yet unclassified
testWidth_amp_A10
	"I test correctness of: 

- `^ GLMGenericAction new
	action: [ :presentation | 
		self data.
		presentation update ];
	icon: (self iconNamed: #bottom);
	condition: [ self hasData not ];
	title: 'Download data'` in method: `DSAttachment >> #gtInspectorActionDownloadData`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	attachment := self newAttachment.
	aGLMGenericAction := attachment
		width: 42;
		gtInspectorActionDownloadData.
	self assert:
		aGLMGenericAction class equals: GLMGenericAction