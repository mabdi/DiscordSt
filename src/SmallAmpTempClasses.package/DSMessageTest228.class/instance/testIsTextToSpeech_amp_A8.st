as yet unclassified
testIsTextToSpeech_amp_A8
	"I test correctness of: 

- `^ self authorName` in method: `DSMessage >> #username`

"

	<madeBySmallAmp>
	| aString |
	message := self newMessage.
	aString := message
		isTextToSpeech: true;
		username.
	self assert: aString equals: 'Userless Name'