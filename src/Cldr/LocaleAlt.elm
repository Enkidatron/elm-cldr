module Cldr.LocaleAlt exposing
    ( Locale
    , fromString
    , allLocales, basicLocales
    , toUnicode
    , af, af_NA
    , am
    , ar, ar_AE, ar_BH, ar_DJ, ar_DZ, ar_EG, ar_EH, ar_ER, ar_IL, ar_IQ, ar_JO, ar_KM, ar_KW, ar_LB, ar_LY, ar_MA
    , ar_MR, ar_OM, ar_PS, ar_QA, ar_SA, ar_SD, ar_SO, ar_SS, ar_SY, ar_TD, ar_TN, ar_YE
    , locale_as
    , az, az_Latn
    , be, be_TARASK
    , bg
    , bn, bn_IN
    , bs, bs_Latn
    , ca, ca_AD, ca_ES_VALENCIA, ca_FR, ca_IT
    , cs
    , cy
    , da, da_GL
    , de, de_AT, de_BE, de_CH, de_IT, de_LI, de_LU
    , el, el_CY
    , en, en_001, en_150, en_AE, en_AG, en_AI, en_AS, en_AT, en_AU, en_BB, en_BE, en_BI, en_BM, en_BS, en_BW, en_BZ
    , en_CA, en_CC, en_CH, en_CK, en_CM, en_CX, en_CY, en_DE, en_DG, en_DK, en_DM, en_ER, en_FI, en_FJ, en_FK, en_FM
    , en_GB, en_GD, en_GG, en_GH, en_GI, en_GM, en_GU, en_GY, en_HK, en_IE, en_IL, en_IM, en_IN, en_IO, en_JE, en_JM
    , en_KE, en_KI, en_KN, en_KY, en_LC, en_LR, en_LS, en_MG, en_MH, en_MO, en_MP, en_MS, en_MT, en_MU, en_MW, en_MY
    , en_NA, en_NF, en_NG, en_NL, en_NR, en_NU, en_NZ, en_PG, en_PH, en_PK, en_PN, en_PR, en_PW, en_RW, en_SB, en_SC
    , en_SD, en_SE, en_SG, en_SH, en_SI, en_SL, en_SS, en_SX, en_SZ, en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ, en_UG
    , en_UM, en_VC, en_VG, en_VI, en_VU, en_WS, en_ZA, en_ZM, en_ZW
    , es, es_419, es_AR, es_BO, es_BR, es_BZ, es_CL, es_CO, es_CR, es_CU, es_DO, es_EA, es_EC, es_GQ, es_GT, es_HN
    , es_IC, es_MX, es_NI, es_PA, es_PE, es_PH, es_PR, es_PY, es_SV, es_US, es_UY, es_VE
    , et
    , eu
    , fa, fa_AF
    , fi
    , fil
    , fr, fr_BE, fr_BF, fr_BI, fr_BJ, fr_BL, fr_CA, fr_CD, fr_CF, fr_CG, fr_CH, fr_CI, fr_CM, fr_DJ, fr_DZ, fr_GA
    , fr_GF, fr_GN, fr_GP, fr_GQ, fr_HT, fr_KM, fr_LU, fr_MA, fr_MC, fr_MF, fr_MG, fr_ML, fr_MQ, fr_MR, fr_MU, fr_NC
    , fr_NE, fr_PF, fr_PM, fr_RE, fr_RW, fr_SC, fr_SN, fr_SY, fr_TD, fr_TG, fr_TN, fr_VU, fr_WF, fr_YT
    , ga, ga_GB
    , gl
    , gu
    , he
    , hi
    , hr, hr_BA
    , hu
    , hy
    , id
    , is
    , it, it_CH, it_SM, it_VA
    , ja
    , jv
    , ka
    , kk
    , km
    , kn
    , ko, ko_KP
    , ky
    , lo
    , lt
    , lv
    , mk
    , ml
    , mn
    , mr
    , ms, ms_BN, ms_ID, ms_SG
    , my
    , nb, nb_SJ
    , ne, ne_IN
    , nl, nl_AW, nl_BE, nl_BQ, nl_CW, nl_SR, nl_SX
    , nn
    , no
    , or
    , pa, pa_Guru
    , pl
    , ps, ps_PK
    , pt, pt_AO, pt_CH, pt_CV, pt_GQ, pt_GW, pt_LU, pt_MO, pt_MZ, pt_PT, pt_ST, pt_TL
    , ro, ro_MD
    , ru, ru_BY, ru_KG, ru_KZ, ru_MD, ru_UA
    , sd, sd_Arab
    , si
    , sk
    , sl
    , so, so_DJ, so_ET, so_KE
    , sq, sq_MK, sq_XK
    , sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn, sr_Latn_BA, sr_Latn_ME, sr_Latn_XK
    , sv, sv_AX, sv_FI
    , sw, sw_CD, sw_KE, sw_UG
    , ta, ta_LK, ta_MY, ta_SG
    , te
    , th
    , tk
    , tr, tr_CY
    , uk
    , root
    , ur, ur_IN
    , uz, uz_Latn
    , vi
    , yue, yue_Hant
    , zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO
    , zu
    )

