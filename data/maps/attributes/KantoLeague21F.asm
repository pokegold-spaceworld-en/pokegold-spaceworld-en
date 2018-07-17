INCLUDE "constants.asm"

SECTION "data/maps/attributes/KantoLeague21F.asm", ROMX
	map_attributes KantoLeague21F, KANTO_LEAGUE_2_1F, 0

KantoLeague21F_MapEvents::
	dw $4000 ; unknown

	db 3 ; warp events
	warp_event 3, 15, 26, KANTO, wOverworldMapBlocks + 82
	warp_event 4, 15, 27, KANTO, wOverworldMapBlocks + 83
	warp_event 7, 1, 1, KANTO_LEAGUE_2_2F, wOverworldMapBlocks + 14

	db 0 ; bg events

	db 5 ; person events
	object_event 2, 5, SPRITE_YOUNGSTER, SLOW_STEP_LEFT, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0
	object_event 4, 7, SPRITE_LASS, SLOW_STEP_LEFT, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0
	object_event 4, 9, SPRITE_BUG_CATCHER_BOY, SLOW_STEP_LEFT, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0
	object_event 3, 1, SPRITE_24, SLOW_STEP_UP, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0
	object_event 6, 6, SPRITE_COOLTRAINER_F, FACE_RIGHT, 0, 2, -1, -1, 0, 0, 0, 0, 0, 0

KantoLeague21F_Blocks:: INCBIN "maps/blk/KantoLeague21F.blk"
