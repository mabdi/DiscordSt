as yet unclassified
testTimestamp_amp
	"I test correctness of: 

- `^ type` in method: `DSMessage >> #type` when {#type->nil}

- `^ self hasAttachments
	and: [ self attachments
			anySatisfy: [ :eachAttachment | eachAttachment isFuel ] ]` in method: `DSMessage >> #hasFuelAttachments`

- `self embeds isEmptyOrNil not` in method: `DSMessage >> #hasEmbeds`

- `^ mentionRoleIds` in method: `DSMessage >> #mentionRoleIds` when {#mentionRoleIds->nil}

"

	<madeBySmallAmp>
	message := self newMessage.
	self
		assert: message type isNil;
		deny: message hasFuelAttachments;
		deny: message hasEmbeds;
		assert: message mentionRoleIds isNil.
	message timestamp: self newDateAndTime