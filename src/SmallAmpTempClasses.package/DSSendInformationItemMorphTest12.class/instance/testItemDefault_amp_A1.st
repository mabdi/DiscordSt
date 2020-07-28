as yet unclassified
testItemDefault_amp_A1
	"I test correctness of: 

- `^ self basic
	item: DSSendInformationItem withPharoAndOsVersion;
	yourself` in method: `DSSendInformationItemMorph class >> #withPharoAndOsVersion`

"

	<madeBySmallAmp>
	| aClass aDSSendInformationItemMorph |
	aClass := self classToTest.
	aDSSendInformationItemMorph := aClass
		new;
		withPharoAndOsVersion.
	self
		assert:
			aDSSendInformationItemMorph class
		equals: DSSendInformationItemMorph