INCLUDE "constants.asm"

SECTION "scripts/SilentHillLabFront.asm", ROMX

SilentHillLabFront_ScriptLoader::
	ld hl, SilentHillLabFrontScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

SilentHillLabFrontScriptPointers:
	dw SilentHillLabFrontScript1
	dw SilentHillLabFrontNPCIDs1

	dw SilentHillLabFrontScript2
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontScript3
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontScript4
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontConversation1
	dw SilentHillLabFrontNPCIDs2

	dw SilentHillLabFrontScript6
	dw SilentHillLabFrontNPCIDs3

	dw SilentHillLabFrontScript7
	dw SilentHillLabFrontNPCIDs4

	dw SilentHillLabFrontScript8
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript9
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript10
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript11
	dw SilentHillLabFrontNPCIDs5

	dw SilentHillLabFrontScript12
	dw SilentHillLabFrontNPCIDs6

	dw SilentHillLabFrontScript13
	dw SilentHillLabFrontNPCIDs6

	dw SilentHillLabFrontScript14
	dw SilentHillLabFrontNPCIDs6

	dw SilentHillLabFrontScript15
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript16
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript17
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript18
	dw SilentHillLabFrontNPCIDs7

	dw SilentHillLabFrontScript19
	dw SilentHillLabFrontNPCIDs9

SilentHillLabFrontNPCIDs1:
	db $02
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs2:
	db $00
	db $02
	db $04
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs3:
	db $02
	db $04
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs4:
	db $04
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs5:
	db $01
	db $03
	db $05
	db $06
	db $07
	db $08
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs6:
	db $01
	db $03
	db $05
	db $06
	db $07
	db $08
	db $FF
SilentHillLabFrontNPCIDs7:
	db $00
	db $05
	db $06
	db $07
	db $08
	db $FF
SilentHillLabFrontNPCIDs8: ; (unused?)
	db $00
	db $03
	db $05
	db $06
	db $07
	db $08
	db $09
	db $0A
	db $FF
SilentHillLabFrontNPCIDs9:
	db $00
	db $07
	db $08
	db $FF

SilentHillLabFront_TextPointers::
	dw SilentHillLabFrontText4
	dw SilentHillLabFrontText7
	dw SilentHillLabFrontText10
	dw SilentHillLabFrontText11
	dw SilentHillLabFrontTextString20
	dw SilentHillLabFrontText12
	dw SilentHillLabFrontText13
	dw SilentHillLabFrontText14
	dw SilentHillLabFrontText15
	dw SilentHillLabFrontText16
	dw SilentHillLabFrontText16

SilentHillLabFrontScript1:
	call SilentHillLabFrontMoveDown
	ret z
	ld hl, SilentHillLabFrontNPCIDs1
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontMoveDown:
	ld a, [wXCoord]
	cp 4
	ret nz
	ld a, [wYCoord]
	cp 1
	ret nz
	ldh a, [hJoyState]
	bit 6, a
	jp z, SetFFInAccumulator
	call SilentHillLabFrontText3
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call Function17f9
	ld a, 0
	ld hl, SilentHillLabFrontMovement1
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 1
	call WriteIntod637
	call ClearAccumulator
	ret

SilentHillLabFrontMovement1:
	db $06, $32

SilentHillLabFrontScript2:
	ld a, 2
	ld [wMapScriptNumber], a
	ret

SilentHillLabFrontScript3:
	ld a, 6
	call Function17f9
	ld a, 0
	call Function186a
	ld b, 6
	ld c, 0
	call StartFollow
	ld hl, SilentHillLabFrontMovement2
	ld a, 6
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 3
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement2:
	db 09, 09, 09, 09, 09, 09, 09, 09, 09, 05, 07, 01, $32

SilentHillLabFrontScript4:
	call Function1828
	ld a, 4
	ld [wMapScriptNumber], a
	ret

