as yet unclassified
testItemDefault_amp_A0
	"I test correctness of: 

- `^ self withPharoAndOsVersion openInWindow` in method: `DSSendInformationItemMorph class >> #withPharoAndOsVersionInWindow`

"

	<madeBySmallAmp>
	| aClass aSystemWindow |
	aClass := self classToTest.
	aSystemWindow := aClass
		new;
		withPharoAndOsVersionInWindow.
	self assert:
		aSystemWindow class equals: SystemWindow