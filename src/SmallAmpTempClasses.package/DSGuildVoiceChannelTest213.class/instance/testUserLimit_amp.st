as yet unclassified
testUserLimit_amp
	"I test correctness of: 

- `^ DSChannelGuildVoiceType uniqueInstance` in method: `DSGuildVoiceChannel >> #type`

- `^ true` in method: `DSGuildVoiceChannel >> #isGuildVoiceChannel`

"

	<madeBySmallAmp>
	channel := self newChannel.
	self
		assert: channel type class equals: DSChannelGuildVoiceType;
		assert: channel isGuildVoiceChannel.
	channel userLimit: 1234