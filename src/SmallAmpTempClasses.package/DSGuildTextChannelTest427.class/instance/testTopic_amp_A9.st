as yet unclassified
testTopic_amp_A9
	<madeBySmallAmp>
	channel := self newChannel.
	channel topic: self anyString.
	self should: [ channel message ] raise: SubclassResponsibility