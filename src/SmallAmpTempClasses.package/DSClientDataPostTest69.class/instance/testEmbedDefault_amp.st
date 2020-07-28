as yet unclassified
testEmbedDefault_amp
	"I test correctness of: 

- `^ self embed notNil` in method: `DSClientDataPost >> #hasEmbeds`

- `^ mimeParts` in method: `DSClientDataPost >> #mimeParts`

"

	<madeBySmallAmp>
	self
		newPost;
		deny: post hasEmbeds;
		assert: post mimeParts class equals: OrderedCollection