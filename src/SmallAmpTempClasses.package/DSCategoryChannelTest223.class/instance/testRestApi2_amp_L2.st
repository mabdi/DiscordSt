as yet unclassified
testRestApi2_amp_L2
	<madeBySmallAmp>
	category := self classToTest new.
	self
		should: [ category
				subordinateChannels:
					{DSGuildTextChannel new.
					nil} ]
		raise: MessageNotUnderstood