as yet unclassified
testFooter_amp_A42
	<madeBySmallAmp>
	| footer aDSEmbed |
	footer := self newEmbedFooterObject.
	aDSEmbed := self newEmbedObject.
	aDSEmbed
		footer: footer;
		yourself;
		gtChildren