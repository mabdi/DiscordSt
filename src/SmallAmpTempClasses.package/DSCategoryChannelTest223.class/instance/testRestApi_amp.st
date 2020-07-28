as yet unclassified
testRestApi_amp
	"I test correctness of: 

- `^ nsfw` in method: `DSCategoryChannel >> #nsfw` when {#nsfw->nil}

- `^ DSChannelGuildCategoryType uniqueInstance` in method: `DSCategoryChannel >> #type`

- `^ name` in method: `DSCategoryChannel >> #name` when {#name->nil}

- `^ id` in method: `DSCategoryChannel >> #id` when {#id->nil}

- `^ true` in method: `DSCategoryChannel >> #isCategory`

- `^ guildId` in method: `DSCategoryChannel >> #guildId` when {#guildId->nil}

- `^ position` in method: `DSCategoryChannel >> #position` when {#position->nil}

- `^ permissionOverwrites` in method: `DSCategoryChannel >> #permissionOverwrites` when {#permissionOverwrites->nil}

"

	<madeBySmallAmp>
	category := self classToTest new.
	self
		assert: category nsfw isNil;
		assert: category type class equals: DSChannelGuildCategoryType;
		assert: category name isNil;
		assert: category id isNil;
		assert: category isCategory;
		assert: category guildId isNil;
		assert: category position isNil;
		assert: category permissionOverwrites isNil.
	category
		restApi: DSRestBasic new;
		subordinateChannels: {DSGuildTextChannel new}