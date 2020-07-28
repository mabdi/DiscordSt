as yet unclassified
testDescriptionMaxLenght_amp_A29
	"I test correctness of: 

- `^ DSEmbedThumbnail new` in method: `DSEmbed >> #newEmbedThumbnail`

"

	<madeBySmallAmp>
	| content aDSEmbed aDSEmbedThumbnail |
	content := String loremIpsum: DSConstants maxMessageLenght.
	aDSEmbed := self newEmbedObject.
	aDSEmbedThumbnail := aDSEmbed
		description: content;
		yourself;
		newEmbedThumbnail.
	self assert:
		aDSEmbedThumbnail class equals: DSEmbedThumbnail