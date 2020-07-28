as yet unclassified
testData_amp_A35
	"I test correctness of: 

- `self isImage not` in method: `DSAttachment >> #gtInspectorActionMaterializeData`

"

	<madeBySmallAmp>
	| bytes aGLMGenericAction |
	(self
		startZnServer;
		serverDelegate)
		map: '/'
		to: [ :request :response | response entity: (ZnEntity bytes: self bytes) ].
	attachment := self newAttachment.
	aGLMGenericAction := attachment
		url: self serverUrl;
		data;
		gtInspectorActionMaterializeData.
	self
		assert:
			aGLMGenericAction condition sourceNode formattedCode
		equals: '[ self isImage not ]'