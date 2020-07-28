as yet unclassified
testRestApi2_amp_L0
	"I test correctness of: 

- `^ self subordinateChannels` in method: `DSCategoryChannel >> #children`

"

	<madeBySmallAmp>
	category := self classToTest new.
	category
		subordinateChannels: {};
		restApi: DSRestBasic new.
	self deny: category isAuthenticated