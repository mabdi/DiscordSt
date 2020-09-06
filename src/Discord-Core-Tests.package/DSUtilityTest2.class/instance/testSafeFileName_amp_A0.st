tests
testSafeFileName_amp_A0
	| safeString tmp_9uI8STLWPl1 |
	safeString := DSUtility
		safeFileName:
			'a .(DDDSClient): user.name.secondname@gggmaillll.com (detail) (more info) (and more info)'.
	self assert: DSUtility asString equals: 'DSUtility'.
	self assert: safeString equals: 'a-DDDSClient-us'.
	tmp_9uI8STLWPl1 := DSUtility newZnClientWithUserAgent.
	self assert: DSUtility asString equals: 'DSUtility'.
	self assert: tmp_9uI8STLWPl1 class equals: ZnClient.
	self deny: tmp_9uI8STLWPl1 isConnected.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity class
		equals: ZnApplicationFormUrlEncodedEntity.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType class
		equals: ZnMimeType.
	self
		deny:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType
				hasParameters.
	self
		deny:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType
				isVendorSpecific.
	self
		deny:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType
				isCharSetUTF8.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType main
		equals: 'application'.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType isBinary.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType sub
		equals: 'x-www-form-urlencoded'.
	self
		assert:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentType
				isNonStandard.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields class
		equals: ZnMultiValueDictionary.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields values class
		equals: Array.
	self
		assertEmpty: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields values.
	self
		assert:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields
				keysSortedSafely class
		equals: Array.
	self
		assertEmpty:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields
				keysSortedSafely.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields isDictionary.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields isHealthy.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields limit
		equals: 256.
	self
		assert:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields associations
				class
		equals: Array.
	self
		assertEmpty: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields associations.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields keys class
		equals: Array.
	self
		assertEmpty: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity fields keys.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity hasContentType.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contentLength
		equals: 0.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity hasContentLength.
	self assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity isEmpty.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents class
		equals: ZnMultiValueDictionary.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents values class
		equals: Array.
	self
		assertEmpty: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents values.
	self
		assert:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents
				keysSortedSafely class
		equals: Array.
	self
		assertEmpty:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents
				keysSortedSafely.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents isDictionary.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents isHealthy.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents limit
		equals: 256.
	self
		assert:
			tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents associations
				class
		equals: Array.
	self
		assertEmpty: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents associations.
	self
		assert: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents keys class
		equals: Array.
	self
		assertEmpty: tmp_9uI8STLWPl1 applicationFormUrlEncodedEntity contents keys.
	self assert: tmp_9uI8STLWPl1 connection isNil.
	self assert: tmp_9uI8STLWPl1 request class equals: ZnRequest.
	self assert: tmp_9uI8STLWPl1 request isHttp11.
	self
		assert: tmp_9uI8STLWPl1 request requestLine class
		equals: ZnRequestLine.
	self
		assert: tmp_9uI8STLWPl1 request requestLine version
		equals: 'HTTP/1.1'.
	self assert: tmp_9uI8STLWPl1 request requestLine isHttp11.

	self deny: tmp_9uI8STLWPl1 request requestLine isHttp10.
	self assert: tmp_9uI8STLWPl1 request requestLine uri isNil.
	self assert: tmp_9uI8STLWPl1 request server isNil.
	self deny: tmp_9uI8STLWPl1 request hasSession.
	self
		assert: tmp_9uI8STLWPl1 request contents class
		equals: ZnMultiValueDictionary.
	self
		assert: tmp_9uI8STLWPl1 request contents values class
		equals: Array.
	self assertEmpty: tmp_9uI8STLWPl1 request contents values.
	self
		assert: tmp_9uI8STLWPl1 request contents keysSortedSafely class
		equals: Array.
	self assertEmpty: tmp_9uI8STLWPl1 request contents keysSortedSafely.
	self assert: tmp_9uI8STLWPl1 request contents isDictionary.
	self assert: tmp_9uI8STLWPl1 request contents isHealthy.
	self assert: tmp_9uI8STLWPl1 request contents limit equals: 256.
	self
		assert: tmp_9uI8STLWPl1 request contents associations class
		equals: Array.
	self assertEmpty: tmp_9uI8STLWPl1 request contents associations.
	self
		assert: tmp_9uI8STLWPl1 request contents keys class
		equals: Array.
	self assertEmpty: tmp_9uI8STLWPl1 request contents keys.
	self assert: tmp_9uI8STLWPl1 request cookies class equals: Array.
	self assertEmpty: tmp_9uI8STLWPl1 request cookies.
	self assert: tmp_9uI8STLWPl1 request absoluteUrl isNil.
	self assert: tmp_9uI8STLWPl1 request hasEntity.
	self deny: tmp_9uI8STLWPl1 request isConnectionKeepAlive.
	self assert: tmp_9uI8STLWPl1 request host isNil.
	self deny: tmp_9uI8STLWPl1 request isHttp10.
	self assert: tmp_9uI8STLWPl1 request contentLength equals: 0.
	self assert: tmp_9uI8STLWPl1 request uri isNil.
	self assert: tmp_9uI8STLWPl1 request accept equals: '*/*'.
	self deny: tmp_9uI8STLWPl1 request wantsConnectionClose.
	self deny: tmp_9uI8STLWPl1 request isConnectionClose.
	self deny: tmp_9uI8STLWPl1 request acceptsEncodingGzip.
	self
		assert: tmp_9uI8STLWPl1 request entity class
		equals: ZnApplicationFormUrlEncodedEntity.
	self
		assert: tmp_9uI8STLWPl1 request entity contentType class
		equals: ZnMimeType.
	self
		assert: tmp_9uI8STLWPl1 request entity fields class
		equals: ZnMultiValueDictionary.
	self assert: tmp_9uI8STLWPl1 request entity hasContentType.
	self assert: tmp_9uI8STLWPl1 request entity contentLength equals: 0.
	self assert: tmp_9uI8STLWPl1 request entity hasContentLength.
	self assert: tmp_9uI8STLWPl1 request entity isEmpty.
	self
		assert: tmp_9uI8STLWPl1 request entity contents class
		equals: ZnMultiValueDictionary.
	self assert: tmp_9uI8STLWPl1 request hasHeaders.
	self assert: tmp_9uI8STLWPl1 request url isNil.
	self
		assert: tmp_9uI8STLWPl1 request contentType class
		equals: ZnMimeType.
	self deny: tmp_9uI8STLWPl1 request contentType hasParameters.
	self deny: tmp_9uI8STLWPl1 request contentType isVendorSpecific.
	self deny: tmp_9uI8STLWPl1 request contentType isCharSetUTF8.
	self
		assert: tmp_9uI8STLWPl1 request contentType main
		equals: 'application'.
	self assert: tmp_9uI8STLWPl1 request contentType isBinary.
	self
		assert: tmp_9uI8STLWPl1 request contentType sub
		equals: 'x-www-form-urlencoded'.
	self assert: tmp_9uI8STLWPl1 request contentType isNonStandard.
	self assert: tmp_9uI8STLWPl1 response isNil.
	self assert: tmp_9uI8STLWPl1 entity isNil.
	self assert: tmp_9uI8STLWPl1 contents isNil