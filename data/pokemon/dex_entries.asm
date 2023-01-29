INCLUDE "constants.asm"

; entry format:
;	db category
;	db height (meters * 10)
;	dw weight (kilograms * 10)
;	db entry text

SECTION "data/pokemon/dex_entries.asm", ROMX

PokedexEntryPointers1::
	dw BulbasaurDexEntry
	dw IvysaurDexEntry
	dw VenusaurDexEntry
	dw CharmanderDexEntry
	dw CharmeleonDexEntry
	dw CharizardDexEntry
	dw SquirtleDexEntry
	dw WartortleDexEntry
	dw BlastoiseDexEntry
	dw CaterpieDexEntry
	dw MetapodDexEntry
	dw ButterfreeDexEntry
	dw WeedleDexEntry
	dw KakunaDexEntry
	dw BeedrillDexEntry
	dw PidgeyDexEntry
	dw PidgeottoDexEntry
	dw PidgeotDexEntry
	dw RattataDexEntry
	dw RaticateDexEntry
	dw SpearowDexEntry
	dw FearowDexEntry
	dw EkansDexEntry
	dw ArbokDexEntry
	dw PikachuDexEntry
	dw RaichuDexEntry
	dw SandshrewDexEntry
	dw SandslashDexEntry
	dw NidoranFDexEntry
	dw NidorinaDexEntry
	dw NidoqueenDexEntry
	dw NidoranMDexEntry
	dw NidorinoDexEntry
	dw NidokingDexEntry
	dw ClefairyDexEntry
	dw ClefableDexEntry
	dw VulpixDexEntry
	dw NinetalesDexEntry
	dw JigglypuffDexEntry
	dw WigglytuffDexEntry
	dw ZubatDexEntry
	dw GolbatDexEntry
	dw OddishDexEntry
	dw GloomDexEntry
	dw VileplumeDexEntry
	dw ParasDexEntry
	dw ParasectDexEntry
	dw VenonatDexEntry
	dw VenomothDexEntry
	dw DiglettDexEntry
	dw DugtrioDexEntry
	dw MeowthDexEntry
	dw PersianDexEntry
	dw PsyduckDexEntry
	dw GolduckDexEntry
	dw MankeyDexEntry
	dw PrimeapeDexEntry
	dw GrowlitheDexEntry
	dw ArcanineDexEntry
	dw PoliwagDexEntry
	dw PoliwhirlDexEntry
	dw PoliwrathDexEntry
	dw AbraDexEntry
	dw KadabraDexEntry
	dw AlakazamDexEntry
	dw MachopDexEntry
	dw MachokeDexEntry
	dw MachampDexEntry
	dw BellsproutDexEntry
	dw WeepinbellDexEntry
	dw VictreebelDexEntry
	dw TentacoolDexEntry
	dw TentacruelDexEntry
	dw GeodudeDexEntry
	dw GravelerDexEntry
	dw GolemDexEntry
	dw PonytaDexEntry
	dw RapidashDexEntry
	dw SlowpokeDexEntry
	dw SlowbroDexEntry
	dw MagnemiteDexEntry
	dw MagnetonDexEntry
	dw FarfetchdDexEntry
	dw DoduoDexEntry
	dw DodrioDexEntry
	dw SeelDexEntry
	dw DewgongDexEntry
	dw GrimerDexEntry
	dw MukDexEntry
	dw ShellderDexEntry
	dw CloysterDexEntry
	dw GastlyDexEntry
	dw HaunterDexEntry
	dw GengarDexEntry
	dw OnixDexEntry
	dw DrowzeeDexEntry
	dw HypnoDexEntry
	dw KrabbyDexEntry
	dw KinglerDexEntry

BulbasaurDexEntry:
	db "Äね@"
	db 7
	dw 69
	db   "tまれÄöxwら せüwに"
	next "üにwの PXが tuärり"
	next "wらだö s←し<MN>に そだÜ.@"

IvysaurDexEntry:
	db "Äね@"
	db 10
	dw 130
	db   "せüwに ZUのÜぼdが rり"
	next "vtぶんを x<PK>tし<PK>t するö"
	next "だんだん そだ←äyる.@"

VenusaurDexEntry:
	db "Äね@"
	db 20
	dw 1000
	db   "vvxü はüを sじするÄm"
	next "ひüÄをdÜzるö まるで"
	next "ひxvせられるvtに sどtする.@"

CharmanderDexEntry:
	db "öwげ@"
	db 6
	dw 85
	db   "rÜsrのを このl せswy."
	next "し←ぽの ほのvは こtふんするö"
	next "vんどが rが←äsy.@"

CharmeleonDexEntry:
	db "wuん@"
	db 11
	dw 190
	db   "ruる Lmポを ふりまわすö"
	next "まわりの vんどが どんどん"
	next "rが←ä rsäを yるしmる.@"

CharizardDexEntry:
	db "wuん@"
	db 17
	dw 905
	db   "がんせxr rurがるvtü "
	next "こtねÜの ほのvを はsä"
	next "sまwじを vこすこör rる.@"

SquirtleDexEntry:
	db "wmのこ@"
	db 5
	dw 90
	db   "tまれÄrö せüwが ふyらんで"
	next "wÄs こtらが でxる.yÖwら"
	next "x<MN>tり<MN>yü rわを だす.@"

WartortleDexEntry:
	db "wm@"
	db 10
	dw 225
	db   "しばしば すsÖ<PK>tに wyれ"
	next "urのを ねらt.はsy vvぐöx"
	next "ddを tごwしä バflMをöる.@"

BlastoiseDexEntry:
	db "こtら@"
	db 16
	dw 855
	db   "vrÄyä Ffが wÄsÄm"
	next "のしwwられるö Äsäsの"
	next "ポIblは xを tしü←äしまt.@"

CaterpieDexEntry:
	db "srlし@"
	db 3
	dw 29
	db   "dどりの ひふに vvわれäsる."
	next "だ←ぴしä せsÖ<MN>tするö"
	next "söを wzä KUギに wわる.@"

