INCLUDE "constants.asm"

SECTION "scripts/SilentHillPokecenter.asm", ROMX

SilentHillPokecenter_ScriptLoader::
	ld hl, SilentHillPokecenterScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillPokecenterScriptPointers:
	dw SilentHillPokecenterScript
	dw SilentHillPokecenterNPCIDs

SilentHillPokecenterScript:
	ld hl, SilentHillPokecenterNPCIDs
	ld de, SilentHillPokecenterPCPointer
	call CallMapTextSubroutine
	ret

	dw SilentHillPokecenterNPCIDs

SilentHillPokecenterNPCIDs:
	db 0
	db 1
	db 2
	db 3
	db 4
	db $FF

SilentHillPokecenterPCPointer:
	dw SilentHillPokecenterPCText

SilentHillPokecenterPCText:
	ld hl, SilentHillPokecenterTextString1
	call OpenTextbox
	ret

SilentHillPokecenterTextString1:
	text "Currently under"
	line "maintenance."	
	done

SilentHillPokecenter_TextPointers::
	dw SilentHillPokecenterNPCText1
	dw SilentHillPokecenterNPCText2
	dw SilentHillPokecenterNPCText3
	dw SilentHillPokecenterNPCText4
	dw SilentHillPokecenterNPCText5

SilentHillPokecenterNPCText1:
	ld hl, SilentHillPokecenterTextString2
	call OpenTextbox
	ret

SilentHillPokecenterTextString2:
	text "We're terribly"
	line "sorry, but as"
	cont "we're currently"	
	cont "doing maintenance,"
	cont "we can't heal"
	cont "your #MON at"
	cont "the moment."	


	para "Please be very"
	line "careful when you"
	cont "step out of town."	
	done

SilentHillPokecenterNPCText2:
	ld hl, SilentHillPokecenterTextString3
	call OpenTextbox
	ret

SilentHillPokecenterTextString3:
	text "If you're a"
	line "trainer, you can"
	cont "use that PC over"
	cont "there anytime for"
	cont "free! Thoughtful"
	cont "of them, isn't it?"	
	done

SilentHillPokecenterNPCText3:
	ld hl, SilentHillPokecenterTextString4
	call OpenTextbox
	ret

SilentHillPokecenterTextString4:
	text "I heard that the"
	line "machine they're"
	cont "in the middle of"
	cont "setting up is"	
	cont "really amazing!"		

	para "Apparently it can"
	line "leap through time"
	cont "to trade #MON!"	

	para "I wonder if it's"
	line "true?"	
	done

SilentHillPokecenterNPCText4:
	ld hl, SilentHillPokecenterTextString5
	call OpenTextbox
	ret

SilentHillPokecenterTextString5:
	text "This is HOUNDOOM!"
	line "It's a #MON of"
	cont "a completely new"	
	cont "type."		
	done

SilentHillPokecenterNPCText5:
	ld hl, SilentHillPokecenterTextString6
	call OpenTextbox
	ret

SilentHillPokecenterTextString6:
	text "HOUNDOOM: Grrrr…"
	done