SilentHillLabFrontConversation1:
	ld a, 4
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString20
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString4
	call OpenTextbox
	ld a, 4
	ld d, UP
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString28
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString5
	call OpenTextbox
	ld a, 4
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString29
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString7
	call OpenTextbox
	call SilentHillLabFrontScript5
	ret

SilentHillLabFrontScript5:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 2
	call Function17f9
	ld a, 2
	ld hl, SilentHillLabFrontMovement3
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 5
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement3:
	db 9, 5, $33

SilentHillLabFrontScript6:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 4
	call Function17f9
	ld a, 4
	ld hl, SilentHillLabFrontMovement4
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 6
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement4:
	db $0D, $0D, $0F, $0D, $0D, $33

SilentHillLabFrontScript7:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call Function17f9
	ld a, 0
	ld hl, SilentHillLabFrontMovement5
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 7
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement5:
	db 09, 09, 09, 05, $32

SilentHillLabFrontScript8:
	ld a, 3
	call Function1989
	ld a, 5
	call Function1989
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	call Function17f9
	ld a, 0
	ld hl, SilentHillLabFrontMovement6
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 8
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement6:
	db 8, 8, 8, $0A, 6, $32

SilentHillLabFrontScript9:
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 5
	call Function17f9
	ld a, 5
	call Function197e
	ld a, 5
	ld hl, SilentHillLabFrontMovement7
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, 9
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement7:
	db $08, $08, $08, $08, $0A, $06, $32

SilentHillLabFrontScript10:
	ld a, 5
	ld d, RIGHT
	call SetObjectFacing
	ld hl, SilentHillLabFrontTextString21
	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 0
	ld d, RIGHT
	call SetObjectFacing
	ld a, 5
	ld d, RIGHT
	call SetObjectFacing
	ld a, 3
	call Function17f9
	ld a, 3
	call Function197e
	ld a, 3
	ld hl, SilentHillLabFrontMovement8
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, $0A
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement8:
	db $08, $04, $32

SilentHillLabFrontScript11:
	ld hl, SilentHillLabFrontTextString8
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString9
	call OpenTextbox
	ld a, $0B
	call Function1617
	ld a, $0C
	call Function1617
	ld hl, SilentHillLabFrontTextString10
	call OpenTextbox
	ld hl, SilentHillLabFrontTextString15
	call OpenTextbox
	ld hl, wd41c
	set 4, [hl]
	call Function20f8
	ld a, $0B
	ld [wMapScriptNumber], a
	call InitUnknownBuffercc9e
	ret

SilentHillLabFrontScript12:
	call SilentHillLabFrontMoveDown
	ret z
	call SilentHillLabFrontRivalMovePokemon
	ret z
	ld hl, SilentHillLabFrontNPCIDs6
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontRivalMovePokemon:
	ld a, [wYCoord]
	cp 8
	ret nz
	ld hl, SilentHillLabFrontMovement9
	ld a, [wXCoord]
	cp 3
	jr z, .jump
	cp 4
	ret nz
	ld hl, SilentHillLabFrontMovement10
.jump
	push hl
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 5
	call Function17f9
	pop hl
	ld a, 5
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, $0C
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	call ClearAccumulator
	ret

SilentHillLabFrontMovement9:
	db $08, $0B, $0B, $08, $08, $04, $32

SilentHillLabFrontMovement10:
	db $08, $0B, $08, $08, $04, $32

SilentHillLabFrontScript13:
	ld hl, SilentHillLabFrontTextString17
	call OpenTextbox
	call GetLabPokemon
	ld hl, wc5ed
	set 7, [hl]
	ld a, 8
	ld [wd637], a
	ld a, $0D
	ld [wMapScriptNumber], a
	call InitUnknownBuffercc9e
	ret

GetLabPokemon:
	ld hl, LabPokemon
	ld a, [wd266]
	ld b, a
.loop
	ld a, [hl+]
	cp b
	jr nz, .jump
	ld a, [hl]
	ld [wce05], a
	ld a, 9
	ld [wce02], a
	ret
