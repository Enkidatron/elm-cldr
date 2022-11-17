module Cldr.Locale exposing
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
    , en_KE, en_KI, en_KN, en_KY, en_LC, en_LR, en_LS, en_MG, en_MH, en_MO, en_MP, en_MS, en_MT, en_MU, en_MV, en_MW
    , en_MY, en_NA, en_NF, en_NG, en_NL, en_NR, en_NU, en_NZ, en_PG, en_PH, en_PK, en_PN, en_PR, en_PW, en_RW, en_SB
    , en_SC, en_SD, en_SE, en_SG, en_SH, en_SI, en_SL, en_SS, en_SX, en_SZ, en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ
    , en_UG, en_UM, en_VC, en_VG, en_VI, en_VU, en_WS, en_ZA, en_ZM, en_ZW, en_Latn
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

@docs en_KE, en_KI, en_KN, en_KY, en_LC, en_LR, en_LS, en_MG, en_MH, en_MO, en_MP, en_MS, en_MT, en_MU, en_MV, en_MW

@docs en_MY, en_NA, en_NF, en_NG, en_NL, en_NR, en_NU, en_NZ, en_PG, en_PH, en_PK, en_PN, en_PR, en_PW, en_RW, en_SB

@docs en_SC, en_SD, en_SE, en_SG, en_SH, en_SI, en_SL, en_SS, en_SX, en_SZ, en_TC, en_TK, en_TO, en_TT, en_TV, en_TZ

@docs en_UG, en_UM, en_VC, en_VG, en_VI, en_VU, en_WS, en_ZA, en_ZM, en_ZW, en_Latn


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

