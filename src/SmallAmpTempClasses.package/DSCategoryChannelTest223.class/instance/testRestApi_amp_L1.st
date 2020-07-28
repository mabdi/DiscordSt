as yet unclassified
testRestApi_amp_L1
	<madeBySmallAmp>
	category := self classToTest new.
	category restApi: DSRestBasic new.
	self
		should: [ category subordinateChannels: {nil} ]
		raise: MessageNotUnderstood