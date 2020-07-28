as yet unclassified
testAsync_amp_A0
	"I test correctness of: 

- `^ self new
	channels: DSCategoryChannel withTwoChannels;
	satisfiedBy: [ :aChannel | aChannel name = 'ROCKET CHEESE' ];
	execute;
	satisfyingChannel` in method: `DSDetectChannelCommand class >> #searchForName`

"

	<madeBySmallAmp>
	| aDSDetectChannelCommand aClass aDSGuildVoiceChannel |
	aClass := self classToTest.
	aDSDetectChannelCommand := aClass new.
	aDSGuildVoiceChannel := aClass searchForName.
	self assert:
		aDSGuildVoiceChannel class equals: DSGuildVoiceChannel.
	command := aDSDetectChannelCommand async