as yet unclassified
testHasImageAttachments_amp
	<madeBySmallAmp>
	self newMessage
		attachments:
			(Array
				with:
					(self newAttachment
						url: 'http://example.com/image.png';
						width: 512;
						height: 321;
						yourself))