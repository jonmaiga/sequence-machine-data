import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A328600: Number of necklace compositions of n with no part circularly followed by a divisor.

The programs for A328600, there is no canonical definition to state claims against.
-/

/-! ## A328600.P17852159523738832342

`A318729(n+1)-1`
-/

namespace A328600.P17852159523738832342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318729 (n + 1) - 1

end

end A328600.P17852159523738832342

/-! ## A328600.P14597923663371462420

`xor(-A318729(n+1), A153881(n+2))`
-/

namespace A328600.P14597923663371462420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A318729 (n + 1)) (A153881 (n + 2))

end

end A328600.P14597923663371462420

/-! ## A328600.P12605845429251069701

`abs(A318729(n+1)+A057428(2*(n+1)))`
-/

namespace A328600.P12605845429251069701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A318729 (n + 1) + A057428 (2 * (n + 1))|

end

end A328600.P12605845429251069701

/-! ## A328600.P15929743202743112418

`xor(-A318729(n+1), A033999(2*n+3))`
-/

namespace A328600.P15929743202743112418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A318729 (n + 1)) (A033999 (2 * n + 3))

end

end A328600.P15929743202743112418

/-! ## A328600.P16931079823855438133

`A321800(A061858(n))+A318729(n+1)`
-/

namespace A328600.P16931079823855438133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A061858 n).toNat + A318729 (n + 1)

end

end A328600.P16931079823855438133

/-! ## A328600.P678867680090628628

`A321800(A023139(n+1))+A318729(n+1)`
-/

namespace A328600.P678867680090628628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A023139 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P678867680090628628

/-! ## A328600.P5241476286262347789

`A359432(A000040(n+1))+A318729(n+1)`
-/

namespace A328600.P5241476286262347789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (A000040 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P5241476286262347789

/-! ## A328600.P14235827857338195122

`A359591(A006567(n+1))+A318729(n+1)`
-/

namespace A328600.P14235827857338195122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A006567 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P14235827857338195122

/-! ## A328600.P11002724140324890584

`A322019(A068068(n+1))+A318729(n+1)`
-/

namespace A328600.P11002724140324890584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322019 (A068068 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P11002724140324890584

/-! ## A328600.P10214720862499867451

`A359591(A033240(n+1))+A318729(n+1)`
-/

namespace A328600.P10214720862499867451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A033240 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P10214720862499867451

/-! ## A328600.P14970032672285726002

`A359591(A107217(n+1))+A318729(n+1)`
-/

namespace A328600.P14970032672285726002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A107217 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P14970032672285726002

/-! ## A328600.P6242567936116351643

`A359591(A217614(n+1))+A318729(n+1)`
-/

namespace A328600.P6242567936116351643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A217614 (n + 1)).toNat + A318729 (n + 1)

end

end A328600.P6242567936116351643

/-! ## A328600.P9727795780083191985

`A332823(A008578(2*n+3))+A318729(n+1)`
-/

namespace A328600.P9727795780083191985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (A008578 (2 * n + 3)).toNat + A318729 (n + 1)

end

end A328600.P9727795780083191985

/-! ## A328600.P4739260002433212833

`A341028(A001222(2*n+5))+A318729(n+1)`
-/

namespace A328600.P4739260002433212833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341028 (A001222 (2 * n + 5)).toNat + A318729 (n + 1)

end

end A328600.P4739260002433212833

/-!
# A328601: Number of necklace compositions of n with no part circularly followed by a divisor or a multiple.

The programs for A328601, there is no canonical definition to state claims against.
-/

/-! ## A328601.P875127196593362586

`A318730(n+1)-1`
-/

namespace A328601.P875127196593362586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318730 (n + 1) - 1

end

end A328601.P875127196593362586

/-! ## A328601.P15648586353211094339

`∑{d}[n+1, A318747(#)-1]`
-/

namespace A328601.P15648586353211094339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A318747 d - 1)

end

end A328601.P15648586353211094339

/-! ## A328601.P4752782359610184946

`A321800(val(n+1, 3))+A318730(n+1)`
-/

namespace A328601.P4752782359610184946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (SequenceMachineLib.valuation (n + 1) 3) + A318730 (n + 1)

end

end A328601.P4752782359610184946

/-! ## A328601.P7903427324556950723

`A321800(A035211(n+1))+A318730(n+1)`
-/

namespace A328601.P7903427324556950723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A035211 (n + 1)).toNat + A318730 (n + 1)

end

end A328601.P7903427324556950723

/-! ## A328601.P8896927906505160094

`A321800(A069288(n+1))+A318730(n+1)`
-/

namespace A328601.P8896927906505160094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A069288 (n + 1)).toNat + A318730 (n + 1)

end

end A328601.P8896927906505160094

/-! ## A328601.P9736433276145593537

`A359432(A033240(n+1))+A318730(n+1)`
-/

namespace A328601.P9736433276145593537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (A033240 (n + 1)).toNat + A318730 (n + 1)

end

end A328601.P9736433276145593537

/-! ## A328601.P2467409408547588707

`A322019(A072911(n+1))+A318730(n+1)`
-/

namespace A328601.P2467409408547588707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322019 (A072911 (n + 1)).toNat + A318730 (n + 1)

end

end A328601.P2467409408547588707

/-! ## A328601.P8706425399334017379

`A359432(A194954(n+1))+A318730(n+1)`
-/

namespace A328601.P8706425399334017379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (A194954 (n + 1)).toNat + A318730 (n + 1)

end

end A328601.P8706425399334017379

/-! ## A328601.P1087145400769252818

`A359591(A217614(n+1))+A318730(n+1)`
-/

namespace A328601.P1087145400769252818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A217614 (n + 1)).toNat + A318730 (n + 1)

end

end A328601.P1087145400769252818

/-! ## A328601.P8391846091279371611

`A359591(A000040(n+5))+A318730(n+1)`
-/

namespace A328601.P8391846091279371611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359591 (A000040 (n + 5)).toNat + A318730 (n + 1)

end

end A328601.P8391846091279371611

/-! ## A328601.P15534242862597386136

`A336978(A006519(2*n+3))+A318730(n+1)`
-/

namespace A328601.P15534242862597386136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336978 (A006519 (2 * n + 3)).toNat + A318730 (n + 1)

end

end A328601.P15534242862597386136

/-! ## A328601.P12218208917962359705

`A336978(A002260(C(n, 2)+1))+A318730(n+1)`
-/

namespace A328601.P12218208917962359705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336978 (A002260 (Nat.choose n 2 + 1)).toNat + A318730 (n + 1)

end

end A328601.P12218208917962359705

/-!
# A328602: Number of necklace compositions of n where no pair of circularly adjacent parts is relatively prime.

The programs for A328602, there is no canonical definition to state claims against.
-/

/-! ## A328602.P1758736665882552843

`A298971(n+1)+A018843(A328673(n))`
-/

namespace A328602.P1758736665882552843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298971 (n + 1) + A018843 (A328673 n).toNat

end

end A328602.P1758736665882552843

/-! ## A328602.P7009870649343017414

`A298971(n+1)+A185284(2*n+5)`
-/

namespace A328602.P7009870649343017414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298971 (n + 1) + A185284 (2 * n + 5)

end

end A328602.P7009870649343017414

/-! ## A328602.P15448254785128521591

`A298971(n+1)+A185274(A352366(n))`
-/

namespace A328602.P15448254785128521591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298971 (n + 1) + A185274 (A352366 n).toNat

end

end A328602.P15448254785128521591

/-! ## A328602.P14243819743771371386

`A298971(n+1)+A055641(A116444(n+1))`
-/

namespace A328602.P14243819743771371386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298971 (n + 1) + A055641 (A116444 (n + 1)).toNat

end

end A328602.P14243819743771371386

/-! ## A328602.P17676699845919774176

`A298971(n+1)+A000007(A296416(n+1))`
-/

namespace A328602.P17676699845919774176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298971 (n + 1) + A000007 (A296416 (n + 1)).toNat

end

end A328602.P17676699845919774176

/-!
# A328603: Numbers whose prime indices have no consecutive divisible parts, meaning no prime index is a divisor of the next-smallest prime index, counted with multiplicity.

The programs for A328603, there is no canonical definition to state claims against.
-/

/-! ## A328603.P1858738585001127633

`∪[A304713(n+1), A001546(n)]`
-/

namespace A328603.P1858738585001127633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P1858738585001127633

/-! ## A328603.P13891610684671328728

`∪[A304713(n+1), A006857(n)]`
-/

namespace A328603.P13891610684671328728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P13891610684671328728

/-! ## A328603.P14244346825523637620

`∪[A304713(n+1), A033574(n)]`
-/

namespace A328603.P14244346825523637620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P14244346825523637620

/-! ## A328603.P5309000939792193181

`∪[A304713(n+1), A054497(n)]`
-/

namespace A328603.P5309000939792193181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P5309000939792193181

/-! ## A328603.P10389394341057169985

`∪[A304713(n+1), A055848(n)]`
-/

namespace A328603.P10389394341057169985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P10389394341057169985

/-! ## A328603.P17298077638385754253

`∪[A304713(n+1), A061550(n)]`
-/

namespace A328603.P17298077638385754253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P17298077638385754253

/-! ## A328603.P15142583226691587511

`∪[A304713(n+1), A082112(n)]`
-/

namespace A328603.P15142583226691587511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P15142583226691587511

/-! ## A328603.P2399129805208744999

`∪[A304713(n+1), A090454(n)]`
-/

namespace A328603.P2399129805208744999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P2399129805208744999

/-! ## A328603.P15014669636532727189

`∪[A304713(n+1), A133767(n)]`
-/

namespace A328603.P15014669636532727189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P15014669636532727189

/-! ## A328603.P3853189530581519389

`∪[A304713(n+1), A154633(n)]`
-/

namespace A328603.P3853189530581519389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328603.P3853189530581519389

/-!
# A328604: G.f.: (1 + 7*x) / (1 - 2*x - 9*x^2).

The programs for A328604, the canonical program `A328604.P7389673275400907856` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328604 has offset 0).

The definition of A328604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328604.P7389673275400907856

`2*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A328604

/-- `2*a(n-1)+9*a(n-2)` -/
def P7389673275400907856.Spec : Prop :=
  ∀ n, (P7389673275400907856.a n : ℤ) = A328604 n

theorem P7389673275400907856.correct : P7389673275400907856.Spec := by
  intro n
  simp only [A328604]

end A328604

/-! ## A328604.P10065887823177387289

`ogf((1+7x)/(1-2x-9x^2))`
-/

namespace A328604.P10065887823177387289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7] [1, -2, -9] n

end

end A328604.P10065887823177387289

namespace A328604

/-- `ogf((1+7x)/(1-2x-9x^2))` -/
def P10065887823177387289.Spec : Prop :=
  ∀ n, P10065887823177387289.a n = A328604 n

end A328604

/-! ## A328604.P8680049827867134183

`A123007(n+1)+6*A002534(n)`
-/

namespace A328604.P8680049827867134183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123007 (n + 1) + 6 * A002534 n

end

end A328604.P8680049827867134183

namespace A328604

/-- `A123007(n+1)+6*A002534(n)` -/
def P8680049827867134183.Spec : Prop :=
  ∀ n, P8680049827867134183.a n = A328604 n

end A328604

/-! ## A328604.P5331078501120852978

`A094726(n+1)+A094726(n+1)-A002535(n)`
-/

namespace A328604.P5331078501120852978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094726 (n + 1) + (A094726 (n + 1) - A002535 n)

end

end A328604.P5331078501120852978

namespace A328604

/-- `A094726(n+1)+A094726(n+1)-A002535(n)` -/
def P5331078501120852978.Spec : Prop :=
  ∀ n, P5331078501120852978.a n = A328604 n

end A328604

/-! ## A328604.P17606431163999291916

`A002535(n+1)-2*A002534(n)`
-/

namespace A328604.P17606431163999291916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002535 (n + 1) - 2 * A002534 n

end

end A328604.P17606431163999291916

namespace A328604

/-- `A002535(n+1)-2*A002534(n)` -/
def P17606431163999291916.Spec : Prop :=
  ∀ n, P17606431163999291916.a n = A328604 n

end A328604

/-! ## A328604.P84759450197228048

`2*A094726(n+1)-A002535(n)`
-/

namespace A328604.P84759450197228048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094726 (n + 1) - A002535 n

end

end A328604.P84759450197228048

namespace A328604

/-- `2*A094726(n+1)-A002535(n)` -/
def P84759450197228048.Spec : Prop :=
  ∀ n, P84759450197228048.a n = A328604 n

end A328604

/-! ## A328604.P9869341330065065866

`A002535(n+1)+A002535(n)-A123007(n+1)`
-/

namespace A328604.P9869341330065065866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002535 (n + 1) + (A002535 n - A123007 (n + 1))

end

end A328604.P9869341330065065866

namespace A328604

/-- `A002535(n+1)+A002535(n)-A123007(n+1)` -/
def P9869341330065065866.Spec : Prop :=
  ∀ n, P9869341330065065866.a n = A328604 n

end A328604

/-! ## A328604.P6276091937724285698

`A123007(n+2)-(A123007(n+1)+A123007(n+1))`
-/

namespace A328604.P6276091937724285698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123007 (n + 2) - (A123007 (n + 1) + A123007 (n + 1))

end

end A328604.P6276091937724285698

namespace A328604

/-- `A123007(n+2)-(A123007(n+1)+A123007(n+1))` -/
def P6276091937724285698.Spec : Prop :=
  ∀ n, P6276091937724285698.a n = A328604 n

end A328604

/-!
# A328605: Expansion of (1 + 5*x - 2*x^2 - 15*x^3) / (1 - 12*x^2 + 25*x^4).

The programs for A328605, the canonical program `A328605.P15440999193194475092` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328605 has offset 0).

The definition of A328605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x-2x^2-15x^3)/(1-12x^2+25x^4))` (program `A328605.P15440999193194475092`, by `A328605.P15440999193194475092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328605.P16185485543693744252

`12*a(n-2)-25*a(n-4)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=45`
-/

namespace A328605.P16185485543693744252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10, 45] fun n a =>
  12 * a (n - 2) - 25 * a (n - 4)

end

end A328605.P16185485543693744252

namespace A328605

/-- `12*a(n-2)-25*a(n-4)` -/
def P16185485543693744252.Spec : Prop :=
  ∀ n, P16185485543693744252.a n = A328605 n

end A328605

/-! ## A328605.P15440999193194475092

`ogf((1+5x-2x^2-15x^3)/(1-12x^2+25x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A328605

/-- `ogf((1+5x-2x^2-15x^3)/(1-12x^2+25x^4))` -/
def P15440999193194475092.Spec : Prop :=
  ∀ n, P15440999193194475092.a n = A328605 n

theorem P15440999193194475092.correct : P15440999193194475092.Spec := by
  intro n
  simp only [A328605]

end A328605

/-!
# A328606: Expansion of (1 + 9*x) / (1 - 2*x - 11*x^2).

The programs for A328606, the canonical program `A328606.P2243046245098520939` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328606 has offset 0).

The definition of A328606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+9x)/(1-2x-11x^2))` (program `A328606.P2243046245098520939`, by `A328606.P2243046245098520939.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328606.P2243046245098520939

`ogf((1+9x)/(1-2x-11x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A328606

/-- `ogf((1+9x)/(1-2x-11x^2))` -/
def P2243046245098520939.Spec : Prop :=
  ∀ n, P2243046245098520939.a n = A328606 n

theorem P2243046245098520939.correct : P2243046245098520939.Spec := by
  intro n
  simp only [A328606]

end A328606

/-! ## A328606.P3770504601780982079

`2*a(n-1)+11*a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A328606.P3770504601780982079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  2 * a (n - 1) + 11 * a (n - 2)

end

end A328606.P3770504601780982079

namespace A328606

/-- `2*a(n-1)+11*a(n-2)` -/
def P3770504601780982079.Spec : Prop :=
  ∀ n, (P3770504601780982079.a n : ℤ) = A328606 n

end A328606

/-! ## A328606.P5750049977408780391

`A090042(n)+10*A015520(n)`
-/

namespace A328606.P5750049977408780391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090042 n + 10 * A015520 n

end

end A328606.P5750049977408780391

namespace A328606

/-- `A090042(n)+10*A015520(n)` -/
def P5750049977408780391.Spec : Prop :=
  ∀ n, P5750049977408780391.a n = A328606 n

end A328606

/-! ## A328606.P13759348015605161847

`A090042(n+1)-(A015520(n)+A015520(n))`
-/

namespace A328606.P13759348015605161847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090042 (n + 1) - (A015520 n + A015520 n)

end

end A328606.P13759348015605161847

namespace A328606

/-- `A090042(n+1)-(A015520(n)+A015520(n))` -/
def P13759348015605161847.Spec : Prop :=
  ∀ n, P13759348015605161847.a n = A328606 n

end A328606

/-!
# A328607: Numbers whose reversed binary expansion, without the most significant digit, is a necklace.

The programs for A328607, there is no canonical definition to state claims against.
-/

/-! ## A328607.P7577727826411009954

`eq[A030101(n), A331856(A006257(n))]`
-/

namespace A328607.P7577727826411009954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328607.P7577727826411009954

/-! ## A328607.P13417563607520212023

`eq[A325401(n), A331856(A006257(n))]`
-/

namespace A328607.P13417563607520212023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328607.P13417563607520212023

/-! ## A328607.P2487119625665574128

`eq[A030101(n), A331856(A246591(2*n))]`
-/

namespace A328607.P2487119625665574128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A246591 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328607.P2487119625665574128

/-! ## A328607.P16248803564127549497

`eq[A331856(2*n), A331856(A006257(n))]`
-/

namespace A328607.P16248803564127549497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328607.P16248803564127549497

/-! ## A328607.P12429624607649208783

`eq[A331856(A246591(2*n)), A331856(2*n)]`
-/

namespace A328607.P12429624607649208783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A246591 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328607.P12429624607649208783

/-! ## A328607.P13718049184792678589

`lt[A030101(8*n), A331856(A246591(2*n))+1]`
-/

