as yet unclassified
testRestApi2_amp_L1
	<madeBySmallAmp>
	category := self classToTest new.
	self
		should: [ category subordinateChannels: {nil} ]
		raise: MessageNotUnderstood