as yet unclassified
testItemContentChanged_amp
	<madeBySmallAmp>
	| result |
	item := self classToTest new.
	item
		onContentChangedDo: [ :ann | result := ann ];
		text: 'message'