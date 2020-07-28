as yet unclassified
testChannel5_amp_A0
	"I test correctness of: 

- `aChannel name = 'ROCKET CHEESE'` in method: `DSDetectChannelCommand class >> #searchForName`

"

	<madeBySmallAmp>
	| aClass aDSGuildVoiceChannel |
	aClass := self classToTest.
	command := aClass new.
	aDSGuildVoiceChannel := aClass searchForName.
	self assert:
		aDSGuildVoiceChannel class equals: DSGuildVoiceChannel.
	command
		satisfiedBy: [ :aChannel | false ];
		channels: DSCategoryChannel withTwoChannels;
		execute