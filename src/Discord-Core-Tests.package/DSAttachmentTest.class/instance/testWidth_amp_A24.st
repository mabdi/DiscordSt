tests
testWidth_amp_A24
	<madeBySmallAmp>
	attachment := self newAttachment.
	"attachment width: 42."
	self should: [ attachment data ] raise: MessageNotUnderstood "#asZnUrl was sent to nil"