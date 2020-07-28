as yet unclassified
testCollectionDefault_amp_A0
	"I test correctness of: 

- `^ self new
	collection:
		{DSSendUserTextMessageItem new.
		DSSendRegistriesItem twoWebhooksAndOneClient};
	yourself` in method: `DSSendItems class >> #textAndRegistries`

"

	<madeBySmallAmp>
	| aClass aDSSendItems |
	aClass := self classToTest.
	aDSSendItems := aClass
		new;
		textAndRegistries.
	self assert:
		aDSSendItems class equals: DSSendItems