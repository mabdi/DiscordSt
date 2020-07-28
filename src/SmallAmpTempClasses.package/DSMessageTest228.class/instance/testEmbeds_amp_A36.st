as yet unclassified
testEmbeds_amp_A36
	"I test correctness of: 

- `^ GLMGenericAction new
	action: [ :presentation | 
		self attachments do: #data.
		presentation update ];
	icon: (Smalltalk ui icons iconNamed: #bottom);
	condition: [ self hasAttachments
			and: [ self attachments
					anySatisfy: [ :attachment | attachment hasData not ] ] ];
	title: 'Download all attachments'` in method: `DSMessage >> #gtInspectorActionDownloadAllAttachments`

- `self hasAttachments
	and: [ self attachments
			anySatisfy: [ :attachment | attachment hasData not ] ]` in method: `DSMessage >> #gtInspectorActionDownloadAllAttachments`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	message := self newMessage.
	aGLMGenericAction := message
		embeds: self newEmptyArray;
		gtInspectorActionDownloadAllAttachments.
	self
		assert:
			aGLMGenericAction class equals: GLMGenericAction;
		assert:
			aGLMGenericAction condition sourceNode formattedCode
			equals:
			'[ self hasAttachments
	and: [ self attachments
			anySatisfy: [ :attachment | attachment hasData not ] ] ]'