namespace A328607.P13718049184792678589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (8 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A246591 (2 * n)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328607.P13718049184792678589

/-!
# A328608: Numbers whose binary indices have no part circularly followed by a divisor or a multiple.

The programs for A328608, there is no canonical definition to state claims against.
-/

/-! ## A328608.P1418859752196897533

`record[A001223(A284061(n+1)²)]`
-/

namespace A328608.P1418859752196897533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A284061 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328608.P1418859752196897533

/-! ## A328608.P11942368831724222047

`record[A000010(abs(A338597(n+1)-n)+2)]`
-/

namespace A328608.P11942368831724222047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|A338597 (n + 1) - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328608.P11942368831724222047

/-! ## A328608.P16726178359863792330

`lt[A000005(n+1), A355735(A246098(n+1))]`
-/

namespace A328608.P16726178359863792330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A246098 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328608.P16726178359863792330

/-! ## A328608.P7808342749285813850

`lt[A006257(A024994(n+1)), A333382(2*n+1)]`
-/

namespace A328608.P7808342749285813850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A024994 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328608.P7808342749285813850

/-!
# A328609: Number of compositions of n whose circularly adjacent parts are relatively prime.

The programs for A328609, there is no canonical definition to state claims against.
-/

/-! ## A328609.P1511866912108069856

`A318748(round(acot(n)+n))-1`
-/

namespace A328609.P1511866912108069856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A328609.P1511866912108069856

/-! ## A328609.P5697744743305909798

`A318748(n)-A157928(n)`
-/

namespace A328609.P5697744743305909798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A157928 n

end

end A328609.P5697744743305909798

/-! ## A328609.P6063992923993003412

`A318748(n)-A281773(n)%2`
-/

namespace A328609.P6063992923993003412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - Int.tmod (A281773 n) 2

end

end A328609.P6063992923993003412

/-! ## A328609.P5520349893692760685

`A318748(n)+A057428(A073642(n))`
-/

namespace A328609.P5520349893692760685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n + A057428 (A073642 n).toNat

end

end A328609.P5520349893692760685

/-! ## A328609.P4241086792786019892

`A318748(n)-A057427(A009947(n))`
-/

namespace A328609.P4241086792786019892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A057427 (A009947 n).toNat

end

end A328609.P4241086792786019892

/-! ## A328609.P4942940274619951498

`A318748(n)-A057427(A032741(n))`
-/

namespace A328609.P4942940274619951498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A057427 (A032741 n).toNat

end

end A328609.P4942940274619951498

/-! ## A328609.P3861644569764541863

`A318748(n)-A043545(A105321(n))`
-/

namespace A328609.P3861644569764541863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A043545 (A105321 n).toNat

end

end A328609.P3861644569764541863

/-! ## A328609.P4607303950835838308

`A318748(n)-A000035(A151800(n))`
-/

namespace A328609.P4607303950835838308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A000035 (A151800 n).toNat

end

end A328609.P4607303950835838308

/-! ## A328609.P12944020787598035382

`A318748(n)-A057427(A172475(n))`
-/

namespace A328609.P12944020787598035382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A057427 (A172475 n).toNat

end

end A328609.P12944020787598035382

/-! ## A328609.P16261810242819376131

`A318748(n)-A001222(A306238(n))`
-/

namespace A328609.P16261810242819376131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A001222 (A306238 n).toNat

end

end A328609.P16261810242819376131

/-! ## A328609.P16412465451720018069

`A318748(n)+A057428(A057428(n)+n)`
-/

namespace A328609.P16412465451720018069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n + A057428 (A057428 n + (n : ℤ)).toNat

end

end A328609.P16412465451720018069

/-! ## A328609.P10215214554154830805

`A318748(n)-A057427(n-A057427(n))`
-/

namespace A328609.P10215214554154830805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A057427 ((n : ℤ) - A057427 n).toNat

end

end A328609.P10215214554154830805

/-! ## A328609.P16092635421060051634

`A318748(n)-A057428(n)*A057428(A073642(n))`
-/

namespace A328609.P16092635421060051634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A057428 n * A057428 (A073642 n).toNat

end

end A328609.P16092635421060051634

/-! ## A328609.P10239282997070043989

`A318748(n)-A043545(n²)`
-/

namespace A328609.P10239282997070043989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A043545 (n ^ 2)

end

end A328609.P10239282997070043989

/-! ## A328609.P16831534359116865016

`A318748(n)-A057428(n²-n)²`
-/

namespace A328609.P16831534359116865016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - A057428 (n ^ 2 - n) ^ 2

end

end A328609.P16831534359116865016

/-! ## A328609.P10552705800181884713

`A318748(n)-A318728(n+1)%A328597(n+1)`
-/

namespace A328609.P10552705800181884713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 n - Int.tmod (A318728 (n + 1)) (A328597 (n + 1))

end

end A328609.P10552705800181884713

/-!
# A328610: Irregular triangular array read by rows: the rows show the coefficients of the first of two factors of even-degree polynomials described in Comments.

The programs for A328610, there is no canonical definition to state claims against.
-/

/-! ## A328610.P8708822501140126165

`A328611(n+1)-2*A326925(n+1)`
-/

namespace A328610.P8708822501140126165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328611 (n + 1) - 2 * A326925 (n + 1)

end

end A328610.P8708822501140126165

/-! ## A328610.P12543857269688952167

`A273901(n+2)-A000038(A086246(n))`
-/

namespace A328610.P12543857269688952167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273901 (n + 2) - A000038 (A086246 n).toNat

end

end A328610.P12543857269688952167

/-! ## A328610.P13629159381675702213

`A273901(n+2)-A000038(A113684(n))`
-/

namespace A328610.P13629159381675702213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273901 (n + 2) - A000038 (A113684 n).toNat

end

end A328610.P13629159381675702213

/-! ## A328610.P16696562659909929053

`A273901(n+2)-A000038(A280304(n))`
-/

namespace A328610.P16696562659909929053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273901 (n + 2) - A000038 (A280304 n).toNat

end

end A328610.P16696562659909929053

/-! ## A328610.P11253427056872416903

`A273901(n+2)-A000038(A347750(n))`
-/

namespace A328610.P11253427056872416903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273901 (n + 2) - A000038 (A347750 n).toNat

end

end A328610.P11253427056872416903

/-!
# A328611: Irregular triangular array read by rows: row n gives the coefficients of the second of two factors of even-degree polynomials described in Comments.

The programs for A328611, there is no canonical definition to state claims against.
-/

/-! ## A328611.P17517884060513818652

`A328610(n+1)+2*A326925(n+1)`
-/

namespace A328611.P17517884060513818652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328610 (n + 1) + 2 * A326925 (n + 1)

end

end A328611.P17517884060513818652

/-!
# A328612: Starting with m = 1, p = 2 and x = n, iterate m -> m * p^valuation(x,p), x -> floor(x/p), p -> {next prime after p}, until x is zero. Then a(n) = {the value of m at the end of iteration}.

The programs for A328612, there is no canonical definition to state claims against.
-/

/-! ## A328612.P12016202446049621587

`A328613(n)/A326810(A343045(n))`
-/

namespace A328612.P12016202446049621587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328613 n : ℚ) / (A326810 (A343045 n).toNat : ℚ)

end

end A328612.P12016202446049621587

/-! ## A328612.P450332360640220319

`A328613(n)/A117366(A328571(n))`
-/

namespace A328612.P450332360640220319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328613 n : ℚ) / (A117366 (A328571 n).toNat : ℚ)

end

end A328612.P450332360640220319

/-! ## A328612.P7648666493518640625

`(A328613(n)/A006530(A328613(n)))%A027620(n)`
-/

namespace A328612.P7648666493518640625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A328613 n : ℚ) / (A006530 (A328613 n).toNat : ℚ))) (A027620 n)

end

end A328612.P7648666493518640625

/-! ## A328612.P16931180433624950275

`(A328613(n)/A006530(A328613(n)))^-A260196(n)`
-/

namespace A328612.P16931180433624950275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328613 n : ℚ) / (A006530 (A328613 n).toNat : ℚ)) ^ (-A260196 n : ℤ)

end

end A328612.P16931180433624950275

/-! ## A328612.P4449449012650401637

`(A328613(n)/A006530(A328613(n)))^(A000007(n)+1)`
-/

namespace A328612.P4449449012650401637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A328613 n : ℚ) / (A006530 (A328613 n).toNat : ℚ)) ^ (A000007 n + 1 : ℤ)

end

end A328612.P4449449012650401637

/-! ## A328612.P474776414975742126

`A328613(n)/A006530(2*A328613(n))`
-/

namespace A328612.P474776414975742126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328613 n : ℚ) / (A006530 (2 * A328613 n).toNat : ℚ)

end

end A328612.P474776414975742126

/-! ## A328612.P12075815651942616104

`gcd(∏[A329900(n+1)], A328613(n))`
-/

namespace A328612.P12075815651942616104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A328613 n)

end

end A328612.P12075815651942616104

/-! ## A328612.P17410882611933274508

`gcd(A208147(n+1), A328613(n))`
-/

namespace A328612.P17410882611933274508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208147 (n + 1)) (A328613 n)

end

end A328612.P17410882611933274508

/-! ## A328612.P1662048159991909585

`A051119(A328613(n))`
-/

namespace A328612.P1662048159991909585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A328613 n).toNat

end

end A328612.P1662048159991909585

/-! ## A328612.P11305504207148901534

`A070821(2*A328613(n))`
-/

namespace A328612.P11305504207148901534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (2 * A328613 n).toNat

end

end A328612.P11305504207148901534

/-! ## A328612.P13624779410394192895

`A052126(A328613(A000007(n)+n))`
-/

namespace A328612.P13624779410394192895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A328613 (A000007 n + (n : ℤ)).toNat).toNat

end

end A328612.P13624779410394192895

/-! ## A328612.P999634699603277895

`A052126(A328613(n)%A001533(n))`
-/

namespace A328612.P999634699603277895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.tmod (A328613 n) (A001533 n)).toNat

end

end A328612.P999634699603277895

/-! ## A328612.P18056452042582964359

`A052126(A328613(n))%A001966(n)`
-/

namespace A328612.P18056452042582964359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A328613 n).toNat) (A001966 n)

end

end A328612.P18056452042582964359

/-! ## A328612.P2459540002075380320

`gcd(A050293(n)², A328613(n))`
-/

namespace A328612.P2459540002075380320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A050293 n ^ 2) (A328613 n)

end

end A328612.P2459540002075380320

/-! ## A328612.P17107014033736649763

`gcd(A066843(n), A328613(n))`
-/

namespace A328612.P17107014033736649763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066843 n) (A328613 n)

end

end A328612.P17107014033736649763

/-!
# A328613: Starting with m = 1, p = 2 and x = n, iterate m -> m * p^valuation(x,p), x -> floor(x/p), p -> {the next prime after p}, until x is zero. Then a(n) = product of the values of m and p that were reached at the end of the iteration.

The programs for A328613, there is no canonical definition to state claims against.
-/

/-! ## A328613.P11800677030629803594

`A326810(A343045(n))*A328612(n)`
-/

namespace A328613.P11800677030629803594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326810 (A343045 n).toNat * A328612 n

end

end A328613.P11800677030629803594

/-! ## A328613.P3877685013147029363

`A117366(A328571(n))*A328612(n)`
-/

namespace A328613.P3877685013147029363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A328571 n).toNat * A328612 n

end

end A328613.P3877685013147029363

/-! ## A328613.P12835128599855036143

`A117366(A276086(n))*A328612(n)`
-/

namespace A328613.P12835128599855036143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A276086 n).toNat * A328612 n

end

end A328613.P12835128599855036143

/-! ## A328613.P4662077243164847804

`A117366(A346101(n))*A328612(n)`
-/

namespace A328613.P4662077243164847804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A346101 n).toNat * A328612 n

end

end A328613.P4662077243164847804

/-! ## A328613.P511114770215862384

`p?[A345379(n²+n)]*A328612(n)`
-/

namespace A328613.P511114770215862384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A328612 n

end

end A328613.P511114770215862384

/-!
# A328614: Number of 1-digits in primorial base expansion of n.

The programs for A328614, there is no canonical definition to state claims against.
-/

/-! ## A328614.P17793718549645069745

`A267263(n)-A328615(n)`
-/

namespace A328614.P17793718549645069745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A328615 n

end

end A328614.P17793718549645069745

/-! ## A328614.P5411237775978278155

`A056169(A276086(n))`
-/

namespace A328614.P5411237775978278155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A276086 n).toNat

end

end A328614.P5411237775978278155

/-! ## A328614.P1873254916940811277

`val(A328835(n), 2)`
-/

namespace A328614.P1873254916940811277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328835 n).toNat 2

end

end A328614.P1873254916940811277

/-! ## A328614.P10079274752750056011

`A001222(A328835(n))-A328615(n)`
-/

namespace A328614.P10079274752750056011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328835 n).toNat - A328615 n

end

end A328614.P10079274752750056011

/-! ## A328614.P14779374944552625229

`A087117(and(-A328835(n), A328835(n)))`
-/

namespace A328614.P14779374944552625229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.land (-A328835 n) (A328835 n)).toNat

end

end A328614.P14779374944552625229

/-! ## A328614.P2980445183014769999

`A267263(n)-A267263(n-A328841(n))`
-/

namespace A328614.P2980445183014769999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A267263 ((n : ℤ) - A328841 n).toNat

end

end A328614.P2980445183014769999

/-! ## A328614.P7589408995337031831

`∑{digits}[A049345(n), A255308(A049345(#))]`
-/

namespace A328614.P7589408995337031831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A255308 (A049345 x).toNat).sum

end

end A328614.P7589408995337031831

/-! ## A328614.P1559485248673359032

`∑{digits}[A049345(n), A276088(A246278(#+2))-1]`
-/

namespace A328614.P1559485248673359032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A276088 (A246278 (x + 2)).toNat - 1).sum

end

end A328614.P1559485248673359032

/-! ## A328614.P6547897239825571048

`A007814(A328835(n))`
-/

namespace A328614.P6547897239825571048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A328835 n).toNat

end

end A328614.P6547897239825571048

/-! ## A328614.P11090810428216391204

`A079067(A328613(n))-A328615(n)`
-/

namespace A328614.P11090810428216391204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A328613 n).toNat - A328615 n

end

end A328614.P11090810428216391204

/-! ## A328614.P1567201019615054657

`A268643(A049345(n))`
-/

namespace A328614.P1567201019615054657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A049345 n).toNat

end

end A328614.P1567201019615054657

/-! ## A328614.P7447373186504140991

`A277937(A277022(n))`
-/

namespace A328614.P7447373186504140991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A277022 n).toNat

end

end A328614.P7447373186504140991

/-! ## A328614.P11868976556709996133

`A267263(n)-A001221(A328572(n))`
-/

namespace A328614.P11868976556709996133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A001221 (A328572 n).toNat

end

end A328614.P11868976556709996133

/-! ## A328614.P2509914753729675582

`∑{e}[A276086(n), A089024(#)]`
-/

namespace A328614.P2509914753729675582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A089024 (Nat.factorization (f1 n).natAbs p)

end

end A328614.P2509914753729675582

/-! ## A328614.P5121663131610712271

`∑{e}[A276086(n), A091447(#)]`
-/

namespace A328614.P5121663131610712271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A091447 (Nat.factorization (f1 n).natAbs p)

end

end A328614.P5121663131610712271

/-! ## A328614.P15673614517490236088

`∑{e}[A276086(n), A318886(#)]`
-/

namespace A328614.P15673614517490236088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A318886 (Nat.factorization (f1 n).natAbs p)

end

end A328614.P15673614517490236088

/-! ## A328614.P15201423244963194156

`∑{e}[A276086(n), 1-A001221(#)]`
-/

namespace A328614.P15201423244963194156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A001221 (Nat.factorization (f1 n).natAbs p))

end

end A328614.P15201423244963194156

/-! ## A328614.P2613730467337179430

`∑{e}[A276086(n), C(2, A276086(#))]`
-/

namespace A328614.P2613730467337179430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose 2 (A276086 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328614.P2613730467337179430

/-! ## A328614.P10533485305563628782

`∑{e}[A276086(n), A079978(A125266(#))]`
-/

namespace A328614.P10533485305563628782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079978 (A125266 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328614.P10533485305563628782

/-! ## A328614.P17390505637247347264

`∑{e}[A276086(n), A061007(A276086(#²))]`
-/

namespace A328614.P17390505637247347264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061007 (A276086 (Nat.factorization (f1 n).natAbs p ^ 2)).toNat

end

end A328614.P17390505637247347264

/-!
# A328615: Number of digits larger than 1 in primorial base expansion of n.

The programs for A328615, there is no canonical definition to state claims against.
-/

/-! ## A328615.P14588729077788818475

`A267263(n)-A328614(n)`
-/

namespace A328615.P14588729077788818475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A328614 n

end

end A328615.P14588729077788818475

/-! ## A328615.P5092852023218398480

`A001221(A328572(n))`
-/

namespace A328615.P5092852023218398480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328572 n).toNat

end

end A328615.P5092852023218398480

/-! ## A328615.P12533236439516386531

`A267263(A328842(n))`
-/

namespace A328615.P12533236439516386531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A328842 n).toNat

end

end A328615.P12533236439516386531

/-! ## A328615.P2293359727202560754

`A267263(n-A328841(n))`
-/

namespace A328615.P2293359727202560754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 ((n : ℤ) - A328841 n).toNat

end

end A328615.P2293359727202560754

/-! ## A328615.P4996915417214626509

`A087436(A328835(n))`
-/

namespace A328615.P4996915417214626509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A328835 n).toNat

end

end A328615.P4996915417214626509

/-! ## A328615.P9511865646504623929

`∑{digits}[A049345(n), A060502(#-A034968(#))]`
-/

namespace A328615.P9511865646504623929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A060502 ((x : ℤ) - A034968 x).toNat).sum

end

end A328615.P9511865646504623929

/-! ## A328615.P16926346008265013154

`A267263(n)-A007814(A328835(n))`
-/

namespace A328615.P16926346008265013154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A007814 (A328835 n).toNat

end

end A328615.P16926346008265013154

/-! ## A328615.P15916741566814071245

`A102669(A049345(n))`
-/

namespace A328615.P15916741566814071245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A049345 n).toNat

end

end A328615.P15916741566814071245

/-! ## A328615.P1768841878905309497

`∑{p}[A328572(n), A003415(#)]`
-/

namespace A328615.P1768841878905309497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A328615.P1768841878905309497

/-! ## A328615.P5854802405900945841

`∑{p}[A328572(n), A347130(#)]`
-/

namespace A328615.P5854802405900945841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A347130 p

end

end A328615.P5854802405900945841

/-! ## A328615.P6409509203934270402

`∑{p}[A328572(n), A328572(A328572(#))]`
-/

namespace A328615.P6409509203934270402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328572 (A328572 p).toNat

