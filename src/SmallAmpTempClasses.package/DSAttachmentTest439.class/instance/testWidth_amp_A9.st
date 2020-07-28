as yet unclassified
testWidth_amp_A9
	"I test correctness of: 

- `^ GLMGenericAction new
	action: [ :presentation | 
		| result |
		result := self materialize.
		presentation
			update;
			selection: result ];
	icon: (self iconNamed: #glamorousAdd);
	condition: [ self isImage not ];
	title: 'Materialize'` in method: `DSAttachment >> #gtInspectorActionMaterializeData`

"

	<madeBySmallAmp>
	| aGLMGenericAction |
	attachment := self newAttachment.
	aGLMGenericAction := attachment
		width: 42;
		gtInspectorActionMaterializeData.
	self assert:
		aGLMGenericAction class equals: GLMGenericAction