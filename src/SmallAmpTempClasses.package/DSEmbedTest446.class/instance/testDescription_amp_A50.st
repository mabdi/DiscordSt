as yet unclassified
testDescription_amp_A50
	"I test correctness of: 

- `^ DSEmbedVideo new` in method: `DSEmbed >> #newEmbedVideo`

"

	<madeBySmallAmp>
	| aDSEmbed aDSEmbedVideo |
	aDSEmbed := self newEmbedObject.
	aDSEmbedVideo := aDSEmbed
		description: self anyString;
		yourself;
		newEmbedVideo.
	self assert:
		aDSEmbedVideo class equals: DSEmbedVideo