MetapodDexEntry:
	db "さüぎ@"
	db 7
	dw 99
	db   "tすs Ffに ÜÜまれäsるが"
	next "üwdは öär sわらwy"
	next "Üvs こtげxには Äuられüs.@"

ButterfreeDexEntry:
	db "Ö<MN>tÖ<MN>@"
	db 11
	dw 320
	db   "ZXは dずを はじy りんぷんに"
	next "まrられäsる.rmの ひでr"
	next "そらを öぶこöが でxる.@"

WeedleDexEntry:
	db "zlし@"
	db 3
	dw 32
	db   "rりに vvy Zmパを Äべる."
	next "rÄまに するどs ZりをrÖ"
	next "さされるö どyに vwされる.@"

KakunaDexEntry:
	db "さüぎ@"
	db 6
	dw 100
	db   "vöüの wらだを ÜyるÄm"
	next "Ffのüwで へんしんÖ<PK>t."
	next "ほöんど tごzüs.@"

BeedrillDexEntry:
	db "どyばÖ@"
	db 10
	dw 295
	db   "し<PK>tだんで rらわれるこörrる."
	next "rtMピ-ドで öびまわり"
	next "vしりの どyばりで さしまyる.@"

PidgeyDexEntry:
	db "こöり@"
	db 3
	dw 18
	db   "rりs はsしに vvy ぶんぷ."
	next "Öじ<MN>tに vりäxÄöx"
	next "はばÄsä すüを wzÄりする.@"

PidgeottoDexEntry:
	db "öり@"
	db 11
	dw 300
	db   "rしの Raが は←ÄÜしäsる."
	next "DKの P;P;を Üwんで"
	next "100Giさxの す まで はこぶ.@"

PidgeotDexEntry:
	db "öり@"
	db 15
	dw 395
	db   "tÜyしs ZXを ひろげä"
	next "rsäを swyする."
	next ";mZ2で そらを öびまわる.@"

RattataDexEntry:
	db "ねずd@"
	db 3
	dw 35
	db   "üんでr wじ←ä こtげx."
	next "Ösさstuに tごxが すばsy"
	next "sろんü öころに し<PK>ÜぼÜする.@"

RaticateDexEntry:
	db "ねずd@"
	db 7
	dw 185
	db   "tしろrしの tびは 3ぼんで"
	next "Ösさü dずwxが Üsäsる."
	next "wわを vvsで わÄる.@"

SpearowDexEntry:
	db "こöり@"
	db 3
	dw 20
	db   "yさlらの lしüどを Äべる."
	next "はねが dじwsÄmに sÜr"
	next "sそがしy はばÄsäsる.@"

FearowDexEntry:
	db "yÖばし@"
	db 12
	dw 380
	db   "vvxü Üばさで vvぞらを"
	next "öびÜづzるこöが でxる."
	next "1wsr vりüyär へsxだ.@"

EkansDexEntry:
	db "へび@"
	db 20
	dw 69
	db   "yさÖに vvy wyれäsる."
	next "こどrの A-ボは どyをrÄüs."
	next "wまれär だsじ<MN>tぶだ.@"

ArbokDexEntry:
	db "Jブf@"
	db 35
	dw 650
	db   "vüwの rvtが こわswvに"
	next "duる.vわsäxは そのrvtを"
	next "dÄだzで にげだしäしまt.@"

PikachuDexEntry:
	db "ねずd@"
	db 4
	dw 60
	db   "ほ←ぺÄの り<MN>tがわに"
	next "Ösさs でんxぶyろを r←äsä"
	next "ピlQのöxに ほtでんする.@"

RaichuDexEntry:
	db "ねずd@"
	db 8
	dw 300
	db   "でんげxは 10まんボgTに"
	next "Ä←する.Lmポに さわるö"
	next "Blドぞtでr xぜÜする.@"

SandshrewDexEntry:
	db "ねずd@"
	db 6
	dw 120
	db   "dずzの すyüs ばし<MN>に"
	next "ふws rüを ほ←ä wyれる."
	next "urのを ねらtöxは でäyる.@"

SandslashDexEntry:
	db "ねずd@"
	db 10
	dw 295
	db   "せüwを まるmるö TゲTゲの"
	next "ボ-gdÄsだ.そのまま ころが←ä"
	next "ぶÜw←äxÄり にげÄりする. @"

NidoranFDexEntry:
	db "どyばり@"
	db 4
	dw 70
	db   "Ösさyär どyばりの sり<MN>yは"
	next "x<MN>tれÜで Ö<PK>tsが ひÜvt."
	next "aMのほtが Üのが Ösさs.@"

NidorinaDexEntry:
	db "どyばり@"
	db 8
	dw 200
	db   "aMüので RYのそだÖが vそs."
	next "ひ←wsÄり wdÜsÄりö"
	next "にyだんせんを このl.@"

NidoqueenDexEntry:
	db "ドりg@"
	db 13
	dw 600
	db   "せüwに はりのvtü CiJが"
	next "び←しりö はuäsる."
	next "こtふんするö はりが さwだÜ.@"

NidoranMDexEntry:
	db "どyばり@"
	db 5
	dw 90
	db   "üがs ddを Äää xzんを"
	next "wんじöる.wらだの öげが"
	next "vvxsほど Üvs どyをだす.@"

NidorinoDexEntry:
	db "どyばり@"
	db 9
	dw 195
	db   "すぐに vこ←ä ÄÄwvtöする."
	next "しwr rÄまの RYは ささるö"
	next "x<MN>tれÜü どyそをだす しyd.@"

NidokingDexEntry:
	db "ドりg@"
	db 14
	dw 620
	db   "ダBcのvtに wÄs ひふö"
	next "üがy のびÄ RYが öyÖ<MN>t."
	next "RYに どyがrるので Ö<PK>ts.@"

