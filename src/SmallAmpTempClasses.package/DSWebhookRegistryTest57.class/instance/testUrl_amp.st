as yet unclassified
testUrl_amp
	"I test correctness of: 

- `^ name` in method: `DSWebhookRegistry >> #name` when {#name->nil}

"

	<madeBySmallAmp>
	| url |
	url := 'http://example.com'.
	registry := self classToTest new.
	self assert: registry name isNil.
	registry url: url