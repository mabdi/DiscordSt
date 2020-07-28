as yet unclassified
testDescriptionMaxLenghtError_amp_L3
	<madeBySmallAmp>
	| content |
	content := String loremIpsum: DSConstants maxMessageLenght + 0.
	object := self newEmbedObject