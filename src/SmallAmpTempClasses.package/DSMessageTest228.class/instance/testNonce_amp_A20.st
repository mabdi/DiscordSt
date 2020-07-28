as yet unclassified
testNonce_amp_A20
	"I test correctness of: 

- `^ self embeds select: #hasImage thenCollect: [ :embed | embed image ]` in method: `DSMessage >> #embedImages`

"

	<madeBySmallAmp>
	| aCollection |
	message := self newMessage.
	aCollection := message
		nonce: self anyString;
		embedImages.
	self assert:
		aCollection class equals: OrderedCollection