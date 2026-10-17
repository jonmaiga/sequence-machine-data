import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A253000: Number of n X 4 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253000, there is no canonical definition to state claims against.
-/

/-! ## A253000.P10670734288597455971

`A253004(A374004(n+1))`
-/

namespace A253000.P10670734288597455971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A374004 (n + 1)).toNat

end

end A253000.P10670734288597455971

/-! ## A253000.P16285834117152135617

`A253004(A052905(n)+9)`
-/

namespace A253000.P16285834117152135617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A052905 n + 9).toNat

end

end A253000.P16285834117152135617

/-! ## A253000.P14707228752075391210

`A253004(A167614(n+2)+1)`
-/

namespace A253000.P14707228752075391210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A167614 (n + 2) + 1).toNat

end

end A253000.P14707228752075391210

/-! ## A253000.P9690677649257097351

`A253004(A034856(n+2)+6)`
-/

namespace A253000.P9690677649257097351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A034856 (n + 2) + 6).toNat

end

end A253000.P9690677649257097351

/-! ## A253000.P14910127379934070039

`A253004(A046691(n+1)+8)`
-/

namespace A253000.P14910127379934070039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A046691 (n + 1) + 8).toNat

end

end A253000.P14910127379934070039

/-!
# A253001: Number of n X 5 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253001, there is no canonical definition to state claims against.
-/

/-! ## A253001.P9517636913901961975

`A253004(A374005(n+1))`
-/

namespace A253001.P9517636913901961975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A374005 (n + 1)).toNat

end

end A253001.P9517636913901961975

/-! ## A253001.P13122592948329558838

`A253004(A167499(n+3))`
-/

namespace A253001.P13122592948329558838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A167499 (n + 3)).toNat

end

end A253001.P13122592948329558838

/-! ## A253001.P9444313366178961620

`A253004(A155212(n)+13)`
-/

namespace A253001.P9444313366178961620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A155212 n + 13).toNat

end

end A253001.P9444313366178961620

/-! ## A253001.P1641605377709316699

`A253004(A046691(n+3))`
-/

namespace A253001.P1641605377709316699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A046691 (n + 3)).toNat

end

end A253001.P1641605377709316699

/-! ## A253001.P10350847712506702508

`A253004(Δ[n²]+A052905(n)+9)`
-/

namespace A253001.P10350847712506702508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A052905 n + 9)).toNat

end

end A253001.P10350847712506702508

/-!
# A253002: Number of nX6 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253002, there is no canonical definition to state claims against.
-/

/-! ## A253002.P17427197670575213728

`A253004(A374007(n+1))`
-/

namespace A253002.P17427197670575213728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A374007 (n + 1)).toNat

end

end A253002.P17427197670575213728

/-! ## A253002.P3954512593595582117

`A253004(A133263(n+5)+4)`
-/

namespace A253002.P3954512593595582117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A133263 (n + 5) + 4).toNat

end

end A253002.P3954512593595582117

/-! ## A253002.P503886510357722886

`A253004(A000217(n+5)+6)`
-/

namespace A253002.P503886510357722886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A000217 (n + 5) + 6).toNat

end

end A253002.P503886510357722886

/-! ## A253002.P2984653636134208600

`A253004(A152948(n+7)+4)`
-/

namespace A253002.P2984653636134208600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A152948 (n + 7) + 4).toNat

end

end A253002.P2984653636134208600

/-! ## A253002.P17404254095759266064

`A253004(A052905(n+2)+11)`
-/

namespace A253002.P17404254095759266064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A052905 (n + 2) + 11).toNat

end

end A253002.P17404254095759266064

/-!
# A253003: Number of nX7 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253003, there is no canonical definition to state claims against.
-/

/-! ## A253003.P16956373808133873310

`A253004(A374008(n+1))`
-/

namespace A253003.P16956373808133873310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A374008 (n + 1)).toNat

end

end A253003.P16956373808133873310

/-! ## A253003.P13880368334397064939

`A253004(A167614(n+5)+4)`
-/

namespace A253003.P13880368334397064939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A167614 (n + 5) + 4).toNat

end

end A253003.P13880368334397064939

/-! ## A253003.P9430439116347639138

`A253004(A000217(n+6)+7)`
-/

namespace A253003.P9430439116347639138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A000217 (n + 6) + 7).toNat

end

end A253003.P9430439116347639138

/-! ## A253003.P5828200320250837728

`A253004(A055999(n+4))`
-/

namespace A253003.P5828200320250837728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A055999 (n + 4)).toNat

end

end A253003.P5828200320250837728

/-! ## A253003.P4122178033390449203

`A253004(A000124(n+7)-7)`
-/

namespace A253003.P4122178033390449203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253004 (A000124 (n + 7) - 7).toNat

end

end A253003.P4122178033390449203

/-!
# A253004: T(n,k) = Number of n X k nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value within 3 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253004, there is no canonical definition to state claims against.
-/

/-! ## A253004.P11123267919077785260

`A253011(n+1)-A113685(A008292(n+1))`
-/

namespace A253004.P11123267919077785260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (n + 1) - A113685 (A008292 (n + 1)).toNat

end

end A253004.P11123267919077785260

/-! ## A253004.P5002922593854315330

`A000523(2^A253011(n+1))`
-/

namespace A253004.P5002922593854315330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253011 (n + 1) : ℤ))).toNat

end

end A253004.P5002922593854315330

/-! ## A253004.P15208115318426034057

`A001222(2^A253011(n+1))`
-/

namespace A253004.P15208115318426034057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253011 (n + 1) : ℤ))).toNat

end

end A253004.P15208115318426034057

/-! ## A253004.P4756924393951294578

`A006577(2^A253011(n+1))`
-/

namespace A253004.P4756924393951294578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253011 (n + 1) : ℤ))).toNat

end

end A253004.P4756924393951294578

/-! ## A253004.P12173316723821187994

`A006666(2^A253011(n+1))`
-/

namespace A253004.P12173316723821187994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A253011 (n + 1) : ℤ))).toNat

end

end A253004.P12173316723821187994

/-!
# A253005: Number of n X n nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253005, there is no canonical definition to state claims against.
-/

/-! ## A253005.P18351179829747157602

`A253011((n+1)²+n²)`
-/

namespace A253005.P18351179829747157602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 ((n + 1) ^ 2 + n ^ 2)

end

end A253005.P18351179829747157602

/-! ## A253005.P13205499928283776260

`A253011(A001844(n))%A264889(n)`
-/

namespace A253005.P13205499928283776260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253011 (A001844 n).toNat) (A264889 n)

end

end A253005.P13205499928283776260

/-! ## A253005.P4088863222487812007

`A011620(n²)*A253011(A001844(n))`
-/

namespace A253005.P4088863222487812007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (n ^ 2) * A253011 (A001844 n).toNat

end

end A253005.P4088863222487812007

/-! ## A253005.P5676324618454735535

`A007318(∑[n+1])+A253011(A001844(n))-1`
-/

namespace A253005.P5676324618454735535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (A253011 (A001844 n).toNat - 1)

end

end A253005.P5676324618454735535

/-! ## A253005.P3046047449246561556

`A001221(2-C(n, n²))*A253011(A001844(n))`
-/

namespace A253005.P3046047449246561556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 - Nat.choose n (n ^ 2)) * A253011 (A001844 n).toNat

end

end A253005.P3046047449246561556

/-!
# A253006: Number of n X 3 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253006, there is no canonical definition to state claims against.
-/

/-! ## A253006.P1334572030009292119

`A253011(∑[n+2]+4)`
-/

namespace A253006.P1334572030009292119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253006.P1334572030009292119

/-! ## A253006.P10311190386600035924

`A178334(n)*A253011(A167614(n+1))`
-/

namespace A253006.P10311190386600035924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A253011 (A167614 (n + 1)).toNat

end

end A253006.P10311190386600035924

/-! ## A253006.P2900156087757210024

`A253011(A167614(n+1))%A002293(n)`
-/

namespace A253006.P2900156087757210024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253011 (A167614 (n + 1)).toNat) (A002293 n)

end

end A253006.P2900156087757210024

/-! ## A253006.P11635637763912391862

`lcm(A043566(n), A253011(A167614(n+1)))`
-/

namespace A253006.P11635637763912391862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043566 n) (A253011 (A167614 (n + 1)).toNat)

end

end A253006.P11635637763912391862

/-! ## A253006.P1921565254092814420

`and(A134824(n), A253011(A167614(n+1)))`
-/

namespace A253006.P1921565254092814420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A253011 (A167614 (n + 1)).toNat)

end

end A253006.P1921565254092814420

/-!
# A253007: Number of n X 4 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253007, there is no canonical definition to state claims against.
-/

/-! ## A253007.P13703395713104302604

`A253011(A374004(n+1))`
-/

namespace A253007.P13703395713104302604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A374004 (n + 1)).toNat

end

end A253007.P13703395713104302604

/-! ## A253007.P1815581306992853981

`A253011(A141214(n)+7)`
-/

namespace A253007.P1815581306992853981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A141214 n + 7).toNat

end

end A253007.P1815581306992853981

/-! ## A253007.P9126454236806449578

`A253011(A052905(n)+9)`
-/

namespace A253007.P9126454236806449578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A052905 n + 9).toNat

end

end A253007.P9126454236806449578

/-! ## A253007.P351195442735658670

`A253011(A055999(n)+10)`
-/

namespace A253007.P351195442735658670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A055999 n + 10).toNat

end

end A253007.P351195442735658670

/-! ## A253007.P11258227399693584241

`A253011(A167614(n+2)+1)`
-/

namespace A253007.P11258227399693584241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A167614 (n + 2) + 1).toNat

end

end A253007.P11258227399693584241

/-!
# A253008: Number of nX5 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253008, there is no canonical definition to state claims against.
-/

/-! ## A253008.P2314672697463226339

`A253011(A374005(n+1))`
-/

namespace A253008.P2314672697463226339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A374005 (n + 1)).toNat

end

end A253008.P2314672697463226339

/-! ## A253008.P12808729715985998241

`A253011(A167499(n+3))`
-/

namespace A253008.P12808729715985998241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A167499 (n + 3)).toNat

end

end A253008.P12808729715985998241

/-! ## A253008.P15690296545722243599

`A253011(A141214(n+1)+8)`
-/

namespace A253008.P15690296545722243599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A141214 (n + 1) + 8).toNat

end

end A253008.P15690296545722243599

/-! ## A253008.P16410143504815606890

`A253011(A034856(n+3)+7)`
-/

namespace A253008.P16410143504815606890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A034856 (n + 3) + 7).toNat

end

end A253008.P16410143504815606890

/-! ## A253008.P12403682368481274391

`A253011(A152947(n+6)+4)`
-/

namespace A253008.P12403682368481274391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A152947 (n + 6) + 4).toNat

end

end A253008.P12403682368481274391

/-!
# A253009: Number of nX6 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253009, there is no canonical definition to state claims against.
-/

/-! ## A253009.P9181543382580083730

`A253011(A374007(n+1))`
-/

namespace A253009.P9181543382580083730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A374007 (n + 1)).toNat

end

end A253009.P9181543382580083730

/-! ## A253009.P17124016947410365720

`A253011(A056115(n)+21)`
-/

namespace A253009.P17124016947410365720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A056115 n + 21).toNat

end

end A253009.P17124016947410365720

/-! ## A253009.P12369163361715227518

`A253011(A000124(n+5)+5)`
-/

namespace A253009.P12369163361715227518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A000124 (n + 5) + 5).toNat

end

end A253009.P12369163361715227518

/-! ## A253009.P7864975069229959574

`A253011(A000217(n+5)+6)`
-/

namespace A253009.P7864975069229959574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A000217 (n + 5) + 6).toNat

end

end A253009.P7864975069229959574

/-! ## A253009.P8334804276742668992

`A253011(A152947(n+7)+5)`
-/

namespace A253009.P8334804276742668992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A152947 (n + 7) + 5).toNat

end

end A253009.P8334804276742668992

/-!
# A253010: Number of nX7 nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 3 and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253010, there is no canonical definition to state claims against.
-/

/-! ## A253010.P15516158042958973756

`A253011(A374008(n+1))`
-/

namespace A253010.P15516158042958973756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A374008 (n + 1)).toNat

end

end A253010.P15516158042958973756

/-! ## A253010.P16009771925222461798

`A253011(A000217(n+6)+7)`
-/

namespace A253010.P16009771925222461798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A000217 (n + 6) + 7).toNat

end

end A253010.P16009771925222461798

/-! ## A253010.P188361529284258469

`A253011(eq[8, A131818(n+1)])`
-/

namespace A253010.P188361529284258469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253010.P188361529284258469

/-! ## A253010.P16241429815975645187

`A253011(A055999(n+4))`
-/

namespace A253010.P16241429815975645187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (A055999 (n + 4)).toNat

end

end A253010.P16241429815975645187

/-! ## A253010.P17742353308292598452

`A253011(eq[6, A193592(n)])`
-/

namespace A253010.P17742353308292598452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253010.P17742353308292598452

/-!
# A253012: a(n) = ceiling( (n+1) * (n+2) / 12).

The programs for A253012, the canonical program `A253012.P14186681981437331744` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253012 has offset 0).

The definition of A253012 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000933, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253012.P14186681981437331744

`A000933(n+5)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253012

/-- `A000933(n+5)` -/
def P14186681981437331744.Spec : Prop :=
  ∀ n, P14186681981437331744.a n = A253012 n

theorem P14186681981437331744.correct : P14186681981437331744.Spec := by
  intro n
  simp only [A253012]

end A253012

/-! ## A253012.P9012768561320941714

`ceil(∑[(n+1)/6])`
-/

namespace A253012.P9012768561320941714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A253012.P9012768561320941714

namespace A253012

/-- `ceil(∑[(n+1)/6])` -/
def P9012768561320941714.Spec : Prop :=
  ∀ n, P9012768561320941714.a n = A253012 n

end A253012

/-! ## A253012.P15613732931289623861

`∑[round(n/3-a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A253012.P15613732931289623861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 - (f1 (n - 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253012.P15613732931289623861

namespace A253012

/-- `∑[round(n/3-a(n-2))]` -/
def P15613732931289623861.Spec : Prop :=
  ∀ n, P15613732931289623861.a n = A253012 n

end A253012

/-! ## A253012.P11834132939918465041

`∑[a(n-3)+∑[n+1]%2]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A253012.P11834132939918465041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) + (∑ j ∈ Finset.range (n + 1), f2 j) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253012.P11834132939918465041

namespace A253012

/-- `∑[a(n-3)+∑[n+1]%2]` -/
def P11834132939918465041.Spec : Prop :=
  ∀ n, (P11834132939918465041.a n : ℤ) = A253012 n

end A253012

/-! ## A253012.P9111132298881792100

`∑[A091972(n)]`
-/

namespace A253012.P9111132298881792100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253012.P9111132298881792100

namespace A253012

/-- `∑[A091972(n)]` -/
def P9111132298881792100.Spec : Prop :=
  ∀ n, P9111132298881792100.a n = A253012 n

end A253012

/-! ## A253012.P3283871353157415796

`floor(A167499(n)/6)`
-/

namespace A253012.P3283871353157415796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167499 n : ℚ) / 6⌋

end

end A253012.P3283871353157415796

namespace A253012

/-- `floor(A167499(n)/6)` -/
def P3283871353157415796.Spec : Prop :=
  ∀ n, P3283871353157415796.a n = A253012 n

end A253012

/-! ## A253012.P5089341927358043958

`A186390(n+1)-n`
-/

namespace A253012.P5089341927358043958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186390 (n + 1) - (n : ℤ)

end

end A253012.P5089341927358043958

namespace A253012

/-- `A186390(n+1)-n` -/
def P5089341927358043958.Spec : Prop :=
  ∀ n, P5089341927358043958.a n = A253012 n

end A253012

/-! ## A253012.P1683094556755984135

`floor(A000096(n)/6)+1`
-/

namespace A253012.P1683094556755984135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000096 n : ℚ) / 6⌋ + 1

end

end A253012.P1683094556755984135

namespace A253012

/-- `floor(A000096(n)/6)+1` -/
def P1683094556755984135.Spec : Prop :=
  ∀ n, P1683094556755984135.a n = A253012 n

end A253012

/-! ## A253012.P11437118392277163216

`A008621(n)+round(n²/12)`
-/

namespace A253012.P11437118392277163216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A253012.P11437118392277163216

namespace A253012

/-- `A008621(n)+round(n²/12)` -/
def P11437118392277163216.Spec : Prop :=
  ∀ n, P11437118392277163216.a n = A253012 n

end A253012

/-! ## A253012.P4223988017626119462

`A008748(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A253012.P4223988017626119462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008748 n - a (n - 2)

end

end A253012.P4223988017626119462

namespace A253012

/-- `A008748(n)-a(n-2)` -/
def P4223988017626119462.Spec : Prop :=
  ∀ n, P4223988017626119462.a n = A253012 n

end A253012

/-! ## A253012.P12769723248102918779

`floor(A301654(n+1)/2)+1`
-/

namespace A253012.P12769723248102918779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A301654 (n + 1) : ℚ) / 2⌋ + 1

end

end A253012.P12769723248102918779

namespace A253012

/-- `floor(A301654(n+1)/2)+1` -/
def P12769723248102918779.Spec : Prop :=
  ∀ n, P12769723248102918779.a n = A253012 n

end A253012

/-! ## A253012.P16885010887236547664

`A004525(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A253012.P16885010887236547664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A004525 n + a (n - 3)

end

end A253012.P16885010887236547664

namespace A253012

/-- `A004525(n)+a(n-3)` -/
def P16885010887236547664.Spec : Prop :=
  ∀ n, P16885010887236547664.a n = A253012 n

end A253012

/-! ## A253012.P91506952353745238

`A049206(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A253012.P91506952353745238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A049206 n + a (n - 3)

end

end A253012.P91506952353745238

namespace A253012

/-- `A049206(n)+a(n-3)` -/
def P91506952353745238.Spec : Prop :=
  ∀ n, P91506952353745238.a n = A253012 n

end A253012

/-! ## A253012.P2297731772555744728

`floor(∑[A000292(n)]/∑[n+1])+1`
-/

namespace A253012.P2297731772555744728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋ + 1

end

end A253012.P2297731772555744728

namespace A253012

/-- `floor(∑[A000292(n)]/∑[n+1])+1` -/
def P2297731772555744728.Spec : Prop :=
  ∀ n, P2297731772555744728.a n = A253012 n

end A253012

/-! ## A253012.P4781699937631919441

`A014591(n)+A002265(n)`
-/

namespace A253012.P4781699937631919441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n + A002265 n

end

end A253012.P4781699937631919441

namespace A253012

/-- `A014591(n)+A002265(n)` -/
def P4781699937631919441.Spec : Prop :=
  ∀ n, P4781699937631919441.a n = A253012 n

end A253012

/-! ## A253012.P7296378351699295864

`A069905(n)+A008621(n)`
-/

namespace A253012.P7296378351699295864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A008621 n

end

end A253012.P7296378351699295864

namespace A253012

/-- `A069905(n)+A008621(n)` -/
def P7296378351699295864.Spec : Prop :=
  ∀ n, P7296378351699295864.a n = A253012 n

end A253012

/-! ## A253012.P1746271541017455314

`A112690(n)+A014679(n)`
-/

namespace A253012.P1746271541017455314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 n + A014679 n

end

end A253012.P1746271541017455314

namespace A253012

/-- `A112690(n)+A014679(n)` -/
def P1746271541017455314.Spec : Prop :=
  ∀ n, P1746271541017455314.a n = A253012 n

end A253012

/-! ## A253012.P1253463670870936204

`A002265(n)+A069905(n)+1`
-/

namespace A253012.P1253463670870936204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (A069905 n + 1)

end

end A253012.P1253463670870936204

namespace A253012

/-- `A002265(n)+A069905(n)+1` -/
def P1253463670870936204.Spec : Prop :=
  ∀ n, P1253463670870936204.a n = A253012 n

end A253012

/-! ## A253012.P14098801305968788871

`A001068(n)+A014591(n)-n`
-/

namespace A253012.P14098801305968788871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n + (A014591 n - (n : ℤ))

end

end A253012.P14098801305968788871

namespace A253012

/-- `A001068(n)+A014591(n)-n` -/
def P14098801305968788871.Spec : Prop :=
  ∀ n, P14098801305968788871.a n = A253012 n

end A253012

/-! ## A253012.P4990393718213530267

`A007980(n)-(A054925(n)+n)`
-/

namespace A253012.P4990393718213530267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - (A054925 n + (n : ℤ))

end

end A253012.P4990393718213530267

namespace A253012

/-- `A007980(n)-(A054925(n)+n)` -/
def P4990393718213530267.Spec : Prop :=
  ∀ n, P4990393718213530267.a n = A253012 n

end A253012

/-!
# A253013: a(n) = number of unlabeled rooted trees on n nodes with an even number of endpoints.

The programs for A253013, there is no canonical definition to state claims against.
-/

/-! ## A253013.P957001602319346248

`∑[A174145(n)]-A253014(n+1)`
-/

namespace A253013.P957001602319346248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253014 (n + 1)

end

end A253013.P957001602319346248

/-! ## A253013.P6302730688709241624

`A000081(n+1)-A253014(n+1)`
-/

namespace A253013.P6302730688709241624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A253014 (n + 1)

end

end A253013.P6302730688709241624

/-! ## A253013.P17649194637640451972

`A038001(Δ[n²])-A253014(n+1)`
-/

namespace A253013.P17649194637640451972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A253014 (n + 1)

end

end A253013.P17649194637640451972

/-! ## A253013.P8135083563982583622

`A033185(A000124(n))-A253014(n+1)`
-/

namespace A253013.P8135083563982583622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000124 n).toNat - A253014 (n + 1)

end

end A253013.P8135083563982583622

/-! ## A253013.P16230232164988413083

`A038001(2*n+1)-A000027(A253014(n+1))`
-/

namespace A253013.P16230232164988413083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 1) - A000027 (A253014 (n + 1)).toNat

end

end A253013.P16230232164988413083

/-!
# A253014: a(n) = number of unlabeled rooted trees on n nodes with an odd number of endpoints.

The programs for A253014, there is no canonical definition to state claims against.
-/

/-! ## A253014.P8761069299720390872

`∑[A174145(n)]-A253013(n+1)`
-/

namespace A253014.P8761069299720390872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A253013 (n + 1)

end

end A253014.P8761069299720390872

/-! ## A253014.P16825842545186537835

`A000081(n+1)-A253013(n+1)`
-/

namespace A253014.P16825842545186537835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A253013 (n + 1)

end

end A253014.P16825842545186537835

/-! ## A253014.P17540544088210391120

`A339067(∑[n]+1)-A253013(n+1)`
-/

namespace A253014.P17540544088210391120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A253013 (n + 1)

end

end A253014.P17540544088210391120

/-! ## A253014.P8002722196313339225

`A038001(2*n+1)-A253013(n+1)`
-/

namespace A253014.P8002722196313339225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (2 * n + 1) - A253013 (n + 1)

end

end A253014.P8002722196313339225

/-! ## A253014.P1156674845096943545

`A033185(A000124(n))-A253013(n+1)`
-/

namespace A253014.P1156674845096943545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (A000124 n).toNat - A253013 (n + 1)

end

end A253014.P1156674845096943545

/-!
# A253016: Numbers k such that 11^phi(k) == 1 (mod k^2), where phi(k) = A000010(k).

The programs for A253016, there is no canonical definition to state claims against.
-/

/-! ## A253016.P13521578866925463299

`A018301(n+1)*A176636(A272263(n))`
-/

namespace A253016.P13521578866925463299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018301 (n + 1) * A176636 (A272263 n).toNat

end

end A253016.P13521578866925463299

/-! ## A253016.P16219301355817186001

`eq[11, A250206(A028310(n))]`
-/

namespace A253016.P16219301355817186001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250206 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253016.P16219301355817186001

/-!
# A253017: Number of (n+2)X(n+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253017, there is no canonical definition to state claims against.
-/

/-! ## A253017.P4816476755585278914

`A253025(∑[4*n]+1)`
-/

namespace A253017.P4816476755585278914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253017.P4816476755585278914

/-! ## A253017.P6259157470674975296

`or(char[2], A253025(A001844(n)))`
-/

namespace A253017.P6259157470674975296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A001844 n).toNat)

end

end A253017.P6259157470674975296

/-! ## A253017.P1699774999843507474

`record[A003982(n)*A253025(n+1)]`
-/

namespace A253017.P1699774999843507474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253017.P1699774999843507474

/-! ## A253017.P8324071436143079059

`record[gcd(A003987(n), A253025(n+1))]`
-/

namespace A253017.P8324071436143079059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253025 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253017.P8324071436143079059

/-! ## A253017.P16288548025017411094

`A253025(A001844(n))+A243833(n)`
-/

namespace A253017.P16288548025017411094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A001844 n).toNat + A243833 n

