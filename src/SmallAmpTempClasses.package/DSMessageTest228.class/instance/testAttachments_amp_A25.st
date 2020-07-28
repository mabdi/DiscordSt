as yet unclassified
testAttachments_amp_A25
	"I test correctness of: 

- `^ self attachments select: #isImage` in method: `DSMessage >> #imageAttachments`

"

	<madeBySmallAmp>
	| aCollection |
	message := self newMessage.
	aCollection := message
		attachments: self newEmptyArray;
		imageAttachments.
	self assert:
		aCollection class equals: Array