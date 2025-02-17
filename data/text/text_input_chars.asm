INCLUDE "constants.asm"

SECTION "data/text/text_input_chars.asm", ROMX

TextEntryChars:
	db "rstuv wxyzこ さしすせそ"
	db "ÄÖÜäö üにぬねの はひふへほ"
	db "まdlmr stvわん らりるれろ"
	db "ABCDE FGHIJ KLMNO"
	db "PQRST UVWXY Z()へ:"
	db ";[]ab cdejl fりghi"
	db "<PK><MN>←を nopmk ﾞﾟ -."
	db "12345 67890 ?!×<¥"

TextEntryHiragana:
	db "rstuv wxyzこ さしすせそ"
	db "ÄÖÜäö üにぬねの はひふへほ"
	db "まdlmr stvわん らりるれろ"
	db "<PK><MN>←を 12345 67890"
	db " ﾞﾟ -?!¥"

TextEntryKatakana:
	db "ABCDE FGHIJ KLMNO"
	db "PQRST UVWXY Z()へ:"
	db ";[]ab cdejl fりghi"
	db "nopmk 12345 67890"
	db " ﾞﾟ -?!¥"
