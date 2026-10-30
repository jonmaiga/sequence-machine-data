import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232101: a(n) = A000217(A232097(n)) / n!.

The programs for A232101, there is no canonical definition to state claims against.
-/

/-! ## A232101.P1729877563458532438

`A000217(A232097(n+1))/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232101.P1729877563458532438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A232097 (n + 1)).toNat : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A232101.P1729877563458532438

/-! ## A232101.P17008232685918318512

`A000217(A232097(n+1))/A000142(n+1)`
-/

namespace A232101.P17008232685918318512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A232097 (n + 1)).toNat : ℚ) / (A000142 (n + 1) : ℚ)

end

end A232101.P17008232685918318512

/-!
# A232102: Primes p with same last two digits as k, where prime(k) = p.

The programs for A232102, there is no canonical definition to state claims against.
-/

/-! ## A232102.P5935356993418306654

`A000040(A067838(n+1))`
-/

namespace A232102.P5935356993418306654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067838 (n + 1)).toNat

end

end A232102.P5935356993418306654

/-! ## A232102.P9046822536603277497

`A008578(A067838(n+1)+1)`
-/

namespace A232102.P9046822536603277497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067838 (n + 1) + 1).toNat

end

end A232102.P9046822536603277497

/-! ## A232102.P9327135865408860495

`A161428(A067838(n+1)+1)`
-/

namespace A232102.P9327135865408860495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (A067838 (n + 1) + 1).toNat

end

end A232102.P9327135865408860495

/-! ## A232102.P4950636490337156183

`A175787(A067838(n+1)+1)`
-/

namespace A232102.P4950636490337156183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A067838 (n + 1) + 1).toNat

end

end A232102.P4950636490337156183

/-! ## A232102.P17445775396156106472

`A182986(A067838(n+1)+1)`
-/

namespace A232102.P17445775396156106472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A067838 (n + 1) + 1).toNat

end

end A232102.P17445775396156106472

/-! ## A232102.P11661202494025582074

`A045319(A067838(n+1)-1)`
-/

namespace A232102.P11661202494025582074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A067838 (n + 1) - 1).toNat

end

end A232102.P11661202494025582074

/-! ## A232102.P2835306775373705627

`A045344(A067838(n+1)-1)`
-/

namespace A232102.P2835306775373705627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A067838 (n + 1) - 1).toNat

end

end A232102.P2835306775373705627

/-!
# A232103: Square array read by antidiagonals: T(m,n) = number of ways of drawing a simple loop on an m x n rectangular lattice of dots in such a way that it touches each edge.

The programs for A232103, there is no canonical definition to state claims against.
-/

/-! ## A232103.P2865750573751839690

`A216256(A007318(n)*A118190(n))`
-/

namespace A232103.P2865750573751839690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A007318 n * A118190 n).toNat

end

end A232103.P2865750573751839690

/-! ## A232103.P7852270644610312785

`A010439(A117401(n))+A008292(n+1)`
-/

namespace A232103.P7852270644610312785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (A117401 n).toNat + A008292 (n + 1)

end

end A232103.P7852270644610312785

/-! ## A232103.P8414547200141163237

`A292357(n+1)-A137579(A143007(n))`
-/

namespace A232103.P8414547200141163237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292357 (n + 1) - A137579 (A143007 n).toNat

end

end A232103.P8414547200141163237

/-! ## A232103.P7374868763843758612

`A132141(A008292(n+1)^A033630(n+3))`
-/

namespace A232103.P7374868763843758612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (SequenceMachineLib.roundAway ((A008292 (n + 1) : ℚ) ^ (A033630 (n + 3) : ℤ))).toNat

end

end A232103.P7374868763843758612

/-! ## A232103.P9127880805612515352

`A005117(A008292(n+1)%A246492(n+1))`
-/

namespace A232103.P9127880805612515352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.tmod (A008292 (n + 1)) (A246492 (n + 1))).toNat

end

end A232103.P9127880805612515352

/-!
# A232104: Primes p with same last three digits as k, where prime(k) = p.

The programs for A232104, there is no canonical definition to state claims against.
-/

/-! ## A232104.P1414883650805676960

`A000040(A067841(n+1))`
-/

namespace A232104.P1414883650805676960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067841 (n + 1)).toNat

end

end A232104.P1414883650805676960

/-! ## A232104.P8871982608246901301

`A008578(A067841(n+1)+1)`
-/

namespace A232104.P8871982608246901301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A067841 (n + 1) + 1).toNat

end

end A232104.P8871982608246901301

/-! ## A232104.P10411419522423785954

`A161428(A067841(n+1)+1)`
-/

namespace A232104.P10411419522423785954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (A067841 (n + 1) + 1).toNat

end

end A232104.P10411419522423785954

/-! ## A232104.P11142261948109203613

`A175787(A067841(n+1)+1)`
-/

namespace A232104.P11142261948109203613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A067841 (n + 1) + 1).toNat

end

end A232104.P11142261948109203613

/-!
# A232105: Number of groups of order prime(n)^5.

The programs for A232105, there is no canonical definition to state claims against.
-/

/-! ## A232105.P10548983159044741246

`A384607(A077168(n)+5)`
-/

namespace A232105.P10548983159044741246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384607 (A077168 n + 5).toNat

end

end A232105.P10548983159044741246

/-! ## A232105.P10779948209644880558

`∩[A088184(n+1), A384607(n+1)]`
-/

namespace A232105.P10779948209644880558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232105.P10779948209644880558

/-! ## A232105.P15685867714388275117

`∩[A140452(n+1), A384607(n+1)]`
-/

namespace A232105.P15685867714388275117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232105.P15685867714388275117

/-!
# A232106: Number of groups of order prime(n)^6.

The programs for A232106, there is no canonical definition to state claims against.
-/

/-! ## A232106.P13920260743834393015

`A271811(1+n)+11`
-/

namespace A232106.P13920260743834393015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271811 (1 + n) + 11

end

end A232106.P13920260743834393015

/-! ## A232106.P3741491775651039890

`A085267(A271811(n+1))`
-/

namespace A232106.P3741491775651039890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085267 (A271811 (n + 1)).toNat

end

end A232106.P3741491775651039890

/-!
# A232108: a(n) = [x^(n*(n+1)/2)] G(x)^(n+1) where G(x) = Sum_{n>=0} x^(n*(n+1)/2).

The programs for A232108, there is no canonical definition to state claims against.
-/

/-! ## A232108.P8311475419315771686

`A286180(A000096(A000096(n)+1)-(n+1))`
-/

namespace A232108.P8311475419315771686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286180 (A000096 (A000096 n + 1).toNat - (n + 1 : ℤ)).toNat

end

end A232108.P8311475419315771686

/-! ## A232108.P12967383922766887276

`A342272(A132111(n)+A008934(n))`
-/

namespace A232108.P12967383922766887276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342272 (A132111 n + A008934 n).toNat

end

end A232108.P12967383922766887276

/-!
# A232109: Least prime p < n + 5 with n + (p-1)*(p-3)/8 prime, or 0 if such a prime p does not exist.

The programs for A232109, there is no canonical definition to state claims against.
-/

/-! ## A232109.P4745889521989535087

`p?[A194968(3*n+2)%A194949(n)]`
-/

namespace A232109.P4745889521989535087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194968 (3 * n + 2)) (A194949 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232109.P4745889521989535087

/-! ## A232109.P15201933218740743531

`p?[A194968(3*n+5)%A194984(n+1)]`
-/

namespace A232109.P15201933218740743531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194968 (3 * n + 5)) (A194984 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A232109.P15201933218740743531

/-! ## A232109.P9797481828528113322

`A154561(and(A013632(n), A116028(n+5)))`
-/

namespace A232109.P9797481828528113322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154561 (Int.land (A013632 n) (A116028 (n + 5))).toNat

end

end A232109.P9797481828528113322

/-! ## A232109.P15875113374933316967

`A020483(A033948(n+3)^A000120(n+1))`
-/

namespace A232109.P15875113374933316967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (SequenceMachineLib.roundAway ((A033948 (n + 3) : ℚ) ^ (A000120 (n + 1) : ℤ))).toNat

end

end A232109.P15875113374933316967

/-!
# A232112: Denominator of smallest nonnegative fraction of form +- 1 +- 1/2 +- 1/3 ... +- 1/n.

The programs for A232112, there is no canonical definition to state claims against.
-/

/-! ## A232112.P1162118189228576706

`A003418(n)/A093415(A127119(n+1))`
-/

namespace A232112.P1162118189228576706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A093415 (A127119 (n + 1)).toNat : ℚ)

end

end A232112.P1162118189228576706

/-! ## A232112.P8718558959452686267

`A139552(3*n)/A302997(A055396(n+1))`
-/

namespace A232112.P8718558959452686267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139552 (3 * n) : ℚ) / (A302997 (A055396 (n + 1)).toNat : ℚ)

end

end A232112.P8718558959452686267

/-! ## A232112.P13082736131919917890

`A003418(n)/A087267(A000055(n))`
-/

namespace A232112.P13082736131919917890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A087267 (A000055 n).toNat : ℚ)

end

end A232112.P13082736131919917890

/-! ## A232112.P15762197707809020367

`A003418(n)/A120263(A051920(n))`
-/

namespace A232112.P15762197707809020367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A120263 (A051920 n).toNat : ℚ)

end

end A232112.P15762197707809020367

/-! ## A232112.P12622393429353539084

`A003418(n)/A053150(A295956(n))`
-/

namespace A232112.P12622393429353539084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A053150 (A295956 n).toNat : ℚ)

end

end A232112.P12622393429353539084

/-!
# A232113: a(n) is the Manhattan distance between n and 2*n in a square spiral of positive integers with 1 at the center.

The programs for A232113, there is no canonical definition to state claims against.
-/

/-! ## A232113.P2589737962538544544

`A040002(A052515(n))-A318657(n+1)`
-/

namespace A232113.P2589737962538544544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A052515 n).toNat - A318657 (n + 1)

end

end A232113.P2589737962538544544

/-! ## A232113.P7342748547384617659

`A040002(A217482(n))-A318657(n+1)`
-/

namespace A232113.P7342748547384617659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A217482 n).toNat - A318657 (n + 1)

end

end A232113.P7342748547384617659

/-! ## A232113.P5313857303557052357

`A062756(A097254(n+2)-A097251(n))`
-/

namespace A232113.P5313857303557052357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A097254 (n + 2) - A097251 n).toNat

end

end A232113.P5313857303557052357

/-! ## A232113.P13254805665907524927

`A099427(A287199(n)%A286850(n+1))`
-/

namespace A232113.P13254805665907524927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099427 (Int.tmod (A287199 n) (A286850 (n + 1))).toNat

end

end A232113.P13254805665907524927

/-! ## A232113.P2895989944567365766

`A099427(A287199(n))`
-/

namespace A232113.P2895989944567365766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099427 (A287199 n).toNat

end

end A232113.P2895989944567365766

/-!
# A232114: a(n) is the Manhattan distance between n and n^2 in a square spiral of positive integers with 1 at the center.

The programs for A232114, there is no canonical definition to state claims against.
-/

/-! ## A232114.P3242382292048837961

`A119557(2*n)+n`
-/

namespace A232114.P3242382292048837961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119557 (2 * n) + (n : ℤ)

end

end A232114.P3242382292048837961

/-! ## A232114.P17387390577365668366

`Δ[A088226(n+1)]+n`
-/

namespace A232114.P17387390577365668366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A232114.P17387390577365668366

/-! ## A232114.P13891949582688630476

`n-(-1)^n*A329116(n)`
-/

namespace A232114.P13891949582688630476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n * A329116 n

end

end A232114.P13891949582688630476

/-! ## A232114.P483239359346743943

`abs(A119557(A005843(n))+n)`
-/

namespace A232114.P483239359346743943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119557 (A005843 n).toNat + (n : ℤ)|

end

end A232114.P483239359346743943

/-! ## A232114.P5701394984176095962

`abs(A329116(n)+A181983(n))`
-/

namespace A232114.P5701394984176095962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329116 n + A181983 n|

end

end A232114.P5701394984176095962

/-! ## A232114.P799535309156251266

`abs(A038608(n)-A329116(n))`
-/

namespace A232114.P799535309156251266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038608 n - A329116 n|

end

end A232114.P799535309156251266

/-! ## A232114.P5967362333555420655

`A062157(n)*A329116(n)+n`
-/

namespace A232114.P5967362333555420655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A329116 n + (n : ℤ)

end

end A232114.P5967362333555420655

/-! ## A232114.P14813583384917652992

`n-A329116(n)/A033999(n)`
-/

namespace A232114.P14813583384917652992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A329116 n : ℚ) / (A033999 n : ℚ)

end

end A232114.P14813583384917652992

/-! ## A232114.P10408630169771853817

`abs(A329116(n²)+A329116(n))`
-/

namespace A232114.P10408630169771853817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329116 (n ^ 2) + A329116 n|

end

end A232114.P10408630169771853817

/-! ## A232114.P12494719032345888082

`Δ[A057554(A028392(n)+1)]+n`
-/

namespace A232114.P12494719032345888082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A028392 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A232114.P12494719032345888082

/-!
# A232116: Primes such that the sum of each nonzero digit raised to itself is prime.

The programs for A232116, there is no canonical definition to state claims against.
-/

/-! ## A232116.P7200154596563765304

`∩[A154755(n+1), A046431(n)]`
-/

namespace A232116.P7200154596563765304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232116.P7200154596563765304

/-! ## A232116.P15983687931429650302

`∩[A154755(n+1), A046440(n)]`
-/

namespace A232116.P15983687931429650302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232116.P15983687931429650302

/-! ## A232116.P15293268761814636242

`∩[A216509(n+1), A046431(n)]`
-/

namespace A232116.P15293268761814636242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232116.P15293268761814636242

/-! ## A232116.P13075444811466585390

`∩[A216509(n+1), A046440(n)]`
-/

namespace A232116.P13075444811466585390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232116.P13075444811466585390

/-! ## A232116.P3708831801218994250

`∩[A259732(n+1), A046440(n)]`
-/

namespace A232116.P3708831801218994250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232116.P3708831801218994250

/-!
# A232117: Number of (n+1) X (1+1) 0..2 arrays with every element both >= and <= some horizontal or vertical neighbor.

The programs for A232117, there is no canonical definition to state claims against.
-/

/-! ## A232117.P10390173808727491895

`A232124(∑[n]+1)`
-/

namespace A232117.P10390173808727491895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232117.P10390173808727491895

/-! ## A232117.P15328063845177393176

`record[root(A232124(n+1), A050447(n))]`
-/

namespace A232117.P15328063845177393176
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232124 (n + 1) : ℝ) ^ (1 / (A050447 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232117.P15328063845177393176

/-! ## A232117.P16332396997366401017

`record[gcd(A002262(n), A232124(n+1))]`
-/

namespace A232117.P16332396997366401017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232124 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232117.P16332396997366401017

/-! ## A232117.P13292209737990158068

`record[root(A232124(n+1), A200370(n+1))]`
-/

namespace A232117.P13292209737990158068
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232124 (n + 1) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232117.P13292209737990158068

/-! ## A232117.P13531427904202892252

`A232124(A000124(n))%A232118(n+1)`
-/

namespace A232117.P13531427904202892252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232124 (A000124 n).toNat) (A232118 (n + 1))

end

end A232117.P13531427904202892252

/-!
# A232118: Number of (n+1)X(2+1) 0..2 arrays with every element both >= and <= some horizontal or vertical neighbor.

The programs for A232118, there is no canonical definition to state claims against.
-/

/-! ## A232118.P17388815913748238985

`A232124(∑[n+1]+2)`
-/

namespace A232118.P17388815913748238985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232118.P17388815913748238985

/-! ## A232118.P275546463711750305

`record[gcd(A002262(n), A232124(n+2))]`
-/

namespace A232118.P275546463711750305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232124 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232118.P275546463711750305

/-! ## A232118.P10549038125635391877

`record[root(A232124(n+2), A200370(n+1))]`
-/

namespace A232118.P10549038125635391877
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232124 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232118.P10549038125635391877

/-! ## A232118.P16265685000014632561

`record[A232124(abs(A201163(n)))]`
-/

namespace A232118.P16265685000014632561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232118.P16265685000014632561

/-! ## A232118.P13274141615679428133

`or(1, A232124(A055998(n)+2))`
-/

namespace A232118.P13274141615679428133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232124 (A055998 n + 2).toNat)

end

end A232118.P13274141615679428133

/-!
# A232119: Number of (n+1)X(3+1) 0..2 arrays with every element both >= and <= some horizontal or vertical neighbor.

The programs for A232119, there is no canonical definition to state claims against.
-/

/-! ## A232119.P275549084669967748

`A232124(∑[n+2]+4)`
-/

namespace A232119.P275549084669967748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232119.P275549084669967748

/-! ## A232119.P6446597432337837641

`or(1, A232124(A167614(n+1)))`
-/

namespace A232119.P6446597432337837641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232124 (A167614 (n + 1)).toNat)

end

end A232119.P6446597432337837641

/-! ## A232119.P5768426254709011557

`or(1, A232124(A055998(n)+6))`
-/

namespace A232119.P5768426254709011557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232124 (A055998 n + 6).toNat)

end

end A232119.P5768426254709011557

/-! ## A232119.P11172573222766273806

`record[root(A232124(n+4), A200370(n+2))]`
-/

namespace A232119.P11172573222766273806
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232124 (n + 4) : ℝ) ^ (1 / (A200370 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232119.P11172573222766273806

/-! ## A232119.P10736230107807663374

`lcm(A033999(n), A232124(A167614(n+1)))`
-/

namespace A232119.P10736230107807663374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232124 (A167614 (n + 1)).toNat)

end

end A232119.P10736230107807663374

/-!
# A232120: Number of (n+1) X (4+1) 0..2 arrays with every element both >= and <= some horizontal or vertical neighbor.

The programs for A232120, there is no canonical definition to state claims against.
-/

/-! ## A232120.P17210979962344647682

`A232124(A141214(n)+7)`
-/

namespace A232120.P17210979962344647682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A141214 n + 7).toNat

end

end A232120.P17210979962344647682

/-! ## A232120.P12150647017470939543

`A232124(A055999(n)+10)`
-/

namespace A232120.P12150647017470939543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A055999 n + 10).toNat

end

end A232120.P12150647017470939543

/-! ## A232120.P10667553677292421588

`A232124(A167614(n+2)+1)`
-/

namespace A232120.P10667553677292421588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A167614 (n + 2) + 1).toNat

end

end A232120.P10667553677292421588

/-! ## A232120.P12183629911677078468

`A232124(A167499(n+2)-1)`
-/

namespace A232120.P12183629911677078468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A167499 (n + 2) - 1).toNat

end

end A232120.P12183629911677078468

/-! ## A232120.P10955960472423259951

`A232124(eq[5, A131818(n+1)])`
-/

namespace A232120.P10955960472423259951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232120.P10955960472423259951

/-!
# A232121: Number of (n+1)X(5+1) 0..2 arrays with every element both >= and <= some horizontal or vertical neighbor.

The programs for A232121, there is no canonical definition to state claims against.
-/

/-! ## A232121.P16389437948097782994

`A232124(A374005(n+1))`
-/

namespace A232121.P16389437948097782994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A374005 (n + 1)).toNat

end

end A232121.P16389437948097782994

/-! ## A232121.P7519908720126259748

`A232124(A155212(n)+13)`
-/

namespace A232121.P7519908720126259748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A155212 n + 13).toNat

end

end A232121.P7519908720126259748

/-! ## A232121.P6511896734645994672

`A232124(A056000(n)+15)`
-/

namespace A232121.P6511896734645994672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A056000 n + 15).toNat

end

end A232121.P6511896734645994672

/-! ## A232121.P15293768939003624939

`A232124(eq[6, A131818(n+1)])`
-/

namespace A232121.P15293768939003624939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232121.P15293768939003624939

/-! ## A232121.P13918770406581303418

`A232124(A246172(n+1)+10)`
-/

namespace A232121.P13918770406581303418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (A246172 (n + 1) + 10).toNat

end

end A232121.P13918770406581303418

/-!
# A232123: Number of (n+1)X(7+1) 0..2 arrays with every element both >= and <= some horizontal or vertical neighbor.

The programs for A232123, there is no canonical definition to state claims against.
-/

/-! ## A232123.P16095889393542810578

`A232124(eq[11, A066657(n)])`
-/

namespace A232123.P16095889393542810578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232123.P16095889393542810578

/-!
# A232125: Smallest prime such that the n numbers obtained by removing 1 digit on the right are also prime, while no digit can be added on the right to get another prime.

The programs for A232125, there is no canonical definition to state claims against.
-/

/-! ## A232125.P8948002635166447882

`A239747(A268191(n+1)+∏{e}[n+1, floor(#/2)+1])`
-/

namespace A232125.P8948002635166447882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239747 (A268191 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1)).toNat

end

end A232125.P8948002635166447882

/-! ## A232125.P13287201812977153433

`A239747(A268191(n+1)+∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A232125.P13287201812977153433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239747 (A268191 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)).toNat

end

end A232125.P13287201812977153433

/-!
# A232127: Maximal number of digits that can be appended to prime(n) preserving primality at each step.

The programs for A232127, there is no canonical definition to state claims against.
-/

/-! ## A232127.P1857344306901906993

`A232128(A000040(n+1))`
-/

namespace A232127.P1857344306901906993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (A000040 (n + 1)).toNat

end

end A232127.P1857344306901906993

/-! ## A232127.P16688923853152905827

`A232128(A008578(n+2))`
-/

namespace A232127.P16688923853152905827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (A008578 (n + 2)).toNat

end

end A232127.P16688923853152905827

/-! ## A232127.P15548327828091376615

`A232128(A182986(n+2))`
-/

namespace A232127.P15548327828091376615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (A182986 (n + 2)).toNat

end

end A232127.P15548327828091376615

/-! ## A232127.P6699508244688416888

`A232128(record[A006530(n+2)])`
-/

namespace A232127.P6699508244688416888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232127.P6699508244688416888

/-! ## A232127.P3966121410604885402

`A232128(record[A014963(n+2)])`
-/

namespace A232127.P3966121410604885402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232127.P3966121410604885402

/-! ## A232127.P15289472098910301262

`A232128(record[A020639(n+2)])`
-/

namespace A232127.P15289472098910301262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232127.P15289472098910301262

/-! ## A232127.P4487245693742649157

`A232128(A207790(2*(n+1)))`
-/

namespace A232127.P4487245693742649157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232128 (A207790 (2 * (n + 1))).toNat

end

end A232127.P4487245693742649157

/-!
# A232130: Number of (n+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232130, there is no canonical definition to state claims against.
-/

/-! ## A232130.P8087801019269450619

`A232137((n+1)²+n²)`
-/

namespace A232130.P8087801019269450619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 ((n + 1) ^ 2 + n ^ 2)

end

end A232130.P8087801019269450619

/-!
# A232131: Number of (n+1) X (2+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232131, there is no canonical definition to state claims against.
-/

/-! ## A232131.P11749853108092221085

`ogf((36-64x+32x^2)/(1-22x+36x^2-16x^3))`
-/

namespace A232131.P11749853108092221085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [36, -64, 32] [1, -22, 36, -16] n

end

end A232131.P11749853108092221085

/-! ## A232131.P13897483473542793824

`4*A231134(2*(n+1))`
-/

namespace A232131.P13897483473542793824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A231134 (2 * (n + 1))

end

end A232131.P13897483473542793824

/-! ## A232131.P1546172205512553549

`Δ[A231125(2*n+1)]-A231125(2*n+1)`
-/

namespace A232131.P1546172205512553549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231125 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A231125 (2 * n + 1)

end

end A232131.P1546172205512553549

/-! ## A232131.P2141967610260001359

`A232137(∑[n+2])`
-/

namespace A232131.P2141967610260001359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232131.P2141967610260001359

/-! ## A232131.P786355947905473852

`record[A232137(abs(A201163(n)))]`
-/

namespace A232131.P786355947905473852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232131.P786355947905473852

/-!
# A232132: Number of (n+1)X(3+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232132, there is no canonical definition to state claims against.
-/

/-! ## A232132.P14529382162357141827

`A232137(∑[n+3]+1)`
-/

namespace A232132.P14529382162357141827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232132.P14529382162357141827

/-! ## A232132.P10895771419554879043

`lcm(2, A232137(A034856(n+2)))`
-/

namespace A232132.P10895771419554879043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232137 (A034856 (n + 2)).toNat)

end

end A232132.P10895771419554879043

/-! ## A232132.P3873060405706201951

`A232137(A034856(n+2))+A184955(n)`
-/

namespace A232132.P3873060405706201951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A034856 (n + 2)).toNat + A184955 n

end

end A232132.P3873060405706201951

/-! ## A232132.P12740511696144937116

`A057427(n+1)*A232137(A034856(n+2))`
-/

namespace A232132.P12740511696144937116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A232137 (A034856 (n + 2)).toNat

end

end A232132.P12740511696144937116

/-! ## A232132.P14754751163353979496

`A232137(A034856(n+2))*A285668(2*(n+1))`
-/

namespace A232132.P14754751163353979496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A034856 (n + 2)).toNat * A285668 (2 * (n + 1))

end

end A232132.P14754751163353979496

/-!
# A232133: Number of (n+1) X (4+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232133, there is no canonical definition to state claims against.
-/

/-! ## A232133.P16975295591172994538

`A232137(A141214(n+1))`
-/

namespace A232133.P16975295591172994538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A141214 (n + 1)).toNat

end

end A232133.P16975295591172994538

/-! ## A232133.P11688193924860798076

`A232137(Δ[A006503(n+1)])`
-/

namespace A232133.P11688193924860798076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (f1 (n + 1) - f1 n).toNat

end

end A232133.P11688193924860798076

/-! ## A232133.P17562560056603090572

`A232137(A052905(n+1)+2)`
-/

namespace A232133.P17562560056603090572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A052905 (n + 1) + 2).toNat

end

end A232133.P17562560056603090572

/-!
# A232134: Number of (n+1)X(5+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232134, there is no canonical definition to state claims against.
-/

/-! ## A232134.P16797783449214754603

`A232137(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A232134.P16797783449214754603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A232134.P16797783449214754603

/-!
# A232138: Number of (1+1) X (n+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232138, the canonical program `A232138.P7517412117954522164` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232138 has offset 1).

The definition of A232138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232138.P7517412117954522164

`ogf((6-16x^2+6x^3)/(1-6x+11x^3-4x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232138

/-- `ogf((6-16x^2+6x^3)/(1-6x+11x^3-4x^4))` -/
def P7517412117954522164.Spec : Prop :=
  ∀ n, P7517412117954522164.a n = A232138 (n + 1)

theorem P7517412117954522164.correct : P7517412117954522164.Spec := by
  intro n
  simp only [A232138, Nat.add_sub_cancel]

end A232138

/-! ## A232138.P4795548061625348079

`A232137(∑[n]+1)`
-/

namespace A232138.P4795548061625348079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232138.P4795548061625348079

namespace A232138

/-- `A232137(∑[n]+1)` -/
def P4795548061625348079.Spec : Prop :=
  ∀ n, P4795548061625348079.a n = A232138 (n + 1)

end A232138

/-! ## A232138.P15142092811728925367

`lcm(2, A232137(A000124(n)))`
-/

namespace A232138.P15142092811728925367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232137 (A000124 n).toNat)

end

end A232138.P15142092811728925367

namespace A232138

/-- `lcm(2, A232137(A000124(n)))` -/
def P15142092811728925367.Spec : Prop :=
  ∀ n, (P15142092811728925367.a n : ℤ) = A232138 (n + 1)

end A232138

/-! ## A232138.P12382331274324099096

`record[A010054(n)*A232137(n+1)]`
-/

namespace A232138.P12382331274324099096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232138.P12382331274324099096

namespace A232138

/-- `record[A010054(n)*A232137(n+1)]` -/
def P12382331274324099096.Spec : Prop :=
  ∀ n, P12382331274324099096.a n = A232138 (n + 1)

end A232138

/-! ## A232138.P7634163189763437983

`record[gcd(A002262(n), A232137(n+1))]`
-/

namespace A232138.P7634163189763437983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232137 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232138.P7634163189763437983

namespace A232138

/-- `record[gcd(A002262(n), A232137(n+1))]` -/
def P7634163189763437983.Spec : Prop :=
  ∀ n, (P7634163189763437983.a n : ℤ) = A232138 (n + 1)

end A232138

/-!
# A232139: Number of (2+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232139, there is no canonical definition to state claims against.
-/

/-! ## A232139.P8323854318565688520

`A232137(∑[n+1]+2)`
-/

namespace A232139.P8323854318565688520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232139.P8323854318565688520

/-!
# A232140: Number of (3+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232140, there is no canonical definition to state claims against.
-/

/-! ## A232140.P13136846389664908838

`A232137(∑[n+2]+4)`
-/

namespace A232140.P13136846389664908838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232140.P13136846389664908838

/-! ## A232140.P4079802294087076882

`lcm(2, A232137(A167614(n+1)))`
-/

namespace A232140.P4079802294087076882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232137 (A167614 (n + 1)).toNat)

end

end A232140.P4079802294087076882

/-! ## A232140.P1192846957135428253

`A232137(A167614(n+1))+A184955(n)`
-/

namespace A232140.P1192846957135428253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A167614 (n + 1)).toNat + A184955 n

end

end A232140.P1192846957135428253

/-! ## A232140.P12598673024877353603

`A232137(A167614(n+1))+A230398(n+1)`
-/

namespace A232140.P12598673024877353603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A167614 (n + 1)).toNat + A230398 (n + 1)

end

end A232140.P12598673024877353603

/-! ## A232140.P14767673599320981458

`A232137(A167614(n+1))/A032548(n+1)`
-/

namespace A232140.P14767673599320981458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232137 (A167614 (n + 1)).toNat : ℚ) / (A032548 (n + 1) : ℚ)

end

end A232140.P14767673599320981458

/-!
# A232141: Number of (4+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232141, there is no canonical definition to state claims against.
-/

/-! ## A232141.P6040575121355277813

`A232137(A141214(n)+7)`
-/

namespace A232141.P6040575121355277813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A141214 n + 7).toNat

end

end A232141.P6040575121355277813

/-! ## A232141.P2472416746816947853

`A232137(A052905(n)+9)`
-/

namespace A232141.P2472416746816947853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A052905 n + 9).toNat

end

end A232141.P2472416746816947853

/-! ## A232141.P13617731606632939024

`A232137(A055999(n)+10)`
-/

namespace A232141.P13617731606632939024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A055999 n + 10).toNat

end

end A232141.P13617731606632939024

/-! ## A232141.P6709497965508049638

`A232137(A167614(n+2)+1)`
-/

namespace A232141.P6709497965508049638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A167614 (n + 2) + 1).toNat

end

end A232141.P6709497965508049638

/-! ## A232141.P181465213677801413

`A232137(eq[5, A131818(n+1)])`
-/

namespace A232141.P181465213677801413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232141.P181465213677801413

/-!
# A232142: Number of (5+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A232142, there is no canonical definition to state claims against.
-/

/-! ## A232142.P5759206168666567504

`A232137(A167499(n+3))`
-/

namespace A232142.P5759206168666567504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232137 (A167499 (n + 3)).toNat

end

end A232142.P5759206168666567504

/-!
# A232145: Number of n X 2 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232145, the canonical program `A232145.P15903208248742669848` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232145 has offset 1).

The definition of A232145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232145.P15903208248742669848

`ogf((3+8x+12x^2-11x^4-5x^5)/(1-5x-6x^2-8x^3-3x^4+8x^5+5x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232145

/-- `ogf((3+8x+12x^2-11x^4-5x^5)/(1-5x-6x^2-8x^3-3x^4+8x^5+5x^6))` -/
def P15903208248742669848.Spec : Prop :=
  ∀ n, P15903208248742669848.a n = A232145 (n + 1)

theorem P15903208248742669848.correct : P15903208248742669848.Spec := by
  intro n
  simp only [A232145, Nat.add_sub_cancel]

end A232145

/-! ## A232145.P6091376730547073318

`A232368(∑[n+1]+2)`
-/

namespace A232145.P6091376730547073318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232145.P6091376730547073318

namespace A232145

/-- `A232368(∑[n+1]+2)` -/
def P6091376730547073318.Spec : Prop :=
  ∀ n, P6091376730547073318.a n = A232145 (n + 1)

end A232145

/-! ## A232145.P10600872926486567794

`record[A232368(abs(A201163(n)))]`
-/

namespace A232145.P10600872926486567794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232145.P10600872926486567794

namespace A232145

/-- `record[A232368(abs(A201163(n)))]` -/
def P10600872926486567794.Spec : Prop :=
  ∀ n, P10600872926486567794.a n = A232145 (n + 1)

end A232145

/-! ## A232145.P9753209275735426572

`record[A232368(Δ[A003453(n+5)])]`
-/

namespace A232145.P9753209275735426572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232145.P9753209275735426572

namespace A232145

/-- `record[A232368(Δ[A003453(n+5)])]` -/
def P9753209275735426572.Spec : Prop :=
  ∀ n, P9753209275735426572.a n = A232145 (n + 1)

end A232145

/-! ## A232145.P12283897446215575272

`A232149(∑[n+2])`
-/

namespace A232145.P12283897446215575272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232145.P12283897446215575272

namespace A232145

/-- `A232149(∑[n+2])` -/
def P12283897446215575272.Spec : Prop :=
  ∀ n, P12283897446215575272.a n = A232145 (n + 1)

end A232145

/-!
# A232146: Number of nX3 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232146, there is no canonical definition to state claims against.
-/

/-! ## A232146.P44546889234439565

`A232149(∑[n+3]+1)`
-/

namespace A232146.P44546889234439565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232146.P44546889234439565

/-! ## A232146.P371600162549927867

`record[A232149(A198464(n+1))]`
-/

namespace A232146.P371600162549927867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232146.P371600162549927867

/-!
# A232147: Number of n X 4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232147, there is no canonical definition to state claims against.
-/

/-! ## A232147.P5673770904534975728

`A232149(A141214(n+1))`
-/

namespace A232147.P5673770904534975728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A141214 (n + 1)).toNat

end

end A232147.P5673770904534975728

/-! ## A232147.P1518879613517067159

`A232149(eq[3, A193592(n)])`
-/

namespace A232147.P1518879613517067159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232147.P1518879613517067159

/-! ## A232147.P2270182946143675937

`A232149(Δ[A006503(n+1)])`
-/

namespace A232147.P2270182946143675937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (f1 (n + 1) - f1 n).toNat

end

end A232147.P2270182946143675937

/-! ## A232147.P4871587612600241539

`A232149(Δ[A034857(n+1)])`
-/

namespace A232147.P4871587612600241539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (f1 (n + 1) - f1 n).toNat

end

end A232147.P4871587612600241539

/-! ## A232147.P13447824463946952067

`A232149(A052905(n+1)+2)`
-/

namespace A232147.P13447824463946952067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A052905 (n + 1) + 2).toNat

end

end A232147.P13447824463946952067

/-!
# A232148: Number of n X 5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232148, there is no canonical definition to state claims against.
-/

/-! ## A232148.P14401965004871716877

`A232149(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A232148.P14401965004871716877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A232148.P14401965004871716877

/-! ## A232148.P3530897571486287831

`or(1, A232149(A046691(n+3)))`
-/

namespace A232148.P3530897571486287831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232149 (A046691 (n + 3)).toNat)

end

end A232148.P3530897571486287831

/-! ## A232148.P1237853343176124740

`A014196(n)*A232149(A046691(n+3))`
-/

namespace A232148.P1237853343176124740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014196 n * A232149 (A046691 (n + 3)).toNat

end

end A232148.P1237853343176124740

/-!
# A232149: T(n,k)=Number of nXk 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232149, there is no canonical definition to state claims against.
-/

/-! ## A232149.P339538481210475975

`or(A081515(A337414(n+1)), A337414(n+1))`
-/

namespace A232149.P339538481210475975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081515 (A337414 (n + 1)).toNat) (A337414 (n + 1))

end

end A232149.P339538481210475975

/-! ## A232149.P16155969066489014960

`or(A064576(A208529(n+2)), A221693(n+1))`
-/

namespace A232149.P16155969066489014960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064576 (A208529 (n + 2)).toNat) (A221693 (n + 1))

end

end A232149.P16155969066489014960

/-!
# A232150: Number of 2 X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232150, the canonical program `A232150.P4720538187180145149` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232150 has offset 1).

The definition of A232150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232150.P4720538187180145149

`ogf((1+17x+49x^2+36x^3-96x^4-72x^5)/(1-6x-4x^2-25x^3-60x^4+24x^5+72x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232150

/-- `ogf((1+17x+49x^2+36x^3-96x^4-72x^5)/(1-6x-4x^2-25x^3-60x^4+24x^5+72x^6))` -/
def P4720538187180145149.Spec : Prop :=
  ∀ n, P4720538187180145149.a n = A232150 (n + 1)

theorem P4720538187180145149.correct : P4720538187180145149.Spec := by
  intro n
  simp only [A232150, Nat.add_sub_cancel]

end A232150

/-! ## A232150.P16231307578110558486

`A232149(∑[n+1]+2)`
-/

namespace A232150.P16231307578110558486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232150.P16231307578110558486

namespace A232150

/-- `A232149(∑[n+1]+2)` -/
def P16231307578110558486.Spec : Prop :=
  ∀ n, P16231307578110558486.a n = A232150 (n + 1)

end A232150

/-! ## A232150.P5042673523620600393

`record[ratio[A232149(A080036(n))]]`
-/

namespace A232150.P5042673523620600393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232150.P5042673523620600393

namespace A232150

/-- `record[ratio[A232149(A080036(n))]]` -/
def P5042673523620600393.Spec : Prop :=
  ∀ n, P5042673523620600393.a n = (A232150 (n + 1) : ℚ)

end A232150

/-! ## A232150.P14438319839986956666

`or(1, A232149(A133263(n+1)))`
-/

namespace A232150.P14438319839986956666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232149 (A133263 (n + 1)).toNat)

end

end A232150.P14438319839986956666

namespace A232150

/-- `or(1, A232149(A133263(n+1)))` -/
def P14438319839986956666.Spec : Prop :=
  ∀ n, P14438319839986956666.a n = A232150 (n + 1)

end A232150

/-! ## A232150.P17917367886632423663

`A232149(A133263(n+1))+A178333(2*n)`
-/

namespace A232150.P17917367886632423663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A133263 (n + 1)).toNat + A178333 (2 * n)

end

end A232150.P17917367886632423663

namespace A232150

/-- `A232149(A133263(n+1))+A178333(2*n)` -/
def P17917367886632423663.Spec : Prop :=
  ∀ n, P17917367886632423663.a n = A232150 (n + 1)

end A232150

/-!
# A232151: Number of 3Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232151, there is no canonical definition to state claims against.
-/

/-! ## A232151.P5364896990182163334

`A232149(∑[n+2]+4)`
-/

namespace A232151.P5364896990182163334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232151.P5364896990182163334

/-! ## A232151.P15494070120069994250

`or(1, A232149(A167614(n+1)))`
-/

namespace A232151.P15494070120069994250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232149 (A167614 (n + 1)).toNat)

end

end A232151.P15494070120069994250

/-! ## A232151.P5534610415318486489

`A232149(A167614(n+1))%A013827(n)`
-/

namespace A232151.P5534610415318486489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232149 (A167614 (n + 1)).toNat) (A013827 n)

end

end A232151.P5534610415318486489

/-! ## A232151.P14090611845562750729

`A232149(A167614(n+1))*A259094(n+1)`
-/

namespace A232151.P14090611845562750729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A167614 (n + 1)).toNat * A259094 (n + 1)

