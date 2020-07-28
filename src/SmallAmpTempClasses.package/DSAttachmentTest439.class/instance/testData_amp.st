as yet unclassified
testData_amp
	"I test correctness of: 

- `^ self hasData and: [ ZipArchive isZipArchive: self data readStream ]` in method: `DSAttachment >> #isZipArchive`

- `^ true` in method: `DSAttachment >> #isAttachment`

"

	<madeBySmallAmp>
	| bytes |
	(self
		startZnServer;
		serverDelegate)
		map: '/'
		to: [ :request :response | response entity: (ZnEntity bytes: self bytes) ].
	attachment := self newAttachment.
	self
		deny: attachment isZipArchive;
		assert: attachment isAttachment.
	bytes := attachment
		url: self serverUrl;
		data