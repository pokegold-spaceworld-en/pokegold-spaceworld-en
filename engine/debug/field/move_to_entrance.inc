FieldDebug_MoveToRoute1Entrance:
; Check if the player is currently on Route 1
	ld a, [wMapGroup]
	cp GROUP_ROUTE_1_P1
	jr nz, .cannot_use
	ld a, [wMapId]
	cp MAP_ROUTE_1_P1
	jr nz, .cannot_use

	ldh a, [hROMBank]
	ld hl, .DoMove
	call QueueScript
	ld a, FIELDDEBUG_RETURN_EXIT
	ret

.cannot_use
	ld hl, .CantUseText
	call FieldDebug_ShowTextboxAndExit
	ld a, FIELDDEBUG_RETURN_REOPEN
	ret

.CantUseText:
	text "ここでは でxません"
	para "i-ド1でじ←こtでxます"
	done

.DoMove:
	call RefreshScreen
	ld hl, .MoveText
	call FieldDebug_ShowTextboxAndExit
	ld d, $d
	ld e, $d
	ld b, 0
	ld c, 1
	callab Function833a
	ld a, 0
	ld hl, wMovementBuffer
	call LoadMovementDataPointer
	call Function1fea
	ret

.MoveText:
	text "öyäsÖäん まで"
	next "tごwします"
	done