end

end A232151.P14090611845562750729

/-! ## A232151.P8957580751435062972

`A232149(A167614(n+1))*A348039(n+1)`
-/

namespace A232151.P8957580751435062972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A167614 (n + 1)).toNat * A348039 (n + 1)

end

end A232151.P8957580751435062972

/-!
# A232152: Number of 4Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232152, there is no canonical definition to state claims against.
-/

/-! ## A232152.P9824794957397844159

`A232149(A141214(n)+7)`
-/

namespace A232152.P9824794957397844159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A141214 n + 7).toNat

end

end A232152.P9824794957397844159

/-! ## A232152.P6492557859059152376

`A232149(A052905(n)+9)`
-/

namespace A232152.P6492557859059152376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A052905 n + 9).toNat

end

end A232152.P6492557859059152376

/-! ## A232152.P2838497837128569879

`A232149(A055999(n)+10)`
-/

namespace A232152.P2838497837128569879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A055999 n + 10).toNat

end

end A232152.P2838497837128569879

/-! ## A232152.P5436496225970325604

`A232149(A167614(n+2)+1)`
-/

namespace A232152.P5436496225970325604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A167614 (n + 2) + 1).toNat

end

end A232152.P5436496225970325604

/-! ## A232152.P2994205148586285922

`A232149(A000124(n+3)+3)`
-/