ClefairyDexEntry:
	db "vtせs@"
	db 6
	dw 75
	db   "ふしぎで wわssので vvyの"
	next ")&lがsる.Äだし せsそyÖが"
	next "wぎられ dÜzるのが Äsへん.@"

ClefableDexEntry:
	db "vtせs@"
	db 13
	dw 400
	db   "ddが vyä 1Gi はüれÄ"
	next "öころで vöしÄ はりのvöを"
	next "dごöに xxわzられる.@"

VulpixDexEntry:
	db "xÜね@"
	db 6
	dw 99
	db   "こどrだが 6ほんの し←ぽが"
	next "tÜyしs.せsÖ<MN>tするö"
	next "さらに し←ぽが ふuる.@"

NinetalesDexEntry:
	db "xÜね@"
	db 11
	dw 199
	db   "vtごんに wがsy Äsrtö"
	next "9ほんの üがs し←ぽを rÜ."
	next "1000ねん sxるö sわれる.@"

JigglypuffDexEntry:
	db "ふtせん@"
	db 5
	dw 55
	db   "Üぶらü ひödが tれるöx"
	next "ねlzを rvvす ふしぎで"
	next "xrÖのss tÄを tÄt.@"

WigglytuffDexEntry:
	db "ふtせん@"
	db 10
	dw 120
	db   "Gaこまws Äsrtは"
	next "しüswで さわるö xrÖss."
	next "zがわにするö tれるöst.@"

ZubatDexEntry:
	db "こtrり@"
	db 8
	dw 75
	db   "yらs ばし<MN>に し<PK>tだんで"
	next "は←せsする.Ö<MN>tvんぱを だしä"
	next "P-ゲmTに Öwづsäsy.@"

GolbatDexEntry:
	db "こtrり@"
	db 16
	dw 550
	db   "するどsGバで wdÜsä"
	next "sÖどに 300L-L-の"
	next "Öを すsö←äしまt.@"

OddishDexEntry:
	db "ざ←そt@"
	db 5
	dw 54
	db   "ひるまは wvを じmんに tmä"
	next "rまり tごwüs.vるに üるö"
	next "Äねをまxüがら rるxまわる.@"

GloomDexEntry:
	db "ざ←そt@"
	db 8
	dw 86
	db   "mしべが はüÜ öäÜrüy"
	next "yさs にvsは 2Giさxまで"
	next "öどx xを tしüわせる.@"

VileplumeDexEntry:
	db ")fj-@"
	db 12
	dw 186
	db   "せwssÖ vvxs はüびらwら"
	next "Ahgギ-を vこす wふんを"
	next "EVの vtに ばらまy.@"

ParasDexEntry:
	db "xのこ@"
	db 3
	dw 54
	db   "lしの せüwに はuäsるのは"
	next "ötÖ<PK>twそt öst GYJ."
	next "GYJは そだ←ä vvxyüる.@"

ParasectDexEntry:
	db "xのこ@"
	db 10
	dw 295
	db   "GYJの FKwら どyほtしを"
	next "まxÖらす.しwし Ö<PK>tごyでは"
	next "このほtしを wんぽtsyに する.@"

VenonatDexEntry:
	db "こんÖ<PK>t@"
	db 10
	dw 300
	db   "vvxü xのüwに すdwをÜyり"
	next "ほwのlしüどを Äべäるらしs."
	next "vるは rwりのそばに s←äyる.@"

VenomothDexEntry:
	db "どyが@"
	db 15
	dw 125
	db   "はねに りんぷんが Üsäsä"
	next "(f(fö はばÄyÄびに"
	next "rtどyの こüを ばらまy.@"

DiglettDexEntry:
	db "rぐら@"
	db 2
	dw 8
	db   "Öw1a-Tgyらsを ほりすすd"
	next "xのね←こüどを wじ←ä sxる."
	next "Äまに Öじ<MN>tに wvをだす.@"

DugtrioDexEntry:
	db "rぐら@"
	db 7
	dw 333
	db   "ÖÖ<PK>tを ほりすすんで"
	next "tだんしäsる öころを"
	next "べÜの ばし<MN>wら こtげxする.@"

MeowthDexEntry:
	db "ばzねこ@"
	db 4
	dw 42
	db   "ひwる rのが だsすxで"
	next "rÖこÖ vÖäsる vwねを"
	next "ひろ←ä yるこör vvs.@"

PersianDexEntry:
	db "Ln]XJ@"
	db 10
	dw 320
	db   "xし<MN>tが はげしy し←ぽを"
	next "ま←すぐ ÄäÄら vt Ö<PK>ts."
	next "öびww←ä wdÜy まuぶれだ.@"

PsyduckDexEntry:
	db "rひる@"
	db 8
	dw 196
	db   "sÜr ずÜtに üsまされäsる."
	next "この ずÜtが はげしyüるö"
	next "ふしぎü Öwらを Üwsはじmる.@"

GolduckDexEntry:
	db "rひる@"
	db 17
	dw 766
	db   "äのひらが dずwxに ü←äsä"
	next "vvぐのが öys.dずtdüどで"
	next "ttがü すがÄが dwzられる.@"

MankeyDexEntry:
	db "ぶÄざる@"
	db 5
	dw 280
	db   "dのこüしが wるy x<MN>tぼtü"
	next "せswy.vこ←ä rばれだすö"
	next "äが Üzられüyüる.@"

PrimeapeDexEntry:
	db "ぶÄざる@"
	db 10
	dw 320
	db   "üぜw rtれÜに vこ←ä"
	next "にげär にげär どこまでr"
	next "vswzäyる せswyだ.@"

GrowlitheDexEntry:
	db "こsぬ@"
	db 7
	dw 190
	db   "ひöüÜこs せswyだが ひろs"
	next "üわばりを r←ävり tだんしä"
	next "Öwずyö こtげxされる.@"

