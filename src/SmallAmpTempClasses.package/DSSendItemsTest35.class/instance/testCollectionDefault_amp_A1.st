as yet unclassified
testCollectionDefault_amp_A1
	"I test correctness of: 

- `^ self new
	collection:
		{DSSendUserTextMessageItem new.
		DSSendAttachmentsItem twoRandomMorphs.
		DSSendRegistriesItem twoWebhooksAndOneClient};
	yourself` in method: `DSSendItems class >> #textScreenshotsAndRegistries`

"

	<madeBySmallAmp>
	| aClass aDSSendItems |
	aClass := self classToTest.
	aDSSendItems := aClass
		new;
		textScreenshotsAndRegistries.
	self assert:
		aDSSendItems class equals: DSSendItems