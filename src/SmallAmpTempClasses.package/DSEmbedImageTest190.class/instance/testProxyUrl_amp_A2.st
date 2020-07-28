as yet unclassified
testProxyUrl_amp_A2
	"I test correctness of: 

- `^ GLMGenericAction new
	action: [ :presentation | 
		self data.
		presentation update ];
	icon: (self iconNamed: #bottom);
	condition: [ self hasData not ];
	title: 'Download data'` in method: `DSEmbedImage >> #gtInspectorActionDownloadData`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	object := self newObjectToTest.
	aGLMGenericAction := object
		proxyUrl: self anyString;
		gtInspectorActionDownloadData.
	self assert:
		aGLMGenericAction class equals: GLMGenericAction