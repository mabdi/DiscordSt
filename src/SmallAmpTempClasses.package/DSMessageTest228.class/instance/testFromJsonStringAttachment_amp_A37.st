as yet unclassified
testFromJsonStringAttachment_amp_A37
	<madeBySmallAmp>
	| api |
	api := self newRestApi.
	message := self coreModelJsonMapping
		read: DSMessage
		withMapping: #messageMappingFor:
		on: self coreModelJsonMapping jsonMessage readStream.
	message
		restApi: api;
		gtInspectorActionDownloadAllAttachments