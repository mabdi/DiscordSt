as yet unclassified
testUrl_amp_A18
	<madeBySmallAmp>
	| aDSEmbed |
	aDSEmbed := self newEmbedObject.
	aDSEmbed url: self anyString.
	self
		should: [ aDSEmbed
				description:
					'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Mollit dolor laboris. Officia aliqua aliqua ut aliqua veniam dolore commodo deserunt eu minim cupidatat eiusmod ipsum reprehenderit eiusmod fugiat. Id consectetur cupidatat sit sint elit laborum amet nostrud reprehenderit adipiscing labore duis culpa non sint qui ut nostrud tempor sunt. Mollit dolor non eiusmod. Non ipsum qui. Incididunt nostrud est in est labore ex laborum. Cupidatat consequat laboris tempor ipsum enim sit laboris. Ea excepteur sed nulla cillum do et tempor. Velit ut eiusmod culpa aliquip voluptate sint veniam culpa esse quis occaecat ut incididunt ut eu sit. Est laboris laboris elit id labore sint exercitation in anim. Dolore anim veniam ad aliqua tempor in eu tempor occaecat cupidatat sint est. Est lorem nisi ut sit esse excepteur. Qui eiusmod culpa minim ullamco est ea culpa deserunt ea dolore non nostrud do deserunt nostrud reprehenderit fugiat ipsum. Do consequat minim anim. 

Ex deserunt adipiscing magna non cillum tempor ipsum sint consectetur ut in sit ipsum mollit in laboris ex et dolor officia. Velit voluptate anim. 

Excepteur sint in irure enim aliquip ex ullamco excepteur nisi. Cillum quis. Culpa aliqua do dolor laboris in velit esse dolore. Mollit est aliquip enim quis duis cillum excepteur et sit nostrud in nulla ad sunt aute exercitation fugiat cupidatat ut in. Lorem magna ut ullamco amet dolore ipsum consectetur mollit eiusmod duis ut culpa ut nulla ad sint. 

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad.
' ]
		raise: DSLongMessageError