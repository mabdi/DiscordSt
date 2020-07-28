as yet unclassified
testUsernameDefault_amp
	"I test correctness of: 

- `^ self embeds notEmpty` in method: `DSWebhookDataPost >> #hasEmbeds`

- `^ mimeParts` in method: `DSWebhookDataPost >> #mimeParts`

"

	<madeBySmallAmp>
	self
		newPost;
		deny: object hasEmbeds;
		assert: object mimeParts class equals: OrderedCollection