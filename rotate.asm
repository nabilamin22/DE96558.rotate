#include<p18F4550.inc>
			org 0x00
			goto start
			org 0x08
			retfie
			org 0x18
			retfie
		
	
start		CLRF	TRISD, A
			CLRF	PORTD, A
			BSF		PORTD, 0, A
		
LOOP		RLNCF	PORTD, F, A
			BRA		LOOP
		
		NOP
		END