namespace A232152.P2994205148586285922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A000124 (n + 3) + 3).toNat

end

end A232152.P2994205148586285922

/-!
# A232153: Number of 5Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, diagonally or antidiagonally.

The programs for A232153, there is no canonical definition to state claims against.
-/

/-! ## A232153.P5714750980498987778

`A232149(A155212(n)+13)`
-/

namespace A232153.P5714750980498987778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A155212 n + 13).toNat

end

end A232153.P5714750980498987778

/-! ## A232153.P7706382695581389334

`A232149(A056000(n)+15)`
-/

namespace A232153.P7706382695581389334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (A056000 n + 15).toNat

end

end A232153.P7706382695581389334

/-! ## A232153.P5513031478265028223

`A232149(eq[7, A066657(n)])`
-/

namespace A232153.P5513031478265028223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232153.P5513031478265028223

/-! ## A232153.P16824474979339745742

`A232149(eq[6, A131818(n+1)])`
-/

namespace A232153.P16824474979339745742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232153.P16824474979339745742

/-! ## A232153.P16964490989188413728

`A232149(eq[6, A135223(n+1)])`
-/

namespace A232153.P16964490989188413728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232153.P16964490989188413728

/-!
# A232154: Number of n X n 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232154, there is no canonical definition to state claims against.
-/

