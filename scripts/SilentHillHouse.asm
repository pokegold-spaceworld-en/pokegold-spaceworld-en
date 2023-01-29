INCLUDE "constants.asm"

SECTION "scripts/SilentHillHouse.asm", ROMX

SilentHillHouse_ScriptLoader::
	ld hl, SilentHillHouseScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillHouseScriptPointers:
	dw SilentHillHouseScript1
	dw SilentHillHouseNPCIDs1
	dw SilentHillHouseScript2
	dw SilentHillHouseNPCIDs2
	dw SilentHillHouseScript3
	dw SilentHillHouseNPCIDs1

SilentHillHouseScript1:
	ld hl, SilentHillHouseNPCIDs1
	ld de, SilentHillHouseTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillHouseScript2:
	ld hl, SilentHillHouseNPCIDs2
	ld de, SilentHillHouseTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillHouseScript3:
	ld hl, SilentHillHouseNPCIDs1
	ld de, SilentHillHouseTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillHouseNPCIDs1:
	db 0
	db $FF

SilentHillHouseNPCIDs2:
	db 0
	db 1
	db $FF

SilentHillHouseTextPointers2::
	dw SilentHillHouseNPCText1
	dw Function38bd
	dw Function3899
	dw Function38b4
	dw Function38ab
	dw Function38cf

SilentHillHouseNPCText1:
	ld hl, wd41a
	bit 6, [hl]
	jr nz, .jump
	ld hl, SilentHillHouseTextString1
	call OpenTextbox
	ret

.jump
	call RefreshScreen
	callab PokemonCenterPC
	call Function1fea
	ret

SilentHillHouseTextString1:
	text "What's this? There"
	line "seems to be a new"
	cont "e-mail addressed"
	cont "to <RIVAL>."
	cont "Read it?@"	
	db $08

SilentHillHouseNPCText2: ; (unused due to typo in the text pointers?)
	call YesNoBox
	jr c, .jump
	ld hl, wd41a
	set 6, [hl]
	ld hl, SilentHillHouseTextString2
	call PrintText
	call Function3036
	ret
.jump
	ld hl, SilentHillHouseTextString3
	call PrintText
	call Function3036
	ret

SilentHillHouseTextString2:
	text "I hope you'll"
	line "excuse the sudden"
	cont "e-mail, but there's"
	cont "something that I"
	cont "would like to"
	cont "entrust you with."
	cont "Won't you come by"	
	cont "and collect it?"
	
	para "#MON researcher"
	line "OAK"
	done

SilentHillHouseTextString3:
	text "Right. I shouldn't"
	line "read others' mail."
	done

SilentHillHouse_TextPointers::
	dw SilentHillHouseNPCText3
	dw SilentHillHouseNPCText4

SilentHillHouseNPCText3:
	ld hl, SilentHillHouseTextString4
	call OpenTextbox
	ret

SilentHillHouseTextString4:
	text "The other day I"
	line "saw a strange-"
	cont "colored PIDGEY!"	
	done

SilentHillHouseNPCText4:
	ld hl, wd41e
	bit 2, [hl]
	jr nz, .jump
	ld hl, wd41e
	set 2, [hl]
	ld hl, SilentHillHouseTextString5
	call OpenTextbox
	call WaitBGMap
	ld hl, SilentHillHouseTextString6
	jr .skip
.jump
	ld hl, SilentHillHouseTextString7
.skip
	call OpenTextbox
	ret

SilentHillHouseTextString5:
	text "KEN: Wh- wha-… If"
	line "it isn't <PLAYER>!"

	para "I'm, uh… I'm here"
	line "to help out with"
	cont "homework! Yeah!"

	para "Huh? A map? Right,"
	line "I promised to help"
	cont "with that, didn't"
	cont "I? Hand me your"
	cont "TRAINER GEAR for"
	cont "a second."	

	para "By putting the map"
	line "cartridge into"
	cont "this slot here…"
	cont "There we go!"
	cont "Now you can use"
	cont "the map."	
	done

SilentHillHouseTextString6:
	text "KEN: If you're"
	line "going to OLD CITY,"
	cont "you should look"
	cont "for a guy called"
	cont "BILL!"	

	para "He's a friend of"
	line "mine who knows a"
	cont "lot about #MON."
	cont "I'm sure he'll"
	cont "help you out!"	
	done

SilentHillHouseTextString7:
	text "KEN: You were"
	line "invited by PROF."
	cont "OAK to help make a"
	cont "new #DEX? Whoa!"
	cont "Good luck!"	
	done
