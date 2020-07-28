as yet unclassified
testChannelId_amp_A18
	"I test correctness of: 

- `^ self attachments ifNotNil: #size ifNil: 0` in method: `DSMessage >> #numberOfAttachments`

"

	<madeBySmallAmp>
	| anInteger |
	message := self newMessage.
	anInteger := message
		channelId: self anyString;
		numberOfAttachments.
	self assert: anInteger equals: 0