/-! ## A232154.P12430126929714435840

`A232161(∑[4*n]+1)`
-/

namespace A232154.P12430126929714435840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232154.P12430126929714435840

/-! ## A232154.P3641333505247874982

`A232161(A001844(n))+A033909(n)`
-/

namespace A232154.P3641333505247874982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A001844 n).toNat + A033909 n

end

end A232154.P3641333505247874982

/-! ## A232154.P8579483496159484176

`lcm(A158388(n), A232161(A001844(n)))`
-/

namespace A232154.P8579483496159484176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A232161 (A001844 n).toNat)

end

end A232154.P8579483496159484176

/-! ## A232154.P7036969172257776767

`A007318(C(2, n))*A232161(A001844(n))`
-/

namespace A232154.P7036969172257776767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A232161 (A001844 n).toNat

end

end A232154.P7036969172257776767

/-!
# A232155: Number of n X 2 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232155, the canonical program `A232155.P17525873938728510102` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232155 has offset 1).

The definition of A232155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232155.P17525873938728510102

`ogf((2+10x-14x^2-40x^3-6x^4+48x^5+10x^6+14x^7+30x^8+4x^9-4x^10)/(1-4x-2x^2+13x^3+5x^4-14x^5+3x^6-3x^7-8x^8-x^9+x^10))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232155

/-- `ogf((2+10x-14x^2-40x^3-6x^4+48x^5+10x^6+14x^7+30x^8+4x^9-4x^10)/(1-4x-2x^2+13x^3+5x^4-14x^5+3x^6-3x^7-8x^8-x^9+x^10))` -/
def P17525873938728510102.Spec : Prop :=
  ∀ n, P17525873938728510102.a n = A232155 (n + 1)

theorem P17525873938728510102.correct : P17525873938728510102.Spec := by
  intro n
  simp only [A232155, Nat.add_sub_cancel]

end A232155

/-! ## A232155.P16332816541942764409

`A232161(∑[n+1]+2)`
-/

namespace A232155.P16332816541942764409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232155.P16332816541942764409

namespace A232155

/-- `A232161(∑[n+1]+2)` -/
def P16332816541942764409.Spec : Prop :=
  ∀ n, P16332816541942764409.a n = A232155 (n + 1)

end A232155

/-! ## A232155.P5984234681319193555

`record[A232161(A133263(A057979(n)))]`
-/

namespace A232155.P5984234681319193555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A133263 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232155.P5984234681319193555

namespace A232155

/-- `record[A232161(A133263(A057979(n)))]` -/
def P5984234681319193555.Spec : Prop :=
  ∀ n, P5984234681319193555.a n = A232155 (n + 1)

end A232155

/-! ## A232155.P1054556827568558426

`lcm(2, A232161(A000096(n+1)))`
-/

namespace A232155.P1054556827568558426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232161 (A000096 (n + 1)).toNat)

end

end A232155.P1054556827568558426

namespace A232155

/-- `lcm(2, A232161(A000096(n+1)))` -/
def P1054556827568558426.Spec : Prop :=
  ∀ n, (P1054556827568558426.a n : ℤ) = A232155 (n + 1)

end A232155

/-! ## A232155.P17785414739902848512

`A232161(A000096(n+1))+A000038(n+1)`
-/

namespace A232155.P17785414739902848512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A232155.P17785414739902848512

namespace A232155

/-- `A232161(A000096(n+1))+A000038(n+1)` -/
def P17785414739902848512.Spec : Prop :=
  ∀ n, P17785414739902848512.a n = A232155 (n + 1)

end A232155

/-!
# A232156: Number of nX3 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232156, there is no canonical definition to state claims against.
-/

/-! ## A232156.P12757503995495810976

`A232161(∑[n+2]+4)`
-/

namespace A232156.P12757503995495810976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232156.P12757503995495810976

/-! ## A232156.P13789738684459750231

`lcm(2, A232161(A167614(n+1)))`
-/

namespace A232156.P13789738684459750231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232161 (A167614 (n + 1)).toNat)

end

end A232156.P13789738684459750231

/-! ## A232156.P17077629712941983050

`A232161(A167614(n+1))+A185284(n)`
-/

namespace A232156.P17077629712941983050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A167614 (n + 1)).toNat + A185284 n

end

end A232156.P17077629712941983050

/-! ## A232156.P2698071832548482740

`A232161(A167614(n+1))%A041546(n)`
-/

namespace A232156.P2698071832548482740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232161 (A167614 (n + 1)).toNat) (A041546 n)

end

end A232156.P2698071832548482740

/-! ## A232156.P17154690819064714180

`A232161(A034856(n+2))%A297581(n+1)`
-/

namespace A232156.P17154690819064714180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232161 (A034856 (n + 2)).toNat) (A297581 (n + 1))

end

end A232156.P17154690819064714180

/-!
# A232157: Number of nX4 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232157, there is no canonical definition to state claims against.
-/

/-! ## A232157.P17930135627753534958

`A232161(A141214(n)+7)`
-/

namespace A232157.P17930135627753534958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A141214 n + 7).toNat

end

end A232157.P17930135627753534958

/-! ## A232157.P7264058739174205845

`A232161(A052905(n)+9)`
-/

namespace A232157.P7264058739174205845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A052905 n + 9).toNat

end

end A232157.P7264058739174205845

/-! ## A232157.P4772627284895336664

`A232161(A055999(n)+10)`
-/

namespace A232157.P4772627284895336664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A055999 n + 10).toNat

end

end A232157.P4772627284895336664

/-! ## A232157.P6411727899959513017

`A232161(A167614(n+2)+1)`
-/

namespace A232157.P6411727899959513017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A167614 (n + 2) + 1).toNat

end

end A232157.P6411727899959513017

/-! ## A232157.P15477587944289569214

`A232161(A166136(n+2)-2)`
-/

namespace A232157.P15477587944289569214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A166136 (n + 2) - 2).toNat

end

end A232157.P15477587944289569214

/-!
# A232158: Number of nX5 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232158, there is no canonical definition to state claims against.
-/

/-! ## A232158.P2598076860034541006

`A232161(A056000(n)+15)`
-/

namespace A232158.P2598076860034541006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A056000 n + 15).toNat

end

end A232158.P2598076860034541006

/-! ## A232158.P7716932816208270300

`A232161(eq[6, A131818(n+1)])`
-/

namespace A232158.P7716932816208270300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232158.P7716932816208270300

/-! ## A232158.P5491817431791182504

`A232161(A167499(n+3))+A025469(n)`
-/

namespace A232158.P5491817431791182504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A167499 (n + 3)).toNat + A025469 n

end

end A232158.P5491817431791182504

/-! ## A232158.P1368220600782257710

`or(A134309(n+3), A232161(A167499(n+3)))`
-/

namespace A232158.P1368220600782257710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134309 (n + 3)) (A232161 (A167499 (n + 3)).toNat)

end

end A232158.P1368220600782257710

/-! ## A232158.P13673171050761869210

`A232161(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A232158.P13673171050761869210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A232158.P13673171050761869210

/-!
# A232159: Number of nX6 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232159, there is no canonical definition to state claims against.
-/

/-! ## A232159.P17819413078895368285

`A232161(A166136(n+4))`
-/

namespace A232159.P17819413078895368285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A166136 (n + 4)).toNat

end

end A232159.P17819413078895368285

/-! ## A232159.P13603434032705609424

`A232161(eq[7, A131818(n+1)])`
-/

namespace A232159.P13603434032705609424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232159.P13603434032705609424

/-! ## A232159.P9672908072110699290

`A232161(A374007(n+1))`
-/

namespace A232159.P9672908072110699290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A374007 (n + 1)).toNat

end

end A232159.P9672908072110699290

/-! ## A232159.P5668629323670925699

`A232161(A052905(n+3))`
-/

namespace A232159.P5668629323670925699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A052905 (n + 3)).toNat

end

end A232159.P5668629323670925699

/-! ## A232159.P3995003267227378710

`A232161(eq[3, A219347(n)])`
-/

namespace A232159.P3995003267227378710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232159.P3995003267227378710

/-!
# A232160: Number of n X 7 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232160, there is no canonical definition to state claims against.
-/

/-! ## A232160.P13790018891445413251

`A232161(A167487(5+n))`
-/

namespace A232160.P13790018891445413251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A167487 (5 + n)).toNat

end

end A232160.P13790018891445413251

/-! ## A232160.P4032975426599732907

`A232161(eq[11, A066657(n)])`
-/

namespace A232160.P4032975426599732907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232160.P4032975426599732907

/-! ## A232160.P4833324230480822610

`A232161(eq[8, A131818(n+1)])`
-/

namespace A232160.P4833324230480822610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232160.P4833324230480822610

/-! ## A232160.P8956268138970422302

`A232161(A374008(n+1))`
-/

namespace A232160.P8956268138970422302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A374008 (n + 1)).toNat