ArcanineDexEntry:
	db "でんせÜ@"
	db 19
	dw 1550
	db   "lwしwら vvyの ひöを"
	next "öりこにしÄ tÜyしs ポIbl."
	next "öぶvtに wろswに はしる.@"

PoliwagDexEntry:
	db "vÄま@"
	db 6
	dw 124
	db   "MべMべしÄ yろsひふは tすs."
	next "vüwの üwが すzä"
	next "tずまxじ<MN>tに duる.@"

PoliwhirlDexEntry:
	db "vÄま@"
	db 10
	dw 200
	db   "りyでr すsÖ<PK>tでr yらせる."
	next "Öじ<MN>tでは sÜr rせをwx"
	next "wらだを ぬmぬm させäsる.@"

PoliwrathDexEntry:
	db "vÄま@"
	db 13
	dw 540
	db   "Hi-gs バP)fBが öysで"
	next "EりlピmHの せんし<PK>でr "
	next "ぐんぐんö vsぬsäsy.@"

AbraDexEntry:
	db "ねんりx@"
	db 9
	dw 195
	db   "1にÖ 18じwんは ねäsる."
	next "ねl←äる rsだでr さまざまü"
	next "Ö<MN>tのtり<MN>yを Üwt.@"

KadabraDexEntry:
	db "ねんりx@"
	db 13
	dw 565
	db   "wらだwら öyべÜü Ag)&はが"
	next "でäsä そばに Öwvるだzで"
	next "rÄまが sÄyü←äyる.@"

AlakazamDexEntry:
	db "ねんりx@"
	db 15
	dw 480
	db   "M-パ-Jlピo-Pvり すばsy"
	next "zsさんする ずのtを rÜ."
	next "Öのtしすtは だsÄs5000.@"

MachopDexEntry:
	db "wsりx@"
	db 8
	dw 195
	db   "ぜんしんが xんにyで でxäsる."
	next "こどrのvtで rりüがら"
	next "vöü 100にんを üげöばす.@"

MachokeDexEntry:
	db "wsりx@"
	db 15
	dw 705
	db   "Üwれるこöのüs x<MN>tじんü"
	next "にyÄs.すごyvrs にrÜを"
	next "はこぶ しごöüどを äÜだt.@"

MachampDexEntry:
	db "wsりx@"
	db 16
	dw 1300
	db   "は←ÄÜしÄ 4ほんの tでは"
	next "2び<MN>twんに 1000ぱÜの"
	next "パlQを yりだすこöがでxる.@"

BellsproutDexEntry:
	db ")fj-@"
	db 7
	dw 40
	db   "ひöの wvのvtü Rボ[wら"
	next "でんせÜの ;lドfゴfの s←し<PK>"
	next "ではüswö ささswれäsる.@"

WeepinbellDexEntry:
	db "ZDöり@"
	db 10
	dw 64
	db   "Zmパの ぶぶんは FmP-にü←ä"
	next "rsäを xりさy.yÖwらは"
	next "üんでr öwす uxÄsを はy.@"

VictreebelDexEntry:
	db "ZDöり@"
	db 17
	dw 155
	db   "üんごyに vvy は←せsする"
	next "x<MN>tぼtü し<MN>yぶÜ ポIbl."
	next "vtwsuxで üんでr öwす.@"

TentacoolDexEntry:
	db "yらげ@"
	db 9
	dw 455
	db   "まるで すsし<MN>tのvtü"
	next "mだまwら ふしぎü ひwりの"
	next "ビ-]を は←しする.@"

TentacruelDexEntry:
	db "yらげ@"
	db 16
	dw 550
	db   "80ぽん の し<MN>yし<PK>が じttに"
	next "tごy.さされるö どyに vwされ"
	next "するどs sÄdが はしる.@"

GeodudeDexEntry:
	db "がんせx@"
	db 4
	dw 20
	db   "そtげんs sまに せsそyする."
	next "sしころに にäsä xがÜwずに"
	next "ふんだり ÜまずsÄり しäしまt.@"

GravelerDexEntry:
	db "がんせx@"
	db 10
	dw 1050
	db   "Äws sまの さwdÖを"
	next "ころがりüがら sどtするöx"
	next "じまrのは vしÜぶしäsy.@"

GolemDexEntry:
	db "aガTl@"
	db 14
	dw 3000
	db   "がんせxのvtü wÄs wらだで"
	next "でxäsる.ダBU;BTで"
	next "ばyはしär ダa-ジを tzüs.@"

PonytaDexEntry:
	db "ひのtま@"
	db 10
	dw 300
	db   "wらだが wるy rしの Öwらが"
	next "rのすごs.1wsの ジnlプで"
	next "ötx<MN>tPj-r öびこuる.@"

RapidashDexEntry:
	db "ひのtま@"
	db 17
	dw 950
	db   "じそyは さsこt 240Gi."
	next "afaf ruüがら しんwんせんö"
	next "vüじ Mピ-ドで wzぬzる.@"

SlowpokeDexEntry:
	db "まぬz@"
	db 12
	dw 360
	db   "tごxが のろy まぬz."
	next "ÄÄwれär 5び<MN>t Ä←äwら"
	next "sÄさを wんじるほどだ.@"

SlowbroDexEntry:
	db "sどwり@"
	db 16
	dw 785
	db   "cドlが tdへ DKを"
	next "öりにs←Äöx L→gダ-に"
	next "し←ぽをwまれ cドflにü←Ä.@"

MagnemiteDexEntry:
	db "じしy@"
	db 3
	dw 60
	db   "ytÖ<PK>tに tsÄまま sどtしä"
	next "さttの dVmTwら"
	next "でんじはüどを ほtしする.@"

MagnetonDexEntry:
	db "じしy@"
	db 10
	dw 600
	db   "ふyすtの JBgが れんzÜしä"
	next "x<MN>tり<MN>yü じり<MN>yせんö"
	next "こtでんrÜを ほtしする.@"

