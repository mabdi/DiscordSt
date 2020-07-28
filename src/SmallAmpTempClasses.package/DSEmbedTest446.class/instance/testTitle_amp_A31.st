as yet unclassified
testTitle_amp_A31
	"I test correctness of: 

- `^ DSEmbedImage new` in method: `DSEmbed >> #newEmbedImage`

"

	<madeBySmallAmp>
	| aDSEmbed aDSEmbedImage |
	aDSEmbed := self newEmbedObject.
	aDSEmbedImage := aDSEmbed
		title: self titleString;
		yourself;
		newEmbedImage.
	self assert:
		aDSEmbedImage class equals: DSEmbedImage