end

end A232160.P8956268138970422302

/-! ## A232160.P10562179351390849038

`A232161(A055999(n+4))`
-/

namespace A232160.P10562179351390849038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232161 (A055999 (n + 4)).toNat

end

end A232160.P10562179351390849038

/-!
# A232161: T(n,k)=Number of nXk 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, vertically or antidiagonally, and no adjacent values equal.

The programs for A232161, there is no canonical definition to state claims against.
-/

/-! ## A232161.P9651866229197143514

`A160406(A267644(n+1)%A093804(n+1))`
-/

namespace A232161.P9651866229197143514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160406 (Int.tmod (A267644 (n + 1)) (A093804 (n + 1))).toNat

end

end A232161.P9651866229197143514

/-! ## A232161.P14147009438080984208

`A221139(A134810(n+1))+A033930(A221139(n+1))`
-/

namespace A232161.P14147009438080984208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221139 (A134810 (n + 1)).toNat + A033930 (A221139 (n + 1)).toNat

end

end A232161.P14147009438080984208

/-!
# A232162: Number of Weyl group elements, not containing an s_r factor, which contribute nonzero terms to Kostant's weight multiplicity formula when computing the multiplicity of the zero-weight in the adjoint representation for the Lie algebra of type B and rank n.

The programs for A232162, the canonical program `A232162.P4643264864054769089` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232162 has offset 0).

The definition of A232162 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232162.P5696960379094865107

`ogf((2x^2+x^3)/(1-x-x^2-3x^3-x^4))`
-/

namespace A232162.P5696960379094865107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1] [1, -1, -1, -3, -1] n

end

end A232162.P5696960379094865107

namespace A232162

/-- `ogf((2x^2+x^3)/(1-x-x^2-3x^3-x^4))` -/
def P5696960379094865107.Spec : Prop :=
  ∀ n, P5696960379094865107.a n = A232162 n

end A232162

/-! ## A232162.P4643264864054769089

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232162

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P4643264864054769089.Spec : Prop :=
  ∀ n, (P4643264864054769089.a n : ℤ) = A232162 n

theorem P4643264864054769089.correct : P4643264864054769089.Spec := by
  intro n
  simp only [A232162]

end A232162

/-! ## A232162.P17999121472917741274

`A196423(A028310(n))-A232164(A028310(n))`
-/

namespace A232162.P17999121472917741274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (A028310 n).toNat - A232164 (A028310 n).toNat

end

end A232162.P17999121472917741274

namespace A232162

/-- `A196423(A028310(n))-A232164(A028310(n))` -/
def P17999121472917741274.Spec : Prop :=
  ∀ n, P17999121472917741274.a n = A232162 n

end A232162

/-! ## A232162.P8147428113681516084

`Δ[A214663(n)]-A232165(n)`
-/

namespace A232162.P8147428113681516084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232165 n

end

end A232162.P8147428113681516084

namespace A232162

/-- `Δ[A214663(n)]-A232165(n)` -/
def P8147428113681516084.Spec : Prop :=
  ∀ n, P8147428113681516084.a n = A232162 n

end A232162

/-! ## A232162.P17311605934027668971

`Δ[A232164(n+1)]-A232165(n)`
-/

namespace A232162.P17311605934027668971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A232165 n

end

end A232162.P17311605934027668971

namespace A232162

/-- `Δ[A232164(n+1)]-A232165(n)` -/
def P17311605934027668971.Spec : Prop :=
  ∀ n, P17311605934027668971.a n = A232162 n

end A232162

/-! ## A232162.P2820935636550611488

`A214663(n+1)-(A232165(n)+A214663(n))`
-/

namespace A232162.P2820935636550611488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 1) - (A232165 n + A214663 n)

end

end A232162.P2820935636550611488

namespace A232162

/-- `A214663(n+1)-(A232165(n)+A214663(n))` -/
def P2820935636550611488.Spec : Prop :=
  ∀ n, P2820935636550611488.a n = A232162 n

end A232162

/-! ## A232162.P5290332822951082015

`A232163(n+2)-A243094(n+1)`
-/

namespace A232162.P5290332822951082015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232163 (n + 2) - A243094 (n + 1)

end

end A232162.P5290332822951082015

namespace A232162

/-- `A232163(n+2)-A243094(n+1)` -/
def P5290332822951082015.Spec : Prop :=
  ∀ n, P5290332822951082015.a n = A232162 n

end A232162

/-! ## A232162.P8015857125928813700

`A214663(n+2)%A196423(n+1)`
-/

namespace A232162.P8015857125928813700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214663 (n + 2)) (A196423 (n + 1))

end

end A232162.P8015857125928813700

namespace A232162

/-- `A214663(n+2)%A196423(n+1)` -/
def P8015857125928813700.Spec : Prop :=
  ∀ n, P8015857125928813700.a n = A232162 n

end A232162

/-! ## A232162.P9065203382556881270

`A232164(n+3)%A196423(n+1)`
-/

namespace A232162.P9065203382556881270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232164 (n + 3)) (A196423 (n + 1))

end

end A232162.P9065203382556881270

namespace A232162

/-- `A232164(n+3)%A196423(n+1)` -/
def P9065203382556881270.Spec : Prop :=
  ∀ n, P9065203382556881270.a n = A232162 n

end A232162

/-! ## A232162.P14900343230300971778

`Δ[A196423(n+1)]-2*A214663(n)`
-/

namespace A232162.P14900343230300971778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A214663 n

end

end A232162.P14900343230300971778

namespace A232162

/-- `Δ[A196423(n+1)]-2*A214663(n)` -/
def P14900343230300971778.Spec : Prop :=
  ∀ n, P14900343230300971778.a n = A232162 n

end A232162

/-!
# A232163: Cardinality of the Weyl alternation set corresponding to the zero-weight in the adjoint representation of the Lie algebra so(2n+1).

The programs for A232163, the canonical program `A232163.P9445820061790615785` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232163 has offset 0).

The definition of A232163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232163.P11805986471174631925

`ogf((x+x^2+2x^3)/(1-x-x^2-3x^3-x^4))`
-/

namespace A232163.P11805986471174631925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2] [1, -1, -1, -3, -1] n

end

end A232163.P11805986471174631925

namespace A232163

/-- `ogf((x+x^2+2x^3)/(1-x-x^2-3x^3-x^4))` -/
def P11805986471174631925.Spec : Prop :=
  ∀ n, P11805986471174631925.a n = A232163 n

end A232163

/-! ## A232163.P9445820061790615785

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232163

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P9445820061790615785.Spec : Prop :=
  ∀ n, (P9445820061790615785.a n : ℤ) = A232163 n

theorem P9445820061790615785.correct : P9445820061790615785.Spec := by
  intro n
  simp only [A232163]

end A232163

/-! ## A232163.P697978799297023003

`A062108(A073357(n)+A035618(n+1))`
-/

namespace A232163.P697978799297023003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A073357 n + A035618 (n + 1)).toNat

end

end A232163.P697978799297023003

namespace A232163

/-- `A062108(A073357(n)+A035618(n+1))` -/
def P697978799297023003.Spec : Prop :=
  ∀ n, P697978799297023003.a n = A232163 n

end A232163

/-! ## A232163.P10690699330487170621

`A033182(9*floor((n+4)*2^(n-2)))`
-/

namespace A232163.P10690699330487170621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (9 * ⌊(n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋).toNat

end

end A232163.P10690699330487170621

namespace A232163

/-- `A033182(9*floor((n+4)*2^(n-2)))` -/
def P10690699330487170621.Spec : Prop :=
  ∀ n, P10690699330487170621.a n = A232163 n

end A232163

/-! ## A232163.P14114049975766691177

`A194698(A021008(n+1))`
-/

namespace A232163.P14114049975766691177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A021008 (n + 1)).toNat

end

end A232163.P14114049975766691177

namespace A232163

/-- `A194698(A021008(n+1))` -/
def P14114049975766691177.Spec : Prop :=
  ∀ n, P14114049975766691177.a n = A232163 n

end A232163

/-!
# A232164: Number of Weyl group elements, not containing an s_r factor, which contribute nonzero terms to Kostant's weight multiplicity formula when computing the multiplicity of the zero-weight in the adjoint representation for the Lie algebra of type C and rank n.

The programs for A232164, the canonical program `A232164.P5845593849868041813` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232164 has offset 0).

The definition of A232164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232164.P17849580725093149564

`ogf(x/(1-x-x^2-3x^3-x^4))`
-/

namespace A232164.P17849580725093149564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, -1, -3, -1] n

end

end A232164.P17849580725093149564

namespace A232164

/-- `ogf(x/(1-x-x^2-3x^3-x^4))` -/
def P17849580725093149564.Spec : Prop :=
  ∀ n, P17849580725093149564.a n = A232164 n

end A232164

/-! ## A232164.P5845593849868041813

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232164

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P5845593849868041813.Spec : Prop :=
  ∀ n, (P5845593849868041813.a n : ℤ) = A232164 n

theorem P5845593849868041813.correct : P5845593849868041813.Spec := by
  intro n
  simp only [A232164]

end A232164

/-! ## A232164.P14293164542390180702

`A232165(n)-a(n-1)` with `a(0)=0`
-/

namespace A232164.P14293164542390180702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A232165 n - a (n - 1)

end

end A232164.P14293164542390180702

namespace A232164

/-- `A232165(n)-a(n-1)` -/
def P14293164542390180702.Spec : Prop :=
  ∀ n, P14293164542390180702.a n = A232164 n

end A232164

/-! ## A232164.P4083365913187498339

`A232165(n+1)-A214663(n)`
-/

namespace A232164.P4083365913187498339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232165 (n + 1) - A214663 n

end

end A232164.P4083365913187498339

namespace A232164

/-- `A232165(n+1)-A214663(n)` -/
def P4083365913187498339.Spec : Prop :=
  ∀ n, P4083365913187498339.a n = A232164 n

end A232164

/-! ## A232164.P6958793275438699520

`A232162(n+1)-A232165(n)`
-/

namespace A232164.P6958793275438699520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (n + 1) - A232165 n

end

end A232164.P6958793275438699520

namespace A232164

/-- `A232162(n+1)-A232165(n)` -/
def P6958793275438699520.Spec : Prop :=
  ∀ n, P6958793275438699520.a n = A232164 n

end A232164

/-! ## A232164.P11246102170141333909

`A214663(abs(1-n))%A243094(n)`
-/

namespace A232164.P11246102170141333909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214663 |1 - (n : ℤ)|.toNat) (A243094 n)

end

end A232164.P11246102170141333909

namespace A232164

/-- `A214663(abs(1-n))%A243094(n)` -/
def P11246102170141333909.Spec : Prop :=
  ∀ n, P11246102170141333909.a n = A232164 n

end A232164

/-! ## A232164.P7588466091072405337

`∑[A196537(n+1)]-A196423(n+1)`
-/

namespace A232164.P7588466091072405337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A196423 (n + 1)

end

end A232164.P7588466091072405337

namespace A232164

/-- `∑[A196537(n+1)]-A196423(n+1)` -/
def P7588466091072405337.Spec : Prop :=
  ∀ n, P7588466091072405337.a n = A232164 n

end A232164

/-! ## A232164.P16814609357064002767

`∑[A196537(A000027(n+1))]%A196423(n+1)`
-/

namespace A232164.P16814609357064002767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196537 (A000027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A196423 (n + 1))

end

end A232164.P16814609357064002767

namespace A232164

/-- `∑[A196537(A000027(n+1))]%A196423(n+1)` -/
def P16814609357064002767.Spec : Prop :=
  ∀ n, P16814609357064002767.a n = A232164 n

end A232164

/-! ## A232164.P4958767674512890900

`Δ[A214663(n+1)]-A196423(n+1)`
-/

namespace A232164.P4958767674512890900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A196423 (n + 1)

end

end A232164.P4958767674512890900

namespace A232164

/-- `Δ[A214663(n+1)]-A196423(n+1)` -/
def P4958767674512890900.Spec : Prop :=
  ∀ n, P4958767674512890900.a n = A232164 n

end A232164

/-! ## A232164.P15867841940404601970

`A214663(n+2)-(A214663(n+1)+A196423(n+1))`
-/

namespace A232164.P15867841940404601970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 2) - (A214663 (n + 1) + A196423 (n + 1))

end

end A232164.P15867841940404601970

namespace A232164

/-- `A214663(n+2)-(A214663(n+1)+A196423(n+1))` -/
def P15867841940404601970.Spec : Prop :=
  ∀ n, P15867841940404601970.a n = A232164 n

end A232164

/-!
# A232165: Cardinality of the Weyl alternation set corresponding to the zero-weight in the adjoint representation of the Lie algebra sp(2n).

The programs for A232165, the canonical program `A232165.P15779423753795597952` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232165 has offset 0).

The definition of A232165 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232165.P16543803976002098451

