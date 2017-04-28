;----------------Definiciones e includes---------------------------------
.INCLUDE "m1280def.inc"     ;Incluir definiciones de registros para 1280
;----------------Inicializar---------------------------------------------


;----------------Ciclo Principal-----------------------------------------

INICIO:
	CALL DELAY3
	NOP
RJMP INICIO

DELAY1:
  LDI R24,6
  NXT:
	NOP
	LDI R25,206
	NXT2:
		DEC R25
		BRNE NXT2
    DEC R24
	BRNE NXT
	NOP
	NOP
RET

DELAY2:
	LDI R24,91
	NXT3:
		LDI R25,146
		NXT4:
			LDI R26,1
			NXT5:
				DEC R26
				BRNE NXT5
			DEC R25
			BRNE NXT4
		DEC R24
		BRNE NXT3
		NOP
RET

DELAY3:
	LDI R24,118
	NXT6:
		LDI R25,163
		NXT7:
			LDI R26,29
			NXT8:
				LDI R27,4
				NXT9:
					DEC R27
					NOP
					BRNE NXT9
				DEC R26
				BRNE NXT8
			DEC R25
			BRNE NXT7
		DEC R24
		BRNE NXT6
RET