{-|


# Locale

@docs Locale


## Create

@docs fromString

@docs allLocales, basicLocales


## Convert

@docs toUnicode


## Locales by language


### Af

@docs af, af_NA


### Am

@docs am


### Ar

@docs ar, ar_AE, ar_BH, ar_DJ, ar_DZ, ar_EG, ar_EH, ar_ER, ar_IL, ar_IQ, ar_JO, ar_KM, ar_KW, ar_LB, ar_LY, ar_MA
@docs ar_MR, ar_OM, ar_PS, ar_QA, ar_SA, ar_SD, ar_SO, ar_SS, ar_SY, ar_TD, ar_TN, ar_YE


### As

@docs locale_as


### Az

@docs az, az_Latn


### Be

@docs be, be_TARASK


### Bg

@docs bg


### Bn

@docs bn, bn_IN


### Bs

@docs bs, bs_Latn


### Ca

@docs ca, ca_AD, ca_ES_VALENCIA, ca_FR, ca_IT


### Cs

@docs cs


### Cy

@docs cy


### Da

@docs da, da_GL


### De

@docs de, de_AT, de_BE, de_CH, de_IT, de_LI, de_LU


### El

@docs el, el_CY


### En

@docs en, en_001, en_150, en_AE, en_AG, en_AI, en_AS, en_AT, en_AU, en_BB, en_BE, en_BI, en_BM, en_BS, en_BW, en_BZ
@docs en_CA, en_CC, en_CH, en_CK, en_CM, en_CX, en_CY, en_DE, en_DG, en_DK, en_DM, en_ER, en_FI, en_FJ, en_FK, en_FM
@docs en_GB, en_GD, en_GG, en_GH, en_GI, en_GM, en_GU, en_GY, en_HK, en_IE, en_IL, en_IM, en_IN, en_IO, en_JE, en_JM
@docs en_KE, en_KI, en_KN, en_KY, en_LC, en_LR, en_LS, en_MG, en_MH, en_MO, en_MP, en_MS, en_MT, en_MU, en_MW, en_MY
@docs en_NA, en_NF, en_NG, en_NL, en_NR, en_NU, en_NZ, en_PG, en_PH, en_PK, en_PN, en_PR, en_PW, en_RW, en_SB, en_SC
@docs en_SD, en_SE, en_SG, en_SH, en_SI, en_SL, en_SS, en_SX, en_SZ, en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ, en_UG
@docs en_UM, en_VC, en_VG, en_VI, en_VU, en_WS, en_ZA, en_ZM, en_ZW


### Es

@docs es, es_419, es_AR, es_BO, es_BR, es_BZ, es_CL, es_CO, es_CR, es_CU, es_DO, es_EA, es_EC, es_GQ, es_GT, es_HN
@docs es_IC, es_MX, es_NI, es_PA, es_PE, es_PH, es_PR, es_PY, es_SV, es_US, es_UY, es_VE


### Et

@docs et


### Eu

@docs eu


### Fa

@docs fa, fa_AF


### Fi

@docs fi


### Fil

@docs fil


### Fr

@docs fr, fr_BE, fr_BF, fr_BI, fr_BJ, fr_BL, fr_CA, fr_CD, fr_CF, fr_CG, fr_CH, fr_CI, fr_CM, fr_DJ, fr_DZ, fr_GA
@docs fr_GF, fr_GN, fr_GP, fr_GQ, fr_HT, fr_KM, fr_LU, fr_MA, fr_MC, fr_MF, fr_MG, fr_ML, fr_MQ, fr_MR, fr_MU, fr_NC
@docs fr_NE, fr_PF, fr_PM, fr_RE, fr_RW, fr_SC, fr_SN, fr_SY, fr_TD, fr_TG, fr_TN, fr_VU, fr_WF, fr_YT


### Ga

@docs ga, ga_GB


### Gl

@docs gl


### Gu

@docs gu


### He

@docs he


### Hi

@docs hi


### Hr

@docs hr, hr_BA


### Hu

@docs hu


### Hy

@docs hy


### Id

@docs id


### Is

@docs is


### It

@docs it, it_CH, it_SM, it_VA


### Ja

@docs ja


### Jv

@docs jv


### Ka

@docs ka


### Kk

@docs kk


### Km

@docs km


### Kn

@docs kn


### Ko

@docs ko, ko_KP


### Ky

@docs ky


### Lo

@docs lo


### Lt

@docs lt


### Lv

@docs lv


### Mk

@docs mk


### Ml

@docs ml


### Mn

@docs mn


### Mr

@docs mr


### Ms

@docs ms, ms_BN, ms_ID, ms_SG


### My

@docs my


### Nb

@docs nb, nb_SJ


### Ne

@docs ne, ne_IN


### Nl

@docs nl, nl_AW, nl_BE, nl_BQ, nl_CW, nl_SR, nl_SX


### Nn

@docs nn


### No

@docs no


### Or

@docs or


### Pa

@docs pa, pa_Guru


### Pl

@docs pl


### Ps

@docs ps, ps_PK


### Pt

@docs pt, pt_AO, pt_CH, pt_CV, pt_GQ, pt_GW, pt_LU, pt_MO, pt_MZ, pt_PT, pt_ST, pt_TL


### Ro

@docs ro, ro_MD


### Ru

@docs ru, ru_BY, ru_KG, ru_KZ, ru_MD, ru_UA


### Sd

@docs sd, sd_Arab


### Si

@docs si


### Sk

@docs sk


### Sl

@docs sl


### So

@docs so, so_DJ, so_ET, so_KE


### Sq

@docs sq, sq_MK, sq_XK


### Sr

@docs sr, sr_Cyrl, sr_Cyrl_BA, sr_Cyrl_ME, sr_Cyrl_XK, sr_Latn, sr_Latn_BA, sr_Latn_ME, sr_Latn_XK


### Sv

@docs sv, sv_AX, sv_FI


### Sw

@docs sw, sw_CD, sw_KE, sw_UG


### Ta

@docs ta, ta_LK, ta_MY, ta_SG


### Te

@docs te


### Th

@docs th


### Tk

@docs tk


### Tr

@docs tr, tr_CY


### Uk

@docs uk


### Root

@docs root


### Ur

@docs ur, ur_IN


### Uz

@docs uz, uz_Latn


### Vi

@docs vi


### Yue

@docs yue, yue_Hant


### Zh

@docs zh, zh_Hans, zh_Hans_HK, zh_Hans_MO, zh_Hans_SG, zh_Hant, zh_Hant_HK, zh_Hant_MO


### Zu

@docs zu

-}

import Generated.Alt.Af as Af
import Generated.Alt.Am as Am
import Generated.Alt.Ar as Ar
import Generated.Alt.As as As
import Generated.Alt.Az as Az
import Generated.Alt.Be as Be
import Generated.Alt.Bg as Bg
import Generated.Alt.Bn as Bn
import Generated.Alt.Bs as Bs
import Generated.Alt.Ca as Ca
import Generated.Alt.Cs as Cs
import Generated.Alt.Cy as Cy
import Generated.Alt.Da as Da
import Generated.Alt.De as De
import Generated.Alt.El as El
import Generated.Alt.En as En
import Generated.Alt.Es as Es
import Generated.Alt.Et as Et
import Generated.Alt.Eu as Eu
import Generated.Alt.Fa as Fa
import Generated.Alt.Fi as Fi
import Generated.Alt.Fil as Fil
import Generated.Alt.Fr as Fr
import Generated.Alt.Ga as Ga
import Generated.Alt.Gl as Gl
import Generated.Alt.Gu as Gu
import Generated.Alt.He as He
import Generated.Alt.Hi as Hi
import Generated.Alt.Hr as Hr
import Generated.Alt.Hu as Hu
import Generated.Alt.Hy as Hy
import Generated.Alt.Id as Id
import Generated.Alt.Is as Is
import Generated.Alt.It as It
import Generated.Alt.Ja as Ja
import Generated.Alt.Jv as Jv
import Generated.Alt.Ka as Ka
import Generated.Alt.Kk as Kk
import Generated.Alt.Km as Km
import Generated.Alt.Kn as Kn
import Generated.Alt.Ko as Ko
import Generated.Alt.Ky as Ky
import Generated.Alt.Lo as Lo
import Generated.Alt.Lt as Lt
import Generated.Alt.Lv as Lv
import Generated.Alt.Mk as Mk
import Generated.Alt.Ml as Ml
import Generated.Alt.Mn as Mn
import Generated.Alt.Mr as Mr
import Generated.Alt.Ms as Ms
import Generated.Alt.My as My
import Generated.Alt.Nb as Nb
import Generated.Alt.Ne as Ne
import Generated.Alt.Nl as Nl
import Generated.Alt.Nn as Nn
import Generated.Alt.No as No
import Generated.Alt.Or as Or
import Generated.Alt.Pa as Pa
import Generated.Alt.Pl as Pl
import Generated.Alt.Ps as Ps
import Generated.Alt.Pt as Pt
import Generated.Alt.Ro as Ro
import Generated.Alt.Root as Root
import Generated.Alt.Ru as Ru
import Generated.Alt.Sd as Sd
import Generated.Alt.Si as Si
import Generated.Alt.Sk as Sk
import Generated.Alt.Sl as Sl
import Generated.Alt.So as So
import Generated.Alt.Sq as Sq
import Generated.Alt.Sr as Sr
import Generated.Alt.Sv as Sv
import Generated.Alt.Sw as Sw
import Generated.Alt.Ta as Ta
import Generated.Alt.Te as Te
import Generated.Alt.Th as Th
import Generated.Alt.Tk as Tk
import Generated.Alt.Tr as Tr
import Generated.Alt.Uk as Uk
import Generated.Alt.Ur as Ur
import Generated.Alt.Uz as Uz
import Generated.Alt.Vi as Vi
import Generated.Alt.Yue as Yue
import Generated.Alt.Zh as Zh
import Generated.Alt.Zu as Zu
import Internal.Locale exposing (DateTimeToken(..), LanguageId(..))
import Tagged exposing (Tagged(..))