end

end A253017.P16288548025017411094

/-!
# A253018: Number of (n+2) X (1+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253018, the canonical program `A253018.P1608109280510787202` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253018 has offset 1).

The definition of A253018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253018.P1608109280510787202

`3*a(n-3)` with `a(0)=25, a(1)=37, a(2)=51, a(3)=63, a(4)=105`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253018

/-- `3*a(n-3)` -/
def P1608109280510787202.Spec : Prop :=
  ∀ n, (P1608109280510787202.a n : ℤ) = A253018 (n + 1)

theorem P1608109280510787202.correct : P1608109280510787202.Spec := by
  intro n
  simp only [A253018, Nat.add_sub_cancel]

end A253018

/-! ## A253018.P5373181701116520733

`A253025(∑[n]+1)`
-/

namespace A253018.P5373181701116520733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253018.P5373181701116520733

namespace A253018

/-- `A253025(∑[n]+1)` -/
def P5373181701116520733.Spec : Prop :=
  ∀ n, P5373181701116520733.a n = A253018 (n + 1)

end A253018

/-! ## A253018.P12817524603359703796

`or(1, A253025(C(n+1, 2)+1))`
-/

namespace A253018.P12817524603359703796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253025 (Nat.choose (n + 1) 2 + 1))

end

end A253018.P12817524603359703796

namespace A253018

/-- `or(1, A253025(C(n+1, 2)+1))` -/
def P12817524603359703796.Spec : Prop :=
  ∀ n, P12817524603359703796.a n = A253018 (n + 1)

end A253018

/-! ## A253018.P17677717410503454658

`or(1, A253025(A000124(n)))`
-/

namespace A253018.P17677717410503454658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253025 (A000124 n).toNat)

end

end A253018.P17677717410503454658

namespace A253018

/-- `or(1, A253025(A000124(n)))` -/
def P17677717410503454658.Spec : Prop :=
  ∀ n, P17677717410503454658.a n = A253018 (n + 1)

end A253018

/-! ## A253018.P14055234232522776197

`record[A253025(A056534(n+1))]`
-/

namespace A253018.P14055234232522776197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253018.P14055234232522776197

namespace A253018

/-- `record[A253025(A056534(n+1))]` -/
def P14055234232522776197.Spec : Prop :=
  ∀ n, P14055234232522776197.a n = A253018 (n + 1)

end A253018

/-! ## A253018.P13832029639237553589

`record[A253025(A226387(n+1))]`
-/

namespace A253018.P13832029639237553589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253018.P13832029639237553589

namespace A253018

/-- `record[A253025(A226387(n+1))]` -/
def P13832029639237553589.Spec : Prop :=
  ∀ n, P13832029639237553589.a n = A253018 (n + 1)

end A253018

/-! ## A253018.P10131787695551060372

`record[A253025(A249742(n+1))]`
-/

namespace A253018.P10131787695551060372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253018.P10131787695551060372

namespace A253018

/-- `record[A253025(A249742(n+1))]` -/
def P10131787695551060372.Spec : Prop :=
  ∀ n, P10131787695551060372.a n = A253018 (n + 1)

end A253018

/-! ## A253018.P11965534743373823303

`record[A253025(n+1)/A035607(n)]`
-/

namespace A253018.P11965534743373823303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253025 (n + 1) : ℚ) / (A035607 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253018.P11965534743373823303

namespace A253018

/-- `record[A253025(n+1)/A035607(n)]` -/
def P11965534743373823303.Spec : Prop :=
  ∀ n, P11965534743373823303.a n = (A253018 (n + 1) : ℚ)

end A253018

/-! ## A253018.P3100083178509111010

`record[gcd(A014473(n), A253025(n+1))]`
-/

namespace A253018.P3100083178509111010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A253025 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253018.P3100083178509111010

namespace A253018

/-- `record[gcd(A014473(n), A253025(n+1))]` -/
def P3100083178509111010.Spec : Prop :=
  ∀ n, (P3100083178509111010.a n : ℤ) = A253018 (n + 1)

end A253018

/-! ## A253018.P2233508104840037550

`A253025(C(n+1, 2)+1)%A000032(n+10)`
-/

namespace A253018.P2233508104840037550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253025 (Nat.choose (n + 1) 2 + 1)) (A000032 (n + 10))

end

end A253018.P2233508104840037550

namespace A253018

/-- `A253025(C(n+1, 2)+1)%A000032(n+10)` -/
def P2233508104840037550.Spec : Prop :=
  ∀ n, P2233508104840037550.a n = A253018 (n + 1)

end A253018

/-!
# A253019: Number of (n+2) X (2+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253019, there is no canonical definition to state claims against.
-/

/-! ## A253019.P16440676535171008133

`A253025(∑[n+1]+2)`
-/

namespace A253019.P16440676535171008133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253019.P16440676535171008133

/-! ## A253019.P14825414657630059427

`record[A253025(A133263(abs(1-n)))]`
-/

namespace A253019.P14825414657630059427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253019.P14825414657630059427

/-! ## A253019.P6810911692954025915

`or(char[2], A253025(A133263(n+1)))`
-/

namespace A253019.P6810911692954025915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A133263 (n + 1)).toNat)

end

end A253019.P6810911692954025915

/-! ## A253019.P9634154027686827850

`record[gcd(A238750(n+1), A253025(n+3))]`
-/

namespace A253019.P9634154027686827850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238750 (n + 1)) (A253025 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253019.P9634154027686827850

/-! ## A253019.P10390253749654710230

`A253025(A152948(n+3))*A361338(n)`
-/

namespace A253019.P10390253749654710230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A152948 (n + 3)).toNat * A361338 n

end

end A253019.P10390253749654710230

/-! ## A253019.P6563347240042524887

`lcm(A033999(n), A253025(A133263(n+1)))`
-/

namespace A253019.P6563347240042524887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253025 (A133263 (n + 1)).toNat)

end

end A253019.P6563347240042524887

/-! ## A253019.P17723047886001412861

`record[A253025(A249742(n+1)+A033999(n))]`
-/

namespace A253019.P17723047886001412861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A249742 (n + 1) + A033999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253019.P17723047886001412861

/-! ## A253019.P4208421734861997942

`A033999(2*n)*A253025(A133263(n+1))`
-/

namespace A253019.P4208421734861997942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A253025 (A133263 (n + 1)).toNat

end

end A253019.P4208421734861997942

/-! ## A253019.P5831266053015357599

`A007318(C(3, n))*A253025(A133263(n+1))`
-/

namespace A253019.P5831266053015357599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A253025 (A133263 (n + 1)).toNat

end

end A253019.P5831266053015357599

/-! ## A253019.P4048166636105551577

`A008683(gcd(n, n+1))*A253025(A133263(n+1))`
-/

namespace A253019.P4048166636105551577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A253025 (A133263 (n + 1)).toNat

end

end A253019.P4048166636105551577

/-!
# A253020: Number of (n+2) X (3+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253020, there is no canonical definition to state claims against.
-/

/-! ## A253020.P14988189647160552072

`A253025(∑[n+2]+4)`
-/

namespace A253020.P14988189647160552072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253020.P14988189647160552072

/-! ## A253020.P15973371016953999457

`or(char[1], A253025(A167614(n+1)))`
-/

namespace A253020.P15973371016953999457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A167614 (n + 1)).toNat)

end

end A253020.P15973371016953999457

/-! ## A253020.P6478621108919380877

`or(char[2], A253025(A046691(n)+7))`
-/

namespace A253020.P6478621108919380877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A046691 n + 7).toNat)

end

end A253020.P6478621108919380877

/-! ## A253020.P18113338307298462580

`A253025(A046691(n)+7)+A096268(2*n)`
-/

namespace A253020.P18113338307298462580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A046691 n + 7).toNat + A096268 (2 * n)

end

end A253020.P18113338307298462580

/-! ## A253020.P9104849223755424773

`A253025(A167614(n+1))+A007877(12*n)`
-/

namespace A253020.P9104849223755424773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167614 (n + 1)).toNat + A007877 (12 * n)

end

end A253020.P9104849223755424773

/-! ## A253020.P10227455354331737870

`A253025(A167614(n+1))%A000032(n+10)`
-/

namespace A253020.P10227455354331737870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253025 (A167614 (n + 1)).toNat) (A000032 (n + 10))

end

end A253020.P10227455354331737870

/-! ## A253020.P7268784231897179633

`(A000041(n)%2)!*A253025(A167614(n+1))`
-/

namespace A253020.P7268784231897179633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A253025 (A167614 (n + 1)).toNat

end

end A253020.P7268784231897179633

/-! ## A253020.P3669146755765568739

`A253025(A167614(n+1))+char[A000045(n+16)]`
-/

namespace A253020.P3669146755765568739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 16)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253020.P3669146755765568739

/-! ## A253020.P3054696360890556217

`A253025(A167614(n+1))+A008683(32*(n+1))`
-/

namespace A253020.P3054696360890556217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167614 (n + 1)).toNat + A008683 (32 * (n + 1))

end

end A253020.P3054696360890556217

/-!
# A253021: Number of (n+2) X (4+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253021, there is no canonical definition to state claims against.
-/

/-! ## A253021.P7118495776102244369

`A253025(∑[n+3]+7)`
-/

namespace A253021.P7118495776102244369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253021.P7118495776102244369

/-! ## A253021.P14204821310069199636

`or(char[1], A253025(A052905(n)+9))`
-/

namespace A253021.P14204821310069199636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A052905 n + 9).toNat)

end

end A253021.P14204821310069199636

/-! ## A253021.P906034071050799163

`or(char[1], A253025(A046691(n+1)+8))`
-/

namespace A253021.P906034071050799163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A046691 (n + 1) + 8).toNat)

end

end A253021.P906034071050799163

/-! ## A253021.P11266769631023620516

`A253025(A167614(n+2)+1)+C(n, 64)`
-/

namespace A253021.P11266769631023620516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167614 (n + 2) + 1).toNat + (Nat.choose n 64 : ℤ)

end

end A253021.P11266769631023620516

/-! ## A253021.P3285955394003436319

`lcm((-1)^n, A253025(A000124(n+3)+3))`
-/

namespace A253021.P3285955394003436319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A253025 (A000124 (n + 3) + 3).toNat)

end

end A253021.P3285955394003436319

/-! ## A253021.P15949778232151523412

`A007318(C(2, n))*A253025(A052905(n)+9)`
-/

namespace A253021.P15949778232151523412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253025 (A052905 n + 9).toNat

end

end A253021.P15949778232151523412

/-! ## A253021.P9676452670681805828

`A253025(A052905(n)+9)%A000032(n+10)`
-/

namespace A253021.P9676452670681805828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253025 (A052905 n + 9).toNat) (A000032 (n + 10))

end

end A253021.P9676452670681805828

/-! ## A253021.P701837695045138662

`A000108(and(1, -n))*A253025(A052905(n)+9)`
-/

namespace A253021.P701837695045138662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * A253025 (A052905 n + 9).toNat

end

end A253021.P701837695045138662

/-! ## A253021.P7749178902264180281

`A007318(C(n, 2))*A253025(A000124(n+3)+3)`
-/

namespace A253021.P7749178902264180281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A253025 (A000124 (n + 3) + 3).toNat

end

end A253021.P7749178902264180281

/-! ## A253021.P13615170059958956642

`A007318(C(n, 2))*A253025(A046691(n+1)+8)`
-/

namespace A253021.P13615170059958956642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A253025 (A046691 (n + 1) + 8).toNat

end

end A253021.P13615170059958956642

/-!
# A253022: Number of (n+2)X(5+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253022, there is no canonical definition to state claims against.
-/

/-! ## A253022.P12497538387485084790

`A253025(∑[n+4]+11)`
-/

namespace A253022.P12497538387485084790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253022.P12497538387485084790

/-! ## A253022.P7043639346723250145

`or(char[1], A253025(A167499(n+3)))`
-/

namespace A253022.P7043639346723250145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A167499 (n + 3)).toNat)

end

end A253022.P7043639346723250145

/-! ## A253022.P11106356595040367849

`or(char[1], A253025(A000217(n+4)+5))`
-/

namespace A253022.P11106356595040367849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253025 (A000217 (n + 4) + 5).toNat)

end

end A253022.P11106356595040367849

/-! ## A253022.P11697999502785799232

`A253025(A167499(n+3))^A361338(n)`
-/

namespace A253022.P11697999502785799232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253025 (A167499 (n + 3)).toNat : ℚ) ^ (A361338 n : ℤ)

end

end A253022.P11697999502785799232

/-! ## A253022.P8005529411472058697

`A253025(A167499(n+3))%A254092(n+1)`
-/

namespace A253022.P8005529411472058697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253025 (A167499 (n + 3)).toNat) (A254092 (n + 1))

end

end A253022.P8005529411472058697

/-! ## A253022.P5650392087415578454

`A007318(C(2, n))*A253025(A167499(n+3))`
-/

namespace A253022.P5650392087415578454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253025 (A167499 (n + 3)).toNat

end

end A253022.P5650392087415578454

/-! ## A253022.P4075016599238558999

`A253025(A167499(n+3))+A000007(3*n+2)`
-/

namespace A253022.P4075016599238558999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167499 (n + 3)).toNat + A000007 (3 * n + 2)

end

end A253022.P4075016599238558999

/-! ## A253022.P13293255921873665204

`A014963(9*n+6)*A253025(A167499(n+3))`
-/

namespace A253022.P13293255921873665204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 6) * A253025 (A167499 (n + 3)).toNat

end

end A253022.P13293255921873665204

/-! ## A253022.P4193113824956810753

`A000041(C(2, n+2))*A253025(A167499(n+3))`
-/

namespace A253022.P4193113824956810753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A253025 (A167499 (n + 3)).toNat

end

end A253022.P4193113824956810753

/-! ## A253022.P17321351634763829975

`A007318(C(2, n))*A253025(A000217(n+4)+5)`
-/

namespace A253022.P17321351634763829975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253025 (A000217 (n + 4) + 5).toNat