import Generated.Af
import Generated.Am
import Generated.Ar
import Generated.As
import Generated.Az
import Generated.Be
import Generated.Bg
import Generated.Bn
import Generated.Bs
import Generated.Ca
import Generated.Cs
import Generated.Cy
import Generated.Da
import Generated.De
import Generated.El
import Generated.En
import Generated.Es
import Generated.Et
import Generated.Eu
import Generated.Fa
import Generated.Fi
import Generated.Fil
import Generated.Fr
import Generated.Ga
import Generated.Gl
import Generated.Gu
import Generated.He
import Generated.Hi
import Generated.Hr
import Generated.Hu
import Generated.Hy
import Generated.Id
import Generated.Is
import Generated.It
import Generated.Ja
import Generated.Jv
import Generated.Ka
import Generated.Kk
import Generated.Km
import Generated.Kn
import Generated.Ko
import Generated.Ky
import Generated.Lo
import Generated.Lt
import Generated.Lv
import Generated.Mk
import Generated.Ml
import Generated.Mn
import Generated.Mr
import Generated.Ms
import Generated.My
import Generated.Nb
import Generated.Ne
import Generated.Nl
import Generated.Nn
import Generated.No
import Generated.Or
import Generated.Pa
import Generated.Pl
import Generated.Ps
import Generated.Pt
import Generated.Ro
import Generated.Root
import Generated.Ru
import Generated.Sd
import Generated.Si
import Generated.Sk
import Generated.Sl
import Generated.So
import Generated.Sq
import Generated.Sr
import Generated.Sv
import Generated.Sw
import Generated.Ta
import Generated.Te
import Generated.Th
import Generated.Tk
import Generated.Tr
import Generated.Uk
import Generated.Ur
import Generated.Uz
import Generated.Vi
import Generated.Yue
import Generated.Zh
import Generated.Zu
import Internal.Locale


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
fromString candidateLocales localeString =
    Internal.Locale.languageIdFromString localeString
        |> Maybe.andThen (Internal.Locale.matchNearestLocale candidateLocales)


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
    , en_MV
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
    , en_Latn
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
    Generated.Af.af


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
    Generated.Af.af_NA


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
    Generated.Am.am


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
    Generated.Ar.ar


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
    Generated.Ar.ar_AE


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
    Generated.Ar.ar_BH


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
    Generated.Ar.ar_DJ


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
    Generated.Ar.ar_DZ


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
    Generated.Ar.ar_EG


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
    Generated.Ar.ar_EH


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
    Generated.Ar.ar_ER


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
    Generated.Ar.ar_IL


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
    Generated.Ar.ar_IQ


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
    Generated.Ar.ar_JO


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
    Generated.Ar.ar_KM


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
    Generated.Ar.ar_KW


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
    Generated.Ar.ar_LB


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
    Generated.Ar.ar_LY


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
    Generated.Ar.ar_MA


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
    Generated.Ar.ar_MR


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
    Generated.Ar.ar_OM


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
    Generated.Ar.ar_PS


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
    Generated.Ar.ar_QA


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
    Generated.Ar.ar_SA


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
    Generated.Ar.ar_SD


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
    Generated.Ar.ar_SO


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
    Generated.Ar.ar_SS


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
    Generated.Ar.ar_SY


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
    Generated.Ar.ar_TD


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
    Generated.Ar.ar_TN


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
    Generated.Ar.ar_YE


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
    Generated.As.locale_as


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
    Generated.Az.az


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
    Generated.Az.az_Latn


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
    Generated.Be.be


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
    Generated.Be.be_TARASK


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
    Generated.Bg.bg


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
    Generated.Bn.bn


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
    Generated.Bn.bn_IN


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
    Generated.Bs.bs


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
    Generated.Bs.bs_Latn


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
    Generated.Ca.ca


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
    Generated.Ca.ca_AD


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
    Generated.Ca.ca_ES_VALENCIA


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
    Generated.Ca.ca_FR


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
    Generated.Ca.ca_IT


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
    Generated.Cs.cs


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
    Generated.Cy.cy


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
    Generated.Da.da


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
    Generated.Da.da_GL


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
    Generated.De.de


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
    Generated.De.de_AT


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
    Generated.De.de_BE


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
    Generated.De.de_CH


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
    Generated.De.de_IT


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
    Generated.De.de_LI


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
    Generated.De.de_LU


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
    Generated.El.el


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
    Generated.El.el_CY


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
    Generated.En.en


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
    Generated.En.en_001


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
    Generated.En.en_150


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
    Generated.En.en_AE


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
    Generated.En.en_AG


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
    Generated.En.en_AI


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
    Generated.En.en_AS


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
    Generated.En.en_AT


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
    Generated.En.en_AU


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
    Generated.En.en_BB


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
    Generated.En.en_BE


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
    Generated.En.en_BI


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
    Generated.En.en_BM


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
    Generated.En.en_BS


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
    Generated.En.en_BW


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
    Generated.En.en_BZ


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
    Generated.En.en_CA


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
    Generated.En.en_CC


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
    Generated.En.en_CH


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
    Generated.En.en_CK


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
    Generated.En.en_CM


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
    Generated.En.en_CX


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
    Generated.En.en_CY


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
    Generated.En.en_DE


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
    Generated.En.en_DG


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
    Generated.En.en_DK


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
    Generated.En.en_DM


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
    Generated.En.en_ER


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
    Generated.En.en_FI


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
    Generated.En.en_FJ


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
    Generated.En.en_FK


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
    Generated.En.en_FM


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
    Generated.En.en_GB


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
    Generated.En.en_GD


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
    Generated.En.en_GG


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
    Generated.En.en_GH


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
    Generated.En.en_GI


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
    Generated.En.en_GM


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
    Generated.En.en_GU


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
    Generated.En.en_GY


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
    Generated.En.en_HK


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
    Generated.En.en_IE


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
    Generated.En.en_IL


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
    Generated.En.en_IM


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
    Generated.En.en_IN


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
    Generated.En.en_IO


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
    Generated.En.en_JE


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
    Generated.En.en_JM


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
    Generated.En.en_KE


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
    Generated.En.en_KI


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
    Generated.En.en_KN


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
    Generated.En.en_KY


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
    Generated.En.en_LC


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
    Generated.En.en_LR


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
    Generated.En.en_LS


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
    Generated.En.en_MG


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
    Generated.En.en_MH


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
    Generated.En.en_MO


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
    Generated.En.en_MP


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
    Generated.En.en_MS


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
    Generated.En.en_MT


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
    Generated.En.en_MU


{-| Date format strings:

  - Short : d-M-yy
  - Medium : dd-MM-y
  - Long : d MMMM y
  - Full : EEEE d MMMM y

Time format strings:

  - Short : HH:mm
  - Medium : HH:mm:ss
  - Long : HH:mm:ss z
  - Full : HH:mm:ss zzzz

-}
en_MV : Locale
en_MV =
    Generated.En.en_MV


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
    Generated.En.en_MW


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
    Generated.En.en_MY


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
    Generated.En.en_NA


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
    Generated.En.en_NF


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
    Generated.En.en_NG


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
    Generated.En.en_NL


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
    Generated.En.en_NR


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
    Generated.En.en_NU


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
    Generated.En.en_NZ


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
    Generated.En.en_PG


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
    Generated.En.en_PH


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
    Generated.En.en_PK


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
    Generated.En.en_PN


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
    Generated.En.en_PR


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
    Generated.En.en_PW


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
    Generated.En.en_RW


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
    Generated.En.en_SB


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
    Generated.En.en_SC


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
    Generated.En.en_SD


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
    Generated.En.en_SE


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
    Generated.En.en_SG


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
    Generated.En.en_SH


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
    Generated.En.en_SI


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
    Generated.En.en_SL


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
    Generated.En.en_SS


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
    Generated.En.en_SX


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
    Generated.En.en_SZ


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
    Generated.En.en_TC


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
    Generated.En.en_TK


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
    Generated.En.en_TO


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
    Generated.En.en_TT


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
    Generated.En.en_TV


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
    Generated.En.en_TZ


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
    Generated.En.en_UG


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
    Generated.En.en_UM


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
    Generated.En.en_VC


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
    Generated.En.en_VG


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
    Generated.En.en_VI


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
    Generated.En.en_VU


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
    Generated.En.en_WS


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
    Generated.En.en_ZA


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
    Generated.En.en_ZM


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
    Generated.En.en_ZW


