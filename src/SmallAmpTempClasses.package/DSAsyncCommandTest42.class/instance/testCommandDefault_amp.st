as yet unclassified
testCommandDefault_amp
	"I test correctness of: 

- `^ command` in method: `DSAsyncCommand >> #command`

"

	<madeBySmallAmp>
	command := self classToTest new.
	self assert: command command class equals: DSNoCommand