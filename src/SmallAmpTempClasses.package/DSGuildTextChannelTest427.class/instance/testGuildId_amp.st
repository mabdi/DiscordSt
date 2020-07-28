as yet unclassified
testGuildId_amp
	"I test correctness of: 

- `^ true` in method: `DSGuildTextChannel >> #isGuildTextChannel`

- `^ icon` in method: `DSGuildTextChannel >> #icon` when {#icon->nil}

- `^ DSChannelGuildTextType uniqueInstance` in method: `DSGuildTextChannel >> #type`

"

	<madeBySmallAmp>
	channel := self newChannel.
	self
		assert: channel isGuildTextChannel;
		assert: channel icon isNil;
		assert: channel type class equals: DSChannelGuildTextType.
	channel guildId: self anyString