`ogf((x+x^2)/(1-x-x^2-3x^3-x^4))`
-/

namespace A232165.P16543803976002098451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -1, -1, -3, -1] n

end

end A232165.P16543803976002098451

namespace A232165

/-- `ogf((x+x^2)/(1-x-x^2-3x^3-x^4))` -/
def P16543803976002098451.Spec : Prop :=
  ∀ n, P16543803976002098451.a n = A232165 n

end A232165

/-! ## A232165.P15779423753795597952

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232165

/-- `a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` -/
def P15779423753795597952.Spec : Prop :=
  ∀ n, (P15779423753795597952.a n : ℤ) = A232165 n

theorem P15779423753795597952.correct : P15779423753795597952.Spec := by
  intro n
  simp only [A232165]

end A232165

/-! ## A232165.P2595787773999156616

`A232164(n)+A232164((2*n)%(n+1))`
-/

namespace A232165.P2595787773999156616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 n + A232164 (2 * n % (n + 1))

end

end A232165.P2595787773999156616

namespace A232165

/-- `A232164(n)+A232164((2*n)%(n+1))` -/
def P2595787773999156616.Spec : Prop :=
  ∀ n, P2595787773999156616.a n = A232165 n

end A232165

/-! ## A232165.P7708448914081675274

`A232164(A028310(n)-1)+A232164(n)`
-/

namespace A232165.P7708448914081675274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (A028310 n - 1).toNat + A232164 n

end

end A232165.P7708448914081675274

namespace A232165

/-- `A232164(A028310(n)-1)+A232164(n)` -/
def P7708448914081675274.Spec : Prop :=
  ∀ n, P7708448914081675274.a n = A232165 n

end A232165

/-! ## A232165.P5489882568478129751

`A232164(n-A057427(n))+A232164(n)`
-/

namespace A232165.P5489882568478129751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 ((n : ℤ) - A057427 n).toNat + A232164 n

end

end A232165.P5489882568478129751

namespace A232165

/-- `A232164(n-A057427(n))+A232164(n)` -/
def P5489882568478129751.Spec : Prop :=
  ∀ n, P5489882568478129751.a n = A232165 n

end A232165

/-! ## A232165.P11315327487860988185

`A196423(n)-a(n-1)` with `a(0)=0`
-/

namespace A232165.P11315327487860988185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A196423 n - a (n - 1)

end

end A232165.P11315327487860988185

namespace A232165

/-- `A196423(n)-a(n-1)` -/
def P11315327487860988185.Spec : Prop :=
  ∀ n, P11315327487860988185.a n = A232165 n

end A232165

/-! ## A232165.P16794635918289914546

`A232162(n+1)-A232164(n)`
-/

namespace A232165.P16794635918289914546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232162 (n + 1) - A232164 n

end

end A232165.P16794635918289914546

namespace A232165

/-- `A232162(n+1)-A232164(n)` -/
def P16794635918289914546.Spec : Prop :=
  ∀ n, P16794635918289914546.a n = A232165 n

end A232165

/-! ## A232165.P12195427595753725756

`A214663(n+1)-(A232162(n)+A214663(n))`
-/

namespace A232165.P12195427595753725756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 1) - (A232162 n + A214663 n)

end

end A232165.P12195427595753725756

namespace A232165

/-- `A214663(n+1)-(A232162(n)+A214663(n))` -/
def P12195427595753725756.Spec : Prop :=
  ∀ n, P12195427595753725756.a n = A232165 n

end A232165

/-! ## A232165.P15097427716530783876

`A214663(n+2)-A232163(n+2)`
-/

namespace A232165.P15097427716530783876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214663 (n + 2) - A232163 (n + 2)

end

end A232165.P15097427716530783876

namespace A232165

/-- `A214663(n+2)-A232163(n+2)` -/
def P15097427716530783876.Spec : Prop :=
  ∀ n, P15097427716530783876.a n = A232165 n

end A232165

/-! ## A232165.P12796531189790785073

`A232164(n+3)-A232163(n+2)`
-/

namespace A232165.P12796531189790785073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232164 (n + 3) - A232163 (n + 2)

end

end A232165.P12796531189790785073

namespace A232165

/-- `A232164(n+3)-A232163(n+2)` -/
def P12796531189790785073.Spec : Prop :=
  ∀ n, P12796531189790785073.a n = A232165 n

end A232165

/-!
# A232167: Number of composite integers k less than 10^n such that lambda(k) divides 2k-2, where lambda is the Carmichael lambda function (A002322).

The programs for A232167, there is no canonical definition to state claims against.
-/

/-! ## A232167.P18240319314325838730

`∏{e}[A182798(n+1), #+1]+n`
-/

namespace A232167.P18240319314325838730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182798 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + n

end

end A232167.P18240319314325838730

/-! ## A232167.P2432675344794566881

`∑[A197702(A019043(n+2))+1]`
-/

namespace A232167.P2432675344794566881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197702 (A019043 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232167.P2432675344794566881

/-!
# A232169: Squarefree numbers (A005117) with prime factors in a prime(k) + k progression.

The programs for A232169, there is no canonical definition to state claims against.
-/

/-! ## A232169.P17332121521339931569

`A106420(xor(n, A017925(n)))`
-/

namespace A232169.P17332121521339931569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106420 (Int.xor (n : ℤ) (A017925 n)).toNat

end

end A232169.P17332121521339931569

/-!
# A232170: Squarefree numbers (A005117) of form prime(k)*q where q = primes of the form prime(k) + k.

The programs for A232170, there is no canonical definition to state claims against.
-/

/-! ## A232170.P10721652590844745097

`A061067(n)*A061068(n+1)`
-/

namespace A232170.P10721652590844745097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n * A061068 (n + 1)

end

end A232170.P10721652590844745097

/-! ## A232170.P12096903745634049721

`p?[A000040(n+1)+n+1]*A061067(n)`
-/

namespace A232170.P12096903745634049721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A061067 n

end

end A232170.P12096903745634049721

/-! ## A232170.P5295470089971468251

`A014688(A064402(n+1))*A061067(n)`
-/

namespace A232170.P5295470089971468251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A064402 (n + 1)).toNat * A061067 n

end

end A232170.P5295470089971468251

/-! ## A232170.P10752982919052796159

`A000040(A064402(1+n))*A061068(n+1)`
-/

namespace A232170.P10752982919052796159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064402 (1 + n)).toNat * A061068 (n + 1)

end

end A232170.P10752982919052796159

/-! ## A232170.P13240913252847553105

`A000040(record[A214052(n+1)])*A061068(n+1)`
-/

namespace A232170.P13240913252847553105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A061068 (n + 1)

end

end A232170.P13240913252847553105

/-! ## A232170.P14943866646701716721

`A008578(A064402(n+1)+1)*A061068(n+1)`
-/

namespace A232170.P14943866646701716721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A064402 (n + 1) + 1).toNat * A061068 (n + 1)

end

end A232170.P14943866646701716721

/-! ## A232170.P9863535144441284031

`A061067(n)*A095117(A061067(n))`
-/

namespace A232170.P9863535144441284031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n * A095117 (A061067 n).toNat

end

end A232170.P9863535144441284031

/-!
# A232172: Partial sums of second arithmetic derivative of natural numbers.

The programs for A232172, the canonical program `A232172.P17332331024135086382` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232172 has offset 1).

The definition of A232172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232172.P17332331024135086382

`∑[A068346(1+n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A232172

/-- `∑[A068346(1+n)]` -/
def P17332331024135086382.Spec : Prop :=
  ∀ n, P17332331024135086382.a n = A232172 (n + 1)

theorem P17332331024135086382.correct : P17332331024135086382.Spec := by
  intro n
  simp only [A232172, Nat.add_sub_cancel]

end A232172

/-! ## A232172.P14166653579811997310

`∑[-∑[-Δ[A068346(n)]]]`
-/

namespace A232172.P14166653579811997310
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P14166653579811997310

namespace A232172

/-- `∑[-∑[-Δ[A068346(n)]]]` -/
def P14166653579811997310.Spec : Prop :=
  ∀ n, P14166653579811997310.a n = A232172 (n + 1)

end A232172

/-! ## A232172.P17825097022677333059

`∑[A003415(∑[A258057(n)])]`
-/

namespace A232172.P17825097022677333059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P17825097022677333059

namespace A232172

/-- `∑[A003415(∑[A258057(n)])]` -/
def P17825097022677333059.Spec : Prop :=
  ∀ n, P17825097022677333059.a n = A232172 (n + 1)

end A232172

/-! ## A232172.P1214332436166662986

`∑[A003415(A003415(n+1))]`
-/

namespace A232172.P1214332436166662986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P1214332436166662986

namespace A232172

/-- `∑[A003415(A003415(n+1))]` -/
def P1214332436166662986.Spec : Prop :=
  ∀ n, P1214332436166662986.a n = A232172 (n + 1)

theorem P1214332436166662986.correct : P1214332436166662986.Spec := by
  intro n
  simp only [A232172, Nat.add_sub_cancel, A232172.P1214332436166662986.f1, A232172.P1214332436166662986.a, A232172.P17332331024135086382.f1, A232172.P17332331024135086382.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A068346, A068346.P16736836852944168196.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232172

/-! ## A232172.P17497057951801968352

`∑[A258651(A027379(n+2))]`
-/

namespace A232172.P17497057951801968352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A027379 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P17497057951801968352

namespace A232172

/-- `∑[A258651(A027379(n+2))]` -/
def P17497057951801968352.Spec : Prop :=
  ∀ n, P17497057951801968352.a n = A232172 (n + 1)

end A232172

/-! ## A232172.P7199200772907863191

`∑[A258651(A055998(n+2))]`
-/

namespace A232172.P7199200772907863191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A055998 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232172.P7199200772907863191

namespace A232172

/-- `∑[A258651(A055998(n+2))]` -/
def P7199200772907863191.Spec : Prop :=
  ∀ n, P7199200772907863191.a n = A232172 (n + 1)

end A232172

/-!
# A232173: Number of ways of writing n^2 as a sum of n squares.

The programs for A232173, there is no canonical definition to state claims against.
-/

/-! ## A232173.P9017586301771206931

`A302996(∑[4*n])`
-/

namespace A232173.P9017586301771206931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232173.P9017586301771206931

/-! ## A232173.P3632512085070695524

`A302996(A046092(n))+A000007(3*n+1)`
-/

namespace A232173.P3632512085070695524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302996 (A046092 n).toNat + A000007 (3 * n + 1)

end

end A232173.P3632512085070695524

/-! ## A232173.P9395073430886170316

`A094603(2*n+3)*A302996(A046092(n))`
-/

namespace A232173.P9395073430886170316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (2 * n + 3) * A302996 (A046092 n).toNat

end

end A232173.P9395073430886170316

/-! ## A232173.P11802443439614989186

`A302996(A046092(n))+A000142(n+3)%2`
-/

namespace A232173.P11802443439614989186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302996 (A046092 n).toNat + Int.tmod (A000142 (n + 3)) 2

end

end A232173.P11802443439614989186

/-! ## A232173.P9031424498286955749

`A046133(n+1)%2*A302996(A046092(n))`
-/

namespace A232173.P9031424498286955749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046133 (n + 1)) 2 * A302996 (A046092 n).toNat

end

end A232173.P9031424498286955749

/-! ## A232173.P909473503589264811

`A165561(n+1)%2*A302996(A046092(n))`
-/

namespace A232173.P909473503589264811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165561 (n + 1)) 2 * A302996 (A046092 n).toNat

end

end A232173.P909473503589264811

/-! ## A232173.P15288882862677508875

`A359770(A165561(n+1))+A302996(A046092(n))`
-/

namespace A232173.P15288882862677508875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (A165561 (n + 1)).toNat + A302996 (A046092 n).toNat

end

end A232173.P15288882862677508875

/-!
# A232174: Number of ways to write n = x + y (x, y > 0) with x + n*y and x^2 + n*y^2 both prime.

The programs for A232174, there is no canonical definition to state claims against.
-/

/-! ## A232174.P2516786448492073496

`A323880(or(A000225(n), A018805(3*n+1)))`
-/

namespace A232174.P2516786448492073496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323880 (Int.lor (A000225 n) (A018805 (3 * n + 1))).toNat

end

end A232174.P2516786448492073496

/-! ## A232174.P7673609245332736632

`A000120(eq[1, A033784(n)])`
-/

namespace A232174.P7673609245332736632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232174.P7673609245332736632

/-! ## A232174.P7774668716713389840

`A001222(A109906(n)+A001906(n))`
-/

namespace A232174.P7774668716713389840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109906 n + A001906 n).toNat

end

end A232174.P7774668716713389840

/-! ## A232174.P17835549701726877701

`A001222(or(A170908(n), A312163(n)))`
-/

namespace A232174.P17835549701726877701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A170908 n) (A312163 n)).toNat

end

end A232174.P17835549701726877701

/-! ## A232174.P7698561283023939254

`A001222(or(A000045(n), A180603(n+1)))`
-/

namespace A232174.P7698561283023939254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000045 n) (A180603 (n + 1))).toNat

end

end A232174.P7698561283023939254

/-!
# A232175: Least positive k such that n^3 + k^2 is a square, or 0 if there is no such k.

The programs for A232175, there is no canonical definition to state claims against.
-/

/-! ## A232175.P18035143904883349290

`A204995((n+1)^3)%(2^n)`
-/

namespace A232175.P18035143904883349290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204995 ((n + 1) ^ 3)) (2 ^ n : ℤ)

end

end A232175.P18035143904883349290

/-! ## A232175.P11862161218402334467

`A204995((n+1)^3)-A000007(n)`
-/

namespace A232175.P11862161218402334467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 ((n + 1) ^ 3) - A000007 n

end

end A232175.P11862161218402334467

/-! ## A232175.P12891880229145661880

`and(1, A000040(n+1))*A204995((n+1)^3)`
-/

namespace A232175.P12891880229145661880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A204995 ((n + 1) ^ 3)

end

end A232175.P12891880229145661880

/-! ## A232175.P12275052730321271846

`A001221(record[A014963(n+1)])*A204995((n+1)^3)`
-/

namespace A232175.P12275052730321271846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A204995 ((n + 1) ^ 3)

end

end A232175.P12275052730321271846

/-! ## A232175.P14344353037394247861

`∑[n]%A036129(A000110(n))`
-/

namespace A232175.P14344353037394247861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A036129 (A000110 n).toNat)

end

end A232175.P14344353037394247861

/-!
# A232177: Least positive k such that triangular(n) + triangular(k) is a square.

The programs for A232177, there is no canonical definition to state claims against.
-/

/-! ## A232177.P633725042659946230

`A002260(A308085(n+1)+A175631(n+1))`
-/

namespace A232177.P633725042659946230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A308085 (n + 1) + A175631 (n + 1)).toNat

end

end A232177.P633725042659946230

/-!
# A232178: Least k>=0 such that triangular(n) + k^2 is a square, or -1 if no such k exists.

The programs for A232178, there is no canonical definition to state claims against.
-/

/-! ## A232178.P10619697373563167010

`A172038(∑[n]+floor(acot(n)))`
-/

namespace A232178.P10619697373563167010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172038 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A232178.P10619697373563167010

/-! ## A232178.P11488545112073745587

`A172038(∑[n]+C(2, n+2))`
-/

namespace A232178.P11488545112073745587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172038 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 2))

end

end A232178.P11488545112073745587

/-! ## A232178.P1371731231990599111

`A172038(A028310(∑[n]))`
-/

namespace A232178.P1371731231990599111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172038 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A232178.P1371731231990599111

/-! ## A232178.P4549917100734542630

`A172038(A179865(n+1))`
-/

namespace A232178.P4549917100734542630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172038 (A179865 (n + 1)).toNat

end

end A232178.P4549917100734542630

/-! ## A232178.P9244879184638056435

`A172038(sqrt(A253909(∑[n])))`
-/

namespace A232178.P9244879184638056435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172038 (SequenceMachineLib.roundAway (Real.sqrt (A253909 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))).toNat

end

end A232178.P9244879184638056435

/-!
# A232179: Least k >= 0 such that n^2 + triangular(k) is a triangular number.

The programs for A232179, there is no canonical definition to state claims against.
-/

/-! ## A232179.P11781972831022604796

`A118235(floor(acot(n)+n)²)-1`
-/

namespace A232179.P11781972831022604796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ ^ 2).toNat - 1

end

end A232179.P11781972831022604796

/-! ## A232179.P14249179349673757610

`A118235(C(2, n²)+n²)-1`
-/

namespace A232179.P14249179349673757610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (Nat.choose 2 (n ^ 2) + n ^ 2) - 1

end

end A232179.P14249179349673757610

/-! ## A232179.P17509785147268957440

`A118235(round(sqrt(n²+1))²)-1`
-/

namespace A232179.P17509785147268957440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) ^ 2).toNat - 1

end

end A232179.P17509785147268957440

/-!
# A232180: First bisection of harmonic numbers (numerators).

The programs for A232180, the canonical program `A232180.P7403348615314962087` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232180 has offset 1).

The definition of A232180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232180.P7403348615314962087

`A001008(Δ[n²])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A232180

