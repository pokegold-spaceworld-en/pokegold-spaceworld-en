INCLUDE "constants.asm"

SECTION "scripts/Route1P2.asm", ROMX

Route1P2_ScriptLoader::
	ld hl, Route1P2ScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

Route1P2ScriptPointers:
	dw Route1P2Script
	dw Route1P2NPCIDs

Route1P2NPCIDs:
	db $00
	db $01
	db $FF

Route1P2SignPointers:
	dw Route1P2TextSign1

Route1P2_TextPointers::
	dw Route1P2Text1
	dw Route1P2Text2

Route1P2Script::
	ld a, [wYCoord]
	cp $06
	jr nz, .skipCheck
	ld a, [wXCoord]
	cp $09
	jr nz, .skipCheck
	ld a, 0 ; player
	ld d, LEFT
	call SetObjectFacing
	ld a, 2
	ld d, RIGHT
	call SetObjectFacing
	jr .endDemo
.skipCheck
	ld hl, Route1P2NPCIDs ;data
	ld de, Route1P2SignPointers ;start of textld pointers?
	call CallMapTextSubroutine
	ret

.endDemo
Route1P2Text1:
	ld hl, Route1P2TextString4
	call OpenTextbox
	call GBFadeOutToBlack
	jp Init

Route1P2Text2:
	ld hl, $D3A2 ; trainer flags?
	bit 1, [hl]
	jr nz, .Text2Jump ; already fought
	ld hl, Route1P2TextString1
	call OpenTextbox
	ld hl, $D3A2
	set 1, [hl]
	ld a, $3C
	ld [wce02], a
	ld a, $02
	ld [wce05], a
	ld hl, wc5ed
	set 7, [hl]
	ld a, $08
	ld [wd637], a
	ret

.Text2Jump
Route1P2Text3:
	ld hl, Route1P2TextString3
	call OpenTextbox
	ret

Route1P2TextSign1:
	ld hl, Route1P2TextString5
	call OpenTextbox
	ret

Route1P2TextString1:
	text "What a lovely"
	line "trainer you are!"
	cont "Won't you partake"	
	cont "in a battle?"	
	done

Route1P2TextString2: ; (unused?)
	text "Oh, my apologies…"
	done

Route1P2TextString3:
	text "You look cute, but"
	line "you truly don't"
	cont "hold back! You'll"
	cont "strain yourself"
	cont "like that."	
	done

Route1P2TextString4:
	text "GARY: Oh! If it"
	line "isn't <PLAYER>!"	

	para "Guess you actually"
	line "made it all the"
	cont "way here."	
	cont "Even though you're"	
	cont "a wimp! Don't push"	
	cont "yourself, huh?"	

	para "You've got your"
	line "work cut out for"
	cont "you, don'tcha?"

	para "Like catching more"
	line "#MON, or"	
	cont "raising losta"	
	cont "different types"
	cont "of #MON."	

	para "You should turn"
	line "back here! See ya!"
	done

Route1P2TextString5:
	text "ROUTE 1"
	line "SILENT HILL -"
	cont "OLD CITY"	
	done
