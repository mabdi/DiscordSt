as yet unclassified
testUrl_amp_A14
	<madeBySmallAmp>
	| aDSEmbed |
	aDSEmbed := self newEmbedObject.
	object := aDSEmbed
		url: self anyString;
		gtChildren;
		yourself