Class {
	#name : #PostgresTest,
	#superclass : #TestCase,
	#category : #'Polyglotric-Test'
}

{ #category : #running }
PostgresTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	

	
]

{ #category : #tests }
PostgresTest >> testQuery [
	| response time |
	"'psql://username:password@localhost:5432/databasename'"
	time := Time
		millisecondsToRun: [ response := (P3Client new
				url: 'psql://TEST_TBOCMI_ADMIN1:ADMIN1@192.168.40.106:5432/TEST_TBOCMI')
				in: [ :client | 
					[ client query: 'SELECT * FROM TB_USERS' ]
						ensure: [ client close ]
					]
			].
	Transcript
		show:
			'Time to run query: ' , 'SELECT * FROM table1' , ' = '
				, time printString;cr
]
