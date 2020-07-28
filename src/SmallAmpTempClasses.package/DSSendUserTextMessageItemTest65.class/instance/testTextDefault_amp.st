as yet unclassified
testTextDefault_amp
	"I test correctness of: 

- `^ #()` in method: `DSSendUserTextMessageItem >> #children`

- `^ true` in method: `DSSendUserTextMessageItem >> #isUserTextMessageItem`

"

	<madeBySmallAmp>
	item := self classToTest new.
	self
		assert: item children class equals: Array;
		assert: item isUserTextMessageItem