/-- `A001008(Δ[n²])` -/
def P7403348615314962087.Spec : Prop :=
  ∀ n, P7403348615314962087.a n = A232180 (n + 1)

theorem P7403348615314962087.correct : P7403348615314962087.Spec := by
  intro n
  simp only [A232180, Nat.add_sub_cancel]

end A232180

/-! ## A232180.P3218887024724238834

`or(1, A001008(2*n+1))`
-/

namespace A232180.P3218887024724238834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001008 (2 * n + 1))

end

end A232180.P3218887024724238834

namespace A232180

/-- `or(1, A001008(2*n+1))` -/
def P3218887024724238834.Spec : Prop :=
  ∀ n, P3218887024724238834.a n = A232180 (n + 1)

end A232180

/-! ## A232180.P17404942478007279214

`A001008(2*n+1)+A000007(n+1)`
-/

namespace A232180.P17404942478007279214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (2 * n + 1) + A000007 (n + 1)

end

end A232180.P17404942478007279214

namespace A232180

/-- `A001008(2*n+1)+A000007(n+1)` -/
def P17404942478007279214.Spec : Prop :=
  ∀ n, P17404942478007279214.a n = A232180 (n + 1)

end A232180

/-! ## A232180.P13193359242360346121

`A064169(2*n+1)+A002805(2*n+1)`
-/

namespace A232180.P13193359242360346121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (2 * n + 1) + A002805 (2 * n + 1)

end

end A232180.P13193359242360346121

namespace A232180

/-- `A064169(2*n+1)+A002805(2*n+1)` -/
def P13193359242360346121.Spec : Prop :=
  ∀ n, P13193359242360346121.a n = A232180 (n + 1)

end A232180

/-! ## A232180.P963427480199154062

`A064168(2*n+1)-A002805(2*n+1)`
-/

namespace A232180.P963427480199154062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (2 * n + 1) - A002805 (2 * n + 1)

end

end A232180.P963427480199154062

namespace A232180

/-- `A064168(2*n+1)-A002805(2*n+1)` -/
def P963427480199154062.Spec : Prop :=
  ∀ n, P963427480199154062.a n = A232180 (n + 1)

end A232180

/-! ## A232180.P17125300188904123914

`A060746(2*n+1)*A093818(2*n+1)`
-/

namespace A232180.P17125300188904123914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060746 (2 * n + 1) * A093818 (2 * n + 1)

end

end A232180.P17125300188904123914

namespace A232180

/-- `A060746(2*n+1)*A093818(2*n+1)` -/
def P17125300188904123914.Spec : Prop :=
  ∀ n, P17125300188904123914.a n = A232180 (n + 1)

end A232180

/-! ## A232180.P6827862067582824663

`A025529(2*n+1)/A110566(2*n+1)`
-/

namespace A232180.P6827862067582824663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (2 * n + 1) : ℚ) / (A110566 (2 * n + 1) : ℚ)

end

end A232180.P6827862067582824663

namespace A232180

/-- `A025529(2*n+1)/A110566(2*n+1)` -/
def P6827862067582824663.Spec : Prop :=
  ∀ n, P6827862067582824663.a n = (A232180 (n + 1) : ℚ)

end A232180

/-! ## A232180.P14775624951059466686

`A096617(2*n+1)/A120263(2*n+1)`
-/

namespace A232180.P14775624951059466686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (2 * n + 1) : ℚ) / (A120263 (2 * n + 1) : ℚ)

end

end A232180.P14775624951059466686

namespace A232180

/-- `A096617(2*n+1)/A120263(2*n+1)` -/
def P14775624951059466686.Spec : Prop :=
  ∀ n, P14775624951059466686.a n = (A232180 (n + 1) : ℚ)

end A232180

/-! ## A232180.P6314010235224674376

`A213998(A074148(2*n+1)+n)`
-/

namespace A232180.P6314010235224674376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A074148 (2 * n + 1) + (n : ℤ)).toNat

end

end A232180.P6314010235224674376

namespace A232180

/-- `A213998(A074148(2*n+1)+n)` -/
def P6314010235224674376.Spec : Prop :=
  ∀ n, P6314010235224674376.a n = A232180 (n + 1)

end A232180

/-! ## A232180.P9033938706763952375

`A035048(4*n+2)`
-/

namespace A232180.P9033938706763952375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035048 (4 * n + 2)

end

end A232180.P9033938706763952375

namespace A232180

/-- `A035048(4*n+2)` -/
def P9033938706763952375.Spec : Prop :=
  ∀ n, P9033938706763952375.a n = A232180 (n + 1)

end A232180

/-!
# A232181: First bisection of harmonic numbers (denominators).

The programs for A232181, the canonical program `A232181.P8852575731093556452` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232181 has offset 1).

The definition of A232181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232181.P8852575731093556452

`A002805(Δ[n²])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A232181

/-- `A002805(Δ[n²])` -/
def P8852575731093556452.Spec : Prop :=
  ∀ n, P8852575731093556452.a n = A232181 (n + 1)

theorem P8852575731093556452.correct : P8852575731093556452.Spec := by
  intro n
  simp only [A232181, Nat.add_sub_cancel]

end A232181

/-! ## A232181.P17870457233694176414

`and(-1, A002805(2*n+1))`
-/

namespace A232181.P17870457233694176414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002805 (2 * n + 1))

end

end A232181.P17870457233694176414

namespace A232181

/-- `and(-1, A002805(2*n+1))` -/
def P17870457233694176414.Spec : Prop :=
  ∀ n, P17870457233694176414.a n = A232181 (n + 1)

end A232181

/-! ## A232181.P15714058340515280761

`lcm(A002805(2*n+1), A257213(n))`
-/

namespace A232181.P15714058340515280761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002805 (2 * n + 1)) (A257213 n)

end

end A232181.P15714058340515280761

namespace A232181

/-- `lcm(A002805(2*n+1), A257213(n))` -/
def P15714058340515280761.Spec : Prop :=
  ∀ n, (P15714058340515280761.a n : ℤ) = A232181 (n + 1)

end A232181

/-! ## A232181.P16920588761423723473

`A002805(2*n+1)+A000007(n+1)`
-/

namespace A232181.P16920588761423723473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (2 * n + 1) + A000007 (n + 1)

end

end A232181.P16920588761423723473

namespace A232181

/-- `A002805(2*n+1)+A000007(n+1)` -/
def P16920588761423723473.Spec : Prop :=
  ∀ n, P16920588761423723473.a n = A232181 (n + 1)

end A232181

/-! ## A232181.P7166000716881821105

`A064168(2*n+1)-A001008(2*n+1)`
-/

namespace A232181.P7166000716881821105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (2 * n + 1) - A001008 (2 * n + 1)

end

end A232181.P7166000716881821105

namespace A232181

/-- `A064168(2*n+1)-A001008(2*n+1)` -/
def P7166000716881821105.Spec : Prop :=
  ∀ n, P7166000716881821105.a n = A232181 (n + 1)

end A232181

/-! ## A232181.P1011463595065429847

`A001008(2*n+1)-A064169(2*n+1)`
-/

namespace A232181.P1011463595065429847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (2 * n + 1) - A064169 (2 * n + 1)

end

end A232181.P1011463595065429847

namespace A232181

/-- `A001008(2*n+1)-A064169(2*n+1)` -/
def P1011463595065429847.Spec : Prop :=
  ∀ n, P1011463595065429847.a n = A232181 (n + 1)

end A232181

/-! ## A232181.P9278621067261918565

`A003418(2*n+1)/A110566(2*n+1)`
-/

namespace A232181.P9278621067261918565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n + 1) : ℚ) / (A110566 (2 * n + 1) : ℚ)

end

end A232181.P9278621067261918565

namespace A232181

/-- `A003418(2*n+1)/A110566(2*n+1)` -/
def P9278621067261918565.Spec : Prop :=
  ∀ n, P9278621067261918565.a n = (A232181 (n + 1) : ℚ)

end A232181

/-! ## A232181.P9095566601333595177

`A213999(2*(n+1)²+n-1)`
-/

namespace A232181.P9095566601333595177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 ((2 * (n + 1) ^ 2 : ℤ) + ((n : ℤ) - 1)).toNat

end

end A232181.P9095566601333595177

namespace A232181

/-- `A213999(2*(n+1)²+n-1)` -/
def P9095566601333595177.Spec : Prop :=
  ∀ n, P9095566601333595177.a n = A232181 (n + 1)

end A232181

/-! ## A232181.P12322656837596825253

`sqrt(A103931(2*n+1))`
-/

namespace A232181.P12322656837596825253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A103931 (2 * n + 1) : ℝ)

end

end A232181.P12322656837596825253

namespace A232181

/-- `sqrt(A103931(2*n+1))` -/
def P12322656837596825253.Spec : Prop :=
  ∀ n, P12322656837596825253.a n = (A232181 (n + 1) : ℝ)

end A232181

/-! ## A232181.P15167418127504368038

`A064167(2*n+1)/A001008(2*n+1)`
-/

namespace A232181.P15167418127504368038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064167 (2 * n + 1) : ℚ) / (A001008 (2 * n + 1) : ℚ)

end

end A232181.P15167418127504368038

namespace A232181

/-- `A064167(2*n+1)/A001008(2*n+1)` -/
def P15167418127504368038.Spec : Prop :=
  ∀ n, P15167418127504368038.a n = (A232181 (n + 1) : ℚ)

end A232181

/-!
# A232183: Primes p such that p-R(p) is a square, where R = reversal of digits = A004086.

The programs for A232183, there is no canonical definition to state claims against.
-/

/-! ## A232183.P5876839709971787939

`∪[A002385(n+1), A080177(n+1)]`
-/

namespace A232183.P5876839709971787939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232183.P5876839709971787939

/-! ## A232183.P1869448655443307853

`∪[A028310(A002385(n+1)), A059798(3*n+3)]`
-/

namespace A232183.P1869448655443307853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059798 (3 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A232183.P1869448655443307853

/-! ## A232183.P2782970962201704445

`A133956(A301318(n+1)+1)`
-/

namespace A232183.P2782970962201704445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A301318 (n + 1) + 1).toNat

end

end A232183.P2782970962201704445

/-! ## A232183.P13766506234698310954

`A006374(A129339(2*n+1))+1`
-/

namespace A232183.P13766506234698310954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006374 (A129339 (2 * n + 1)).toNat + 1

end

end A232183.P13766506234698310954

/-!
# A232185: Let x(0)x(1)x(2)...x(q) denote the decimal expansion of k. Sequence lists all zeroless numbers k > 10 such that x(0)/x(1)x(2)... x(q) + x(0)x(1)/x(2)x(3)...x(q) + ... + x(0)x(1)... x(q-1)/x(q) is an integer.

The programs for A232185, there is no canonical definition to state claims against.
-/

/-! ## A232185.P15196316579317071500

`record[A004719(A232184(n+1))]`
-/

namespace A232185.P15196316579317071500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A232184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232185.P15196316579317071500

/-! ## A232185.P2177295321384221551

`filter[A232184(n+1), A168046(#)]`
-/

namespace A232185.P2177295321384221551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A232185.P2177295321384221551

/-! ## A232185.P2056435265843530521

`∩[A232184(n+1), A354081(n+1)]`
-/

namespace A232185.P2056435265843530521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232185.P2056435265843530521

/-! ## A232185.P16430776613303165841

`∩[A292683(n+1), A354081(n+1)]`
-/

namespace A232185.P16430776613303165841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232185.P16430776613303165841

/-!
# A232186: Number of ways to write n = p + q (q > 0) with p and p^3 + n*q^2 both prime.

The programs for A232186, there is no canonical definition to state claims against.
-/

/-! ## A232186.P17968352145958458009

`A001222(A328769(n)+A242849(n))`
-/

namespace A232186.P17968352145958458009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328769 n + A242849 n).toNat

end

end A232186.P17968352145958458009

/-! ## A232186.P5391919339911476377

`A001222(xor(A242849(n), A328769(n)))`
-/

namespace A232186.P5391919339911476377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A242849 n) (A328769 n)).toNat

