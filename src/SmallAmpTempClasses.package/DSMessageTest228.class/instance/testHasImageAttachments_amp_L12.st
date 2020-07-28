as yet unclassified
testHasImageAttachments_amp_L12
	<madeBySmallAmp>
	self newMessage
		attachments:
			(Array
				with:
					(self newAttachment
						url: 'http://example.com/image.png';
						width: 512;
						height: 322;
						yourself))