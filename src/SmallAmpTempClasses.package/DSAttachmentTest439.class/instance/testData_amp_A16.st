as yet unclassified
testData_amp_A16
	"I test correctness of: 

- `self filename = 'tonel.zip'` in method: `DSAttachment >> #gtInspectorActionOpenTonelArchive`

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
		gtInspectorActionOpenTonelArchive.
	self
		assert:
			aGLMGenericAction condition sourceNode formattedCode
		equals: '[ self filename = ''tonel.zip'' ]'.
	bytes := attachment data