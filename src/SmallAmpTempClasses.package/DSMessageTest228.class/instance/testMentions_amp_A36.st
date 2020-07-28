as yet unclassified
testMentions_amp_A36
	"I test correctness of: 

- `self attachments do: #data` in method: `DSMessage >> #gtInspectorActionDownloadAllAttachments`

- `attachment hasData not` in method: `DSMessage >> #gtInspectorActionDownloadAllAttachments`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	message := self newMessage.
	aGLMGenericAction := message
		mentions: self newEmptyArray;
		gtInspectorActionDownloadAllAttachments.
	self
		assert:
			aGLMGenericAction action sourceNode formattedCode
			equals:
			'[ :presentation | 
self attachments do: #data.
presentation update ]';
		assert:
			aGLMGenericAction condition sourceNode formattedCode
			equals:
			'[ self hasAttachments
	and: [ self attachments
			anySatisfy: [ :attachment | attachment hasData not ] ] ]'