FarfetchdDexEntry:
	db "wるがr@"
	db 8
	dw 150
	db   "じぶんの すを ÜyるÄmの"
	next "し<MN>yぶÜの HGを 1ぽん"
	next "sÜr r←ä rるsäsる.@"

DoduoDexEntry:
	db "ふÄごどり@"
	db 14
	dw 392
	db   "öぶのは にがäだが はしるのは "
	next "はsy x<MN>だsü rしröを"
	next "のこしä だsÖを wzぬzる.@"

DodrioDexEntry:
	db "dÜごどり@"
	db 18
	dw 852
	db   "3Üの rÄまで こtどü"
	next "さyせんを rsÜる.ねるöxr"
	next "どれw 1Üは vxäsるöst.@"

SeelDexEntry:
	db "rしw@"
	db 11
	dw 900
	db   "dずsろの Äsrtに vvわれÄ"
	next "ひふは ぶrÜyä じ<MN>tぶ."
	next "れsw40ど でr wÜどtでxる.@"

DewgongDexEntry:
	db "rしw@"
	db 17
	dw 1200
	db   "ぜんしんが ま←しろü zで"
	next "vvわれäsる.さlさに Üvy"
	next "lしろ さlsほど げんxにüる.@"

GrimerDexEntry:
	db "へドi@"
	db 9
	dw 300
	db   "Üxwらの DmHMせんをrびÄ"
	next "へドiが べTべP-にへんwしÄ."
	next "xÄüsbYが だsこtぶÜ.@"

MukDexEntry:
	db "へドi@"
	db 12
	dw 300
	db   "ふだんは じmんに まざ←äsä"
	next "わwらüs.wらだに さわるö"
	next "rtどyに vwされる.@"

ShellderDexEntry:
	db "2まsがs@"
	db 3
	dw 40
	db   "ダBcblドvりr wÄsFfに"
	next "vvわれäsる.しwし üwは"
	next "öär sわらws.@"

CloysterDexEntry:
	db "2まsがs@"
	db 15
	dw 1325
	db   "Ffが ひじ<MN>tに wÄy"
	next "Uパ-]だんでr こわせüs."
	next "こtげxするöxだz ひらy.@"

GastlyDexEntry:
	db "ガMじ<MN>t@"
	db 13
	dw 1
	db   "tすs ガMじ<MN>tの せsmsÄs."
	next "ガMに ÜÜまれるö"
	next "Blドぞtr 2び<MN>tで Ävれる.@"

HaunterDexEntry:
	db "ガMじ<MN>t@"
	db 16
	dw 1
	db   "yらsdで だれrsüsのに"
	next "dられäsるvtü xがしÄら"
	next "そこに ゴ-MTが sるのだ.@"

GengarDexEntry:
	db "Lnド-@"
	db 15
	dw 405
	db   "sまで そtüんしÄöx"
	next "sのÖをtばsに yらsdwら"
	next "rらわれるこöが rるöst.@"

OnixDexEntry:
	db "sわへび@"
	db 88
	dw 2100
	db   "せsÖ<MN>tするö wらだの"
	next "がんせxせsぶんが へんwしä"
	next "yろs ダBcblドのvtにüる.@"

DrowzeeDexEntry:
	db "さsdん@"
	db 10
	dw 324
	db   "daをÄべるöst でんせÜの "
	next "sxrの バHの しそん."
	next "さsdんじ<PK>Üが öysだ.@"

HypnoDexEntry:
	db "さsdん@"
	db 16
	dw 756
	db   "ふりこのvtürのを rÖrるy."
	next "こどrに さsdんじ<PK>Üを wzä"
	next "どこwへ Üれさるじzんが r←Ä.@"

KrabbyDexEntry:
	db "さわがに@"
	db 4
	dw 65
	db   "ZK[は x<MN>tり<MN>yü ぶxでrり"
	next "vこに rるyöx wらだの"
	next "バflMをöる symr はÄす.@"

KinglerDexEntry:
	db "はさd@"
	db 13
	dw 600
	db   "ZK[は 1まんばりxの"
	next "M-パ-パj-を ひmäsるのだが"
	next "vvxすぎä tまy tごwüs.@"

