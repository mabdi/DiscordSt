as yet unclassified
testRestApi_amp_A0
	"I test correctness of: 

- `^ DSModelJsonMapping
	read: #CollectionOfSortedChannels
	withMapping: #collectionOfSortedChannelsMappingFor:
	on: DSModelJsonMapping jsonCollectionOfChannelsThree readStream` in method: `DSCategoryChannel class >> #withTwoChannels`

"

	<madeBySmallAmp>
	| aClass aCollection |
	aClass := self classToTest.
	category := aClass new.
	aCollection := aClass withTwoChannels.
	self assert:
		aCollection class equals: DSChannels.
	category
		restApi: DSRestBasic new;
		subordinateChannels: {DSGuildTextChannel new}