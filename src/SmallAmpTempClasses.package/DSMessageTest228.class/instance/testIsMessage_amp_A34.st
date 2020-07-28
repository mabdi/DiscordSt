as yet unclassified
testIsMessage_amp_A34
	<madeBySmallAmp>
	| aDSMessage |
	aDSMessage := self newMessage.
	aDSMessage isMessage.
	self
		should: [ aDSMessage
				content:
					'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Dolore quis consectetur amet ipsum in cillum excepteur ullamco veniam. Ex exercitation et excepteur laboris ad. Est ex eu ex veniam culpa aliquip elit aliquip est qui fugiat nisi sint. Cupidatat esse sunt cupidatat dolor et duis eu ullamco cupidatat ullamco. In in culpa aute magna esse eiusmod tempor voluptate consectetur id aliquip irure esse est sint culpa anim consequat nulla. Amet ex aliqua ut ea dolore proident irure ex dolor minim incididunt id qui aliquip proident proident dolor in. Aliquip mollit proident irure cupidatat ex irure ut ea. 

Dolor enim nisi reprehenderit ut dolore occaecat ea. Ea do occaecat. Deserunt ipsum ullamco aute dolore velit ad officia enim veniam ad ut incididunt ad et in reprehenderit. Eiusmod minim esse minim enim ut lorem nulla dolore deserunt non est exercitation in enim enim nisi irure. Eiusmod sed dolor ex. Duis sunt pariatur sed magna amet tempor dolore. Ut culpa. Non eiusmod culpa veniam quis voluptate consectetur. Ea labore est duis eu cupidatat incididunt velit sunt. In ex nostrud ut. Ipsum consequat sit labore incididunt et dolor laborum id et culpa. Veniam sunt lorem consequat anim exercitation ullamco excepteur mollit esse occaecat in commodo duis nostrud laboris ullamco commodo exercitation. 

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse.
' ]
		raise: DSLongMessageError