PokedexEntryPointers2::
	dw VoltorbDexEntry
	dw ElectrodeDexEntry
	dw ExeggcuteDexEntry
	dw ExeggutorDexEntry
	dw CuboneDexEntry
	dw MarowakDexEntry
	dw HitmonleeDexEntry
	dw HitmonchanDexEntry
	dw LickitungDexEntry
	dw KoffingDexEntry
	dw WeezingDexEntry
	dw RhyhornDexEntry
	dw RhydonDexEntry
	dw ChanseyDexEntry
	dw TangelaDexEntry
	dw KangaskhanDexEntry
	dw HorseaDexEntry
	dw SeadraDexEntry
	dw GoldeenDexEntry
	dw SeakingDexEntry
	dw StaryuDexEntry
	dw StarmieDexEntry
	dw MrMimeDexEntry
	dw ScytherDexEntry
	dw JynxDexEntry
	dw ElectabuzzDexEntry
	dw MagmarDexEntry
	dw PinsirDexEntry
	dw TaurosDexEntry
	dw MagikarpDexEntry
	dw GyaradosDexEntry
	dw LaprasDexEntry
	dw DittoDexEntry
	dw EeveeDexEntry
	dw VaporeonDexEntry
	dw JolteonDexEntry
	dw FlareonDexEntry
	dw PorygonDexEntry
	dw OmanyteDexEntry
	dw OmastarDexEntry
	dw KabutoDexEntry
	dw KabutopsDexEntry
	dw AerodactylDexEntry
	dw SnorlaxDexEntry
	dw ArticunoDexEntry
	dw ZapdosDexEntry
	dw MoltresDexEntry
	dw DratiniDexEntry
	dw DragonairDexEntry
	dw DragoniteDexEntry
	dw MewtwoDexEntry
	dw MewDexEntry
	dw HappaDexEntry
	dw HanamoguraDexEntry
	dw HanaryuDexEntry
	dw HonogumaDexEntry
	dw VolbearDexEntry
	dw DynabearDexEntry
	dw KurusuDexEntry
	dw AquaDexEntry
	dw AquariaDexEntry
	dw HohoDexEntry
	dw BoboDexEntry
	dw PachimeeDexEntry
	dw MokokoDexEntry
	dw DenryuDexEntry
	dw MikonDexEntry
	dw MonjaDexEntry
	dw JaranraDexEntry
	dw HaneeiDexEntry
	dw PukuDexEntry
	dw ShibirefuguDexEntry
	dw PichuDexEntry
	dw PyDexEntry
	dw PupurinDexEntry
	dw MizuuoDexEntry
	dw NatyDexEntry
	dw NatioDexEntry
	dw GyopinDexEntry
	dw MarilDexEntry
	dw Manbo1DexEntry
	dw IkariDexEntry
	dw GrotessDexEntry
	dw EksingDexEntry
	dw ParaDexEntry
	dw KokumoDexEntry
	dw TwoheadDexEntry
	dw YoroidoriDexEntry
	dw AnimonDexEntry
	dw HinazuDexEntry
	dw SunnyDexEntry
	dw PaonDexEntry
	dw DonphanDexEntry
	dw TwinzDexEntry
	dw KirinrikiDexEntry
	dw PainterDexEntry
	dw KounyaDexEntry
	dw RinrinDexEntry
	dw BerurunDexEntry
	dw NyorotonoDexEntry
	dw YadokingDexEntry
	dw AnnonDexEntry
	dw RedibaDexEntry
	dw MitsuboshiDexEntry
	dw PuchicornDexEntry
	dw EifieDexEntry
	dw BlackyDexEntry
	dw TurbanDexEntry
	dw BetbabyDexEntry
	dw TeppouoDexEntry
	dw OkutankDexEntry
	dw GonguDexEntry
	dw KapoererDexEntry
	dw PudieDexEntry
	dw HanekoDexEntry
	dw PoponekoDexEntry
	dw WatanekoDexEntry
	dw BaririnaDexEntry
	dw LipDexEntry
	dw NorowaraDexEntry ; should be ElebabyDexEntry
	dw BoobyDexEntry
	dw KireihanaDexEntry
	dw TsubomittoDexEntry
	dw MiltankDexEntry
	dw BombseekerDexEntry
	dw GiftDexEntry
	dw KotoraDexEntry
	dw RaitoraDexEntry
	dw MadameDexEntry
	dw NorowaraDexEntry
	dw KyonpanDexEntry
	dw YamikarasuDexEntry
	dw HappiDexEntry
	dw ScissorsDexEntry
	dw PurakkusuDexEntry
	dw DevilDexEntry
	dw HelgaaDexEntry
	dw WolfmanDexEntry
	dw WarwolfDexEntry
	dw Porygon2DexEntry
	dw NameilDexEntry
	dw HaganeilDexEntry
	dw KingdraDexEntry
	dw RaiDexEntry
	dw EnDexEntry
	dw SuiDexEntry
	dw NyulaDexEntry
	dw HououDexEntry
	dw TogepyDexEntry
	dw BuluDexEntry
	dw TailDexEntry
	dw LeafyDexEntry

VoltorbDexEntry:
	db "ボ-g@"
	db 5
	dw 104
	db   "はÜでんし<MN>üどに rらわれる."
	next "blMP-ボ-gö まÖがuä"
	next "さわ←ä しびれるひöが vvs.@"

ElectrodeDexEntry:
	db "ボ-g@"
	db 12
	dw 666
	db   "ぼtだsü DhHTl DXgギ-を"
	next "Ämこんでvり Ö<MN>←öしÄ"
	next "しげxで だsばyはÜを vこす.@"

ExeggcuteDexEntry:
	db "Äまご@"
	db 4
	dw 25
	db   "Äまごの vtだが じÜは"
	next "し<MN>yぶÜの PXのvtü"
	next "sxrのだö stこöが わw←Ä.@"

ExeggutorDexEntry:
	db "sしのd@"
	db 20
	dw 1200
	db   "rるy ね←Ästりん."
	next "dの ひöÜひöÜに"
	next "それぞれ sしを r←äsる.@"

CuboneDexEntry:
	db "こどy@"
	db 4
	dw 65
	db   "しにわwれÄ ははvsの ほねを"
	next "rÄまに wぶ←äsる.さびしsöx"
	next "vvごuで üyöst.@"

MarowakDexEntry:
	db "ほねずx@"
	db 10
	dw 450
	db   "wらだr Ösさy rörö "
	next "vわw←Ä.:Xを Üwtvtにüり"
	next "せswyが x<MN>tぼtw しÄ.@"

HitmonleeDexEntry:
	db "GmH@"
	db 15
	dw 498
	db   "rしが じttに のびÖぢdする."
	next "rsäが övy はüれäsär"
	next "wんÄんに zりrげäしまt.@"

HitmonchanDexEntry:
	db "パlQ@"
	db 14
	dw 502
	db   "プiボHK-の Äましsが"
	next "のりtÜ←Ä.パlQのMピ-ドは"
	next "しんwんせんvりr はss.@"

LickitungDexEntry:
	db "ümまわし@"
	db 12
	dw 655
	db   "べiが wらだの 2ばsr のびる."
	next "DKをö←Äり こtげxをしÄりö"
	next "まるで äのvtに tごyのだ.@"

KoffingDexEntry:
	db "どyガM@"
	db 6
	dw 10
	db   "tすs バg-lじ<MN>tの wらだに"
	next "rtどyの ガMが Üま←äsる."
	next "Öwyに yるだzで yさs.@"

WeezingDexEntry:
	db "どyガM@"
	db 12
	dw 95
	db   "ごyまれに öÜぜんへんsで"
	next "ふÄごの Ösさs ドガ-Mが"
	next "れんzÜしÄまま でるこöがrる.@"