end

end A253022.P17321351634763829975

/-!
# A253023: Number of (n+2)X(6+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253023, there is no canonical definition to state claims against.
-/

/-! ## A253023.P4344495507623821471

`A253025(A374007(n+1))`
-/

namespace A253023.P4344495507623821471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A374007 (n + 1)).toNat

end

end A253023.P4344495507623821471

/-! ## A253023.P11452503331786866358

`A253025(A166136(n+4))`
-/

namespace A253023.P11452503331786866358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A166136 (n + 4)).toNat

end

end A253023.P11452503331786866358

/-! ## A253023.P16235424608801683015

`A253025(A056115(n)+21)`
-/

namespace A253023.P16235424608801683015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A056115 n + 21).toNat

end

end A253023.P16235424608801683015

/-! ## A253023.P10960254978211084803

`A253025(A167614(n+4)+3)`
-/

namespace A253023.P10960254978211084803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167614 (n + 4) + 3).toNat

end

end A253023.P10960254978211084803

/-! ## A253023.P8520813456431514017

`A253025(A133263(n+5)+4)`
-/

namespace A253023.P8520813456431514017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A133263 (n + 5) + 4).toNat

end

end A253023.P8520813456431514017

/-! ## A253023.P12436687386717881363

`A253025(A000124(n+5)+5)`
-/

namespace A253023.P12436687386717881363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A000124 (n + 5) + 5).toNat

end

end A253023.P12436687386717881363

/-! ## A253023.P4556098517231919135

`A253025(A000096(n+4)+7)`
-/

namespace A253023.P4556098517231919135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A000096 (n + 4) + 7).toNat

end

end A253023.P4556098517231919135

/-! ## A253023.P1937112384532188043

`A253025(A000217(n+5)+6)`
-/

namespace A253023.P1937112384532188043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A000217 (n + 5) + 6).toNat

end

end A253023.P1937112384532188043

/-! ## A253023.P1201381078426918859

`A253025(A027379(n+3)+9)`
-/

namespace A253023.P1201381078426918859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A027379 (n + 3) + 9).toNat

end

end A253023.P1201381078426918859

/-! ## A253023.P4027244508236363087

`A253025(A046691(n+3)+10)`
-/

namespace A253023.P4027244508236363087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A046691 (n + 3) + 10).toNat

end

end A253023.P4027244508236363087

/-!
# A253024: Number of (n+2)X(7+2) 0..3 arrays with every consecutive three elements in every row and column not having exactly two distinct values, and in every diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253024, there is no canonical definition to state claims against.
-/

/-! ## A253024.P11465299847135988402

`A253025(A374008(n+1))`
-/

namespace A253024.P11465299847135988402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A374008 (n + 1)).toNat

end

end A253024.P11465299847135988402

/-! ## A253024.P1171512100216276991

`A253025(A167487(n+5))`
-/

namespace A253024.P1171512100216276991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167487 (n + 5)).toNat

end

end A253024.P1171512100216276991

/-! ## A253024.P16969440274745240929

`A253025(A056119(n)+28)`
-/

namespace A253024.P16969440274745240929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A056119 n + 28).toNat

end

end A253024.P16969440274745240929

/-! ## A253024.P13304606441805472433

`A253025(A166136(n+5)+1)`
-/

namespace A253024.P13304606441805472433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A166136 (n + 5) + 1).toNat

end

end A253024.P13304606441805472433

/-! ## A253024.P5487925661824609721

`A253025(A167499(n+5)+2)`
-/

namespace A253024.P5487925661824609721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167499 (n + 5) + 2).toNat

end

end A253024.P5487925661824609721

/-! ## A253024.P6833801079760440376

`A253025(A167614(n+5)+4)`
-/

namespace A253024.P6833801079760440376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A167614 (n + 5) + 4).toNat

end

end A253024.P6833801079760440376

/-! ## A253024.P15777529442203102710

`A253025(A133263(n+6)+5)`
-/

namespace A253024.P15777529442203102710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A133263 (n + 6) + 5).toNat

end

end A253024.P15777529442203102710

/-! ## A253024.P11899828027439355579

`A253025(A000124(n+6)+6)`
-/

namespace A253024.P11899828027439355579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A000124 (n + 6) + 6).toNat

end

end A253024.P11899828027439355579

/-! ## A253024.P13032309105206284647

`A253025(A000096(n+5)+8)`
-/

namespace A253024.P13032309105206284647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A000096 (n + 5) + 8).toNat

end

end A253024.P13032309105206284647

/-! ## A253024.P5990907401170906817

`A253025(A000217(n+6)+7)`
-/

namespace A253024.P5990907401170906817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253025 (A000217 (n + 6) + 7).toNat

end

end A253024.P5990907401170906817

/-!
# A253026: T(n,k) = Number of n X k nonnegative integer arrays with upper left 0 and lower right its king-move distance away minus 1 and every value within 1 of its king move distance from the upper left and every value increasing by 0 or 1 with every step right, diagonally se or down.

The programs for A253026, there is no canonical definition to state claims against.
-/

/-! ## A253026.P17777846623399759361

`A252829(n+1)-A152716(n)`
-/

namespace A253026.P17777846623399759361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) - A152716 n

end

end A253026.P17777846623399759361

/-! ## A253026.P15248452050866588482

`A252829(n+1)-A144464(n)²`
-/

namespace A253026.P15248452050866588482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) - A144464 n ^ 2

end

end A253026.P15248452050866588482

/-! ## A253026.P11349967865331156763

`A252829(n+1)-4^A004197(n)`
-/

namespace A253026.P11349967865331156763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252829 (n + 1) : ℚ) - (4 : ℚ) ^ (A004197 n : ℤ)

end

end A253026.P11349967865331156763

/-! ## A253026.P14443712913091314819

`A252829(n+1)-4^val(A036561(n), 6)`
-/

namespace A253026.P14443712913091314819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) - (4 ^ SequenceMachineLib.valuation (A036561 n).toNat 6 : ℤ)

end

end A253026.P14443712913091314819

/-! ## A253026.P5637502786372006342

`A252829(n+1)-4^(A003983(n+1)-1)`
-/

namespace A253026.P5637502786372006342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252829 (n + 1) : ℚ) - (4 : ℚ) ^ (A003983 (n + 1) - 1 : ℤ)

end

end A253026.P5637502786372006342

/-! ## A253026.P10313830957167075811

`A252829(n+1)-A000079(A157454(n+1)-1)`
-/

namespace A253026.P10313830957167075811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) - A000079 (A157454 (n + 1) - 1).toNat

end

end A253026.P10313830957167075811

/-! ## A253026.P12366300812485239069

`A252829(n+1)-A122803(A157454(n+1)-1)`
-/

namespace A253026.P12366300812485239069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) - A122803 (A157454 (n + 1) - 1).toNat

end

end A253026.P12366300812485239069

/-! ## A253026.P15302666903399371408

`A252829(n+1)-4^A001222(A152714(n))`
-/

namespace A253026.P15302666903399371408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252829 (n + 1) : ℚ) - (4 : ℚ) ^ (A001222 (A152714 n).toNat : ℤ)

end

end A253026.P15302666903399371408

/-! ## A253026.P18220038471819447594

`A252829(n+1)-A000010(2^A157454(n+1))`
-/

namespace A253026.P18220038471819447594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) - A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A157454 (n + 1) : ℤ))).toNat

end

end A253026.P18220038471819447594

/-! ## A253026.P14243392553483148479

`A252829(n+1)+A001489(A152716(n)+1)+1`
-/

namespace A253026.P14243392553483148479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252829 (n + 1) + (A001489 (A152716 n + 1).toNat + 1)

end

end A253026.P14243392553483148479

/-!
# A253027: Smallest odd number k>1 such that k*2^A000043(n)+1 is a prime number.

The programs for A253027, there is no canonical definition to state claims against.
-/

/-! ## A253027.P9458080632782422252

`A253398(A016027(n+1))`
-/

namespace A253027.P9458080632782422252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253398 (A016027 (n + 1)).toNat

end

end A253027.P9458080632782422252

/-! ## A253027.P4822544251641335436

`A247479(A000043(n+1))`
-/

namespace A253027.P4822544251641335436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (A000043 (n + 1)).toNat

end

end A253027.P4822544251641335436

/-! ## A253027.P9478433849213248935

`A247479(eq[1, A126717(n)])`
-/

namespace A253027.P9478433849213248935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253027.P9478433849213248935

/-! ## A253027.P17840090980311175670

`A247479(lt[A126717(n), 2])`
-/

namespace A253027.P17840090980311175670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126717 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A253027.P17840090980311175670

/-! ## A253027.P4393569409929605835

`A247479(p?[A072226(n+1)])`
-/

namespace A253027.P4393569409929605835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253027.P4393569409929605835

/-!
# A253029: Number of (n+2) X (1+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253029, the canonical program `A253029.P15969757418448034900` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253029 has offset 1).

The definition of A253029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253029.P15969757418448034900

`3*A180036(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253029

/-- `3*A180036(n+3)` -/
def P15969757418448034900.Spec : Prop :=
  ∀ n, P15969757418448034900.a n = A253029 (n + 1)

theorem P15969757418448034900.correct : P15969757418448034900.Spec := by
  intro n
  simp only [A253029, Nat.add_sub_cancel]

end A253029

/-! ## A253029.P11722305184256044735

`9*A180035(n+2)`
-/

namespace A253029.P11722305184256044735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A180035 (n + 2)

end

end A253029.P11722305184256044735

namespace A253029

/-- `9*A180035(n+2)` -/
def P11722305184256044735.Spec : Prop :=
  ∀ n, P11722305184256044735.a n = A253029 (n + 1)

end A253029

/-! ## A253029.P14929407588219733754

`Δ[A106569(n+3)]-A106569(n+3)`
-/

namespace A253029.P14929407588219733754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106569 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A106569 (n + 3)

end

end A253029.P14929407588219733754

namespace A253029

/-- `Δ[A106569(n+3)]-A106569(n+3)` -/
def P14929407588219733754.Spec : Prop :=
  ∀ n, P14929407588219733754.a n = A253029 (n + 1)

end A253029

/-! ## A253029.P649737419309190074

`A180036(n+5)%A180036(n+4)`
-/

namespace A253029.P649737419309190074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180036 (n + 5)) (A180036 (n + 4))

end

end A253029.P649737419309190074

namespace A253029

/-- `A180036(n+5)%A180036(n+4)` -/
def P649737419309190074.Spec : Prop :=
  ∀ n, P649737419309190074.a n = A253029 (n + 1)

end A253029

/-! ## A253029.P2620489978799956088

`lcm(A032741(A137491(n+1)), A180035(n+2))`
-/

namespace A253029.P2620489978799956088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A032741 (A137491 (n + 1)).toNat) (A180035 (n + 2))

end

end A253029.P2620489978799956088

namespace A253029

/-- `lcm(A032741(A137491(n+1)), A180035(n+2))` -/
def P2620489978799956088.Spec : Prop :=
  ∀ n, (P2620489978799956088.a n : ℤ) = A253029 (n + 1)

end A253029

/-!
# A253030: Number of (n+2) X (2+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253030, there is no canonical definition to state claims against.
-/

/-! ## A253030.P16554552775703785659

`A253035(∑[n+1]+2)`
-/

namespace A253030.P16554552775703785659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253030.P16554552775703785659

/-! ## A253030.P3111862707368578810

`lcm(3, A253035(A022856(n+5)))`
-/

namespace A253030.P3111862707368578810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A253035 (A022856 (n + 5)).toNat)

end

end A253030.P3111862707368578810

/-! ## A253030.P10453114968059695120

`record[gcd(A002262(n), A253035(n+2))]`
-/

namespace A253030.P10453114968059695120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253035 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253030.P10453114968059695120

/-! ## A253030.P11289155506335519078

`record[A253035(n+2)/A202006(n+1)]`
-/

namespace A253030.P11289155506335519078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253035 (n + 2) : ℚ) / (A202006 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253030.P11289155506335519078

/-! ## A253030.P1888481006226931845

`record[A253035(abs(A201163(n)))]`
-/

namespace A253030.P1888481006226931845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253030.P1888481006226931845

/-!
# A253031: Number of (n+2)X(3+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253031, there is no canonical definition to state claims against.
-/

/-! ## A253031.P11673413787127576821

`A253035(∑[n+2]+4)`
-/

namespace A253031.P11673413787127576821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253031.P11673413787127576821

/-! ## A253031.P13243247819033656750

`lcm(2, A253035(A167614(n+1)))`
-/

namespace A253031.P13243247819033656750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253035 (A167614 (n + 1)).toNat)

end

end A253031.P13243247819033656750

/-! ## A253031.P16224822897993869863

`A015928(n)*A253035(A167614(n+1))`
-/

namespace A253031.P16224822897993869863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015928 n * A253035 (A167614 (n + 1)).toNat

end

end A253031.P16224822897993869863

/-! ## A253031.P14948091302503364338

`A015930(n)*A253035(A167614(n+1))`
-/

namespace A253031.P14948091302503364338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 n * A253035 (A167614 (n + 1)).toNat

end

end A253031.P14948091302503364338

/-! ## A253031.P10199041351167532858

`A015936(n)*A253035(A167614(n+1))`
-/

namespace A253031.P10199041351167532858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 n * A253035 (A167614 (n + 1)).toNat

end

end A253031.P10199041351167532858

/-!
# A253032: Number of (n+2)X(4+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253032, there is no canonical definition to state claims against.
-/

/-! ## A253032.P121422731501425471

`A253035(∑[n+3]+7)`
-/

namespace A253032.P121422731501425471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253032.P121422731501425471

/-!
# A253033: Number of (n+2)X(5+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253033, there is no canonical definition to state claims against.
-/

/-! ## A253033.P9367348586624503919

`A253035(A155212(n)+13)`
-/

namespace A253033.P9367348586624503919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (A155212 n + 13).toNat

end

end A253033.P9367348586624503919

/-! ## A253033.P6715038035907870887

`A253035(eq[7, A066657(n)])`
-/

namespace A253033.P6715038035907870887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253033.P6715038035907870887

/-! ## A253033.P7652032931208357831

`A253035(Δ[A264443(n)])`
-/

namespace A253033.P7652032931208357831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (f1 (n + 1) - f1 n).toNat

end

end A253033.P7652032931208357831

/-! ## A253033.P17422669150179685701

`A253035(A374005(n+1))`
-/

namespace A253033.P17422669150179685701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (A374005 (n + 1)).toNat

end

end A253033.P17422669150179685701

/-! ## A253033.P1867155285248862823

`A253035(eq[2, A092921(n)])`
-/

namespace A253033.P1867155285248862823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253033.P1867155285248862823

/-!
# A253034: Number of (n+2)X(6+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253034, there is no canonical definition to state claims against.
-/

/-! ## A253034.P7403530671734047576

`A253035(A166136(n+4))`
-/

namespace A253034.P7403530671734047576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (A166136 (n + 4)).toNat

end

end A253034.P7403530671734047576

/-! ## A253034.P9960550149759565108

`A253035(A167499(n+4)+1)`
-/

namespace A253034.P9960550149759565108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (A167499 (n + 4) + 1).toNat

end

end A253034.P9960550149759565108

/-! ## A253034.P15556660643481807781

`A253035(A246172(n+1)+20)`
-/

namespace A253034.P15556660643481807781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (A246172 (n + 1) + 20).toNat

end

end A253034.P15556660643481807781

/-! ## A253034.P12163913305410774260

`A253035(eq[7, A131818(n+1)])`
-/

namespace A253034.P12163913305410774260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253034.P12163913305410774260

/-!
# A253036: Number of (n+2)X(n+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253036, there is no canonical definition to state claims against.
-/

/-! ## A253036.P11111428789015420339

`A253044(∑[4*n]+1)`
-/

namespace A253036.P11111428789015420339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253036.P11111428789015420339

/-! ## A253036.P15242924589218316510

`A253044(A001844(n))+char[12]`
-/

namespace A253036.P15242924589218316510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253036.P15242924589218316510

/-! ## A253036.P4392551979661726768

`record[A003982(n)*A253044(n+1)]`
-/

namespace A253036.P4392551979661726768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A253044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253036.P4392551979661726768

/-! ## A253036.P12943412109883731639

`record[gcd(A003987(n), A253044(n+1))]`
-/

namespace A253036.P12943412109883731639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253044 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253036.P12943412109883731639

/-! ## A253036.P6961408381365652683

`A308975(n)+A253044(A001844(n))`
-/

namespace A253036.P6961408381365652683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A253044 (A001844 n).toNat

end

end A253036.P6961408381365652683

/-!
# A253037: Number of (n+2)X(1+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253037, there is no canonical definition to state claims against.
-/

/-! ## A253037.P5221616219873989776

`A253044(∑[n]+1)`
-/

namespace A253037.P5221616219873989776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253037.P5221616219873989776

/-! ## A253037.P13516107337427494952

`record[A253044(n+1)]`
-/

namespace A253037.P13516107337427494952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253037.P13516107337427494952

/-! ## A253037.P2863623100222418850

`or(char[1], A253044(A000124(n)))`
-/

namespace A253037.P2863623100222418850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253044 (A000124 n).toNat)

end

end A253037.P2863623100222418850

/-! ## A253037.P2633346666851821458

`A253044(A000124(n))%A115427(n+1)`
-/

namespace A253037.P2633346666851821458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253044 (A000124 n).toNat) (A115427 (n + 1))

end

end A253037.P2633346666851821458

/-! ## A253037.P15113020984503830807

`A253044(A000124(n))+A008683(4*(n+1))`
-/

namespace A253037.P15113020984503830807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A000124 n).toNat + A008683 (4 * (n + 1))

end

end A253037.P15113020984503830807

/-!
# A253038: Number of (n+2)X(2+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253038, there is no canonical definition to state claims against.
-/

/-! ## A253038.P5026434508933246776

`A253044(∑[n+1]+2)`
-/

namespace A253038.P5026434508933246776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253038.P5026434508933246776

/-! ## A253038.P12143361250056105525

`A253044(A167499(n)-3)+char[24]`
-/

namespace A253038.P12143361250056105525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A167499 n - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253038.P12143361250056105525

/-! ## A253038.P6265093924182666195

`record[gcd(A002262(n), A253044(n+2))]`
-/

namespace A253038.P6265093924182666195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253044 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253038.P6265093924182666195

/-! ## A253038.P7135284481035462142

`record[gcd(A025581(n), A253044(n+3))]`
-/

namespace A253038.P7135284481035462142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A253044 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253038.P7135284481035462142

/-! ## A253038.P10705691476073729246

`A000041(C(2, n+2))*A253044(A167499(n)-3)`
-/

namespace A253038.P10705691476073729246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A253044 (A167499 n - 3).toNat

end

end A253038.P10705691476073729246

/-!
# A253039: Number of (n+2) X (3+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253039, there is no canonical definition to state claims against.
-/

/-! ## A253039.P4716720674694741278

`A253044(∑[n+2]+4)`
-/

namespace A253039.P4716720674694741278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253039.P4716720674694741278

/-! ## A253039.P9422231197515803926

`A253044(A055998(n)+6)+char[23]`
-/

namespace A253039.P9422231197515803926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253039.P9422231197515803926

/-! ## A253039.P2518761588457015706

`A253044(A167614(n+1))+char[29]`
-/

namespace A253039.P2518761588457015706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253039.P2518761588457015706

/-! ## A253039.P12778323287291668101

`A000108(C(n, 47))*A253044(A055998(n)+6)`
-/

namespace A253039.P12778323287291668101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n 47) * A253044 (A055998 n + 6).toNat

end

end A253039.P12778323287291668101

/-! ## A253039.P13943675101915603083

`A253044(A055998(n)+6)/A000108(C(n, 64)²)`
-/

namespace A253039.P13943675101915603083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253044 (A055998 n + 6).toNat : ℚ) / (A000108 (Nat.choose n 64 ^ 2) : ℚ)

end

end A253039.P13943675101915603083

/-!
# A253040: Number of (n+2)X(4+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253040, there is no canonical definition to state claims against.
-/

/-! ## A253040.P10998136203534531714

`A253044(∑[n+3]+7)`
-/

namespace A253040.P10998136203534531714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253040.P10998136203534531714

/-! ## A253040.P2075746905738440388

`or(char[2], A253044(A052905(n)+9))`
-/

namespace A253040.P2075746905738440388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253044 (A052905 n + 9).toNat)

end

end A253040.P2075746905738440388

/-! ## A253040.P7296101251114518863

`A253044(A000217(n+3)+4)+char[24]`
-/

namespace A253040.P7296101251114518863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253040.P7296101251114518863

/-! ## A253040.P15538732008311454810

`A007318(C(2, n))*A253044(A052905(n)+9)`
-/

namespace A253040.P15538732008311454810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253044 (A052905 n + 9).toNat

end

end A253040.P15538732008311454810

/-! ## A253040.P14349535509685172468

`A014963(A007318(10*n))*A253044(A052905(n)+9)`
-/

namespace A253040.P14349535509685172468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007318 (10 * n)).toNat * A253044 (A052905 n + 9).toNat

end

end A253040.P14349535509685172468

/-!
# A253041: Number of (n+2)X(5+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253041, there is no canonical definition to state claims against.
-/

/-! ## A253041.P15351764608007412152

`A253044(A374005(n+1))`
-/

namespace A253041.P15351764608007412152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A374005 (n + 1)).toNat

end

end A253041.P15351764608007412152

/-! ## A253041.P7164467993125303389

`A253044(A167499(n+3))`
-/

namespace A253041.P7164467993125303389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A167499 (n + 3)).toNat

end

end A253041.P7164467993125303389

/-! ## A253041.P10157954728728090904

`A253044(A155212(n)+13)`
-/

namespace A253041.P10157954728728090904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A155212 n + 13).toNat

end

end A253041.P10157954728728090904

/-! ## A253041.P16636705825697133725

`A253044(A056000(n)+15)`
-/

namespace A253041.P16636705825697133725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A056000 n + 15).toNat

end

end A253041.P16636705825697133725

/-! ## A253041.P1377943169468155181

`A253044(eq[7, A066657(n)])`
-/

namespace A253041.P1377943169468155181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253041.P1377943169468155181

/-!
# A253042: Number of (n+2)X(6+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253042, there is no canonical definition to state claims against.
-/

/-! ## A253042.P16228468704505905242

`A253044(A374007(n+1))`
-/

namespace A253042.P16228468704505905242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A374007 (n + 1)).toNat

end

end A253042.P16228468704505905242

/-! ## A253042.P15118132866478941218

`A253044(A166136(n+4))`
-/

namespace A253042.P15118132866478941218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A166136 (n + 4)).toNat

end

end A253042.P15118132866478941218

/-! ## A253042.P12195902913542477259

`A253044(A056115(n)+21)`
-/

namespace A253042.P12195902913542477259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A056115 n + 21).toNat

end

end A253042.P12195902913542477259

/-! ## A253042.P6053466470289066271

`A253044(A167499(n+4)+1)`
-/

namespace A253042.P6053466470289066271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A167499 (n + 4) + 1).toNat

end

end A253042.P6053466470289066271

/-! ## A253042.P17946273269718344370

`A253044(A077169(n+6)+1)`
-/

namespace A253042.P17946273269718344370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A077169 (n + 6) + 1).toNat

end

end A253042.P17946273269718344370

/-!
# A253043: Number of (n+2)X(7+2) 0..3 arrays with every consecutive three elements in every row, column, diagonal and antidiagonal having exactly two distinct values, and new values 0 upwards introduced in row major order.

The programs for A253043, there is no canonical definition to state claims against.
-/

/-! ## A253043.P14035007139820376035

`A253044(A374008(n+1))`
-/

namespace A253043.P14035007139820376035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A374008 (n + 1)).toNat

end

end A253043.P14035007139820376035

/-! ## A253043.P147058591883784581

`A253044(A056119(n)+28)`
-/

namespace A253043.P147058591883784581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A056119 n + 28).toNat

end

end A253043.P147058591883784581

/-! ## A253043.P15886562781774248566

`A253044(eq[11, A066657(n)])`
-/

namespace A253043.P15886562781774248566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253043.P15886562781774248566

/-! ## A253043.P12860534160205046817

`A253044(A166136(n+5)+1)`
-/

namespace A253043.P12860534160205046817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A166136 (n + 5) + 1).toNat

end

end A253043.P12860534160205046817

/-! ## A253043.P2563897039658145851

`A253044(A167499(n+5)+2)`
-/

namespace A253043.P2563897039658145851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253044 (A167499 (n + 5) + 2).toNat

end

end A253043.P2563897039658145851

/-!
# A253048: List of composite numbers in A098550 which appear immediately after a prime.

The programs for A253048, there is no canonical definition to state claims against.
-/

/-! ## A253048.P8500072097985669435

`filter[A253049(n+1), A374048(#)]`
-/

namespace A253048.P8500072097985669435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374048 (f1 j).toNat = 1) n)

