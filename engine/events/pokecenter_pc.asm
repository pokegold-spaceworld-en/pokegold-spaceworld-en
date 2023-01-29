INCLUDE "constants.asm"

SECTION "engine/events/pokecenter_pc.asm", ROMX

; PokemonCenterPC.Jumptable indices
	const_def
	const PCITEM_PLAYERS_PC
	const PCITEM_BILLS_PC
	const PCITEM_OAKS_PC
	const PCITEM_HALL_OF_FAME
	const PCITEM_TURN_OFF

PokemonCenterPC:
; Also used for player's PC (both in debug and in demo mode)

	ld a, [wDebugFlags]
	bit 1, a
	jp z, PC_Demo
	call PC_PlayBootSound

; Return if there are no mons in party
	ret c

; Open the player's PC menu
	ld hl, .TurnOnText
	call MenuTextBoxBackup
	ld hl, wDebugFlags
	bit 1, [hl]
	jr nz, .DisplayMenu
	ld hl, .NotConnectedText
	call MenuTextBoxBackup
	ret

.NotConnectedText:
	text "<……> が Üüが←äsüw←Ä"
	line "vtだ <……>"
	prompt

.DisplayMenu:
	ld hl, .TopMenu
	call LoadMenuHeader
.loop
	xor a
	ld [wActiveBackpackPocket], a
	call OpenMenu
	jr c, .shutdown
	ld a, [wMenuSelection]
	ld hl, .Jumptable
	call CallJumptable
	jr nc, .loop

.shutdown
	call CloseWindow
	ret

.TurnOnText:
	text "Jlピo-P-を xどt!"
	para "XmTj-HにせÜぞyしÄ!"
	prompt

.TopMenu:
	db MENU_BACKUP_TILES
	menu_coords 0, 0, 14, 12
	dw .MenuData
	db 1 ; default item

.MenuData:
	db STATICMENU_CURSOR
	db 0
	dw .WhichPC
	dw PlaceMenuStrings
	dw .MenuStrings

.MenuStrings:
	db "<PLAYER>の パOJl@"
	db "???の パOJl@"
	db "E-Gドの パOJl@"
	db "でんどtsり@"
	db "せÜぞyをxる@"

.Jumptable:
	dw PlayersPC
	dw BillsPC
	dw OaksPC
	dw OaksPC
	dw TurnOffPC

.WhichPC:
	db 4
	db PCITEM_PLAYERS_PC
	db PCITEM_BILLS_PC
	db PCITEM_OAKS_PC
	db PCITEM_TURN_OFF
	db -1

PC_PlayBootSound:
	ld a, [wPartyCount]
	and a

; Don't play the bootup sound if player has at least one mon
	ret nz

	ld de, SFX_BOOT_PC
	call PlaySFX
	ld hl, .NoPokemonText
	call OpenTextbox

; Return carry when there are no mons in party
	scf
	ret

.NoPokemonText:
	text "ピ-m!"
	line "ポIblを r←äsüs"
	cont "ひöは Üwtこöが でxません!"
	text_end
	text_end

PC_Demo:
	ld de, SFX_BOOT_PC
	call PlaySFX
	ld hl, .SkarmoryText
	call PrintText
	call TextboxWaitPressAorB_BlinkCursor
	ret

.SkarmoryText:
	text "ポIbl ジn-Ug :-]ぺ-ジ"
	line "<……> <……> <……> <……> <……> <……>"
	para "しんポIbl は←zん!!"
	line "msms eiBドり"
	cont "はがねの vtに"
	cont "wÄs Üばさが öyÖ<MN>t"
	para "ひこtPBプ だzではüy"
	line "rÄらしy aPgPBプ öしär"
	cont "ぶんるs されるこöが z←äs"
	cont "これwらの zんx<PK>tが まÄれる"
	cont "<……> <……> <……> <……> <……> <……>"
	done

BillsPC:
	callab _BillsPC
	and a
	ret

PlayersPC:
	call _PlayersPC
	and a
	ret

OaksPC:
	ld hl, .TooManyConnectionsText
	call MenuTextBoxBackup
	and a
	ret

