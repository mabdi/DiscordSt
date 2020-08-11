tests
testExtent
	| aPoint |
	object := self newObjectToTest.
	aPoint := object
		width: 42;
		extent.
	self assert: aPoint class equals: Point.
	self assert: aPoint y isNil.
	self assert: aPoint x equals: 42