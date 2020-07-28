as yet unclassified
testWidth_amp_A2
	"I test correctness of: 

- `^ data notNil` in method: `DSEmbedImage >> #hasData` when {#data->nil}

- `self hasData not` in method: `DSEmbedImage >> #gtInspectorActionDownloadData`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	object := self newObjectToTest.
	self deny: object hasData.
	aGLMGenericAction := object
		width: 42;
		gtInspectorActionDownloadData.
	self
		assert:
			aGLMGenericAction condition sourceNode formattedCode
		equals: '[ self hasData not ]'