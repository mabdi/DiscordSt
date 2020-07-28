as yet unclassified
testData_amp_A42
	<madeBySmallAmp>
	| bytes |
	(self
		startZnServer;
		serverDelegate)
		map: '/'
		to: [ :request :response | response entity: (ZnEntity bytes: self bytes) ].
	attachment := self newAttachment.
	attachment
		url: self serverUrl;
		data;
		gtInspectorActionOpenTonelArchive