end

end A328615.P6409509203934270402

/-! ## A328615.P6272448207443842491

`A001221(A328575(or(1, n)))`
-/

namespace A328615.P6272448207443842491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328575 (Nat.lor 1 n)).toNat

end

end A328615.P6272448207443842491

/-! ## A328615.P14399958386923727028

`A001221(A328575(A109613(n)))`
-/

namespace A328615.P14399958386923727028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328575 (A109613 n).toNat).toNat

end

end A328615.P14399958386923727028

/-! ## A328615.P17789068794145198914

`A001221(A328575(A063196(n+1)))`
-/

namespace A328615.P17789068794145198914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328575 (A063196 (n + 1)).toNat).toNat

end

end A328615.P17789068794145198914

/-! ## A328615.P3645153875068415994

`A001221(A276086(n)/A328571(n))`
-/

namespace A328615.P3645153875068415994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A276086 n : ℚ) / (A328571 n : ℚ))).toNat

end

end A328615.P3645153875068415994

/-! ## A328615.P8539806434079118838

`A001221(gcd(A276086(n), A327860(n)))`
-/

namespace A328615.P8539806434079118838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A276086 n) (A327860 n))

end

end A328615.P8539806434079118838

/-! ## A328615.P17901874543983064974

`∑{e}[A276086(n), A001221(#)]`
-/

namespace A328615.P17901874543983064974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 (Nat.factorization (f1 n).natAbs p)

end

end A328615.P17901874543983064974

/-! ## A328615.P13445234212388583838

`∑{e}[A276086(n), 1-A089024(#)]`
-/

namespace A328615.P13445234212388583838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A089024 (Nat.factorization (f1 n).natAbs p))

end

end A328615.P13445234212388583838

/-! ## A328615.P2242974916755772691

`∑{e}[A276086(n), A079978(A276086(#))]`
-/

namespace A328615.P2242974916755772691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079978 (A276086 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328615.P2242974916755772691

/-!
# A328616: Number of digits in primorial base expansion of n that are maximal possible in their positions.

The programs for A328616, there is no canonical definition to state claims against.
-/

/-! ## A328616.P17073060535970840511

`A328620(A343045(2*n)-n)`
-/

namespace A328616.P17073060535970840511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A343045 (2 * n) - (n : ℤ)).toNat

end

end A328616.P17073060535970840511

/-! ## A328616.P16334306378069659420

`A102683(A049345(2*n)-A049345(n))`
-/

namespace A328616.P16334306378069659420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A049345 (2 * n) - A049345 n).toNat

end

end A328616.P16334306378069659420

/-! ## A328616.P7868664594624726392

`A102683(Δ[A049345(A000982(n))])`
-/

namespace A328616.P7868664594624726392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A000982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (f1 (n + 1) - f1 n).toNat

end

end A328616.P7868664594624726392

/-! ## A328616.P15184843886892611851

`A328614(A354469(n))`
-/

namespace A328616.P15184843886892611851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 (A354469 n).toNat

end

end A328616.P15184843886892611851

/-! ## A328616.P13095534540203841217

`A001222(A328835(n))-A328615(A354469(n))`
-/

namespace A328616.P13095534540203841217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328835 n).toNat - A328615 (A354469 n).toNat

end

end A328616.P13095534540203841217

/-! ## A328616.P4620594876709689487

`A079067(A328613(n))-A328615(A354469(n))`
-/

namespace A328616.P4620594876709689487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A328613 n).toNat - A328615 (A354469 n).toNat

end

end A328616.P4620594876709689487

/-!
# A328617: Multiplicative with a(p^e) = p^e, if e = 0 mod p, otherwise a(p^e) = p^((p*floor(e/p)) + A124223(A000720(p),e mod p)).

The programs for A328617, there is no canonical definition to state claims against.
-/

/-! ## A328617.P10781887302216519107

`(and(4, A141098(∏{p}[n+1, #^val(n+1, #²)]²))+1)*(n+1)`
-/

namespace A328617.P10781887302216519107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A141098 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)) + 1) * (n + 1 : ℤ)

end

end A328617.P10781887302216519107

/-! ## A328617.P978594410126585995

`(n+1)*A060904(A099594(n))`
-/

namespace A328617.P978594410126585995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060904 (A099594 n).toNat

end

end A328617.P978594410126585995

/-! ## A328617.P3290232721291718290

`A312928(A061858(n)!-1)+n`
-/

namespace A328617.P3290232721291718290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 (Nat.factorial (A061858 n).toNat - 1) + (n : ℤ)

end

end A328617.P3290232721291718290

/-! ## A328617.P17645814138283730585

`(n+1)*A000194(A061858(n)!)`
-/

namespace A328617.P17645814138283730585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000194 (Nat.factorial (A061858 n).toNat)

end

end A328617.P17645814138283730585

/-! ## A328617.P11467179421970768030

`(n+1)*A007920(A061858(n)!)`
-/

namespace A328617.P11467179421970768030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007920 (Nat.factorial (A061858 n).toNat)

end

end A328617.P11467179421970768030

/-!
# A328618: Multiplicative with a(p^e) = p^e if p = 2 or e is a multiple of p, otherwise a(p^e) = p^((p*floor(e/p)) + (2e mod p)).

The programs for A328618, there is no canonical definition to state claims against.
-/

/-! ## A328618.P17529813354319908570

`A006519(∑[A275543(n)])*A328621(n+1)`
-/

namespace A328618.P17529813354319908570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A328621 (n + 1)

end

end A328618.P17529813354319908570

/-! ## A328618.P6612587606295861663

`gcd(A331552(n)², A328619(A328617(n+1)))`
-/

namespace A328618.P6612587606295861663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331552 n ^ 2) (A328619 (A328617 (n + 1)).toNat)

end

end A328618.P6612587606295861663

/-! ## A328618.P6303016944674038667

`gcd(A011262(A053698(n)), A053143(n+1))`
-/

namespace A328618.P6303016944674038667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011262 (A053698 n).toNat) (A053143 (n + 1))

end

end A328618.P6303016944674038667

/-! ## A328618.P6932769378768356736

`A003557(A055491(n+1)*A073675(n+1))`
-/

namespace A328618.P6932769378768356736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A055491 (n + 1) * A073675 (n + 1)).toNat

end

end A328618.P6932769378768356736

/-! ## A328618.P16416034630456178328

`A003557(A007913(2*(n+1))*A053143(n+1))`
-/

namespace A328618.P16416034630456178328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007913 (2 * (n + 1)) * A053143 (n + 1)).toNat

end

end A328618.P16416034630456178328

/-!
# A328619: Inverse permutation to A328618.

The programs for A328619, there is no canonical definition to state claims against.
-/

/-! ## A328619.P10470707241922053676

`A328617(A328618(A328617(n+1)))`
-/

namespace A328619.P10470707241922053676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (A328618 (A328617 (n + 1)).toNat).toNat

end

end A328619.P10470707241922053676

/-! ## A328619.P14408823171523076511

`A328618(A011262(A328618(A328618(A011262(n+1)))))`
-/

namespace A328619.P14408823171523076511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (A011262 (A328618 (A328618 (A011262 (n + 1)).toNat).toNat).toNat).toNat

end

end A328619.P14408823171523076511

/-! ## A328619.P5351367651173090218

`A090884(A283980(n+1))`
-/

namespace A328619.P5351367651173090218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090884 (A283980 (n + 1)).toNat

end

end A328619.P5351367651173090218

/-!
# A328620: Number of nonleading zeros in primorial base expansion of n, a(0) = 0 by convention.

The programs for A328620, the canonical program `A328620.P17305493884034460707` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328620 has offset 0).

The definition of A328620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328620.P5167413988929307927

`A001221(A328612(n))`
-/

namespace A328620.P5167413988929307927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328612 n).toNat

end

end A328620.P5167413988929307927

namespace A328620

/-- `A001221(A328612(n))` -/
def P5167413988929307927.Spec : Prop :=
  ∀ n, P5167413988929307927.a n = A328620 n

end A328620

/-! ## A328620.P5130248213212259229

`A079067(A276086(n))`
-/

namespace A328620.P5130248213212259229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A276086 n).toNat

end

end A328620.P5130248213212259229

namespace A328620

/-- `A079067(A276086(n))` -/
def P5130248213212259229.Spec : Prop :=
  ∀ n, P5130248213212259229.a n = A328620 n

end A328620

/-! ## A328620.P17305493884034460707

`A235224(n)-A267263(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A328620

/-- `A235224(n)-A267263(n)` -/
def P17305493884034460707.Spec : Prop :=
  ∀ n, P17305493884034460707.a n = A328620 n

theorem P17305493884034460707.correct : P17305493884034460707.Spec := by
  intro n
  simp only [A328620]

end A328620

/-! ## A328620.P7750220376014730619

`∑{e}[A328612(n), A328614(A014963(#+#))]`
-/

namespace A328620.P7750220376014730619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328614 (A014963 (Nat.factorization (f1 n).natAbs p + Nat.factorization (f1 n).natAbs p)).toNat

end

end A328620.P7750220376014730619

namespace A328620

/-- `∑{e}[A328612(n), A328614(A014963(#+#))]` -/
def P7750220376014730619.Spec : Prop :=
  ∀ n, P7750220376014730619.a n = A328620 n

end A328620

/-! ## A328620.P1418991777712196790

`A079067(A328571(n))`
-/

namespace A328620.P1418991777712196790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A328571 n).toNat

end

end A328620.P1418991777712196790

namespace A328620

/-- `A079067(A328571(n))` -/
def P1418991777712196790.Spec : Prop :=
  ∀ n, P1418991777712196790.a n = A328620 n

end A328620

/-! ## A328620.P9592120115111412059

`A235224(n)-A304465(A328571(n))`
-/

namespace A328620.P9592120115111412059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 n - A304465 (A328571 n).toNat

end

end A328620.P9592120115111412059

namespace A328620

/-- `A235224(n)-A304465(A328571(n))` -/
def P9592120115111412059.Spec : Prop :=
  ∀ n, P9592120115111412059.a n = A328620 n

end A328620

/-! ## A328620.P11089960820952618748

`∑{e}[A328612(n), A014963(A007623(#²))]`
-/

namespace A328620.P11089960820952618748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 (A007623 (Nat.factorization (f1 n).natAbs p ^ 2)).toNat

end

end A328620.P11089960820952618748

namespace A328620

/-- `∑{e}[A328612(n), A014963(A007623(#²))]` -/
def P11089960820952618748.Spec : Prop :=
  ∀ n, P11089960820952618748.a n = A328620 n

end A328620

/-! ## A328620.P16818679551745450286

`A001221(A328613(n))-1`
-/

namespace A328620.P16818679551745450286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328613 n).toNat - 1

end

end A328620.P16818679551745450286

namespace A328620

/-- `A001221(A328613(n))-1` -/
def P16818679551745450286.Spec : Prop :=
  ∀ n, P16818679551745450286.a n = A328620 n

end A328620

/-! ## A328620.P12104855846031998112

`A297155(A328613(n))`
-/

namespace A328620.P12104855846031998112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A328613 n).toNat

end

end A328620.P12104855846031998112

namespace A328620

/-- `A297155(A328613(n))` -/
def P12104855846031998112.Spec : Prop :=
  ∀ n, P12104855846031998112.a n = A328620 n

end A328620

/-! ## A328620.P15718628559969762885

`∑{e}[A328612(n)², A328614(A014963(#))]`
-/

namespace A328620.P15718628559969762885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328612 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328614 (A014963 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A328620.P15718628559969762885

namespace A328620

/-- `∑{e}[A328612(n)², A328614(A014963(#))]` -/
def P15718628559969762885.Spec : Prop :=
  ∀ n, P15718628559969762885.a n = A328620 n

end A328620

/-!
# A328621: Multiplicative with a(p^e) = p^(2e mod p).

The programs for A328621, there is no canonical definition to state claims against.
-/

/-! ## A328621.P12908554336185513722

`A328618(lcm(2, A327938(n+1))/2)`
-/

namespace A328621.P12908554336185513722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (SequenceMachineLib.roundAway ((Int.lcm 2 (A327938 (n + 1)) : ℚ) / 2)).toNat

end

end A328621.P12908554336185513722

/-! ## A328621.P11934792050256033438

`A328618(gcd(A000265(n+1), A327938(n+1)))`
-/

namespace A328621.P11934792050256033438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (Int.gcd (A000265 (n + 1)) (A327938 (n + 1)))

end

end A328621.P11934792050256033438

/-! ## A328621.P3248412048078163378

`A328618(A000265(n+1))/A000265(A327939(n+1))`
-/

namespace A328621.P3248412048078163378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328618 (A000265 (n + 1)).toNat : ℚ) / (A000265 (A327939 (n + 1)).toNat : ℚ)

end

end A328621.P3248412048078163378

/-! ## A328621.P9905070617989912649

`A328618(A327938(lcm(4, A327938(n+1))))`
-/

namespace A328621.P9905070617989912649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (A327938 (Int.lcm 4 (A327938 (n + 1)))).toNat

end

end A328621.P9905070617989912649

/-! ## A328621.P5894970593915032325

`A000265(A328618(n+1)/A327939(n+1))`
-/

namespace A328621.P5894970593915032325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A328618 (n + 1) : ℚ) / (A327939 (n + 1) : ℚ))).toNat

end

end A328621.P5894970593915032325

/-! ## A328621.P2853243342721460397

`(n+1)²/A327939((n+1)²)`
-/

namespace A328621.P2853243342721460397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A327939 ((n + 1) ^ 2) : ℚ)

end

end A328621.P2853243342721460397

/-! ## A328621.P14060071336957154530

`(n+1)*(n+1)/A327939((n+1)*(n+1))`
-/

namespace A328621.P14060071336957154530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / (A327939 ((n + 1) * (n + 1)) : ℚ))

end

end A328621.P14060071336957154530

/-! ## A328621.P17937732639232792123

`A327938(((n+1)/and(n+1, -(n+1)))²)`
-/

namespace A328621.P17937732639232792123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) ^ 2)).toNat

end

end A328621.P17937732639232792123

/-! ## A328621.P7125598777430899803

`A327938(A030640(n)²)`
-/

namespace A328621.P7125598777430899803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A030640 n ^ 2).toNat

end

end A328621.P7125598777430899803

/-! ## A328621.P11324443428203817731

`A327938(A168077(n+1))`
-/

namespace A328621.P11324443428203817731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A168077 (n + 1)).toNat

end

end A328621.P11324443428203817731

/-! ## A328621.P2048815848124569407

`A327938(A181318(n+1))`
-/

namespace A328621.P2048815848124569407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A181318 (n + 1)).toNat

end

end A328621.P2048815848124569407

/-! ## A328621.P9142529170424263631

`A327938(A191871(n+1))`
-/

namespace A328621.P9142529170424263631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A191871 (n + 1)).toNat

end

end A328621.P9142529170424263631

/-! ## A328621.P10133030639625410776

`A327938(Δ[A001318(n)]²)`
-/

namespace A328621.P10133030639625410776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A328621.P10133030639625410776

/-! ## A328621.P4833357491341438672

`A327938(A000265((n+1)²))`
-/

namespace A328621.P4833357491341438672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A000265 ((n + 1) ^ 2)).toNat

end

end A328621.P4833357491341438672

/-! ## A328621.P2043129185102762373

`A327938(gcd(n+1, A000217(n))²)`
-/

namespace A328621.P2043129185102762373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (Int.gcd (n + 1 : ℤ) (A000217 n) ^ 2)

end

end A328621.P2043129185102762373

/-! ## A328621.P648807951083270863

`A327938((n+1)²)`
-/

namespace A328621.P648807951083270863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 ((n + 1) ^ 2)

end

end A328621.P648807951083270863

/-! ## A328621.P17918968269427700236

`A327937(A327937(A327938((n+1)*(n+1))))`
-/

namespace A328621.P17918968269427700236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (A327937 (A327938 ((n + 1) * (n + 1))).toNat).toNat

end

end A328621.P17918968269427700236

/-! ## A328621.P2462712943992287982

`A011262(A327938(A011262(A327938(A328618(n+1)))))`
-/

namespace A328621.P2462712943992287982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A327938 (A011262 (A327938 (A328618 (n + 1)).toNat).toNat).toNat).toNat

end

end A328621.P2462712943992287982

/-!
# A328622: In primorial base representation of n, multiply by 2 all other digits except the least significant, and reduce each such product modulo prime(k) (to get the new digit), where k > 1 is the position of the digit, then convert back to decimal.

The programs for A328622, there is no canonical definition to state claims against.
-/

/-! ## A328622.P14341084995112399193

`A289234(A328623(A289234(n)))`
-/

namespace A328622.P14341084995112399193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A328623 (A289234 n).toNat).toNat

end

end A328622.P14341084995112399193

/-! ## A328622.P16669953766557825599

`A372576(A346102(n))`
-/

namespace A328622.P16669953766557825599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A346102 n).toNat

end

end A328622.P16669953766557825599

/-! ## A328622.P6987740608653439744

`A328623(A328623(A328623(n)%A277552(n+1)))`
-/

namespace A328622.P6987740608653439744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 (A328623 (Int.tmod (A328623 n) (A277552 (n + 1))).toNat).toNat

end

end A328622.P6987740608653439744

/-! ## A328622.P1989408152923570400

`A328623(A328623(A328623(n)%A090165(n)))`
-/

namespace A328622.P1989408152923570400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328623 (A328623 (Int.tmod (A328623 n) (A090165 n)).toNat).toNat

end

end A328622.P1989408152923570400

/-! ## A328622.P1326743183626446330

`∑{d}[A346102(n), A276085(A014963(#))]`
-/

namespace A328622.P1326743183626446330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276085 (A014963 d).toNat

end

end A328622.P1326743183626446330

/-!
# A328623: Inverse permutation to A328622.

The programs for A328623, there is no canonical definition to state claims against.
-/

/-! ## A328623.P14806510041921057715

`A289234(A328622(A289234(n)))`
-/

namespace A328623.P14806510041921057715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A328622 (A289234 n).toNat).toNat

end

end A328623.P14806510041921057715

/-! ## A328623.P1127185869765832403

`A372576(A346233(n))`
-/

namespace A328623.P1127185869765832403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A346233 n).toNat

end

end A328623.P1127185869765832403

/-! ## A328623.P10937287444955519724

`A225901(A289234(n))%A296918(n+1)`
-/

namespace A328623.P10937287444955519724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225901 (A289234 n).toNat) (A296918 (n + 1))