end

end A253048.P8500072097985669435

/-! ## A253048.P14304869887552914071

`filter[A253049(n+1), A283265(#)]`
-/

namespace A253048.P14304869887552914071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A253048.P14304869887552914071

/-! ## A253048.P16644940552107159354

`filter[A253049(n+1), A005171(#)]`
-/

namespace A253048.P16644940552107159354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A253048.P16644940552107159354

/-! ## A253048.P8305145711601401708

`filter[A253049(n+1), A066247(#)]`
-/

namespace A253048.P8305145711601401708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A253048.P8305145711601401708

/-! ## A253048.P12209377626822881978

`filter[A253049(n+1), A267704(#)]`
-/

namespace A253048.P12209377626822881978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267704 (f1 j).toNat = 1) n)

end

end A253048.P12209377626822881978

/-! ## A253048.P10309160693134298742

`filter[A253049(n+1), A267773(#)]`
-/

namespace A253048.P10309160693134298742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267773 (f1 j).toNat = 1) n)

end

end A253048.P10309160693134298742

/-! ## A253048.P17751478709466389037

`filter[A253049(n+1), A285668(#)]`
-/

namespace A253048.P17751478709466389037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285668 (f1 j).toNat = 1) n)

end

end A253048.P17751478709466389037

/-!
# A253049: Numbers in A098550 which appear immediately after a prime.

The programs for A253049, there is no canonical definition to state claims against.
-/

/-! ## A253049.P5856706504450392019

`A098550(A251239(n+1)+1)`
-/

namespace A253049.P5856706504450392019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A251239 (n + 1) + 1).toNat

end

end A253049.P5856706504450392019

/-! ## A253049.P11945163517657672767

`A098550(eq[1, A251140(n+1)]+2)`
-/

namespace A253049.P11945163517657672767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A253049.P11945163517657672767

/-! ## A253049.P4080478676217637140

`A098550(eq[2, A304115(n+1)]+2)`
-/

namespace A253049.P4080478676217637140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A253049.P4080478676217637140

/-! ## A253049.P16234145273385097403

`A098550(record[(n+1)*(2-A251140(n+1))]+1)`
-/

namespace A253049.P16234145273385097403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A251140 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A253049.P16234145273385097403

/-! ## A253049.P15276704731418547272

`A098550(record[A098551(n+2)-A008683(n+2)])`
-/

namespace A253049.P15276704731418547272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (n + 2) - A008683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253049.P15276704731418547272

/-!
# A253050: A252867 read mod 2.

The programs for A253050, there is no canonical definition to state claims against.
-/

/-! ## A253050.P1661744476385987630

`A252867(n)%2`
-/

namespace A253050.P1661744476385987630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252867 n) 2

end

end A253050.P1661744476385987630

/-! ## A253050.P15705873093036946281

`A303596(n)%2`
-/

namespace A253050.P15705873093036946281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303596 n) 2

end

end A253050.P15705873093036946281

/-! ## A253050.P5753362736856795970

`val(A252868(n+1), 2)`
-/

namespace A253050.P5753362736856795970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A252868 (n + 1)).toNat 2

end

end A253050.P5753362736856795970

/-! ## A253050.P8963542881487427656

`char[A372060(2*n+1)]`
-/

namespace A253050.P8963542881487427656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372060 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A253050.P8963542881487427656

/-! ## A253050.P818013380191004151

`1-char[A372060(2*n)]`
-/

namespace A253050.P818013380191004151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372060 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253050.P818013380191004151

/-! ## A253050.P4613480600089466191

`and(A054977(n), A252867(n))`
-/

namespace A253050.P4613480600089466191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A252867 n)

end

end A253050.P4613480600089466191

/-! ## A253050.P8751589103932805212

`and(A057427(n), A252867(n))`
-/

namespace A253050.P8751589103932805212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A252867 n)

end

end A253050.P8751589103932805212

/-! ## A253050.P17095398087814549345

`and(A054977(n), A303596(n))`
-/

namespace A253050.P17095398087814549345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A303596 n)

end

end A253050.P17095398087814549345

/-! ## A253050.P5765165166074234689

`and(A057427(n), A303596(n))`
-/

namespace A253050.P5765165166074234689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A303596 n)

end

end A253050.P5765165166074234689

/-! ## A253050.P3041160384931601598

`A000035(A252867(n))`
-/

namespace A253050.P3041160384931601598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A252867 n).toNat

end

end A253050.P3041160384931601598

/-! ## A253050.P2301752247182601760

`A007877(2*A252867(n))/2`
-/

namespace A253050.P2301752247182601760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007877 (2 * A252867 n).toNat : ℚ) / 2

end

end A253050.P2301752247182601760

/-! ## A253050.P12402629606392569853

`∑{p}[A252868(n+1), A001511(#)-1]`
-/

namespace A253050.P12402629606392569853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A001511 p - 1)

end

end A253050.P12402629606392569853

/-! ## A253050.P767534767054239158

`∑{p}[A252868(n+1), A011782(A049084(#))]%2`
-/

namespace A253050.P767534767054239158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (A049084 p).toNat) 2

end

end A253050.P767534767054239158

/-! ## A253050.P10942731248854853787

`and(A000051(n), A252867(n))`
-/

namespace A253050.P10942731248854853787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A252867 n)

end

end A253050.P10942731248854853787

/-! ## A253050.P8814334589303542056

`and(A082605(n), A252867(n))`
-/

namespace A253050.P8814334589303542056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082605 n) (A252867 n)

end

end A253050.P8814334589303542056

/-! ## A253050.P7784884988965143153

`and(A083318(n), A252867(n))`
-/

namespace A253050.P7784884988965143153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A252867 n)

end

end A253050.P7784884988965143153

/-! ## A253050.P4347315583480956118

`and(A048578(n), A252867(n))`
-/

namespace A253050.P4347315583480956118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A252867 n)

end

end A253050.P4347315583480956118

/-! ## A253050.P2054650521630582378

`and(A157240(n), A252867(n))`
-/

namespace A253050.P2054650521630582378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157240 n) (A252867 n)

end

end A253050.P2054650521630582378

/-! ## A253050.P7090246245298059401

`and(A066827(n+1), A252867(n))`
-/

namespace A253050.P7090246245298059401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066827 (n + 1)) (A252867 n)

end

end A253050.P7090246245298059401

/-! ## A253050.P12471442777309114321

`and(A020737(n), A252867(n))`
-/

namespace A253050.P12471442777309114321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A252867 n)

end

end A253050.P12471442777309114321

/-!
# A253051: A compressed version of A253050 (A252867 mod 2): replace every substring 01 in A253050 with 1, every 001 with 2, every 0001 with 3, every 00001 with 4, etc.

The programs for A253051, there is no canonical definition to state claims against.
-/

/-! ## A253051.P11192604720022853696

`A001222(or(7, A165714(n+9)))`
-/

namespace A253051.P11192604720022853696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 7 (A165714 (n + 9))).toNat

end

end A253051.P11192604720022853696

/-! ## A253051.P8737439468736252896

`A000005(or(7, A165714(n+9)))/2`
-/

namespace A253051.P8737439468736252896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Int.lor 7 (A165714 (n + 9))).toNat : ℚ) / 2

end

end A253051.P8737439468736252896

/-! ## A253051.P7500646970305176742

`∑{e}[or(7, A165714(n+9)), A000005(#)]`
-/

namespace A253051.P7500646970305176742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A165714 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 (Nat.factorization (f1 n).natAbs p)

end

end A253051.P7500646970305176742

/-! ## A253051.P15326438996116637463

`∑{e}[or(7, A165714(n+9)), A005117(#)]`
-/

namespace A253051.P15326438996116637463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A165714 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005117 (Nat.factorization (f1 n).natAbs p)

end

end A253051.P15326438996116637463

/-! ## A253051.P5314714434775884898

`∑{e}[or(7, A165714(n+9)), A020639(#)]`
-/

namespace A253051.P5314714434775884898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A165714 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (Nat.factorization (f1 n).natAbs p)

end

end A253051.P5314714434775884898

/-!
# A253052: If, for some m, A098550(m-2) is a prime p and A098550(m) = 3p, add 3p to the sequence.

The programs for A253052, there is no canonical definition to state claims against.
-/

/-! ## A253052.P12595305925050106842

`filter[A251544(n+1), A079978(#)]`
-/

namespace A253052.P12595305925050106842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A253052.P12595305925050106842

/-! ## A253052.P4141718369615565302

`filter[A251544(n+1), A173857(#)]`
-/

namespace A253052.P4141718369615565302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A253052.P4141718369615565302

/-! ## A253052.P5897059931486998262

`filter[A251544(n+1), A324053(#)]`
-/

namespace A253052.P5897059931486998262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324053 (f1 j).toNat = 1) n)

end

end A253052.P5897059931486998262

/-! ## A253052.P1594500867752353337

`filter[A251544(n+1), A329680(#)]`
-/

namespace A253052.P1594500867752353337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A253052.P1594500867752353337

/-! ## A253052.P15426036522071173811

`filter[A251544(n+2), A359379(#)]`
-/

namespace A253052.P15426036522071173811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359379 (f1 j).toNat = 1) n)

end

end A253052.P15426036522071173811

/-!
# A253053: If, for some m, A098550(m-2) is a prime p and A098550(m) = 5p, add 5p to the sequence.

The programs for A253053, there is no canonical definition to state claims against.
-/

/-! ## A253053.P3415382013224972017

`filter[A251544(n+1), A079998(#)]`
-/

namespace A253053.P3415382013224972017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A253053.P3415382013224972017

/-! ## A253053.P496809149576324500

`filter[A251545(n+1), A079998(#)]`
-/

namespace A253053.P496809149576324500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A253053.P496809149576324500

/-! ## A253053.P7457792227749002275

`∩[A001750(n+1), A251545(n+1)]`
-/

namespace A253053.P7457792227749002275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253053.P7457792227749002275

/-! ## A253053.P10213315000441724092

`∩[A161835(n+1), A251545(n+1)]`
-/

namespace A253053.P10213315000441724092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253053.P10213315000441724092

/-! ## A253053.P1836204672440018852

`∩[A063149(n+1), A251545(n+1)]`
-/

namespace A253053.P1836204672440018852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253053.P1836204672440018852

/-!
# A253054: If, for some m, A098550(m-2) is a prime p and A098550(m) = 7p, add 7p to the sequence.

The programs for A253054, there is no canonical definition to state claims against.
-/

/-! ## A253054.P17711084019226059163

`A248647(A105958(n+2))`
-/

namespace A253054.P17711084019226059163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248647 (A105958 (n + 2)).toNat

end

end A253054.P17711084019226059163

/-! ## A253054.P9563058303032505121

`A248647(A217394(n+2))`
-/

namespace A253054.P9563058303032505121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248647 (A217394 (n + 2)).toNat

end

end A253054.P9563058303032505121

/-! ## A253054.P13665485933984776155

`A248647(A319678(n+2))`
-/

namespace A253054.P13665485933984776155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248647 (A319678 (n + 2)).toNat

end

end A253054.P13665485933984776155

/-!
# A253056: A253055, sorted.

The programs for A253056, there is no canonical definition to state claims against.
-/

/-! ## A253056.P12651635039223115210

`lt[A106683(A250120(n+2)), A217670(n)]`
-/

namespace A253056.P12651635039223115210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A250120 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253056.P12651635039223115210

/-! ## A253056.P4615346260896924858

`lt[A000040(A110738(n+1)), A217670(n)]`
-/

namespace A253056.P4615346260896924858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A110738 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253056.P4615346260896924858

/-! ## A253056.P7506416410977823763

`lt[A117888(n+1), A217670(n)]`
-/

namespace A253056.P7506416410977823763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253056.P7506416410977823763

/-! ## A253056.P7651873391019767151

`∩[A005381(2*n+1), comp[A260113(n+1)]]`
-/

namespace A253056.P7651873391019767151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A253056.P7651873391019767151

/-! ## A253056.P15598155079608153520

`lt[A290394((n+1)/2^val(n+1, 2)), A217670(n)]`
-/

namespace A253056.P15598155079608153520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253056.P15598155079608153520

/-!
# A253060: Indices of 0's in Ehrenfeucht-Mycielski sequence A038219.

The programs for A253060, there is no canonical definition to state claims against.
-/

/-! ## A253060.P14491361355565871420

`eq[0, A038219(n+1)]+1`
-/

namespace A253060.P14491361355565871420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253060.P14491361355565871420

/-! ## A253060.P17003237493145109752

`record[n+1-A029886(n)*A038219(n+1)]`
-/

namespace A253060.P17003237493145109752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A029886 n * A038219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253060.P17003237493145109752

/-! ## A253060.P2554006056618636189

`record[n+1-A038219(n+1)*A153152(n)]`
-/

namespace A253060.P2554006056618636189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A038219 (n + 1) * A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253060.P2554006056618636189

/-! ## A253060.P16836227566709327919

`eq[1, A007061(n+1)]+1`
-/

namespace A253060.P16836227566709327919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253060.P16836227566709327919

/-! ## A253060.P2598525249457692514

`record[n+1-A007368(n)*A038219(n+1)]`
-/

namespace A253060.P2598525249457692514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007368 n * A038219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253060.P2598525249457692514

/-!
# A253061: Indices of 1's in Ehrenfeucht-Mycielski sequence A038219.

The programs for A253061, there is no canonical definition to state claims against.
-/

/-! ## A253061.P16635746402703434177

`eq[1, A038219(n+1)]+1`
-/

namespace A253061.P16635746402703434177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A253061.P16635746402703434177

/-! ## A253061.P4185069544973525666

`record[(n+1)*A038219(n+2)+1]`
-/

namespace A253061.P4185069544973525666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038219 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253061.P4185069544973525666

/-! ## A253061.P3707226330366857655

`A020725(eq[1, A038219(n+1)])`
-/

namespace A253061.P3707226330366857655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253061.P3707226330366857655

/-! ## A253061.P14356470601272167657

