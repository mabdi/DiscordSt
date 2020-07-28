as yet unclassified
testChannelId_amp_A33
	"I test correctness of: 

- `^ Text streamContents: [ :aStream | self printFullMessageOn: aStream ]` in method: `DSMessage >> #printFullMessage`

"

	<madeBySmallAmp>
	| aCollection |
	message := self newMessage.
	aCollection := message
		channelId: self anyString;
		printFullMessage.
	self assert:
		aCollection class equals: Text