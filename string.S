		;		ARM Programming Assignment #2: Writing C-strings
		;
		;		Write a program that assembles the values in chars*
		;		into a C-style string. A C-style string is an array
		;		of byte-size characters, terminated by a NULL (0x0).
		;		Write the C-string to the FILL memory at 'string'.
		;		Note: It's up to you to declare the correct number
		;		of bytes to hold the result.
		
		;		Your code here
		
chars0	DCD		'T', 'h', 'e', ' ', '2', '0', '1', '8', ' ', 'T', 'u'
chars1	DCD		'r', 'i', 'n', 'g', ' ', 'A', 'w', 'a', 'r', 'd', ' '
chars2	DCD		'w', 'a', 's', ' ', 'a', 'w', 'a', 'r', 'd', 'e', 'd'
chars3	DCD		' ', 't', 'o', ' ', 'B', 'e', 'n', 'g', 'i', 'o'
chars4	DCD		' ', 'H', 'i', 'n', 't', 'o', 'n', ' ', 'a', 'n'
chars5	DCD		'd', ' ', 'L', 'e', 'C', 'u', 'n', 'n', ' ', 'f', 'o'
chars6	DCD		'r', ' ', 't', 'h', 'e', 'i', 'r', ' ', 'w', 'o', 'r'
chars7	DCD		'k', ' ', 'o', 'n', ' ', 'n', 'e', 'u', 'r', 'a', 'l'
chars8	DCD		'n', 'e', 't', 'w', 'o', 'r', 'k', 's', '.'
count	DCD		95
		;string	FILL	?
		
start
		LDR		r0, =chars0			;load address of chars0
		LDR		r1, =chars1			;load address of chars1
		LDR		r2, =chars2			;load address of chars2
		LDR		r3, =chars3			;load address of chars3
		LDR		r4, =chars4			;load address of chars4
		LDR		r5, =chars5			;load address of chars5
		LDR		r6, =chars6			;load address of chars6
		LDR		r7, =chars7			;load address of chars7
		LDR		r8, =chars8			;load address of chars8
		ADR		r10, count			;count to r10
		LDR		r10, [r10]				;load count into r10
		MOV		r11, #0				;move zero into r11 for counter
		
string
		ADD		r11, r11, #1			;increment counter
		LDRB		r9, [r0], #1			;load byte and update address
		CMP		r9, #0				;check for zero terminator
		CMP		r10, r11				;compare count  to counter to see if done
		BNE		string					;loop back to string
		
