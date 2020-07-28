as yet unclassified
testUrl_amp
	"I test correctness of: 

- `^ self image notNil` in method: `DSEmbed >> #hasImage`

- `^ timestamp` in method: `DSEmbed >> #timestamp` when {#timestamp->nil}

- `^ true` in method: `DSEmbed >> #isEmbed`

- `^ self description isEmptyOrNil not` in method: `DSEmbed >> #hasDescription`

- `^ thumbnail` in method: `DSEmbed >> #thumbnail` when {#thumbnail->nil}

"

	<madeBySmallAmp>
	| aDSEmbed |
	aDSEmbed := self newEmbedObject.
	self
		deny:
			aDSEmbed hasImage;
		assert:
			aDSEmbed timestamp isNil;
		assert:
			aDSEmbed isEmbed;
		deny:
			aDSEmbed hasDescription;
		assert:
			aDSEmbed thumbnail isNil.
	object := aDSEmbed
		url: self anyString;
		yourself