RhyhornDexEntry:
	db "öげöげ@"
	db 10
	dw 1150
	db   "rÄまは わるsが Öwらが Üvy"
	next "こtそtビgでr ÄsrÄりで"
	next "JUゴUに ふんさsしäしまt.@"

RhydonDexEntry:
	db "ドりg@"
	db 19
	dw 1200
	db   "ぜんしんを vろsのvtü ひふで"
	next "まr←äsる.2000どの"
	next ";グ;の üwでr sxられる.@"

ChanseyDexEntry:
	db "Äまご@"
	db 11
	dw 346
	db   "せsそyすtが すyüs."
	next "ÜwまuÄ ひöには しrわせを"
	next "rÄらすö sわれäsる.@"

TangelaDexEntry:
	db "Rgじ<MN>t@"
	db 10
	dw 350
	db   "ブg-の Üるし<MN>yぶÜが"
	next "wらdrs し<MN>tÄsは duüs."
	next "Öwずyrのに wらdÜsäyる.@"

KangaskhanDexEntry:
	db "vsこ@"
	db 22
	dw 800
	db   "こどrは ははvsの vüwにrる"
	next "ふyろwら ほöんど でäこüs."
	next "sy3ねんで vsばüれする.@"

HorseaDexEntry:
	db "ドfゴl@"
	db 4
	dw 80
	db   "ぜんまsのvtに HgHgまsÄ"
	next "し←ぽで バflMをöる."
	next "M[を はsä こtげxする.@"

SeadraDexEntry:
	db "ドfゴl@"
	db 12
	dw 250
	db   "ZXö し←ぽを すばsy tごwし"
	next "まuを lsÄまま tしろへ"
	next "vvぐこör でxる ポIbl.@"

GoldeenDexEntry:
	db "xんぎ<MN>@"
	db 6
	dw 150
	db   "せビh lüビhが xんにyのvtに"
	next "は←ÄÜしävり すsÖ<PK>tを"
	next "5YmTの はsさで vvぐ.@"

SeakingDexEntry:
	db "xんぎ<MN>@"
	db 13
	dw 390
	db   "RYが ドりgのvtに öが←äsä"
	next "sわはだを RYで yりぬx"
	next "じぶんの すを Üy←äsる.@"

StaryuDexEntry:
	db "ほしがÄ@"
	db 8
	dw 345
	db   "tdべに vvy rらわれ"
	next "vるにüるö Ö<PK>tしんが"
	next "rwy äんmÜする.@"

StarmieDexEntry:
	db "üぞの@"
	db 11
	dw 800
	db   "xwがyäxü ボデq-wら"
	next "tÖ<PK>tせsぶÜ ではüswö"
	next "じröでは tÄがわれäsる.@"

MrMimeDexEntry:
	db "バりA-@"
	db 13
	dw 545
	db   "ひöを しんじこませるのが tまs."
	next "パlT;B]で Üy←ÄFべが"
	next "ほんötに rらわれるöst.@"

ScytherDexEntry:
	db "wまxり@"
	db 15
	dw 560
	db   "するどsF;で urのを xりさx"
	next "sxのねを ömる.ごyまれに"
	next "ZXをÜw←ä öぶこöがrる.@"

JynxDexEntry:
	db "ひöがÄ@"
	db 14
	dw 406
	db   "こしを ふるvtに rるsäsる."
	next "tだんをするö vrわず Üられä"
	next "vど←äしまtöst.@"

ElectabuzzDexEntry:
	db "でんげx@"
	db 11
	dw 300
	db   "Üvs でんxが だsこtぶÜで"
	next "vvxü はÜでんし<MN> üどに "
	next "しばしば rらわれる.@"

MagmarDexEntry:
	db "ひふx@"
	db 13
	dw 445
	db   "wざんの wこtÖwyで"
	next "dÜw←Ä.yÖwら ほのvをはy."
	next "Äsvんは 1200ど rrる.@"

PinsirDexEntry:
	db "yわがÄ@"
	db 15
	dw 550
	db   "2ほんの üがsRYに"
	next "はさまれÄら Öぎれるまで"
	next "はüさüsöst.@"

TaurosDexEntry:
	db "rばれtし@"
	db 14
	dw 884
	db   "urのに ねらsを Üzるö"
	next "し←ぽで wらだを ÄÄxüがら"
	next "ま←すぐ Ü←こんでyる.@"

MagikarpDexEntry:
	db "さwü@"
	db 9
	dw 100
	db   "Öwらr Mピ-ドr ほöんどダa."
	next "せwsで sÖばん vわyä"
	next "üさzüs ポIblだ.@"

GyaradosDexEntry:
	db "x<MN>try@"
	db 65
	dw 2350
	db   "ひじ<MN>tに x<MN>tぼtで"
	next "yÖwらだす はwsこtせんは"
	next "すべäのrのを sxÜyす.@"

LaprasDexEntry:
	db "のりrの@"
	db 25
	dw 2200
	db   "wÜä Äyさん ÜwまuÄÄm"
	next "ぜÜmÜ すんぜんに ü←äsる."
	next "ひöをのせä すすl.@"

DittoDexEntry:
	db "へんしん@"
	db 3
	dw 40
	db   "さsぼtそしxを s←し<PK>んで"
	next "Jピ-しä rsä そ←yりに"
	next "へんしんする のtり<MN>yがrる.@"

EeveeDexEntry:
	db "しんw@"
	db 3
	dw 65
	db   "ふxそyü sでんしを rÜ."
	next "sしwらでる ほtしせんにv←ä"
	next "wらだが öÜぜんへんsを vこす.@"

VaporeonDexEntry:
	db "rわはx@"
	db 10
	dw 290
	db   "dずべに すlが し←ぽには"
	next "さwüのvtü ひれが のこ←äsä"
	next "にんぎ<MN>ö まÖがt ひörsる.@"

