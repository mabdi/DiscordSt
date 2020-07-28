as yet unclassified
testWidth_amp_A1
	"I test correctness of: 

- `^ self width @ self height` in method: `DSEmbedImage >> #extent`

"

	<madeBySmallAmp>
	| aPoint |
	object := self newObjectToTest.
	aPoint := object
		width: 42;
		extent.
	self assert:
		aPoint class equals: Point