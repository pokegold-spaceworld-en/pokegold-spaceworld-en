INCLUDE "constants.asm"

SECTION "scripts/PlayerHouse2F.asm", ROMX

PlayerHouse2F_ScriptLoader::
	ld hl, PlayerHouse2FScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

PlayerHouse2FScriptPointers:
	dw PlayerHouse2FScript1
	dw PlayerHouse2FNPCIDs1
	dw PlayerHouse2FScript2
	dw PlayerHouse2FNPCIDs2

PlayerHouse2F_TextPointers::
	dw PlayerHouse2FText1
	dw PlayerHouse2FDollText

PlayerHouse2FNPCIDs1:
	db 0
	db 1
	db $FF

PlayerHouse2FNPCIDs2:
	db 1
	db $FF

PlayerHouse2FSignPointers:
	dw Function3899
	dw PlayerHouse2FRadioText
	dw PlayerHouse2FComputerText
	dw Function3899
	dw PlayerHouse2FN64Text

PlayerHouse2FScript1:
	call PlayerHouse2PositionCheck
	ret z
	ld hl, PlayerHouse2FNPCIDs1
	ld de, PlayerHouse2FSignPointers
	call CallMapTextSubroutine
	ret nz
	ret

PlayerHouse2PositionCheck:
	ld hl, wd41a
	bit 0, [hl]
	ret nz
	ld a, [wYCoord]
	cp 1
	ret nz
	ld a, [wXCoord]
	cp 9
	ret nz
	ld hl, wJoypadFlags
	set 6, [hl]
	ld a, LEFT
	ld d, 0
	call SetObjectFacing
	ld hl, PlayerHouse2FTextString2
	call OpenTextbox
	call PlayerHouse2FMovePlayer
	call ClearAccumulator
	ret

PlayerHouse2FMovePlayer:
	ld a, 0
	ld hl, Movement
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 1
	call WriteIntod637
	ret

Movement:
	db $08
	db $04
	db $32

PlayerHouse2FScript2:
	ld hl, PlayerHouse2FNPCIDs2
	ld de, PlayerHouse2FSignPointers
	call CallMapTextSubroutine
	ret

PlayerHouse2FText1:
	ld hl, wd41a
	bit 3, [hl]
	jr nz, .jump
	ld hl, PlayerHouse2FTextString1
	call OpenTextbox
	ld hl, wd41a
	set 3, [hl]
	ld c, 3
	call DelayFrames
.jump
	ld hl, PlayerHouse2FTextString2
	call OpenTextbox
	ret

PlayerHouse2FDollText:
	ld hl, PlayerHouse2FTextString3
	call OpenTextbox
	ret

PlayerHouse2FRadioText:
	ld hl, PlayerHouse2FTextString9
	call OpenTextbox
	ret

PlayerHouse2FComputerText:
	ld hl, wd41a
	bit 0, [hl]
	jr nz, .jump
	ld hl, PlayerHouse2FTextString5
	call OpenTextbox
	ret

.jump
	call RefreshScreen
	callab PokemonCenterPC
	call Function1fea
	ret

PlayerHouse2FCheckEmail:
	call YesNoBox
	jr c, .jump2
	ld hl, wd41a
	set 0, [hl]
	ld hl, PlayerHouse2FTextString6
	call PrintText
	ret

.jump2
	ld hl, PlayerHouse2FTextString7
	call PrintText
	ret

PlayerHouse2FN64Text:
	ld hl, PlayerHouse2FTextString4
	call OpenTextbox
	ret

PlayerHouse2FTextString1:
	text "KEN: Oh! That"
	line "shiny thing on"
	cont "your wrist..."
	cont "You finally"
	cont "bought a"
	cont "TRAINER GEAR!"	

	para "Sweet! But…"
	line "Since it's new"
	cont "and all,"
	cont "you can't do"
	cont "much more than"
	cont "check the time"
	cont "can you?"
	cont "I'll enable the"
	cont "map for ya later!"
	cont "You're going out"	
	cont "anyway, right?"	

	para "MOM's out"
	line "shopping, so if"
	cont "you were hoping to"
	cont "ask for some"
	cont "spending money,"
	cont "that's too bad!"	
	done

PlayerHouse2FTextString2:
	text "Oh, right, I saw"
	line "your PC got a new"
	cont "e-mail. At least"
	cont "check that before"
	cont "you leave, huh?"	
	done

PlayerHouse2FTextString3:
	text "It's a DOLL you"
	line "got as a Christmas"
	cont "present from a"
	cont "relative in KANTO."	
	done

PlayerHouse2FTextString4:
	text "You're playing the"
	cont "NINTENDO 64!"
	cont "…Alright!"
	cont "It's time to"
	cont "play outside!"	
	done

PlayerHouse2FTextString5:
	text "<PLAYER> turned on"
	line "the PC!"

	para "What's this? There"
	line "seems to be a new"
	cont "e-mail addressed"
	cont "to <PLAYER>."	
	cont "Read it?@"		

	db $08

	call PlayerHouse2FCheckEmail
	call Function3036
	ret

PlayerHouse2FTextString6:
	text "I hope you'll"
	line "excuse the sudden"
	cont "e-mail, but"
	cont "there's something"
	cont "that I would like"	
	cont "to entrust you"
	cont "with."	
	
	para "Won't you come by"
	line "and collect it?"	

	para "#MON researcher"
	line "OAK"
	done

PlayerHouse2FTextString7:
	text "I'll read this"
	line "later…"
	done

PlayerHouse2FTextString8: ; (unused?)
	text "Introducing: the"
	line "TRAINER GEAR! The"
	cont "cutting edge watch"
	cont "for #MON"
	cont "TRAINERs!"	

	para "Of course you can"
	line "use it to tell the"
	cont "time, but with a"
	cont "certain cartridge,"
	cont "you can even tell"
	cont "where you are on a"
	cont "map! You can also"	
	cont "call people!"		

	para "As if that wasn't"
	line "enough, it even"
	cont "lets you listen"		
	cont "to the radio!"			

	para "To order, go to…"
	line "………………………………"
	cont "It's SILPH CO.'s"
	cont "homepage."	
	done

PlayerHouse2FTextString9:
	text "<PLAYER> turned on"
	line "the radio."

	para "You're listening"
	line "to JOPMN, the"
	cont "#MON broadcast"
	cont "station!"	

	para "It's time for"
	line "#MON news."
	cont "World-famous"
	cont "#MON researcher"
	cont "PROF.OAK has dis-"
	cont "appeared from"
	cont "KANTO! It may be"
	cont "that he has left"
	cont "for a new place"
	cont "to study, but we"
	cont "can't yet discount"
	cont "the possibility"
	cont "that he has been"
	cont "involved in some"
	cont "sort of incident."
	cont "Those who know him"
	cont "are very worried."	

	para "…That concludes"
	line "today's news."

	para "<……><……><……><……><……><……>"
	line "Coming up, music."
	done