end

end A328623.P10937287444955519724

/-! ## A328623.P17192609485570158833

`A225901(A289234(n)%A000010(2^n+3))`
-/

namespace A328623.P17192609485570158833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (Int.tmod (A289234 n) (A000010 (2 ^ n + 3))).toNat

end

end A328623.P17192609485570158833

/-! ## A328623.P14492133255394175152

`A225901(n)/A121554(A174616(n))`
-/

namespace A328623.P14492133255394175152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225901 n : ℚ) / (A121554 (A174616 n).toNat : ℚ)

end

end A328623.P14492133255394175152

/-!
# A328624: Twisted variant of A276086 indexed by A328625.

The programs for A328624, there is no canonical definition to state claims against.
-/

/-! ## A328624.P12512660519793386749

`A276086(A328625(n))`
-/

namespace A328624.P12512660519793386749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328625 n).toNat

end

end A328624.P12512660519793386749

/-! ## A328624.P3141441354427929571

`A328580(n)+A328476(A328625(n))`
-/

namespace A328624.P3141441354427929571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n + A328476 (A328625 n).toNat

end

end A328624.P3141441354427929571

/-! ## A328624.P17219624152290321744

`A328571(n)*A328572(A328625(n))`
-/

namespace A328624.P17219624152290321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 (A328625 n).toNat

end

end A328624.P17219624152290321744

/-! ## A328624.P12534746948333813322

`A328627(A328625(A328625(n)%A000040(n+1)))`
-/

namespace A328624.P12534746948333813322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 (Int.tmod (A328625 n) (A000040 (n + 1))).toNat).toNat

end

end A328624.P12534746948333813322

/-! ## A328624.P10959573840360326165

`A328627(A328625(A328625(n))%A025487(n+1))`
-/

namespace A328624.P10959573840360326165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (Int.tmod (A328625 (A328625 n).toNat) (A025487 (n + 1))).toNat

end

end A328624.P10959573840360326165

/-! ## A328624.P115194226921203458

`A346101(A289234(A328625(A289234(A289234(n)))))`
-/

namespace A328624.P115194226921203458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 (A328625 (A289234 (A289234 n).toNat).toNat).toNat).toNat

end

end A328624.P115194226921203458

/-! ## A328624.P2388765128057070418

`A328627(A328625(A328625(A328625(A328626(n)))))`
-/

namespace A328624.P2388765128057070418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 (A328625 (A328625 (A328626 n).toNat).toNat).toNat).toNat

end

end A328624.P2388765128057070418

/-!
# A328625: In primorial base representation of n, multiply all other digits except the least significant with 1+{their right hand side neighbor}, and reduce each modulo prime(k) (with k > 1) to get a new digit for the position k (the least significant digit stays as it is), then convert back to decimal.

The programs for A328625, there is no canonical definition to state claims against.
-/

/-! ## A328625.P12095162867053145047

`A372576(A328624(n))`
-/

namespace A328625.P12095162867053145047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A328624 n).toNat

end

end A328625.P12095162867053145047

/-! ## A328625.P4671358624817781167

`A328626(A328626(A328626(n)%A141214(n)))`
-/

namespace A328625.P4671358624817781167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328626 (A328626 (Int.tmod (A328626 n) (A141214 n)).toNat).toNat

end

end A328625.P4671358624817781167

/-! ## A328625.P13831593257838032713

`∑{d}[A328624(n), A276085(A014963(#))]`
-/

namespace A328625.P13831593257838032713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276085 (A014963 d).toNat

end

end A328625.P13831593257838032713

/-!
# A328626: Inverse permutation to A328625.

The programs for A328626, there is no canonical definition to state claims against.
-/

/-! ## A328626.P14711379610051095081

`A372576(A328627(n))`
-/

namespace A328626.P14711379610051095081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A328627 n).toNat

end

end A328626.P14711379610051095081

/-! ## A328626.P8498288628536392077

`A328625(A328625(A328625(n)%A275911(n+1)))`
-/

namespace A328626.P8498288628536392077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328625 (A328625 (Int.tmod (A328625 n) (A275911 (n + 1))).toNat).toNat

end

end A328626.P8498288628536392077

/-! ## A328626.P16079008058921249703

`A328625(A328625(A328625(n))%A336032(n+3))`
-/

namespace A328626.P16079008058921249703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328625 (Int.tmod (A328625 (A328625 n).toNat) (A336032 (n + 3))).toNat

end

end A328626.P16079008058921249703

/-! ## A328626.P3937416719929037704

`∑{d}[A328627(n), A276085(A014963(#))]`
-/

namespace A328626.P3937416719929037704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276085 (A014963 d).toNat

end

end A328626.P3937416719929037704

/-!
# A328627: Twisted variant of A276086 indexed by A328626.

The programs for A328627, there is no canonical definition to state claims against.
-/

/-! ## A328627.P12604050633377257947

`A276086(A328626(n))`
-/

namespace A328627.P12604050633377257947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328626 n).toNat

end

end A328627.P12604050633377257947

/-! ## A328627.P9764738558090244083

`A328580(n)+A328476(A328626(n))`
-/

namespace A328627.P9764738558090244083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n + A328476 (A328626 n).toNat

end

end A328627.P9764738558090244083

/-! ## A328627.P2919526406745230689

`A328571(n)*A328572(A328626(n))`
-/

namespace A328627.P2919526406745230689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 (A328626 n).toNat

end

end A328627.P2919526406745230689

/-! ## A328627.P881113037579787851

`A328475(A328626(n))*A328580(A289234(n))`
-/

namespace A328627.P881113037579787851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (A328626 n).toNat * A328580 (A289234 n).toNat

end

end A328627.P881113037579787851

/-! ## A328627.P18041019683480492530

`A328624(A328626(A328626(n)%A025487(n+1)))`
-/

namespace A328627.P18041019683480492530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 (Int.tmod (A328626 n) (A025487 (n + 1))).toNat).toNat

end

end A328627.P18041019683480492530

/-! ## A328627.P9226048480077460771

`A328624(A328626(A328626(A328626(A328625(n)))))`
-/

namespace A328627.P9226048480077460771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 (A328626 (A328626 (A328625 n).toNat).toNat).toNat).toNat

end

end A328627.P9226048480077460771

/-!
# A328630: a(n) is the number of prime factors in A328624(n), counted with multiplicity.

The programs for A328630, there is no canonical definition to state claims against.
-/

/-! ## A328630.P287390147385099538

`A276150(A328625(n))`
-/

namespace A328630.P287390147385099538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A328625 n).toNat

end

end A328630.P287390147385099538

/-! ## A328630.P3805692874472567064

`A001222(A328624(n))`
-/

namespace A328630.P3805692874472567064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328624 n).toNat

end

end A328630.P3805692874472567064

/-! ## A328630.P7601753771829450156

`∑{digits}[A049345(A328625(n)), A007376(#)]`
-/

namespace A328630.P7601753771829450156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A328625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007376 x).sum

end

end A328630.P7601753771829450156

/-! ## A328630.P2097181011408874919

`∑{digits}[A049345(A328625(n)), A007953(#)]`
-/

namespace A328630.P2097181011408874919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A328625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007953 x).sum

end

end A328630.P2097181011408874919

/-! ## A328630.P16363565183017014725

`∑{digits}[A049345(A328625(n)), A133500(#)]`
-/

namespace A328630.P16363565183017014725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A328625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A133500 x).sum

end

end A328630.P16363565183017014725

/-! ## A328630.P13078709359399649672

`∑{digits}[A049345(A328625(n)), A289234(#)]`
-/

namespace A328630.P13078709359399649672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A328625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A289234 x).sum

end

end A328630.P13078709359399649672

/-! ## A328630.P3886205493387730669

`∑{e}[A278226(A328625(n)), A292579(#)]`
-/

namespace A328630.P3886205493387730669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (A328625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A292579 (Nat.factorization (f1 n).natAbs p)

end

end A328630.P3886205493387730669

/-! ## A328630.P2781244729962038548

`∑{e}[A278226(A328625(n)), A305458(#)]`
-/

namespace A328630.P2781244729962038548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (A328625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A305458 (Nat.factorization (f1 n).natAbs p)

end

end A328630.P2781244729962038548

/-! ## A328630.P12195317501024792460

`∑{p}[A276086(n), val(A328624(n), #)]`
-/

namespace A328630.P12195317501024792460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A328624 n).toNat p

end

end A328630.P12195317501024792460

/-!
# A328632: Numbers k such that A276086(k) == 1 (mod 6), where A276086 is the primorial base exp-function.

The programs for A328632, there is no canonical definition to state claims against.
-/

/-! ## A328632.P10777463923133541738

`6*A358845(n+1)`
-/

namespace A328632.P10777463923133541738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A358845 (n + 1)

end

end A328632.P10777463923133541738

/-! ## A328632.P14345259502844710257

`record[n*A358841(n)]`
-/

namespace A328632.P14345259502844710257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A358841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328632.P14345259502844710257

/-! ## A328632.P7620447673303164242

`2*eq[1, A358841(2*n)]`
-/

namespace A328632.P7620447673303164242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P7620447673303164242

/-! ## A328632.P11857012428186252208

`2*eq[2, A358850(2*n+1)]`
-/

namespace A328632.P11857012428186252208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358850 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P11857012428186252208

/-! ## A328632.P7794693354205264368

`2*eq[1, A358840(2*n)]`
-/

namespace A328632.P7794693354205264368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P7794693354205264368

/-! ## A328632.P18198688690077696951

`A008588(A358845(n+1))`
-/

namespace A328632.P18198688690077696951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A358845 (n + 1)).toNat

end

end A328632.P18198688690077696951

/-! ## A328632.P14342298476260915019

`filter[A008588(n), A358841(#)]`
-/

namespace A328632.P14342298476260915019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358841 (f1 j).toNat = 1) n)

end

end A328632.P14342298476260915019

/-! ## A328632.P11723340275901436669

`filter[A256882(n+1), A358841(#)]`
-/

namespace A328632.P11723340275901436669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358841 (f1 j).toNat = 1) n)

end

end A328632.P11723340275901436669

/-! ## A328632.P10329764624441904640

`eq[1, A358840(n)]`
-/

namespace A328632.P10329764624441904640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358840 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P10329764624441904640

/-! ## A328632.P14704904789519798293

`eq[1, A358841(n)]`
-/

namespace A328632.P14704904789519798293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P14704904789519798293

/-! ## A328632.P202361239841092158

`eq[2, A358850(n+1)]`
-/

namespace A328632.P202361239841092158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P202361239841092158

/-! ## A328632.P16785257160073096987

`eq[2, A358850(n)]-1`
-/

namespace A328632.P16785257160073096987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A328632.P16785257160073096987

/-! ## A328632.P9883522228746018473

`filter[A319451(n), A358841(#)]`
-/

namespace A328632.P9883522228746018473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358841 (f1 j).toNat = 1) n)

end

end A328632.P9883522228746018473

/-! ## A328632.P2751956718764841243

`eq[2, A328578(n)]`
-/

namespace A328632.P2751956718764841243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P2751956718764841243

/-! ## A328632.P7339600374921785535

`eq[3, A328579(n)]`
-/

namespace A328632.P7339600374921785535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P7339600374921785535

/-! ## A328632.P17941810023839883156

`eq[1, A328843(n)%3]`
-/

namespace A328632.P17941810023839883156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328843 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328632.P17941810023839883156

/-! ## A328632.P17384781802107895298

`lt[2, A328570(A328579(n)²)]`
-/

