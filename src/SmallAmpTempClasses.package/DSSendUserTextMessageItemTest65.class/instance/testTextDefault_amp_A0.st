as yet unclassified
testTextDefault_amp_A0
	"I test correctness of: 

- `^ self new
	text: (String loremIpsum: 200);
	yourself` in method: `DSSendUserTextMessageItem class >> #loremIpsum`

"

	<madeBySmallAmp>
	| aClass aDSSendUserTextMessageItem |
	aClass := self classToTest.
	aDSSendUserTextMessageItem := aClass
		new;
		loremIpsum.
	self
		assert:
			aDSSendUserTextMessageItem class
		equals: DSSendUserTextMessageItem