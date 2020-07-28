as yet unclassified
testUrl_amp_A1
	"I test correctness of: 

- `^ self new
	url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
	icon: (Smalltalk ui icons iconNamed: #help);
	name: 'learning-help channel';
	yourself` in method: `DSWebhookRegistry class >> #learningHelpChannel`

"

	<madeBySmallAmp>
	| url aClass aDSWebhookRegistry |
	url := 'http://example.com'.
	aClass := self classToTest.
	registry := aClass new.
	aDSWebhookRegistry := aClass learningHelpChannel.
	self assert:
		aDSWebhookRegistry class equals: DSWebhookRegistry.
	registry url: url