`filter[A133398(n+1), A038219(#)]`
-/

namespace A253061.P14356470601272167657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038219 (f1 j).toNat = 1) n)

end

end A253061.P14356470601272167657

/-! ## A253061.P11089603285231595785

`filter[n+1, A038219(#)]`
-/

namespace A253061.P11089603285231595785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038219 (f1 j) = 1) n)

end

end A253061.P11089603285231595785

/-! ## A253061.P7913357916963645942

`lt[1, A007061(n+1)]+1`
-/

namespace A253061.P7913357916963645942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A253061.P7913357916963645942

/-! ## A253061.P18231411996570138739

`A020725(eq[2, A007061(n+1)])`
-/

namespace A253061.P18231411996570138739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253061.P18231411996570138739

/-! ## A253061.P16957154312570016327

`eq[3, A006530(a(A007061(n)))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A253061.P16957154312570016327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  A006530 (f2 (A007061 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253061.P16957154312570016327

/-! ## A253061.P3094327424473507429

`eq[1, A007061(a(A007061(n)))]` with `a(0)=3, a(1)=6, a(2)=1`
-/

namespace A253061.P3094327424473507429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 1] fun n f2 =>
  A007061 (f2 (A007061 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A253061.P3094327424473507429

/-!
# A253062: Largest order of a rooted tree that does not contain a rooted caterpillar subtree of order n.

The programs for A253062, the canonical program `A253062.P9378358428103636899` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253062 has offset 1).

The definition of A253062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253062.P9378358428103636899

`a(n-1)+3*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7, a(6)=11, a(7)=16, a(8)=23, a(9)=34`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253062

/-- `a(n-1)+3*a(n-3)-3*a(n-4)` -/
def P9378358428103636899.Spec : Prop :=
  ∀ n, P9378358428103636899.a n = A253062 (n + 1)

theorem P9378358428103636899.correct : P9378358428103636899.Spec := by
  intro n
  simp only [A253062, Nat.add_sub_cancel]

end A253062

/-! ## A253062.P13926416270711157827

`or(4-3*(1-a(n-3)), A000035(n+1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A253062.P13926416270711157827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  Int.lor (4 - 3 * (1 - a (n - 3))) (A000035 (n + 1))

end

end A253062.P13926416270711157827

namespace A253062

/-- `or(4-3*(1-a(n-3)), A000035(n+1))` -/
def P13926416270711157827.Spec : Prop :=
  ∀ n, P13926416270711157827.a n = A253062 (n + 1)

end A253062

/-! ## A253062.P7827499846000026372

`floor(A239288(n+2)/3)`
-/

namespace A253062.P7827499846000026372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239288 (n + 2) : ℚ) / 3⌋

end

end A253062.P7827499846000026372

namespace A253062

/-- `floor(A239288(n+2)/3)` -/
def P7827499846000026372.Spec : Prop :=
  ∀ n, P7827499846000026372.a n = A253062 (n + 1)

end A253062

/-! ## A253062.P10570700077771531114

`A002264(A239288(n+2))`
-/

namespace A253062.P10570700077771531114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A239288 (n + 2)).toNat

end

end A253062.P10570700077771531114

namespace A253062

/-- `A002264(A239288(n+2))` -/
def P10570700077771531114.Spec : Prop :=
  ∀ n, P10570700077771531114.a n = A253062 (n + 1)

end A253062

/-! ## A253062.P13758948528228138011

`∑{e}[A003945(n), A239288(#)]`
-/

namespace A253062.P13758948528228138011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A239288 (Nat.factorization (f1 n).natAbs p)

end

end A253062.P13758948528228138011

namespace A253062

/-- `∑{e}[A003945(n), A239288(#)]` -/
def P13758948528228138011.Spec : Prop :=
  ∀ n, P13758948528228138011.a n = A253062 (n + 1)

end A253062

/-!
# A253063: Largest order of a tree that does not contain a caterpillar subtree of order n.

The programs for A253063, there is no canonical definition to state claims against.
-/

/-! ## A253063.P13392862190519372779

`∑[A008881(A196241(n+1)+1)]+n`
-/

namespace A253063.P13392862190519372779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008881 (A196241 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A253063.P13392862190519372779

/-! ## A253063.P17605465340060700429

`record[A117409(n+4)-A329040(2*n+5)]`
-/

namespace A253063.P17605465340060700429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117409 (n + 4) - A329040 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253063.P17605465340060700429

/-! ## A253063.P18236076108103365438

`A000009(n+3)-A105202(A371097(n+5))`
-/

namespace A253063.P18236076108103365438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 3) - A105202 (A371097 (n + 5)).toNat

end

end A253063.P18236076108103365438

/-! ## A253063.P15809812244839344029

`A111133(n+3)-A295662(A230355(2*(n+1)))`
-/

namespace A253063.P15809812244839344029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (n + 3) - A295662 (A230355 (2 * (n + 1))).toNat

end

end A253063.P15809812244839344029

/-! ## A253063.P17173218989842223910

`A000009(n+3)-A326620(A350593(3*n+2))`
-/

namespace A253063.P17173218989842223910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 3) - A326620 (A350593 (3 * n + 2)).toNat

end

end A253063.P17173218989842223910

/-!
# A253064: Number of odd terms in f^n, where f = 1/x + 1 + x + y.

The programs for A253064, the canonical program `A253064.P4301545185855528044` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253064 has offset 0).

The definition of A253064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253064.P8230254928222959477

`A001316(n)*A245564(n)`
-/

namespace A253064.P8230254928222959477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A245564 n

end

end A253064.P8230254928222959477

namespace A253064

/-- `A001316(n)*A245564(n)` -/
def P8230254928222959477.Spec : Prop :=
  ∀ n, P8230254928222959477.a n = A253064 n

end A253064

/-! ## A253064.P4301545185855528044

`∏{e}[A278222(n), A087206(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253064

/-- `∏{e}[A278222(n), A087206(#)]` -/
def P4301545185855528044.Spec : Prop :=
  ∀ n, P4301545185855528044.a n = A253064 n

theorem P4301545185855528044.correct : P4301545185855528044.Spec := by
  intro n
  simp only [A253064]

end A253064

/-! ## A253064.P5046598321695926254

`(A038573(n)+1)*A245564(n)`
-/

namespace A253064.P5046598321695926254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038573 n + 1) * A245564 n

end

end A253064.P5046598321695926254

namespace A253064

/-- `(A038573(n)+1)*A245564(n)` -/
def P5046598321695926254.Spec : Prop :=
  ∀ n, P5046598321695926254.a n = A253064 n

end A253064

/-! ## A253064.P10750390493430074240

`A060632(2*n)*A245564(n)`
-/

namespace A253064.P10750390493430074240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) * A245564 n

end

end A253064.P10750390493430074240

namespace A253064

/-- `A060632(2*n)*A245564(n)` -/
def P10750390493430074240.Spec : Prop :=
  ∀ n, P10750390493430074240.a n = A253064 n

end A253064

/-! ## A253064.P4470760158888351484

`A000079(A000120(n))*A245564(n)`
-/

namespace A253064.P4470760158888351484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 n).toNat * A245564 n

end

end A253064.P4470760158888351484

namespace A253064

/-- `A000079(A000120(n))*A245564(n)` -/
def P4470760158888351484.Spec : Prop :=
  ∀ n, P4470760158888351484.a n = A253064 n

end A253064

/-! ## A253064.P11384219286963384646

`A062383(A038573(n))*A245564(n)`
-/

namespace A253064.P11384219286963384646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A038573 n).toNat * A245564 n

end

end A253064.P11384219286963384646

namespace A253064

/-- `A062383(A038573(n))*A245564(n)` -/
def P11384219286963384646.Spec : Prop :=
  ∀ n, P11384219286963384646.a n = A253064 n

end A253064

/-! ## A253064.P13868274755540338776

`∏{e}[A005940(n+1), A087206(#)]`
-/

namespace A253064.P13868274755540338776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A087206 (Nat.factorization (f1 n).natAbs p)

end

end A253064.P13868274755540338776

namespace A253064

/-- `∏{e}[A005940(n+1), A087206(#)]` -/
def P13868274755540338776.Spec : Prop :=
  ∀ n, P13868274755540338776.a n = A253064 n

end A253064

/-! ## A253064.P12518102549256497301

`A245564(A048678(n))*A245564(n)`
-/

namespace A253064.P12518102549256497301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A048678 n).toNat * A245564 n

end

end A253064.P12518102549256497301

namespace A253064

/-- `A245564(A048678(n))*A245564(n)` -/
def P12518102549256497301.Spec : Prop :=
  ∀ n, P12518102549256497301.a n = A253064 n

end A253064

/-! ## A253064.P12617323540161957765

`A255486(A048678(n))`
-/

namespace A253064.P12617323540161957765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (A048678 n).toNat

end

end A253064.P12617323540161957765

namespace A253064

/-- `A255486(A048678(n))` -/
def P12617323540161957765.Spec : Prop :=
  ∀ n, P12617323540161957765.a n = A253064 n

end A253064

/-! ## A253064.P1324231331344868120

`A255486(A124108(n)/2)`
-/

namespace A253064.P1324231331344868120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A253064.P1324231331344868120

namespace A253064

/-- `A255486(A124108(n)/2)` -/
def P1324231331344868120.Spec : Prop :=
  ∀ n, P1324231331344868120.a n = A253064 n

end A253064

/-! ## A253064.P16807036366926695233

`A255486(A000695(n))`
-/

namespace A253064.P16807036366926695233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (A000695 n).toNat

end

end A253064.P16807036366926695233

namespace A253064

/-- `A255486(A000695(n))` -/
def P16807036366926695233.Spec : Prop :=
  ∀ n, P16807036366926695233.a n = A253064 n

end A253064

/-! ## A253064.P13845955561251568289

`A255486(A212591(n+1))`
-/

namespace A253064.P13845955561251568289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (A212591 (n + 1)).toNat

end

end A253064.P13845955561251568289

namespace A253064

/-- `A255486(A212591(n+1))` -/
def P13845955561251568289.Spec : Prop :=
  ∀ n, P13845955561251568289.a n = A253064 n

end A253064

/-! ## A253064.P9623562496357711539

`A255486(A062880(n)/2)`
-/

namespace A253064.P9623562496357711539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (SequenceMachineLib.roundAway ((A062880 n : ℚ) / 2)).toNat

end

end A253064.P9623562496357711539

namespace A253064

/-- `A255486(A062880(n)/2)` -/
def P9623562496357711539.Spec : Prop :=
  ∀ n, P9623562496357711539.a n = A253064 n

end A253064

/-! ## A253064.P16868460863021246660

`A255486(A001196(n)/3)`
-/

namespace A253064.P16868460863021246660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (SequenceMachineLib.roundAway ((A001196 n : ℚ) / 3)).toNat

end

end A253064.P16868460863021246660

namespace A253064

/-- `A255486(A001196(n)/3)` -/
def P16868460863021246660.Spec : Prop :=
  ∀ n, P16868460863021246660.a n = A253064 n

end A253064

/-! ## A253064.P13500009305652719577

`A255486(A124108(n))`
-/

namespace A253064.P13500009305652719577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255486 (A124108 n).toNat

end

end A253064.P13500009305652719577

namespace A253064

/-- `A255486(A124108(n))` -/
def P13500009305652719577.Spec : Prop :=
  ∀ n, P13500009305652719577.a n = A253064 n

end A253064

/-!
# A253065: Number of odd terms in f^n, where f = 1+x+x^2+x^2*y+x^2/y.

The programs for A253065, there is no canonical definition to state claims against.
-/

/-! ## A253065.P12868055840751260656

`∏{e}[A278222(n), A253067(#)]`
-/

namespace A253065.P12868055840751260656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253067 (Nat.factorization (f1 n).natAbs p)

end

end A253065.P12868055840751260656

/-! ## A253065.P4348294099408883269

`∏{e}[A005940(n+1), A253067(#)]`
-/

namespace A253065.P4348294099408883269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253067 (Nat.factorization (f1 n).natAbs p)

end

end A253065.P4348294099408883269

/-! ## A253065.P1906258598764408794

`A229997(A269626(n)*A278222(n))`
-/

namespace A253065.P1906258598764408794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (A269626 n * A278222 n).toNat

end

end A253065.P1906258598764408794

/-! ## A253065.P3964759050523590321

`A229997(A278222(n)^A238015(n))`
-/

namespace A253065.P3964759050523590321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (SequenceMachineLib.roundAway ((A278222 n : ℚ) ^ (A238015 n : ℤ))).toNat

end

end A253065.P3964759050523590321

/-! ## A253065.P17283625979679610677

`A229997(A278222(n)^A269626(n))`
-/

namespace A253065.P17283625979679610677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229997 (SequenceMachineLib.roundAway ((A278222 n : ℚ) ^ (A269626 n : ℤ))).toNat

end

end A253065.P17283625979679610677

/-!
# A253066: Number of odd terms in f^n, where f = 1/x+1+x+1/y+y/x+x*y.

The programs for A253066, the canonical program `A253066.P15660487724644072707` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253066 has offset 0).

The definition of A253066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253066.P15660487724644072707

