INCLUDE "constants.asm"

SECTION "data/types/names.asm", ROMX

TypeNames::
	dw .Normal   ; NORMAL
	dw .Fighting ; FIGHTING
	dw .Flying   ; FLYING
	dw .Poison   ; POISON
	dw .Ground   ; GROUND
	dw .Rock     ; ROCK
	dw .Bird     ; BIRD
	dw .Bug      ; BUG
	dw .Ghost    ; GHOST
	dw .Metal    ; METAL
	dw .Normal   ; 0A
	dw .Normal   ; 0B
	dw .Normal   ; 0C
	dw .Normal   ; 0D
	dw .Normal   ; 0E
	dw .Normal   ; 0F
	dw .Normal   ; 10
	dw .Normal   ; 11
	dw .Normal   ; 12
	dw .Unknown  ; UNKNOWN
	dw .Fire     ; FIRE
	dw .Water    ; WATER
	dw .Grass    ; GRASS
	dw .Electric ; ELECTRIC
	dw .Psychic  ; PSYCHIC
	dw .Ice      ; ICE
	dw .Dragon   ; DRAGON
	dw .Dark     ; DARK

.Normal:   db "Y-;g@"
.Fighting: db "wyöt@"
.Flying:   db "ひこt@"
.Poison:   db "どy @"
.Unknown:  db "???@"
.Fire:     db "ほのv@"
.Water:    db "dず @"
.Grass:    db "yさ @"
.Electric: db "でんx@"
.Psychic:  db "DMパ-@"
.Ice:      db "こvり@"
.Ground:   db "じmん@"
.Rock:     db "sわ@"
.Bird:     db "öり@"
.Bug:      db "lし@"
.Ghost:    db "ゴ-MT@"
.Metal:    db "aPg@"
.Dragon:   db "ドfゴl@"
.Dark:     db "ry@"
