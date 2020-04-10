as yet unclassified
topicosMatchingNamePart: unString

	^topicos select:[ :each | (unString asLowercase) includesSubstring: ((each nombre)asLowercase) ].