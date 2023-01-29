INCLUDE "constants.asm"

SECTION "scripts/SilentHillLabBack.asm", ROMX

SilentHillLabBack_ScriptLoader::
	ld hl, SilentHillLabBackScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillLabBackScriptPointers:
	dw SilentHillLabBackScript1
	dw SilentHillLabBackNPCIDs1
	dw SilentHillLabBackScript2
	dw SilentHillLabBackNPCIDs1
	dw SilentHillLabBackScript3
	dw SilentHillLabBackNPCIDs1
	dw SilentHillLabBackRivalChoosePokemon
	dw SilentHillLabBackNPCIDs1
	dw SilentHillLabBackScript5
	dw SilentHillLabBackNPCIDs1
	dw SilentHillLabBackScript6
	dw SilentHillLabBackNPCIDs1
	dw SilentHillLabBackScript7
	dw SilentHillLabBackNPCIDs1

SilentHillLabBackNPCIDs1:
	db 00, 01, 02, 03, 04, $FF
SilentHillLabBackNPCIDs2:
	db 00, 01, 04, $FF
SilentHillLabBackNPCIDs3:
	db 00, 01, 02, $FF
SilentHillLabBackNPCIDs4:
	db 00, 01, 03, $FF

SilentHillLabBack_TextPointers::
	dw SilentHillLabBackText1
	dw SilentHillLabBackFunc3
	dw SilentHillLabBackFunc4
	dw SilentHillLabBackFunc4
	dw SilentHillLabBackFunc4

SilentHillLabBackScript1:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call Function17f9
	ld a, 0
	ld hl, SilentHillLabBackMovement1
	call LoadMovementDataPointer
	ld hl, wd41b
	set 1, [hl]
	ld hl, wc5ed
	set 7, [hl]
	ld a, 1
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabBackMovement1:
	db 09, 09, 05, $32

SilentHillLabBackScript2:
	ld hl, wc5ed
	set 6, [hl]
	call Function20f8
	ld a, 3
	ld d, UP
	call SetObjectFacing
	ld hl, SilentHillLabBackTextString1
	call OpenTextbox
	ld hl, SilentHillLabBackTextString10
	call OpenTextbox
	ld hl, SilentHillLabBackTextString2
	call OpenTextbox
	ld a, 2
	ld [wMapScriptNumber], a
	ret

SilentHillLabBackScript3:
	ld hl, SilentHillLabBackNPCIDs1
	ld de, SilentHillLabBackTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabBackRivalChoosePokemon:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 3
	call Function17f9
	ld hl, SilentHillLabBackMovementPointers
	ld a, [wChosenStarter]
	ld d, 0
	ld e, a
	add hl, de
	add hl, de
	ld a, [hl+]
	ld h, [hl]
	ld l, a
	ld a, 3
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 4
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabBackMovementPointers:
	dw SilentHillLabBackMovement2+1
	dw SilentHillLabBackMovement2
	dw SilentHillLabBackMovement2+2

SilentHillLabBackMovement2:
	db $0B, $0B, $0B, $0B, $05, $32

SilentHillLabBackScript5:
	ld hl, SilentHillLabBackTextString12
	call OpenTextbox
	ld a, [wd266]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	ld hl, SilentHillLabBackTextString13
	call OpenTextbox
	ld a, 5
	ld [wMapScriptNumber], a
	ret

SilentHillLabBackScript6:
	call Function20f8
	ld hl, wc5ed
	res 6, [hl]
	ld a, 6
	ld[wMapScriptNumber], a
	ret

SilentHillLabBackScript7:
	ld hl, SilentHillLabBackNPCIDs1
	ld de, SilentHillLabBackTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabBackText1:
	ld hl, wd41b
	bit 2, [hl]
	ld hl, SilentHillLabBackTextString3
	jr z, .skip
	ld hl, SilentHillLabBackTextString9
.skip
	call OpenTextbox
	ret

SilentHillLabBackTextString1:
	text "OAK: Look over"
	line "there! Do you see"
	cont "those 3 #MON?"
	cont "Hohoho!"	

	para "You can each have"
	cont "one! Choose!"
	done

SilentHillLabBackTextString2:
	text "OAK: Now now,"
	line "<RIVAL>, there's"
	cont "no need to rush."
	cont "Take whichever one"
	cont "you'd like!"	
	done

SilentHillLabBackTextString3:
	text "OAK: Now, <PLAYER>,"
	line "which #MON"
	cont "do you want?"	
	done

