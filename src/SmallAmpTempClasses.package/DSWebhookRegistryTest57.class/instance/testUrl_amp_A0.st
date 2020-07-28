as yet unclassified
testUrl_amp_A0
	"I test correctness of: 

- `^ self new
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	icon: (Smalltalk ui icons iconNamed: #pharo);
	name: 'development channel';
	yourself` in method: `DSWebhookRegistry class >> #developmentChannel`

"

	<madeBySmallAmp>
	| url aClass aDSWebhookRegistry |
	url := 'http://example.com'.
	aClass := self classToTest.
	registry := aClass new.
	aDSWebhookRegistry := aClass developmentChannel.
	self assert:
		aDSWebhookRegistry class equals: DSWebhookRegistry.
	registry url: url