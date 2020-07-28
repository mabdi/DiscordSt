as yet unclassified
testCollectionDefault_amp
	"I test correctness of: 

- `^ self collection detect: #isRegistriesItem` in method: `DSSendItems >> #registries`

- `^ self collection isEmptyOrNil` in method: `DSSendItems >> #isEmptyOrNil`

"

	<madeBySmallAmp>
	items := self classToTest new.
	self
		assert: items registries class equals: DSSendRegistriesItem;
		deny: items isEmptyOrNil