namespace A328632.P17384781802107895298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 (A328579 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328632.P17384781802107895298

/-! ## A328632.P12138931643913764507

`lt[A144329(A328578(n)+1), 2]`
-/

namespace A328632.P12138931643913764507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (A328578 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328632.P12138931643913764507

/-! ## A328632.P6462094077977358572

`lt[2, A009194(2*A328579(n))]`
-/

namespace A328632.P6462094077977358572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (2 * A328579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328632.P6462094077977358572

/-! ## A328632.P7708594631195231596

`lt[A328579(n), A291358(n+1)]`
-/

namespace A328632.P7708594631195231596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328632.P7708594631195231596

/-!
# A328633: Numbers n for which A328578(n) = A257993(A276086(A276086(n))) = 3, where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328633, there is no canonical definition to state claims against.
-/

/-! ## A328633.P8742357574404332316

`eq[3, A328578(n)]`
-/

namespace A328633.P8742357574404332316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328633.P8742357574404332316

/-! ## A328633.P4855711284830008184

`eq[5, A328579(n)]`
-/

namespace A328633.P4855711284830008184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328633.P4855711284830008184

/-! ## A328633.P12812546122802629208

`eq[3, A328843(n)%10]`
-/

namespace A328633.P12812546122802629208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328843 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328633.P12812546122802629208

/-! ## A328633.P12784491759243912484

`lt[A328579(n), A009194(A328579(n)+1)]`
-/

namespace A328633.P12784491759243912484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A328579 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328633.P12784491759243912484

/-! ## A328633.P16002346860043142294

`lt[3, A176919(A328579(n)+2)]`
-/

namespace A328633.P16002346860043142294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (A328579 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328633.P16002346860043142294

/-! ## A328633.P7587124986581388658

`lt[A144329(A328578(n)), A107279(n)]`
-/

namespace A328633.P7587124986581388658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144329 (A328578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328633.P7587124986581388658

/-!
# A328634: Numbers n for which A328578(n) = A257993(A276086(A276086(n))) = 4.

The programs for A328634, there is no canonical definition to state claims against.
-/

/-! ## A328634.P3387473161146059747

`eq[4, A328578(n)]`
-/

namespace A328634.P3387473161146059747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328634.P3387473161146059747

/-! ## A328634.P16060265430334709726

`eq[7, A328579(n)]`
-/

namespace A328634.P16060265430334709726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328634.P16060265430334709726

/-! ## A328634.P9852028380676919634

`lt[A103369(A328579(n)²), 2]`
-/

namespace A328634.P9852028380676919634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A328579 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328634.P9852028380676919634

/-! ## A328634.P9941790273750094718

`A328631(∑[n+3]+7)`
-/

namespace A328634.P9941790273750094718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A328634.P9941790273750094718

/-! ## A328634.P9645986519645612487

`eq[7, A020639(A328763(n)%A069482(n+1))]`
-/

namespace A328634.P9645986519645612487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A328763 n) (A069482 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328634.P9645986519645612487

/-!
# A328635: Numbers n for which A328578(n) = A257993(A276086(A276086(n))) = 5.

The programs for A328635, there is no canonical definition to state claims against.
-/

/-! ## A328635.P8858048950193791598

`eq[5, A328578(n)]`
-/

namespace A328635.P8858048950193791598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328635.P8858048950193791598

/-! ## A328635.P9365679321741039418

`eq[11, A328579(n)]`
-/

namespace A328635.P9365679321741039418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328635.P9365679321741039418

/-! ## A328635.P5823919699717250893

`A328631(A155212(n)+13)`
-/

namespace A328635.P5823919699717250893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (A155212 n + 13).toNat

end

end A328635.P5823919699717250893

/-! ## A328635.P3512062265411598573

`A328631(A056000(n)+15)`
-/

namespace A328635.P3512062265411598573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (A056000 n + 15).toNat

end

end A328635.P3512062265411598573

/-! ## A328635.P711756990665099446

`A328631(A000096(n+3)+6)`
-/

namespace A328635.P711756990665099446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (A000096 (n + 3) + 6).toNat

end

end A328635.P711756990665099446

/-!
# A328636: Numbers n for which A328578(n) = A257993(A276086(A276086(n))) = 6.

The programs for A328636, there is no canonical definition to state claims against.
-/

/-! ## A328636.P15395317519357346174

`eq[6, A328578(n)]`
-/

namespace A328636.P15395317519357346174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328636.P15395317519357346174

/-! ## A328636.P9839615648578704555

`eq[13, A328579(n)]`
-/

namespace A328636.P9839615648578704555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328636.P9839615648578704555

/-! ## A328636.P654503117774711378

`A328631(A056115(n)+21)`
-/

namespace A328636.P654503117774711378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (A056115 n + 21).toNat

end

end A328636.P654503117774711378

/-! ## A328636.P1938671810253800532

`A328631(A167614(n+4)+3)`
-/

namespace A328636.P1938671810253800532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (A167614 (n + 4) + 3).toNat

end

end A328636.P1938671810253800532

/-! ## A328636.P13254002401411857707

`A328631(A000124(n+5)+5)`
-/

namespace A328636.P13254002401411857707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (A000124 (n + 5) + 5).toNat

end

end A328636.P13254002401411857707

/-!
# A328639: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(s-2)).

The programs for A328639, the canonical program `A328639.P17852271608018374893` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328639 has offset 1).

The definition of A328639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328639.P4192814977313155516

`A008836(n+1)*A351265(n+1)`
-/

namespace A328639.P4192814977313155516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A351265 (n + 1)

end

end A328639.P4192814977313155516

namespace A328639

/-- `A008836(n+1)*A351265(n+1)` -/
def P4192814977313155516.Spec : Prop :=
  ∀ n, P4192814977313155516.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P10597502141373717745

`∑{d}[A007947(n+1), #²*A008836(n+1)]`
-/

namespace A328639.P10597502141373717745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d ^ 2 : ℤ) * A008836 (n + 1)

end

end A328639.P10597502141373717745

namespace A328639

/-- `∑{d}[A007947(n+1), #²*A008836(n+1)]` -/
def P10597502141373717745.Spec : Prop :=
  ∀ n, P10597502141373717745.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P17712773560999363040

`∑{d}[n+1, A010052(#)*A053822((n+1)/#)]`
-/

namespace A328639.P17712773560999363040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P17712773560999363040

namespace A328639

/-- `∑{d}[n+1, A010052(#)*A053822((n+1)/#)]` -/
def P17712773560999363040.Spec : Prop :=
  ∀ n, P17712773560999363040.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P15059287838569713873

`∑{d}[n+1, A046970(#)*A158522((n+1)/#)]`
-/

namespace A328639.P15059287838569713873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P15059287838569713873

namespace A328639

/-- `∑{d}[n+1, A046970(#)*A158522((n+1)/#)]` -/
def P15059287838569713873.Spec : Prop :=
  ∀ n, P15059287838569713873.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P6744203665169811453

`∑{d}[n+1, A008836(#)*A334657((n+1)/#)]`
-/

namespace A328639.P6744203665169811453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P6744203665169811453

namespace A328639

/-- `∑{d}[n+1, A008836(#)*A334657((n+1)/#)]` -/
def P6744203665169811453.Spec : Prop :=
  ∀ n, P6744203665169811453.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P8329721922961165482

`∑{d}[n+1, A053191(#)*A328640((n+1)/#)]`
-/

namespace A328639.P8329721922961165482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P8329721922961165482

namespace A328639

/-- `∑{d}[n+1, A053191(#)*A328640((n+1)/#)]` -/
def P8329721922961165482.Spec : Prop :=
  ∀ n, P8329721922961165482.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P17852271608018374893

`∑{d}[n+1, A076752(#)*A328254((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328639

/-- `∑{d}[n+1, A076752(#)*A328254((n+1)/#)]` -/
def P17852271608018374893.Spec : Prop :=
  ∀ n, P17852271608018374893.a n = A328639 (n + 1)

theorem P17852271608018374893.correct : P17852271608018374893.Spec := by
  intro n
  simp only [A328639, Nat.add_sub_cancel]

end A328639

/-! ## A328639.P12741430184645930010

`∑{d}[n+1, A074722(#)*A351654((n+1)/#)]`
-/

namespace A328639.P12741430184645930010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328639.P12741430184645930010

namespace A328639

/-- `∑{d}[n+1, A074722(#)*A351654((n+1)/#)]` -/
def P12741430184645930010.Spec : Prop :=
  ∀ n, P12741430184645930010.a n = A328639 (n + 1)

end A328639

/-! ## A328639.P9395534944262397998

`A328640(n+1)*A351265(n+1)/A351266(n+1)`
-/

namespace A328639.P9395534944262397998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328640 (n + 1) * A351265 (n + 1) : ℚ) / (A351266 (n + 1) : ℚ)

end

end A328639.P9395534944262397998

namespace A328639

/-- `A328640(n+1)*A351265(n+1)/A351266(n+1)` -/
def P9395534944262397998.Spec : Prop :=
  ∀ n, P9395534944262397998.a n = (A328639 (n + 1) : ℚ)

end A328639

/-!
# A328640: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(s-3)).

The programs for A328640, the canonical program `A328640.P15139602458523705461` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328640 has offset 1).

The definition of A328640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328640.P2993227100904988519

`Δ[A002819(n)]*A351266(n+1)`
-/

namespace A328640.P2993227100904988519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A351266 (n + 1)

end

end A328640.P2993227100904988519

namespace A328640

/-- `Δ[A002819(n)]*A351266(n+1)` -/
def P2993227100904988519.Spec : Prop :=
  ∀ n, P2993227100904988519.a n = A328640 (n + 1)

end A328640

/-! ## A328640.P6264170044376271346

`A008836(n+1)*A351266(n+1)`
-/

namespace A328640.P6264170044376271346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A351266 (n + 1)

end

end A328640.P6264170044376271346

namespace A328640

/-- `A008836(n+1)*A351266(n+1)` -/
def P6264170044376271346.Spec : Prop :=
  ∀ n, P6264170044376271346.a n = A328640 (n + 1)

end A328640

/-! ## A328640.P15139602458523705461

`A323363(n+1)*A367865(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A328640

/-- `A323363(n+1)*A367865(n+1)` -/
def P15139602458523705461.Spec : Prop :=
  ∀ n, P15139602458523705461.a n = A328640 (n + 1)

theorem P15139602458523705461.correct : P15139602458523705461.Spec := by
  intro n
  simp only [A328640, Nat.add_sub_cancel]

end A328640

/-! ## A328640.P5711762009554265897

`∑{d}[n+1, A063453(#)*A158522((n+1)/#)]`
-/

namespace A328640.P5711762009554265897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063453 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328640.P5711762009554265897

namespace A328640

/-- `∑{d}[n+1, A063453(#)*A158522((n+1)/#)]` -/
def P5711762009554265897.Spec : Prop :=
  ∀ n, P5711762009554265897.a n = A328640 (n + 1)

end A328640

/-! ## A328640.P1808675650407329230

`∑{d}[n+1, A008836(#)*A334659((n+1)/#)]`
-/

namespace A328640.P1808675650407329230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328640.P1808675650407329230

namespace A328640

/-- `∑{d}[n+1, A008836(#)*A334659((n+1)/#)]` -/
def P1808675650407329230.Spec : Prop :=
  ∀ n, P1808675650407329230.a n = A328640 (n + 1)

end A328640

/-! ## A328640.P7225443595723306948

`A008836(n+1)*A065959(A007947(n+1))`
-/

namespace A328640.P7225443595723306948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A065959 (A007947 (n + 1)).toNat

end

end A328640.P7225443595723306948

namespace A328640

/-- `A008836(n+1)*A065959(A007947(n+1))` -/
def P7225443595723306948.Spec : Prop :=
  ∀ n, P7225443595723306948.a n = A328640 (n + 1)

end A328640

/-! ## A328640.P2229998804796821554

`A008683(A007913(n+1))*A351266(n+1)`
-/

namespace A328640.P2229998804796821554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat * A351266 (n + 1)

end

end A328640.P2229998804796821554

namespace A328640

/-- `A008683(A007913(n+1))*A351266(n+1)` -/
def P2229998804796821554.Spec : Prop :=
  ∀ n, P2229998804796821554.a n = A328640 (n + 1)

end A328640

/-! ## A328640.P7614660552700445003

`A328639(n+1)/A351265(n+1)*A351266(n+1)`
-/

namespace A328640.P7614660552700445003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328639 (n + 1) : ℚ) / (A351265 (n + 1) : ℚ) * (A351266 (n + 1) : ℚ)

end

end A328640.P7614660552700445003

namespace A328640

/-- `A328639(n+1)/A351265(n+1)*A351266(n+1)` -/
def P7614660552700445003.Spec : Prop :=
  ∀ n, P7614660552700445003.a n = (A328640 (n + 1) : ℚ)

end A328640

/-!
# A328641: Dirichlet g.f.: zeta(s)^2 / zeta(s-1)^2.

The programs for A328641, the canonical program `A328641.P12624645493984970613` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328641 has offset 1).

The definition of A328641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328641.P12624645493984970613

`∑{d}[n+1, A101035(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A328641

/-- `∑{d}[n+1, A101035(#)]` -/
def P12624645493984970613.Spec : Prop :=
  ∀ n, P12624645493984970613.a n = A328641 (n + 1)

theorem P12624645493984970613.correct : P12624645493984970613.Spec := by
  intro n
  simp only [A328641, Nat.add_sub_cancel]

end A328641

/-! ## A328641.P9269979553720458713

`A023900(n+1)*A344326(n+1)`
-/

namespace A328641.P9269979553720458713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A344326 (n + 1)

end

end A328641.P9269979553720458713

namespace A328641

/-- `A023900(n+1)*A344326(n+1)` -/
def P9269979553720458713.Spec : Prop :=
  ∀ n, P9269979553720458713.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P6250113804804815221

`∑{d}[n+1, A023900(#)*A023900((n+1)/#)]`
-/

namespace A328641.P6250113804804815221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P6250113804804815221

namespace A328641

/-- `∑{d}[n+1, A023900(#)*A023900((n+1)/#)]` -/
def P6250113804804815221.Spec : Prop :=
  ∀ n, P6250113804804815221.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P13043422241773746377

`∑{d}[n+1, A055615(#)*A130054((n+1)/#)]`
-/

namespace A328641.P13043422241773746377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P13043422241773746377

namespace A328641

/-- `∑{d}[n+1, A055615(#)*A130054((n+1)/#)]` -/
def P13043422241773746377.Spec : Prop :=
  ∀ n, P13043422241773746377.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P9847653782304712798

`∑{d}[n+1, A000005(#)*A328722((n+1)/#)]`
-/

namespace A328641.P9847653782304712798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P9847653782304712798

namespace A328641

/-- `∑{d}[n+1, A000005(#)*A328722((n+1)/#)]` -/
def P9847653782304712798.Spec : Prop :=
  ∀ n, P9847653782304712798.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P12182684914016792363

`∑{d}[n+1, A007425(#)*A327960((n+1)/#)]`
-/

namespace A328641.P12182684914016792363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P12182684914016792363

namespace A328641

/-- `∑{d}[n+1, A007425(#)*A327960((n+1)/#)]` -/
def P12182684914016792363.Spec : Prop :=
  ∀ n, P12182684914016792363.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P11259930555697961812

`∑{d}[n+1, A034444(#)*A347092((n+1)/#)]`
-/

namespace A328641.P11259930555697961812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P11259930555697961812

namespace A328641

/-- `∑{d}[n+1, A034444(#)*A347092((n+1)/#)]` -/
def P11259930555697961812.Spec : Prop :=
  ∀ n, P11259930555697961812.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P915336597063306625

`∑{d}[n+1, A046970(#)*A340850((n+1)/#)]`
-/

namespace A328641.P915336597063306625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P915336597063306625

namespace A328641

/-- `∑{d}[n+1, A046970(#)*A340850((n+1)/#)]` -/
def P915336597063306625.Spec : Prop :=
  ∀ n, P915336597063306625.a n = A328641 (n + 1)

end A328641

/-! ## A328641.P6845592644108835755

`∑{d}[n+1, A057660(#)*A351654((n+1)/#)]`
-/

namespace A328641.P6845592644108835755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328641.P6845592644108835755

namespace A328641

/-- `∑{d}[n+1, A057660(#)*A351654((n+1)/#)]` -/
def P6845592644108835755.Spec : Prop :=
  ∀ n, P6845592644108835755.a n = A328641 (n + 1)

end A328641

/-!
# A328642: Positive integers m such that the matrix E_m has order 2^m-1 in GL_m(2) where E_m is the m X m invertible tridiagonal matrix with all nonzero entries equal to 1 except for the (m,m) entry that is equal to 2.

The programs for A328642, there is no canonical definition to state claims against.
-/

/-! ## A328642.P6169932441566333810

`record[A103489(A179538(n+2))]`
-/

namespace A328642.P6169932441566333810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103489 (A179538 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328642.P6169932441566333810

/-! ## A328642.P7175626647421049796

`record[A003558(A103489(n))+A000007(n)]`
-/

namespace A328642.P7175626647421049796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A103489 n).toNat + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328642.P7175626647421049796

/-! ## A328642.P2035821596071462426

`eq[A003558(n), A233583(A003965(n+1))]`
-/

namespace A328642.P2035821596071462426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A003965 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328642.P2035821596071462426

/-! ## A328642.P15126644912095174072

`A005097(A020753(comp[3*round(2*n/5)+n]))`
-/

namespace A328642.P15126644912095174072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A020753 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A328642.P15126644912095174072

/-! ## A328642.P243705275664386807

`lt[A062234(A324548(2*(n+1))), A000203(n+1)]`
-/

namespace A328642.P243705275664386807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (A324548 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328642.P243705275664386807

/-!
# A328643: Positive integers m such that the matrix E_m has order 3^m-1 in GL_m(3) where E_m is the m X m invertible tridiagonal matrix with all nonzero entries equal to 1 except for the (m,m) entry that is equal to 2.

The programs for A328643, there is no canonical definition to state claims against.
-/

/-! ## A328643.P5228153289932547935

`record[A302141(A332072(A065190(n+1)))]`
-/

namespace A328643.P5228153289932547935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 (A332072 (A065190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328643.P5228153289932547935

/-! ## A328643.P10165917828448737829

`record[A238371(A328642(n+1))]`
-/

namespace A328643.P10165917828448737829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238371 (A328642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328643.P10165917828448737829

/-! ## A328643.P14871802845405843460

`record[A238371(record[A070679(n+2)])]`
-/

namespace A328643.P14871802845405843460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238371 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328643.P14871802845405843460

/-! ## A328643.P15766896105454572055

`record[A014902(n)*A302141(A328642(n+1))]`
-/

namespace A328643.P15766896105454572055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014902 n * A302141 (A328642 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328643.P15766896105454572055

/-! ## A328643.P4795777898907570443

`record[A302141(A328642(n+1))%(3*A018565(n+1))]`
-/

namespace A328643.P4795777898907570443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302141 (A328642 (n + 1)).toNat) (3 * A018565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328643.P4795777898907570443

/-!
# A328652: Number of unlabeled loopless multigraphs with n edges covering four vertices.

The programs for A328652, the canonical program `A328652.P14425637367599864737` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328652 has offset 1).

The definition of A328652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003082, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328652.P14425637367599864737

`A003082(n+1)-A001399(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328652

/-- `A003082(n+1)-A001399(n+1)` -/
def P14425637367599864737.Spec : Prop :=
  ∀ n, P14425637367599864737.a n = A328652 (n + 1)

theorem P14425637367599864737.correct : P14425637367599864737.Spec := by
  intro n
  simp only [A328652, Nat.add_sub_cancel]

end A328652

/-! ## A328652.P11863751117042838090

`A290778(n+1)+Δ[A002620(n)]`
-/

namespace A328652.P11863751117042838090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290778 (n + 1) + (f1 (n + 1) - f1 n)

end

end A328652.P11863751117042838090

namespace A328652

/-- `A290778(n+1)+Δ[A002620(n)]` -/
def P11863751117042838090.Spec : Prop :=
  ∀ n, P11863751117042838090.a n = A328652 (n + 1)

end A328652

/-! ## A328652.P2630232686981549162

`A003082(n+1)-Δ[A000601(n)]`
-/

namespace A328652.P2630232686981549162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 (n + 1) - (f1 (n + 1) - f1 n)

end

end A328652.P2630232686981549162

namespace A328652

/-- `A003082(n+1)-Δ[A000601(n)]` -/
def P2630232686981549162.Spec : Prop :=
  ∀ n, P2630232686981549162.a n = A328652 (n + 1)

end A328652

/-! ## A328652.P3536520625516325237

`A003082(n+1)+A000601(n)-A000601(n+1)`
-/

namespace A328652.P3536520625516325237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003082 (n + 1) + (A000601 n - A000601 (n + 1))

end

end A328652.P3536520625516325237

namespace A328652

/-- `A003082(n+1)+A000601(n)-A000601(n+1)` -/
def P3536520625516325237.Spec : Prop :=
  ∀ n, P3536520625516325237.a n = A328652 (n + 1)

end A328652

/-!
# A328653: a(0) = 1, and for n >= 0, a(n+1) = -A326936(a(n)).

The programs for A328653, there is no canonical definition to state claims against.
-/

/-! ## A328653.P3860095989800840664

`abs(A326936(a(n-1)))` with `a(0)=1`
-/

namespace A328653.P3860095989800840664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A326936 (a (n - 1)).toNat|

end

end A328653.P3860095989800840664

/-! ## A328653.P10983750896258191710

`-A326936(floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A328653.P10983750896258191710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -A326936 (a (n - 1)).toNat

end

end A328653.P10983750896258191710

/-! ## A328653.P4233867729107722131

`-A326936(ceil(a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A328653.P4233867729107722131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -A326936 (a (n - 1)).toNat

end

end A328653.P4233867729107722131

/-! ## A328653.P16794318094104802542

`-A326936(round(a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A328653.P16794318094104802542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -A326936 (a (n - 1)).toNat

end

end A328653.P16794318094104802542

/-! ## A328653.P14997642837476771674

`A328654(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A328653.P14997642837476771674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328654 (a (n - 1)).toNat + a (n - 1)

end

end A328653.P14997642837476771674

/-!
# A328654: Consider an empty list L, and for k = 1, 2, ...: if L contains a pair of consecutive terms summing to k, then let (u, v) be the first such pair: replace the two terms u and v in L with a single term k and set a(u) = v and a(v) = u, otherwise append k to L.

The programs for A328654, there is no canonical definition to state claims against.
-/

/-! ## A328654.P11931239983856284348

`abs(A326936(n+1))-(n+1)`
-/

namespace A328654.P11931239983856284348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326936 (n + 1)| - (n + 1 : ℤ)

end

end A328654.P11931239983856284348

/-! ## A328654.P6908837552822860480

`A001478(n+1)+abs(A326936(n+1))`
-/

namespace A328654.P6908837552822860480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + |A326936 (n + 1)|

end

end A328654.P6908837552822860480

/-! ## A328654.P16865966472314063770

`A001489(n+1)+abs(A326936(n+1))`
-/

namespace A328654.P16865966472314063770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + |A326936 (n + 1)|

end

end A328654.P16865966472314063770

/-! ## A328654.P6003941323905743913

`A233583(abs(A326936(n+1)))-n`
-/

namespace A328654.P6003941323905743913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 |A326936 (n + 1)|.toNat - (n : ℤ)

end

end A328654.P6003941323905743913

/-! ## A328654.P13919556283705264740

`lcm(A014963(∑[n+1]), A326936(n+1))-(n+1)`
-/

namespace A328654.P13919556283705264740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) (A326936 (n + 1)) : ℤ) - (n + 1 : ℤ)

end

end A328654.P13919556283705264740

/-! ## A328654.P17032728982446298775

`A000188(A326936(n+1)²)-(n+1)`
-/

namespace A328654.P17032728982446298775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A326936 (n + 1) ^ 2).toNat - (n + 1 : ℤ)

end

end A328654.P17032728982446298775

/-!
# A328655: Least k such that Sum_{m=1..k} 1/m^2 > Product_{i=1..n} 1/(1 - 1/prime(i)^2).

The programs for A328655, there is no canonical definition to state claims against.
-/

/-! ## A328655.P5464629610831595189

`∑[A196050(A013655(2*(n+1)))]`
-/

namespace A328655.P5464629610831595189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A013655 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328655.P5464629610831595189

/-! ## A328655.P9657036986031336845

`A351014(A008965(n+1))+A298875(n)`
-/

namespace A328655.P9657036986031336845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A008965 (n + 1)).toNat + A298875 n

end

end A328655.P9657036986031336845

/-! ## A328655.P11244992718542530255

`A334028(A000045(n+2))+A298875(n)`
-/

namespace A328655.P11244992718542530255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A000045 (n + 2)).toNat + A298875 n

end

end A328655.P11244992718542530255

/-! ## A328655.P10808882772360447052

`A175139(A203181(n+1)+A131937(n+1))`
-/

namespace A328655.P10808882772360447052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175139 (A203181 (n + 1) + A131937 (n + 1)).toNat

end

end A328655.P10808882772360447052

/-! ## A328655.P683653482654374543

`A175140(A203181(n+1)+A131937(n+1))`
-/

namespace A328655.P683653482654374543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175140 (A203181 (n + 1) + A131937 (n + 1)).toNat

end

end A328655.P683653482654374543

/-!
# A328656: Numbers m such that d(m) < d(k) for all k < m, where d is the normalized delta defined as d(m) = (z(m+1) - z(m))*(log(z(m)/(2*Pi))/(2*Pi)) where z(k) is the imaginary part of the k-th Riemann zeta zero.

The programs for A328656, there is no canonical definition to state claims against.
-/

/-! ## A328656.P15611171206898020375

`A326502(lt[A189064(n+1), or(1, 3*n+1)])`
-/

namespace A328656.P15611171206898020375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328656.P15611171206898020375

/-! ## A328656.P8050868904083037570

`A326502(eq[A255270(n), A320031(n)])`
-/

namespace A328656.P8050868904083037570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328656.P8050868904083037570

/-! ## A328656.P1702083838758218347

`A326502(lt[A080248(n), A161831(n+1)])`
-/

namespace A328656.P1702083838758218347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328656.P1702083838758218347

/-! ## A328656.P11502233453302071237

`filter[A326502(n+1), A127247(#)]`
-/

namespace A328656.P11502233453302071237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127247 (f1 j).toNat = 1) n)

end

end A328656.P11502233453302071237

/-!
# A328657: Number of primitive (period n) n-bead bracelet structures which are not periodic palindromes using a maximum of three different colored beads.

The programs for A328657, there is no canonical definition to state claims against.
-/

/-! ## A328657.P6868879983903341510

`A056362(n+1)-A056514(n+1)`
-/

namespace A328657.P6868879983903341510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056362 (n + 1) - A056514 (n + 1)

end

end A328657.P6868879983903341510

/-! ## A328657.P1758562857210325730

`A328658(n+1)-A328039(n+1)`
-/

namespace A328657.P1758562857210325730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328658 (n + 1) - A328039 (n + 1)

end

end A328657.P1758562857210325730

/-! ## A328657.P829146063168540089

`A056363(n+1)-(A328039(n+1)+A056515(n+1))`
-/

namespace A328657.P829146063168540089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056363 (n + 1) - (A328039 (n + 1) + A056515 (n + 1))

end

end A328657.P829146063168540089

/-! ## A328657.P15329518319998611966

`A056521(n+1)+A328658(n+1)-A056368(n+1)`
-/

namespace A328657.P15329518319998611966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056521 (n + 1) + (A328658 (n + 1) - A056368 (n + 1))

end

end A328657.P15329518319998611966

/-! ## A328657.P2232693630417227325

`A328038(n+1)+A309784(A133263(n))`
-/

namespace A328657.P2232693630417227325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328038 (n + 1) + A309784 (A133263 n).toNat

end

end A328657.P2232693630417227325

/-!
# A328658: Number of primitive (period n) n-bead bracelet structures which are not periodic palindromes using a maximum of four different colored beads.

The programs for A328658, there is no canonical definition to state claims against.
-/

/-! ## A328658.P17717011037630465746

`A056363(n+1)-A056515(n+1)`
-/

namespace A328658.P17717011037630465746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056363 (n + 1) - A056515 (n + 1)

end

end A328658.P17717011037630465746

/-! ## A328658.P10942372257264590354

`A328657(n+1)+A328039(n+1)`
-/

namespace A328658.P10942372257264590354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (n + 1) + A328039 (n + 1)

end

end A328658.P10942372257264590354

/-! ## A328658.P8470809228707877682

`A056368(n+1)+A328657(n+1)-A056521(n+1)`
-/

namespace A328658.P8470809228707877682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056368 (n + 1) + (A328657 (n + 1) - A056521 (n + 1))

end

end A328658.P8470809228707877682

/-! ## A328658.P7530710962706424710

`A328657(n+1)+A309784(∑[n]+4)`
-/

namespace A328658.P7530710962706424710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (n + 1) + A309784 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A328658.P7530710962706424710

/-! ## A328658.P16554986270077229615

`A328657(n+1)+A057427(n)*A309784(A145018(n+1))`
-/

namespace A328658.P16554986270077229615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (n + 1) + A057427 n * A309784 (A145018 (n + 1)).toNat

end

end A328658.P16554986270077229615

/-! ## A328658.P10994762633809449282

`A328657(n+1)+A014963((n+1)*(n+2))*A309784(A145018(n+1))`
-/

namespace A328658.P10994762633809449282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328657 (n + 1) + A014963 ((n + 1) * (n + 2)) * A309784 (A145018 (n + 1)).toNat

end

end A328658.P10994762633809449282

/-!
# A328659: Partial sums of A035100: number of binary digits of the primes.

The programs for A328659, the canonical program `A328659.P9026826888422614636` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328659 has offset 0).

The definition of A328659 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328659.P9026826888422614636

`a(n-1)+A035100(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A328659

/-- `a(n-1)+A035100(n)` -/
def P9026826888422614636.Spec : Prop :=
  ∀ n, P9026826888422614636.a n = A328659 n

theorem P9026826888422614636.correct : P9026826888422614636.Spec := by
  intro n
  simp only [A328659]

end A328659

/-! ## A328659.P14480904838464958109

`∑[ceil(log2(A299763(n+1)))]`
-/

namespace A328659.P14480904838464958109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A299763 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328659.P14480904838464958109

namespace A328659

/-- `∑[ceil(log2(A299763(n+1)))]` -/
def P14480904838464958109.Spec : Prop :=
  ∀ n, P14480904838464958109.a n = A328659 n

end A328659

/-! ## A328659.P15024485541891488291

`∑[ceil(log2(A008578(n+1)+n%2))]`
-/

namespace A328659.P15024485541891488291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A008578 (n + 1) + ((n % 2 : ℕ) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328659.P15024485541891488291

namespace A328659

/-- `∑[ceil(log2(A008578(n+1)+n%2))]` -/
def P15024485541891488291.Spec : Prop :=
  ∀ n, P15024485541891488291.a n = A328659 n

end A328659

/-! ## A328659.P3590215600089358831

`∑[A035100(n+1)]-A035100(n+1)`
-/

namespace A328659.P3590215600089358831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035100 (n + 1)

end

end A328659.P3590215600089358831

namespace A328659

/-- `∑[A035100(n+1)]-A035100(n+1)` -/
def P3590215600089358831.Spec : Prop :=
  ∀ n, P3590215600089358831.a n = A328659 n

end A328659

/-! ## A328659.P12956204745790912706

`∑[A098388(n+1)]-A098388(n+1)+n`
-/

namespace A328659.P12956204745790912706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098388 (n + 1) + (n : ℤ)

end

end A328659.P12956204745790912706

namespace A328659

/-- `∑[A098388(n+1)]-A098388(n+1)+n` -/
def P12956204745790912706.Spec : Prop :=
  ∀ n, P12956204745790912706.a n = A328659 n

end A328659

/-! ## A328659.P10708552188382271406

`A095375(n+1)+A345867(n+1)-A035100(n+1)`
-/

namespace A328659.P10708552188382271406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095375 (n + 1) + (A345867 (n + 1) - A035100 (n + 1))

end

end A328659.P10708552188382271406

namespace A328659

/-- `A095375(n+1)+A345867(n+1)-A035100(n+1)` -/
def P10708552188382271406.Spec : Prop :=
  ∀ n, P10708552188382271406.a n = A328659 n

end A328659

/-! ## A328659.P3493556294903899373

`n-∑[A339823(A076274(n+1)+1)-n]`
-/

namespace A328659.P3493556294903899373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (A076274 (n + 1) + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328659.P3493556294903899373

namespace A328659

/-- `n-∑[A339823(A076274(n+1)+1)-n]` -/
def P3493556294903899373.Spec : Prop :=
  ∀ n, P3493556294903899373.a n = A328659 n

end A328659

/-! ## A328659.P8629212458277956874

`∑[A070939(A158611(n+2))]-1`
-/

namespace A328659.P8629212458277956874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A158611 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328659.P8629212458277956874

namespace A328659

/-- `∑[A070939(A158611(n+2))]-1` -/
def P8629212458277956874.Spec : Prop :=
  ∀ n, P8629212458277956874.a n = A328659 n

end A328659

/-! ## A328659.P566997067813301478

`∑[A000523(A008578(n+1))]+n`
-/

namespace A328659.P566997067813301478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A328659.P566997067813301478

namespace A328659

/-- `∑[A000523(A008578(n+1))]+n` -/
def P566997067813301478.Spec : Prop :=
  ∀ n, P566997067813301478.a n = A328659 n

end A328659

/-! ## A328659.P115753058123605172

`∑[A070939(record[A014963(n+1)])]-1`
-/

namespace A328659.P115753058123605172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328659.P115753058123605172

namespace A328659

/-- `∑[A070939(record[A014963(n+1)])]-1` -/
def P115753058123605172.Spec : Prop :=
  ∀ n, P115753058123605172.a n = A328659 n

end A328659

/-! ## A328659.P15476763494741312047

`∑[A029837(record[A014963(n+1)+1])]-1`
-/

namespace A328659.P15476763494741312047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328659.P15476763494741312047

namespace A328659

/-- `∑[A029837(record[A014963(n+1)+1])]-1` -/
def P15476763494741312047.Spec : Prop :=
  ∀ n, P15476763494741312047.a n = A328659 n

end A328659

/-!
# A328660: Numbers k such that (10^k + 7^k)/17 is prime.

The programs for A328660, there is no canonical definition to state claims against.
-/

/-! ## A328660.P5168221368236464684

`A215642(A076406(n+1))`
-/

namespace A328660.P5168221368236464684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215642 (A076406 (n + 1)).toNat

end

end A328660.P5168221368236464684

/-!
# A328661: If n is the k-th composite number then a(n) = a(k), otherwise a(n) = n.

The programs for A328661, there is no canonical definition to state claims against.
-/

/-! ## A328661.P3968188400081966703

`A008578(A022446(n))`
-/

namespace A328661.P3968188400081966703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A022446 n).toNat

end

end A328661.P3968188400081966703

/-! ## A328661.P12617685401032168786

`A158611(A022446(n)+1)`
-/

namespace A328661.P12617685401032168786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A022446 n + 1).toNat

end

end A328661.P12617685401032168786

/-! ## A328661.P203574387210958738

`A064989(∑{p}[A000040(A022446(n)), #])`
-/

namespace A328661.P203574387210958738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328661.P203574387210958738

/-! ## A328661.P2668499710993331617

`A064989(2*A000040(A022446(n)))`
-/

namespace A328661.P2668499710993331617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A000040 (A022446 n).toNat).toNat

end

end A328661.P2668499710993331617

/-! ## A328661.P9594606388872571317

`A246380(A000265(A246379(n+1)))`
-/

namespace A328661.P9594606388872571317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246380 (A000265 (A246379 (n + 1)).toNat).toNat

end

end A328661.P9594606388872571317

/-! ## A328661.P3963124541348986213

`A246380(A246375(A000265(A246377(n+1))))`
-/

namespace A328661.P3963124541348986213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246380 (A246375 (A000265 (A246377 (n + 1)).toNat).toNat).toNat

end

end A328661.P3963124541348986213

/-! ## A328661.P10054921096975453347

`A079068(A000040(A022446(n))²)`
-/

namespace A328661.P10054921096975453347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A000040 (A022446 n).toNat ^ 2).toNat

end

end A328661.P10054921096975453347

/-!
# A328662: Super pseudoprimes (or superpseudoprimes) to base 3: Fermat pseudoprimes to base 3 all of whose divisors that are larger than 1 are either primes or Fermat pseudoprimes to base 3.

The programs for A328662, there is no canonical definition to state claims against.
-/

/-! ## A328662.P2614862805558913819

`A020307(lt[A165884(3*n+1), 1])`
-/

namespace A328662.P2614862805558913819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165884 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020307 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A328662.P2614862805558913819

/-! ## A328662.P9425175671914846321

`A005935(lt[A045683(n), A007318(3*n+1)])`
-/

namespace A328662.P9425175671914846321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328662.P9425175671914846321

/-! ## A328662.P12204671224393402705

`A005935(lt[A249935(n), A264285(3*n+1)])`
-/

namespace A328662.P12204671224393402705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328662.P12204671224393402705

/-!
# A328667: a(n) = Sum_{d divides n} (-1)^(n + 1 + d + n/d) * d^2.

The programs for A328667, the canonical program `A328667.P10039655287552102416` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328667 has offset 1).

The definition of A328667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328667.P14890350527195531360

`∑{d}[n+1, (-1)^(n+2+#+(n+1)/#)*#²]`
-/

namespace A328667.P14890350527195531360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 2 + d : ℚ) + (n + 1 : ℚ) / (d : ℚ) : ℝ) * (d ^ 2 : ℝ)

end

end A328667.P14890350527195531360

namespace A328667

/-- `∑{d}[n+1, (-1)^(n+2+#+(n+1)/#)*#²]` -/
def P14890350527195531360.Spec : Prop :=
  ∀ n, P14890350527195531360.a n = (A328667 (n + 1) : ℝ)

end A328667

/-! ## A328667.P10039655287552102416

`(-1)^n*A321558(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A328667

/-- `(-1)^n*A321558(n+1)` -/
def P10039655287552102416.Spec : Prop :=
  ∀ n, P10039655287552102416.a n = A328667 (n + 1)

theorem P10039655287552102416.correct : P10039655287552102416.Spec := by
  intro n
  simp only [A328667, Nat.add_sub_cancel]

end A328667

/-! ## A328667.P12377752651518991016

`abs(A321558(n+1))`
-/

namespace A328667.P12377752651518991016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321558 (n + 1)|

end

end A328667.P12377752651518991016

namespace A328667

/-- `abs(A321558(n+1))` -/
def P12377752651518991016.Spec : Prop :=
  ∀ n, P12377752651518991016.a n = A328667 (n + 1)

end A328667

/-! ## A328667.P12864060640690311534

`abs(∑{d}[n+1, #*A186111(#)])`
-/

namespace A328667.P12864060640690311534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A186111 d|

end

end A328667.P12864060640690311534

namespace A328667

/-- `abs(∑{d}[n+1, #*A186111(#)])` -/
def P12864060640690311534.Spec : Prop :=
  ∀ n, P12864060640690311534.a n = A328667 (n + 1)

end A328667

/-! ## A328667.P12732212976168095439

`A321558(n+1)/A033999(n)`
-/

namespace A328667.P12732212976168095439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321558 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A328667.P12732212976168095439

namespace A328667

/-- `A321558(n+1)/A033999(n)` -/
def P12732212976168095439.Spec : Prop :=
  ∀ n, P12732212976168095439.a n = (A328667 (n + 1) : ℚ)

end A328667

/-! ## A328667.P14951051949725602810

`gcd(A000038(n), A321558(n+1))`
-/

namespace A328667.P14951051949725602810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A321558 (n + 1))

end

end A328667.P14951051949725602810

namespace A328667

/-- `gcd(A000038(n), A321558(n+1))` -/
def P14951051949725602810.Spec : Prop :=
  ∀ n, (P14951051949725602810.a n : ℤ) = A328667 (n + 1)

end A328667

/-! ## A328667.P17867602443376144170

`lcm(A014709(n), A321558(n+1))`
-/

namespace A328667.P17867602443376144170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A321558 (n + 1))

end

end A328667.P17867602443376144170

namespace A328667

/-- `lcm(A014709(n), A321558(n+1))` -/
def P17867602443376144170.Spec : Prop :=
  ∀ n, (P17867602443376144170.a n : ℤ) = A328667 (n + 1)

end A328667

/-! ## A328667.P13489301864886311028

`A321558(n+1)/A062157(n+1)`
-/

namespace A328667.P13489301864886311028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321558 (n + 1) : ℚ) / (A062157 (n + 1) : ℚ)

end

end A328667.P13489301864886311028

namespace A328667

/-- `A321558(n+1)/A062157(n+1)` -/
def P13489301864886311028.Spec : Prop :=
  ∀ n, P13489301864886311028.a n = (A328667 (n + 1) : ℚ)

end A328667

/-! ## A328667.P17972257516194242055

`2*A076598(n+1)-A001157(n+1)`
-/

namespace A328667.P17972257516194242055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076598 (n + 1) - A001157 (n + 1)

end

end A328667.P17972257516194242055

namespace A328667

/-- `2*A076598(n+1)-A001157(n+1)` -/
def P17972257516194242055.Spec : Prop :=
  ∀ n, P17972257516194242055.a n = A328667 (n + 1)

end A328667

/-! ## A328667.P16719673317258220999

`A001157(n+1)+A078306(n+1)-A064027(n+1)`
-/

namespace A328667.P16719673317258220999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (A078306 (n + 1) - A064027 (n + 1))

end

end A328667.P16719673317258220999

namespace A328667

/-- `A001157(n+1)+A078306(n+1)-A064027(n+1)` -/
def P16719673317258220999.Spec : Prop :=
  ∀ n, P16719673317258220999.a n = A328667 (n + 1)

end A328667

/-! ## A328667.P696823878160835811

`A064027(n+1)+A321543(n+1)-A321558(n+1)`
-/

namespace A328667.P696823878160835811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064027 (n + 1) + (A321543 (n + 1) - A321558 (n + 1))

end

end A328667.P696823878160835811

namespace A328667

/-- `A064027(n+1)+A321543(n+1)-A321558(n+1)` -/
def P696823878160835811.Spec : Prop :=
  ∀ n, P696823878160835811.a n = A328667 (n + 1)

end A328667

/-! ## A328667.P3335462022148607761

`A321558(n+1)/A067856(A022998(n+1)/(n+1)+1)`
-/

namespace A328667.P3335462022148607761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321558 (n + 1) : ℚ) / (A067856 (SequenceMachineLib.roundAway ((A022998 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat : ℚ)

end

end A328667.P3335462022148607761

namespace A328667

/-- `A321558(n+1)/A067856(A022998(n+1)/(n+1)+1)` -/
def P3335462022148607761.Spec : Prop :=
  ∀ n, P3335462022148607761.a n = (A328667 (n + 1) : ℚ)

end A328667

/-!
# A328668: Numbers whose binary expansion, without the most significant digit, is a necklace.

The programs for A328668, there is no canonical definition to state claims against.
-/

/-! ## A328668.P13737588450191842551

`comp[A054429(A257739(n+1))]`
-/

namespace A328668.P13737588450191842551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A257739 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328668.P13737588450191842551

/-! ## A328668.P3936564478266959828

`eq[A006257(n), A331856(A030101(n))]`
-/

namespace A328668.P3936564478266959828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328668.P3936564478266959828

/-! ## A328668.P6068820974988551561

`eq[A246591(2*n), A331856(A030101(n))]`
-/

namespace A328668.P6068820974988551561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328668.P6068820974988551561

/-! ## A328668.P1257917921147919783

`comp[A329367(n+1)]%A133963(n+1)`
-/

namespace A328668.P1257917921147919783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329367 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A133963 (n + 1))

end

end A328668.P1257917921147919783

/-! ## A328668.P8763541766736419360

`lt[A000203(A209859(2*(n+1))), A010723(n)]`
-/

namespace A328668.P8763541766736419360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A209859 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328668.P8763541766736419360

/-!
# A328669: Number of Lyndon compositions of n where every pair of adjacent parts (including the last with the first) is relatively prime.

The programs for A328669, there is no canonical definition to state claims against.
-/

/-! ## A328669.P17739626763946847403

`∑{d}[n+1, A008683(#)*A328597((n+1)/#)]`
-/

namespace A328669.P17739626763946847403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A328597 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328669.P17739626763946847403

/-! ## A328669.P2173215520062647501

`A318745(n+1)+A057428(n)`
-/

namespace A328669.P2173215520062647501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 1) + A057428 n

end

end A328669.P2173215520062647501

/-! ## A328669.P12959548527778201557

`A318745(n+1)-A057427(n)`
-/

namespace A328669.P12959548527778201557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 1) - A057427 n

end

end A328669.P12959548527778201557

/-! ## A328669.P12033937796364776613

`A318745(n+1)-A178334(n)`
-/

namespace A328669.P12033937796364776613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 1) - A178334 n

end

end A328669.P12033937796364776613

/-! ## A328669.P288943403386798889

`A318745(n+1)-A019430(2*n)`
-/

namespace A328669.P288943403386798889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 1) - A019430 (2 * n)

end

end A328669.P288943403386798889

/-! ## A328669.P9194165270626887300

`A318745(n+1)+-1%A271004(n)`
-/

namespace A328669.P9194165270626887300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 1) + Int.tmod (-1) (A271004 n)

end

end A328669.P9194165270626887300

/-! ## A328669.P17748056549769747832

`A014963(A100484(n+1))+A318745(n+1)-2`
-/

namespace A328669.P17748056549769747832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A100484 (n + 1)).toNat + (A318745 (n + 1) - 2)

end

end A328669.P17748056549769747832

/-! ## A328669.P11491204989290226792

`A318745(n+1)+A328609(n+1)-A318748(n+1)`
-/

namespace A328669.P11491204989290226792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318745 (n + 1) + (A328609 (n + 1) - A318748 (n + 1))

end

end A328669.P11491204989290226792

/-!
# A328671: Numbers whose binary indices are relatively prime and pairwise indivisible.

The programs for A328671, there is no canonical definition to state claims against.
-/

/-! ## A328671.P8815691622421366306

`∩[A358866(n+1), A087086(n)]`
-/

namespace A328671.P8815691622421366306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328671.P8815691622421366306

/-! ## A328671.P13434306386313894932

`∩[A291166(n+1), A087086(n)]`
-/

namespace A328671.P13434306386313894932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328671.P13434306386313894932

/-!
# A328672: Number of integer partitions of n with relatively prime parts in which no two distinct parts are relatively prime.

The programs for A328672, there is no canonical definition to state claims against.
-/

/-! ## A328672.P827207505460730027

`A328673(n)-(A018783(n)+A000007(n))`
-/

namespace A328672.P827207505460730027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328673 n - (A018783 n + A000007 n)

end

end A328672.P827207505460730027

/-! ## A328672.P5902225658525323648

`(A018783(n)-A328673(n))*A057428(n)`
-/

namespace A328672.P5902225658525323648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018783 n - A328673 n) * A057428 n

end

end A328672.P5902225658525323648

/-! ## A328672.P5705872206149481680

`A057427(n)*A328673(n)-A018783(n)`
-/

namespace A328672.P5705872206149481680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A328673 n - A018783 n

end

end A328672.P5705872206149481680

/-! ## A328672.P10581232256520225620

`(A328673(n)-A018783(n))%A102363(n)`
-/

namespace A328672.P10581232256520225620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328673 n - A018783 n) (A102363 n)