.jump
	inc hl
	jr .loop

LabPokemon:
	db DEX_KURUSU
	db 1
	db DEX_HAPPA
	db 2
	db DEX_HONOGUMA
	db 3

SilentHillLabFrontScript14:
	ld hl, SilentHillLabFrontTextString19
	ld a, [wcd5d]
	and a
	jr nz, .skip
	ld hl, SilentHillLabFrontTextString18
.skip
	call OpenTextbox
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 5
	call Function17f9
	ld a, 5
	ld hl, SilentHillLabFrontMovement11
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, $0E
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	ret

SilentHillLabFrontMovement11:
	db $04, $08, $08, $08, $33

SilentHillLabFrontScript15:
	call Function20f8
	ld a, $0F
	ld [wMapScriptNumber], a
	call InitUnknownBuffercc9e
	ret

SilentHillLabFrontScript16:
	call SilentHillLabFrontMoveDown
	ret z
	call SilentHillLabFrontMoveRivalLeave
	ret z
	ld hl, SilentHillLabFrontNPCIDs7
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontMoveRivalLeave:
	ld a, [wYCoord]
	cp $0B
	ret nz
	ld hl, Movememt12+1
	ld a, [wXCoord]
	cp 3
	jr z, .jump
	cp 4
	ret nz
	ld hl, Movememt12
.jump
	push hl
	ld hl, wJoypadFlags
	set 4, [hl]
	ld a, 8
	call Function17f9
	pop hl
	ld a, 8
	call LoadMovementDataPointer
	ld hl, wc5ed
	set 7, [hl]
	ld a, $10
	ld [wMapScriptNumber], a
	ld a, 1
	call WriteIntod637
	call ClearAccumulator
	ret

Movememt12:
	db $07, $07, $07, $05, $32

SilentHillLabFrontScript17:
	ld hl, SilentHillLabFrontTextString23
	call OpenTextbox
	ld hl, wd41d
	set 2, [hl]
	ld hl, wNumBagItems
	ld a, 5
	ld [wCurItem], a
	ld a, 6
	ld [wItemQuantity], a
	call ReceiveItem
	call Function20f8
	ld a, $11
	ld [wMapScriptNumber], a
	ret

SilentHillLabFrontScript18:
	call SilentHillLabFrontMoveDown
	ret z
	ld hl, SilentHillLabFrontNPCIDs7
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontScript19:
	call SilentHillLabFrontMoveDown
	ret z
	ld hl, SilentHillLabFrontNPCIDs9
	ld de, SilentHillLabFrontTextPointers2
	call CallMapTextSubroutine
	ret

SilentHillLabFrontTextPointers2:
	dw SilentHillLabFrontText1
	dw SilentHillLabFrontText2
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw Function3899
	dw SilentHillLabFrontText3

SilentHillLabFrontText1:
	ld hl, SilentHillLabFrontTextString1
	call OpenTextbox
	ret

SilentHillLabFrontTextString1:
	text "An e-mail is"
	line "displayed on"
	cont "the screen!"	

	para "<……>　<……>　<……>"
	line "PROF.OAK!"
	cont "The world is in"
	cont "a terrible stir"
	cont "over your unknown"
	cont "whereabouts!"	

	para "As for the #MON"
	line "the professor"
	cont "requested I search"
	cont "for, I am yet to"
	cont "find even a single"
	cont "lead - let alone"
	cont "deduce its"
	cont "location."	

	para "I suppose that's"
	line "to be expected…"
	cont "After all,"
	cont "it's high up"
	cont "in the sky."

	para "Regards,"	
	line "Your AIDE"	
	done

SilentHillLabFrontText2:
	ld hl, wd39d
	bit 0, [hl]
	set 0, [hl]
	jr z, .jump
	res 0, [hl]
	ld hl, SilentHillLabFrontTextString2A
	jr .skip
.jump
	ld hl, SilentHillLabFrontTextString2B
.skip
	call OpenTextbox
	ret

