as yet unclassified
testDescriptionMaxLenght_amp_A23
	<madeBySmallAmp>
	| content aDSEmbed |
	content := String loremIpsum: DSConstants maxMessageLenght.
	aDSEmbed := self newEmbedObject.
	object := aDSEmbed
		description: content;
		newEmbedVideo;
		yourself