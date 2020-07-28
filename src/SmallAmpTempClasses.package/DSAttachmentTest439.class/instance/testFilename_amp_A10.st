as yet unclassified
testFilename_amp_A10
	"I test correctness of: 

- `self hasData not` in method: `DSAttachment >> #gtInspectorActionDownloadData`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	attachment := self newAttachment.
	aGLMGenericAction := attachment
		filename: self anyString;
		gtInspectorActionDownloadData.
	self
		assert:
			aGLMGenericAction condition sourceNode formattedCode
		equals: '[ self hasData not ]'