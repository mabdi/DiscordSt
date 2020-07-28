as yet unclassified
testRestApi_amp_L2
	<madeBySmallAmp>
	category := self classToTest new.
	category restApi: DSRestBasic new.
	self
		should: [ category
				subordinateChannels:
					{DSGuildTextChannel new.
					nil} ]
		raise: MessageNotUnderstood