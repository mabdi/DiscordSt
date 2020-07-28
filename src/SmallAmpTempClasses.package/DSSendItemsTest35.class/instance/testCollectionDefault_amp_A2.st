as yet unclassified
testCollectionDefault_amp_A2
	"I test correctness of: 

- `^ self new
	collection:
		{DSSendUserTextMessageItem new.
		DSSendAttachmentsItem screenshotsAndPackages.
		DSSendRegistriesItem twoWebhooksAndOneClient};
	yourself` in method: `DSSendItems class >> #textScreenshotsPackagesAndRegistries`

"

	<madeBySmallAmp>
	| aClass aDSSendItems |
	aClass := self classToTest.
	aDSSendItems := aClass
		new;
		textScreenshotsPackagesAndRegistries.
	self assert:
		aDSSendItems class equals: DSSendItems