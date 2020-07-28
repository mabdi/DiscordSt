as yet unclassified
testData_amp_A46
	<madeBySmallAmp>
	| bytes |
	(self
		startZnServer;
		serverDelegate)
		map: '/'
		to: [ :request :response | response entity: (ZnEntity bytes: self bytes) ].
	attachment := self newAttachment.
	bytes := attachment
		url: self serverUrl;
		data.
	self should: [ attachment openTonelArchive ] raise: Error