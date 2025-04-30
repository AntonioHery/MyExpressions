"
EAddition class
"
Class {
	#name : 'EAdd',
	#superclass : 'EBinaryExpression',
	#category : 'MyExpressions',
	#package : 'MyExpressions'
}

{ #category : 'as yet unclassified' }
EAdd class >> fivePlusThree [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	^ self new
		  left: ep1;
		  right: ep2
]

{ #category : 'instance creation' }
EAdd class >> left: anInteger right: anInteger2 [

	^ self new
		  left: anInteger;
		  right: anInteger2.
]

{ #category : 'as yet unclassified' }
EAdd >> accept: aVisitor [

	^ aVisitor visitAdd: self
]

{ #category : 'public access' }
EAdd >> evaluate [
	^ left evaluate + right evaluate

]

{ #category : 'accessing' }
EAdd >> operationString [ 
	^ '+'
]
