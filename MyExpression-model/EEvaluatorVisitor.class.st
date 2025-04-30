"
EEvaluatorVisitor class
"
Class {
	#name : 'EEvaluatorVisitor',
	#superclass : 'Object',
	#category : 'MyExpression-model',
	#package : 'MyExpression-model'
}

{ #category : 'visiting' }
EEvaluatorVisitor >> visitAdd: anEAdd [

	^ (anEAdd left accept: self) + (anEAdd right accept: self)
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitConstant: aConstant [
	^ aConstant value
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitMultiplication: anEMultiplication [
	^ (anEMultiplication left accept:self)*(anEMultiplication  right accept: self)
]

{ #category : 'visiting' }
EEvaluatorVisitor >> visitNeg: anENegation [
	^ (anENegation expression accept: self) negated 
]
