filtering
filterOperatorFrom: aList
	| pattern  |

	pattern := UIManager default chooseFrom: aList asArray message: 'Filter mutants of operators:'.
	^(pattern isNil
			or: [pattern = 0])
		ifTrue: [nil]
		ifFalse: [aList at: pattern].