`∏{e}[A278222(n), A253068(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253066

/-- `∏{e}[A278222(n), A253068(#)]` -/
def P15660487724644072707.Spec : Prop :=
  ∀ n, P15660487724644072707.a n = A253066 n

theorem P15660487724644072707.correct : P15660487724644072707.Spec := by
  intro n
  simp only [A253066]

end A253066

/-! ## A253066.P11101851659947862267

`∏{e}[A005940(n+1), A253068(#)]`
-/

namespace A253066.P11101851659947862267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253068 (Nat.factorization (f1 n).natAbs p)

end

end A253066.P11101851659947862267

namespace A253066

/-- `∏{e}[A005940(n+1), A253068(#)]` -/
def P11101851659947862267.Spec : Prop :=
  ∀ n, P11101851659947862267.a n = A253066 n

end A253066

/-!
# A253067: The subsequence A253065(2^n-1).

The programs for A253067, there is no canonical definition to state claims against.
-/

/-! ## A253067.P17397392049106847136

`A253065(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253067.P17397392049106847136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253065 (2 ^ n - 1)

end

end A253067.P17397392049106847136

/-! ## A253067.P8005189898205179966

`record[A253065(A173787(n))]`
-/

namespace A253067.P8005189898205179966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253065 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253067.P8005189898205179966

/-! ## A253067.P7951857455633458920

`record[A253065(A232751(n))]`
-/

namespace A253067.P7951857455633458920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253065 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253067.P7951857455633458920

/-! ## A253067.P14789501283928527879

`or(1, A253065(A000225(n)))`
-/

namespace A253067.P14789501283928527879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253065 (A000225 n).toNat)

end

end A253067.P14789501283928527879

/-! ## A253067.P7903585396512530007

`record[A253065(A023758(n+1))]`
-/

namespace A253067.P7903585396512530007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253065 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253067.P7903585396512530007

/-!
# A253068: The subsequence A253066(2^n-1).

The programs for A253068, the canonical program `A253068.P7764544809538959361` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253068 has offset 0).

The definition of A253068 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253068.P7764544809538959361

`((-2)^n+4^(2+n)-8)/9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A253068

/-- `((-2)^n+4^(2+n)-8)/9` -/
def P7764544809538959361.Spec : Prop :=
  ∀ n, P7764544809538959361.a n = (A253068 n : ℚ)

end A253068

/-! ## A253068.P3361829179983815661

`A253066(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253068.P3361829179983815661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253066 (2 ^ n - 1)

end

end A253068.P3361829179983815661

namespace A253068

/-- `A253066(2^n-1)` -/
def P3361829179983815661.Spec : Prop :=
  ∀ n, P3361829179983815661.a n = A253068 n

end A253068

/-! ## A253068.P8940975694324462021

`∑[2*(4^n-a(n-1))]` with `a(0)=1, a(1)=5`
-/

namespace A253068.P8940975694324462021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * ((4 ^ n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253068.P8940975694324462021

namespace A253068

/-- `∑[2*(4^n-a(n-1))]` -/
def P8940975694324462021.Spec : Prop :=
  ∀ n, P8940975694324462021.a n = A253068 n

end A253068

/-! ## A253068.P18134372668508261437

`A140966(n)+or(1, 4*a(n-1))` with `a(0)=1`
-/

namespace A253068.P18134372668508261437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140966 n + Int.lor 1 (4 * a (n - 1))

end

end A253068.P18134372668508261437

namespace A253068

/-- `A140966(n)+or(1, 4*a(n-1))` -/
def P18134372668508261437.Spec : Prop :=
  ∀ n, P18134372668508261437.a n = A253068 n

end A253068

/-! ## A253068.P11435643136950856498

`floor(∑[2^(n-1)*A001045(n+3)])`
-/

namespace A253068.P11435643136950856498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001045 (n + 3) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A253068.P11435643136950856498

namespace A253068

/-- `floor(∑[2^(n-1)*A001045(n+3)])` -/
def P11435643136950856498.Spec : Prop :=
  ∀ n, P11435643136950856498.a n = A253068 n

end A253068

/-! ## A253068.P8472195566369160029

`A083420(n)-A084175(n)`
-/

namespace A253068.P8472195566369160029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n - A084175 n

end

end A253068.P8472195566369160029

namespace A253068

/-- `A083420(n)-A084175(n)` -/
def P8472195566369160029.Spec : Prop :=
  ∀ n, P8472195566369160029.a n = A253068 n

end A253068

/-! ## A253068.P737776447282887072

`record[A084181(n)]-A084175(n)`
-/

namespace A253068.P737776447282887072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A084175 n

end

end A253068.P737776447282887072

namespace A253068

/-- `record[A084181(n)]-A084175(n)` -/
def P737776447282887072.Spec : Prop :=
  ∀ n, P737776447282887072.a n = A253068 n

end A253068

/-! ## A253068.P4714953117485788403

`A080675(n+1)-A255471(n)`
-/

namespace A253068.P4714953117485788403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080675 (n + 1) - A255471 n

end

end A253068.P4714953117485788403

namespace A253068

/-- `A080675(n+1)-A255471(n)` -/
def P4714953117485788403.Spec : Prop :=
  ∀ n, P4714953117485788403.a n = A253068 n

end A253068

/-! ## A253068.P10227209115251927761

`A084181(2*n)-A084175(n)`
-/

namespace A253068.P10227209115251927761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 (2 * n) - A084175 n

end

end A253068.P10227209115251927761

namespace A253068

/-- `A084181(2*n)-A084175(n)` -/
def P10227209115251927761.Spec : Prop :=
  ∀ n, P10227209115251927761.a n = A253068 n

end A253068

/-! ## A253068.P12314421042174037177

`A077925(n)²+A246036(n)-1`
-/

namespace A253068.P12314421042174037177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n ^ 2 + (A246036 n - 1)

end

end A253068.P12314421042174037177

namespace A253068

/-- `A077925(n)²+A246036(n)-1` -/
def P12314421042174037177.Spec : Prop :=
  ∀ n, P12314421042174037177.a n = A253068 n

end A253068

/-! ## A253068.P7522956121156420722

`A000225(2*n+1)-A084175(n)`
-/

namespace A253068.P7522956121156420722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) - A084175 n

end

end A253068.P7522956121156420722

namespace A253068

/-- `A000225(2*n+1)-A084175(n)` -/
def P7522956121156420722.Spec : Prop :=
  ∀ n, P7522956121156420722.a n = A253068 n

end A253068

/-! ## A253068.P15471423360316932425

`A077925(n+1)²+A122803(n)-1`
-/

namespace A253068.P15471423360316932425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n + 1) ^ 2 + (A122803 n - 1)

end

end A253068.P15471423360316932425

namespace A253068

/-- `A077925(n+1)²+A122803(n)-1` -/
def P15471423360316932425.Spec : Prop :=
  ∀ n, P15471423360316932425.a n = A253068 n

end A253068

/-! ## A253068.P5973737839437663729

`∑[A001045(n+3)*A131577(n)]+1`
-/

namespace A253068.P5973737839437663729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 3) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253068.P5973737839437663729

namespace A253068

/-- `∑[A001045(n+3)*A131577(n)]+1` -/
def P5973737839437663729.Spec : Prop :=
  ∀ n, P5973737839437663729.a n = A253068 n

end A253068

/-! ## A253068.P18012570661084787884

`A000225(2*n+1)-A084152(n+1)`
-/

namespace A253068.P18012570661084787884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) - A084152 (n + 1)

end

end A253068.P18012570661084787884

namespace A253068

/-- `A000225(2*n+1)-A084152(n+1)` -/
def P18012570661084787884.Spec : Prop :=
  ∀ n, P18012570661084787884.a n = A253068 n

end A253068

/-! ## A253068.P6328969162478074441

`A084173(2*n)-(A084175(n)-2*n)`
-/

namespace A253068.P6328969162478074441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (2 * n) - (A084175 n - (2 * n : ℤ))

end

end A253068.P6328969162478074441

namespace A253068

/-- `A084173(2*n)-(A084175(n)-2*n)` -/
def P6328969162478074441.Spec : Prop :=
  ∀ n, P6328969162478074441.a n = A253068 n

end A253068

/-! ## A253068.P5106573487043579512

`A052551(A008574(n))-A084175(n)`
-/

namespace A253068.P5106573487043579512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A008574 n).toNat - A084175 n

end

end A253068.P5106573487043579512

namespace A253068

/-- `A052551(A008574(n))-A084175(n)` -/
def P5106573487043579512.Spec : Prop :=
  ∀ n, P5106573487043579512.a n = A253068 n

end A253068

/-! ## A253068.P2338674535386239612

`A005578(n)²+A020989(n)-A005578(n)`
-/

namespace A253068.P2338674535386239612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n ^ 2 + (A020989 n - A005578 n)

end

end A253068.P2338674535386239612

namespace A253068

/-- `A005578(n)²+A020989(n)-A005578(n)` -/
def P2338674535386239612.Spec : Prop :=
  ∀ n, P2338674535386239612.a n = A253068 n

end A253068

/-! ## A253068.P7914809261146754994

`A020989(n)+A151575(n)²-A151575(n)`
-/

namespace A253068.P7914809261146754994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020989 n + (A151575 n ^ 2 - A151575 n)

end

end A253068.P7914809261146754994

namespace A253068

/-- `A020989(n)+A151575(n)²-A151575(n)` -/
def P7914809261146754994.Spec : Prop :=
  ∀ n, P7914809261146754994.a n = A253068 n

end A253068

/-! ## A253068.P15487168755722532619

`A083420(n)-A001045(n+1)*A001045(n)`
-/

namespace A253068.P15487168755722532619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n - A001045 (n + 1) * A001045 n

end

end A253068.P15487168755722532619

namespace A253068

/-- `A083420(n)-A001045(n+1)*A001045(n)` -/
def P15487168755722532619.Spec : Prop :=
  ∀ n, P15487168755722532619.a n = A253068 n

end A253068

/-!
# A253069: Number of odd terms in f^n, where f = 1/x+1+x+x/y+y/x+x*y.

The programs for A253069, there is no canonical definition to state claims against.
-/

/-! ## A253069.P3840532765057359008

`∏{e}[A278222(n), A253070(#)]`
-/

namespace A253069.P3840532765057359008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253070 (Nat.factorization (f1 n).natAbs p)

end

end A253069.P3840532765057359008

/-! ## A253069.P2219855856265516736

`∏{e}[A005940(n+1), A253070(#)]`
-/

namespace A253069.P2219855856265516736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253070 (Nat.factorization (f1 n).natAbs p)

end

end A253069.P2219855856265516736

/-! ## A253069.P14855805167179191000

`A255460(n)-A113302(A255466(n))`
-/

namespace A253069.P14855805167179191000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255460 n - A113302 (A255466 n).toNat

end

end A253069.P14855805167179191000

/-! ## A253069.P18268629900072615804

`A077223(A255460(n)%A064703(n+1))`
-/

namespace A253069.P18268629900072615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077223 (Int.tmod (A255460 n) (A064703 (n + 1))).toNat

end

end A253069.P18268629900072615804

/-! ## A253069.P2196893466943319892

`A096135(A255460(n))`
-/

namespace A253069.P2196893466943319892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A255460 n).toNat

end

end A253069.P2196893466943319892

/-!
# A253070: The subsequence A253069(2^n-1).

The programs for A253070, there is no canonical definition to state claims against.
-/

/-! ## A253070.P10924156196008220893

`A253069(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253070.P10924156196008220893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 (2 ^ n - 1)

end

end A253070.P10924156196008220893

/-! ## A253070.P3022914585958268775

`record[A253069(A173787(n))]`
-/

namespace A253070.P3022914585958268775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253070.P3022914585958268775

/-! ## A253070.P16590432794501271823

`record[A253069(A292600(n))]`
-/

namespace A253070.P16590432794501271823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 (A292600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253070.P16590432794501271823

/-! ## A253070.P5167422916246669188

`and(-1, A253069(A000225(n)))`
-/

namespace A253070.P5167422916246669188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A253069 (A000225 n).toNat)

end

end A253070.P5167422916246669188

/-! ## A253070.P13730102544163683050

`record[A253069(A023758(n+1))]`
-/

namespace A253070.P13730102544163683050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253069 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253070.P13730102544163683050

/-!
# A253071: Number of odd terms in f^n, where f = 1/(x*y)+1/x+1/y+y+x/y+x+x*y.

The programs for A253071, there is no canonical definition to state claims against.
-/

/-! ## A253071.P14403981512362123480

`∏{e}[A278222(n), A253072(#)]`
-/

namespace A253071.P14403981512362123480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253072 (Nat.factorization (f1 n).natAbs p)

end

end A253071.P14403981512362123480

/-! ## A253071.P6016363197150444432

`∏{e}[A005940(n+1), A253072(#)]`
-/

namespace A253071.P6016363197150444432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253072 (Nat.factorization (f1 n).natAbs p)

end

end A253071.P6016363197150444432

/-!
# A253072: The subsequence A253071(2^n-1).

The programs for A253072, there is no canonical definition to state claims against.
-/

/-! ## A253072.P8504631961810213860

`A253071(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253072.P8504631961810213860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253071 (2 ^ n - 1)

end

end A253072.P8504631961810213860

/-! ## A253072.P6609354044200533226

`record[A253071(A173787(n))]`
-/

namespace A253072.P6609354044200533226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253071 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253072.P6609354044200533226

/-! ## A253072.P3753897605442732624

`or(1, A253071(A000225(n)))`
-/

namespace A253072.P3753897605442732624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A253071 (A000225 n).toNat)

end

end A253072.P3753897605442732624

/-! ## A253072.P9290276926737119653

`record[A253071(A023758(n+1))]`
-/

namespace A253072.P9290276926737119653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253071 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253072.P9290276926737119653

/-! ## A253072.P3996840883992393910

`record[A253071(A037013(n+1))]`
-/

namespace A253072.P3996840883992393910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253071 (A037013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253072.P3996840883992393910

/-!
# A253074: Lexicographically earliest sequence of distinct numbers such that a(n-1)+a(n) is not prime.

The programs for A253074, there is no canonical definition to state claims against.
-/

/-! ## A253074.P15602834322456972708

`A055266(A028310(n))-A000007(n)`
-/

namespace A253074.P15602834322456972708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055266 (A028310 n).toNat - A000007 n

end

end A253074.P15602834322456972708

/-! ## A253074.P13734854059922460059

`A055266(A028310(n))*A057427(n)`
-/

namespace A253074.P13734854059922460059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055266 (A028310 n).toNat * A057427 n

end

end A253074.P13734854059922460059

/-! ## A253074.P2832138400741534417

`A055266(A028310(n))%A000124(n)`
-/

namespace A253074.P2832138400741534417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055266 (A028310 n).toNat) (A000124 n)

end

end A253074.P2832138400741534417

/-! ## A253074.P10477581147978602550

`A055266(A000007(n)+n)-A000007(n)`
-/

namespace A253074.P10477581147978602550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055266 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A253074.P10477581147978602550

/-! ## A253074.P6381643744762251736

`A055266(A000007(n)+n)%A000124(n)`
-/

namespace A253074.P6381643744762251736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055266 (A000007 n + (n : ℤ)).toNat) (A000124 n)

end

end A253074.P6381643744762251736

/-! ## A253074.P8731498679014260570

`A055266(A233583(n+1))%A000124(n)`
-/

namespace A253074.P8731498679014260570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055266 (A233583 (n + 1)).toNat) (A000124 n)

end

end A253074.P8731498679014260570

/-!
# A253076: Bisection of A136704.

The programs for A253076, there is no canonical definition to state claims against.
-/

/-! ## A253076.P10044303073953597734

`A136704(2*(n+1))`
-/

namespace A253076.P10044303073953597734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136704 (2 * (n + 1))

end

end A253076.P10044303073953597734

/-! ## A253076.P1740434109013139994

`A006575(2*(n+1))/2`
-/

namespace A253076.P1740434109013139994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006575 (2 * (n + 1)) : ℚ) / 2

end

end A253076.P1740434109013139994

/-! ## A253076.P18291382239132025036

`record[A006575(xor(1, n)+1)/2]`
-/

namespace A253076.P18291382239132025036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006575 (Nat.xor 1 n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253076.P18291382239132025036

/-! ## A253076.P3458522727905651466

`floor(A006575(n+2+n)/2)`
-/

namespace A253076.P3458522727905651466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006575 (n + 2 + n) : ℚ) / 2⌋

end

end A253076.P3458522727905651466

/-! ## A253076.P14873435365504151160

`record[A006575(n+1)/A141056(n)]`
-/

namespace A253076.P14873435365504151160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006575 (n + 1) : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253076.P14873435365504151160

/-! ## A253076.P16462157903827253014

`(A046209(2*(n+1))+A002075(2*(n+1)))/2`
-/

namespace A253076.P16462157903827253014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046209 (2 * (n + 1)) + A002075 (2 * (n + 1)) : ℚ) / 2

end

end A253076.P16462157903827253014

/-! ## A253076.P16341963222702749099

`record[A006575(n+1)/A004711(A074473(n+1))]`
-/

namespace A253076.P16341963222702749099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006575 (n + 1) : ℚ) / (A004711 (A074473 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253076.P16341963222702749099

/-! ## A253076.P3059224681371554920

`record[A006575(n+1)/A222804(n)]`
-/

namespace A253076.P3059224681371554920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006575 (n + 1) : ℚ) / (A222804 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253076.P3059224681371554920

/-!
# A253077: Bisection of A136704 (divided by 2).

The programs for A253077, the canonical program `A253077.P9511031913738456649` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253077 has offset 1).

The definition of A253077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253077.P7731641898353311270

`A136704(Δ[n²])/2`
-/

namespace A253077.P7731641898353311270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136704 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A253077.P7731641898353311270

namespace A253077

/-- `A136704(Δ[n²])/2` -/
def P7731641898353311270.Spec : Prop :=
  ∀ n, P7731641898353311270.a n = (A253077 (n + 1) : ℚ)

end A253077

/-! ## A253077.P5390568700056764565

`floor(A006575(Δ[n²])/4)`
-/

namespace A253077.P5390568700056764565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006575 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4⌋

end

end A253077.P5390568700056764565

namespace A253077

/-- `floor(A006575(Δ[n²])/4)` -/
def P5390568700056764565.Spec : Prop :=
  ∀ n, P5390568700056764565.a n = A253077 (n + 1)

end A253077

/-! ## A253077.P5247822345076906305

`floor(A133267(Δ[n²])/4)`
-/

namespace A253077.P5247822345076906305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133267 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 4⌋

end

end A253077.P5247822345076906305

namespace A253077

/-- `floor(A133267(Δ[n²])/4)` -/
def P5247822345076906305.Spec : Prop :=
  ∀ n, P5247822345076906305.a n = A253077 (n + 1)

end A253077

/-! ## A253077.P9511031913738456649

`record[floor(A038064(n+1)/8)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A253077

/-- `record[floor(A038064(n+1)/8)]` -/
def P9511031913738456649.Spec : Prop :=
  ∀ n, P9511031913738456649.a n = A253077 (n + 1)

theorem P9511031913738456649.correct : P9511031913738456649.Spec := by
  intro n
  simp only [A253077, Nat.add_sub_cancel]

end A253077

/-! ## A253077.P599295136765095986

`A136704(2*n+1)²/A006575(2*n+1)`
-/

namespace A253077.P599295136765095986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136704 (2 * n + 1) ^ 2 : ℚ) / (A006575 (2 * n + 1) : ℚ)

end

end A253077.P599295136765095986

namespace A253077

/-- `A136704(2*n+1)²/A006575(2*n+1)` -/
def P599295136765095986.Spec : Prop :=
  ∀ n, P599295136765095986.a n = (A253077 (n + 1) : ℚ)

end A253077

/-! ## A253077.P1845612021342876459

`A136704(2*n+1)²/A133267(2*n+1)`
-/

namespace A253077.P1845612021342876459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136704 (2 * n + 1) ^ 2 : ℚ) / (A133267 (2 * n + 1) : ℚ)

end

end A253077.P1845612021342876459

namespace A253077

/-- `A136704(2*n+1)²/A133267(2*n+1)` -/
def P1845612021342876459.Spec : Prop :=
  ∀ n, P1845612021342876459.a n = (A253077 (n + 1) : ℚ)

end A253077

/-!
# A253078: Total number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 470".

The programs for A253078, there is no canonical definition to state claims against.
-/

/-! ## A253078.P13963144422455406882

`A272422(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A253078.P13963144422455406882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272422 (n - 1) + a (n - 1)

end

end A253078.P13963144422455406882

/-! ## A253078.P14307819086008677326

`Δ[A272421(n)]-A272422(n)`
-/

namespace A253078.P14307819086008677326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272422 n

end

end A253078.P14307819086008677326

/-! ## A253078.P12493345867159349039

`A272421(n+1)-(A272422(n)+A272421(n))`
-/

namespace A253078.P12493345867159349039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272421 (n + 1) - (A272422 n + A272421 n)

end

end A253078.P12493345867159349039

/-! ## A253078.P16767883567797578437

`A181385(A016825(n))-A273119(n)`
-/

namespace A253078.P16767883567797578437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273119 n

end

end A253078.P16767883567797578437

/-! ## A253078.P8636537144504693317

`A008740(A008458(n))-A273119(n)`
-/

namespace A253078.P8636537144504693317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273119 n

end

end A253078.P8636537144504693317

/-!
# A253079: a(n) = if n is even, number of ON cells at stage n of two-dimensional 5-neighbor outer totalistic cellular automaton defined by "Rule 489" or if n is odd, number of OFF cells.

The programs for A253079, there is no canonical definition to state claims against.
-/

/-! ## A253079.P773454099627850200

`4*A253080(n)+1`
-/

namespace A253079.P773454099627850200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A253080 n + 1

end

end A253079.P773454099627850200

/-! ## A253079.P7295366376378929649

`A016813(A253080(n))`
-/

namespace A253079.P7295366376378929649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A253080 n).toNat

end

end A253079.P7295366376378929649

/-! ## A253079.P1238463678918753937

`A005408(2*A253080(n))`
-/

namespace A253079.P1238463678918753937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A253080 n).toNat

end

end A253079.P1238463678918753937

/-! ## A253079.P7150954619781071647

`A004442(4*A253080(n))`
-/

namespace A253079.P7150954619781071647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (4 * A253080 n).toNat

end

end A253079.P7150954619781071647

/-! ## A253079.P2879602764088579270

`A263449(4*A253080(n))`
-/

namespace A253079.P2879602764088579270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263449 (4 * A253080 n).toNat

end

end A253079.P2879602764088579270

/-! ## A253079.P3034587845821888869

`A000027(or(1, 4*A253080(n)))`
-/

namespace A253079.P3034587845821888869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor 1 (4 * A253080 n)).toNat

end

end A253079.P3034587845821888869

/-! ## A253079.P4121551898461532699

`A000027(xor(1, 4*A253080(n)))`
-/

namespace A253079.P4121551898461532699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor 1 (4 * A253080 n)).toNat

end

end A253079.P4121551898461532699

/-! ## A253079.P3378161376933391963

`∑{d}[or(1, 4*A253080(n)), A000010(#)]`
-/

namespace A253079.P3378161376933391963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (4 * A253080 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A253079.P3378161376933391963

/-! ## A253079.P5470526731301533903

`A007318(∑[n])*or(1, 4*A253080(n))`
-/

namespace A253079.P5470526731301533903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * Int.lor 1 (4 * A253080 n)

end

end A253079.P5470526731301533903

/-! ## A253079.P8202205240612660281

`xor(4*A253080(n), A000010(C(2, n)!))`
-/

namespace A253079.P8202205240612660281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * A253080 n) (A000010 (Nat.factorial (Nat.choose 2 n)))

end

end A253079.P8202205240612660281

/-!
# A253080: a(n) = (A253079(n)-1)/4.

The programs for A253080, there is no canonical definition to state claims against.
-/

/-! ## A253080.P845638815047105987

`(A253079(n)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253080.P845638815047105987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253079 n - 1 : ℚ) / 4

end

end A253080.P845638815047105987

/-! ## A253080.P8362040046016766099

`floor(A253079(n)/4)`
-/

namespace A253080.P8362040046016766099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253079 n : ℚ) / 4⌋

end

end A253080.P8362040046016766099

/-! ## A253080.P14921669224765572821

`round(A253079(xor(1, xor(1, n)))/4)`
-/

namespace A253080.P14921669224765572821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253079 (Nat.xor 1 (Nat.xor 1 n)) : ℚ) / 4)

end

end A253080.P14921669224765572821

/-! ## A253080.P15090933541999273380

`A002265(A253079(n))`
-/

namespace A253080.P15090933541999273380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A253079 n).toNat

end

end A253080.P15090933541999273380

/-! ## A253080.P13617758440760265293

`round(A253079(n)/4)*A057427(n)`
-/

namespace A253080.P13617758440760265293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253079 n : ℚ) / 4) * A057427 n

end

end A253080.P13617758440760265293

/-! ## A253080.P15315030854961114653

`∑{d}[round(A253079(n)/4), A000010(#)]`
-/

namespace A253080.P15315030854961114653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253079 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A253080.P15315030854961114653

/-! ## A253080.P13742630381190430182

`A007318(∑[n])*round(A253079(n)/4)`
-/

namespace A253080.P13742630381190430182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A253079 n : ℚ) / 4)

end

end A253080.P13742630381190430182

/-! ## A253080.P4581502537039696277

`round(A253079(n)/4)%A000032(n+3)`
-/

namespace A253080.P4581502537039696277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A253079 n : ℚ) / 4)) (A000032 (n + 3))

end

end A253080.P4581502537039696277

/-! ## A253080.P17631891841912217135

`A000040(n+1)%2*round(A253079(n)/4)`
-/

namespace A253080.P17631891841912217135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * SequenceMachineLib.roundAway ((A253079 n : ℚ) / 4)

end

end A253080.P17631891841912217135

/-! ## A253080.P11153044060479258831

`round(A253079(n)/4)/A000045(gcd(n, n+1))`
-/

namespace A253080.P11153044060479258831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A253079 n : ℚ) / 4) : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A253080.P11153044060479258831

/-!
# A253081: Partial sums of A246029.

The programs for A253081, the canonical program `A253081.P14824692146523587717` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253081 has offset 0).

