as yet unclassified
testTopic_amp
	"I test correctness of: 

- `^ messages ifNil: [ self restApi messagesForChannel: self ]` in method: `DSGuildTextChannel >> #messages` when {#messages->nil}

- `^ parentId` in method: `DSGuildTextChannel >> #parentId` when {#parentId->nil}

- `^ nsfw` in method: `DSGuildTextChannel >> #nsfw` when {#nsfw->nil}

"

	<madeBySmallAmp>
	channel := self newChannel.
	self
		assert: channel messages class equals: DSMessages;
		assert: channel parentId isNil;
		assert: channel nsfw isNil.
	channel topic: self anyString