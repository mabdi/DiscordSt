as yet unclassified
testPermissionOverwrites_amp_A8
	<madeBySmallAmp>
	channel := self newChannel.
	channel permissionOverwrites: #().
	self should: [ channel message ] raise: SubclassResponsibility