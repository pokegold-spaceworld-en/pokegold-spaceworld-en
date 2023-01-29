SoundTestTextPointers:
;            id?  bank? description
	dbbw $00,  $3A, SoundTest_PalletTownText
 	dbbw $00,  $3A, SoundTest_PokecenterText
 	dbbw $00,  $3A, SoundTest_PokegymText
 	dbbw $07,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $0C,  $3A, SoundTest_PokeEvolutionText
 	dbbw $08,  $3A, SoundTest_HealingText
 	dbbw $02,  $3A, SoundTest_QuestionMarkText
 	dbbw $03,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_QuestionMarkText
 	dbbw $00,  $3A, SoundTest_HurryAlongText
 	dbbw $00,  $3A, SoundTest_MeetOakText
 	dbbw $00,  $3A, SoundTest_RivalText
 	dbbw $00,  $3A, SoundTest_SSAnneText
 	dbbw $66,  $3A, SoundTest_Fanfare3Text
 	dbbw $68,  $3A, SoundTest_Fanfare5Text
 	dbbw $69,  $3A, SoundTest_Fanfare6Text
 	dbbw $63,  $3A, SoundTest_FanfareText
 	dbbw $21,  $3A, SoundTest_FluteText
 	dbbw $04,  $3B, SoundTest_BattleText
 	dbbw $05,  $3B, SoundTest_BattleText
 	dbbw $00,  $3B, SoundTest_BattleText
 	dbbw $00,  $3B, SoundTest_ChampionBattleText
 	dbbw $0B,  $3B, SoundTest_VictoryText
 	dbbw $00,  $3B, SoundTest_VictoryText
 	dbbw $00,  $3B, SoundTest_VictoryText
 	dbbw $67,  $3B, SoundTest_Fanfare4Text
 	dbbw $68,  $3B, SoundTest_Fanfare5Text_2
 	dbbw $6B,  $3B, SoundTest_Fanfare8Text
 	dbbw $00,  $3C, SoundTest_TitleText
 	dbbw $00,  $3C, SoundTest_EndingText
 	dbbw $00,  $3C, SoundTest_HallOfFameText
 	dbbw $00,  $3C, SoundTest_OaksLabText
 	dbbw $00,  $3C, SoundTest_JigglypuffSongText
 	dbbw $09,  $3C, SoundTest_BikeText
 	dbbw $00,  $3C, SoundTest_SurfText
 	dbbw $00,  $3C, SoundTest_CasinoText
 	dbbw $00,  $3C, SoundTest_IntroBattleText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_CaveText
 	dbbw $00,  $3C, SoundTest_PokemonTowerText
 	dbbw $00,  $3C, SoundTest_PokemonTowerText
 	dbbw $0A,  $3C, SoundTest_DealerText
 	dbbw $00,  $3C, SoundTest_DealerText
 	dbbw $00,  $3C, SoundTest_DealerText
 	dbbw $66,  $3C, SoundTest_Fanfare3Text_2
 	dbbw $69,  $3C, SoundTest_Fanfare6Text_2
 	dbbw  -1,   -1, SoundTestTextPointers

SoundTest_PalletTownText:     db ";KfPCl@"
SoundTest_PokecenterText:     db "#NlP-@"
SoundTest_PokegymText:        db "#ジ]@"
SoundTest_PokeEvolutionText:  db "#しんw@"
SoundTest_HealingText:        db "rさrさrさ@"
SoundTest_HurryAlongText:     db "Üれäswれる@"
SoundTest_MeetOakText:        db "E-Gドöörに@"
SoundTest_RivalText:          db "fBバg@"
SoundTest_SSAnneText:         db "KlTAlWゴC@"
SoundTest_FluteText:          db "ふu@"
SoundTest_BattleText:         db "せんöt@"
SoundTest_ChampionBattleText: db "さsしttせんöt@"
SoundTest_VictoryText:        db "wÖ@"
SoundTest_FanfareText:        db ")ぁl)&-h@"
SoundTest_Fanfare3Text:       db ")ぁl)&-h3@"
SoundTest_Fanfare5Text:       db ")ぁl)&-h5@"
SoundTest_Fanfare6Text:       db ")ぁl)&-h6@"
SoundTest_Fanfare4Text:       db ")ぁl)&-h4@"
SoundTest_Fanfare5Text_2:     db ")ぁl)&-h5@"
SoundTest_Fanfare8Text:       db ")ぁl)&-h8@"
SoundTest_Fanfare3Text_2:     db ")ぁl)&-h3@"
SoundTest_Fanfare6Text_2:     db ")ぁl)&-h6@"
SoundTest_TitleText:          db "PBTg@"
SoundTest_EndingText:         db "Dlデqlグ@"
SoundTest_HallOfFameText:     db "でんどtsり@"
SoundTest_OaksLabText:        db "zんxttじv@"
SoundTest_JigglypuffSongText: db "プりlYtÄ@"
SoundTest_BikeText:           db "じäんしs@"
SoundTest_SurfText:           db "td@"
SoundTest_CasinoText:         db "FジY@"
SoundTest_IntroBattleText:    db "E-プVlグデb@"
SoundTest_CaveText:           db "どtyÜ@"
SoundTest_PokemonTowerText:   db "öt@"
SoundTest_DealerText:         db "デq-f-@"
SoundTest_QuestionMarkText:   db "?@"
