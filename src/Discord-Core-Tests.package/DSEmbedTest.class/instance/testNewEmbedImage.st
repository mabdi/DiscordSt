tests
testNewEmbedImage
	| aDSEmbedImage |
	aDSEmbedImage := self newEmbedObject newEmbedImage.
	self assert: aDSEmbedImage class equals: DSEmbedImage