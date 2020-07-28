as yet unclassified
testDefaultPriority_amp
	"I test correctness of: 

- `^ self registries` in method: `DSSendRegistriesItem >> #children`

- `^ true` in method: `DSSendRegistriesItem >> #isRegistriesItem`

"

	<madeBySmallAmp>
	item := self classToTest new.
	self
		assert: item children class equals: DSRegistries;
		assert: item isRegistriesItem