SilentHillLabFrontTextString2A:
	text "Push START to"
	line "open the MENU!"
	done

SilentHillLabFrontTextString2B:
	text "The SAVE option is"
	line "on the MENU"
	cont "screen."	
	done

SilentHillLabFrontText3:
	ld hl, SilentHillLabFrontTextString3
	call OpenTextbox
	ret

SilentHillLabFrontTextString3:
	text "It's locked."
	done

SilentHillLabFrontText4:
	ld a, [wMapScriptNumber]
	cp $0E
	jp nc, SilentHillLabFrontText7
	ld hl, SilentHillLabFrontTextString4
	call OpenTextbox
	ret

SilentHillLabFrontTextString4:
	text "OAK: Good work!"
	done

SilentHillLabFrontTextString5:
	text "OAK: Indeed! I am"
	line "PROF.OAK. You've"
	cont "got quite the"
	cont "mouth on you!"	

	para "It is indeed I who"
	line "called you here!"

	para "Won't you listen"
	line "for a while?@"
	db $08

SilentHillLabFrontText6:
	call YesNoBox
	jr c, .jump
.loop
	ld hl, SilentHillLabFrontTextString6A
	call PrintText
	call Function3036
	ret

.jump
	ld hl, SilentHillLabFrontTextString6B
	call PrintText
	call YesNoBox
	jr c, .jump
	jr .loop

SilentHillLabFrontTextString6A:
	text "OAK: One year ago,"
	line "in KANTO, I"
	cont "entrusted two boys"
	cont "much like you"
	cont "with a #MON and"
	cont "a #DEX each,"
	cont "to assist in"
	cont "my research."	

	para "In the end,"
	line "they did an"
	cont "astounding job!"	

	para "They succeeded in"
	line "discovering 150"
	cont "species of"
	cont "#MON!"
	cont "But… However…"

	para "It's a vast world"
	line "we live in. After"
	cont "that, new #MON"
	cont "started being"
	cont "found all over"
	cont "the country!"	

	para "Therefore, I moved"
	line "from KANTO to"
	cont "here, SILENT HILL,"
	cont "to establish a new"
	cont "laboratory!"	

	para "Because, you see,"
	line "in a new place,"
	cont "new #MON may"
	cont "well be found."	
	cont "<……>　<……>　<……>　<……>"

	para "I'll be hard at"
	line "work doing"
	cont "research from"
	cont "now on, but as you"
	cont "see, I'm growing"
	cont "old. My grandson"
	cont "and AIDEs help,"
	cont "but aren't quite"
	cont "enough!"	

	para "<PLAYER>!"
	line "<RIVAL>!"
	cont "Please help me"
	cont "research #MON!"	
	done

SilentHillLabFrontTextString6B:
	text "OAK: Oh… I suppose"
	line "I might not be as"
	cont "good a judge of"
	cont "character"
	cont "as I thought."	

	para "…No! It can't be!"
	line "I have an eye for"
	cont "this sort of"
	cont "thing!"	

	para "You'll surely"
	cont "listen, no?"
	done

SilentHillLabFrontTextString7:
	text "OAK: Follow me,"
	line "you two!"
	done

SilentHillLabFrontText7:
	ld a, [wMapScriptNumber]
	cp $12
	jr z, .jump
	ld hl, SilentHillLabFrontTextString11A
	call OpenTextbox
	ret

.jump
	ld hl, SilentHillLabFrontTextString11B
	call OpenTextbox
	ret

SilentHillLabFrontTextString8:
	text "OAK: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "hese with you!"
	done

SilentHillLabFrontTextString9:
	text "<PLAYER> got"
	line "#DEX from OAK!"
	done

SilentHillLabFrontTextString10:
	text "OAK: To make a"
	line "complete guide on"
	cont "all the POKéMON"
	cont "in the world…"

	para "That was my dream!"

	para "But new #MON"
	line "are being found"
	cont "even as we speak."	

	para "I don't have"
	line "enough time left"
	cont "in this world."

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"
	done

	para "Get moving, you"
	line "two!"
	
	para "This is a great"
	line "undertaking in"
	cont "#MON history!"	
	done

