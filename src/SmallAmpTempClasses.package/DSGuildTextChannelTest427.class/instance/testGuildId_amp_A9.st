as yet unclassified
testGuildId_amp_A9
	<madeBySmallAmp>
	channel := self newChannel.
	channel guildId: self anyString.
	self should: [ channel message ] raise: SubclassResponsibility