{-| Represents the locale to use for formatting.

You can parse a value from JS like `navigator.language` or use hardcoded locales.

-}
type alias Locale =
    Internal.Locale.Locale


{-| Get the [Unicode](https://unicode.org/reports/tr35/#Identifiers) representation of a locale.

    toUnicode en_GB
    --> "en-GB"

-}
toUnicode : Locale -> String
toUnicode locale =
    Internal.Locale.toUnicode locale


{-| Parse a `Locale` from a Unicode or BCP47 identifier.

    fromString basicLocales "en"
    --> Just en

    fromString allLocales "en-GB"
    --> Just en_GB

-}
fromString : List Locale -> String -> Maybe Locale
fromString candidateLocales =
    Internal.Locale.languageIdFromString
        >> Maybe.andThen (Internal.Locale.matchNearestLocale candidateLocales)


{-| A list of every locale listed in the JSON version of the CLDR.
-}
allLocales : List Locale
allLocales =
    [ af
    , af_NA
    , am
    , ar
    , ar_AE
    , ar_BH
    , ar_DJ
    , ar_DZ
    , ar_EG
    , ar_EH
    , ar_ER
    , ar_IL
    , ar_IQ
    , ar_JO
    , ar_KM
    , ar_KW
    , ar_LB
    , ar_LY
    , ar_MA
    , ar_MR
    , ar_OM
    , ar_PS
    , ar_QA
    , ar_SA
    , ar_SD
    , ar_SO
    , ar_SS
    , ar_SY
    , ar_TD
    , ar_TN
    , ar_YE
    , locale_as
    , az
    , az_Latn
    , be
    , be_TARASK
    , bg
    , bn
    , bn_IN
    , bs
    , bs_Latn
    , ca
    , ca_AD
    , ca_ES_VALENCIA
    , ca_FR
    , ca_IT
    , cs
    , cy
    , da
    , da_GL
    , de
    , de_AT
    , de_BE
    , de_CH
    , de_IT
    , de_LI
    , de_LU
    , el
    , el_CY
    , en
    , en_001
    , en_150
    , en_AE
    , en_AG
    , en_AI
    , en_AS
    , en_AT
    , en_AU
    , en_BB
    , en_BE
    , en_BI
    , en_BM
    , en_BS
    , en_BW
    , en_BZ
    , en_CA
    , en_CC
    , en_CH
    , en_CK
    , en_CM
    , en_CX
    , en_CY
    , en_DE
    , en_DG
    , en_DK
    , en_DM
    , en_ER
    , en_FI
    , en_FJ
    , en_FK
    , en_FM
    , en_GB
    , en_GD
    , en_GG
    , en_GH
    , en_GI
    , en_GM
    , en_GU
    , en_GY
    , en_HK
    , en_IE
    , en_IL
    , en_IM
    , en_IN
    , en_IO
    , en_JE
    , en_JM
    , en_KE
    , en_KI
    , en_KN
    , en_KY
    , en_LC
    , en_LR
    , en_LS
    , en_MG
    , en_MH
    , en_MO
    , en_MP
    , en_MS
    , en_MT
    , en_MU
    , en_MW
    , en_MY
    , en_NA
    , en_NF
    , en_NG
    , en_NL
    , en_NR
    , en_NU
    , en_NZ
    , en_PG
    , en_PH
    , en_PK
    , en_PN
    , en_PR
    , en_PW
    , en_RW
    , en_SB
    , en_SC
    , en_SD
    , en_SE
    , en_SG
    , en_SH
    , en_SI
    , en_SL
    , en_SS
    , en_SX
    , en_SZ
    , en_TC
    , en_TK
    , en_TO
    , en_TT
    , en_TV
    , en_TZ
    , en_UG
    , en_UM
    , en_VC
    , en_VG
    , en_VI
    , en_VU
    , en_WS
    , en_ZA
    , en_ZM
    , en_ZW
    , es
    , es_419
    , es_AR
    , es_BO
    , es_BR
    , es_BZ
    , es_CL
    , es_CO
    , es_CR
    , es_CU
    , es_DO
    , es_EA
    , es_EC
    , es_GQ
    , es_GT
    , es_HN
    , es_IC
    , es_MX
    , es_NI
    , es_PA
    , es_PE
    , es_PH
    , es_PR
    , es_PY
    , es_SV
    , es_US
    , es_UY
    , es_VE
    , et
    , eu
    , fa
    , fa_AF
    , fi
    , fil
    , fr
    , fr_BE
    , fr_BF
    , fr_BI
    , fr_BJ
    , fr_BL
    , fr_CA
    , fr_CD
    , fr_CF
    , fr_CG
    , fr_CH
    , fr_CI
    , fr_CM
    , fr_DJ
    , fr_DZ
    , fr_GA
    , fr_GF
    , fr_GN
    , fr_GP
    , fr_GQ
    , fr_HT
    , fr_KM
    , fr_LU
    , fr_MA
    , fr_MC
    , fr_MF
    , fr_MG
    , fr_ML
    , fr_MQ
    , fr_MR
    , fr_MU
    , fr_NC
    , fr_NE
    , fr_PF
    , fr_PM
    , fr_RE
    , fr_RW
    , fr_SC
    , fr_SN
    , fr_SY
    , fr_TD
    , fr_TG
    , fr_TN
    , fr_VU
    , fr_WF
    , fr_YT
    , ga
    , ga_GB
    , gl
    , gu
    , he
    , hi
    , hr
    , hr_BA
    , hu
    , hy
    , id
    , is
    , it
    , it_CH
    , it_SM
    , it_VA
    , ja
    , jv
    , ka
    , kk
    , km
    , kn
    , ko
    , ko_KP
    , ky
    , lo
    , lt
    , lv
    , mk
    , ml
    , mn
    , mr
    , ms
    , ms_BN
    , ms_ID
    , ms_SG
    , my
    , nb
    , nb_SJ
    , ne
    , ne_IN
    , nl
    , nl_AW
    , nl_BE
    , nl_BQ
    , nl_CW
    , nl_SR
    , nl_SX
    , nn
    , no
    , or
    , pa
    , pa_Guru
    , pl
    , ps
    , ps_PK
    , pt
    , pt_AO
    , pt_CH
    , pt_CV
    , pt_GQ
    , pt_GW
    , pt_LU
    , pt_MO
    , pt_MZ
    , pt_PT
    , pt_ST
    , pt_TL
    , ro
    , ro_MD
    , ru
    , ru_BY
    , ru_KG
    , ru_KZ
    , ru_MD
    , ru_UA
    , sd
    , sd_Arab
    , si
    , sk
    , sl
    , so
    , so_DJ
    , so_ET
    , so_KE
    , sq
    , sq_MK
    , sq_XK
    , sr
    , sr_Cyrl
    , sr_Cyrl_BA
    , sr_Cyrl_ME
    , sr_Cyrl_XK
    , sr_Latn
    , sr_Latn_BA
    , sr_Latn_ME
    , sr_Latn_XK
    , sv
    , sv_AX
    , sv_FI
    , sw
    , sw_CD
    , sw_KE
    , sw_UG
    , ta
    , ta_LK
    , ta_MY
    , ta_SG
    , te
    , th
    , tk
    , tr
    , tr_CY
    , uk
    , root
    , ur
    , ur_IN
    , uz
    , uz_Latn
    , vi
    , yue
    , yue_Hant
    , zh
    , zh_Hans
    , zh_Hans_HK
    , zh_Hans_MO
    , zh_Hans_SG
    , zh_Hant
    , zh_Hant_HK
    , zh_Hant_MO
    , zu
    ]


{-| A list of every "basic" locale listed in the JSON version of the CLDR.

A "basic" locale is a locale without a region, script, or variant subtag, such as `en` or `ru`.

-}
basicLocales : List Locale
basicLocales =
    [ af
    , am
    , ar
    , locale_as
    , az
    , be
    , bg
    , bn
    , bs
    , ca
    , cs
    , cy
    , da
    , de
    , el
    , en
    , es
    , et
    , eu
    , fa
    , fi
    , fil
    , fr
    , ga
    , gl
    , gu
    , he
    , hi
    , hr
    , hu
    , hy
    , id
    , is
    , it
    , ja
    , jv
    , ka
    , kk
    , km
    , kn
    , ko
    , ky
    , lo
    , lt
    , lv
    , mk
    , ml
    , mn
    , mr
    , ms
    , my
    , nb
    , ne
    , nl
    , nn
    , no
    , or
    , pa
    , pl
    , ps
    , pt
    , ro
    , ru
    , sd
    , si
    , sk
    , sl
    , so
    , sq
    , sr
    , sv
    , sw
    , ta
    , te
    , th
    , tk
    , tr
    , uk
    , root
    , ur
    , uz
    , vi
    , yue
    , zh
    , zu
    ]


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
af : Locale
af =
    Af.af


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
af_NA : Locale
af_NA =
    Af.af_NA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
am : Locale
am =
    Am.am


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar : Locale
ar =
    Ar.ar


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_AE : Locale
ar_AE =
    Ar.ar_AE


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_BH : Locale
ar_BH =
    Ar.ar_BH


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_DJ : Locale
ar_DJ =
    Ar.ar_DJ


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_DZ : Locale
ar_DZ =
    Ar.ar_DZ


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_EG : Locale
ar_EG =
    Ar.ar_EG


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_EH : Locale
ar_EH =
    Ar.ar_EH


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_ER : Locale
ar_ER =
    Ar.ar_ER


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
ar_IL : Locale
ar_IL =
    Ar.ar_IL


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_IQ : Locale
ar_IQ =
    Ar.ar_IQ


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_JO : Locale
ar_JO =
    Ar.ar_JO


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ar_KM : Locale
ar_KM =
    Ar.ar_KM


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_KW : Locale
ar_KW =
    Ar.ar_KW


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_LB : Locale
ar_LB =
    Ar.ar_LB


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_LY : Locale
ar_LY =
    Ar.ar_LY


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ar_MA : Locale
ar_MA =
    Ar.ar_MA


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_MR : Locale
ar_MR =
    Ar.ar_MR


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_OM : Locale
ar_OM =
    Ar.ar_OM


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_PS : Locale
ar_PS =
    Ar.ar_PS


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_QA : Locale
ar_QA =
    Ar.ar_QA


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SA : Locale
ar_SA =
    Ar.ar_SA


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SD : Locale
ar_SD =
    Ar.ar_SD


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SO : Locale
ar_SO =
    Ar.ar_SO


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SS : Locale
ar_SS =
    Ar.ar_SS


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_SY : Locale
ar_SY =
    Ar.ar_SY


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_TD : Locale
ar_TD =
    Ar.ar_TD


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_TN : Locale
ar_TN =
    Ar.ar_TN


{-| Date format strings:

  - Short : d‏/M‏/y
  - Medium : dd‏/MM‏/y
  - Long : d MMMM y
  - Full : EEEE، d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ar_YE : Locale
ar_YE =
    Ar.ar_YE


{-| Date format strings:

  - Short : d-M-y
  - Medium : dd-MM-y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h.mm
  - Medium : a h.mm.ss
  - Long : a h.mm.ss z
  - Full : a h.mm.ss zzzz

-}
locale_as : Locale
locale_as =
    As.locale_as


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
az : Locale
az =
    Az.az


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
az_Latn : Locale
az_Latn =
    Az.az_Latn


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be : Locale
be =
    Be.be


{-| Date format strings:

  - Short : d.MM.yy
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss, zzzz

-}
be_TARASK : Locale
be_TARASK =
    Be.be_TARASK


{-| Date format strings:

  - Short : d.MM.yy 'г'.
  - Medium : d.MM.y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : H:mm 'ч'.
  - Medium : H:mm:ss 'ч'.
  - Long : H:mm:ss 'ч'. z
  - Full : H:mm:ss 'ч'. zzzz

-}
bg : Locale
bg =
    Bg.bg


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn : Locale
bn =
    Bn.bn


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
bn_IN : Locale
bn_IN =
    Bn.bn_IN


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs : Locale
bs =
    Bs.bs


{-| Date format strings:

  - Short : d. M. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
bs_Latn : Locale
bs_Latn =
    Bs.bs_Latn


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca : Locale
ca =
    Ca.ca


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_AD : Locale
ca_AD =
    Ca.ca_AD


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_ES_VALENCIA : Locale
ca_ES_VALENCIA =
    Ca.ca_ES_VALENCIA


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_FR : Locale
ca_FR =
    Ca.ca_FR


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM 'de' y
  - Full : EEEE, d MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
ca_IT : Locale
ca_IT =
    Ca.ca_IT


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
cs : Locale
cs =
    Cs.cs


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
cy : Locale
cy =
    Cy.cy


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da : Locale
da =
    Da.da


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE 'den' d. MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
da_GL : Locale
da_GL =
    Da.da_GL


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de : Locale
de =
    De.de


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_AT : Locale
de_AT =
    De.de_AT


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_BE : Locale
de_BE =
    De.de_BE


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_CH : Locale
de_CH =
    De.de_CH


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_IT : Locale
de_IT =
    De.de_IT


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_LI : Locale
de_LI =
    De.de_LI


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd.MM.y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
de_LU : Locale
de_LU =
    De.de_LU


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el : Locale
el =
    El.el


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
el_CY : Locale
el_CY =
    El.el_CY


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en : Locale
en =
    En.en


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_001 : Locale
en_001 =
    En.en_001


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_150 : Locale
en_150 =
    En.en_150


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AE : Locale
en_AE =
    En.en_AE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AG : Locale
en_AG =
    En.en_AG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_AI : Locale
en_AI =
    En.en_AI


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AS : Locale
en_AS =
    En.en_AS


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_AT : Locale
en_AT =
    En.en_AT


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_AU : Locale
en_AU =
    En.en_AU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BB : Locale
en_BB =
    En.en_BB


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BE : Locale
en_BE =
    En.en_BE


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BI : Locale
en_BI =
    En.en_BI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BM : Locale
en_BM =
    En.en_BM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_BS : Locale
en_BS =
    En.en_BS


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BW : Locale
en_BW =
    En.en_BW


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_BZ : Locale
en_BZ =
    En.en_BZ


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_CA : Locale
en_CA =
    En.en_CA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CC : Locale
en_CC =
    En.en_CC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CH : Locale
en_CH =
    En.en_CH


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CK : Locale
en_CK =
    En.en_CK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CM : Locale
en_CM =
    En.en_CM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_CX : Locale
en_CX =
    En.en_CX


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_CY : Locale
en_CY =
    En.en_CY


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_DE : Locale
en_DE =
    En.en_DE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_DG : Locale
en_DG =
    En.en_DG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
en_DK : Locale
en_DK =
    En.en_DK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_DM : Locale
en_DM =
    En.en_DM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_ER : Locale
en_ER =
    En.en_ER


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
en_FI : Locale
en_FI =
    En.en_FI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_FJ : Locale
en_FJ =
    En.en_FJ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_FK : Locale
en_FK =
    En.en_FK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_FM : Locale
en_FM =
    En.en_FM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GB : Locale
en_GB =
    En.en_GB


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GD : Locale
en_GD =
    En.en_GD


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GG : Locale
en_GG =
    En.en_GG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GH : Locale
en_GH =
    En.en_GH


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_GI : Locale
en_GI =
    En.en_GI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GM : Locale
en_GM =
    En.en_GM


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GU : Locale
en_GU =
    En.en_GU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_GY : Locale
en_GY =
    En.en_GY


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_HK : Locale
en_HK =
    En.en_HK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IE : Locale
en_IE =
    En.en_IE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
en_IL : Locale
en_IL =
    En.en_IL


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IM : Locale
en_IM =
    En.en_IM


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_IN : Locale
en_IN =
    En.en_IN


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_IO : Locale
en_IO =
    En.en_IO


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_JE : Locale
en_JE =
    En.en_JE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_JM : Locale
en_JM =
    En.en_JM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_KE : Locale
en_KE =
    En.en_KE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KI : Locale
en_KI =
    En.en_KI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KN : Locale
en_KN =
    En.en_KN


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_KY : Locale
en_KY =
    En.en_KY


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LC : Locale
en_LC =
    En.en_LC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LR : Locale
en_LR =
    En.en_LR


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_LS : Locale
en_LS =
    En.en_LS


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MG : Locale
en_MG =
    En.en_MG


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MH : Locale
en_MH =
    En.en_MH


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MO : Locale
en_MO =
    En.en_MO


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MP : Locale
en_MP =
    En.en_MP


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MS : Locale
en_MS =
    En.en_MS


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MT : Locale
en_MT =
    En.en_MT


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MU : Locale
en_MU =
    En.en_MU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MW : Locale
en_MW =
    En.en_MW


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_MY : Locale
en_MY =
    En.en_MY


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_NA : Locale
en_NA =
    En.en_NA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NF : Locale
en_NF =
    En.en_NF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NG : Locale
en_NG =
    En.en_NG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NL : Locale
en_NL =
    En.en_NL


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NR : Locale
en_NR =
    En.en_NR


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_NU : Locale
en_NU =
    En.en_NU


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_NZ : Locale
en_NZ =
    En.en_NZ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PG : Locale
en_PG =
    En.en_PG


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PH : Locale
en_PH =
    En.en_PH


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PK : Locale
en_PK =
    En.en_PK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_PN : Locale
en_PN =
    En.en_PN


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PR : Locale
en_PR =
    En.en_PR


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_PW : Locale
en_PW =
    En.en_PW


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_RW : Locale
en_RW =
    En.en_RW


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SB : Locale
en_SB =
    En.en_SB


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SC : Locale
en_SC =
    En.en_SC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SD : Locale
en_SD =
    En.en_SD


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SE : Locale
en_SE =
    En.en_SE


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SG : Locale
en_SG =
    En.en_SG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SH : Locale
en_SH =
    En.en_SH


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SI : Locale
en_SI =
    En.en_SI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SL : Locale
en_SL =
    En.en_SL


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SS : Locale
en_SS =
    En.en_SS


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_SX : Locale
en_SX =
    En.en_SX


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_SZ : Locale
en_SZ =
    En.en_SZ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TC : Locale
en_TC =
    En.en_TC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TK : Locale
en_TK =
    En.en_TK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TO : Locale
en_TO =
    En.en_TO


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_TT : Locale
en_TT =
    En.en_TT


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TV : Locale
en_TV =
    En.en_TV


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_TZ : Locale
en_TZ =
    En.en_TZ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_UG : Locale
en_UG =
    En.en_UG


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_UM : Locale
en_UM =
    En.en_UM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VC : Locale
en_VC =
    En.en_VC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VG : Locale
en_VG =
    En.en_VG


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VI : Locale
en_VI =
    En.en_VI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_VU : Locale
en_VU =
    En.en_VU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_WS : Locale
en_WS =
    En.en_WS


{-| Date format strings:

  - Short : y/MM/dd
  - Medium : dd MMM y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ZA : Locale
en_ZA =
    En.en_ZA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_ZM : Locale
en_ZM =
    En.en_ZM


{-| Date format strings:

  - Short : d/M/y
  - Medium : dd MMM,y
  - Long : dd MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_ZW : Locale
en_ZW =
    En.en_ZW


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es : Locale
es =
    Es.es


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_419 : Locale
es_419 =
    Es.es_419


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_AR : Locale
es_AR =
    Es.es_AR


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BO : Locale
es_BO =
    Es.es_BO


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BR : Locale
es_BR =
    Es.es_BR


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_BZ : Locale
es_BZ =
    Es.es_BZ


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : dd-MM-y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_CL : Locale
es_CL =
    Es.es_CL


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_CO : Locale
es_CO =
    Es.es_CO


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_CR : Locale
es_CR =
    Es.es_CR


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_CU : Locale
es_CU =
    Es.es_CU


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_DO : Locale
es_DO =
    Es.es_DO


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_EA : Locale
es_EA =
    Es.es_EA


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_EC : Locale
es_EC =
    Es.es_EC


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_GQ : Locale
es_GQ =
    Es.es_GQ


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_GT : Locale
es_GT =
    Es.es_GT


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : dd 'de' MMMM 'de' y
  - Full : EEEE dd 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_HN : Locale
es_HN =
    Es.es_HN


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss (zzzz)

-}
es_IC : Locale
es_IC =
    Es.es_IC


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_MX : Locale
es_MX =
    Es.es_MX


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_NI : Locale
es_NI =
    Es.es_NI


{-| Date format strings:

  - Short : MM/dd/yy
  - Medium : MM/dd/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PA : Locale
es_PA =
    Es.es_PA


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_PE : Locale
es_PE =
    Es.es_PE


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PH : Locale
es_PH =
    Es.es_PH


{-| Date format strings:

  - Short : MM/dd/yy
  - Medium : MM/dd/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_PR : Locale
es_PR =
    Es.es_PR


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_PY : Locale
es_PY =
    Es.es_PY


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_SV : Locale
es_SV =
    Es.es_SV


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_US : Locale
es_US =
    Es.es_US


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
es_UY : Locale
es_UY =
    Es.es_UY


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
es_VE : Locale
es_VE =
    Es.es_VE


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
et : Locale
et =
    Et.et


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y('e')'ko' MMM d('a')
  - Long : y('e')'ko' MMMM'ren' d('a')
  - Full : y('e')'ko' MMMM'ren' d('a'), EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
eu : Locale
eu =
    Eu.eu


{-| Date format strings:

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa : Locale
fa =
    Fa.fa


{-| Date format strings:

  - Short : y/M/d
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
fa_AF : Locale
fa_AF =
    Fa.fa_AF


{-| Date format strings:

  - Short : d.M.y
  - Medium : d.M.y
  - Long : d. MMMM y
  - Full : cccc d. MMMM y

Time format strings:

  - Short : H.mm
  - Medium : H.mm.ss
  - Long : H.mm.ss z
  - Full : H.mm.ss zzzz

-}
fi : Locale
fi =
    Fi.fi


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fil : Locale
fil =
    Fil.fil


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr : Locale
fr =
    Fr.fr


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : H 'h' mm 'min' ss 's' zzzz

-}
fr_BE : Locale
fr_BE =
    Fr.fr_BE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BF : Locale
fr_BF =
    Fr.fr_BF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BI : Locale
fr_BI =
    Fr.fr_BI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BJ : Locale
fr_BJ =
    Fr.fr_BJ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_BL : Locale
fr_BL =
    Fr.fr_BL


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH 'h' mm
  - Medium : HH 'h' mm 'min' ss 's'
  - Long : HH 'h' mm 'min' ss 's' z
  - Full : HH 'h' mm 'min' ss 's' zzzz

-}
fr_CA : Locale
fr_CA =
    Fr.fr_CA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CD : Locale
fr_CD =
    Fr.fr_CD


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CF : Locale
fr_CF =
    Fr.fr_CF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CG : Locale
fr_CG =
    Fr.fr_CG


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH.mm:ss 'h' zzzz

-}
fr_CH : Locale
fr_CH =
    Fr.fr_CH


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CI : Locale
fr_CI =
    Fr.fr_CI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_CM : Locale
fr_CM =
    Fr.fr_CM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_DJ : Locale
fr_DJ =
    Fr.fr_DJ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_DZ : Locale
fr_DZ =
    Fr.fr_DZ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GA : Locale
fr_GA =
    Fr.fr_GA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GF : Locale
fr_GF =
    Fr.fr_GF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GN : Locale
fr_GN =
    Fr.fr_GN


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GP : Locale
fr_GP =
    Fr.fr_GP


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_GQ : Locale
fr_GQ =
    Fr.fr_GQ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_HT : Locale
fr_HT =
    Fr.fr_HT


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_KM : Locale
fr_KM =
    Fr.fr_KM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_LU : Locale
fr_LU =
    Fr.fr_LU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MA : Locale
fr_MA =
    Fr.fr_MA


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MC : Locale
fr_MC =
    Fr.fr_MC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MF : Locale
fr_MF =
    Fr.fr_MF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MG : Locale
fr_MG =
    Fr.fr_MG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_ML : Locale
fr_ML =
    Fr.fr_ML


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MQ : Locale
fr_MQ =
    Fr.fr_MQ


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_MR : Locale
fr_MR =
    Fr.fr_MR


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_MU : Locale
fr_MU =
    Fr.fr_MU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_NC : Locale
fr_NC =
    Fr.fr_NC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_NE : Locale
fr_NE =
    Fr.fr_NE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_PF : Locale
fr_PF =
    Fr.fr_PF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_PM : Locale
fr_PM =
    Fr.fr_PM


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_RE : Locale
fr_RE =
    Fr.fr_RE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_RW : Locale
fr_RW =
    Fr.fr_RW


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_SC : Locale
fr_SC =
    Fr.fr_SC


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_SN : Locale
fr_SN =
    Fr.fr_SN


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_SY : Locale
fr_SY =
    Fr.fr_SY


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_TD : Locale
fr_TD =
    Fr.fr_TD


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_TG : Locale
fr_TG =
    Fr.fr_TG


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_TN : Locale
fr_TN =
    Fr.fr_TN


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
fr_VU : Locale
fr_VU =
    Fr.fr_VU


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_WF : Locale
fr_WF =
    Fr.fr_WF


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
fr_YT : Locale
fr_YT =
    Fr.fr_YT


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga : Locale
ga =
    Ga.ga


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ga_GB : Locale
ga_GB =
    Ga.ga_GB


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
gl : Locale
gl =
    Gl.gl


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
gu : Locale
gu =
    Gu.gu


{-| Date format strings:

  - Short : d.M.y
  - Medium : d בMMM y
  - Long : d בMMMM y
  - Full : EEEE, d בMMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
he : Locale
he =
    He.he


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
hi : Locale
hi =
    Hi.hi


{-| Date format strings:

  - Short : dd. MM. y.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr : Locale
hr =
    Hr.hr


{-| Date format strings:

  - Short : d. M. yy.
  - Medium : d. MMM y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss (zzzz)

-}
hr_BA : Locale
hr_BA =
    Hr.hr_BA


{-| Date format strings:

  - Short : y. MM. dd.
  - Medium : y. MMM d.
  - Long : y. MMMM d.
  - Full : y. MMMM d., EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
hu : Locale
hu =
    Hu.hu


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : dd MMM, y թ.
  - Long : dd MMMM, y թ.
  - Full : y թ. MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
hy : Locale
hy =
    Hy.hy


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
id : Locale
id =
    Id.id


{-| Date format strings:

  - Short : d.M.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
is : Locale
is =
    Is.is


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it : Locale
it =
    It.it


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_CH : Locale
it_CH =
    It.it_CH


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_SM : Locale
it_SM =
    It.it_SM


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
it_VA : Locale
it_VA =
    It.it_VA


{-| Date format strings:

  - Short : y/MM/dd
  - Medium : y/MM/dd
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H時mm分ss秒 zzzz

-}
ja : Locale
ja =
    Ja.ja


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
jv : Locale
jv =
    Jv.jv


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM. y
  - Long : d MMMM, y
  - Full : EEEE, dd MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ka : Locale
ka =
    Ka.ka


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y 'ж'. dd MMM
  - Long : y 'ж'. d MMMM
  - Full : y 'ж'. d MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
kk : Locale
kk =
    Kk.kk


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
km : Locale
km =
    Km.km


{-| Date format strings:

  - Short : d/M/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : hh:mm a
  - Medium : hh:mm:ss a
  - Long : hh:mm:ss a z
  - Full : hh:mm:ss a zzzz

-}
kn : Locale
kn =
    Kn.kn


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko : Locale
ko =
    Ko.ko


{-| Date format strings:

  - Short : yy. M. d.
  - Medium : y. M. d.
  - Long : y년 M월 d일
  - Full : y년 M월 d일 EEEE

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h시 m분 s초 z
  - Full : a h시 m분 s초 zzzz

-}
ko_KP : Locale
ko_KP =
    Ko.ko_KP


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y-'ж'., d-MMM
  - Long : y-'ж'., d-MMMM
  - Full : y-'ж'., d-MMMM, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ky : Locale
ky =
    Ky.ky


{-| Date format strings:

  - Short : d/M/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE ທີ d MMMM G y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H ໂມງ m ນາທີ ss ວິນາທີ z
  - Full : H ໂມງ m ນາທີ ss ວິນາທີ zzzz

-}
lo : Locale
lo =
    Lo.lo


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y-MM-dd
  - Long : y 'm'. MMMM d 'd'.
  - Full : y 'm'. MMMM d 'd'., EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lt : Locale
lt =
    Lt.lt


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : y. 'gada' d. MMM
  - Long : y. 'gada' d. MMMM
  - Full : EEEE, y. 'gada' d. MMMM

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
lv : Locale
lv =
    Lv.lv


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d.M.y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
mk : Locale
mk =
    Mk.mk


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y, MMM d
  - Long : y, MMMM d
  - Full : y, MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ml : Locale
ml =
    Ml.ml


{-| Date format strings:

  - Short : y.MM.dd
  - Medium : y 'оны' MMM'ын' d
  - Long : y 'оны' MMMM'ын' d
  - Full : y 'оны' MMMM'ын' d, EEEE 'гараг'

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss (z)
  - Full : HH:mm:ss (zzzz)

-}
mn : Locale
mn =
    Mn.mn


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
mr : Locale
mr =
    Mr.mr


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms : Locale
ms =
    Ms.ms


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : dd MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_BN : Locale
ms_BN =
    Ms.ms_BN


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, dd MMMM y

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
ms_ID : Locale
ms_ID =
    Ms.ms_ID


{-| Date format strings:

  - Short : d/MM/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ms_SG : Locale
ms_SG =
    Ms.ms_SG


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : y- MMM d
  - Long : y- MMMM d
  - Full : y- MMMM d- EEEE

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
my : Locale
my =
    My.my


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb : Locale
nb =
    Nb.nb


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nb_SJ : Locale
nb_SJ =
    Nb.nb_SJ


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ne : Locale
ne =
    Ne.ne


{-| Date format strings:

  - Short : yy/M/d
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ne_IN : Locale
ne_IN =
    Ne.ne_IN


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl : Locale
nl =
    Nl.nl


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_AW : Locale
nl_AW =
    Nl.nl_AW


{-| Date format strings:

  - Short : d/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_BE : Locale
nl_BE =
    Nl.nl_BE


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_BQ : Locale
nl_BQ =
    Nl.nl_BQ


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_CW : Locale
nl_CW =
    Nl.nl_CW


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_SR : Locale
nl_SR =
    Nl.nl_SR


{-| Date format strings:

  - Short : dd-MM-y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
nl_SX : Locale
nl_SX =
    Nl.nl_SX


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : 'kl'. HH:mm:ss zzzz

-}
nn : Locale
nn =
    Nn.nn


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
no : Locale
no =
    No.no


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
or : Locale
or =
    Or.or


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa : Locale
pa =
    Pa.pa


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pa_Guru : Locale
pa_Guru =
    Pa.pa_Guru


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pl : Locale
pl =
    Pl.pl


{-| Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : د y د MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
ps : Locale
ps =
    Ps.ps


{-| Date format strings:

  - Short : y/M/d
  - Medium : y MMM d
  - Long : د y د MMMM d
  - Full : EEEE د y د MMMM d

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ps_PK : Locale
ps_PK =
    Ps.ps_PK


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d 'de' MMM 'de' y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt : Locale
pt =
    Pt.pt


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_AO : Locale
pt_AO =
    Pt.pt_AO


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_CH : Locale
pt_CH =
    Pt.pt_CH


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_CV : Locale
pt_CV =
    Pt.pt_CV


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_GQ : Locale
pt_GQ =
    Pt.pt_GQ


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_GW : Locale
pt_GW =
    Pt.pt_GW


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_LU : Locale
pt_LU =
    Pt.pt_LU


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
pt_MO : Locale
pt_MO =
    Pt.pt_MO


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_MZ : Locale
pt_MZ =
    Pt.pt_MZ


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_PT : Locale
pt_PT =
    Pt.pt_PT


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_ST : Locale
pt_ST =
    Pt.pt_ST


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd/MM/y
  - Long : d 'de' MMMM 'de' y
  - Full : EEEE, d 'de' MMMM 'de' y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
pt_TL : Locale
pt_TL =
    Pt.pt_TL


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ro : Locale
ro =
    Ro.ro


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ro_MD : Locale
ro_MD =
    Ro.ro_MD


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru : Locale
ru =
    Ru.ru


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_BY : Locale
ru_BY =
    Ru.ru_BY


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_KG : Locale
ru_KG =
    Ru.ru_KG


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_KZ : Locale
ru_KZ =
    Ru.ru_KZ


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_MD : Locale
ru_MD =
    Ru.ru_MD


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y 'г'.
  - Long : d MMMM y 'г'.
  - Full : EEEE, d MMMM y 'г'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ru_UA : Locale
ru_UA =
    Ru.ru_UA


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd : Locale
sd =
    Sd.sd


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
sd_Arab : Locale
sd_Arab =
    Sd.sd_Arab


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH.mm
  - Medium : HH.mm.ss
  - Long : HH.mm.ss z
  - Full : HH.mm.ss zzzz

-}
si : Locale
si =
    Si.si


{-| Date format strings:

  - Short : d. M. y
  - Medium : d. M. y
  - Long : d. MMMM y
  - Full : EEEE d. MMMM y

Time format strings:

  - Short : H:mm
  - Medium : H:mm:ss
  - Long : H:mm:ss z
  - Full : H:mm:ss zzzz

-}
sk : Locale
sk =
    Sk.sk


{-| Date format strings:

  - Short : d. MM. yy
  - Medium : d. MMM y
  - Long : d. MMMM y
  - Full : EEEE, d. MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sl : Locale
sl =
    Sl.sl


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so : Locale
so =
    So.so


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so_DJ : Locale
so_DJ =
    So.so_DJ


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
so_ET : Locale
so_ET =
    So.so_ET


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : dd-MMM-y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
so_KE : Locale
so_KE =
    So.so_KE


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a, z
  - Full : h:mm:ss a, zzzz

-}
sq : Locale
sq =
    Sq.sq


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_MK : Locale
sq_MK =
    Sq.sq_MK


{-| Date format strings:

  - Short : d.M.yy
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sq_XK : Locale
sq_XK =
    Sq.sq_XK


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr : Locale
sr =
    Sr.sr


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl : Locale
sr_Cyrl =
    Sr.sr_Cyrl


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_BA : Locale
sr_Cyrl_BA =
    Sr.sr_Cyrl_BA


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_ME : Locale
sr_Cyrl_ME =
    Sr.sr_Cyrl_ME


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Cyrl_XK : Locale
sr_Cyrl_XK =
    Sr.sr_Cyrl_XK


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn : Locale
sr_Latn =
    Sr.sr_Latn


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_BA : Locale
sr_Latn_BA =
    Sr.sr_Latn_BA


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_ME : Locale
sr_Latn_ME =
    Sr.sr_Latn_ME


{-| Date format strings:

  - Short : d.M.yy.
  - Medium : d. M. y.
  - Long : d. MMMM y.
  - Full : EEEE, d. MMMM y.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sr_Latn_XK : Locale
sr_Latn_XK =
    Sr.sr_Latn_XK


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv : Locale
sv =
    Sv.sv


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_AX : Locale
sv_AX =
    Sv.sv_AX


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sv_FI : Locale
sv_FI =
    Sv.sv_FI


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw : Locale
sw =
    Sw.sw


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_CD : Locale
sw_CD =
    Sw.sw_CD


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_KE : Locale
sw_KE =
    Sw.sw_KE


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : EEEE, d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
sw_UG : Locale
sw_UG =
    Sw.sw_UG


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta : Locale
ta =
    Ta.ta


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
ta_LK : Locale
ta_LK =
    Ta.ta_LK


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta_MY : Locale
ta_MY =
    Ta.ta_MY


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : a h:mm
  - Medium : a h:mm:ss
  - Long : a h:mm:ss z
  - Full : a h:mm:ss zzzz

-}
ta_SG : Locale
ta_SG =
    Ta.ta_SG


{-| Date format strings:

  - Short : dd-MM-yy
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : d, MMMM y, EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
te : Locale
te =
    Te.te


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM y
  - Long : d MMMM G y
  - Full : EEEEที่ d MMMM G y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H นาฬิกา mm นาที ss วินาที z
  - Full : H นาฬิกา mm นาที ss วินาที zzzz

-}
th : Locale
th =
    Th.th


{-| Date format strings:

  - Short : dd.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tk : Locale
tk =
    Tk.tk


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
tr : Locale
tr =
    Tr.tr


{-| Date format strings:

  - Short : d.MM.y
  - Medium : d MMM y
  - Long : d MMMM y
  - Full : d MMMM y EEEE

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
tr_CY : Locale
tr_CY =
    Tr.tr_CY


{-| Date format strings:

  - Short : dd.MM.yy
  - Medium : d MMM y 'р'.
  - Long : d MMMM y 'р'.
  - Full : EEEE, d MMMM y 'р'.

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
uk : Locale
uk =
    Uk.uk


{-| Date format strings:

  - Short : y-MM-dd
  - Medium : y MMM d
  - Long : y MMMM d
  - Full : y MMMM d, EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
root : Locale
root =
    Root.root


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur : Locale
ur =
    Ur.ur


{-| Date format strings:

  - Short : d/M/yy
  - Medium : d MMM، y
  - Long : d MMMM، y
  - Full : EEEE، d MMMM، y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
ur_IN : Locale
ur_IN =
    Ur.ur_IN


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz : Locale
uz =
    Uz.uz


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : d-MMM, y
  - Long : d-MMMM, y
  - Full : EEEE, d-MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : H:mm:ss (z)
  - Full : H:mm:ss (zzzz)

-}
uz_Latn : Locale
uz_Latn =
    Uz.uz_Latn


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : d MMM, y
  - Long : d MMMM, y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
vi : Locale
vi =
    Vi.vi


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
yue : Locale
yue =
    Yue.yue


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
yue_Hant : Locale
yue_Hant =
    Yue.yue_Hant


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
zh : Locale
zh =
    Zh.zh


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : z HH:mm:ss
  - Full : zzzz HH:mm:ss

-}
zh_Hans : Locale
zh_Hans =
    Zh.zh_Hans


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_HK : Locale
zh_Hans_HK =
    Zh.zh_Hans_HK


{-| Date format strings:

  - Short : d/M/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_MO : Locale
zh_Hans_MO =
    Zh.zh_Hans_MO


{-| Date format strings:

  - Short : dd/MM/yy
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : z ah:mm:ss
  - Full : zzzz ah:mm:ss

-}
zh_Hans_SG : Locale
zh_Hans_SG =
    Zh.zh_Hans_SG


{-| Date format strings:

  - Short : y/M/d
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日 EEEE

Time format strings:

  - Short : Bh:mm
  - Medium : Bh:mm:ss
  - Long : Bh:mm:ss [z]
  - Full : Bh:mm:ss [zzzz]

-}
zh_Hant : Locale
zh_Hant =
    Zh.zh_Hant


{-| Date format strings:

  - Short : d/M/y
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
zh_Hant_HK : Locale
zh_Hant_HK =
    Zh.zh_Hant_HK


{-| Date format strings:

  - Short : d/M/y
  - Medium : y年M月d日
  - Long : y年M月d日
  - Full : y年M月d日EEEE

Time format strings:

  - Short : ah:mm
  - Medium : ah:mm:ss
  - Long : ah:mm:ss [z]
  - Full : ah:mm:ss [zzzz]

-}
zh_Hant_MO : Locale
zh_Hant_MO =
    Zh.zh_Hant_MO


{-| Date format strings:

  - Short : M/d/yy
  - Medium : MMM d, y
  - Long : MMMM d, y
  - Full : EEEE, MMMM d, y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
zu : Locale
zu =
    Zu.zu