end

end A328672.P10581232256520225620

/-! ## A328672.P14581829423401322171

`char[A133310(n)]*A328673(n)-A018783(n)`
-/

namespace A328672.P14581829423401322171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328673 n - A018783 n

end

end A328672.P14581829423401322171

/-! ## A328672.P17289785998973313759

`(A328673(n)-A018783(n))*char[A344180(n)]`
-/

namespace A328672.P17289785998973313759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A328673 n - A018783 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328672.P17289785998973313759

/-! ## A328672.P8775307154251384446

`char[A038722(n+1)]*A328673(n)-A018783(n)`
-/

namespace A328672.P8775307154251384446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328673 n - A018783 n

end

end A328672.P8775307154251384446

/-! ## A328672.P2222137155393701051

`char[A260742(n+1)]*A328673(n)-A018783(n)`
-/

namespace A328672.P2222137155393701051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A328673 n - A018783 n

end

end A328672.P2222137155393701051

/-!
# A328673: Number of integer partitions of n in which no two distinct parts are relatively prime.

The programs for A328673, there is no canonical definition to state claims against.
-/

/-! ## A328673.P12135229221105649815

`C(n, C(n, n²))+A200976(n)`
-/

namespace A328673.P12135229221105649815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) + A200976 n

end

end A328673.P12135229221105649815

