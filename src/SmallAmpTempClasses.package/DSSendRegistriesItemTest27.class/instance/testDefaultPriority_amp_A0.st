as yet unclassified
testDefaultPriority_amp_A0
	"I test correctness of: 

- `^ self new
	registries: DSRegistries twoWebhooksAndOneClient;
	yourself` in method: `DSSendRegistriesItem class >> #twoWebhooksAndOneClient`

"

	<madeBySmallAmp>
	| aClass aDSSendRegistriesItem |
	aClass := self classToTest.
	aDSSendRegistriesItem := aClass
		new;
		twoWebhooksAndOneClient.
	self assert:
		aDSSendRegistriesItem class equals: DSSendRegistriesItem