as yet unclassified
testDescriptionMaxLenghtError_amp
	"I test correctness of: 

- `^ type` in method: `DSEmbed >> #type` when {#type->nil}

- `^ video` in method: `DSEmbed >> #video` when {#video->nil}

- `^ provider` in method: `DSEmbed >> #provider` when {#provider->nil}

- `^ image` in method: `DSEmbed >> #image` when {#image->nil}

- `^ author` in method: `DSEmbed >> #author` when {#author->nil}

- `self description isEmptyOrNil not` in method: `DSEmbed >> #hasDescription`

"

	<madeBySmallAmp>
	| content |
	content := String loremIpsum: DSConstants maxMessageLenght + 1.
	self
		newEmbedObject;
		assert: object type isNil;
		assert: object video isNil;
		assert: object provider isNil;
		deny: object hasImage;
		assert: object author isNil;
		deny: object hasDescription