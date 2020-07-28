as yet unclassified
testContentMaxLenghtError_amp
	"I test correctness of: 

- `self hasAttachments
	and: [ self attachments
			anySatisfy: [ :eachAttachment | eachAttachment isFuel ] ]` in method: `DSMessage >> #hasFuelAttachments`

- `^ self embeds anySatisfy: #hasImage` in method: `DSMessage >> #hasEmbedImages`

- `^ self embeds isEmptyOrNil not` in method: `DSMessage >> #hasEmbeds`

"

	<madeBySmallAmp>
	| content |
	self
		newMessage;
		deny: message hasFuelAttachments;
		deny: message hasEmbedImages;
		deny: message hasEmbeds