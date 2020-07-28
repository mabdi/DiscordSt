as yet unclassified
testFooterText_amp_A41
	"I test correctness of: 

- `^ {self image.
self thumbnail.
self footer} reject: [ :each | each isNil ]` in method: `DSEmbed >> #gtChildren`

"

	<madeBySmallAmp>
	| aDSEmbed aCollection |
	aDSEmbed := self newEmbedObject.
	aCollection := aDSEmbed
		footerText: self anyString;
		yourself;
		gtChildren.
	self assert:
		aCollection class equals: Array