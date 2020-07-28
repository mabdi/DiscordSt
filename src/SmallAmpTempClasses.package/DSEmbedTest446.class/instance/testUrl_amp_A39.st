as yet unclassified
testUrl_amp_A39
	"I test correctness of: 

- `^ DSEmbedProvider new` in method: `DSEmbed >> #newEmbedProvider`

"

	<madeBySmallAmp>
	| aDSEmbed aDSEmbedProvider |
	aDSEmbed := self newEmbedObject.
	aDSEmbedProvider := aDSEmbed
		url: self anyString;
		yourself;
		newEmbedProvider.
	self assert:
		aDSEmbedProvider class equals: DSEmbedProvider