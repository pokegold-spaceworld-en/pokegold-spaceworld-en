FieldDebug_Teleport:
	call .DoTeleport
	ld a, FIELDDEBUG_RETURN_REOPEN
	ret

.DoTeleport:
	ld a, [wMapGroup]
	ld d, a
	ld a, [wMapId]
	ld e, a
	callab IsSpawnPoint
	jr nc, .not_spawn_point
	ld a, [wMapGroup]
	ld [wLastSpawnMapGroup], a
	ld a, [wMapId]
	ld [wLastSpawnMapNumber], a
	ld hl, .MapRegisteredText
	call MenuTextBoxBackup
	ret

.not_spawn_point
	ld hl, .CannotRegisterMapText
	call MenuTextBoxBackup
	ret

.MapRegisteredText:
	text "このばし<MN>を ötろyしましÄ"
	para "<DONE>"

.CannotRegisterMapText:
	text "ここは ötろyでxません!"
	para "<DONE>"

