as yet unclassified
testAnnouncer_amp
	"I test correctness of: 

- `^ self registries selection` in method: `DSSendRegistriesItem >> #selectedRegistry`

"

	<madeBySmallAmp>
	item := self classToTest new.
	self
		assert: item selectedRegistry class
		equals: DSSingletonClientRegistry