tests
testWithTwoChannels
	| aCollection |
	aCollection := self classToTest withTwoChannels.
	self assert: aCollection class equals: DSChannels.
	self assert: aCollection size equals: 1.
	self assert: (aCollection at: 1) class equals: DSCategoryChannel.
	self
		assert: (aCollection at: 1) subordinateChannels class
		equals: DSChannels.
	self assert: (aCollection at: 1) subordinateChannels size equals: 2.
	self assert: (aCollection at: 1) position equals: 0.