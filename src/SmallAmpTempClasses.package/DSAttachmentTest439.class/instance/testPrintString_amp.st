as yet unclassified
testPrintString_amp
	"I test correctness of: 

- `self hasData and: [ ZipArchive isZipArchive: self data readStream ]` in method: `DSAttachment >> #isZipArchive`

- `^ self url
	ifNotNil: [ :string | 
		string asZnUrl lastPathSegment
			ifNotNil: [ :segment | segment asLowercase endsWith: '.fuel' ]
			ifNil: false ]
	ifNil: false` in method: `DSAttachment >> #isFuel`

"

	<madeBySmallAmp>
	self
		newAttachment;
		deny: attachment isZipArchive;
		deny: attachment isFuel