The definition of A253081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253081.P14824692146523587717

`∑[A246029(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A253081

/-- `∑[A246029(n)]` -/
def P14824692146523587717.Spec : Prop :=
  ∀ n, P14824692146523587717.a n = A253081 n

theorem P14824692146523587717.correct : P14824692146523587717.Spec := by
  intro n
  simp only [A253081]

end A253081

/-! ## A253081.P2400598379049696709

`∑[∏{e}[A278222(n), A000040(#)]]`
-/

namespace A253081.P2400598379049696709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000040 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253081.P2400598379049696709

namespace A253081

/-- `∑[∏{e}[A278222(n), A000040(#)]]` -/
def P2400598379049696709.Spec : Prop :=
  ∀ n, P2400598379049696709.a n = A253081 n

end A253081

/-! ## A253081.P7946057453625628996

`A000027(A246029(n)+a(n-1))` with `a(0)=1`
-/

namespace A253081.P7946057453625628996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A246029 n + a (n - 1)).toNat

end

end A253081.P7946057453625628996

namespace A253081

/-- `A000027(A246029(n)+a(n-1))` -/
def P7946057453625628996.Spec : Prop :=
  ∀ n, P7946057453625628996.a n = A253081 n

end A253081

/-! ## A253081.P4057488705326103177

`∑[A181819(A278222(n))]`
-/

namespace A253081.P4057488705326103177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A278222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253081.P4057488705326103177

namespace A253081

/-- `∑[A181819(A278222(n))]` -/
def P4057488705326103177.Spec : Prop :=
  ∀ n, P4057488705326103177.a n = A253081 n

end A253081

/-! ## A253081.P12983729779904793386

`∑[∏{e}[A005940(n+1), A095320(#)]]`
-/

namespace A253081.P12983729779904793386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A095320 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253081.P12983729779904793386

namespace A253081

/-- `∑[∏{e}[A005940(n+1), A095320(#)]]` -/
def P12983729779904793386.Spec : Prop :=
  ∀ n, P12983729779904793386.a n = A253081 n

end A253081

/-! ## A253081.P17611663610259133850

`∑[A181819(A005940(n+1))]`
-/

namespace A253081.P17611663610259133850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253081.P17611663610259133850

namespace A253081

/-- `∑[A181819(A005940(n+1))]` -/
def P17611663610259133850.Spec : Prop :=
  ∀ n, P17611663610259133850.a n = A253081 n

end A253081

/-!
# A253082: Partial sums of A246595.

The programs for A253082, the canonical program `A253082.P2830987802538846320` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253082 has offset 0).

The definition of A253082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253082.P2830987802538846320

`∑[A246595(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253082

/-- `∑[A246595(n)]` -/
def P2830987802538846320.Spec : Prop :=
  ∀ n, P2830987802538846320.a n = A253082 n

theorem P2830987802538846320.correct : P2830987802538846320.Spec := by
  intro n
  simp only [A253082]

end A253082

/-! ## A253082.P13813860173416169629

`∑[A227349(n)²]`
-/

namespace A253082.P13813860173416169629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P13813860173416169629

namespace A253082

/-- `∑[A227349(n)²]` -/
def P13813860173416169629.Spec : Prop :=
  ∀ n, P13813860173416169629.a n = A253082 n

end A253082

/-! ## A253082.P12581100385617377638

`∑[∏{e}[A278222(n), #²]]`
-/

namespace A253082.P12581100385617377638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P12581100385617377638

namespace A253082

/-- `∑[∏{e}[A278222(n), #²]]` -/
def P12581100385617377638.Spec : Prop :=
  ∀ n, (P12581100385617377638.a n : ℤ) = A253082 n

end A253082

/-! ## A253082.P8820392678552063768

`∑[A106737(A048735(n))²]`
-/

namespace A253082.P8820392678552063768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048735 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P8820392678552063768

namespace A253082

/-- `∑[A106737(A048735(n))²]` -/
def P8820392678552063768.Spec : Prop :=
  ∀ n, P8820392678552063768.a n = A253082 n

end A253082

/-! ## A253082.P18234821028684063835

`∑[A003963(A246029(n))²]`
-/

namespace A253082.P18234821028684063835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A246029 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P18234821028684063835

namespace A253082

/-- `∑[A003963(A246029(n))²]` -/
def P18234821028684063835.Spec : Prop :=
  ∀ n, P18234821028684063835.a n = A253082 n

end A253082

/-! ## A253082.P8403618410191719899

`∑[A106737(A213370(n))²]`
-/

namespace A253082.P8403618410191719899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A213370 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P8403618410191719899

namespace A253082

/-- `∑[A106737(A213370(n))²]` -/
def P8403618410191719899.Spec : Prop :=
  ∀ n, P8403618410191719899.a n = A253082 n

end A253082

/-! ## A253082.P4661860224003007085

`∑[A106737(A348710(n))²]`
-/

namespace A253082.P4661860224003007085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A348710 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P4661860224003007085

namespace A253082

/-- `∑[A106737(A348710(n))²]` -/
def P4661860224003007085.Spec : Prop :=
  ∀ n, P4661860224003007085.a n = A253082 n

end A253082

/-! ## A253082.P7616586479593075147

`∑[A106737(A048728(n)/2)²]`
-/

namespace A253082.P7616586479593075147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P7616586479593075147

namespace A253082

/-- `∑[A106737(A048728(n)/2)²]` -/
def P7616586479593075147.Spec : Prop :=
  ∀ n, P7616586479593075147.a n = A253082 n

end A253082

/-! ## A253082.P17739488786940733657

`∑[(A284562(n)*A284569(n))²]`
-/

namespace A253082.P17739488786940733657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284562 n * A284569 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P17739488786940733657

namespace A253082

/-- `∑[(A284562(n)*A284569(n))²]` -/
def P17739488786940733657.Spec : Prop :=
  ∀ n, P17739488786940733657.a n = A253082 n

end A253082

/-! ## A253082.P651365583567230553

`∑[(A167489(n)/A227350(n))²]`
-/

namespace A253082.P651365583567230553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167489 n : ℚ) / (A227350 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P651365583567230553

namespace A253082

/-- `∑[(A167489(n)/A227350(n))²]` -/
def P651365583567230553.Spec : Prop :=
  ∀ n, P651365583567230553.a n = (A253082 n : ℚ)

end A253082

/-! ## A253082.P1981093493952779551

`∑[A106737(A048728(n))²]`
-/

namespace A253082.P1981093493952779551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048728 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P1981093493952779551

namespace A253082

/-- `∑[A106737(A048728(n))²]` -/
def P1981093493952779551.Spec : Prop :=
  ∀ n, P1981093493952779551.a n = A253082 n

end A253082

/-! ## A253082.P16873134684946148389

`∑[A005361(A278222(n))²]`
-/

namespace A253082.P16873134684946148389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A278222 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P16873134684946148389

namespace A253082

/-- `∑[A005361(A278222(n))²]` -/
def P16873134684946148389.Spec : Prop :=
  ∀ n, P16873134684946148389.a n = A253082 n

end A253082

/-! ## A253082.P7023388650134951871

`A246595(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A253082.P7023388650134951871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246595 (2 * n) + a (n - 1)

end

end A253082.P7023388650134951871

namespace A253082

/-- `A246595(2*n)+a(n-1)` -/
def P7023388650134951871.Spec : Prop :=
  ∀ n, P7023388650134951871.a n = A253082 n

end A253082

/-! ## A253082.P9823635512489943608

`∑[A253909(A227349(2*n))]`
-/

namespace A253082.P9823635512489943608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (A227349 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P9823635512489943608

namespace A253082

/-- `∑[A253909(A227349(2*n))]` -/
def P9823635512489943608.Spec : Prop :=
  ∀ n, P9823635512489943608.a n = A253082 n

end A253082

/-! ## A253082.P3229740642231390165

`∑[A227349(2*n)*A227349(n)]`
-/

namespace A253082.P3229740642231390165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (2 * n) * A227349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P3229740642231390165

namespace A253082

/-- `∑[A227349(2*n)*A227349(n)]` -/
def P3229740642231390165.Spec : Prop :=
  ∀ n, P3229740642231390165.a n = A253082 n

end A253082

/-! ## A253082.P3354121566618870648

`∑[∏{e}[A005940(n+1), #²]]`
-/

namespace A253082.P3354121566618870648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P3354121566618870648

namespace A253082

/-- `∑[∏{e}[A005940(n+1), #²]]` -/
def P3354121566618870648.Spec : Prop :=
  ∀ n, (P3354121566618870648.a n : ℤ) = A253082 n

end A253082

/-! ## A253082.P8806810287074704326

`∑[∏{e}[A332815(n), #²]]`
-/

namespace A253082.P8806810287074704326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P8806810287074704326

namespace A253082

/-- `∑[∏{e}[A332815(n), #²]]` -/
def P8806810287074704326.Spec : Prop :=
  ∀ n, (P8806810287074704326.a n : ℤ) = A253082 n

end A253082

/-! ## A253082.P13037006561310796821

`∑[A005361(A005940(n+1))²]`
-/

namespace A253082.P13037006561310796821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005940 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P13037006561310796821

namespace A253082

/-- `∑[A005361(A005940(n+1))²]` -/
def P13037006561310796821.Spec : Prop :=
  ∀ n, P13037006561310796821.a n = A253082 n

end A253082

/-! ## A253082.P13274233314074331172

`∑[A005361(A332815(n))²]`
-/

namespace A253082.P13274233314074331172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A332815 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253082.P13274233314074331172

namespace A253082

/-- `∑[A005361(A332815(n))²]` -/
def P13274233314074331172.Spec : Prop :=
  ∀ n, P13274233314074331172.a n = A253082 n

end A253082

/-!
# A253083: Partial sums of A227349.

The programs for A253083, the canonical program `A253083.P16611236861178422394` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253083 has offset 0).

The definition of A253083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253083.P15718543627650155619

`∑[A227349(n)]`
-/

namespace A253083.P15718543627650155619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P15718543627650155619

namespace A253083

/-- `∑[A227349(n)]` -/
def P15718543627650155619.Spec : Prop :=
  ∀ n, P15718543627650155619.a n = A253083 n

end A253083

/-! ## A253083.P16279676633722469393

`∑[sqrt(A246595(n))]`
-/

namespace A253083.P16279676633722469393
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246595 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P16279676633722469393

namespace A253083

/-- `∑[sqrt(A246595(n))]` -/
def P16279676633722469393.Spec : Prop :=
  ∀ n, P16279676633722469393.a n = (A253083 n : ℝ)

end A253083

/-! ## A253083.P868373488442545241

`∑[∏{e}[A278222(n), #]]`
-/

namespace A253083.P868373488442545241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P868373488442545241

namespace A253083

/-- `∑[∏{e}[A278222(n), #]]` -/
def P868373488442545241.Spec : Prop :=
  ∀ n, (P868373488442545241.a n : ℤ) = A253083 n

end A253083

/-! ## A253083.P16611236861178422394

`a(n-1)+n-A283972(n)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253083

/-- `a(n-1)+n-A283972(n)` -/
def P16611236861178422394.Spec : Prop :=
  ∀ n, P16611236861178422394.a n = A253083 n

theorem P16611236861178422394.correct : P16611236861178422394.Spec := by
  intro n
  simp only [A253083]

end A253083

/-! ## A253083.P11930006943128025722

`∑[A106737(A048735(n))]`
-/

namespace A253083.P11930006943128025722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P11930006943128025722

namespace A253083

/-- `∑[A106737(A048735(n))]` -/
def P11930006943128025722.Spec : Prop :=
  ∀ n, P11930006943128025722.a n = A253083 n

end A253083

/-! ## A253083.P11607484842001442673

`∑[A003963(A246029(n))]`
-/

namespace A253083.P11607484842001442673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A246029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P11607484842001442673

namespace A253083

/-- `∑[A003963(A246029(n))]` -/
def P11607484842001442673.Spec : Prop :=
  ∀ n, P11607484842001442673.a n = A253083 n

end A253083

/-! ## A253083.P7072582496557062983

`∑[A106737(A213370(n))]`
-/

namespace A253083.P7072582496557062983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A213370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P7072582496557062983

namespace A253083

/-- `∑[A106737(A213370(n))]` -/
def P7072582496557062983.Spec : Prop :=
  ∀ n, P7072582496557062983.a n = A253083 n

end A253083

/-! ## A253083.P482406465682804228

`∑[A106737(A348710(n))]`
-/

namespace A253083.P482406465682804228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A348710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P482406465682804228

namespace A253083

/-- `∑[A106737(A348710(n))]` -/
def P482406465682804228.Spec : Prop :=
  ∀ n, P482406465682804228.a n = A253083 n

end A253083

/-! ## A253083.P14370218968476577465

`∑[A106737(A048728(n)/2)]`
-/

namespace A253083.P14370218968476577465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P14370218968476577465

namespace A253083

/-- `∑[A106737(A048728(n)/2)]` -/
def P14370218968476577465.Spec : Prop :=
  ∀ n, P14370218968476577465.a n = A253083 n

end A253083

/-! ## A253083.P10804319434728387388

`∑[A284562(n)*A284569(n)]`
-/

namespace A253083.P10804319434728387388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 n * A284569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P10804319434728387388

namespace A253083

/-- `∑[A284562(n)*A284569(n)]` -/
def P10804319434728387388.Spec : Prop :=
  ∀ n, P10804319434728387388.a n = A253083 n

end A253083

/-! ## A253083.P2067417108887013079

`∑[A167489(n)/A227350(n)]`
-/

namespace A253083.P2067417108887013079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A227350 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P2067417108887013079

namespace A253083

/-- `∑[A167489(n)/A227350(n)]` -/
def P2067417108887013079.Spec : Prop :=
  ∀ n, P2067417108887013079.a n = (A253083 n : ℚ)

end A253083

/-! ## A253083.P4112422620907493824

`∑[A106737(A048728(n))]`
-/

namespace A253083.P4112422620907493824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P4112422620907493824

namespace A253083

/-- `∑[A106737(A048728(n))]` -/
def P4112422620907493824.Spec : Prop :=
  ∀ n, P4112422620907493824.a n = A253083 n

end A253083

/-! ## A253083.P17557781102084542962

`∑[A005361(A278222(n))]`
-/

namespace A253083.P17557781102084542962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A278222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P17557781102084542962

namespace A253083

/-- `∑[A005361(A278222(n))]` -/
def P17557781102084542962.Spec : Prop :=
  ∀ n, P17557781102084542962.a n = A253083 n

end A253083

/-! ## A253083.P8629075948592068510

`A227349(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A253083.P8629075948592068510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A227349 (2 * n) + a (n - 1)

end

end A253083.P8629075948592068510

namespace A253083

/-- `A227349(2*n)+a(n-1)` -/
def P8629075948592068510.Spec : Prop :=
  ∀ n, P8629075948592068510.a n = A253083 n

end A253083

/-! ## A253083.P12690378915601180965

`∑[∏{e}[A005940(n+1), #]]`
-/

namespace A253083.P12690378915601180965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P12690378915601180965

namespace A253083

/-- `∑[∏{e}[A005940(n+1), #]]` -/
def P12690378915601180965.Spec : Prop :=
  ∀ n, (P12690378915601180965.a n : ℤ) = A253083 n

end A253083

/-! ## A253083.P7714107734541456002

`∑[∏{e}[A292602(A016813(n)+2), #]]`
-/

namespace A253083.P7714107734541456002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292602 (A016813 n + 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P7714107734541456002

namespace A253083

/-- `∑[∏{e}[A292602(A016813(n)+2), #]]` -/
def P7714107734541456002.Spec : Prop :=
  ∀ n, (P7714107734541456002.a n : ℤ) = A253083 n

end A253083

/-! ## A253083.P1834597139115300571

`∑[∏{e}[A324641(n+1)-A324640(n+1), #]]`
-/

namespace A253083.P1834597139115300571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324641 (n + 1) - A324640 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P1834597139115300571

namespace A253083

/-- `∑[∏{e}[A324641(n+1)-A324640(n+1), #]]` -/
def P1834597139115300571.Spec : Prop :=
  ∀ n, (P1834597139115300571.a n : ℤ) = A253083 n

end A253083

/-! ## A253083.P16126164787114058415

`∑[∏{e}[A332815(n), #]]`
-/

namespace A253083.P16126164787114058415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P16126164787114058415

namespace A253083

/-- `∑[∏{e}[A332815(n), #]]` -/
def P16126164787114058415.Spec : Prop :=
  ∀ n, (P16126164787114058415.a n : ℤ) = A253083 n

end A253083

/-! ## A253083.P16732730750926663076

`∑[A005361(A005940(n+1))]`
-/

namespace A253083.P16732730750926663076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P16732730750926663076

namespace A253083

/-- `∑[A005361(A005940(n+1))]` -/
def P16732730750926663076.Spec : Prop :=
  ∀ n, P16732730750926663076.a n = A253083 n

end A253083

/-! ## A253083.P14301240274907551987

`∑[A005361(A332815(n))]`
-/

namespace A253083.P14301240274907551987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A332815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253083.P14301240274907551987

namespace A253083

/-- `∑[A005361(A332815(n))]` -/
def P14301240274907551987.Spec : Prop :=
  ∀ n, P14301240274907551987.a n = A253083 n

end A253083

/-!
# A253084: Triangle read by rows: T(n,k) = {binomial(n+k,n-k)*binomial(n,k)} mod 2, 0 <= k <= n.

The programs for A253084, the canonical program `A253084.P6786471095183434490` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253084 has offset 0).

The definition of A253084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253084.P9206064275847788205

`and(A046854(n), A047999(n))`
-/

namespace A253084.P9206064275847788205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046854 n) (A047999 n)

end

end A253084.P9206064275847788205

namespace A253084

/-- `and(A046854(n), A047999(n))` -/
def P9206064275847788205.Spec : Prop :=
  ∀ n, P9206064275847788205.a n = A253084 n

end A253084

/-! ## A253084.P6908238837712897759

`and(A047999(n), A066170(n))`
-/

namespace A253084.P6908238837712897759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A066170 n)

end

end A253084.P6908238837712897759

namespace A253084

/-- `and(A047999(n), A066170(n))` -/
def P6908238837712897759.Spec : Prop :=
  ∀ n, P6908238837712897759.a n = A253084 n

end A253084

/-! ## A253084.P6786471095183434490

`and(A047999(n), A085478(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A253084

/-- `and(A047999(n), A085478(n))` -/
def P6786471095183434490.Spec : Prop :=
  ∀ n, P6786471095183434490.a n = A253084 n

theorem P6786471095183434490.correct : P6786471095183434490.Spec := by
  intro n
  simp only [A253084]

end A253084

/-! ## A253084.P9599246722035323130

`and(A047999(n), A110522(n))`
-/

namespace A253084.P9599246722035323130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A110522 n)

end

end A253084.P9599246722035323130

namespace A253084

/-- `and(A047999(n), A110522(n))` -/
def P9599246722035323130.Spec : Prop :=
  ∀ n, P9599246722035323130.a n = A253084 n

end A253084

/-! ## A253084.P17430179337019846791

`and(A047999(n), A111125(n))`
-/

namespace A253084.P17430179337019846791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A111125 n)

end

end A253084.P17430179337019846791

namespace A253084

/-- `and(A047999(n), A111125(n))` -/
def P17430179337019846791.Spec : Prop :=
  ∀ n, P17430179337019846791.a n = A253084 n

end A253084

/-! ## A253084.P8923812959471082081

`and(A047999(n), A123970(n))`
-/

namespace A253084.P8923812959471082081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A123970 n)

end

end A253084.P8923812959471082081

namespace A253084

/-- `and(A047999(n), A123970(n))` -/
def P8923812959471082081.Spec : Prop :=
  ∀ n, P8923812959471082081.a n = A253084 n

end A253084

/-! ## A253084.P14702787098891113187

`and(A047999(n), A124341(n))`
-/

namespace A253084.P14702787098891113187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A124341 n)

end

end A253084.P14702787098891113187

namespace A253084

/-- `and(A047999(n), A124341(n))` -/
def P14702787098891113187.Spec : Prop :=
  ∀ n, P14702787098891113187.a n = A253084 n

end A253084

/-! ## A253084.P17291233634123617298

`and(A047999(n), A129818(n))`
-/

namespace A253084.P17291233634123617298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A129818 n)

end

end A253084.P17291233634123617298

namespace A253084

/-- `and(A047999(n), A129818(n))` -/
def P17291233634123617298.Spec : Prop :=
  ∀ n, P17291233634123617298.a n = A253084 n

end A253084

/-! ## A253084.P13984610126955567987

`and(A047999(n), A130777(n))`
-/

namespace A253084.P13984610126955567987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A130777 n)

end

end A253084.P13984610126955567987

namespace A253084

/-- `and(A047999(n), A130777(n))` -/
def P13984610126955567987.Spec : Prop :=
  ∀ n, P13984610126955567987.a n = A253084 n

end A253084

/-! ## A253084.P2847191628164087604

`and(A047999(n), A131238(n))`
-/

namespace A253084.P2847191628164087604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A131238 n)

end

end A253084.P2847191628164087604

namespace A253084

/-- `and(A047999(n), A131238(n))` -/
def P2847191628164087604.Spec : Prop :=
  ∀ n, P2847191628164087604.a n = A253084 n

end A253084

/-! ## A253084.P4295648292075981745

`and(A047999(n), A131241(n))`
-/

namespace A253084.P4295648292075981745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A131241 n)

end

end A253084.P4295648292075981745

namespace A253084

/-- `and(A047999(n), A131241(n))` -/
def P4295648292075981745.Spec : Prop :=
  ∀ n, P4295648292075981745.a n = A253084 n

end A253084

/-! ## A253084.P7812491873887368352

`and(A047999(n), A131301(n))`
-/

namespace A253084.P7812491873887368352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A131301 n)

end

end A253084.P7812491873887368352

namespace A253084

/-- `and(A047999(n), A131301(n))` -/
def P7812491873887368352.Spec : Prop :=
  ∀ n, P7812491873887368352.a n = A253084 n

end A253084

/-! ## A253084.P4481484833191431409

`and(A047999(n), A111805(n))`
-/

namespace A253084.P4481484833191431409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A111805 n)

end

end A253084.P4481484833191431409

namespace A253084

/-- `and(A047999(n), A111805(n))` -/
def P4481484833191431409.Spec : Prop :=
  ∀ n, P4481484833191431409.a n = A253084 n

end A253084

/-! ## A253084.P2014176090933383450

`A085357(A054238(n))`
-/

namespace A253084.P2014176090933383450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A054238 n).toNat

end

end A253084.P2014176090933383450

namespace A253084

/-- `A085357(A054238(n))` -/
def P2014176090933383450.Spec : Prop :=
  ∀ n, P2014176090933383450.a n = A253084 n

end A253084

/-! ## A253084.P12599983533249413202

`and(A047999(n), A054722(A047999(n)+n))`
-/

namespace A253084.P12599983533249413202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A054722 (A047999 n + (n : ℤ)).toNat)

end

end A253084.P12599983533249413202

namespace A253084

/-- `and(A047999(n), A054722(A047999(n)+n))` -/
def P12599983533249413202.Spec : Prop :=
  ∀ n, P12599983533249413202.a n = A253084 n

end A253084

/-! ## A253084.P17463571534701279903

`and(A047999(n), A054722(n+1))`
-/

namespace A253084.P17463571534701279903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A054722 (n + 1))

end

end A253084.P17463571534701279903

namespace A253084

/-- `and(A047999(n), A054722(n+1))` -/
def P17463571534701279903.Spec : Prop :=
  ∀ n, P17463571534701279903.a n = A253084 n

end A253084

/-! ## A253084.P14006364146837337199

`and(A008278(A047999(n)+n), A047999(n))`
-/

namespace A253084.P14006364146837337199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008278 (A047999 n + (n : ℤ)).toNat) (A047999 n)

end

end A253084.P14006364146837337199

namespace A253084

/-- `and(A008278(A047999(n)+n), A047999(n))` -/
def P14006364146837337199.Spec : Prop :=
  ∀ n, P14006364146837337199.a n = A253084 n

end A253084

/-! ## A253084.P15899493247593917285

`and(A008278(n+1), A047999(n))`
-/

namespace A253084.P15899493247593917285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008278 (n + 1)) (A047999 n)

end

end A253084.P15899493247593917285

namespace A253084

/-- `and(A008278(n+1), A047999(n))` -/
def P15899493247593917285.Spec : Prop :=
  ∀ n, P15899493247593917285.a n = A253084 n

end A253084

/-! ## A253084.P17771656417706905332

`and(A001498(n), A047999(n))`
-/

namespace A253084.P17771656417706905332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001498 n) (A047999 n)

end

end A253084.P17771656417706905332

namespace A253084

/-- `and(A001498(n), A047999(n))` -/
def P17771656417706905332.Spec : Prop :=
  ∀ n, P17771656417706905332.a n = A253084 n

end A253084

/-! ## A253084.P1898479973512017238

`and(A008957(A047999(n)+n), A047999(n))`
-/

namespace A253084.P1898479973512017238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008957 (A047999 n + (n : ℤ)).toNat) (A047999 n)

end

end A253084.P1898479973512017238

namespace A253084

/-- `and(A008957(A047999(n)+n), A047999(n))` -/
def P1898479973512017238.Spec : Prop :=
  ∀ n, P1898479973512017238.a n = A253084 n

end A253084

/-!
# A253085: a(n) = A247649(A247647(n)).

The programs for A253085, there is no canonical definition to state claims against.
-/

/-! ## A253085.P12871353822401892717

`A247649(eq[and(2*n+1, 3*n+1), and(n, 2*n)])`
-/

namespace A253085.P12871353822401892717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A253085.P12871353822401892717

/-! ## A253085.P3355331929551220673

`A247649(A247648(n+1))`
-/

namespace A253085.P3355331929551220673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A247648 (n + 1)).toNat

end

end A253085.P3355331929551220673

/-! ## A253085.P1930354465341034936

`A247649(eq[1, A334076(n)])`
-/

namespace A253085.P1930354465341034936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253085.P1930354465341034936

/-! ## A253085.P13604392499408444403

`A247649(record[or(1, A180200(n))])`
-/

namespace A253085.P13604392499408444403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A180200 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253085.P13604392499408444403

/-! ## A253085.P14766001699529630001

`A247649(A380358(n+1)-1)`
-/

namespace A253085.P14766001699529630001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A380358 (n + 1) - 1).toNat

end

end A253085.P14766001699529630001

/-! ## A253085.P17422893078508671361

`A247649(2*A052499(n)-1)`
-/

namespace A253085.P17422893078508671361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 * A052499 n - 1).toNat

end

end A253085.P17422893078508671361

/-! ## A253085.P9074861705876921289

`A247649(lt[A334076(n), n%2])`
-/

namespace A253085.P9074861705876921289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A253085.P9074861705876921289

/-! ## A253085.P6264305048609103596

`A247649(lt[n*A334076(n), n])`
-/

namespace A253085.P6264305048609103596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A334076 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A253085.P6264305048609103596

/-! ## A253085.P1899323684589154570

`A247649(eq[2, A006530(or(n, 2*n)+1)])`
-/

namespace A253085.P1899323684589154570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor n (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253085.P1899323684589154570

/-!
# A253086: Number of ON cells at generation n of 5-celled totalistic CA defined by Rule 780.

The programs for A253086, there is no canonical definition to state claims against.
-/

/-! ## A253086.P4140460112436444739

`∑[A271059(abs(1-n))]`
-/

namespace A253086.P4140460112436444739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271059 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253086.P4140460112436444739

/-! ## A253086.P1514550674726176993

`A271059(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A253086.P1514550674726176993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271059 (n - 1) + a (n - 1)

end

end A253086.P1514550674726176993

/-! ## A253086.P5232377107093477819

`Δ[A255150(n)]-A271059(n)`
-/

namespace A253086.P5232377107093477819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271059 n

end

end A253086.P5232377107093477819

/-! ## A253086.P7519487473953388293

`A255150(n+1)-(A271059(n)+A255150(n))`
-/

namespace A253086.P7519487473953388293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255150 (n + 1) - (A271059 n + A255150 n)

end

end A253086.P7519487473953388293

/-! ## A253086.P11772076518511953604

`A016754(n+1)-Δ[A273640(n)]`
-/

namespace A253086.P11772076518511953604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (f1 (n + 1) - f1 n)

end

end A253086.P11772076518511953604

/-! ## A253086.P10403917225218233497

`A016754(n+1)-A258448(n+1)`
-/

namespace A253086.P10403917225218233497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - A258448 (n + 1)

end

end A253086.P10403917225218233497

/-! ## A253086.P10922937119907856672

`Δ[A005563(n)]²-A258448(n+1)`
-/

namespace A253086.P10922937119907856672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A258448 (n + 1)

end

end A253086.P10922937119907856672

/-! ## A253086.P16111150910917851258

`A005408(n+1)²-A258448(n+1)`
-/

namespace A253086.P16111150910917851258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) ^ 2 - A258448 (n + 1)

end

end A253086.P16111150910917851258

/-!
# A253087: a(n) = A253086(2^n-1).

The programs for A253087, there is no canonical definition to state claims against.
-/

/-! ## A253087.P11738709143625424988

`A253086(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253087.P11738709143625424988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 (2 ^ n - 1)

end

end A253087.P11738709143625424988

/-! ## A253087.P11638383013459798597

`record[A253086(A173787(n))]`
-/

namespace A253087.P11638383013459798597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253087.P11638383013459798597

/-! ## A253087.P15865165501104634094

`and(-1, A253086(A000225(n)))`
-/

namespace A253087.P15865165501104634094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A253086 (A000225 n).toNat)

end

end A253087.P15865165501104634094

/-! ## A253087.P3125555540333456156

`record[A253086(A252756(n+1))]`
-/

namespace A253087.P3125555540333456156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253087.P3125555540333456156

/-! ## A253087.P14414589347785482915

`record[A253086(A323243(n+1))]`
-/

namespace A253087.P14414589347785482915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253086 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253087.P14414589347785482915

/-!
# A253091: List of ternary words obtained by expanding (1+2x)^n mod 3 and reading the coefficients starting with the constant term.

The programs for A253091, there is no canonical definition to state claims against.
-/

/-! ## A253091.P14616055941886197123

`A140267(A117983(n))`
-/

namespace A253091.P14616055941886197123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 (A117983 n).toNat

end

end A253091.P14616055941886197123

/-! ## A253091.P13442716900178675157

`A007089(A182069(n))`
-/

namespace A253091.P13442716900178675157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A182069 n).toNat

end

end A253091.P13442716900178675157

/-! ## A253091.P9424197444164634126

`A305877(A255286(n))`
-/

namespace A253091.P9424197444164634126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A255286 n).toNat

end

end A253091.P9424197444164634126

/-!
# A253092: Log_3(A133579(n)).

The programs for A253092, the canonical program `A253092.P13330975078839585840` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253092 has offset 0).

The definition of A253092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253092.P13330975078839585840

`A047212(n+1)%A120514(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253092

/-- `A047212(n+1)%A120514(n+1)` -/
def P13330975078839585840.Spec : Prop :=
  ∀ n, P13330975078839585840.a n = A253092 n

theorem P13330975078839585840.correct : P13330975078839585840.Spec := by
  intro n
  simp only [A253092]

end A253092

/-! ## A253092.P8184440237403916592

`A002264(comp[2*(n+1)])-A054861(n)`
-/

namespace A253092.P8184440237403916592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A054861 n

end

end A253092.P8184440237403916592

namespace A253092

/-- `A002264(comp[2*(n+1)])-A054861(n)` -/
def P8184440237403916592.Spec : Prop :=
  ∀ n, P8184440237403916592.a n = A253092 n

end A253092

/-! ## A253092.P3388143319191813463

`val(A133579(n), 3)`
-/

namespace A253092.P3388143319191813463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A133579 n).toNat 3

end

end A253092.P3388143319191813463

namespace A253092

/-- `val(A133579(n), 3)` -/
def P3388143319191813463.Spec : Prop :=
  ∀ n, (P3388143319191813463.a n : ℤ) = A253092 n

end A253092

/-! ## A253092.P8225764902899305149

`∑{e}[A133579(n), A000027(#)]`
-/

namespace A253092.P8225764902899305149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A253092.P8225764902899305149

namespace A253092

/-- `∑{e}[A133579(n), A000027(#)]` -/
def P8225764902899305149.Spec : Prop :=
  ∀ n, P8225764902899305149.a n = A253092 n

end A253092

/-! ## A253092.P1357069744536648159

`∑{e}[A133579(A028310(n)), #]`
-/

namespace A253092.P1357069744536648159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133579 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A253092.P1357069744536648159

namespace A253092

/-- `∑{e}[A133579(A028310(n)), #]` -/
def P1357069744536648159.Spec : Prop :=
  ∀ n, (P1357069744536648159.a n : ℤ) = A253092 n

end A253092

/-! ## A253092.P14694139454109744629

`A001222(A133579(n))`
-/

namespace A253092.P14694139454109744629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133579 n).toNat

end

end A253092.P14694139454109744629

namespace A253092

/-- `A001222(A133579(n))` -/
def P14694139454109744629.Spec : Prop :=
  ∀ n, P14694139454109744629.a n = A253092 n

end A253092

/-! ## A253092.P8421692322618586683

`∑{d}[A133579(n), A001221(#)]`
-/

namespace A253092.P8421692322618586683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A253092.P8421692322618586683

namespace A253092

/-- `∑{d}[A133579(n), A001221(#)]` -/
def P8421692322618586683.Spec : Prop :=
  ∀ n, P8421692322618586683.a n = A253092 n

end A253092

/-!
# A253093: Related to residues of poles of moment function for random walks in 4 dimensions.

The programs for A253093, there is no canonical definition to state claims against.
-/

/-! ## A253093.P10146323412440375313

`A089631(A052626(n))-A052612(n)`
-/

namespace A253093.P10146323412440375313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089631 (A052626 n).toNat - A052612 n

end

end A253093.P10146323412440375313

/-! ## A253093.P9572115888605159121

`A002117(A026022(3*n+5))-A318895(n+2)`
-/

namespace A253093.P9572115888605159121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (A026022 (3 * n + 5)).toNat - A318895 (n + 2)

end

end A253093.P9572115888605159121

/-!
# A253095: Moments of 4-step random walk in 4 dimensions.

The programs for A253095, there is no canonical definition to state claims against.
-/

/-! ## A253095.P6760171190195380663

`A105556(A167614(n+2))`
-/

namespace A253095.P6760171190195380663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (A167614 (n + 2)).toNat

end

end A253095.P6760171190195380663

/-! ## A253095.P14970725969278543614

`A105556(A141214(n)+6)`
-/

namespace A253095.P14970725969278543614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (A141214 n + 6).toNat

end

end A253095.P14970725969278543614

/-! ## A253095.P1776111821631326622

`A105556(A052905(n)+8)`
-/

namespace A253095.P1776111821631326622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (A052905 n + 8).toNat

end

end A253095.P1776111821631326622

/-! ## A253095.P9378052670121079090

`A105556(A055999(n)+9)`
-/

namespace A253095.P9378052670121079090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (A055999 n + 9).toNat

end

end A253095.P9378052670121079090

/-!
# A253096: Moments of 5-step random walk in 4 dimensions.

The programs for A253096, there is no canonical definition to state claims against.
-/

/-! ## A253096.P2336442273488290674

`A105556(∑[n+4]+10)`
-/

namespace A253096.P2336442273488290674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A253096.P2336442273488290674

/-!
# A253097: Moments of 6-step random walk in 4 dimensions.

The programs for A253097, there is no canonical definition to state claims against.
-/

/-! ## A253097.P9017294008803110825

`A105556(A167499(n+4))`
-/

namespace A253097.P9017294008803110825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (A167499 (n + 4)).toNat

end

end A253097.P9017294008803110825

/-! ## A253097.P11623443343317710228

`A105556(eq[3, A079126(n)])`
-/

namespace A253097.P11623443343317710228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253097.P11623443343317710228

/-!
# A253098: Partial sums of A169707.

The programs for A253098, there is no canonical definition to state claims against.
-/

/-! ## A253098.P15706268272678898999

`∑[∑[A169708(n)]]`
-/

namespace A253098.P15706268272678898999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169708 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P15706268272678898999

/-! ## A253098.P17008883967507568857

`∑[A169707(n+1)]`
-/

namespace A253098.P17008883967507568857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P17008883967507568857

/-! ## A253098.P7325077553860090181

`∑[4*A255747(n)+1]`
-/

namespace A253098.P7325077553860090181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A255747 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P7325077553860090181

/-! ## A253098.P1536566601534091197

`∑[∑[4*A160552(n)]+1]`
-/

namespace A253098.P1536566601534091197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A160552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P1536566601534091197

/-! ## A253098.P9388632540540404079

`∑[4*∑[A266529(2*(n+1))]+1]`
-/

namespace A253098.P9388632540540404079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P9388632540540404079

/-! ## A253098.P6812281339463442352

`∑[∑[A008574(A160552(n))]]`
-/

namespace A253098.P6812281339463442352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A160552 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P6812281339463442352

/-! ## A253098.P12002405391374543304

`∑[∑[A047461(A160552(n)+1)]]`
-/

namespace A253098.P12002405391374543304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047461 (A160552 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P12002405391374543304

/-! ## A253098.P5615474507420552612

`∑[record[A169707(A065648(n))]]`
-/

namespace A253098.P5615474507420552612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P5615474507420552612

/-! ## A253098.P709112843594694645

`∑[A005408(∑[2*A160552(n)])]`
-/

namespace A253098.P709112843594694645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P709112843594694645

/-! ## A253098.P9991630836506875981

`∑[A008619(8*A255747(n))]`
-/

namespace A253098.P9991630836506875981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 * A255747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253098.P9991630836506875981

/-!
# A253099: Indices n>0 such that A083417(n) is zero.

The programs for A253099, there is no canonical definition to state claims against.
-/

/-! ## A253099.P8463219737324104947

`eq[A083417(n), A185907(A001316(n))]`
-/

namespace A253099.P8463219737324104947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185907 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253099.P8463219737324104947