SilentHillLabFrontTextString11A:
	text "OAK: POKéMON"
	line "around the world"
	cont "wait for you,"
	cont "<PLAYER>!"	
	done

SilentHillLabFrontTextString11B:
	text "Oak: <PLAYER>!"
	line "How is the #MON"
	cont "I gave you doing?"

	para "Oho! It seems to"
	line "have taken a"
	cont "liking to you."
	
	para "It looks like you"
	line "have a knack for"
	cont "being a trainer."

	para "I'm interested to"
	line "see how your"
	cont "#DEX develops,"
	cont "so please come by"
	cont "and say hello"
	cont "once in a while!"	
	done

SilentHillLabFrontText8:
	ld hl, SilentHillLabFrontTextString12
	call OpenTextbox
	ret

SilentHillLabFrontTextString12:
	text "OAK: Good to see"
	line "you! How is your"
	cont "#DEX coming?"

	para "Here, let me take"
	cont "a look!"
	done

SilentHillLabFrontText9:
	ld hl, SilentHillLabFrontTextString13
	call OpenTextbox
	ret

SilentHillLabFrontTextString13:
	text "OAK: …Oho! Well"
	line "done, <PLAYER>!"

	para "Come with me for"
	line "just a moment."

	para "Sorry, <RIVAL>,"
	line "but you'll have"
	cont "to wait there."	

	para "<RIVAL>: Whaaat!"
	line "C'mon, me too!"

	para "OAK: <RIVAL>,"
	line "you were just"
	cont "after the"
	cont "legendary"
	cont "#MON, weren't"
	cont "you?"	
	
	para "<RIVAL>: Urk!"	
	done

SilentHillLabFrontText10:
	ld hl, SilentHillLabFrontTextString14
	call OpenTextbox
	ret

SilentHillLabFrontTextString14:
	text "<RIVAL>: Well, if"
	line "it isn't <PLAYER>!"
	cont "I thought this"
	cont "place looked"
	cont "suspicious too,"
	cont "but it looks like"
	cont "nobody's here…"	
	done

SilentHillLabFrontText11:
	ld hl, SilentHillLabFrontTextString16
	call OpenTextbox
	ret

SilentHillLabFrontTextString15:
	text "<RIVAL>: Alright!"
	line "Leave it to me,"
	cont "old man!"	
	done

SilentHillLabFrontTextString16:
	text "<RIVAL>: My"
	line "#MON looks"
	cont "stronger!"
	cont "Sure you didn't"	
	cont "want this one?"	
	done

SilentHillLabFrontTextString17:
	text "<RIVAL>: Hey,"
	line "<PLAYER>, since"
	cont "we just got these"
	cont "#MON and all…"

	para "Let's try 'em out"
	line "in a battle!"
	done

SilentHillLabFrontTextString18:
	text "<RIVAL>: Darn it!"
	line "I won't lose"
	cont "next time!"	
	done

SilentHillLabFrontTextString19:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"	

	para "<PLAYER>! Old man!"
	line "See ya later!"	
	done

SilentHillLabFrontTextString20:
	text "Gramps!"
	line "Look who I found!"
	done

SilentHillLabFrontTextString21:
	text "I used to want to"
	line "be the world's best"
	cont "#MON trainer."
	cont "When I got too"
	cont "arrogant, there"
	cont "was one who showed"
	cont "me humility."
	cont "Somehow… you"
	cont "remind me of him."	

	para "Thanks to him, I"
	line "was able to mend"
	cont "my ways."
	cont "Since, I've started"
	cont "helping my grandpa"
	cont "with his research."	
	cont "<……>　<……>　<……>　<……>　<……>"

	para "Right! This here's"
	line "the #DEX!"

	para "It automatically"
	line "records data on"
	cont "POKéMON you've"
	cont "seen or caught!"
	done