JolteonDexEntry:
	db "wdüり@"
	db 8
	dw 245
	db   "ytxÖ<PK>tの ;BUMBElを"
	next "すsこんで sy10000ボgTの"
	next "でんxを はxだすこöがでxる.@"

FlareonDexEntry:
	db "ほのv@"
	db 9
	dw 250
	db   "wらだに ほのvを Ämäるöx"
	next "Äsvんが 1000ど sじ<MN>tに"
	next "rがるので ひじ<MN>tに xzん.@"

PorygonDexEntry:
	db "バ-Qng@"
	db 8
	dw 365
	db   "さsこtの wがyり<MN>yを rÜm"
	next "Üsに じんこtの ポIblを"
	next "Üyるこöに せsこtしÄ.@"

OmanyteDexEntry:
	db "tずまx@"
	db 4
	dw 75
	db   "ぜÜmÜしÄ ポIblだが まれに"
	next "wせxが は←zんされ そこwら"
	next "sxwuらせるこöが でxる.@"

OmastarDexEntry:
	db "tずまx@"
	db 10
	dw 350
	db   "するどs Gバö し<MN>yし<PK>で"
	next "urのに wdÜsÄら さsご."
	next "Äsuxを すsだしäしまt.@"

KabutoDexEntry:
	db "こtら@"
	db 5
	dw 115
	db   "こだs せsぶÜの wせxwら"
	next "さsせsしÄポIbl."
	next "wÄs Ffで dを まr←äsる.@"

KabutopsDexEntry:
	db "こtら@"
	db 13
	dw 405
	db   "すsÖ<PK>tを じttに vvぎ"
	next "するどs F;で urのを öらu"
	next "Äsuxを すsö←äしまt.@"

AerodactylDexEntry:
	db "wせx@"
	db 18
	dw 590
	db   "こはyに のこされÄ x<MN>tり<PK>tの"
	next "sでんしwら ふ←wÜさせÄ."
	next "Äwsこuで üxüがら öぶ.@"

SnorlaxDexEntry:
	db "sねlり@"
	db 21
	dw 4600
	db   "1にÖに Äべrのを 400Gi"
	next "Äべüsö xが すまüs."
	next "Äべvわるö ねl←äしまt.@"

ArticunoDexEntry:
	db "れsöt@"
	db 17
	dw 554
	db   "txsまで さlyä しにそtüöx"
	next "mのまuに rらわれるösわれる"
	next "でんせÜの れsötポIbl.@"

ZapdosDexEntry:
	db "でんげx@"
	db 16
	dw 526
	db   "yrの tuwら x<MN>だsü"
	next "süづまを vöしüがら rらわれる"
	next "でんせÜの öりポIblでrる.@"

MoltresDexEntry:
	db "wuん@"
	db 20
	dw 600
	db   "lwしwら ひのöりでんせÜöしä"
	next "しられる. はばÄyÄびに はねが"
	next "rwるy rurがり tÜyしs.@"

DratiniDexEntry:
	db "ドfゴl@"
	db 18
	dw 33
	db   "üがsrsだ まぼろしの ポIblö"
	next "vばれÄ.わずwだが すsÖ<PK>tに"
	next "すんでsるこöが わw←Ä.@"

DragonairDexEntry:
	db "ドfゴl@"
	db 40
	dw 165
	db   "ZXは üsが そらを öべる."
	next "öぶöx wらだを しüswに"
	next "yねらせä öär tÜyしs.@"

DragoniteDexEntry:
	db "ドfゴl@"
	db 22
	dw 2100
	db   "すがÄを dÄひöは すyüsが"
	next "じÜざsする tdのzしん.Öのtr"
	next "にんげんに ひ←äx するらしs.@"

MewtwoDexEntry:
	db "sでんし@"
	db 20
	dw 1220
	db   "zんx<PK>tの Ämに sでんしを"
	next "どんどん ydwuäs←Ä z←w"
	next "x<MN>tぼtü ポIblに ü←Ä.@"

MewDexEntry:
	db "しんし<PK>@"
	db 4
	dw 40
	db   "sまでr まぼろしの ポIblö"
	next "sわれる.そのすがÄを dÄrのは"
	next "ぜんこyでr ほöんど süs.@"

HappaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HanamoguraDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HanaryuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HonogumaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

VolbearDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

DynabearDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KurusuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

AquaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

AquariaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HohoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BoboDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PachimeeDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MokokoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

DenryuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MikonDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MonjaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

JaranraDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HaneeiDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PukuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

ShibirefuguDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PichuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PupurinDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MizuuoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

NatyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

NatioDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

GyopinDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MarilDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

Manbo1DexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

IkariDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

GrotessDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

EksingDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

ParaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KokumoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TwoheadDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

YoroidoriDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

AnimonDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HinazuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

SunnyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PaonDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

DonphanDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TwinzDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KirinrikiDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PainterDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KounyaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

RinrinDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BerurunDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

NyorotonoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

YadokingDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

AnnonDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

RedibaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MitsuboshiDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PuchicornDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

EifieDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BlackyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TurbanDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BetbabyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TeppouoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

OkutankDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

GonguDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KapoererDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PudieDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HanekoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PoponekoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

WatanekoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BaririnaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

LipDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

ElebabyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BoobyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KireihanaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TsubomittoDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MiltankDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BombseekerDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

GiftDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KotoraDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

RaitoraDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

MadameDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

NorowaraDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KyonpanDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

YamikarasuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HappiDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

ScissorsDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

PurakkusuDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

DevilDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HelgaaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

WolfmanDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

WarwolfDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

Porygon2DexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

NameilDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HaganeilDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

KingdraDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

RaiDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

EnDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

SuiDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

NyulaDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

HououDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TogepyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

BuluDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

TailDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"

LeafyDexEntry:
	db "???@"
	db 0
	dw 0
	db   "は←zんされÄ ばwりの ポIbl"
	next "げんざs Ö<MN>tさÖ<PK>t.@"