end

end A232186.P5391919339911476377

/-! ## A232186.P15942500034943413676

`A001222(or(A046643(n+1), A328769(n)))`
-/

namespace A232186.P15942500034943413676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A046643 (n + 1)) (A328769 n)).toNat

end

end A232186.P15942500034943413676

/-! ## A232186.P11573006287641854049

`A001222(or(A328769(n), A348038(n+1)))`
-/

namespace A232186.P11573006287641854049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A328769 n) (A348038 (n + 1))).toNat

end

end A232186.P11573006287641854049

/-! ## A232186.P250119252752273157

`A001222(xor(A046643(n+1), A328769(n)))`
-/

namespace A232186.P250119252752273157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A046643 (n + 1)) (A328769 n)).toNat

end

end A232186.P250119252752273157

/-!
# A232188: Primes p with same last four digits as pi(p).

The programs for A232188, there is no canonical definition to state claims against.
-/

/-! ## A232188.P13297324833955627613

`A330310(A232189(n+1))`
-/

namespace A232188.P13297324833955627613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330310 (A232189 (n + 1)).toNat

end

end A232188.P13297324833955627613

/-!
# A232192: G.f. satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^n - 1)^n.

The programs for A232192, there is no canonical definition to state claims against.
-/

/-! ## A232192.P5374520390401797219

`ceil((A004186((n+1)^n)+1)/15)`
-/

namespace A232192.P5374520390401797219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004186 ((n + 1) ^ n) + 1 : ℚ) / 15⌉

end

end A232192.P5374520390401797219

/-! ## A232192.P1988188053879150120

`A090620(A013499(n))+A007318(n)`
-/

namespace A232192.P1988188053879150120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A013499 n).toNat + A007318 n

end

end A232192.P1988188053879150120

/-!
# A232193: Numerators of the expected value of the length of a random cycle in a random n-permutation.

The programs for A232193, there is no canonical definition to state claims against.
-/

/-! ## A232193.P3171141298142304441

`A002398(n)/gcd(A002397(n), A002398(n))`
-/

namespace A232193.P3171141298142304441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002398 n : ℚ) / (Int.gcd (A002397 n) (A002398 n) : ℚ)

end

end A232193.P3171141298142304441

/-! ## A232193.P5104984843028227263

`A141047(n)/gcd(A091137(n), A141047(n))`
-/

namespace A232193.P5104984843028227263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141047 n : ℚ) / (Int.gcd (A091137 n) (A141047 n) : ℚ)

end

end A232193.P5104984843028227263

/-! ## A232193.P217168165062943680

`A232248(n+1)/A091137(n)*A141047(n)`
-/

namespace A232193.P217168165062943680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232248 (n + 1) : ℚ) / (A091137 n : ℚ) * (A141047 n : ℚ)

end

end A232193.P217168165062943680

/-!
# A232194: Number of ways to write n = x + y (x, y > 0) with n*x + y and n*y - x both prime.

The programs for A232194, there is no canonical definition to state claims against.
-/

/-! ## A232194.P9358887542869102900

`A193330(or(A004526(n), A006478(n)))`
-/

namespace A232194.P9358887542869102900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (Int.lor (A004526 n) (A006478 n)).toNat

end

end A232194.P9358887542869102900

/-! ## A232194.P1070869397708961532

`A001221(A000041(n)*A305027(3*n))`
-/

namespace A232194.P1070869397708961532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000041 n * A305027 (3 * n)).toNat

end

end A232194.P1070869397708961532

/-! ## A232194.P9885746123120017983

`A001221(or(A001227(n+1), A006951(n)))`
-/

namespace A232194.P9885746123120017983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A001227 (n + 1)) (A006951 n)).toNat

end

end A232194.P9885746123120017983

/-! ## A232194.P13893647590273338910

`A115722(2*A269747(n))`
-/

namespace A232194.P13893647590273338910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (2 * A269747 n).toNat

end

end A232194.P13893647590273338910

/-! ## A232194.P1000674789798581878

`A001221(A236584(n)+A002620(n))`
-/

namespace A232194.P1000674789798581878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A236584 n + A002620 n).toNat

end

end A232194.P1000674789798581878

/-!
# A232195: Product of distinct squares in Z_n (mod n), without the factor 0.

The programs for A232195, there is no canonical definition to state claims against.
-/

/-! ## A232195.P12654057259372671101

`A372651(n+1)%(n+1)`
-/

namespace A232195.P12654057259372671101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372651 (n + 1)) (n + 1 : ℤ)

end

end A232195.P12654057259372671101

/-! ## A232195.P14821125589448605833

`A088440(A187829(n+1)-A048671(n+1))`
-/

namespace A232195.P14821125589448605833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A187829 (n + 1) - A048671 (n + 1)).toNat

end

end A232195.P14821125589448605833

/-! ## A232195.P8317996790981377621

`and(A000203(A359634(n)), A359654(n+1))`
-/

namespace A232195.P8317996790981377621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A359634 n).toNat) (A359654 (n + 1))

end

end A232195.P8317996790981377621

/-! ## A232195.P9724794629824626845

`A327722(5*(n+1))%A080092(A218765(n+1))`
-/

namespace A232195.P9724794629824626845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327722 (5 * (n + 1))) (A080092 (A218765 (n + 1)).toNat)

end

end A232195.P9724794629824626845

/-! ## A232195.P1878572341159501125

`A057771(n)²%6`
-/

namespace A232195.P1878572341159501125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057771 n ^ 2) 6

end

end A232195.P1878572341159501125

/-!
# A232196: Number of (n+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, vertical or antidiagonal neighbor.

The programs for A232196, there is no canonical definition to state claims against.
-/

/-! ## A232196.P707352007290291162

`A232204((n+1)²+n²)`
-/

namespace A232196.P707352007290291162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 ((n + 1) ^ 2 + n ^ 2)

end

end A232196.P707352007290291162

/-!
# A232197: Number of (n+1)X(1+1) 0..2 arrays with every element both >= and <= some horizontal, vertical or antidiagonal neighbor.

The programs for A232197, there is no canonical definition to state claims against.
-/

/-! ## A232197.P4858453437189183079

`A232204(∑[n]+1)`
-/

namespace A232197.P4858453437189183079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232197.P4858453437189183079

/-! ## A232197.P6338571570404731734

`or(1, A232204(A000124(n)))`
-/

namespace A232197.P6338571570404731734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232204 (A000124 n).toNat)

end

end A232197.P6338571570404731734

/-! ## A232197.P8333282234912852348

`record[A232204(n+1)/A022172(n)]`
-/

namespace A232197.P8333282234912852348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232204 (n + 1) : ℚ) / (A022172 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232197.P8333282234912852348

/-! ## A232197.P14473781166447608737

`record[gcd(A002262(n), A232204(n+1))]`
-/

namespace A232197.P14473781166447608737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232204 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232197.P14473781166447608737

/-! ## A232197.P5789008338237742993

`A015012(n)*A232204(A000124(n))`
-/

namespace A232197.P5789008338237742993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A232204 (A000124 n).toNat

end

end A232197.P5789008338237742993

/-!
# A232198: Number of (n+1)X(2+1) 0..2 arrays with every element both >= and <= some horizontal, vertical or antidiagonal neighbor.

The programs for A232198, there is no canonical definition to state claims against.
-/

/-! ## A232198.P14996194014727282060

`A232204(∑[n+1]+2)`
-/

namespace A232198.P14996194014727282060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232198.P14996194014727282060

/-! ## A232198.P6865187862104885864

`or(1, A232204(A000096(n)+3))`
-/

namespace A232198.P6865187862104885864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232204 (A000096 n + 3).toNat)

end

end A232198.P6865187862104885864

/-! ## A232198.P18134669942461353729

`record[gcd(A002262(n), A232204(n+2))]`
-/

namespace A232198.P18134669942461353729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232204 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232198.P18134669942461353729

/-! ## A232198.P5786328928395151018

`record[A232204(abs(A201163(n)))]`
-/

namespace A232198.P5786328928395151018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232198.P5786328928395151018

/-! ## A232198.P6266618349007027287

`A232204(A000096(n+1))+A000007(n+1)`
-/

namespace A232198.P6266618349007027287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A232198.P6266618349007027287

/-!
# A232199: Number of (n+1)X(3+1) 0..2 arrays with every element both >= and <= some horizontal, vertical or antidiagonal neighbor.

The programs for A232199, there is no canonical definition to state claims against.
-/

/-! ## A232199.P362267461065757890

`A232204(∑[n+2]+4)`
-/

namespace A232199.P362267461065757890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232199.P362267461065757890

/-! ## A232199.P2426095645680333057

`or(1, A232204(A167614(n+1)))`
-/

namespace A232199.P2426095645680333057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232204 (A167614 (n + 1)).toNat)

end

end A232199.P2426095645680333057

/-! ## A232199.P12824187657766189854

`A232204(A167614(n+1))+A025443(n)`
-/

namespace A232199.P12824187657766189854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A167614 (n + 1)).toNat + A025443 n

end

end A232199.P12824187657766189854

/-! ## A232199.P10573841857922227479

`A232204(A167614(n+1))+A025469(n)`
-/

namespace A232199.P10573841857922227479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A167614 (n + 1)).toNat + A025469 n

end

end A232199.P10573841857922227479

/-! ## A232199.P9609736269498320701

`A232204(A167614(n+1))*A284562(n)`
-/

namespace A232199.P9609736269498320701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232204 (A167614 (n + 1)).toNat * A284562 n

end

end A232199.P9609736269498320701