SilentHillLabFrontText12:
	ld hl, SilentHillLabFrontTextString22
	call OpenTextbox
	ret

SilentHillLabFrontTextString22:
	text "I did the same"
	line "work you did long"
	cont "ago, but it's real"
	cont "hard… Good luck!"	
	done

SilentHillLabFrontText13:
	ld hl, SilentHillLabFrontTextString24
	call OpenTextbox
	ret

SilentHillLabFrontTextString23:
	text "DAISY: The young"
	line "boy who brought"
	cont "you here… That's"
	cont "my little brother."
	cont "In other words…"	

	para "I'm PROF.OAK's"
	line "granddaughter!"

	para "Grandpa's a"
	line "fantastic"
	cont "researcher! I'm so"
	cont "happy I get to"
	cont "help out. Oh, but"
	cont "grandpa would get"
	cont "full of himself"
	cont "if he heard that,"
	cont "so don't tell him!"	

	para "…Grandpa seems to"
	line "have completely"
	cont "forgotten, so…"

	para "I guess I'll give"
	line "this to you! It's"
	line "the newest model"
	line "of #PACK!"	

	para "<PLAYER> received"
	line "a #PACK!"

	para "DAISY: This PACK"
	line "comes with a BALL"
	cont "HOLDER for #"
	cont "BALLs, and a TM"
	cont "HOLDER for TMs!"

	para "I'll throw in six"
	line "# BALLs and a"
	cont "TM as a freebie!"

	para "<PLAYER>, we can't"
	line "have your mother"
	cont "worrying, so"
	cont "before you leave"
	cont "town, make sure"
	cont "to say goodbye."	

	para "I'll be rooting"
	line "for you!"
	done

SilentHillLabFrontTextString24:
	text "I'll be rooting"
	line "for you!"
	done

SilentHillLabFrontText14:
	ld hl, SilentHillLabFrontTextString25
	call OpenTextbox
	ret

SilentHillLabFrontTextString25:
	text "I am one of PROF."
	line "OAK's AIDEs."

	para "Of course"
	line "I respect the"
	cont "professor greatly."	

	para "I have a feeling"
	line "that we'll see"
	cont "each other again."
	done

SilentHillLabFrontText15:
	ld hl, SilentHillLabFrontTextString26
	call OpenTextbox
	ret

SilentHillLabFrontTextString26:
	text "I am one of PROF."
	line "OAK's AIDEs."

	para "Of course"
	line "I respect the"
	cont "professor greatly."	

	para "I have a feeling"
	line "that we'll see"
	cont "each other again."
	done

SilentHillLabFrontText16:
	ld hl, SilentHillLabFrontTextString27
	call OpenTextbox
	ret

SilentHillLabFrontTextString27:
	text "What's this…?"
	line "Some sort of PDA?"
	done

SilentHillLabFrontText17:
	ld hl, SilentHillLabFrontTextString28
	call OpenTextbox
	ret

SilentHillLabFrontTextString28:
	text "<RIVAL>: I can't"
	line "believe this old"
	cont "geezer is"
	cont "PROF.OAK…"	

	para "Oh, sorry, I mean…"
	line "“old man”? It's"
	cont "the first time I"
	cont "see him in person!"	
	done

SilentHillLabFrontTextString29:
	text "<RIVAL>: Hey"
	line "<PLAYER>!"
	cont "This just got"
	cont "interesting!"	
	done

SilentHillLabFrontText18:
	ld hl, SilentHillLabFrontTextString30
	call OpenTextbox
	ret

SilentHillLabFrontTextString30:
	text "I'm one of PROF."
	line "OAK's AIDEs."

	para "I have a feeling"
	line "that we'll see"
	cont "each other again."
	done

SilentHillLabFrontText19:
	ld hl, SilentHillLabFrontTextString31
	call OpenTextbox
	ret

SilentHillLabFrontTextString31:
	text "I'm one of PROF."
	line "OAK's AIDEs."

	para "I have a feeling"
	line "that we'll see"
	cont "each other again."
	done
