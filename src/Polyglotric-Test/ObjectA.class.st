Class {
	#name : #ObjectA,
	#superclass : #Object,
	#instVars : [
		'age'
	],
	#category : #'Polyglotric-Test'
}

{ #category : #convenience }
ObjectA >> ---> other [
	"comment stating purpose of message"

	^ other
]

{ #category : #convenience }
ObjectA >> --> other [
	"comment stating purpose of message"

	^ other
]

{ #category : #convenience }
ObjectA >> -> other [
	"comment stating purpose of message"

	^ other
]

{ #category : #convenience }
ObjectA >> ? other [
	"self car ? model"

	^ other
]

{ #category : #greetings }
ObjectA >> bye [
	"comment stating purpose of message"

	
	^ 'good nite'
]

{ #category : #example }
ObjectA >> exampleOfConceptOfIfAvoidance [
	"comment stating purpose of message"

	self bunchOfobjects
		do: [ :ea | 
			"not great"
			ea isKindOf: Thing1 ifTrue: [ ea doYourThing1Thing ].
			ea isKindOf: Thing2 ifTrue: [ ea doYourThing2Thing ]
			].
		
		"or instead"
	"better "	
	self bunchOfObjects do: [ :ea | ea doYourThing ]
]

{ #category : #greetings }
ObjectA >> helloWorld [
	^ 'hello'
]

{ #category : #convenience }
ObjectA >> true: this then: that [
	"comment stating purpose of message"

	| other |
	^ other
]