.TooManyConnectionsText:
	text "wsせん が こdr←äsä"
	line "せÜぞyでxません"
	prompt

TurnOffPC:
	ld hl, .ClosedPCText
	call MenuTextBoxBackup
	scf
	ret

.ClosedPCText:
	text "XmTj-Hへの せÜぞyを"
	line "smましÄ"
	prompt


_PlayersPC:
	ld hl, .TurnOnText
	call MenuTextBoxBackup
.loop
	call UpdateTimePals
	ld hl, .MenuHeader
	call LoadMenuHeader
	call VerticalMenu
	push af
	call ExitMenu
	pop af
	jr c, .done
	ld a, [wMenuCursorY]
	dec a
	ld hl, .Jumptable
	call CallJumptable
	jr nc, .loop
	ld hl, .ShutDownText
	call MenuTextBoxBackup
.done
	ret

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 0, 10, 10
	dw .MenuStrings
	db   1 ; default selection

.MenuStrings:
	db STATICMENU_CURSOR
	db 4
	db "ひxだす@"
	db "rずzる@"
	db "すäる@"
	db "せÜぞyをxる@"

.Jumptable:
	dw PlayerWithdrawItemMenu
	dw PlayerDepositItemMenu
	dw PlayerTossItemMenu
	dw PlayerLogOffMenu

.TurnOnText:
	text "<PLAYER>は じぶんのパOJlに"
	line "Üüsだ"
	para "どtぐrずwりLMS]を"
	line "vびだしÄ!"
	prompt

.ShutDownText:
	text "<PLAYER>は じぶんのパOJlöの"
	line "せÜぞyをx←Ä"
	para ""
	done

PlayerWithdrawItemMenu:
	call LoadStandardMenuHeader
	call ClearTileMap
	call UpdateSprites
.loop
	call PCItemsJoypad
	jr c, .quit
	call .Submenu
	jr .loop
.quit
	call Call_ExitMenu
	and a
	ret

.Submenu:
	callab _CheckTossableItem
	ld a, [wItemAttributeParamBuffer]
	and a
	jr z, .AskQuantity
	ld a, 1
	ld [wItemQuantity], a
	jr .Withdraw

.AskQuantity:
	ld hl, .HowManyToWithdrawText
	call MenuTextBox
	callab SelectQuantityToToss
	call ExitMenu
	call ExitMenu
	jr c, .done

.Withdraw:
	ld hl, wUnknownListLengthd1ea
	ld a, [wItemIndex]
	call TossItem
	ld hl, wNumBagItems
	call ReceiveItem
	jr nc, .PackFull
	predef LoadItemData
	ld hl, .WithdrewItemsText
	call MenuTextBoxBackup
	ret

.PackFull:
	ld hl, .NoRoomWithdrawText
	call MenuTextBoxBackup
	ld hl, wUnknownListLengthd1ea
	call ReceiveItem
	ret

.done
	ret

.HowManyToWithdrawText:
	text "syÜひxだしますw?"
	done

.WithdrewItemsText:
	text_from_ram wStringBuffer2
	text "を @"
	deciram wItemQuantity, 1, 2
	text "こ "
	line "ひxだしましÄ"
	prompt

.NoRoomWithdrawText:
	text "rÖrのが s←ぱsüので"
	line "ひxだせません!"
	prompt

PlayerTossItemMenu:
	call LoadStandardMenuHeader
	call ClearTileMap
	call ClearSprites
	ld hl, wVramState
	res 0, [hl]
	call UpdateSprites
.loop
	call PCItemsJoypad
	jr c, .quit
	ld de, wUnknownListLengthd1ea
	callab TryTossItem
	jr .loop
.quit
	ld hl, wVramState
	set 0, [hl]
	call Call_ExitMenu
	and a
	ret

PlayerLogOffMenu:
	scf
	ret

PlayerDepositItemMenu:
	call .CheckItemsInBag
	ret c
	call LoadStandardMenuHeader
	callab GetPocket2Status
	callab DrawBackpack
