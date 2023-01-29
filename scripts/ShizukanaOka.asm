INCLUDE "constants.asm"

SECTION "scripts/ShizukanaOka.asm", ROMX

ShizukanaOka_ScriptLoader::
	ld hl, ShizukanaOkaScriptPointers
	call RunMapScript
	call WriteBackMapScriptNumber
	ret

ShizukanaOkaScriptPointers:
	dw ShizukanaOkaScript
	dw ShizukanaOkaNPCIDs

ShizukanaOkaNPCIDs:
	db 0
	db 1
	db 2
	db 3
	db 4
	db 5
	db $FF

ShizukanaOkaSignPointers:
	dw ShizukanaOkaSignpost1
	dw ShizukanaOkaSignpost2

ShizukanaOka_TextPointers:
	dw ShizukanaOkaText1
	dw ShizukanaOkaTrainer2
	dw ShizukanaOkaTrainer3
	dw ShizukanaOkaTrainer4
	dw ShizukanaOkaTrainer5
	dw ShizukanaOkaTrainer6

ShizukanaOkaScript:
	ld hl, ShizukanaOkaNPCIDs
	ld de, ShizukanaOkaSignPointers
	call CallMapTextSubroutine
	ret

ShizukanaOkaText1:
	ld hl, ShizukanaOkaText1String
	call OpenTextbox
	ret

ShizukanaOkaTrainer2:
	ld hl, $D3A5
	bit 1, [hl]
	jr nz, .Trainer2Won
	ld hl, ShizukanaOkaTrainer2EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 1, [hl]
	ld a, TRAINER_SCHOOLBOY
	ld [wce02], a
	ld a, SCHOOLBOY_TETSUYA
	ld [wce05], a
	call Function38d8
	ret
.Trainer2Won ;Already won
	ld hl, ShizukanaOkaTrainer2WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer3:
	ld hl, wd3a5
	bit 2, [hl]
	jr nz, .Trainer3Won
	ld hl, ShizukanaOkaTrainer3EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 2, [hl]
	ld a, TRAINER_BUG_CATCHER_BOY
	ld [wce02], a
	ld a, BUG_CATCHER_BOY_JUNICHI
	ld [wce05], a
	call Function38d8
	ret
.Trainer3Won ;Already won
	ld hl, ShizukanaOkaTrainer3WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer4:
	ld hl, wd3a5
	bit 3, [hl]
	jr nz, .Trainer4Won
	ld hl, ShizukanaOkaTrainer4EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 3, [hl]
	ld a, TRAINER_FIREBREATHER
	ld [wce02], a
	ld a, FIREBREATHER_AKITO
	ld [wce05], a
	call Function38d8
	ret
.Trainer4Won ;Already won
	ld hl, ShizukanaOkaTrainer4WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer5:
	ld hl, wd3a5
	bit 4, [hl]
	jr nz, .Trainer5Won
	ld hl, ShizukanaOkaTrainer5EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 4, [hl]
	ld a, TRAINER_BEAUTY
	ld [wce02], a
	ld a, BEAUTY_MEGUMI
	ld [wce05], a
	call Function38d8
	ret
.Trainer5Won ;Already won
	ld hl, ShizukanaOkaTrainer5WonString
	call OpenTextbox
	ret

ShizukanaOkaTrainer6:
	ld hl, wd3a5
	bit 5, [hl]
	jr nz, .Trainer6Won
	ld hl, ShizukanaOkaTrainer6EncounterString
	call OpenTextbox
	ld hl, wd3a5
	set 5, [hl]
	ld a, TRAINER_BUG_CATCHER_BOY
	ld [wce02], a
	ld a, BUG_CATCHER_BOY_SOUSUKE
	ld [wce05], a
	call Function38d8
	ret
.Trainer6Won ;Already won
	ld hl, ShizukanaOkaTrainer6WonString
	call OpenTextbox
	ret

ShizukanaOkaSignpost2:
	ld hl, ShizukanaOkaSignpost2String
	call OpenTextbox
	ret

ShizukanaOkaSignpost1:
	ld hl, ShizukanaOkaSignpost1String
	call OpenTextbox
	ret

ShizukanaOkaTrainer6EncounterString:
	text "Look, look!"
	
	para "This has got to be"
	line "a new species"
	cont "of #MON!"	
	done

	text "I don't know the"
	line "specifics of"
	cont "#MON yet, so"
	cont "cut me some slack…"	
	done

ShizukanaOkaTrainer6WonString:
	text "It's not just"
	line "new #MON!"
	cont "I heard that"
	cont "they've even found"
	cont "a new type!"	
	done

ShizukanaOkaTrainer5EncounterString:
	text "What beautiful"
	line "weather we have!"
	cont "How do you do"
	cont "on this fine day?"	
	done

	text "Where do you think"
	line "you're going, meow!"
	cont "…Oh my, what"
	cont "am I saying?"	
	done

ShizukanaOkaTrainer5WonString:
	text "How could this"
	line "happen to me?"
	cont "I was just taking"
	cont "a walk outside…@@"	

ShizukanaOkaTrainer4EncounterString:
	text "I picked this"
	line "place to practice"
	cont "my fire breathing!"	
	done

	text "OW, HOT HOT HOT!"
	line "I messed up…"	
	done

ShizukanaOkaTrainer4WonString:
	text "It's dark at night,"
	line "so kids should go"
	cont "home before then!"	
	
	para "Oh, me? I breathe"
	line "fire, so I'm fine."
	done

ShizukanaOkaTrainer3EncounterString:
	text "When it comes to"
	line "bug #MON,"
	cont "no one knows more"
	cont "than me!"	
	done

	text "Paraparaaa!"
	done

ShizukanaOkaTrainer3WonString:
	text "You're filling in"
	line "a #DEX?"
	cont "Let me see!"	
	para "Whoa… You can even"
	line "search by type!"
	done

ShizukanaOkaTrainer2EncounterString:
	text "I'll have you know,"
	line "I've studied WAY"
	cont "more than you,"
	cont "so I'll beat you"
	cont "a hundred percent!"	
	done

	text "Whaddya mean,"
	text "“why”?"	
	done

ShizukanaOkaTrainer2WonString:
	text "Something's fishy…"
	line "I've been studying"
	cont "every day, so"
	cont "how could I lose?"	
	done

ShizukanaOkaText1String:
	text "The #MON around"
	line "here are weak,"
	cont "so trainers like"
	cont "to use this place"
	cont "for practice."
	
	para "Everyone loves a"
	line "good battle,"
	cont "so why not try"
	cont "your luck?"	
	done

ShizukanaOkaSignpost2String:
	text "SILENT HILLS"
	line "This way,"
	cont "SILENT HILL"	
	done

ShizukanaOkaSignpost1String:
	text "SILENT HILLS"
	line "This way,"
	cont "OLD CITY"	
	done
