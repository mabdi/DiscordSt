as yet unclassified
testRestApi_amp_A1
	<madeBySmallAmp>
	category := self classToTest new.
	category
		restApi: DSRestBasic new;
		children;
		subordinateChannels: {DSGuildTextChannel new}