suggestions
suggestionForMutationProducedByAReplaceGreaterOrEqualWithGreaterMutantOperator: aMutation 
	^ Text streamContents: 
		[ :aStream | 
		aStream nextPutAll: 'It is missing a test case where '.
		aStream nextPutAll: aMutation nodeToMutate receiver formattedCode asText allBold.
		aStream nextPutAll: ' is equal to '.
		aStream nextPutAll: aMutation nodeToMutate arguments first formattedCode asText allBold. ]