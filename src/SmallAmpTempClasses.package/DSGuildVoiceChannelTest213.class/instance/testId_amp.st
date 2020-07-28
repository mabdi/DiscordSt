as yet unclassified
testId_amp
	"I test correctness of: 

- `^ parentId` in method: `DSGuildVoiceChannel >> #parentId` when {#parentId->nil}

"

	<madeBySmallAmp>
	channel := self newChannel.
	self assert: channel parentId isNil.
	channel id: self anyString