.loop
	callab DebugBackpackLoop
	jr c, .quit
	call .TryDepositItem
	jr .loop
.quit
	call ClearPalettes
	ld hl, wVramState
	set 0, [hl]
	call Call_ExitMenu
	and a
	ret

.CheckItemsInBag:
	callab CheckItemsQuantity
	ret nc

; no item to deposit
	ld hl, .NoItemsText
	call MenuTextBoxBackup
	scf
	ret

.NoItemsText:
	text "どtぐを ひöÜr"
	line "r←äsüs!"
	prompt

.TryDepositItem:
	callab CheckItemMenu
	ld a, [wItemAttributeParamBuffer]
	ld hl, .Jumptable
	jp CallJumptable

.Jumptable:
	dw .Depositable
	dw .NotDepositable
	dw .BallNotDepositable
	dw .SwapPockets
	dw .Depositable
	dw .Depositable
	dw .Depositable

.NotDepositable:
	ld hl, .CantDepositText
	call MenuTextBoxBackup
	ret

.CantDepositText:
	text "わざ;Llは "
	line "rずzられüs!"
	prompt

.BallNotDepositable:
	ld hl, .CantDepositBallText
	call MenuTextBoxBackup
	ret

.CantDepositBallText:
	text "ボ-g:gダは"
	line "rずzられüs!"
	prompt

.SwapPockets:
	callab FlipPocket2Status
	xor a
	ld [wSelectedSwapPosition], a
	ret

.Depositable:
	call .DepositItem
	ret

.DepositItem:
	callab _CheckTossableItem
	ld a, [wItemAttributeParamBuffer]
	and a
	jr z, .AskQuantity
	ld a, 1
	ld [wItemQuantity], a
	jr .ContinueDeposit

.AskQuantity:
	ld hl, .HowManyDepositText
	call MenuTextBox
	callab SelectQuantityToToss
	push af
	call ExitMenu
	call ExitMenu
	pop af
	jr c, .DeclinedToDeposit

.ContinueDeposit:
	ld hl, wNumBagItems
	ld a, [wItemIndex]
	call TossItem
	ld hl, wUnknownListLengthd1ea
	call ReceiveItem
	jr nc, .NoRoomInPC
	predef LoadItemData
	ld hl, .DepositItemsText
	call MenuTextBoxBackup
	ret

.NoRoomInPC:
	ld hl, .NoRoomDepositText
	call MenuTextBoxBackup
	ld hl, wNumBagItems
	call ReceiveItem
	ret

.DeclinedToDeposit:
	and a
	ret

.HowManyDepositText:
	text "syÜrずzますw?"
	done

.DepositItemsText:
	text_from_ram wStringBuffer2
	text "を @"
	deciram wItemQuantity, 1, 2
	text "こ "
	line "rずzましÄ"
	prompt

.NoRoomDepositText:
	text "どtぐが s←ぱsです"
	line "rt rずzられません!"
	prompt

PCItemsJoypad:
	ld hl, .MenuHeader
	call CopyMenuHeader
	ld a, [wBackpackAndKeyItemsCursor]
	ld [wMenuCursorBuffer], a
	ld a, [wBackpackAndKeyItemsScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBackpackAndKeyItemsScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBackpackAndKeyItemsCursor], a
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .b_button
	cp A_BUTTON
	jr z, .a_button
	cp SELECT
	jr z, .select
	jr .next
.select
	callab SwitchItemsInBag
	jp .next
.next
	jp PCItemsJoypad
.a_button
	callab ScrollingMenu_ClearLeftColumn
	call PlaceHollowCursor
	and a
	ret
.b_button
	scf
	ret

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 4, 1, 19, 10
	dw .MenuData
	db  1 ; default selection

.MenuData:
	db SCROLLINGMENU_ENABLE_SELECT | SCROLLINGMENU_ENABLE_FUNCTION3 | SCROLLINGMENU_ENABLE_RIGHT | SCROLLINGMENU_ENABLE_LEFT
	db 4, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; type
	dbw 0, wUnknownListLengthd1ea
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemDescription
