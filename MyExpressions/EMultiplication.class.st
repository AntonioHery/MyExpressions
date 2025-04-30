"
EMultiplication class
"
Class {
	#name : 'EMultiplication',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'instance creation' }
EMultiplication class >> left: anInteger right: anInteger2 [

	^ self new
		  left: anInteger;
		  right: anInteger2.
]

{ #category : 'visiting' }
EMultiplication >> accept: aVisitor [
	^ aVisitor visitMultiplication: self
]

{ #category : 'public access' }
EMultiplication >> evaluate [
	^ left evaluate * right evaluate
]

{ #category : 'accessing' }
EMultiplication >> operationString [
	^'*'
]