{-| Date format strings:

  - Short : dd/MM/y
  - Medium : dd-MMM-y
  - Long : d MMMM y
  - Full : EEEE, d MMMM, y

Time format strings:

  - Short : h:mm a
  - Medium : h:mm:ss a
  - Long : h:mm:ss a z
  - Full : h:mm:ss a zzzz

-}
en_Latn : Locale
en_Latn =
    Generated.En.en_Latn


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
    Generated.Es.es


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
    Generated.Es.es_419


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
    Generated.Es.es_AR


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
    Generated.Es.es_BO


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
    Generated.Es.es_BR


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
    Generated.Es.es_BZ


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
    Generated.Es.es_CL


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
    Generated.Es.es_CO


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
    Generated.Es.es_CR


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
    Generated.Es.es_CU


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
    Generated.Es.es_DO


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
    Generated.Es.es_EA


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
    Generated.Es.es_EC


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
    Generated.Es.es_GQ


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
    Generated.Es.es_GT


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
    Generated.Es.es_HN


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
    Generated.Es.es_IC


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
    Generated.Es.es_MX


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
    Generated.Es.es_NI


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
    Generated.Es.es_PA


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
    Generated.Es.es_PE


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
    Generated.Es.es_PH


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
    Generated.Es.es_PR


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
    Generated.Es.es_PY


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
    Generated.Es.es_SV


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
    Generated.Es.es_US


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
    Generated.Es.es_UY


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
    Generated.Es.es_VE


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
    Generated.Et.et


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
    Generated.Eu.eu


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
    Generated.Fa.fa


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
    Generated.Fa.fa_AF


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
    Generated.Fi.fi


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
    Generated.Fil.fil


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
    Generated.Fr.fr


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
    Generated.Fr.fr_BE


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
    Generated.Fr.fr_BF


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
    Generated.Fr.fr_BI


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
    Generated.Fr.fr_BJ


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
    Generated.Fr.fr_BL


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
    Generated.Fr.fr_CA


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
    Generated.Fr.fr_CD


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
    Generated.Fr.fr_CF


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
    Generated.Fr.fr_CG


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
    Generated.Fr.fr_CH


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
    Generated.Fr.fr_CI


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
    Generated.Fr.fr_CM


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
    Generated.Fr.fr_DJ


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
    Generated.Fr.fr_DZ


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
    Generated.Fr.fr_GA


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
    Generated.Fr.fr_GF


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
    Generated.Fr.fr_GN


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
    Generated.Fr.fr_GP


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
    Generated.Fr.fr_GQ


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
    Generated.Fr.fr_HT


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
    Generated.Fr.fr_KM


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
    Generated.Fr.fr_LU


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
    Generated.Fr.fr_MA


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
    Generated.Fr.fr_MC


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
    Generated.Fr.fr_MF


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
    Generated.Fr.fr_MG


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
    Generated.Fr.fr_ML


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
    Generated.Fr.fr_MQ


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
    Generated.Fr.fr_MR


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
    Generated.Fr.fr_MU


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
    Generated.Fr.fr_NC


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
    Generated.Fr.fr_NE


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
    Generated.Fr.fr_PF


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
    Generated.Fr.fr_PM


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
    Generated.Fr.fr_RE


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
    Generated.Fr.fr_RW


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
    Generated.Fr.fr_SC


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
    Generated.Fr.fr_SN


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
    Generated.Fr.fr_SY


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
    Generated.Fr.fr_TD


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
    Generated.Fr.fr_TG


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
    Generated.Fr.fr_TN


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
    Generated.Fr.fr_VU


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
    Generated.Fr.fr_WF


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
    Generated.Fr.fr_YT


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
    Generated.Ga.ga


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
    Generated.Ga.ga_GB


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
    Generated.Gl.gl


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
    Generated.Gu.gu


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
    Generated.He.he


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
    Generated.Hi.hi


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
    Generated.Hr.hr


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
    Generated.Hr.hr_BA


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
    Generated.Hu.hu


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
    Generated.Hy.hy


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
    Generated.Id.id


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
    Generated.Is.is


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
    Generated.It.it


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
    Generated.It.it_CH


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
    Generated.It.it_SM


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
    Generated.It.it_VA


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
    Generated.Ja.ja


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
    Generated.Jv.jv


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
    Generated.Ka.ka


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
    Generated.Kk.kk


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
    Generated.Km.km


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
    Generated.Kn.kn


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
    Generated.Ko.ko


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
    Generated.Ko.ko_KP


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
    Generated.Ky.ky


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
    Generated.Lo.lo


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
    Generated.Lt.lt


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
    Generated.Lv.lv


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
    Generated.Mk.mk


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
    Generated.Ml.ml


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
    Generated.Mn.mn


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
    Generated.Mr.mr


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
    Generated.Ms.ms


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
    Generated.Ms.ms_BN


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
    Generated.Ms.ms_ID


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
    Generated.Ms.ms_SG


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
    Generated.My.my


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
    Generated.Nb.nb


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
    Generated.Nb.nb_SJ


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
    Generated.Ne.ne


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
    Generated.Ne.ne_IN


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
    Generated.Nl.nl


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
    Generated.Nl.nl_AW


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
    Generated.Nl.nl_BE


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
    Generated.Nl.nl_BQ


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
    Generated.Nl.nl_CW


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
    Generated.Nl.nl_SR


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
    Generated.Nl.nl_SX


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
    Generated.Nn.nn


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
    Generated.No.no


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
    Generated.Or.or


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
    Generated.Pa.pa


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
    Generated.Pa.pa_Guru


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
    Generated.Pl.pl


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
    Generated.Ps.ps


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
    Generated.Ps.ps_PK


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
    Generated.Pt.pt


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
    Generated.Pt.pt_AO


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
    Generated.Pt.pt_CH


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
    Generated.Pt.pt_CV


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
    Generated.Pt.pt_GQ


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
    Generated.Pt.pt_GW


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
    Generated.Pt.pt_LU


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
    Generated.Pt.pt_MO


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
    Generated.Pt.pt_MZ


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
    Generated.Pt.pt_PT


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
    Generated.Pt.pt_ST


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
    Generated.Pt.pt_TL


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
    Generated.Ro.ro


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
    Generated.Ro.ro_MD


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
    Generated.Ru.ru


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
    Generated.Ru.ru_BY


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
    Generated.Ru.ru_KG


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
    Generated.Ru.ru_KZ


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
    Generated.Ru.ru_MD


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
    Generated.Ru.ru_UA


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
    Generated.Sd.sd


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
    Generated.Sd.sd_Arab


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
    Generated.Si.si


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
    Generated.Sk.sk


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
    Generated.Sl.sl


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
    Generated.So.so


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
    Generated.So.so_DJ


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
    Generated.So.so_ET


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
    Generated.So.so_KE


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
    Generated.Sq.sq


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
    Generated.Sq.sq_MK


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
    Generated.Sq.sq_XK


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
    Generated.Sr.sr


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
    Generated.Sr.sr_Cyrl


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
    Generated.Sr.sr_Cyrl_BA


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
    Generated.Sr.sr_Cyrl_ME


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
    Generated.Sr.sr_Cyrl_XK


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
    Generated.Sr.sr_Latn


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
    Generated.Sr.sr_Latn_BA


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
    Generated.Sr.sr_Latn_ME


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
    Generated.Sr.sr_Latn_XK


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
    Generated.Sv.sv


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
    Generated.Sv.sv_AX


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
    Generated.Sv.sv_FI


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
    Generated.Sw.sw


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
    Generated.Sw.sw_CD


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
    Generated.Sw.sw_KE


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
    Generated.Sw.sw_UG


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
    Generated.Ta.ta


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
    Generated.Ta.ta_LK


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
    Generated.Ta.ta_MY


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
    Generated.Ta.ta_SG


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
    Generated.Te.te


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
    Generated.Th.th


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
    Generated.Tk.tk


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
    Generated.Tr.tr


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
    Generated.Tr.tr_CY


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
    Generated.Uk.uk


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
    Generated.Root.root


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
    Generated.Ur.ur


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
    Generated.Ur.ur_IN


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
    Generated.Uz.uz


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
    Generated.Uz.uz_Latn


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
    Generated.Vi.vi


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
    Generated.Yue.yue


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
    Generated.Yue.yue_Hant


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
    Generated.Zh.zh


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
    Generated.Zh.zh_Hans


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
    Generated.Zh.zh_Hans_HK


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
    Generated.Zh.zh_Hans_MO


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
    Generated.Zh.zh_Hans_SG


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
    Generated.Zh.zh_Hant


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
    Generated.Zh.zh_Hant_HK


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
    Generated.Zh.zh_Hant_MO


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
    Generated.Zu.zu