/-! ## A328673.P18293736697554733798

`A200976(A028310(n))+1`
-/

namespace A328673.P18293736697554733798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (A028310 n).toNat + 1

end

end A328673.P18293736697554733798

/-! ## A328673.P2720122066872896655

`A200976(n)+A057427(n)`
-/

namespace A328673.P2720122066872896655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + A057427 n

end

end A328673.P2720122066872896655

/-! ## A328673.P14021547955514418376

`A200976(n)-A057428(n)`
-/

namespace A328673.P14021547955514418376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n - A057428 n

end

end A328673.P14021547955514418376

/-! ## A328673.P14799894949544794224

`A200976(A000007(n)+n)+1`
-/

namespace A328673.P14799894949544794224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 (A000007 n + (n : ℤ)).toNat + 1

end

end A328673.P14799894949544794224

/-! ## A328673.P9283276062582683749

`A200976(n)+char[A003603(n+1)]`
-/

namespace A328673.P9283276062582683749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328673.P9283276062582683749

/-! ## A328673.P18048573825100399289

`A200976(n)+char[A074680(n+1)]`
-/

namespace A328673.P18048573825100399289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328673.P18048573825100399289

/-! ## A328673.P8042851711422243789

`ceil(A200976(n)+n/A072831(n))`
-/

namespace A328673.P8042851711422243789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A200976 n : ℚ) + (n : ℚ) / (A072831 n : ℚ)⌉

end

end A328673.P8042851711422243789

/-! ## A328673.P5651065257611171947

`A200976(n)+A178334(A178334(n))`
-/

namespace A328673.P5651065257611171947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + A178334 (A178334 n).toNat

end

end A328673.P5651065257611171947

/-! ## A328673.P9789186990328611629

`A200976(n)+A010051(A008578(n+1))`
-/

namespace A328673.P9789186990328611629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + A010051 (A008578 (n + 1)).toNat

end

end A328673.P9789186990328611629

/-! ## A328673.P6520372634714450429

`A200976(n)+A010051(A027746(n+1))`
-/

namespace A328673.P6520372634714450429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + A010051 (A027746 (n + 1)).toNat

end

end A328673.P6520372634714450429

/-! ## A328673.P134759926315546903

`A200976(n)+A007318(a(A188172(n)))` with `a(0)=1`
-/

namespace A328673.P134759926315546903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A200976 n + A007318 (a (A188172 n).toNat).toNat

end

end A328673.P134759926315546903

/-! ## A328673.P459943441147296507

`A200976(n)+char[A083392(n+1)+A083392(n)]`
-/

namespace A328673.P459943441147296507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 (n + 1) + A083392 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328673.P459943441147296507

/-! ## A328673.P9067483344568166013

`A007359(n+1)+A200976(n)-A337485(n+1)`
-/

namespace A328673.P9067483344568166013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007359 (n + 1) + (A200976 n - A337485 (n + 1))

end

end A328673.P9067483344568166013

/-! ## A328673.P387808151272792213

`A101268(n+1)+A200976(n)-A337462(n+1)`
-/

namespace A328673.P387808151272792213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101268 (n + 1) + (A200976 n - A337462 (n + 1))

end

end A328673.P387808151272792213

/-! ## A328673.P10149405752148980856

`A200976(n)+and(1, A268099(n))`
-/

namespace A328673.P10149405752148980856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200976 n + Int.land 1 (A268099 n)

end

end A328673.P10149405752148980856

/-! ## A328673.P13837178791280888934

`and(A070199(n+1), A200976(n))+1`
-/

namespace A328673.P13837178791280888934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070199 (n + 1)) (A200976 n) + 1

end

end A328673.P13837178791280888934

/-! ## A328673.P4374583456702340109

`and(A024036(n), A200976(n))+1`
-/

namespace A328673.P4374583456702340109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A200976 n) + 1

end

end A328673.P4374583456702340109

/-! ## A328673.P10097914415210771369

`and(A130567(n+1), A200976(n))+1`
-/

namespace A328673.P10097914415210771369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130567 (n + 1)) (A200976 n) + 1

end

end A328673.P10097914415210771369

/-!
# A328674: Numbers whose distinct prime indices have no consecutive divisible parts.

The programs for A328674, there is no canonical definition to state claims against.
-/

/-! ## A328674.P7163787995215245094

`∪[A316476(n+1), A001546(n)]`
-/

namespace A328674.P7163787995215245094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P7163787995215245094

/-! ## A328674.P16945893863341150777

`∪[A316476(n+1), A006857(n)]`
-/

namespace A328674.P16945893863341150777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P16945893863341150777

/-! ## A328674.P446596407600477442

`∪[A316476(n+1), A033574(n)]`
-/

namespace A328674.P446596407600477442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P446596407600477442

/-! ## A328674.P4674084472124486864

`∪[A316476(n+1), A054497(n)]`
-/

namespace A328674.P4674084472124486864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P4674084472124486864

/-! ## A328674.P10010392692453846652

`∪[A316476(n+1), A055848(n)]`
-/

namespace A328674.P10010392692453846652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055848 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P10010392692453846652

/-! ## A328674.P17384666537898707755

`∪[A316476(n+1), A082111(n)]`
-/

namespace A328674.P17384666537898707755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P17384666537898707755

/-! ## A328674.P4231479125024817135

`∪[A316476(n+1), A082112(n)]`
-/

namespace A328674.P4231479125024817135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082112 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P4231479125024817135

/-! ## A328674.P7076726616146308485

`∪[A000961(n+1), A342193(n+1)]`
-/

namespace A328674.P7076726616146308485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P7076726616146308485

/-! ## A328674.P138029281050799560

`∪[A000961(n+1), A343338(n+1)]`
-/

namespace A328674.P138029281050799560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P138029281050799560

/-! ## A328674.P17805918705616177400

`∪[A036116(n+1), A342193(n+1)]`
-/

namespace A328674.P17805918705616177400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328674.P17805918705616177400

/-!
# A328676: Number of relatively prime integer partitions of n whose distinct parts are pairwise indivisible.

The programs for A328676, there is no canonical definition to state claims against.
-/

/-! ## A328676.P13179328576522700464

`A338315(n+1)+A072911(A001405(n))`
-/

namespace A328676.P13179328576522700464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (n + 1) + A072911 (A001405 n).toNat

end

end A328676.P13179328576522700464

/-! ## A328676.P5498804127575885065

`A338315(A044917(n+1))+∑{digits}[n!, C(#, #^#)]!`
-/

namespace A328676.P5498804127575885065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (A044917 (n + 1)).toNat + (Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (x ^ x)).sum : ℤ)

end

end A328676.P5498804127575885065

/-! ## A328676.P6802008526792000415

`A338315(A043320(n+1))+A178487(2*(n+2))`
-/

namespace A328676.P6802008526792000415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (A043320 (n + 1)).toNat + A178487 (2 * (n + 2))

end

end A328676.P6802008526792000415

/-! ## A328676.P18381946793355935674

`A338315(A044917(n+1))+A007318(A002262(n))`
-/

namespace A328676.P18381946793355935674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (A044917 (n + 1)).toNat + A007318 (A002262 n).toNat

end

end A328676.P18381946793355935674

/-! ## A328676.P3133018965055797067

`A338315(A044917(n+1))+A007318(A050603(n))`
-/

namespace A328676.P3133018965055797067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338315 (A044917 (n + 1)).toNat + A007318 (A050603 n).toNat

end

end A328676.P3133018965055797067

/-!
# A328677: Numbers whose distinct prime indices are relatively prime and pairwise indivisible.

The programs for A328677, there is no canonical definition to state claims against.
-/

/-! ## A328677.P7135102568750577516

`record[A316437(A316476(n+2))]`
-/

namespace A328677.P7135102568750577516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A316476 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328677.P7135102568750577516

/-! ## A328677.P2479913533699658798

`filter[A289509(n+1), A378442(#)]`
-/

namespace A328677.P2479913533699658798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A328677.P2479913533699658798

/-! ## A328677.P18209843371517697946

`∩[A289509(n+1), A316476(n+1)]`
-/

namespace A328677.P18209843371517697946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328677.P18209843371517697946

/-! ## A328677.P2940796346825450975

`∪[A000079(n+1), A337987(n+1)]`
-/

namespace A328677.P2940796346825450975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328677.P2940796346825450975

/-! ## A328677.P1397269051321674957

`∪[A337987(n+1), A011782(n+2)]`
-/

namespace A328677.P1397269051321674957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328677.P1397269051321674957

/-! ## A328677.P68189091679907942

`∪[A158780(2*(n+2)), A337987(n+1)]`
-/

namespace A328677.P68189091679907942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328677.P68189091679907942

/-!
# A328678: Number of strict, pairwise indivisible, relatively prime integer partitions of n.

The programs for A328678, there is no canonical definition to state claims against.
-/

/-! ## A328678.P15869315434759747248

`∑{d}[n+1, A008683(#)*A303362((n+1)/#)]`
-/

namespace A328678.P15869315434759747248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A303362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328678.P15869315434759747248

/-! ## A328678.P1624799647621439000

`A123108(n)-A175078(A135231(n))`
-/

namespace A328678.P1624799647621439000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n - A175078 (A135231 n).toNat

end

end A328678.P1624799647621439000

/-! ## A328678.P15999090331063860017

`A368978(A011782(n))-A001222(n+1)`
-/

namespace A328678.P15999090331063860017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A011782 n).toNat - A001222 (n + 1)

end

end A328678.P15999090331063860017

/-! ## A328678.P8666505804439147022

`A037800(A128209(n))+A010051(n+7)`
-/

namespace A328678.P8666505804439147022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A128209 n).toNat + A010051 (n + 7)

end

end A328678.P8666505804439147022

/-! ## A328678.P7575411193313416583

`A286041(n)+A016221(A345933(n+1)!)`
-/

namespace A328678.P7575411193313416583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 n + A016221 (Nat.factorial (A345933 (n + 1)).toNat)

end

end A328678.P7575411193313416583

/-!
# A328679: Heinz numbers of integer partitions with no two distinct parts relatively prime, but with no divisor in common to all of the parts.

The programs for A328679, there is no canonical definition to state claims against.
-/

/-! ## A328679.P15317141231450523877

`∪[∑[ceil(2^(n-1))], A318716(n+1)]`
-/

namespace A328679.P15317141231450523877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A328679.P15317141231450523877

/-! ## A328679.P10512266314311958166

`∪[A318716(n+1), A000079(n)]`
-/

namespace A328679.P10512266314311958166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328679.P10512266314311958166

/-! ## A328679.P18218753326037903376

`∪[A328868(n+1), A000079(n)]`
-/

namespace A328679.P18218753326037903376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328679.P18218753326037903376

/-! ## A328679.P15112462260442065416

`∪[A318716(n+1), Δ[A000225(n)]]`
-/

namespace A328679.P15112462260442065416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318716 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328679.P15112462260442065416

/-! ## A328679.P1572059520483065666

`∪[A328868(n+1), Δ[A000225(n)]]`
-/

namespace A328679.P1572059520483065666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328868 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328679.P1572059520483065666

/-!
# A328680: The number of iterations before a repeated value appears when starting from n and performing the iterative cycle as described in the comments, which involves setting the next iterative number to either A053392 or A040115 depending on the current numbers' size relative to n.

The programs for A328680, there is no canonical definition to state claims against.
-/

/-! ## A328680.P11176923506541789323

`A043562(A239217(n+1))+1`
-/

namespace A328680.P11176923506541789323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A239217 (n + 1)).toNat + 1

end

end A328680.P11176923506541789323

/-! ## A328680.P6861609048047546983

`A204982(A047726(n+1)%A250676(n+1))`
-/

namespace A328680.P6861609048047546983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204982 (Int.tmod (A047726 (n + 1)) (A250676 (n + 1))).toNat

end

end A328680.P6861609048047546983

/-! ## A328680.P17588539186810748902

`A000005(A000005(∏{digits}[n+1, A309935(#+2)]))`
-/

namespace A328680.P17588539186810748902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A309935 (x + 2)).prod.toNat).toNat

end

end A328680.P17588539186810748902

/-! ## A328680.P2205857777868915003

`A074792(A196222(n+1))`
-/

namespace A328680.P2205857777868915003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (A196222 (n + 1)).toNat

end

end A328680.P2205857777868915003

/-! ## A328680.P10027450554355209693

`A191973(A196222(n+1)+1)`
-/

namespace A328680.P10027450554355209693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191973 (A196222 (n + 1) + 1).toNat

end

end A328680.P10027450554355209693

/-! ## A328680.P5559748524903415114

`A145193(A196222(n+1)+2)`
-/

namespace A328680.P5559748524903415114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (A196222 (n + 1) + 2).toNat

end

end A328680.P5559748524903415114

/-! ## A328680.P14662373459577608066

`A107572(4^A047726(n+1))`
-/

namespace A328680.P14662373459577608066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107572 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A047726 (n + 1) : ℤ))).toNat

end

end A328680.P14662373459577608066

/-! ## A328680.P12833286612907962706

`A000005(7^A047726(n+1))`
-/

namespace A328680.P12833286612907962706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A047726 (n + 1) : ℤ))).toNat

end

end A328680.P12833286612907962706

/-! ## A328680.P15278484863286081791