SilentHillLabBackTextString4:
	text "OAK: So! You want"
	line "the fire #MON,"	
	cont "@"
	ld bc, wStringBuffer1
	text "?@"
	db 08
	call ConfirmPokemonSelection
	call Function3036
	ret

SilentHillLabBackTextString5:
	text "OAK: So! You want"
	line "the water #MON,"	
	cont "@"
	ld bc, wStringBuffer1
	text "?@"
	db 08
	call ConfirmPokemonSelection
	call Function3036
	ret

SilentHillLabBackTextString6:
	text "OAK: So! You want"
	line "the grass #MON,"	
	cont "@"
	ld bc, wStringBuffer1
	text "?@"
	db 08
	call ConfirmPokemonSelection
	call Function3036
	ret

ConfirmPokemonSelection:
	call YesNoBox
	jr c, .bigJump
	ld hl, wd41b
	set 2, [hl]
	ld a, 1
	ld [wd29b], a
	ld a, 1
	ld [wd29a], a
	ld a, 1
	ld [wd2a0], a
	ld hl, SilentHillLabBackTextString8
	call PrintText
	ld hl, wJoypadFlags
	set 5, [hl]
	ld a, [wd265]
	ld [wMonDexIndex], a
	ld a, 5
	ld [wCurPartyLevel], a
	callab Function60a0
	xor a
	ld [wPartyMon1 + 1], a
	ld a, 3
	ld [wMapScriptNumber], a
	ret
.bigJump
	ld hl, SilentHillLabBackTextString7
	call PrintText
	ret

SilentHillLabBackTextString7:
	text "Very well."
	line "Which one would"
	cont "you like?"	
	done

SilentHillLabBackTextString8:
	text "This #MON is"
	line "really energetic!"

	para "<PLAYER> received"
	line "a @"
	ld bc, wStringBuffer1
	text "!<PROMPT>"

SilentHillLabBackTextString9:
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

SilentHillLabBackFunc3:
	ld hl, wd41b
	bit 2, [hl]
	ld hl, SilentHillLabBackTextString11
	jr z, .skip
	ld hl, SilentHillLabBackTextString14
.skip
	call OpenTextbox
	ret

SilentHillLabBackTextString10:
	text "<RIVAL>: Me too!"
	line "C'mon, gramps,"
	cont "gimme one too!"	
	done

SilentHillLabBackTextString11:
	text "<RIVAL>: I'll let"
	line "you choose first,"
	cont "<PLAYER>, 'cause"
	cont "I'm a generous"
	cont "kind of guy!"	
	done

SilentHillLabBackTextString12:
	text "<RIVAL>: I'll take"
	cont "this one, then!"		
	done

SilentHillLabBackTextString13:
	text "<RIVAL> received"
	line "a@"
	ld bc, wStringBuffer1
	text "!"
	done

SilentHillLabBackTextString14:
	text "<RIVAL>: Your"
	line "#MON is really"
	cont "cool, <PLAYER>!"
	cont "But mine's pretty"
	cont "nice too, right?"	
	done

SilentHillLabBackFunc4:
	ld hl, wd41b
	bit 2, [hl]
	jr nz, .bigjump
	ldh a, [hFFEA]
	sub 2
	ld [wChosenStarter], a
	ld d, 0
	ld e, a
	ld hl, SilentHillLabBackStarterData
	add hl, de
	add hl, de
	add hl, de
	add hl, de
	ld a, [hl+]
	ld [wd265], a
	push hl
	ld [wNamedObjectIndexBuffer], a
	callba Function6734
	ld a, [wd265]
	ld [wNamedObjectIndexBuffer], a
	call GetPokemonName
	pop hl
	push hl
	ld a, [hl+]
	ld h, [hl]
	ld l, a
	call OpenTextbox
	pop hl
	inc hl
	inc hl
	ld a, [hl]
	ld [wd266], a
	ret
.bigjump
	ld hl, SilentHillLabBackTextString15
	call OpenTextbox
	ret

SilentHillLabBackStarterData:
	db DEX_HONOGUMA
	dw SilentHillLabBackTextString4
	db DEX_KURUSU

	db DEX_KURUSU
	dw SilentHillLabBackTextString5
	db DEX_HAPPA

	db DEX_HAPPA
	dw SilentHillLabBackTextString6
	db DEX_HONOGUMA

SilentHillLabBackTextString15:
	text "OAK: Hey now!"
	line "Don't be greedy!"
	done

SilentHillLabBackTextPointers2:
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw MapDefaultText