`A270566(7^A047726(n+1))`
-/

namespace A328680.P15278484863286081791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270566 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A047726 (n + 1) : ℤ))).toNat

end

end A328680.P15278484863286081791

/-! ## A328680.P16502415061372109698

`A000040(A196222(n+1)²)%5`
-/

namespace A328680.P16502415061372109698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A196222 (n + 1) ^ 2).toNat) 5

end

end A328680.P16502415061372109698

/-!
# A328681: a(n) = Sum_{k=1..n} binomial(n,k) * tau(k) * tau(n - k + 1), where tau = A000005.

The programs for A328681, there is no canonical definition to state claims against.
-/

/-! ## A328681.P5992920848850760174

`A338870(∑[n+1]+2)`
-/

namespace A328681.P5992920848850760174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338870 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A328681.P5992920848850760174

/-! ## A328681.P6159333031707731560

`record[gcd(A264405(n), A338870(n+1))]`
-/

namespace A328681.P6159333031707731560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264405 n) (A338870 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328681.P6159333031707731560

/-! ## A328681.P17897737520797949973

`record[A338870(A133263(A002262(n)))]`
-/

namespace A328681.P17897737520797949973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338870 (A133263 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328681.P17897737520797949973

/-! ## A328681.P17613884557672287678

`record[A338870(n+3)/A338864(n+1)]`
-/

namespace A328681.P17613884557672287678
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338870 (n + 3) : ℚ) / (A338864 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328681.P17613884557672287678

/-! ## A328681.P14721893699437787371

`record[A338870(n+3)/A338865(n+1)]`
-/

namespace A328681.P14721893699437787371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338870 (n + 3) : ℚ) / (A338865 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328681.P14721893699437787371

/-!
# A328682: Array read by antidiagonals: T(n,r) is the number of connected r-regular loopless multigraphs on n unlabeled nodes.

The programs for A328682, there is no canonical definition to state claims against.
-/

/-! ## A328682.P15959675054034005278

`A028950(A333330(n)*A333397(n))`
-/

namespace A328682.P15959675054034005278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A333330 n * A333397 n).toNat

end

end A328682.P15959675054034005278

/-! ## A328682.P16559081545525897399

`A001221(or(1, (A333397(n)+A333330(n))!))`
-/

namespace A328682.P16559081545525897399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.lor 1 (Nat.factorial (A333397 n + A333330 n).toNat))

end

end A328682.P16559081545525897399

/-! ## A328682.P15392372100993684996

`∑{p}[(A333397(n)+A333330(n))!, A059253(#)]`
-/

namespace A328682.P15392372100993684996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333397 n + A333330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A059253 p

end

end A328682.P15392372100993684996

/-! ## A328682.P12319020790355492513

`A028950(A333330(n))*A028950(A334546(n))`
-/

namespace A328682.P12319020790355492513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A333330 n).toNat * A028950 (A334546 n).toNat

end

end A328682.P12319020790355492513

/-! ## A328682.P16565510498045837339

`7%A083953(A194893(n+1))`
-/

namespace A328682.P16565510498045837339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A083953 (A194893 (n + 1)).toNat)

end

end A328682.P16565510498045837339

/-!
# A328683: Positive integers that are equal to 99...99 (repdigit with n digits 9) times the sum of their digits.

The programs for A328683, the canonical program `A328683.P963294850345699811` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328683 has offset 1).

The definition of A328683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328683.P963294850345699811

`9*(n+1)*(10^(n+1)-1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A328683

/-- `9*(n+1)*(10^(n+1)-1)` -/
def P963294850345699811.Spec : Prop :=
  ∀ n, P963294850345699811.a n = A328683 (n + 1)

theorem P963294850345699811.correct : P963294850345699811.Spec := by
  intro n
  simp only [A328683, Nat.add_sub_cancel]

end A328683

/-! ## A328683.P8614524970009535429

`record[9*A110807(A144328(n+1))]`
-/

namespace A328683.P8614524970009535429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A110807 (A144328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328683.P8614524970009535429

namespace A328683

/-- `record[9*A110807(A144328(n+1))]` -/
def P8614524970009535429.Spec : Prop :=
  ∀ n, P8614524970009535429.a n = A328683 (n + 1)

end A328683

/-! ## A328683.P1247905579099092936

`A008591(n+1)*A011557(n+1)-A008591(n+1)`
-/

namespace A328683.P1247905579099092936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) * A011557 (n + 1) - A008591 (n + 1)

end

end A328683.P1247905579099092936

namespace A328683

/-- `A008591(n+1)*A011557(n+1)-A008591(n+1)` -/
def P1247905579099092936.Spec : Prop :=
  ∀ n, P1247905579099092936.a n = A328683 (n + 1)

end A328683

/-! ## A328683.P109158720475918222

`A110807(n+1)²/A053422(n+1)`
-/

namespace A328683.P109158720475918222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110807 (n + 1) ^ 2 : ℚ) / (A053422 (n + 1) : ℚ)

end

end A328683.P109158720475918222

namespace A328683

/-- `A110807(n+1)²/A053422(n+1)` -/
def P109158720475918222.Spec : Prop :=
  ∀ n, P109158720475918222.a n = (A328683 (n + 1) : ℚ)

end A328683

/-!
# A328684: Least k such that Sum_{m=1..k} 1/m > Product_{i=1..n} 1/(1 - 1/prime(i)).

The programs for A328684, there is no canonical definition to state claims against.
-/

/-! ## A328684.P8368847911413098810

`A135023(A173319(n))+A000567(n+1)`
-/

namespace A328684.P8368847911413098810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135023 (A173319 n).toNat + A000567 (n + 1)

end

end A328684.P8368847911413098810

/-! ## A328684.P15671275532301780937

`A204903(A000479(n)+1)+A137742(n+1)`
-/

namespace A328684.P15671275532301780937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204903 (A000479 n + 1).toNat + A137742 (n + 1)

end

end A328684.P15671275532301780937

/-!
# A328685: Row sums of A309038.

The programs for A328685, there is no canonical definition to state claims against.
-/

/-! ## A328685.P4640244614649759098

`A088658(n+1)-A254449(A014552(n+1))`
-/

namespace A328685.P4640244614649759098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088658 (n + 1) - A254449 (A014552 (n + 1)).toNat

end

end A328685.P4640244614649759098

/-!
# A328688: Number of double palindrome structures of length n using exactly two different symbols.

The programs for A328688, the canonical program `A328688.P10993305875677652707` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328688 has offset 1).

The definition of A328688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328688.P11073682230291093828

`A180249(n+1)-1`
-/

namespace A328688.P11073682230291093828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180249 (n + 1) - 1

end

end A328688.P11073682230291093828

namespace A328688

/-- `A180249(n+1)-1` -/
def P11073682230291093828.Spec : Prop :=
  ∀ n, P11073682230291093828.a n = A328688 (n + 1)

end A328688

/-! ## A328688.P10993305875677652707

`∑{d}[n+1, A180322(#)]-1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A328688

/-- `∑{d}[n+1, A180322(#)]-1` -/
def P10993305875677652707.Spec : Prop :=
  ∀ n, P10993305875677652707.a n = A328688 (n + 1)

theorem P10993305875677652707.correct : P10993305875677652707.Spec := by
  intro n
  simp only [A328688, Nat.add_sub_cancel]

end A328688

/-! ## A328688.P7039294253196513127

`abs(A180249(n+1)+ratio[A033999(n)])`
-/

namespace A328688.P7039294253196513127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A180249 (n + 1) : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)|

end

end A328688.P7039294253196513127

namespace A328688

/-- `abs(A180249(n+1)+ratio[A033999(n)])` -/
def P7039294253196513127.Spec : Prop :=
  ∀ n, P7039294253196513127.a n = (A328688 (n + 1) : ℚ)

end A328688

/-! ## A328688.P12779334338105028118

`A179781(n+1)+A180750(n+1)-1`
-/

namespace A328688.P12779334338105028118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179781 (n + 1) + (A180750 (n + 1) - 1)

end

end A328688.P12779334338105028118

namespace A328688

/-- `A179781(n+1)+A180750(n+1)-1` -/
def P12779334338105028118.Spec : Prop :=
  ∀ n, P12779334338105028118.a n = A328688 (n + 1)

end A328688

/-! ## A328688.P13368870805122093673

`A001478(n+1)+A180249(n+1)+n`
-/

namespace A328688.P13368870805122093673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A180249 (n + 1) + (n : ℤ))

end

end A328688.P13368870805122093673

namespace A328688

/-- `A001478(n+1)+A180249(n+1)+n` -/
def P13368870805122093673.Spec : Prop :=
  ∀ n, P13368870805122093673.a n = A328688 (n + 1)

end A328688

/-! ## A328688.P715795705330053564

`A007055(n+1)/2-1`
-/

namespace A328688.P715795705330053564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007055 (n + 1) : ℚ) / 2 - 1

end

end A328688.P715795705330053564

namespace A328688

/-- `A007055(n+1)/2-1` -/
def P715795705330053564.Spec : Prop :=
  ∀ n, P715795705330053564.a n = (A328688 (n + 1) : ℚ)

end A328688

/-! ## A328688.P4198031229074766921

`A008683(A080359(n+1))+A007055(n+1)/2`
-/

namespace A328688.P4198031229074766921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A080359 (n + 1)).toNat : ℚ) + (A007055 (n + 1) : ℚ) / 2

end

end A328688.P4198031229074766921

namespace A328688

/-- `A008683(A080359(n+1))+A007055(n+1)/2` -/
def P4198031229074766921.Spec : Prop :=
  ∀ n, P4198031229074766921.a n = (A328688 (n + 1) : ℚ)

end A328688

/-! ## A328688.P14369497865015010330

`A062157(A001749(n+1))+A007055(n+1)/2`
-/

namespace A328688.P14369497865015010330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062157 (A001749 (n + 1)).toNat : ℚ) + (A007055 (n + 1) : ℚ) / 2

end

end A328688.P14369497865015010330

namespace A328688

/-- `A062157(A001749(n+1))+A007055(n+1)/2` -/
def P14369497865015010330.Spec : Prop :=
  ∀ n, P14369497865015010330.a n = (A328688 (n + 1) : ℚ)

end A328688

/-! ## A328688.P4291454574280909352

`A328692(n+1)-(A328689(n+1)+1)`
-/

namespace A328688.P4291454574280909352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328692 (n + 1) - (A328689 (n + 1) + 1)

end

end A328688.P4291454574280909352

namespace A328688

/-- `A328692(n+1)-(A328689(n+1)+1)` -/
def P4291454574280909352.Spec : Prop :=
  ∀ n, P4291454574280909352.a n = A328688 (n + 1)

end A328688

/-!
# A328689: Number of double palindrome structures of length n using exactly three different symbols.

The programs for A328689, there is no canonical definition to state claims against.
-/

/-! ## A328689.P15718432355813928028

`A328692(n+1)-A180249(n+1)`
-/

namespace A328689.P15718432355813928028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328692 (n + 1) - A180249 (n + 1)

end

end A328689.P15718432355813928028

/-! ## A328689.P9440932962337513432

`A328692(n+1)-(A328688(n+1)+1)`
-/

namespace A328689.P9440932962337513432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328692 (n + 1) - (A328688 (n + 1) + 1)

end

end A328689.P9440932962337513432

/-! ## A328689.P16771115018954854462

`A328692(n+1)-A007055(n+1)/2`
-/

namespace A328689.P16771115018954854462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328692 (n + 1) : ℚ) - (A007055 (n + 1) : ℚ) / 2

end

end A328689.P16771115018954854462

/-! ## A328689.P6311780093913952042

`A328692(n+1)-∑{d}[n+1, A180322(#)]`
-/

namespace A328689.P6311780093913952042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328692 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A180322 d

end

end A328689.P6311780093913952042

/-! ## A328689.P15846890736357003171

`A328693(n+1)-(A328690(n+1)+A180249(n+1))`
-/

namespace A328689.P15846890736357003171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328693 (n + 1) - (A328690 (n + 1) + A180249 (n + 1))

end

end A328689.P15846890736357003171

/-!
# A328690: Number of double palindrome structures of length n using exactly four different symbols.

The programs for A328690, there is no canonical definition to state claims against.
-/

/-! ## A328690.P14971914936939897742

`A328693(n+1)-A328692(n+1)`
-/

namespace A328690.P14971914936939897742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328693 (n + 1) - A328692 (n + 1)

end

end A328690.P14971914936939897742

/-! ## A328690.P437914968738014066

`A328693(n+1)-(A328689(n+1)+A180249(n+1))`
-/

namespace A328690.P437914968738014066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328693 (n + 1) - (A328689 (n + 1) + A180249 (n + 1))

end

end A328690.P437914968738014066

/-! ## A328690.P18026566258694501293

`A049037(n)%A117818(A072214(n))`
-/

namespace A328690.P18026566258694501293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049037 n) (A117818 (A072214 n).toNat)

end

end A328690.P18026566258694501293

/-! ## A328690.P17532171796878613576

`A323858(n)%A002472(A361242(n))`
-/

namespace A328690.P17532171796878613576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323858 n) (A002472 (A361242 n).toNat)

end

end A328690.P17532171796878613576

/-! ## A328690.P4712271528645590227

`A085863(A124078(n)+A070939(n+1))`
-/

namespace A328690.P4712271528645590227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 (A124078 n + A070939 (n + 1)).toNat

end

end A328690.P4712271528645590227

/-!
# A328692: Number of double palindrome structures of length n using a maximum of three different symbols.

The programs for A328692, there is no canonical definition to state claims against.
-/

/-! ## A328692.P7235774493313946202

`ceil(A007056(n)/6)`
-/

namespace A328692.P7235774493313946202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007056 n : ℚ) / 6⌉

end

end A328692.P7235774493313946202

/-! ## A328692.P17266506565329551325

`A026806(A007056(n))`
-/

namespace A328692.P17266506565329551325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A007056 n).toNat

end

end A328692.P17266506565329551325

/-! ## A328692.P4748274794936471894

`A103221(A007056(n)+1)`
-/

namespace A328692.P4748274794936471894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A007056 n + 1).toNat

end

end A328692.P4748274794936471894

/-! ## A328692.P3744992910247007570

`A103221(or(2, A007056(n)))`
-/

namespace A328692.P3744992910247007570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 2 (A007056 n)).toNat

end

end A328692.P3744992910247007570

/-! ## A328692.P2336206182134578808

`A103221(A007056(n)%A049037(n))`
-/

namespace A328692.P2336206182134578808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.tmod (A007056 n) (A049037 n)).toNat

end

end A328692.P2336206182134578808

/-!
# A328693: Number of double palindrome structures of length n using a maximum of four different symbols.

The programs for A328693, there is no canonical definition to state claims against.
-/

/-! ## A328693.P7597098410065066501

`A165137(n)-A091009(A213094(n))`
-/

namespace A328693.P7597098410065066501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165137 n - A091009 (A213094 n).toNat

end

end A328693.P7597098410065066501

/-!
# A328694: a(n) = sum of lead terms of all parking functions of length n.

The programs for A328694, there is no canonical definition to state claims against.
-/

/-! ## A328694.P15601875034378788567

`A318047(n+1)/(n+1)`
-/

namespace A328694.P15601875034378788567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318047 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A328694.P15601875034378788567

/-! ## A328694.P9430085388839030625

`(A081131(n+2)-A057500(n+2))/(n+1)`
-/

namespace A328694.P9430085388839030625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081131 (n + 2) - A057500 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A328694.P9430085388839030625

/-!
# A328698: Successive squares visited by a knight on the single-digit square spiral, with ties resolved by rotating left from direction of the last leap.

The programs for A328698, there is no canonical definition to state claims against.
-/

/-! ## A328698.P6468475517543874845

`A326918(n-A334476(C(n, 43)))`
-/

namespace A328698.P6468475517543874845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 ((n : ℤ) - A334476 (Nat.choose n 43)).toNat

end

end A328698.P6468475517543874845

/-! ## A328698.P1357557018035047044

`A326918(n-A326918(C(n, 42)))`
-/

namespace A328698.P1357557018035047044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326918 ((n : ℤ) - A326918 (Nat.choose n 42)).toNat

end

end A328698.P1357557018035047044

/-!
# A328699: Start with 0, a(n) is the smallest number of iterations: x -> (x^2+1) mod n needed to run into a cycle.

The programs for A328699, there is no canonical definition to state claims against.
-/

/-! ## A328699.P9263737992151714900

`A332965(n+1)-A248218(n+1)`
-/

namespace A328699.P9263737992151714900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1) - A248218 (n + 1)

end

end A328699.P9263737992151714900

/-! ## A328699.P425530582485580654

`A214636(n+1)-1`
-/

namespace A328699.P425530582485580654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214636 (n + 1) - 1

end

end A328699.P425530582485580654

/-! ## A328699.P2878571297212867221

`A000401(A214636(n+1))`
-/

namespace A328699.P2878571297212867221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A214636 (n + 1)).toNat

end

end A328699.P2878571297212867221

/-! ## A328699.P13633429534233578116

`A259361(A214636(n+1)²)`
-/

namespace A328699.P13633429534233578116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A214636 (n + 1) ^ 2).toNat

end

end A328699.P13633429534233578116

/-! ## A328699.P16939626666086867707

`A023444(A214636(n+1)+1)`
-/

namespace A328699.P16939626666086867707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A214636 (n + 1) + 1).toNat

end

end A328699.P16939626666086867707

/-! ## A328699.P2495018827327841856

`A048105(2^A214636(n+1))`
-/

namespace A328699.P2495018827327841856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A214636 (n + 1) : ℤ))).toNat

end

end A328699.P2495018827327841856

/-! ## A328699.P4921986689158548461

`A055212(2^A214636(n+1))`
-/

namespace A328699.P4921986689158548461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A214636 (n + 1) : ℤ))).toNat

end

end A328699.P4921986689158548461

/-! ## A328699.P17525490290063561555

`A002262(A214636(n+1)+54)`
-/

namespace A328699.P17525490290063561555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A214636 (n + 1) + 54).toNat

end

end A328699.P17525490290063561555

/-! ## A328699.P7393385866486819463

`A070198(n)%A214636(n+1)`
-/

namespace A328699.P7393385866486819463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A214636 (n + 1))

end

end A328699.P7393385866486819463

/-! ## A328699.P17263169410090050037

`A198277(n)%A214636(n+1)`
-/

namespace A328699.P17263169410090050037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A214636 (n + 1))

end

end A328699.P17263169410090050037

