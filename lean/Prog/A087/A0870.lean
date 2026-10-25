import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A087000: Half length of periodic part of decimal expansion of 1/p for those primes having a periodic part of even length.

The programs for A087000, there is no canonical definition to state claims against.
-/

/-! ## A087000.P14619724746167646278

`A002371(A049084(A028416(n+1)))/2`
-/

namespace A087000.P14619724746167646278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002371 (A049084 (A028416 (n + 1)).toNat).toNat : ℚ) / 2

end

end A087000.P14619724746167646278

/-! ## A087000.P13584444726651408993

`A069531(A028416(n+1))`
-/

namespace A087000.P13584444726651408993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (A028416 (n + 1)).toNat

end

end A087000.P13584444726651408993

/-! ## A087000.P8650573875075098880

`A007732(p?[A028416(n+1)])/2`
-/

namespace A087000.P8650573875075098880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007732 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A087000.P8650573875075098880

/-! ## A087000.P10150305318148904834

`A051626(p?[A028416(n+1)])/2`
-/

namespace A087000.P10150305318148904834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A087000.P10150305318148904834

/-! ## A087000.P12954122145747817954

`A069531(p?[(n+1)%(A069531(n+1)+n+1)])`
-/

namespace A087000.P12954122145747817954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A069531 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A087000.P12954122145747817954

/-! ## A087000.P7631245108803135729

`A051626(A028416(n+1))/(A001489(n)+n+2)`
-/

namespace A087000.P7631245108803135729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (A028416 (n + 1)).toNat : ℚ) / (A001489 n + (n + 2 : ℤ) : ℚ)

end

end A087000.P7631245108803135729

/-! ## A087000.P1165504852123902874

`A051626(A028416(n+1))/A000005(A001097(n+1))`
-/

namespace A087000.P1165504852123902874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (A028416 (n + 1)).toNat : ℚ) / (A000005 (A001097 (n + 1)).toNat : ℚ)

end

end A087000.P1165504852123902874

/-! ## A087000.P9511305100662085408

`A051626(2*A028416(n+1))/2`
-/

namespace A087000.P9511305100662085408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051626 (2 * A028416 (n + 1)).toNat : ℚ) / 2

end

end A087000.P9511305100662085408

/-! ## A087000.P9393365560704722282

`A069531(p?[(n+1)*gcd(n+1, A069531(n+1))])`
-/

namespace A087000.P9393365560704722282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) (A069531 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A087000.P9393365560704722282

/-!
# A087003: a(2n) = 0 and a(2n+1) = mu(2n+1); also the sum of Mobius function values computed for terms of 3x+1 trajectory started at n, provided that Collatz conjecture is true.

The programs for A087003, the canonical program `A087003.P9157037938585938204` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087003 has offset 1).

The definition of A087003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099991, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087003.P9157037938585938204

`-A099991(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A087003

/-- `-A099991(n+1)` -/
def P9157037938585938204.Spec : Prop :=
  ∀ n, P9157037938585938204.a n = A087003 (n + 1)

theorem P9157037938585938204.correct : P9157037938585938204.Spec := by
  intro n
  simp only [A087003, Nat.add_sub_cancel]

end A087003

/-! ## A087003.P2355549681051811414

`A008683(n+1)+A292273(n+1)`
-/

namespace A087003.P2355549681051811414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) + A292273 (n + 1)

end

end A087003.P2355549681051811414

namespace A087003

/-- `A008683(n+1)+A292273(n+1)` -/
def P2355549681051811414.Spec : Prop :=
  ∀ n, P2355549681051811414.a n = A087003 (n + 1)

theorem P2355549681051811414.correct : P2355549681051811414.Spec := by
  intro n
  simp only [A087003, Nat.add_sub_cancel, A087003.P2355549681051811414.a, A087003.P9157037938585938204.a, A008683, A008683.P18254306604665478110.a, A099991, A099991.P17886857990683475515.a, A292273, A292273.P2848483939684823190.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A087003

/-! ## A087003.P4725878751228355301

`A000035(n+1)*A008683(n+1)`
-/

namespace A087003.P4725878751228355301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A008683 (n + 1)

end

end A087003.P4725878751228355301

namespace A087003

/-- `A000035(n+1)*A008683(n+1)` -/
def P4725878751228355301.Spec : Prop :=
  ∀ n, P4725878751228355301.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P171824296622634514

`(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2`
-/

namespace A087003.P171824296622634514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))) 2

end

end A087003.P171824296622634514

namespace A087003

/-- `(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%2` -/
def P171824296622634514.Spec : Prop :=
  ∀ n, P171824296622634514.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P15034953063897725504

`((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))%2`
-/

namespace A087003.P15034953063897725504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * (|SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 2| - 2)) 2

end

end A087003.P15034953063897725504

namespace A087003

/-- `((n+1)*(abs(round(∏{p}[n+1, -#]/Δ[n²])+2)-2))%2` -/
def P15034953063897725504.Spec : Prop :=
  ∀ n, P15034953063897725504.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P4597607492919463646

`A292273(2*(n+1))`
-/

namespace A087003.P4597607492919463646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292273 (2 * (n + 1))

end

end A087003.P4597607492919463646

namespace A087003

/-- `A292273(2*(n+1))` -/
def P4597607492919463646.Spec : Prop :=
  ∀ n, P4597607492919463646.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P3788213019729182626

`A086823(4*(n+1))`
-/

namespace A087003.P3788213019729182626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086823 (4 * (n + 1))

end

end A087003.P3788213019729182626

namespace A087003

/-- `A086823(4*(n+1))` -/
def P3788213019729182626.Spec : Prop :=
  ∀ n, P3788213019729182626.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P10708668116819098558

`A055615(n+1)%2`
-/

namespace A087003.P10708668116819098558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055615 (n + 1)) 2

end

end A087003.P10708668116819098558

namespace A087003

/-- `A055615(n+1)%2` -/
def P10708668116819098558.Spec : Prop :=
  ∀ n, P10708668116819098558.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P7191157029272218044

`A323912(n+1)%2`
-/

namespace A087003.P7191157029272218044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323912 (n + 1)) 2

end

end A087003.P7191157029272218044

namespace A087003

/-- `A323912(n+1)%2` -/
def P7191157029272218044.Spec : Prop :=
  ∀ n, P7191157029272218044.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P10556971730423207175

`A325126(n+1)%2`
-/

namespace A087003.P10556971730423207175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325126 (n + 1)) 2

end

end A087003.P10556971730423207175

namespace A087003

/-- `A325126(n+1)%2` -/
def P10556971730423207175.Spec : Prop :=
  ∀ n, P10556971730423207175.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P7767843948650118163

`A332793(n+1)%2`
-/

namespace A087003.P7767843948650118163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332793 (n + 1)) 2

end

end A087003.P7767843948650118163

namespace A087003

/-- `A332793(n+1)%2` -/
def P7767843948650118163.Spec : Prop :=
  ∀ n, P7767843948650118163.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P7507102715084244484

`A334657(n+1)%2`
-/

namespace A087003.P7507102715084244484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334657 (n + 1)) 2

end

end A087003.P7507102715084244484

namespace A087003

/-- `A334657(n+1)%2` -/
def P7507102715084244484.Spec : Prop :=
  ∀ n, P7507102715084244484.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P481431216387161075

`A334659(n+1)%2`
-/

namespace A087003.P481431216387161075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334659 (n + 1)) 2

end

end A087003.P481431216387161075

namespace A087003

/-- `A334659(n+1)%2` -/
def P481431216387161075.Spec : Prop :=
  ∀ n, P481431216387161075.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P11730362379141636783

`A334660(n+1)%2`
-/

namespace A087003.P11730362379141636783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334660 (n + 1)) 2

end

end A087003.P11730362379141636783

namespace A087003

/-- `A334660(n+1)%2` -/
def P11730362379141636783.Spec : Prop :=
  ∀ n, P11730362379141636783.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P13323875321285231004

`A349343(n+1)%2`
-/

namespace A087003.P13323875321285231004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349343 (n + 1)) 2

end

end A087003.P13323875321285231004

namespace A087003

/-- `A349343(n+1)%2` -/
def P13323875321285231004.Spec : Prop :=
  ∀ n, P13323875321285231004.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P8208825460443070169

`A349790(n+1)%2`
-/

namespace A087003.P8208825460443070169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349790 (n + 1)) 2

end

end A087003.P8208825460443070169

namespace A087003

/-- `A349790(n+1)%2` -/
def P8208825460443070169.Spec : Prop :=
  ∀ n, P8208825460443070169.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P12681433333834312429

`A361987(n+1)%2`
-/

namespace A087003.P12681433333834312429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361987 (n + 1)) 2

end

end A087003.P12681433333834312429

namespace A087003

/-- `A361987(n+1)%2` -/
def P12681433333834312429.Spec : Prop :=
  ∀ n, P12681433333834312429.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P7858573028257790892

`A378211(n+1)%2`
-/

namespace A087003.P7858573028257790892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378211 (n + 1)) 2

end

end A087003.P7858573028257790892

namespace A087003

/-- `A378211(n+1)%2` -/
def P7858573028257790892.Spec : Prop :=
  ∀ n, P7858573028257790892.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P6680709764863082412

`A378655(n+1)%2`
-/

namespace A087003.P6680709764863082412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378655 (n + 1)) 2

end

end A087003.P6680709764863082412

namespace A087003

/-- `A378655(n+1)%2` -/
def P6680709764863082412.Spec : Prop :=
  ∀ n, P6680709764863082412.a n = A087003 (n + 1)

end A087003

/-! ## A087003.P7657007796674281154

`∑{d}[n+1, A327276(#)]`
-/

namespace A087003.P7657007796674281154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327276 d

end

end A087003.P7657007796674281154

namespace A087003

/-- `∑{d}[n+1, A327276(#)]` -/
def P7657007796674281154.Spec : Prop :=
  ∀ n, P7657007796674281154.a n = A087003 (n + 1)

end A087003

/-!
# A087005: Divisors of 2310.

The programs for A087005, there is no canonical definition to state claims against.
-/

/-! ## A087005.P8734928063951324225

`record[∏{p}[n+1, #%12]]`
-/

namespace A087005.P8734928063951324225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087005.P8734928063951324225

/-! ## A087005.P9371310910098252867

`A261144(n+31)`
-/

namespace A087005.P9371310910098252867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261144 (n + 31)

end

end A087005.P9371310910098252867

/-! ## A087005.P1293144926899024748

`record[∏{p}[A051038(n+1), #]]`
-/

namespace A087005.P1293144926899024748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087005.P1293144926899024748

/-! ## A087005.P14547489574480269334

`record[∏{p}[A245809(n+1), #]]`
-/

namespace A087005.P14547489574480269334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087005.P14547489574480269334

/-! ## A087005.P18356815324614814846

`record[A007913(A051038(n+1))]`
-/

namespace A087005.P18356815324614814846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A051038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087005.P18356815324614814846

/-!
# A087006: Divisors of 30030.

The programs for A087006, there is no canonical definition to state claims against.
-/

/-! ## A087006.P14869848690730103297

`record[gcd(n+1, C(10*n, 6))]`
-/

namespace A087006.P14869848690730103297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.choose (10 * n) 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087006.P14869848690730103297

/-! ## A087006.P4349585776507326174

`A261144(n+63)`
-/

namespace A087006.P4349585776507326174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261144 (n + 63)

end

end A087006.P4349585776507326174

/-! ## A087006.P16781495671392875779

`record[A007913(A080197(n+1))]`
-/

namespace A087006.P16781495671392875779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A080197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087006.P16781495671392875779

/-! ## A087006.P10496811001864231694

`filter[A080197(n+1), A008966(#)]`
-/

namespace A087006.P10496811001864231694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087006.P10496811001864231694

/-! ## A087006.P13969668017962299181

`∩[A005117(n+1), A080197(n+1)]`
-/

namespace A087006.P13969668017962299181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087006.P13969668017962299181

/-! ## A087006.P2372517709966186612

`∩[A080197(n+1), A087007(n+1)]`
-/

namespace A087006.P2372517709966186612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087006.P2372517709966186612

/-! ## A087006.P16363073309683150246

`∩[A080197(n+1), A087008(n+1)]`
-/

namespace A087006.P16363073309683150246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087006.P16363073309683150246

/-! ## A087006.P4682309022512271513

`∩[A087007(n+1), A160543(n+1)]`
-/

namespace A087006.P4682309022512271513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087006.P4682309022512271513

/-!
# A087007: Divisors of 510510.

The programs for A087007, the canonical program `A087007.P9956530116215495387` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087007 has offset 1).

The definition of A087007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087007.P9956530116215495387

`record[∏{p}[A080681(n+1), #]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A087007

/-- `record[∏{p}[A080681(n+1), #]]` -/
def P9956530116215495387.Spec : Prop :=
  ∀ n, (P9956530116215495387.a n : ℤ) = A087007 (n + 1)

theorem P9956530116215495387.correct : P9956530116215495387.Spec := by
  intro n
  simp only [A087007, Nat.add_sub_cancel]

end A087007

/-! ## A087007.P10920649534197460264

`∩[A080681(n+1), A087008(n+1)]`
-/

namespace A087007.P10920649534197460264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087007.P10920649534197460264

namespace A087007

/-- `∩[A080681(n+1), A087008(n+1)]` -/
def P10920649534197460264.Spec : Prop :=
  ∀ n, (P10920649534197460264.a n : ℤ) = A087007 (n + 1)

end A087007

/-! ## A087007.P7773298104070753573

`∩[A087008(n+1), A396553(n+1)]`
-/

namespace A087007.P7773298104070753573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087007.P7773298104070753573

namespace A087007

/-- `∩[A087008(n+1), A396553(n+1)]` -/
def P7773298104070753573.Spec : Prop :=
  ∀ n, (P7773298104070753573.a n : ℤ) = A087007 (n + 1)

end A087007

/-! ## A087007.P12845807405755659583

`A080681(eq[1, ∏{e}[A080681(n+1), #]]+1)`
-/

namespace A087007.P12845807405755659583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087007.P12845807405755659583

namespace A087007

/-- `A080681(eq[1, ∏{e}[A080681(n+1), #]]+1)` -/
def P12845807405755659583.Spec : Prop :=
  ∀ n, P12845807405755659583.a n = A087007 (n + 1)

end A087007

/-! ## A087007.P3515526718688759289

`record[gcd(n+1, A176655(gcd(n, n+1)))]`
-/

namespace A087007.P3515526718688759289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A176655 (Nat.gcd n (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087007.P3515526718688759289

namespace A087007

/-- `record[gcd(n+1, A176655(gcd(n, n+1)))]` -/
def P3515526718688759289.Spec : Prop :=
  ∀ n, (P3515526718688759289.a n : ℤ) = A087007 (n + 1)

end A087007

/-! ## A087007.P4673745681863801339

`record[A007913(A080681(n+1))]`
-/

namespace A087007.P4673745681863801339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A080681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087007.P4673745681863801339

namespace A087007

/-- `record[A007913(A080681(n+1))]` -/
def P4673745681863801339.Spec : Prop :=
  ∀ n, P4673745681863801339.a n = A087007 (n + 1)

end A087007

/-! ## A087007.P17756109765130891655

`filter[A080681(n+1), A008966(#)]`
-/

namespace A087007.P17756109765130891655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087007.P17756109765130891655

namespace A087007

/-- `filter[A080681(n+1), A008966(#)]` -/
def P17756109765130891655.Spec : Prop :=
  ∀ n, P17756109765130891655.a n = A087007 (n + 1)

end A087007

/-! ## A087007.P7746499422929442921

`∩[A005117(n+1), A080681(n+1)]`
-/

namespace A087007.P7746499422929442921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087007.P7746499422929442921

namespace A087007

/-- `∩[A005117(n+1), A080681(n+1)]` -/
def P7746499422929442921.Spec : Prop :=
  ∀ n, (P7746499422929442921.a n : ℤ) = A087007 (n + 1)

end A087007

/-! ## A087007.P6499272546940721634

`record[∏{p}[lt[A006530(n+1)-1, 17]+1, #]]`
-/

namespace A087007.P6499272546940721634
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087007.P6499272546940721634

namespace A087007

/-- `record[∏{p}[lt[A006530(n+1)-1, 17]+1, #]]` -/
def P6499272546940721634.Spec : Prop :=
  ∀ n, (P6499272546940721634.a n : ℤ) = A087007 (n + 1)

end A087007

/-! ## A087007.P7130881286623411630

`∩[A087008(n+1), A160544(n+1)]`
-/

namespace A087007.P7130881286623411630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087007.P7130881286623411630

namespace A087007

/-- `∩[A087008(n+1), A160544(n+1)]` -/
def P7130881286623411630.Spec : Prop :=
  ∀ n, (P7130881286623411630.a n : ℤ) = A087007 (n + 1)

end A087007

/-!
# A087008: Divisors of 9699690.

The programs for A087008, there is no canonical definition to state claims against.
-/

/-! ## A087008.P7389191738670232776

`record[∏{p}[A080682(n+1), #]]`
-/

namespace A087008.P7389191738670232776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087008.P7389191738670232776

/-! ## A087008.P11673932873920157005

`A080682(eq[1, ∏{e}[A080682(n+1), #]]+1)`
-/

namespace A087008.P11673932873920157005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A087008.P11673932873920157005

/-! ## A087008.P5693519860912555606

`record[A007913(A080682(n+1))]`
-/

namespace A087008.P5693519860912555606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A080682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087008.P5693519860912555606

/-! ## A087008.P10473805972043291215

`filter[A080682(n+1), A008966(#)]`
-/

namespace A087008.P10473805972043291215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A087008.P10473805972043291215

/-! ## A087008.P1174683600701172541

`∩[A005117(n+1), A080682(n+1)]`
-/

namespace A087008.P1174683600701172541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087008.P1174683600701172541

/-! ## A087008.P6728746517094508339

`record[A327499(A317323(n+1))]`
-/

namespace A087008.P6728746517094508339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (A317323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087008.P6728746517094508339

/-! ## A087008.P10096356920373301780

`record[A293810(A312141(5*n))]`
-/

namespace A087008.P10096356920373301780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (A312141 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087008.P10096356920373301780

/-!
# A087009: Least m such that omega(m) + Omega(m) = n, or 0 if no such m exists.

The programs for A087009, the canonical program `A087009.P5271296920678270485` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087009 has offset 0).

The definition of A087009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087009.P13096117452438324756

`ogf((1-2x+2x^2-2x^4)/(1-2x))`
-/

namespace A087009.P13096117452438324756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, 0, -2] [1, -2] n

end

end A087009.P13096117452438324756

namespace A087009

/-- `ogf((1-2x+2x^2-2x^4)/(1-2x))` -/
def P13096117452438324756.Spec : Prop :=
  ∀ n, P13096117452438324756.a n = A087009 n

end A087009

/-! ## A087009.P5271296920678270485

`2*a(n-1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087009

/-- `2*a(n-1)` -/
def P5271296920678270485.Spec : Prop :=
  ∀ n, (P5271296920678270485.a n : ℤ) = A087009 n

theorem P5271296920678270485.correct : P5271296920678270485.Spec := by
  intro n
  simp only [A087009]

end A087009

/-! ## A087009.P5571399073107619903

`a(n-1)+a(n-1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A087009.P5571399073107619903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 4, 6] fun n a =>
  a (n - 1) + a (n - 1)

end

end A087009.P5571399073107619903

namespace A087009

/-- `a(n-1)+a(n-1)` -/
def P5571399073107619903.Spec : Prop :=
  ∀ n, (P5571399073107619903.a n : ℤ) = A087009 n

theorem P5571399073107619903.correct : P5571399073107619903.Spec := by
  intro n
  simp only [A087009, Nat.add_sub_cancel, A087009.P5571399073107619903.a, A087009.P5271296920678270485.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087009

/-! ## A087009.P7169760729972778490

`3%a(n-2)-(3-a(n-1)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4`
-/

namespace A087009.P7169760729972778490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4] fun n a =>
  Int.tmod 3 (a (n - 2)) - (3 - a (n - 1) - a (n - 1))

end

end A087009.P7169760729972778490

namespace A087009

/-- `3%a(n-2)-(3-a(n-1)-a(n-1))` -/
def P7169760729972778490.Spec : Prop :=
  ∀ n, P7169760729972778490.a n = A087009 n

end A087009

/-! ## A087009.P12905402875776599348

`A290114(A289207(n))-A134824(n)`
-/

namespace A087009.P12905402875776599348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290114 (A289207 n).toNat - A134824 n

end

end A087009.P12905402875776599348

namespace A087009

/-- `A290114(A289207(n))-A134824(n)` -/
def P12905402875776599348.Spec : Prop :=
  ∀ n, P12905402875776599348.a n = A087009 n

end A087009

/-! ## A087009.P1566196795039031550

`A091538(A054254(n))`
-/

namespace A087009.P1566196795039031550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 (A054254 n).toNat

end

end A087009.P1566196795039031550

namespace A087009

/-- `A091538(A054254(n))` -/
def P1566196795039031550.Spec : Prop :=
  ∀ n, P1566196795039031550.a n = A087009 n

end A087009

/-!
# A087010: Number of primes of form 4*k+1 between n and 2n (inclusive).

The programs for A087010, the canonical program `A087010.P3140519343605400597` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087010 has offset 1).

The definition of A087010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087010.P4298609569585813910

`A056171(A047268(n+1))-A087011(n+1)`
-/

namespace A087010.P4298609569585813910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A047268 (n + 1)).toNat - A087011 (n + 1)

end

end A087010.P4298609569585813910

namespace A087010

/-- `A056171(A047268(n+1))-A087011(n+1)` -/
def P4298609569585813910.Spec : Prop :=
  ∀ n, P4298609569585813910.a n = A087010 (n + 1)

end A087010

/-! ## A087010.P3140519343605400597

`A066339(2*(n+1))-A066339(A028310(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087010

/-- `A066339(2*(n+1))-A066339(A028310(n))` -/
def P3140519343605400597.Spec : Prop :=
  ∀ n, P3140519343605400597.a n = A087010 (n + 1)

theorem P3140519343605400597.correct : P3140519343605400597.Spec := by
  intro n
  simp only [A087010, Nat.add_sub_cancel]

end A087010

/-! ## A087010.P892722964043510668

`A066339(2*(n+1))-A066339(A136548(n+1))`
-/

namespace A087010.P892722964043510668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1)) - A066339 (A136548 (n + 1)).toNat

end

end A087010.P892722964043510668

namespace A087010

/-- `A066339(2*(n+1))-A066339(A136548(n+1))` -/
def P892722964043510668.Spec : Prop :=
  ∀ n, P892722964043510668.a n = A087010 (n + 1)

end A087010

/-! ## A087010.P13568603975611426150

`A066339(2*(n+1))-A066339(A065033(2*n))`
-/

namespace A087010.P13568603975611426150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1)) - A066339 (A065033 (2 * n)).toNat

end

end A087010.P13568603975611426150

namespace A087010

/-- `A066339(2*(n+1))-A066339(A065033(2*n))` -/
def P13568603975611426150.Spec : Prop :=
  ∀ n, P13568603975611426150.a n = A087010 (n + 1)

end A087010

/-! ## A087010.P5020990579542837924

`A066339(2*(n+1))-A066339(A123108(2*n))`
-/

namespace A087010.P5020990579542837924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1)) - A066339 (A123108 (2 * n)).toNat

end

end A087010.P5020990579542837924

namespace A087010

/-- `A066339(2*(n+1))-A066339(A123108(2*n))` -/
def P5020990579542837924.Spec : Prop :=
  ∀ n, P5020990579542837924.a n = A087010 (n + 1)

end A087010

/-! ## A087010.P5875598173231223121

`A296021(A004526(n))-A066339(A136548(n+1))`
-/

namespace A087010.P5875598173231223121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296021 (A004526 n).toNat - A066339 (A136548 (n + 1)).toNat

end

end A087010.P5875598173231223121

namespace A087010

/-- `A296021(A004526(n))-A066339(A136548(n+1))` -/
def P5875598173231223121.Spec : Prop :=
  ∀ n, P5875598173231223121.a n = A087010 (n + 1)

end A087010

/-!
# A087011: Number of primes of form 4*k+3 between n and 2n (inclusive).

The programs for A087011, the canonical program `A087011.P18029174612393828854` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087011 has offset 1).

The definition of A087011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087011.P18029174612393828854

`A035250(n+1)-A087010(n+1)^round(atan(n)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A087011

/-- `A035250(n+1)-A087010(n+1)^round(atan(n)/2)` -/
def P18029174612393828854.Spec : Prop :=
  ∀ n, P18029174612393828854.a n = (A087011 (n + 1) : ℚ)

end A087011

/-! ## A087011.P8061163525578550570

`A056171(A047268(n+1))-A087010(n+1)`
-/

namespace A087011.P8061163525578550570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A047268 (n + 1)).toNat - A087010 (n + 1)

end

end A087011.P8061163525578550570

namespace A087011

/-- `A056171(A047268(n+1))-A087010(n+1)` -/
def P8061163525578550570.Spec : Prop :=
  ∀ n, P8061163525578550570.a n = A087011 (n + 1)

end A087011

/-! ## A087011.P14028213963109373570

`A066490(2*(n+1))-A066490(round(acot(n)+n))`
-/

namespace A087011.P14028213963109373570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (2 * (n + 1)) - A066490 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A087011.P14028213963109373570

namespace A087011

/-- `A066490(2*(n+1))-A066490(round(acot(n)+n))` -/
def P14028213963109373570.Spec : Prop :=
  ∀ n, P14028213963109373570.a n = A087011 (n + 1)

end A087011

/-! ## A087011.P17494026634520160094

`A066490(2*(n+1))-A066490(A028310(n))`
-/

namespace A087011.P17494026634520160094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (2 * (n + 1)) - A066490 (A028310 n).toNat

end

end A087011.P17494026634520160094

namespace A087011

/-- `A066490(2*(n+1))-A066490(A028310(n))` -/
def P17494026634520160094.Spec : Prop :=
  ∀ n, P17494026634520160094.a n = A087011 (n + 1)

end A087011

/-! ## A087011.P17894359782798605004

`A066490(2*(n+1))-A066490(A136548(n+1))`
-/

namespace A087011.P17894359782798605004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (2 * (n + 1)) - A066490 (A136548 (n + 1)).toNat

end

end A087011.P17894359782798605004

namespace A087011

/-- `A066490(2*(n+1))-A066490(A136548(n+1))` -/
def P17894359782798605004.Spec : Prop :=
  ∀ n, P17894359782798605004.a n = A087011 (n + 1)

end A087011

/-!
# A087012: Numbers m such that the number of primes of form 4*k+1 between m and 2*m equals the number of primes of form 4*k+3 between m and 2*m (inclusive).

The programs for A087012, the canonical program `A087012.P10846444027220297516` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087012 has offset 1).

The definition of A087012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087012.P10846444027220297516

`eq[A087010(n+1), A087011(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A087012

/-- `eq[A087010(n+1), A087011(n+1)]+1` -/
def P10846444027220297516.Spec : Prop :=
  ∀ n, (P10846444027220297516.a n : ℤ) = A087012 (n + 1)

theorem P10846444027220297516.correct : P10846444027220297516.Spec := by
  intro n
  simp only [A087012, Nat.add_sub_cancel]

end A087012

/-!
# A087018: Row sums of Fibonacci triangle shown below.

The programs for A087018, the canonical program `A087018.P17547077177949321628` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087018 has offset 1).

The definition of A087018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087018.P17547077177949321628

`A000045(A000217(n+1)+2)-A000045(A000217(n)+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087018

/-- `A000045(A000217(n+1)+2)-A000045(A000217(n)+2)` -/
def P17547077177949321628.Spec : Prop :=
  ∀ n, P17547077177949321628.a n = A087018 (n + 1)

theorem P17547077177949321628.correct : P17547077177949321628.Spec := by
  intro n
  simp only [A087018, Nat.add_sub_cancel]

end A087018

/-! ## A087018.P11066678847216780312

`Δ[A000045(∑[n]+2)]`
-/

namespace A087018.P11066678847216780312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087018.P11066678847216780312

namespace A087018

/-- `Δ[A000045(∑[n]+2)]` -/
def P11066678847216780312.Spec : Prop :=
  ∀ n, P11066678847216780312.a n = A087018 (n + 1)

end A087018

/-! ## A087018.P7051539431654511863

`Δ[A000071(∑[n]+2)]`
-/

namespace A087018.P7051539431654511863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087018.P7051539431654511863

namespace A087018

/-- `Δ[A000071(∑[n]+2)]` -/
def P7051539431654511863.Spec : Prop :=
  ∀ n, P7051539431654511863.a n = A087018 (n + 1)

end A087018

/-! ## A087018.P11256054981742651584

`Δ[A001611(∑[n]+2)]`
-/

namespace A087018.P11256054981742651584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087018.P11256054981742651584

namespace A087018

/-- `Δ[A001611(∑[n]+2)]` -/
def P11256054981742651584.Spec : Prop :=
  ∀ n, P11256054981742651584.a n = A087018 (n + 1)

end A087018

/-! ## A087018.P14966522833723431948

`Δ[A157726(∑[n]+2)]`
-/

namespace A087018.P14966522833723431948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087018.P14966522833723431948

namespace A087018

/-- `Δ[A157726(∑[n]+2)]` -/
def P14966522833723431948.Spec : Prop :=
  ∀ n, P14966522833723431948.a n = A087018 (n + 1)

end A087018

/-!
# A087019: Lunar squares: n*n where * is lunar multiplication (A087062).

The programs for A087019, there is no canonical definition to state claims against.
-/

/-! ## A087019.P16837371595124268885

`A070196(A051022(n))-A054055(n)`
-/

namespace A087019.P16837371595124268885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - A054055 n

end

end A087019.P16837371595124268885

/-! ## A087019.P4547668544474362855

`A070196(A051022(n))-val(A069877(n), 2)`
-/

namespace A087019.P4547668544474362855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - (SequenceMachineLib.valuation (A069877 n).toNat 2 : ℤ)

end

end A087019.P4547668544474362855

/-! ## A087019.P7503164726333432986

`A070196(A051022(n))-A004185(n)%10`
-/

namespace A087019.P7503164726333432986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - Int.tmod (A004185 n) 10

end

end A087019.P7503164726333432986

/-! ## A087019.P17294927260783248611

`A070196(A051022(n))-A047842(n)%10`
-/

namespace A087019.P17294927260783248611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - Int.tmod (A047842 n) 10

end

end A087019.P17294927260783248611

/-! ## A087019.P10649172943180924764

`A070196(A051022(n))-A355222(n)%10`
-/

namespace A087019.P10649172943180924764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - Int.tmod (A355222 n) 10

end

end A087019.P10649172943180924764

/-! ## A087019.P14128646829101474802

`A070196(A051022(n))-(n-A193581(n))%10`
-/

namespace A087019.P14128646829101474802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - Int.tmod ((n : ℤ) - A193581 n) 10

end

end A087019.P14128646829101474802

/-! ## A087019.P12246241664889348185

`A181352(A004086(n))+A056965(A051022(n))`
-/

namespace A087019.P12246241664889348185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181352 (A004086 n).toNat + A056965 (A051022 n).toNat

end

end A087019.P12246241664889348185

/-! ## A087019.P7761262725570002378

`A070196(A051022(n))-A000030(A004186(n))`
-/

namespace A087019.P7761262725570002378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - A000030 (A004186 n).toNat

end

end A087019.P7761262725570002378

/-! ## A087019.P12266716099982302813

`A070196(A051022(n))-A010879(A004185(n))`
-/

namespace A087019.P12266716099982302813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - A010879 (A004185 n).toNat

end

end A087019.P12266716099982302813

/-! ## A087019.P18087213019768715333

`A070196(A051022(n))-A190600(A102487(n+1))`
-/

namespace A087019.P18087213019768715333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - A190600 (A102487 (n + 1)).toNat

end

end A087019.P18087213019768715333

/-! ## A087019.P11330039155536465136

`A070196(A051022(n))-(A228822(n)+A055642(n))`
-/

namespace A087019.P11330039155536465136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (A051022 n).toNat - (A228822 n + A055642 n)

end

end A087019.P11330039155536465136

/-! ## A087019.P9748022401100684865

`A261684(∑[4*n])`
-/

namespace A087019.P9748022401100684865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087019.P9748022401100684865

/-! ## A087019.P682628994602544846

`or(char[1], A261684(2*(n²+n)))`
-/

namespace A087019.P682628994602544846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A261684 (2 * (n ^ 2 + n)))

end

end A087019.P682628994602544846

/-! ## A087019.P8867334398892291687

`record[A261684(n*(n-gcd(2, n))/2)]`
-/

namespace A087019.P8867334398892291687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - (Nat.gcd 2 n : ℤ) : ℚ) / 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087019.P8867334398892291687

/-! ## A087019.P10650784523803956655

`record[A261684(A092530(n))]`
-/

namespace A087019.P10650784523803956655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087019.P10650784523803956655

/-! ## A087019.P10921942239741497920

`record[A261684(A182456(n))]`
-/

namespace A087019.P10921942239741497920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A182456 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087019.P10921942239741497920

/-! ## A087019.P1879528032364285005

`record[A261684(A265225(n))]`
-/

namespace A087019.P1879528032364285005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A265225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087019.P1879528032364285005

/-! ## A087019.P5993001381664288629

`record[A261684(n*A008619(n))]`
-/

namespace A087019.P5993001381664288629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087019.P5993001381664288629

/-! ## A087019.P6432147581244195379

`∑{d}[A261684(2*(n²+n)), A000010(#)]`
-/

namespace A087019.P6432147581244195379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (2 * (n ^ 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A087019.P6432147581244195379

/-! ## A087019.P12921354509805024778

`A261684(2*(n²+n))+A008683(4*(n+1))`
-/

namespace A087019.P12921354509805024778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (2 * (n ^ 2 + n)) + A008683 (4 * (n + 1))

end

end A087019.P12921354509805024778

/-!
# A087023: Maximal exponent in prime factorization of n-th cyclic number.

The programs for A087023, there is no canonical definition to state claims against.
-/

/-! ## A087023.P18021378176126541957

`val(record[A238104(n+4)], 3)`
-/

namespace A087023.P18021378176126541957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238104 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A087023.P18021378176126541957

/-! ## A087023.P16438629459329167190

`A354099(A001913(n+1))+2`
-/

namespace A087023.P16438629459329167190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A001913 (n + 1)).toNat + 2

end

end A087023.P16438629459329167190

/-! ## A087023.P4443696719983127608

`A354099(A006883(n+2))+2`
-/

namespace A087023.P4443696719983127608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A006883 (n + 2)).toNat + 2

end

end A087023.P4443696719983127608

/-! ## A087023.P14410023732504209830

`val(A238104(A060257(n+1)), 3)`
-/

namespace A087023.P14410023732504209830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A238104 (A060257 (n + 1)).toNat).toNat 3

end

end A087023.P14410023732504209830

/-! ## A087023.P2629451917951030753

`val(A048997(p?[A167797(n+1)]), 3)`
-/

namespace A087023.P2629451917951030753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167797 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048997 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat 3

end

end A087023.P2629451917951030753

/-!
# A087027: a(n) = n*m where * is lunar multiplication and m is the ordinary sum n+1.

The programs for A087027, there is no canonical definition to state claims against.
-/

/-! ## A087027.P1163237682290733610

`A261684(2*(n+1)²)`
-/

namespace A087027.P1163237682290733610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (2 * (n + 1) ^ 2)

end

end A087027.P1163237682290733610

/-! ## A087027.P10230242159397667664

`A087062(2*n²+1)%(n+1)²`
-/

namespace A087027.P10230242159397667664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087062 (2 * n ^ 2 + 1)) ((n + 1) ^ 2 : ℤ)

end

end A087027.P10230242159397667664

/-! ## A087027.P4232315184308117058

`record[A261684(A092530(n)-n)]`
-/

namespace A087027.P4232315184308117058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A092530 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087027.P4232315184308117058

/-! ## A087027.P16653629339701023278

`A087062(2*n²+1)-A000007(n)`
-/

namespace A087027.P16653629339701023278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (2 * n ^ 2 + 1) - A000007 n

end

end A087027.P16653629339701023278

/-! ## A087027.P14398560692596279349

`A087062(2*n²+1)-A316341(3*n+2)`
-/

namespace A087027.P14398560692596279349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (2 * n ^ 2 + 1) - A316341 (3 * n + 2)

end

end A087027.P14398560692596279349

/-! ## A087027.P10260017508413194845

`A000045(round(n/(n+1)))*A087062(2*n²+1)`
-/

namespace A087027.P10260017508413194845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat * A087062 (2 * n ^ 2 + 1)

end

end A087027.P10260017508413194845

/-! ## A087027.P18031643955954271712

`A087062(2*n²+1)+A008683(floor((n+2)²/2))`
-/

namespace A087027.P18031643955954271712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087062 (2 * n ^ 2 + 1) + A008683 ⌊((n + 2) ^ 2 : ℚ) / 2⌋.toNat

end

end A087027.P18031643955954271712

/-! ## A087027.P3139296625865975471

`A000035(A000040(n+1))*A087062(2*n²+1)`
-/

namespace A087027.P3139296625865975471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 1)).toNat * A087062 (2 * n ^ 2 + 1)

end

end A087027.P3139296625865975471

/-! ## A087027.P17280612623641725308

`A001221(A000961(n+1))*A087062(2*n²+1)`
-/

namespace A087027.P17280612623641725308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * A087062 (2 * n ^ 2 + 1)

end

end A087027.P17280612623641725308

/-!
# A087028: Number of bounded (<=n) lunar divisors of n.

The programs for A087028, there is no canonical definition to state claims against.
-/

/-! ## A087028.P2419440317183966145

`ceil(A118511(n+2)/2)+1`
-/

namespace A087028.P2419440317183966145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118511 (n + 2) : ℚ) / 2⌉ + 1

end

end A087028.P2419440317183966145

/-! ## A087028.P6688342396307704638

`A080513(A118511(n+2))`
-/

namespace A087028.P6688342396307704638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A118511 (n + 2)).toNat

end

end A087028.P6688342396307704638

/-!
# A087029: Number of lunar divisors of n (unbounded version).

The programs for A087029, there is no canonical definition to state claims against.
-/

/-! ## A087029.P14907291451187388303

`A087416(n+1)-A186442(n+1)`
-/

namespace A087029.P14907291451187388303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087416 (n + 1) - A186442 (n + 1)

end

end A087029.P14907291451187388303

/-!
# A087030: n "reflected" in the next prime: a(n)=2p-n, p is smallest prime > n.

The programs for A087030, the canonical program `A087030.P1288497495494676247` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087030 has offset 1).

The definition of A087030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087030.P1288497495494676247

`2*A151800(n+1)-(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A087030

/-- `2*A151800(n+1)-(n+1)` -/
def P1288497495494676247.Spec : Prop :=
  ∀ n, P1288497495494676247.a n = A087030 (n + 1)

theorem P1288497495494676247.correct : P1288497495494676247.Spec := by
  intro n
  simp only [A087030, Nat.add_sub_cancel]

end A087030

/-! ## A087030.P16842936778271862966

`A076274(A000720(n+1)+2)-n`
-/

namespace A087030.P16842936778271862966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (A000720 (n + 1) + 2).toNat - (n : ℤ)

end

end A087030.P16842936778271862966

namespace A087030

/-- `A076274(A000720(n+1)+2)-n` -/
def P16842936778271862966.Spec : Prop :=
  ∀ n, P16842936778271862966.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P7241827270875856573

`A308046(n+2)+n+3`
-/

namespace A087030.P7241827270875856573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308046 (n + 2) + (n + 3 : ℤ)

end

end A087030.P7241827270875856573

namespace A087030

/-- `A308046(n+2)+n+3` -/
def P7241827270875856573.Spec : Prop :=
  ∀ n, P7241827270875856573.a n = A087030 (n + 1)

theorem P7241827270875856573.correct : P7241827270875856573.Spec := by
  intro n
  simp only [A087030, Nat.add_sub_cancel, A087030.P7241827270875856573.a, A087030.P1288497495494676247.a, A151800, A151800.P4570031678714564115.a, A308046, A308046.P12778737970063889955.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087030

/-! ## A087030.P18296447310015889733

`2*A013632(n+1)+1+n`
-/

namespace A087030.P18296447310015889733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013632 (n + 1) + 1 + (n : ℤ)

end

end A087030.P18296447310015889733

namespace A087030

/-- `2*A013632(n+1)+1+n` -/
def P18296447310015889733.Spec : Prop :=
  ∀ n, P18296447310015889733.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P1311294326627835649

`2*A007918(n+2)-(n+1)`
-/

namespace A087030.P1311294326627835649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007918 (n + 2) - (n + 1 : ℤ)

end

end A087030.P1311294326627835649

namespace A087030

/-- `2*A007918(n+2)-(n+1)` -/
def P1311294326627835649.Spec : Prop :=
  ∀ n, P1311294326627835649.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P8685247997775776155

`2*A007920(n+2)+n+3`
-/

namespace A087030.P8685247997775776155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007920 (n + 2) + (n + 3 : ℤ)

end

end A087030.P8685247997775776155

namespace A087030

/-- `2*A007920(n+2)+n+3` -/
def P8685247997775776155.Spec : Prop :=
  ∀ n, P8685247997775776155.a n = A087030 (n + 1)

theorem P8685247997775776155.correct : P8685247997775776155.Spec := by
  intro n
  simp only [A087030, Nat.add_sub_cancel, A087030.P8685247997775776155.a, A087030.P1288497495494676247.a, A007920, A007920.P3719263903022372137.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087030

/-! ## A087030.P1719244535937608100

`A151800(n+1)+A013632(n+1)`
-/

namespace A087030.P1719244535937608100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) + A013632 (n + 1)

end

end A087030.P1719244535937608100

namespace A087030

/-- `A151800(n+1)+A013632(n+1)` -/
def P1719244535937608100.Spec : Prop :=
  ∀ n, P1719244535937608100.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P3259233710567244208

`A013632(n+1)+A007918(n+2)`
-/

namespace A087030.P3259233710567244208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1) + A007918 (n + 2)

end

end A087030.P3259233710567244208

namespace A087030

/-- `A013632(n+1)+A007918(n+2)` -/
def P3259233710567244208.Spec : Prop :=
  ∀ n, P3259233710567244208.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P16231814649050339354

`A001489(n+1)+2*A151800(n+1)`
-/

namespace A087030.P16231814649050339354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + 2 * A151800 (n + 1)

end

end A087030.P16231814649050339354

namespace A087030

/-- `A001489(n+1)+2*A151800(n+1)` -/
def P16231814649050339354.Spec : Prop :=
  ∀ n, P16231814649050339354.a n = A087030 (n + 1)

theorem P16231814649050339354.correct : P16231814649050339354.Spec := by
  intro n
  simp only [A087030, Nat.add_sub_cancel, A087030.P16231814649050339354.a, A087030.P1288497495494676247.a, A001489, A001489.P15233530513763566776.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087030

/-! ## A087030.P17767533000010375371

`2*A013634(n+1)-A008585(n+1)`
-/

namespace A087030.P17767533000010375371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013634 (n + 1) - A008585 (n + 1)

end

end A087030.P17767533000010375371

namespace A087030

/-- `2*A013634(n+1)-A008585(n+1)` -/
def P17767533000010375371.Spec : Prop :=
  ∀ n, P17767533000010375371.a n = A087030 (n + 1)

theorem P17767533000010375371.correct : P17767533000010375371.Spec := by
  intro n
  simp only [A087030, Nat.add_sub_cancel, A087030.P17767533000010375371.a, A087030.P1288497495494676247.a, A008585, A008585.P13732812384316341435.a, A013634, A013634.P1496314925931275042.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087030

/-! ## A087030.P11386376071750347566

`A004273(A151800(n+1))-n`
-/

namespace A087030.P11386376071750347566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151800 (n + 1)).toNat - (n : ℤ)

end

end A087030.P11386376071750347566

namespace A087030

/-- `A004273(A151800(n+1))-n` -/
def P11386376071750347566.Spec : Prop :=
  ∀ n, P11386376071750347566.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P7524786687495950730

`A141264(A007918(n+2))-n`
-/

namespace A087030.P7524786687495950730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141264 (A007918 (n + 2)).toNat - (n : ℤ)

end

end A087030.P7524786687495950730

namespace A087030

/-- `A141264(A007918(n+2))-n` -/
def P7524786687495950730.Spec : Prop :=
  ∀ n, P7524786687495950730.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P16823626105804086961

`A008585(A151800(n+1))-A013634(n+1)`
-/

namespace A087030.P16823626105804086961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A151800 (n + 1)).toNat - A013634 (n + 1)

end

end A087030.P16823626105804086961

namespace A087030

/-- `A008585(A151800(n+1))-A013634(n+1)` -/
def P16823626105804086961.Spec : Prop :=
  ∀ n, P16823626105804086961.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P6115203199243586406

`2*A159477(n+2)-(n+1)`
-/

namespace A087030.P6115203199243586406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159477 (n + 2) - (n + 1 : ℤ)

end

end A087030.P6115203199243586406

namespace A087030

/-- `2*A159477(n+2)-(n+1)` -/
def P6115203199243586406.Spec : Prop :=
  ∀ n, P6115203199243586406.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P6229083722911787677

`A159477(n+2)+A013632(n+1)`
-/

namespace A087030.P6229083722911787677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 2) + A013632 (n + 1)

end

end A087030.P6229083722911787677

namespace A087030

/-- `A159477(n+2)+A013632(n+1)` -/
def P6229083722911787677.Spec : Prop :=
  ∀ n, P6229083722911787677.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P4374015165516829982

`A063655(A139693(n+1))`
-/

namespace A087030.P4374015165516829982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A139693 (n + 1)).toNat

end

end A087030.P4374015165516829982

namespace A087030

/-- `A063655(A139693(n+1))` -/
def P4374015165516829982.Spec : Prop :=
  ∀ n, P4374015165516829982.a n = A087030 (n + 1)

end A087030

/-! ## A087030.P435258280673671013

`A100802(2*(n+2))+n+3`
-/

namespace A087030.P435258280673671013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (2 * (n + 2)) + (n + 3 : ℤ)

end

end A087030.P435258280673671013

namespace A087030

/-- `A100802(2*(n+2))+n+3` -/
def P435258280673671013.Spec : Prop :=
  ∀ n, P435258280673671013.a n = A087030 (n + 1)

end A087030

/-!
# A087031: Numbers n such that 2p-n is prime, p is the smallest prime > n.

The programs for A087031, the canonical program `A087031.P17529191149633832265` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087031 has offset 1).

The definition of A087031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087031.P17529191149633832265

`record[(n+1)*A087032(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087031

/-- `record[(n+1)*A087032(n+1)]` -/
def P17529191149633832265.Spec : Prop :=
  ∀ n, P17529191149633832265.a n = A087031 (n + 1)

theorem P17529191149633832265.correct : P17529191149633832265.Spec := by
  intro n
  simp only [A087031, Nat.add_sub_cancel]

end A087031

/-! ## A087031.P5857091519238496485

`eq[1, A087032(n+1)]+1`
-/

namespace A087031.P5857091519238496485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087031.P5857091519238496485

namespace A087031

/-- `eq[1, A087032(n+1)]+1` -/
def P5857091519238496485.Spec : Prop :=
  ∀ n, (P5857091519238496485.a n : ℤ) = A087031 (n + 1)

end A087031

/-! ## A087031.P10499607813667396111

`lt[A000005(A151800(n)+A151800(n)-n), 3]`
-/

namespace A087031.P10499607813667396111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A151800 n + (A151800 n - (n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087031.P10499607813667396111

namespace A087031

/-- `lt[A000005(A151800(n)+A151800(n)-n), 3]` -/
def P10499607813667396111.Spec : Prop :=
  ∀ n, (P10499607813667396111.a n : ℤ) = A087031 (n + 1)

end A087031

/-! ## A087031.P14023588896681286689

`filter[2*n+1, A087032(#)]`
-/

namespace A087031.P14023588896681286689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087032 (f1 j) = 1) n)

end

end A087031.P14023588896681286689

namespace A087031

/-- `filter[2*n+1, A087032(#)]` -/
def P14023588896681286689.Spec : Prop :=
  ∀ n, (P14023588896681286689.a n : ℤ) = A087031 (n + 1)

end A087031

/-! ## A087031.P18412769909348915969

`A004442(record[n*A087032(n+1)])`
-/

namespace A087031.P18412769909348915969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A087031.P18412769909348915969

namespace A087031

/-- `A004442(record[n*A087032(n+1)])` -/
def P18412769909348915969.Spec : Prop :=
  ∀ n, P18412769909348915969.a n = A087031 (n + 1)

end A087031

/-! ## A087031.P3905216429306544764

`record[A087032(n+1)*A109613(n)]`
-/

namespace A087031.P3905216429306544764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087032 (n + 1) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087031.P3905216429306544764

namespace A087031

/-- `record[A087032(n+1)*A109613(n)]` -/
def P3905216429306544764.Spec : Prop :=
  ∀ n, P3905216429306544764.a n = A087031 (n + 1)

end A087031

/-! ## A087031.P16925861287518954856

`eq[1, A010051(A087030(n+1)+1)]`
-/

namespace A087031.P16925861287518954856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A087030 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087031.P16925861287518954856

namespace A087031

/-- `eq[1, A010051(A087030(n+1)+1)]` -/
def P16925861287518954856.Spec : Prop :=
  ∀ n, (P16925861287518954856.a n : ℤ) = A087031 (n + 1)

end A087031

/-! ## A087031.P8161431324537894626

`eq[2, A000005(A087030(n+1)+1)]`
-/

namespace A087031.P8161431324537894626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A087030 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087031.P8161431324537894626

namespace A087031

/-- `eq[2, A000005(A087030(n+1)+1)]` -/
def P8161431324537894626.Spec : Prop :=
  ∀ n, (P8161431324537894626.a n : ℤ) = A087031 (n + 1)

end A087031

/-! ## A087031.P11629453347963351429

`record[A000265(n+1)/A309892(A087030(n+1))]`
-/

namespace A087031.P11629453347963351429
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A309892 (A087030 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087031.P11629453347963351429

namespace A087031

/-- `record[A000265(n+1)/A309892(A087030(n+1))]` -/
def P11629453347963351429.Spec : Prop :=
  ∀ n, P11629453347963351429.a n = (A087031 (n + 1) : ℚ)

end A087031

/-! ## A087031.P2452656611946573526

`eq[2, A000005(A005843(A007918(n+1))-n)]`
-/

namespace A087031.P2452656611946573526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005843 (A007918 (n + 1)).toNat - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087031.P2452656611946573526

namespace A087031

/-- `eq[2, A000005(A005843(A007918(n+1))-n)]` -/
def P2452656611946573526.Spec : Prop :=
  ∀ n, (P2452656611946573526.a n : ℤ) = A087031 (n + 1)

end A087031

/-! ## A087031.P16857721536656178446

`eq[1, A013632(A151800(n+1)+A013632(n+1))]`
-/

namespace A087031.P16857721536656178446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A151800 (n + 1) + A013632 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087031.P16857721536656178446

namespace A087031

/-- `eq[1, A013632(A151800(n+1)+A013632(n+1))]` -/
def P16857721536656178446.Spec : Prop :=
  ∀ n, (P16857721536656178446.a n : ℤ) = A087031 (n + 1)

end A087031

/-!
# A087032: a(n) = 1 if 2*A151800(n) - n is prime, otherwise 0, where A151800(n) is the smallest prime > n.

The programs for A087032, the canonical program `A087032.P929361503282917607` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087032 has offset 1).

The definition of A087032 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087032.P929361503282917607

`A010051(2*A151800(n+1)-(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A087032

/-- `A010051(2*A151800(n+1)-(n+1))` -/
def P929361503282917607.Spec : Prop :=
  ∀ n, P929361503282917607.a n = A087032 (n + 1)

theorem P929361503282917607.correct : P929361503282917607.Spec := by
  intro n
  simp only [A087032, Nat.add_sub_cancel]

end A087032

/-! ## A087032.P12692478076787274925

`char[A087031(n+1)-1]`
-/

namespace A087032.P12692478076787274925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A087032.P12692478076787274925

namespace A087032

/-- `char[A087031(n+1)-1]` -/
def P12692478076787274925.Spec : Prop :=
  ∀ n, (P12692478076787274925.a n : ℤ) = A087032 (n + 1)

end A087032

/-! ## A087032.P468071092323424370

`A010051(A087030(n+1))`
-/

namespace A087032.P468071092323424370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A087030 (n + 1)).toNat

end

end A087032.P468071092323424370

namespace A087032

/-- `A010051(A087030(n+1))` -/
def P468071092323424370.Spec : Prop :=
  ∀ n, P468071092323424370.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P8574833372031589856

`A101040(2*A087030(n+1))`
-/

namespace A087032.P8574833372031589856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * A087030 (n + 1)).toNat

end

end A087032.P8574833372031589856

namespace A087032

/-- `A101040(2*A087030(n+1))` -/
def P8574833372031589856.Spec : Prop :=
  ∀ n, P8574833372031589856.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P9848101424284326675

`A101040(A087030(n+1)+A087030(n+1))`
-/

namespace A087032.P9848101424284326675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A087030 (n + 1) + A087030 (n + 1)).toNat

end

end A087032.P9848101424284326675

namespace A087032

/-- `A101040(A087030(n+1)+A087030(n+1))` -/
def P9848101424284326675.Spec : Prop :=
  ∀ n, P9848101424284326675.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P4096227985126462141

`A010051(A151800(n+1)+A151800(n+1)-(n+1))`
-/

namespace A087032.P4096227985126462141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A151800 (n + 1) + (A151800 (n + 1) - (n + 1 : ℤ))).toNat

end

end A087032.P4096227985126462141

namespace A087032

/-- `A010051(A151800(n+1)+A151800(n+1)-(n+1))` -/
def P4096227985126462141.Spec : Prop :=
  ∀ n, P4096227985126462141.a n = A087032 (n + 1)

theorem P4096227985126462141.correct : P4096227985126462141.Spec := by
  intro n
  simp only [A087032, Nat.add_sub_cancel, A087032.P4096227985126462141.a, A087032.P929361503282917607.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A087032

/-! ## A087032.P5994060080664813237

`A010051(2*A013632(n+1)+n+1)`
-/

namespace A087032.P5994060080664813237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A013632 (n + 1) + (n + 1 : ℤ)).toNat

end

end A087032.P5994060080664813237

namespace A087032

/-- `A010051(2*A013632(n+1)+n+1)` -/
def P5994060080664813237.Spec : Prop :=
  ∀ n, P5994060080664813237.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P17365674113303281441

`A010051(A151800(n+1)+A013632(n+1))`
-/

namespace A087032.P17365674113303281441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A151800 (n + 1) + A013632 (n + 1)).toNat

end

end A087032.P17365674113303281441

namespace A087032

/-- `A010051(A151800(n+1)+A013632(n+1))` -/
def P17365674113303281441.Spec : Prop :=
  ∀ n, P17365674113303281441.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P2920924764175690201

`A010051(A013632(n+1)+A007918(n+2))`
-/

namespace A087032.P2920924764175690201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A013632 (n + 1) + A007918 (n + 2)).toNat

end

end A087032.P2920924764175690201

namespace A087032

/-- `A010051(A013632(n+1)+A007918(n+2))` -/
def P2920924764175690201.Spec : Prop :=
  ∀ n, P2920924764175690201.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P17283100200260740442

`A277895(A151800(A096500(A087030(n+2))))`
-/

namespace A087032.P17283100200260740442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277895 (A151800 (A096500 (A087030 (n + 2)).toNat).toNat).toNat

end

end A087032.P17283100200260740442

namespace A087032

/-- `A277895(A151800(A096500(A087030(n+2))))` -/
def P17283100200260740442.Spec : Prop :=
  ∀ n, P17283100200260740442.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P5964919351587400857

`A010051(A345282(A151800(n+1))-(n+1))`
-/

namespace A087032.P5964919351587400857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A345282 (A151800 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A087032.P5964919351587400857

namespace A087032

/-- `A010051(A345282(A151800(n+1))-(n+1))` -/
def P5964919351587400857.Spec : Prop :=
  ∀ n, P5964919351587400857.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P13013588767398664861

`A083339(2*A087030(n+1))`
-/

namespace A087032.P13013588767398664861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083339 (2 * A087030 (n + 1)).toNat

end

end A087032.P13013588767398664861

namespace A087032

/-- `A083339(2*A087030(n+1))` -/
def P13013588767398664861.Spec : Prop :=
  ∀ n, P13013588767398664861.a n = A087032 (n + 1)

end A087032

/-! ## A087032.P4068257093420234871

`A101040(A087030(n+1)²)`
-/

namespace A087032.P4068257093420234871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (A087030 (n + 1) ^ 2).toNat

end

end A087032.P4068257093420234871

namespace A087032

/-- `A101040(A087030(n+1)²)` -/
def P4068257093420234871.Spec : Prop :=
  ∀ n, P4068257093420234871.a n = A087032 (n + 1)

end A087032

/-!
# A087033: Number of terms in each group of consecutive zeros in A087032.

The programs for A087033, there is no canonical definition to state claims against.
-/

/-! ## A087033.P13064454945811940021

`Δ[A087031(n+1)]-1`
-/

namespace A087033.P13064454945811940021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A087033.P13064454945811940021

/-! ## A087033.P16879412306060524395

`A002837(Δ[A087031(n+1)])`
-/

namespace A087033.P16879412306060524395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A087033.P16879412306060524395

/-! ## A087033.P15828776130646454175

`A014681(Δ[A087031(n+1)])`
-/

namespace A087033.P15828776130646454175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (f1 (n + 1) - f1 n).toNat

end

end A087033.P15828776130646454175

/-! ## A087033.P15058476375555102489

`A023443(Δ[A087031(n+1)])`
-/

namespace A087033.P15058476375555102489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A087033.P15058476375555102489

/-! ## A087033.P6345102830527566137

`A063196(Δ[A087031(n+1)])`
-/

namespace A087033.P6345102830527566137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (f1 (n + 1) - f1 n).toNat

end

end A087033.P6345102830527566137

/-! ## A087033.P13147678706995447723

`A103889(Δ[A087031(n+1)])`
-/

namespace A087033.P13147678706995447723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (f1 (n + 1) - f1 n).toNat

end

end A087033.P13147678706995447723

/-! ## A087033.P11165533361648318094

`abs(A024000(Δ[A087031(n+1)]))`
-/

namespace A087033.P11165533361648318094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (f1 (n + 1) - f1 n).toNat|

end

end A087033.P11165533361648318094

/-! ## A087033.P17296057648563359844

`A004273(Δ[A087031(n+1)/2])`
-/

namespace A087033.P17296057648563359844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087031 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A087033.P17296057648563359844

/-! ## A087033.P5085399940382090293

`A004275(Δ[A087031(n+1)])/2`
-/

namespace A087033.P5085399940382090293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A087033.P5085399940382090293

/-! ## A087033.P16437925210319003221

`Δ[A087031(n+1)+A001489(n)]`
-/

namespace A087033.P16437925210319003221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087031 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087033.P16437925210319003221

/-!
# A087035: Maximum value taken on by f(P) = Sum_{i=1..n} p(i)*p(n+1-i) as {p(1),p(2),...,p(n)} ranges over all permutations P of {1,2,3,...,n}.

The programs for A087035, the canonical program `A087035.P9216321388734818159` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087035 has offset 0).

The definition of A087035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087035.P16479411314028924732

`(2*(n-1)*(n+1)*(2*n+3)-3*(-1)^n+9)/12`
-/

namespace A087035.P16479411314028924732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1) * (n + 1 : ℤ) * (2 * n + 3 : ℤ) - 3 * (-1) ^ n + 9 : ℚ) / 12

end

end A087035.P16479411314028924732

namespace A087035

/-- `(2*(n-1)*(n+1)*(2*n+3)-3*(-1)^n+9)/12` -/
def P16479411314028924732.Spec : Prop :=
  ∀ n, P16479411314028924732.a n = (A087035 n : ℚ)

theorem P16479411314028924732.correct : P16479411314028924732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A087035, Nat.add_sub_cancel, A087035.P16479411314028924732.a, A087035.P9216321388734818159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A087035, Nat.add_sub_cancel, A087035.P16479411314028924732.a, A087035.P9216321388734818159.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A087035

/-! ## A087035.P9216321388734818159

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13, a(4)=28`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087035

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9216321388734818159.Spec : Prop :=
  ∀ n, P9216321388734818159.a n = A087035 n

theorem P9216321388734818159.correct : P9216321388734818159.Spec := by
  intro n
  simp only [A087035]

end A087035

/-! ## A087035.P12771918611932569833

`1-∑[or(1, -n²)]`
-/

namespace A087035.P12771918611932569833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P12771918611932569833

namespace A087035

/-- `1-∑[or(1, -n²)]` -/
def P12771918611932569833.Spec : Prop :=
  ∀ n, P12771918611932569833.a n = A087035 n

end A087035

/-! ## A087035.P7042949015462439514

`∑[n²-char[lcm(2, n+1)]]`
-/

namespace A087035.P7042949015462439514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P7042949015462439514

namespace A087035

/-- `∑[n²-char[lcm(2, n+1)]]` -/
def P7042949015462439514.Spec : Prop :=
  ∀ n, P7042949015462439514.a n = A087035 n

end A087035

/-! ## A087035.P4701565984392406035

`∑[n²-a(gcd(2, n)-1)]` with `a(0)=0`
-/

namespace A087035.P4701565984392406035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (Nat.gcd 2 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P4701565984392406035

namespace A087035

/-- `∑[n²-a(gcd(2, n)-1)]` -/
def P4701565984392406035.Spec : Prop :=
  ∀ n, P4701565984392406035.a n = A087035 n

end A087035

/-! ## A087035.P6028229099039225640

`∑[n²-a(and(1, n+1))]` with `a(0)=0`
-/

namespace A087035.P6028229099039225640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 2 : ℤ) - f1 (Nat.land 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P6028229099039225640

namespace A087035

/-- `∑[n²-a(and(1, n+1))]` -/
def P6028229099039225640.Spec : Prop :=
  ∀ n, P6028229099039225640.a n = A087035 n

end A087035

/-! ## A087035.P10150058878079556464

`∑[n²-a(n-1)%n]` with `a(0)=0`
-/

namespace A087035.P10150058878079556464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 2 : ℤ) - Int.tmod (f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P10150058878079556464

namespace A087035

/-- `∑[n²-a(n-1)%n]` -/
def P10150058878079556464.Spec : Prop :=
  ∀ n, P10150058878079556464.a n = A087035 n

end A087035

/-! ## A087035.P12400034474130704152

`∑[∑[a(n-2)+4]]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A087035.P12400034474130704152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 6] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P12400034474130704152

namespace A087035

/-- `∑[∑[a(n-2)+4]]` -/
def P12400034474130704152.Spec : Prop :=
  ∀ n, (P12400034474130704152.a n : ℤ) = A087035 n

end A087035

/-! ## A087035.P5858716009092795632

`∑[∑[∑[4-a(n-1)]]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A087035.P5858716009092795632
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n f3 =>
  4 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087035.P5858716009092795632

namespace A087035

/-- `∑[∑[∑[4-a(n-1)]]]` -/
def P5858716009092795632.Spec : Prop :=
  ∀ n, P5858716009092795632.a n = A087035 n

end A087035

/-! ## A087035.P13560872739550942352

`a(n-2)+2*(n²-n)` with `a(0)=0, a(1)=1`
-/

namespace A087035.P13560872739550942352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A087035.P13560872739550942352

namespace A087035

/-- `a(n-2)+2*(n²-n)` -/
def P13560872739550942352.Spec : Prop :=
  ∀ n, P13560872739550942352.a n = A087035 n

end A087035

/-! ## A087035.P7352363397022257028

`floor(a(n-2)+(n-1)*2*n)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A087035.P7352363397022257028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n : ℤ) - 1) * (2 * n : ℤ)

end

end A087035.P7352363397022257028

namespace A087035

/-- `floor(a(n-2)+(n-1)*2*n)` -/
def P7352363397022257028.Spec : Prop :=
  ∀ n, P7352363397022257028.a n = A087035 n

end A087035

/-! ## A087035.P4418021448001203176

`(a(n-2)/(n-1)+2*n)*(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A087035.P4418021448001203176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 2) / ((n : ℤ) - 1 : ℚ) + (2 * n : ℚ)) * ((n : ℤ) - 1 : ℚ)

end

end A087035.P4418021448001203176

namespace A087035

/-- `(a(n-2)/(n-1)+2*n)*(n-1)` -/
def P4418021448001203176.Spec : Prop :=
  ∀ n, P4418021448001203176.a n = (A087035 n : ℚ)

end A087035

/-! ## A087035.P11508512548377769771

`A171218(n)-n`
-/

namespace A087035.P11508512548377769771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171218 n - (n : ℤ)

end

end A087035.P11508512548377769771

namespace A087035

/-- `A171218(n)-n` -/
def P11508512548377769771.Spec : Prop :=
  ∀ n, P11508512548377769771.a n = A087035 n

end A087035

/-! ## A087035.P18052954579042834700

`2*A131941(n)-n`
-/

namespace A087035.P18052954579042834700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131941 n - (n : ℤ)

end

end A087035.P18052954579042834700

namespace A087035

/-- `2*A131941(n)-n` -/
def P18052954579042834700.Spec : Prop :=
  ∀ n, P18052954579042834700.a n = A087035 n

end A087035

/-! ## A087035.P17546176485700503773

`∑[A137932(n)]+n²`
-/

namespace A087035.P17546176485700503773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A087035.P17546176485700503773

namespace A087035

/-- `∑[A137932(n)]+n²` -/
def P17546176485700503773.Spec : Prop :=
  ∀ n, P17546176485700503773.a n = A087035 n

end A087035

/-! ## A087035.P11593793029934539864

`∑[n²]-A004526(n)`
-/

namespace A087035.P11593793029934539864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004526 n

end

end A087035.P11593793029934539864

namespace A087035

/-- `∑[n²]-A004526(n)` -/
def P11593793029934539864.Spec : Prop :=
  ∀ n, P11593793029934539864.a n = A087035 n

end A087035

/-! ## A087035.P9079534284558348140

`A168582(n+1)-(n+1)`
-/

namespace A087035.P9079534284558348140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168582 (n + 1) - (n + 1 : ℤ)

end

end A087035.P9079534284558348140

namespace A087035

/-- `A168582(n+1)-(n+1)` -/
def P9079534284558348140.Spec : Prop :=
  ∀ n, P9079534284558348140.a n = A087035 n

end A087035

/-! ## A087035.P12226006951018987090

`∑[(n+1)²]-A213398(n)`
-/

namespace A087035.P12226006951018987090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A213398 n

end

end A087035.P12226006951018987090

namespace A087035

/-- `∑[(n+1)²]-A213398(n)` -/
def P12226006951018987090.Spec : Prop :=
  ∀ n, P12226006951018987090.a n = A087035 n

end A087035

/-! ## A087035.P14888695995848927809

`A110654(n)+A051925(n)`
-/

namespace A087035.P14888695995848927809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A051925 n

end

end A087035.P14888695995848927809

namespace A087035

/-- `A110654(n)+A051925(n)` -/
def P14888695995848927809.Spec : Prop :=
  ∀ n, P14888695995848927809.a n = A087035 n

end A087035

/-! ## A087035.P1436141738954085019

`A002413(n)-A036487(n)`
-/

namespace A087035.P1436141738954085019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 n - A036487 n

end

end A087035.P1436141738954085019

namespace A087035

/-- `A002413(n)-A036487(n)` -/
def P1436141738954085019.Spec : Prop :=
  ∀ n, P1436141738954085019.a n = A087035 n

end A087035

/-!
# A087036: Lunar cubes: n*n*n, where * is lunar multiplication.

The programs for A087036, there is no canonical definition to state claims against.
-/

/-! ## A087036.P7578766863962174962

`A008593(A087019(n))-10*n`
-/

namespace A087036.P7578766863962174962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A087019 n).toNat - (10 * n : ℤ)

end

end A087036.P7578766863962174962

/-! ## A087036.P11350943011506296920

`A008593(A087019(n)-n)+n`
-/

namespace A087036.P11350943011506296920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A087019 n - (n : ℤ)).toNat + (n : ℤ)

end

end A087036.P11350943011506296920

/-! ## A087036.P6515654736447942708

`A017401(A087019(n))-A017281(n)`
-/

namespace A087036.P6515654736447942708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A087019 n).toNat - A017281 n

end

end A087036.P6515654736447942708

/-! ## A087036.P16701897077881992727

`A017461(A087019(n))-A017341(n)`
-/

namespace A087036.P16701897077881992727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 (A087019 n).toNat - A017341 n

end

end A087036.P16701897077881992727

/-! ## A087036.P5916704126047654537

`A017401(A087019(n))+n-A017401(n)`
-/

namespace A087036.P5916704126047654537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A087019 n).toNat + ((n : ℤ) - A017401 n)

end

end A087036.P5916704126047654537

/-!
# A087038: Smallest integer x > 1 such that x^x + n is prime, or 0 if no such x exists.

The programs for A087038, there is no canonical definition to state claims against.
-/

/-! ## A087038.P1314498517840138616

`n*(54*a(n-2)+3)` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A087038.P1314498517840138616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3] fun n a =>
  n * (54 * a (n - 2) + 3)

end

end A087038.P1314498517840138616

/-!
# A087039: If n is prime then 1 else 2nd largest prime factor of n.

The programs for A087039, the canonical program `A087039.P14824364840686743514` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087039 has offset 1).

The definition of A087039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087039.P14824364840686743514

`A006530(A052126(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A087039

/-- `A006530(A052126(n+1))` -/
def P14824364840686743514.Spec : Prop :=
  ∀ n, P14824364840686743514.a n = A087039 (n + 1)

theorem P14824364840686743514.correct : P14824364840686743514.Spec := by
  intro n
  simp only [A087039, Nat.add_sub_cancel]

end A087039

/-! ## A087039.P1628398837924156193

`A006530((n+1)/A006530(n+1))`
-/

namespace A087039.P1628398837924156193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A087039.P1628398837924156193

namespace A087039

/-- `A006530((n+1)/A006530(n+1))` -/
def P1628398837924156193.Spec : Prop :=
  ∀ n, P1628398837924156193.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P13520537327080861989

`A085392(A130065(n+1))`
-/

namespace A087039.P13520537327080861989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A130065 (n + 1)).toNat

end

end A087039.P13520537327080861989

namespace A087039

/-- `A085392(A130065(n+1))` -/
def P13520537327080861989.Spec : Prop :=
  ∀ n, P13520537327080861989.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P3840147323634243185

`A006530(A322820(n+1))`
-/

namespace A087039.P3840147323634243185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A322820 (n + 1)).toNat

end

end A087039.P3840147323634243185

namespace A087039

/-- `A006530(A322820(n+1))` -/
def P3840147323634243185.Spec : Prop :=
  ∀ n, P3840147323634243185.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P10489279752715528756

`A076820(A253550(n+1))`
-/

namespace A087039.P10489279752715528756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A253550 (n + 1)).toNat

end

end A087039.P10489279752715528756

namespace A087039

/-- `A076820(A253550(n+1))` -/
def P10489279752715528756.Spec : Prop :=
  ∀ n, P10489279752715528756.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P3805574124129704948

`A006530(A329888(n+1))`
-/

namespace A087039.P3805574124129704948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329888 (n + 1)).toNat

end

end A087039.P3805574124129704948

namespace A087039

/-- `A006530(A329888(n+1))` -/
def P3805574124129704948.Spec : Prop :=
  ∀ n, P3805574124129704948.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P13303284581791354810

`A006530(A338669(n+1))`
-/

namespace A087039.P13303284581791354810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338669 (n + 1)).toNat

end

end A087039.P13303284581791354810

namespace A087039

/-- `A006530(A338669(n+1))` -/
def P13303284581791354810.Spec : Prop :=
  ∀ n, P13303284581791354810.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P11781096088588000531

`A085392(A329888(n+1)²)`
-/

namespace A087039.P11781096088588000531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A329888 (n + 1) ^ 2).toNat

end

end A087039.P11781096088588000531

namespace A087039

/-- `A085392(A329888(n+1)²)` -/
def P11781096088588000531.Spec : Prop :=
  ∀ n, P11781096088588000531.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P8065346327773143875

`A189172(A329888(n+1)²)`
-/

namespace A087039.P8065346327773143875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189172 (A329888 (n + 1) ^ 2).toNat

end

end A087039.P8065346327773143875

namespace A087039

/-- `A189172(A329888(n+1)²)` -/
def P8065346327773143875.Spec : Prop :=
  ∀ n, P8065346327773143875.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P10923208051790194431

`A217581(A329888(n+1)²)`
-/

namespace A087039.P10923208051790194431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A329888 (n + 1) ^ 2).toNat

end

end A087039.P10923208051790194431

namespace A087039

/-- `A217581(A329888(n+1)²)` -/
def P10923208051790194431.Spec : Prop :=
  ∀ n, P10923208051790194431.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P16060890153020988070

`A085392(2*A052126(n+1))`
-/

namespace A087039.P16060890153020988070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A052126 (n + 1)).toNat

end

end A087039.P16060890153020988070

namespace A087039

/-- `A085392(2*A052126(n+1))` -/
def P16060890153020988070.Spec : Prop :=
  ∀ n, P16060890153020988070.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P10689406812822906311

`A085392(2*A329888(n+1))`
-/

namespace A087039.P10689406812822906311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A329888 (n + 1)).toNat

end

end A087039.P10689406812822906311

namespace A087039

/-- `A085392(2*A329888(n+1))` -/
def P10689406812822906311.Spec : Prop :=
  ∀ n, P10689406812822906311.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P10236761393020932803

`A053585(∏{p}[A052126(n+1), #])`
-/

namespace A087039.P10236761393020932803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A087039.P10236761393020932803

namespace A087039

/-- `A053585(∏{p}[A052126(n+1), #])` -/
def P10236761393020932803.Spec : Prop :=
  ∀ n, P10236761393020932803.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P1830519773129540920

`A006530(1-A171462(n+1)+n)`
-/

namespace A087039.P1830519773129540920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - A171462 (n + 1) + (n : ℤ)).toNat

end

end A087039.P1830519773129540920

namespace A087039

/-- `A006530(1-A171462(n+1)+n)` -/
def P1830519773129540920.Spec : Prop :=
  ∀ n, P1830519773129540920.a n = A087039 (n + 1)

theorem P1830519773129540920.correct : P1830519773129540920.Spec := by
  intro n
  simp only [A087039, Nat.add_sub_cancel, A087039.P1830519773129540920.a, A087039.P14824364840686743514.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087039

/-! ## A087039.P12807877699831946627

`A006530(A335876(n+1)-(n+1))`
-/

namespace A087039.P12807877699831946627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A335876 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087039.P12807877699831946627

namespace A087039

/-- `A006530(A335876(n+1)-(n+1))` -/
def P12807877699831946627.Spec : Prop :=
  ∀ n, P12807877699831946627.a n = A087039 (n + 1)

theorem P12807877699831946627.correct : P12807877699831946627.Spec := by
  intro n
  simp only [A087039, Nat.add_sub_cancel, A087039.P12807877699831946627.a, A087039.P14824364840686743514.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A335876, A335876.P3249295182234954832.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087039

/-! ## A087039.P5527952068963567786

`A006530(A269304(n+1)-(n+2))`
-/

namespace A087039.P5527952068963567786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A269304 (n + 1) - (n + 2 : ℤ)).toNat

end

end A087039.P5527952068963567786

namespace A087039

/-- `A006530(A269304(n+1)-(n+2))` -/
def P5527952068963567786.Spec : Prop :=
  ∀ n, P5527952068963567786.a n = A087039 (n + 1)

theorem P5527952068963567786.correct : P5527952068963567786.Spec := by
  intro n
  simp only [A087039, Nat.add_sub_cancel, A087039.P5527952068963567786.a, A087039.P14824364840686743514.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A269304, A269304.P13577493983909923936.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A087039

/-! ## A087039.P14350525379383599553

`A322820(n+1)/A052126(n+1)`
-/

namespace A087039.P14350525379383599553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322820 (n + 1) : ℚ) / (A052126 (n + 1) : ℚ)

end

end A087039.P14350525379383599553

namespace A087039

/-- `A322820(n+1)/A052126(n+1)` -/
def P14350525379383599553.Spec : Prop :=
  ∀ n, P14350525379383599553.a n = (A087039 (n + 1) : ℚ)

end A087039

/-! ## A087039.P10147856180890907240

`A325133(A117366(A052126(n+1))²)`
-/

namespace A087039.P10147856180890907240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325133 (A117366 (A052126 (n + 1)).toNat ^ 2).toNat

end

end A087039.P10147856180890907240

namespace A087039

/-- `A325133(A117366(A052126(n+1))²)` -/
def P10147856180890907240.Spec : Prop :=
  ∀ n, P10147856180890907240.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P2417000507648925212

`A085392(A052126(n+1)+A052126(n+1))`
-/

namespace A087039.P2417000507648925212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A052126 (n + 1) + A052126 (n + 1)).toNat

end

end A087039.P2417000507648925212

namespace A087039

/-- `A085392(A052126(n+1)+A052126(n+1))` -/
def P2417000507648925212.Spec : Prop :=
  ∀ n, P2417000507648925212.a n = A087039 (n + 1)

end A087039

/-! ## A087039.P6280817915048065197

`A033676((n+1)/A052126(A052126(n+1)))`
-/

namespace A087039.P6280817915048065197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (A052126 (n + 1)).toNat : ℚ))).toNat

end

end A087039.P6280817915048065197

namespace A087039

/-- `A033676((n+1)/A052126(A052126(n+1)))` -/
def P6280817915048065197.Spec : Prop :=
  ∀ n, P6280817915048065197.a n = A087039 (n + 1)

end A087039

/-!
# A087040: 2nd largest prime factor of n-th composite number.

The programs for A087040, the canonical program `A087040.P1876591877341654896` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087040 has offset 1).

The definition of A087040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087040.P13083171945125862159

`A006530(A161003(n+1))`
-/

namespace A087040.P13083171945125862159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A161003 (n + 1)).toNat

end

end A087040.P13083171945125862159

namespace A087040

/-- `A006530(A161003(n+1))` -/
def P13083171945125862159.Spec : Prop :=
  ∀ n, P13083171945125862159.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P3032443874584773305

`p?[A006530(A329888(n+1))]`
-/

namespace A087040.P3032443874584773305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087040.P3032443874584773305

namespace A087040

/-- `p?[A006530(A329888(n+1))]` -/
def P3032443874584773305.Spec : Prop :=
  ∀ n, P3032443874584773305.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P8829476145204778838

`A006530(A329888(A002808(n+1))²)`
-/

namespace A087040.P8829476145204778838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A329888 (A002808 (n + 1)).toNat ^ 2).toNat

end

end A087040.P8829476145204778838

namespace A087040

/-- `A006530(A329888(A002808(n+1))²)` -/
def P8829476145204778838.Spec : Prop :=
  ∀ n, P8829476145204778838.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P1876591877341654896

`A006530(A002808(n+1)/A052369(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A087040

/-- `A006530(A002808(n+1)/A052369(n+1))` -/
def P1876591877341654896.Spec : Prop :=
  ∀ n, P1876591877341654896.a n = A087040 (n + 1)

theorem P1876591877341654896.correct : P1876591877341654896.Spec := by
  intro n
  simp only [A087040, Nat.add_sub_cancel]

end A087040

/-! ## A087040.P8708792317429392824

`p?[A087039(n+1)]`
-/

namespace A087040.P8708792317429392824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087040.P8708792317429392824

namespace A087040

/-- `p?[A087039(n+1)]` -/
def P8708792317429392824.Spec : Prop :=
  ∀ n, P8708792317429392824.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P6892359777382112721

`A087039(Δ[A053767(n)])`
-/

namespace A087040.P6892359777382112721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (f1 (n + 1) - f1 n).toNat

end

end A087040.P6892359777382112721

namespace A087040

/-- `A087039(Δ[A053767(n)])` -/
def P6892359777382112721.Spec : Prop :=
  ∀ n, P6892359777382112721.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P2647977619510567126

`A087039(A002808(n+1))`
-/

namespace A087040.P2647977619510567126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A002808 (n + 1)).toNat

end

end A087040.P2647977619510567126

namespace A087040

/-- `A087039(A002808(n+1))` -/
def P2647977619510567126.Spec : Prop :=
  ∀ n, P2647977619510567126.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P7900458021966021593

`A087039(A018252(n+2))`
-/

namespace A087040.P7900458021966021593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A018252 (n + 2)).toNat

end

end A087040.P7900458021966021593

namespace A087040

/-- `A087039(A018252(n+2))` -/
def P7900458021966021593.Spec : Prop :=
  ∀ n, P7900458021966021593.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P9845038010250729507

`p?[A085392(A130065(n+1))]`
-/

namespace A087040.P9845038010250729507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A130065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087040.P9845038010250729507

namespace A087040

/-- `p?[A085392(A130065(n+1))]` -/
def P9845038010250729507.Spec : Prop :=
  ∀ n, P9845038010250729507.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P17372480255863294635

`p?[A076820(A253550(n+1))]`
-/

namespace A087040.P17372480255863294635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A253550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087040.P17372480255863294635

namespace A087040

/-- `p?[A076820(A253550(n+1))]` -/
def P17372480255863294635.Spec : Prop :=
  ∀ n, P17372480255863294635.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P6671414669473974833

`A087039(A282671(n+1)/2)`
-/

namespace A087040.P6671414669473974833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A087040.P6671414669473974833

namespace A087040

/-- `A087039(A282671(n+1)/2)` -/
def P6671414669473974833.Spec : Prop :=
  ∀ n, P6671414669473974833.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P17308330647902141209

`A087039(A139270(n+2)/2)`
-/

namespace A087040.P17308330647902141209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (SequenceMachineLib.roundAway ((A139270 (n + 2) : ℚ) / 2)).toNat

end

end A087040.P17308330647902141209

namespace A087040

/-- `A087039(A139270(n+2)/2)` -/
def P17308330647902141209.Spec : Prop :=
  ∀ n, P17308330647902141209.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P2684479944155865502

`filter[A087039(n+1), A010051(#)]`
-/

namespace A087040.P2684479944155865502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A087040.P2684479944155865502

namespace A087040

/-- `filter[A087039(n+1), A010051(#)]` -/
def P2684479944155865502.Spec : Prop :=
  ∀ n, P2684479944155865502.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P10006801030482810550

`filter[A087039(n+1), A014306(#)]`
-/

namespace A087040.P10006801030482810550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A087040.P10006801030482810550

namespace A087040

/-- `filter[A087039(n+1), A014306(#)]` -/
def P10006801030482810550.Spec : Prop :=
  ∀ n, P10006801030482810550.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P4254469754010588847

`filter[A087039(n+1), A049240(#)]`
-/

namespace A087040.P4254469754010588847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A087040.P4254469754010588847

namespace A087040

/-- `filter[A087039(n+1), A049240(#)]` -/
def P4254469754010588847.Spec : Prop :=
  ∀ n, P4254469754010588847.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P17376803309405033619

`filter[A087039(n+1), A053867(#)]`
-/

namespace A087040.P17376803309405033619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A087040.P17376803309405033619

namespace A087040

/-- `filter[A087039(n+1), A053867(#)]` -/
def P17376803309405033619.Spec : Prop :=
  ∀ n, P17376803309405033619.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P12489476298822740303

`filter[A087039(n+1), A066829(#)]`
-/

namespace A087040.P12489476298822740303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A087040.P12489476298822740303

namespace A087040

/-- `filter[A087039(n+1), A066829(#)]` -/
def P12489476298822740303.Spec : Prop :=
  ∀ n, P12489476298822740303.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P10941194880978363253

`filter[A087039(n+1), A069513(#)]`
-/

namespace A087040.P10941194880978363253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A087040.P10941194880978363253

namespace A087040

/-- `filter[A087039(n+1), A069513(#)]` -/
def P10941194880978363253.Spec : Prop :=
  ∀ n, P10941194880978363253.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P17011602169899200821

`filter[A087039(n+1), A092248(#)]`
-/

namespace A087040.P17011602169899200821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092248 (f1 j).toNat = 1) n)

end

end A087040.P17011602169899200821

namespace A087040

/-- `filter[A087039(n+1), A092248(#)]` -/
def P17011602169899200821.Spec : Prop :=
  ∀ n, P17011602169899200821.a n = A087040 (n + 1)

end A087040

/-! ## A087040.P12410503844275316831

`filter[A087039(n+1), A099104(#)]`
-/

namespace A087040.P12410503844275316831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A087040.P12410503844275316831

namespace A087040

/-- `filter[A087039(n+1), A099104(#)]` -/
def P12410503844275316831.Spec : Prop :=
  ∀ n, P12410503844275316831.a n = A087040 (n + 1)

end A087040

/-!
# A087045: Indices k where A057176(k) = 1.

The programs for A087045, there is no canonical definition to state claims against.
-/

/-! ## A087045.P17846967909078705717

`eq[log2(A057176(n)), A000007(n)]`
-/

namespace A087045.P17846967909078705717
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057176 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A087045.P17846967909078705717

/-! ## A087045.P15089124826421118772

`eq[log2(A057176(n)), A000038(n)]`
-/

namespace A087045.P15089124826421118772
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057176 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A087045.P15089124826421118772

/-! ## A087045.P13232505224507079495

`eq[A001221(A008578(n+1)), A057176(n)]`
-/

namespace A087045.P13232505224507079495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087045.P13232505224507079495

/-!
# A087046: Algebraic order of r_n, the value of r in the logistic map that corresponding to the onset of the period 2^n-cycle.

The programs for A087046, there is no canonical definition to state claims against.
-/

/-! ## A087046.P2777731412897278747

`Δ[a(n-1)²]` with `a(0)=1, a(1)=2`
-/

namespace A087046.P2777731412897278747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A087046.P2777731412897278747

/-! ## A087046.P4082471044303756714

`Δ[2^record[and(n, -n)]]`
-/

namespace A087046.P4082471044303756714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087046.P4082471044303756714

/-! ## A087046.P3699143301370439698

`Δ[a(n-1)^2]` with `a(0)=1, a(1)=2`
-/

namespace A087046.P3699143301370439698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A087046.P3699143301370439698

/-! ## A087046.P17123525231896756698

`Δ[2^floor(2^(n-1))]`
-/

namespace A087046.P17123525231896756698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087046.P17123525231896756698

/-! ## A087046.P4286598207323801264

`record[A268230(n)]`
-/

namespace A087046.P4286598207323801264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087046.P4286598207323801264

/-!
# A087047: a(n) = n*(n+1)*(n+2)*a(n-1)/6 for n >= 1; a(0) = 1.

The programs for A087047, the canonical program `A087047.P8442457275124294248` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087047 has offset 0).

The definition of A087047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087047.P8442457275124294248

`n*(n+1)*(n+2)*a(n-1)/6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087047

/-- `n*(n+1)*(n+2)*a(n-1)/6` -/
def P8442457275124294248.Spec : Prop :=
  ∀ n, P8442457275124294248.a n = (A087047 n : ℚ)

end A087047

/-! ## A087047.P13980603290171714347

`∏[C(n+2, 3%n!)]`
-/

namespace A087047.P13980603290171714347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (3 % Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087047.P13980603290171714347

namespace A087047

/-- `∏[C(n+2, 3%n!)]` -/
def P13980603290171714347.Spec : Prop :=
  ∀ n, (P13980603290171714347.a n : ℤ) = A087047 n

end A087047

/-! ## A087047.P2938363040670199678

`a(n-1)*∑[∑[n]]` with `a(0)=1`
-/

namespace A087047.P2938363040670199678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087047.P2938363040670199678

namespace A087047

/-- `a(n-1)*∑[∑[n]]` -/
def P2938363040670199678.Spec : Prop :=
  ∀ n, (P2938363040670199678.a n : ℤ) = A087047 n

end A087047

/-! ## A087047.P18025982605160325675

`∏[∑[n]+a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A087047.P18025982605160325675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A087047.P18025982605160325675

namespace A087047

/-- `∏[∑[n]+a(n-1)]` -/
def P18025982605160325675.Spec : Prop :=
  ∀ n, (P18025982605160325675.a n : ℤ) = A087047 n

end A087047

/-! ## A087047.P2000034115371949352

`C(n+2, 3)*a(n-1)` with `a(0)=1`
-/

namespace A087047.P2000034115371949352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (n + 2) 3 * a (n - 1)

end

end A087047.P2000034115371949352

namespace A087047

/-- `C(n+2, 3)*a(n-1)` -/
def P2000034115371949352.Spec : Prop :=
  ∀ n, (P2000034115371949352.a n : ℤ) = A087047 n

end A087047

/-!
# A087048: Class number of indefinite quadratic forms over the integers in two variables with discriminant D = D(n) = A079896(n), n>=1.

The programs for A087048, there is no canonical definition to state claims against.
-/

/-! ## A087048.P1619940744865659312

`A391440(n+1)%A136682(A113886(n))`
-/

namespace A087048.P1619940744865659312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391440 (n + 1)) (A136682 (A113886 n).toNat)

end

end A087048.P1619940744865659312

/-! ## A087048.P7914555634984137084

`A391440(n+1)+A319448(A374532(n+2))`
-/

namespace A087048.P7914555634984137084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391440 (n + 1) + A319448 (A374532 (n + 2)).toNat

end

end A087048.P7914555634984137084

/-! ## A087048.P3368225032121689873

`gcd(A000118(A196373(n+1)), A391440(n+1))`
-/

namespace A087048.P3368225032121689873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000118 (A196373 (n + 1)).toNat) (A391440 (n + 1))

end

end A087048.P3368225032121689873

/-! ## A087048.P7878019572215293084

`A391440(n+1)+A022328(A022330(2*n+1))`
-/

namespace A087048.P7878019572215293084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391440 (n + 1) + A022328 (A022330 (2 * n + 1)).toNat

end

end A087048.P7878019572215293084

/-! ## A087048.P16374971446337370248

`A391440(n+1)+A061397(A049451(n+3))`
-/

namespace A087048.P16374971446337370248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391440 (n + 1) + A061397 (A049451 (n + 3)).toNat

end

end A087048.P16374971446337370248

/-! ## A087048.P10683455846612007509

`A046523(A156829(n+1))^A391441(n+1)`
-/

namespace A087048.P10683455846612007509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (A156829 (n + 1)).toNat : ℚ) ^ (A391441 (n + 1) : ℤ)

end

end A087048.P10683455846612007509

/-! ## A087048.P11121456703936953794

`and(A045535(n), A391440(n+1))`
-/

namespace A087048.P11121456703936953794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A391440 (n + 1))

end

end A087048.P11121456703936953794

/-! ## A087048.P1808349155095497768

`and(A141311(n+1), A391440(n+1))`
-/

namespace A087048.P1808349155095497768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A391440 (n + 1))

end

end A087048.P1808349155095497768

/-! ## A087048.P5077126730047893361

`and(A168612(n+1), A391440(n+1))`
-/

namespace A087048.P5077126730047893361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A168612 (n + 1)) (A391440 (n + 1))

end

end A087048.P5077126730047893361

/-! ## A087048.P6897878702871430443

`and(A176500(n+1), A391440(n+1))`
-/

namespace A087048.P6897878702871430443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176500 (n + 1)) (A391440 (n + 1))

end

end A087048.P6897878702871430443

/-!
# A087049: Characteristic sequence for numbers n>=0 that are either squares or have a square > 1 as factor.

The programs for A087049, the canonical program `A087049.P15788393958415365993` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087049 has offset 0).

The definition of A087049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087049.P5945136249438478181

`char[comp[record[∏{p}[n+2, #]]]]`
-/

namespace A087049.P5945136249438478181
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A087049.P5945136249438478181

namespace A087049

/-- `char[comp[record[∏{p}[n+2, #]]]]` -/
def P5945136249438478181.Spec : Prop :=
  ∀ n, (P5945136249438478181.a n : ℤ) = A087049 n

end A087049

/-! ## A087049.P15788393958415365993

`round((n-2)/(∏{p}[n, #]+n-3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087049

/-- `round((n-2)/(∏{p}[n, #]+n-3))` -/
def P15788393958415365993.Spec : Prop :=
  ∀ n, P15788393958415365993.a n = A087049 n

theorem P15788393958415365993.correct : P15788393958415365993.Spec := by
  intro n
  simp only [A087049]

end A087049

/-! ## A087049.P12969822016536916948

`char[1]+char[A105570(n)]`
-/

namespace A087049.P12969822016536916948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A087049.P12969822016536916948

namespace A087049

/-- `char[1]+char[A105570(n)]` -/
def P12969822016536916948.Spec : Prop :=
  ∀ n, (P12969822016536916948.a n : ℤ) = A087049 n

end A087049

/-! ## A087049.P1420328762700601242

`char[comp[A005117(n+2)]]`
-/

namespace A087049.P1420328762700601242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A087049.P1420328762700601242

namespace A087049

/-- `char[comp[A005117(n+2)]]` -/
def P1420328762700601242.Spec : Prop :=
  ∀ n, (P1420328762700601242.a n : ℤ) = A087049 n

end A087049

/-! ## A087049.P11913203774027979478

`char[comp[A007947(n+2)]]`
-/

namespace A087049.P11913203774027979478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A087049.P11913203774027979478

namespace A087049

/-- `char[comp[A007947(n+2)]]` -/
def P11913203774027979478.Spec : Prop :=
  ∀ n, (P11913203774027979478.a n : ℤ) = A087049 n

end A087049

/-! ## A087049.P8803785059200068739

`1-a(A007424(n))` with `a(0)=1, a(1)=1`
-/

namespace A087049.P8803785059200068739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A007424 n).toNat

end

end A087049.P8803785059200068739

namespace A087049

/-- `1-a(A007424(n))` -/
def P8803785059200068739.Spec : Prop :=
  ∀ n, P8803785059200068739.a n = A087049 n

end A087049

/-! ## A087049.P10740611107937645164

`1-a(A071773(n))` with `a(0)=1, a(1)=1`
-/

namespace A087049.P10740611107937645164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A071773 n).toNat

end

end A087049.P10740611107937645164

namespace A087049

/-- `1-a(A071773(n))` -/
def P10740611107937645164.Spec : Prop :=
  ∀ n, P10740611107937645164.a n = A087049 n

end A087049

/-! ## A087049.P8728329158120685597

`1-char[A144338(n+1)]`
-/

namespace A087049.P8728329158120685597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087049.P8728329158120685597

namespace A087049

/-- `1-char[A144338(n+1)]` -/
def P8728329158120685597.Spec : Prop :=
  ∀ n, P8728329158120685597.a n = A087049 n

end A087049

/-! ## A087049.P13767887539052565925

`1-char[A067535(n+2)]`
-/

namespace A087049.P13767887539052565925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087049.P13767887539052565925

namespace A087049

/-- `1-char[A067535(n+2)]` -/
def P13767887539052565925.Spec : Prop :=
  ∀ n, P13767887539052565925.a n = A087049 n

end A087049

/-! ## A087049.P10941570226904571657

`A008966(A088609(A063524(n+1)+n))`
-/

namespace A087049.P10941570226904571657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A088609 (A063524 (n + 1) + (n : ℤ)).toNat).toNat

end

end A087049.P10941570226904571657

namespace A087049

/-- `A008966(A088609(A063524(n+1)+n))` -/
def P10941570226904571657.Spec : Prop :=
  ∀ n, P10941570226904571657.a n = A087049 n

end A087049

/-! ## A087049.P15402346587760586116

`1-char[A076043(n)]`
-/

namespace A087049.P15402346587760586116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076043 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087049.P15402346587760586116

namespace A087049

/-- `1-char[A076043(n)]` -/
def P15402346587760586116.Spec : Prop :=
  ∀ n, P15402346587760586116.a n = A087049 n

end A087049

/-! ## A087049.P14269231560694816890

`1-char[A002734(n+1)]`
-/

namespace A087049.P14269231560694816890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087049.P14269231560694816890

namespace A087049

/-- `1-char[A002734(n+1)]` -/
def P14269231560694816890.Spec : Prop :=
  ∀ n, P14269231560694816890.a n = A087049 n

end A087049

/-! ## A087049.P5634245571866813220

`1-char[∏{p}[n+2, #]]`
-/

namespace A087049.P5634245571866813220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087049.P5634245571866813220

namespace A087049

/-- `1-char[∏{p}[n+2, #]]` -/
def P5634245571866813220.Spec : Prop :=
  ∀ n, P5634245571866813220.a n = A087049 n

end A087049

/-! ## A087049.P17217448673065755161

`xor(1, char[∏{p}[n+2, #]])`
-/

namespace A087049.P17217448673065755161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A087049.P17217448673065755161

namespace A087049

/-- `xor(1, char[∏{p}[n+2, #]])` -/
def P17217448673065755161.Spec : Prop :=
  ∀ n, (P17217448673065755161.a n : ℤ) = A087049 n

end A087049

/-! ## A087049.P11155509043480946333

`floor(cos(char[∏{p}[n+2, #]]))`
-/

namespace A087049.P11155509043480946333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A087049.P11155509043480946333

namespace A087049

/-- `floor(cos(char[∏{p}[n+2, #]]))` -/
def P11155509043480946333.Spec : Prop :=
  ∀ n, P11155509043480946333.a n = A087049 n

end A087049

/-! ## A087049.P11134421499444855956

`floor(acos(char[∏{p}[n+2, #]]))`
-/

namespace A087049.P11134421499444855956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A087049.P11134421499444855956

namespace A087049

/-- `floor(acos(char[∏{p}[n+2, #]]))` -/
def P11134421499444855956.Spec : Prop :=
  ∀ n, P11134421499444855956.a n = A087049 n

end A087049

/-! ## A087049.P12443549567899406051

`floor(acot(char[∏{p}[n+2, #]]))`
-/

namespace A087049.P12443549567899406051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A087049.P12443549567899406051

namespace A087049

/-- `floor(acot(char[∏{p}[n+2, #]]))` -/
def P12443549567899406051.Spec : Prop :=
  ∀ n, P12443549567899406051.a n = A087049 n

end A087049

/-! ## A087049.P16715078087785834781

`sin(acos(char[∏{p}[n+2, #]]))`
-/

namespace A087049.P16715078087785834781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A087049.P16715078087785834781

namespace A087049

/-- `sin(acos(char[∏{p}[n+2, #]]))` -/
def P16715078087785834781.Spec : Prop :=
  ∀ n, P16715078087785834781.a n = (A087049 n : ℝ)

end A087049

/-! ## A087049.P1879402885681336069

`cos(asin(char[∏{p}[n+2, #]]))`
-/

namespace A087049.P1879402885681336069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A087049.P1879402885681336069

namespace A087049

/-- `cos(asin(char[∏{p}[n+2, #]]))` -/
def P1879402885681336069.Spec : Prop :=
  ∀ n, P1879402885681336069.a n = (A087049 n : ℝ)

end A087049

/-! ## A087049.P6597960333330243339

`1-char[A079114(n+1)]`
-/

namespace A087049.P6597960333330243339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079114 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A087049.P6597960333330243339

namespace A087049

/-- `1-char[A079114(n+1)]` -/
def P6597960333330243339.Spec : Prop :=
  ∀ n, P6597960333330243339.a n = A087049 n

end A087049

/-!
# A087050: Square root of the largest square >1 dividing the n-th nonsquarefree number.

The programs for A087050, the canonical program `A087050.P17786858087998487882` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087050 has offset 1).

The definition of A087050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A013929, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A087050.P17786858087998487882

`A000188(A013929(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A087050

/-- `A000188(A013929(n+1))` -/
def P17786858087998487882.Spec : Prop :=
  ∀ n, P17786858087998487882.a n = A087050 (n + 1)

theorem P17786858087998487882.correct : P17786858087998487882.Spec := by
  intro n
  simp only [A087050, Nat.add_sub_cancel]

end A087050

/-! ## A087050.P4823809176212644711

`A019554(A084936(n+1))`
-/

namespace A087050.P4823809176212644711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A084936 (n + 1)).toNat

end

end A087050.P4823809176212644711

namespace A087050

/-- `A019554(A084936(n+1))` -/
def P4823809176212644711.Spec : Prop :=
  ∀ n, P4823809176212644711.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P6040517956215863691

`A013929(n+1)/A015049(n+1)`
-/

namespace A087050.P6040517956215863691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A015049 (n + 1) : ℚ)

end

end A087050.P6040517956215863691

namespace A087050

/-- `A013929(n+1)/A015049(n+1)` -/
def P6040517956215863691.Spec : Prop :=
  ∀ n, P6040517956215863691.a n = (A087050 (n + 1) : ℚ)

end A087050

/-! ## A087050.P1540167279110616272

`A292145(n+1)/A019554(A292145(n+1))+1`
-/

namespace A087050.P1540167279110616272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292145 (n + 1) : ℚ) / (A019554 (A292145 (n + 1)).toNat : ℚ) + 1

end

end A087050.P1540167279110616272

namespace A087050

/-- `A292145(n+1)/A019554(A292145(n+1))+1` -/
def P1540167279110616272.Spec : Prop :=
  ∀ n, P1540167279110616272.a n = (A087050 (n + 1) : ℚ)

end A087050

/-! ## A087050.P5460351892950812502

`A000188(A368040(n+1))`
-/

namespace A087050.P5460351892950812502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A368040 (n + 1)).toNat

end

end A087050.P5460351892950812502

namespace A087050

/-- `A000188(A368040(n+1))` -/
def P5460351892950812502.Spec : Prop :=
  ∀ n, P5460351892950812502.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P2932922318589915609

`A000188(A162966(n+2))`
-/

namespace A087050.P2932922318589915609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A162966 (n + 2)).toNat

end

end A087050.P2932922318589915609

namespace A087050

/-- `A000188(A162966(n+2))` -/
def P2932922318589915609.Spec : Prop :=
  ∀ n, P2932922318589915609.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P12614117196155894354

`A000188(eq[1, A249442(n)])`
-/

namespace A087050.P12614117196155894354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087050.P12614117196155894354

namespace A087050

/-- `A000188(eq[1, A249442(n)])` -/
def P12614117196155894354.Spec : Prop :=
  ∀ n, P12614117196155894354.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P970552877749716128

`A000188(eq[0, A008683(n+1)]+1)`
-/

namespace A087050.P970552877749716128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A087050.P970552877749716128

namespace A087050

/-- `A000188(eq[0, A008683(n+1)]+1)` -/
def P970552877749716128.Spec : Prop :=
  ∀ n, P970552877749716128.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P2018368974469086432

`A000188(lt[1, A000188(n+1)]+1)`
-/

namespace A087050.P2018368974469086432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A087050.P2018368974469086432

namespace A087050

/-- `A000188(lt[1, A000188(n+1)]+1)` -/
def P2018368974469086432.Spec : Prop :=
  ∀ n, P2018368974469086432.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P16744760649266700460

`A000188(lt[1, A285718(n+1)])`
-/

namespace A087050.P16744760649266700460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087050.P16744760649266700460

namespace A087050

/-- `A000188(lt[1, A285718(n+1)])` -/
def P16744760649266700460.Spec : Prop :=
  ∀ n, P16744760649266700460.a n = A087050 (n + 1)

end A087050

/-! ## A087050.P10681751048564116188

`A064727(2*2*A013929(n+1))`
-/

namespace A087050.P10681751048564116188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (2 * (2 * A013929 (n + 1))).toNat

end

end A087050.P10681751048564116188

namespace A087050

/-- `A064727(2*2*A013929(n+1))` -/
def P10681751048564116188.Spec : Prop :=
  ∀ n, P10681751048564116188.a n = A087050 (n + 1)

end A087050

/-!
# A087051: Lunar fourth powers: n*n*n*n, where * is lunar multiplication.

The programs for A087051, there is no canonical definition to state claims against.
-/

/-! ## A087051.P9141607847682525155

`A087019(A087019(n))`
-/

namespace A087051.P9141607847682525155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A087019 n).toNat

end

end A087051.P9141607847682525155

/-! ## A087051.P9425753347248058853

`n^4^C(n, 10)`
-/

namespace A087051.P9425753347248058853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 ^ Nat.choose n 10

end

end A087051.P9425753347248058853

/-! ## A087051.P18025999507106331274

`gcd(lt[(n^5)%11, acot(200/2-n)]², ∏{digits}[n, #])`
-/

namespace A087051.P18025999507106331274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 11

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((200 : ℚ) / 2 - (n : ℚ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n ^ 2) ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

end

end A087051.P18025999507106331274

/-! ## A087051.P14135661001257579597

`n^∑[char[10*n]]^(2*∑[xor(1, n)]%(n+1))`
-/

namespace A087051.P14135661001257579597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ (2 * ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)))

end

end A087051.P14135661001257579597

/-! ## A087051.P18090040871529582761

`n^A212389(n)²`
-/

namespace A087051.P18090040871529582761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A212389 n ^ 2 : ℤ)

end

end A087051.P18090040871529582761

/-!
# A087052: Lunar triangular numbers: 0+1+2+3+...+n, where + is lunar addition.

The programs for A087052, the canonical program `A087052.P13356327156949077070` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087052 has offset 0).

The definition of A087052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087052.P13356327156949077070

`10*a(floor(n/10))+9` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087052

/-- `10*a(floor(n/10))+9` -/
def P13356327156949077070.Spec : Prop :=
  ∀ n, (P13356327156949077070.a n : ℤ) = A087052 n

theorem P13356327156949077070.correct : P13356327156949077070.Spec := by
  intro n
  simp only [A087052]

end A087052

/-! ## A087052.P16728205438551567373

`comp[2*n+1-A217657(n+1)]-n`
-/

namespace A087052.P16728205438551567373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A217657 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A087052.P16728205438551567373

namespace A087052

/-- `comp[2*n+1-A217657(n+1)]-n` -/
def P16728205438551567373.Spec : Prop :=
  ∀ n, P16728205438551567373.a n = A087052 n

end A087052

/-! ## A087052.P7059493205830798010

`A217657(A106649(n))+n`
-/

namespace A087052.P7059493205830798010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A106649 n).toNat + (n : ℤ)

end

end A087052.P7059493205830798010

namespace A087052

/-- `A217657(A106649(n))+n` -/
def P7059493205830798010.Spec : Prop :=
  ∀ n, P7059493205830798010.a n = A087052 n

end A087052

/-! ## A087052.P16813093042602205976

`A106649(n-A217657(n))`
-/

namespace A087052.P16813093042602205976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106649 ((n : ℤ) - A217657 n).toNat

end

end A087052.P16813093042602205976

namespace A087052

/-- `A106649(n-A217657(n))` -/
def P16813093042602205976.Spec : Prop :=
  ∀ n, P16813093042602205976.a n = A087052 n

end A087052

/-! ## A087052.P7766719708809832419

`A051885(∑[char[A273737(n)]])`
-/

namespace A087052.P7766719708809832419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273737 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087052.P7766719708809832419

namespace A087052

/-- `A051885(∑[char[A273737(n)]])` -/
def P7766719708809832419.Spec : Prop :=
  ∀ n, P7766719708809832419.a n = A087052 n

end A087052

/-! ## A087052.P17157971751800571359

`A051885(∑[char[A032571(n+1)]])`
-/

namespace A087052.P17157971751800571359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032571 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087052.P17157971751800571359

namespace A087052

/-- `A051885(∑[char[A032571(n+1)]])` -/
def P17157971751800571359.Spec : Prop :=
  ∀ n, P17157971751800571359.a n = A087052 n

end A087052

/-! ## A087052.P12012439678538903701

`A051885(∑[char[A037124(n+1)]])`
-/

namespace A087052.P12012439678538903701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087052.P12012439678538903701

namespace A087052

/-- `A051885(∑[char[A037124(n+1)]])` -/
def P12012439678538903701.Spec : Prop :=
  ∀ n, P12012439678538903701.a n = A087052 n

end A087052

/-! ## A087052.P8642691672190231376

`A051885(∑[char[A051885(n)+1]])`
-/

namespace A087052.P8642691672190231376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087052.P8642691672190231376

namespace A087052

/-- `A051885(∑[char[A051885(n)+1]])` -/
def P8642691672190231376.Spec : Prop :=
  ∀ n, P8642691672190231376.a n = A087052 n

end A087052

/-! ## A087052.P11807050264631476599

`A241158(A017341(n))%(2*n+1)`
-/

namespace A087052.P11807050264631476599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241158 (A017341 n).toNat) (2 * n + 1 : ℤ)

end

end A087052.P11807050264631476599

namespace A087052

/-- `A241158(A017341(n))%(2*n+1)` -/
def P11807050264631476599.Spec : Prop :=
  ∀ n, P11807050264631476599.a n = A087052 n

end A087052

/-! ## A087052.P6190523268426863396

`∑[char[A037124(n+1)]*A136400(n)]`
-/

namespace A087052.P6190523268426863396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087052.P6190523268426863396

namespace A087052

/-- `∑[char[A037124(n+1)]*A136400(n)]` -/
def P6190523268426863396.Spec : Prop :=
  ∀ n, P6190523268426863396.a n = A087052 n

end A087052

/-! ## A087052.P10927460406416836342

`A037124(∑[char[A037124(n+1)]]+1)-1`
-/

namespace A087052.P10927460406416836342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037124 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A087052.P10927460406416836342

namespace A087052

/-- `A037124(∑[char[A037124(n+1)]]+1)-1` -/
def P10927460406416836342.Spec : Prop :=
  ∀ n, P10927460406416836342.a n = A087052 n

end A087052

/-! ## A087052.P8701919108893871089

`∑[A136400(n*A000007(A088116(n)))]`
-/

namespace A087052.P8701919108893871089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 ((n : ℤ) * A000007 (A088116 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087052.P8701919108893871089

namespace A087052

/-- `∑[A136400(n*A000007(A088116(n)))]` -/
def P8701919108893871089.Spec : Prop :=
  ∀ n, P8701919108893871089.a n = A087052 n

end A087052

/-! ## A087052.P13599737345446752179

`A241158(A017341(n)+1)-A017341(n)`
-/

namespace A087052.P13599737345446752179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (A017341 n + 1).toNat - A017341 n

end

end A087052.P13599737345446752179

namespace A087052

/-- `A241158(A017341(n)+1)-A017341(n)` -/
def P13599737345446752179.Spec : Prop :=
  ∀ n, P13599737345446752179.a n = A087052 n

end A087052

/-!
# A087053: Numbers of the form pq + qr + rp where p, q and r are distinct primes, with multiplicity.

The programs for A087053, there is no canonical definition to state claims against.
-/

/-! ## A087053.P369677658800737278

`A003415(A007304(n+1))`
-/

namespace A087053.P369677658800737278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A007304 (n + 1)).toNat

end

end A087053.P369677658800737278

/-! ## A087053.P6092802912389872177

`A003415(eq[6, A160086(n)])`
-/

namespace A087053.P6092802912389872177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087053.P6092802912389872177

/-! ## A087053.P7589255377195740103

`A028236(eq[6, A160086(n)])`
-/

namespace A087053.P7589255377195740103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087053.P7589255377195740103

/-! ## A087053.P18405649727150237643

`A003415(eq[10, A077462(n)])`
-/

namespace A087053.P18405649727150237643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087053.P18405649727150237643

/-! ## A087053.P13946273860416608259

`A003415(eq[13, A074206(n)])`
-/

namespace A087053.P13946273860416608259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087053.P13946273860416608259

/-! ## A087053.P6486231069575685156

`A003415(sqrt(A162143(n+1)))`
-/

namespace A087053.P6486231069575685156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A087053.P6486231069575685156

/-! ## A087053.P18002675073368467266

`A028235(sqrt(A162143(n+1)))`
-/

namespace A087053.P18002675073368467266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A087053.P18002675073368467266

/-! ## A087053.P10632628658997635211

`A028236(sqrt(A162143(n+1)))`
-/

namespace A087053.P10632628658997635211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028236 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A087053.P10632628658997635211

/-! ## A087053.P12014220231113900729

`A095112(sqrt(A162143(n+1)))`
-/

namespace A087053.P12014220231113900729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (SequenceMachineLib.roundAway (Real.sqrt (A162143 (n + 1) : ℝ))).toNat

end

end A087053.P12014220231113900729

/-!
# A087054: Primes of the form pq + qr + rp where p, q and r are distinct primes.

The programs for A087054, there is no canonical definition to state claims against.
-/

/-! ## A087054.P11122417813004106721

`p?[A238397(n+1)]`
-/

namespace A087054.P11122417813004106721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A087054.P11122417813004106721

/-! ## A087054.P14541608544421397565

`filter[A238397(n+1), A010051(#)]`
-/

namespace A087054.P14541608544421397565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A087054.P14541608544421397565

/-! ## A087054.P899503248777788328

`filter[A238397(n+1), A080339(#)]`
-/

namespace A087054.P899503248777788328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A087054.P899503248777788328

/-! ## A087054.P17803748250155957099

`filter[A238397(n+1), A080545(#)]`
-/

namespace A087054.P17803748250155957099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A087054.P17803748250155957099

/-! ## A087054.P10589004356556642229

`filter[A238397(n+1), A171387(#)]`
-/

namespace A087054.P10589004356556642229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A087054.P10589004356556642229

/-! ## A087054.P15556633324904313481

`filter[A238397(n+1), A323152(#)]`
-/

namespace A087054.P15556633324904313481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A087054.P15556633324904313481

/-! ## A087054.P256198474173950419

`filter[A238397(n+1), A323153(#)]`
-/

namespace A087054.P256198474173950419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A087054.P256198474173950419

/-! ## A087054.P16354411828943302511

`filter[A238397(n+1), A327861(#)]`
-/

namespace A087054.P16354411828943302511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A087054.P16354411828943302511

/-! ## A087054.P12934803897556311104

`filter[A238397(n+1), A340371(#)]`
-/

namespace A087054.P12934803897556311104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A087054.P12934803897556311104

/-! ## A087054.P8202416682531279777

`filter[A238397(n+1), A353670(#)]`
-/

namespace A087054.P8202416682531279777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A087054.P8202416682531279777

/-! ## A087054.P3267772973597034730

`filter[A238397(n+1), A365605(#)]`
-/

namespace A087054.P3267772973597034730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365605 (f1 j).toNat = 1) n)

end

end A087054.P3267772973597034730

/-! ## A087054.P15605173293396157662

`filter[A238397(n+1), A365716(#)]`
-/

namespace A087054.P15605173293396157662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A087054.P15605173293396157662

/-! ## A087054.P11690731314440243896

`record[A284695(2*A238397(n+1))]`
-/

namespace A087054.P11690731314440243896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (2 * A238397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087054.P11690731314440243896

/-! ## A087054.P7840806215343917497

`∩[A000040(n+1), A238397(n+1)]`
-/

namespace A087054.P7840806215343917497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P7840806215343917497

/-! ## A087054.P8951898061978707714

`∩[A001751(n+1), A238397(n+1)]`
-/

namespace A087054.P8951898061978707714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P8951898061978707714

/-! ## A087054.P8122759398439107878

`∩[A004139(n+1), A238397(n+1)]`
-/

namespace A087054.P8122759398439107878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P8122759398439107878

/-! ## A087054.P17061979618090563182

`∩[A005180(n+1), A238397(n+1)]`
-/

namespace A087054.P17061979618090563182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P17061979618090563182

/-! ## A087054.P8863906493030188543

`∩[A006005(n+1), A238397(n+1)]`
-/

namespace A087054.P8863906493030188543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P8863906493030188543

/-! ## A087054.P150890602186767651

`∩[A008578(n+1), A238397(n+1)]`
-/

namespace A087054.P150890602186767651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P150890602186767651

/-! ## A087054.P15609546198054569320

`∩[A038550(n+1), A238397(n+1)]`
-/

namespace A087054.P15609546198054569320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087054.P15609546198054569320

/-!
# A087055: Largest square number less than 2*n^2.

The programs for A087055, the canonical program `A087055.P5502001926629276620` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087055 has offset 1).

The definition of A087055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087055.P5502001926629276620

`floor((n+1)*sqrt(2))²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087055

/-- `floor((n+1)*sqrt(2))²` -/
def P5502001926629276620.Spec : Prop :=
  ∀ n, P5502001926629276620.a n = A087055 (n + 1)

theorem P5502001926629276620.correct : P5502001926629276620.Spec := by
  intro n
  simp only [A087055, Nat.add_sub_cancel]

end A087055

/-! ## A087055.P11753191063941057208

`A001951(n+1)^2`
-/

namespace A087055.P11753191063941057208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) ^ 2

end

end A087055.P11753191063941057208

namespace A087055

/-- `A001951(n+1)^2` -/
def P11753191063941057208.Spec : Prop :=
  ∀ n, P11753191063941057208.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P8380867227281768731

`∑[abs(Δ[A001951(n)²])]`
-/

namespace A087055.P8380867227281768731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087055.P8380867227281768731

namespace A087055

/-- `∑[abs(Δ[A001951(n)²])]` -/
def P8380867227281768731.Spec : Prop :=
  ∀ n, P8380867227281768731.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P5763092705454871367

`A286909(n+1)²/4`
-/

namespace A087055.P5763092705454871367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286909 (n + 1) ^ 2 : ℚ) / 4

end

end A087055.P5763092705454871367

namespace A087055

/-- `A286909(n+1)²/4` -/
def P5763092705454871367.Spec : Prop :=
  ∀ n, P5763092705454871367.a n = (A087055 (n + 1) : ℚ)

end A087055

/-! ## A087055.P1522808551193106011

`record[A001951(abs(1-n))²]`
-/

namespace A087055.P1522808551193106011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 |1 - (n : ℤ)|.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087055.P1522808551193106011

namespace A087055

/-- `record[A001951(abs(1-n))²]` -/
def P1522808551193106011.Spec : Prop :=
  ∀ n, P1522808551193106011.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P2291790668172569308

`record[n²^Δ[floor(n/2*sqrt(2))]^3]`
-/

namespace A087055.P2291790668172569308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2 : ℝ) * Real.sqrt (2 : ℝ)⌋

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) ^ ((f2 (n + 1) - f2 n) ^ 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087055.P2291790668172569308

namespace A087055

/-- `record[n²^Δ[floor(n/2*sqrt(2))]^3]` -/
def P2291790668172569308.Spec : Prop :=
  ∀ n, P2291790668172569308.a n = (A087055 (n + 1) : ℚ)

end A087055

/-! ## A087055.P17555274795696819407

`A000290(floor((n+1)*sqrt(2)))`
-/

namespace A087055.P17555274795696819407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A087055.P17555274795696819407

namespace A087055

/-- `A000290(floor((n+1)*sqrt(2)))` -/
def P17555274795696819407.Spec : Prop :=
  ∀ n, P17555274795696819407.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P159714998114440540

`A001105(floor((n+1)*sqrt(2)))/2`
-/

namespace A087055.P159714998114440540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat : ℚ) / 2

end

end A087055.P159714998114440540

namespace A087055

/-- `A001105(floor((n+1)*sqrt(2)))/2` -/
def P159714998114440540.Spec : Prop :=
  ∀ n, P159714998114440540.a n = (A087055 (n + 1) : ℚ)

end A087055

/-! ## A087055.P4160185413435270469

`A001489(floor((n+1)*sqrt(2)))^2`
-/

namespace A087055.P4160185413435270469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat ^ 2

end

end A087055.P4160185413435270469

namespace A087055

/-- `A001489(floor((n+1)*sqrt(2)))^2` -/
def P4160185413435270469.Spec : Prop :=
  ∀ n, P4160185413435270469.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P3270684359157375717

`record[A001951(A056171(n+2))]*A001951(n+1)`
-/

namespace A087055.P3270684359157375717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A056171 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001951 (n + 1)

end

end A087055.P3270684359157375717

namespace A087055

/-- `record[A001951(A056171(n+2))]*A001951(n+1)` -/
def P3270684359157375717.Spec : Prop :=
  ∀ n, P3270684359157375717.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P11130018430159953479

`A028982(A286666(n+1))`
-/

namespace A087055.P11130018430159953479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A286666 (n + 1)).toNat

end

end A087055.P11130018430159953479

namespace A087055

/-- `A028982(A286666(n+1))` -/
def P11130018430159953479.Spec : Prop :=
  ∀ n, P11130018430159953479.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P12442441189204306225

`A028982(A003151(n+1)-1)`
-/

namespace A087055.P12442441189204306225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A003151 (n + 1) - 1).toNat

end

end A087055.P12442441189204306225

namespace A087055

/-- `A028982(A003151(n+1)-1)` -/
def P12442441189204306225.Spec : Prop :=
  ∀ n, P12442441189204306225.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P3486758107567758405

`A028982(A080754(n+1)-2)`
-/

namespace A087055.P3486758107567758405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A080754 (n + 1) - 2).toNat

end

end A087055.P3486758107567758405

namespace A087055

/-- `A028982(A080754(n+1)-2)` -/
def P3486758107567758405.Spec : Prop :=
  ∀ n, P3486758107567758405.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P11070316575027454135

`A028982(A001951(n+1)+n)`
-/

namespace A087055.P11070316575027454135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A001951 (n + 1) + (n : ℤ)).toNat

end

end A087055.P11070316575027454135

namespace A087055

/-- `A028982(A001951(n+1)+n)` -/
def P11070316575027454135.Spec : Prop :=
  ∀ n, P11070316575027454135.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P3152846489859840366

`A028982(A001952(n+1)-(n+2))`
-/

namespace A087055.P3152846489859840366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A001952 (n + 1) - (n + 2 : ℤ)).toNat

end

end A087055.P3152846489859840366

namespace A087055

/-- `A028982(A001952(n+1)-(n+2))` -/
def P3152846489859840366.Spec : Prop :=
  ∀ n, P3152846489859840366.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P3864083605714309015

`A000463(A286909(n+1))`
-/

namespace A087055.P3864083605714309015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A286909 (n + 1)).toNat

end

end A087055.P3864083605714309015

namespace A087055

/-- `A000463(A286909(n+1))` -/
def P3864083605714309015.Spec : Prop :=
  ∀ n, P3864083605714309015.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P15014368748318655336

`A008794(A022842(n+1))`
-/

namespace A087055.P15014368748318655336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A022842 (n + 1)).toNat

end

end A087055.P15014368748318655336

namespace A087055

/-- `A008794(A022842(n+1))` -/
def P15014368748318655336.Spec : Prop :=
  ∀ n, P15014368748318655336.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P10671589013780570929

`A289506(A397466(n+1))`
-/

namespace A087055.P10671589013780570929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A397466 (n + 1)).toNat

end

end A087055.P10671589013780570929

namespace A087055

/-- `A289506(A397466(n+1))` -/
def P10671589013780570929.Spec : Prop :=
  ∀ n, P10671589013780570929.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P11736248127372561434

`A001951(n+1)*A059222(2*(n+1))*A001951(n+1)`
-/

namespace A087055.P11736248127372561434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) * A059222 (2 * (n + 1)) * A001951 (n + 1)

end

end A087055.P11736248127372561434

namespace A087055

/-- `A001951(n+1)*A059222(2*(n+1))*A001951(n+1)` -/
def P11736248127372561434.Spec : Prop :=
  ∀ n, P11736248127372561434.a n = A087055 (n + 1)

end A087055

/-! ## A087055.P1209819423474192212

`A101322(A079311((n+1)²)²)`
-/

namespace A087055.P1209819423474192212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (A079311 ((n + 1) ^ 2) ^ 2).toNat

end

end A087055.P1209819423474192212

namespace A087055

/-- `A101322(A079311((n+1)²)²)` -/
def P1209819423474192212.Spec : Prop :=
  ∀ n, P1209819423474192212.a n = A087055 (n + 1)

end A087055

/-!
# A087056: Difference between 2 * n^2 and the next smaller square number.

The programs for A087056, the canonical program `A087056.P1081791851687746264` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087056 has offset 1).

The definition of A087056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087056.P1081791851687746264

`2*(n+1)²-floor((n+1)*sqrt(2))²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087056

/-- `2*(n+1)²-floor((n+1)*sqrt(2))²` -/
def P1081791851687746264.Spec : Prop :=
  ∀ n, P1081791851687746264.a n = A087056 (n + 1)

theorem P1081791851687746264.correct : P1081791851687746264.Spec := by
  intro n
  simp only [A087056, Nat.add_sub_cancel]

end A087056

/-! ## A087056.P16617455649994183766

`comp[floor(n*sqrt(2))]²%(2*floor((sqrt(2)+1)*(n+1)))`
-/

namespace A087056.P16617455649994183766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ) (2 * ⌊(Real.sqrt (2 : ℝ) + 1) * (n + 1 : ℝ)⌋)

end

end A087056.P16617455649994183766

namespace A087056

/-- `comp[floor(n*sqrt(2))]²%(2*floor((sqrt(2)+1)*(n+1)))` -/
def P16617455649994183766.Spec : Prop :=
  ∀ n, P16617455649994183766.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P15312449607368249557

`∑[4*n+2-Δ[A001951(n)²]]`
-/

namespace A087056.P15312449607368249557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087056.P15312449607368249557

namespace A087056

/-- `∑[4*n+2-Δ[A001951(n)²]]` -/
def P15312449607368249557.Spec : Prop :=
  ∀ n, P15312449607368249557.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P15730694385955949297

`A082532(2*(n+1))/2`
-/

namespace A087056.P15730694385955949297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082532 (2 * (n + 1)) : ℚ) / 2

end

end A087056.P15730694385955949297

namespace A087056

/-- `A082532(2*(n+1))/2` -/
def P15730694385955949297.Spec : Prop :=
  ∀ n, P15730694385955949297.a n = (A087056 (n + 1) : ℚ)

end A087056

/-! ## A087056.P17631485281704464625

`floor(A082532(Δ[n²]+1)/2)`
-/

namespace A087056.P17631485281704464625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082532 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌋

end

end A087056.P17631485281704464625

namespace A087056

/-- `floor(A082532(Δ[n²]+1)/2)` -/
def P17631485281704464625.Spec : Prop :=
  ∀ n, P17631485281704464625.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P1596067511679934890

`A087060(ceil((n+1)*sqrt(2))+n)`
-/

namespace A087056.P1596067511679934890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉ + (n : ℤ)).toNat

end

end A087056.P1596067511679934890

namespace A087056

/-- `A087060(ceil((n+1)*sqrt(2))+n)` -/
def P1596067511679934890.Spec : Prop :=
  ∀ n, P1596067511679934890.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P1352449995051526294

`A087059(A003151(n+1))`
-/

namespace A087056.P1352449995051526294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A003151 (n + 1)).toNat

end

end A087056.P1352449995051526294

namespace A087056

/-- `A087059(A003151(n+1))` -/
def P1352449995051526294.Spec : Prop :=
  ∀ n, P1352449995051526294.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P11646746803324945460

`A087059(A187968(2*(n+1)))`
-/

namespace A087056.P11646746803324945460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A187968 (2 * (n + 1))).toNat

end

end A087056.P11646746803324945460

namespace A087056

/-- `A087059(A187968(2*(n+1)))` -/
def P11646746803324945460.Spec : Prop :=
  ∀ n, P11646746803324945460.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P9702630167614981689

`A087059(A087057(n+1)+n)`
-/

namespace A087056.P9702630167614981689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A087057 (n + 1) + (n : ℤ)).toNat

end

end A087056.P9702630167614981689

namespace A087056

/-- `A087059(A087057(n+1)+n)` -/
def P9702630167614981689.Spec : Prop :=
  ∀ n, P9702630167614981689.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P10362696893971002919

`A087059(A001951(n+1)+n+1)`
-/

namespace A087056.P10362696893971002919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A001951 (n + 1) + (n + 1 : ℤ)).toNat

end

end A087056.P10362696893971002919

namespace A087056

/-- `A087059(A001951(n+1)+n+1)` -/
def P10362696893971002919.Spec : Prop :=
  ∀ n, P10362696893971002919.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P11108800502637880479

`A087059(A001952(n+1)-(n+1))`
-/

namespace A087056.P11108800502637880479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A001952 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087056.P11108800502637880479

namespace A087056

/-- `A087059(A001952(n+1)-(n+1))` -/
def P11108800502637880479.Spec : Prop :=
  ∀ n, P11108800502637880479.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P15098002623183437922

`A082532(comp[floor(n*sqrt(2))])`
-/

namespace A087056.P15098002623183437922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087056.P15098002623183437922

namespace A087056

/-- `A082532(comp[floor(n*sqrt(2))])` -/
def P15098002623183437922.Spec : Prop :=
  ∀ n, P15098002623183437922.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P15358106607136290706

`A087059(A097508(A001952(n+1))+n+1)`
-/

namespace A087056.P15358106607136290706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A097508 (A001952 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A087056.P15358106607136290706

namespace A087056

/-- `A087059(A097508(A001952(n+1))+n+1)` -/
def P15358106607136290706.Spec : Prop :=
  ∀ n, P15358106607136290706.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P4720531647640134112

`A008619(A082532(2*(n+1))-1)`
-/

namespace A087056.P4720531647640134112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A082532 (2 * (n + 1)) - 1).toNat

end

end A087056.P4720531647640134112

namespace A087056

/-- `A008619(A082532(2*(n+1))-1)` -/
def P4720531647640134112.Spec : Prop :=
  ∀ n, P4720531647640134112.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P14450887694189723249

`A087060(A187971(2*(n+1)))/2`
-/

namespace A087056.P14450887694189723249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087060 (A187971 (2 * (n + 1))).toNat : ℚ) / 2

end

end A087056.P14450887694189723249

namespace A087056

/-- `A087060(A187971(2*(n+1)))/2` -/
def P14450887694189723249.Spec : Prop :=
  ∀ n, P14450887694189723249.a n = (A087056 (n + 1) : ℚ)

end A087056

/-! ## A087056.P2459006951514433067

`A002265(2*A082532(2*(n+1)))`
-/

namespace A087056.P2459006951514433067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A082532 (2 * (n + 1))).toNat

end

end A087056.P2459006951514433067

namespace A087056

/-- `A002265(2*A082532(2*(n+1)))` -/
def P2459006951514433067.Spec : Prop :=
  ∀ n, P2459006951514433067.a n = A087056 (n + 1)

end A087056

/-! ## A087056.P11322125884551023945

`A087059(A187975(n+1))`
-/

namespace A087056.P11322125884551023945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A187975 (n + 1)).toNat

end

end A087056.P11322125884551023945

namespace A087056

/-- `A087059(A187975(n+1))` -/
def P11322125884551023945.Spec : Prop :=
  ∀ n, P11322125884551023945.a n = A087056 (n + 1)

end A087056

/-!
# A087057: Smallest number whose square is larger than 2*n^2.

The programs for A087057, the canonical program `A087057.P10783454772756123077` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087057 has offset 1).

The definition of A087057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087057.P10783454772756123077

`ceil((n+1)*sqrt(2))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087057

/-- `ceil((n+1)*sqrt(2))` -/
def P10783454772756123077.Spec : Prop :=
  ∀ n, P10783454772756123077.a n = A087057 (n + 1)

theorem P10783454772756123077.correct : P10783454772756123077.Spec := by
  intro n
  simp only [A087057, Nat.add_sub_cancel]

end A087057

/-! ## A087057.P4130793975963582640

`sqrt(A087058(n+1))`
-/

namespace A087057.P4130793975963582640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087058 (n + 1) : ℝ)

end

end A087057.P4130793975963582640

namespace A087057

/-- `sqrt(A087058(n+1))` -/
def P4130793975963582640.Spec : Prop :=
  ∀ n, P4130793975963582640.a n = (A087057 (n + 1) : ℝ)

end A087057

/-! ## A087057.P263132037132555586

`or(floor((n+1)*sqrt(2))+1, char[1])`
-/

namespace A087057.P263132037132555586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A087057.P263132037132555586

namespace A087057

/-- `or(floor((n+1)*sqrt(2))+1, char[1])` -/
def P263132037132555586.Spec : Prop :=
  ∀ n, P263132037132555586.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P6011304607106600323

`Δ[floor(n*sqrt(2))]+a(n-1)` with `a(0)=2`
-/

namespace A087057.P6011304607106600323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A087057.P6011304607106600323

namespace A087057

/-- `Δ[floor(n*sqrt(2))]+a(n-1)` -/
def P6011304607106600323.Spec : Prop :=
  ∀ n, P6011304607106600323.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P11020807264446201092

`comp[floor(n*sqrt(2))]-record[n^(n%2)]`
-/

namespace A087057.P11020807264446201092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A087057.P11020807264446201092

namespace A087057

/-- `comp[floor(n*sqrt(2))]-record[n^(n%2)]` -/
def P11020807264446201092.Spec : Prop :=
  ∀ n, P11020807264446201092.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P5649404668357122586

`∑[A097509(n)-1]`
-/

namespace A087057.P5649404668357122586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087057.P5649404668357122586

namespace A087057

/-- `∑[A097509(n)-1]` -/
def P5649404668357122586.Spec : Prop :=
  ∀ n, P5649404668357122586.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P6735796626602712409

`∑[2-A144611(n)]`
-/

namespace A087057.P6735796626602712409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A144611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087057.P6735796626602712409

namespace A087057

/-- `∑[2-A144611(n)]` -/
def P6735796626602712409.Spec : Prop :=
  ∀ n, P6735796626602712409.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P15245915971916992939

`1+A001951(n+1)`
-/

namespace A087057.P15245915971916992939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001951 (n + 1)

end

end A087057.P15245915971916992939

namespace A087057

/-- `1+A001951(n+1)` -/
def P15245915971916992939.Spec : Prop :=
  ∀ n, P15245915971916992939.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P16819390887204730988

`A395101(n+1)+2`
-/

namespace A087057.P16819390887204730988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1) + 2

end

end A087057.P16819390887204730988

namespace A087057

/-- `A395101(n+1)+2` -/
def P16819390887204730988.Spec : Prop :=
  ∀ n, P16819390887204730988.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P12829992581408181102

`A003151(n+1)-n`
-/

namespace A087057.P12829992581408181102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - (n : ℤ)

end

end A087057.P12829992581408181102

namespace A087057

/-- `A003151(n+1)-n` -/
def P12829992581408181102.Spec : Prop :=
  ∀ n, P12829992581408181102.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P14339678158137379974

`sqrt(A087055(n+1))+1`
-/

namespace A087057.P14339678158137379974
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (n + 1) : ℝ) + 1

end

end A087057.P14339678158137379974

namespace A087057

/-- `sqrt(A087055(n+1))+1` -/
def P14339678158137379974.Spec : Prop :=
  ∀ n, P14339678158137379974.a n = (A087057 (n + 1) : ℝ)

end A087057

/-! ## A087057.P7691401331059078147

`comp[A184922(n+1)]+2`
-/

namespace A087057.P7691401331059078147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A087057.P7691401331059078147

namespace A087057

/-- `comp[A184922(n+1)]+2` -/
def P7691401331059078147.Spec : Prop :=
  ∀ n, (P7691401331059078147.a n : ℤ) = A087057 (n + 1)

end A087057

/-! ## A087057.P14546432876103420777

`A286909(n+1)/2+1`
-/

namespace A087057.P14546432876103420777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286909 (n + 1) : ℚ) / 2 + 1

end

end A087057.P14546432876103420777

namespace A087057

/-- `A286909(n+1)/2+1` -/
def P14546432876103420777.Spec : Prop :=
  ∀ n, P14546432876103420777.a n = (A087057 (n + 1) : ℚ)

end A087057

/-! ## A087057.P13976796807045729501

`n+1+A054071(n+1)`
-/

namespace A087057.P13976796807045729501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A054071 (n + 1)

end

end A087057.P13976796807045729501

namespace A087057

/-- `n+1+A054071(n+1)` -/
def P13976796807045729501.Spec : Prop :=
  ∀ n, P13976796807045729501.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P5678368217370734498

`A080754(n+1)-(n+1)`
-/

namespace A087057.P5678368217370734498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) - (n + 1 : ℤ)

end

end A087057.P5678368217370734498

namespace A087057

/-- `A080754(n+1)-(n+1)` -/
def P5678368217370734498.Spec : Prop :=
  ∀ n, P5678368217370734498.a n = A087057 (n + 1)

end A087057

/-! ## A087057.P1432350692776339589

`A286666(n+1)+1-n`
-/

namespace A087057.P1432350692776339589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + (1 - (n : ℤ))

end

end A087057.P1432350692776339589

namespace A087057

/-- `A286666(n+1)+1-n` -/
def P1432350692776339589.Spec : Prop :=
  ∀ n, P1432350692776339589.a n = A087057 (n + 1)

end A087057

/-!
# A087058: Smallest square number greater than 2*n^2.

The programs for A087058, the canonical program `A087058.P14132011939147560802` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087058 has offset 1).

The definition of A087058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087058.P14132011939147560802

`ceil(sqrt(2*(n+1)²))²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087058

/-- `ceil(sqrt(2*(n+1)²))²` -/
def P14132011939147560802.Spec : Prop :=
  ∀ n, P14132011939147560802.a n = A087058 (n + 1)

theorem P14132011939147560802.correct : P14132011939147560802.Spec := by
  intro n
  simp only [A087058, Nat.add_sub_cancel]

end A087058

/-! ## A087058.P7550613480230081752

`record[floor((2-n)*sqrt(2))²]`
-/

namespace A087058.P7550613480230081752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - (n : ℤ) : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087058.P7550613480230081752

namespace A087058

/-- `record[floor((2-n)*sqrt(2))²]` -/
def P7550613480230081752.Spec : Prop :=
  ∀ n, P7550613480230081752.a n = A087058 (n + 1)

end A087058

/-! ## A087058.P13652054584327038528

`ceil((n+1)/cos(acot(1)))^2`
-/

namespace A087058.P13652054584327038528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ))⌉ ^ 2

end

end A087058.P13652054584327038528

namespace A087058

/-- `ceil((n+1)/cos(acot(1)))^2` -/
def P13652054584327038528.Spec : Prop :=
  ∀ n, P13652054584327038528.a n = A087058 (n + 1)

end A087058

/-! ## A087058.P8199051360207072085

`A048761(2*(n+1)²)`
-/

namespace A087058.P8199051360207072085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (2 * (n + 1) ^ 2)

end

end A087058.P8199051360207072085

namespace A087058

/-- `A048761(2*(n+1)²)` -/
def P8199051360207072085.Spec : Prop :=
  ∀ n, P8199051360207072085.a n = A087058 (n + 1)

theorem P8199051360207072085.correct : P8199051360207072085.Spec := by
  intro n
  simp only [A087058, Nat.add_sub_cancel, A087058.P8199051360207072085.a, A087058.P14132011939147560802.a, A048761, A048761.P914736112300567897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A087058

/-!
# A087059: Difference between 2*n^2 and the next greater square number.

The programs for A087059, the canonical program `A087059.P74677546296285644` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087059 has offset 1).

The definition of A087059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087059.P74677546296285644

`(1+floor((n+1)*sqrt(2)))²-2*(n+1)²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087059

/-- `(1+floor((n+1)*sqrt(2)))²-2*(n+1)²` -/
def P74677546296285644.Spec : Prop :=
  ∀ n, P74677546296285644.a n = A087059 (n + 1)

theorem P74677546296285644.correct : P74677546296285644.Spec := by
  intro n
  simp only [A087059, Nat.add_sub_cancel]

end A087059

/-! ## A087059.P7164423285654208311

`(2*(n+1)²)%(comp[floor(n*sqrt(2))]+1)`
-/

namespace A087059.P7164423285654208311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2 % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A087059.P7164423285654208311

namespace A087059

/-- `(2*(n+1)²)%(comp[floor(n*sqrt(2))]+1)` -/
def P7164423285654208311.Spec : Prop :=
  ∀ n, (P7164423285654208311.a n : ℤ) = A087059 (n + 1)

end A087059

/-! ## A087059.P16590109659810092928

`A082532(ceil((n+1)*sqrt(2)))`
-/

namespace A087059.P16590109659810092928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉.toNat

end

end A087059.P16590109659810092928

namespace A087059

/-- `A082532(ceil((n+1)*sqrt(2)))` -/
def P16590109659810092928.Spec : Prop :=
  ∀ n, P16590109659810092928.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P12257641064864594752

`A087060(comp[floor(n*sqrt(2))]-n)`
-/

namespace A087059.P12257641064864594752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A087059.P12257641064864594752

namespace A087059

/-- `A087060(comp[floor(n*sqrt(2))]-n)` -/
def P12257641064864594752.Spec : Prop :=
  ∀ n, P12257641064864594752.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P14258167346780306383

`A121488(comp[floor(n*sqrt(2))]-n)/4`
-/

namespace A087059.P14258167346780306383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121488 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) : ℚ) / 4

end

end A087059.P14258167346780306383

namespace A087059

/-- `A121488(comp[floor(n*sqrt(2))]-n)/4` -/
def P14258167346780306383.Spec : Prop :=
  ∀ n, P14258167346780306383.a n = (A087059 (n + 1) : ℚ)

end A087059

/-! ## A087059.P18377709757869869676

`A087056(A080754(n+1))`
-/

namespace A087059.P18377709757869869676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A080754 (n + 1)).toNat

end

end A087059.P18377709757869869676

namespace A087059

/-- `A087056(A080754(n+1))` -/
def P18377709757869869676.Spec : Prop :=
  ∀ n, P18377709757869869676.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P5765911617121974640

`A087056(A188040(2*(n+1)))`
-/

namespace A087059.P5765911617121974640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A188040 (2 * (n + 1))).toNat

end

end A087059.P5765911617121974640

namespace A087059

/-- `A087056(A188040(2*(n+1)))` -/
def P5765911617121974640.Spec : Prop :=
  ∀ n, P5765911617121974640.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P14476635602043448423

`A087056(A187968(2*n+1)+2)`
-/

namespace A087059.P14476635602043448423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A187968 (2 * n + 1) + 2).toNat

end

end A087059.P14476635602043448423

namespace A087059

/-- `A087056(A187968(2*n+1)+2)` -/
def P14476635602043448423.Spec : Prop :=
  ∀ n, P14476635602043448423.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P15595233576902621995

`A087056(A087057(n+1)+n+1)`
-/

namespace A087059.P15595233576902621995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A087057 (n + 1) + (n + 1 : ℤ)).toNat

end

end A087059.P15595233576902621995

namespace A087059

/-- `A087056(A087057(n+1)+n+1)` -/
def P15595233576902621995.Spec : Prop :=
  ∀ n, P15595233576902621995.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P872639617865510573

`A087056(A001951(n+1)+n+2)`
-/

namespace A087059.P872639617865510573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A001951 (n + 1) + (n + 2 : ℤ)).toNat

end

end A087059.P872639617865510573

namespace A087059

/-- `A087056(A001951(n+1)+n+2)` -/
def P872639617865510573.Spec : Prop :=
  ∀ n, P872639617865510573.a n = A087059 (n + 1)

end A087059

/-! ## A087059.P12934800178863265108

`A087056(A003152(2*(n+1))-n)`
-/

namespace A087059.P12934800178863265108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (A003152 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A087059.P12934800178863265108

namespace A087059

/-- `A087056(A003152(2*(n+1))-n)` -/
def P12934800178863265108.Spec : Prop :=
  ∀ n, P12934800178863265108.a n = A087059 (n + 1)

end A087059

/-!
# A087060: Difference between 2n^2 and the nearest square number.

The programs for A087060, the canonical program `A087060.P9090490820791322681` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087060 has offset 1).

The definition of A087060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087060.P4628853882478881108

`abs(A057049(n+1)+1-A057050(n+1))`
-/

namespace A087060.P4628853882478881108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057049 (n + 1) + (1 - A057050 (n + 1))|

end

end A087060.P4628853882478881108

namespace A087060

/-- `abs(A057049(n+1)+1-A057050(n+1))` -/
def P4628853882478881108.Spec : Prop :=
  ∀ n, P4628853882478881108.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P9090490820791322681

`abs(2*A057049(n+1)-A022846(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A087060

/-- `abs(2*A057049(n+1)-A022846(n+1))` -/
def P9090490820791322681.Spec : Prop :=
  ∀ n, P9090490820791322681.a n = A087060 (n + 1)

theorem P9090490820791322681.correct : P9090490820791322681.Spec := by
  intro n
  simp only [A087060, Nat.add_sub_cancel]

end A087060

/-! ## A087060.P2474630180074657019

`abs(A057049(A003153(n+1))-(n+1)-A057049(n+1))`
-/

namespace A087060.P2474630180074657019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057049 (A003153 (n + 1)).toNat - (n + 1 : ℤ) - A057049 (n + 1)|

end

end A087060.P2474630180074657019

namespace A087060

/-- `abs(A057049(A003153(n+1))-(n+1)-A057049(n+1))` -/
def P2474630180074657019.Spec : Prop :=
  ∀ n, P2474630180074657019.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P17620096014735260417

`abs(A057049(n+1)-A163528(A163334(n*(n+2))))`
-/

namespace A087060.P17620096014735260417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057049 (n + 1) - A163528 (A163334 (n * (n + 2))).toNat|

end

end A087060.P17620096014735260417

namespace A087060

/-- `abs(A057049(n+1)-A163528(A163334(n*(n+2))))` -/
def P17620096014735260417.Spec : Prop :=
  ∀ n, P17620096014735260417.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P13212019569492044933

`abs(A057049(n+1)-A004524(A099375(n*(n+2))))`
-/

namespace A087060.P13212019569492044933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057049 (n + 1) - A004524 (A099375 (n * (n + 2))).toNat|

end

end A087060.P13212019569492044933

namespace A087060

/-- `abs(A057049(n+1)-A004524(A099375(n*(n+2))))` -/
def P13212019569492044933.Spec : Prop :=
  ∀ n, P13212019569492044933.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P1672664896047459070

`abs(A002260(A038722((n+1)²))-1-A057049(n+1))`
-/

namespace A087060.P1672664896047459070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002260 (A038722 ((n + 1) ^ 2)).toNat - 1 - A057049 (n + 1)|

end

end A087060.P1672664896047459070

namespace A087060

/-- `abs(A002260(A038722((n+1)²))-1-A057049(n+1))` -/
def P1672664896047459070.Spec : Prop :=
  ∀ n, P1672664896047459070.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P464282665104363630

`A143182(A001951(n+1)²-(n+1)²)`
-/

namespace A087060.P464282665104363630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A001951 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)).toNat

end

end A087060.P464282665104363630

namespace A087060

/-- `A143182(A001951(n+1)²-(n+1)²)` -/
def P464282665104363630.Spec : Prop :=
  ∀ n, P464282665104363630.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P1097183426549203903

`abs(1-A114327(n*(n+2)))`
-/

namespace A087060.P1097183426549203903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A114327 (n * (n + 2))|

end

end A087060.P1097183426549203903

namespace A087060

/-- `abs(1-A114327(n*(n+2)))` -/
def P1097183426549203903.Spec : Prop :=
  ∀ n, P1097183426549203903.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P8615600008128676465

`abs(A114327(A005563(n))-1)`
-/

namespace A087060.P8615600008128676465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114327 (A005563 n).toNat - 1|

end

end A087060.P8615600008128676465

namespace A087060

/-- `abs(A114327(A005563(n))-1)` -/
def P8615600008128676465.Spec : Prop :=
  ∀ n, P8615600008128676465.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P15897945133301023125

`gcd(1-A114327(A005563(n)), A130706(n))`
-/

namespace A087060.P15897945133301023125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A114327 (A005563 n).toNat) (A130706 n)

end

end A087060.P15897945133301023125

namespace A087060

/-- `gcd(1-A114327(A005563(n)), A130706(n))` -/
def P15897945133301023125.Spec : Prop :=
  ∀ n, (P15897945133301023125.a n : ℤ) = A087060 (n + 1)

end A087060

/-! ## A087060.P10850259698036978508

`lcm(1-A114327(A005563(n)), A020985(n))`
-/

namespace A087060.P10850259698036978508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A114327 (A005563 n).toNat) (A020985 n)

end

end A087060.P10850259698036978508

namespace A087060

/-- `lcm(1-A114327(A005563(n)), A020985(n))` -/
def P10850259698036978508.Spec : Prop :=
  ∀ n, (P10850259698036978508.a n : ℤ) = A087060 (n + 1)

end A087060

/-! ## A087060.P18097300722858473669

`∑{d}[1-A114327(A005563(n)), A000010(#)]`
-/

namespace A087060.P18097300722858473669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A114327 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A087060.P18097300722858473669

namespace A087060

/-- `∑{d}[1-A114327(A005563(n)), A000010(#)]` -/
def P18097300722858473669.Spec : Prop :=
  ∀ n, P18097300722858473669.a n = A087060 (n + 1)

end A087060

/-! ## A087060.P2421921473552261821

`∏{d}[1-A114327(A005563(n)), A014963(#)]`
-/

namespace A087060.P2421921473552261821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A114327 (A005563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A087060.P2421921473552261821

namespace A087060

/-- `∏{d}[1-A114327(A005563(n)), A014963(#)]` -/
def P2421921473552261821.Spec : Prop :=
  ∀ n, P2421921473552261821.a n = A087060 (n + 1)

end A087060

/-!
# A087061: Array A(n, k) = lunar sum n + k (n >= 0, k >= 0) read by antidiagonals.

The programs for A087061, there is no canonical definition to state claims against.
-/

/-! ## A087061.P158999881076506398

`∑[char[∑[n+1]]]-A342955(n)`
-/

namespace A087061.P158999881076506398
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A342955 n

end

end A087061.P158999881076506398

/-! ## A087061.P4521291175990390955

`A002024(n+1)-(A342955(n)+1)`
-/

namespace A087061.P4521291175990390955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A342955 n + 1)

end

end A087061.P4521291175990390955

/-! ## A087061.P16318912921762934359

`A003057(n+2)-(A342955(n)+2)`
-/

namespace A087061.P16318912921762934359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - (A342955 n + 2)

end

end A087061.P16318912921762934359

/-! ## A087061.P15569468121171279672

`A003984(A342955(n)+A057944(n))`
-/

namespace A087061.P15569468121171279672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A342955 n + A057944 n).toNat

end

end A087061.P15569468121171279672

/-! ## A087061.P9177702048593271850

`A003984(A057944(n)-A342955(n))`
-/

namespace A087061.P9177702048593271850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A057944 n - A342955 n).toNat

end

end A087061.P9177702048593271850

/-! ## A087061.P5027940555639740199

`A002262(A025581(A342955(n)+n)+n)`
-/

namespace A087061.P5027940555639740199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A025581 (A342955 n + (n : ℤ)).toNat + (n : ℤ)).toNat

end

end A087061.P5027940555639740199

/-! ## A087061.P9887527023724194928

`A342955(n)+A330240(n)`
-/

namespace A087061.P9887527023724194928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 n + A330240 n

end

end A087061.P9887527023724194928

/-! ## A087061.P5907196171954648154

`A001281(A330240(n)+A003056(n))`
-/

namespace A087061.P5907196171954648154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A330240 n + A003056 n).toNat

end

end A087061.P5907196171954648154

/-! ## A087061.P9211725778124547721

`A004526(A330240(n)+A003056(n))`
-/

namespace A087061.P9211725778124547721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A330240 n + A003056 n).toNat

end

end A087061.P9211725778124547721

/-! ## A087061.P6310311081893309929

`A006370(A330240(n)+A003056(n))`
-/

namespace A087061.P6310311081893309929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A330240 n + A003056 n).toNat

end

end A087061.P6310311081893309929

/-! ## A087061.P12372530729731696894

`A004526(A330240(n)+A002024(n+1))`
-/

namespace A087061.P12372530729731696894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A330240 n + A002024 (n + 1)).toNat

end

end A087061.P12372530729731696894

/-!
# A087062: Array T(n,k) = lunar product n*k (n >= 1, k >= 1) read by antidiagonals.

The programs for A087062, there is no canonical definition to state claims against.
-/

/-! ## A087062.P2625836152092478560

`A261684(lt[0, A261684(n)])`
-/

namespace A087062.P2625836152092478560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A087062.P2625836152092478560

/-! ## A087062.P17029430807096292367

`A261684(A131507(n)+3+n)`
-/

namespace A087062.P17029430807096292367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A131507 n + 3 + (n : ℤ)).toNat

end

end A087062.P17029430807096292367

/-! ## A087062.P9391758155688280561

`A261684(A111650(n+1)+2+n)`
-/

namespace A087062.P9391758155688280561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (A111650 (n + 1) + 2 + (n : ℤ)).toNat

end

end A087062.P9391758155688280561

/-! ## A087062.P1436618183737764465

`A261684(comp[n*(1-A261684(n))])`
-/

namespace A087062.P1436618183737764465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A261684 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A087062.P1436618183737764465

/-! ## A087062.P11643653923715001568

`A261684(eq[0, A158821(n)])`
-/

namespace A087062.P11643653923715001568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A087062.P11643653923715001568

/-!
# A087063: Sum{Floor(n*(r^k)): r=sqrt(2)-1, k>=0}.

The programs for A087063, there is no canonical definition to state claims against.
-/

/-! ## A087063.P9893759711153696373

`A182831(A152947(n+1))-A000007(n)`
-/

namespace A087063.P9893759711153696373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182831 (A152947 (n + 1)).toNat - A000007 n

end

end A087063.P9893759711153696373

/-! ## A087063.P16030432739760387421

`A182831(A152947(n+1))%A000285(n)`
-/

namespace A087063.P16030432739760387421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182831 (A152947 (n + 1)).toNat) (A000285 n)

end

end A087063.P16030432739760387421

/-! ## A087063.P7457486856633009562

`char[A133310(n)]*A182831(A152947(n+1))`
-/

namespace A087063.P7457486856633009562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182831 (A152947 (n + 1)).toNat

end

end A087063.P7457486856633009562

/-! ## A087063.P3132915382704888731

`char[A246694(n)]*A182831(A152947(n+1))`
-/

namespace A087063.P3132915382704888731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246694 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182831 (A152947 (n + 1)).toNat

end

end A087063.P3132915382704888731

/-! ## A087063.P15530779221436693592

`char[A064216(n+1)]*A182831(A152947(n+1))`
-/

namespace A087063.P15530779221436693592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182831 (A152947 (n + 1)).toNat

end

end A087063.P15530779221436693592

/-! ## A087063.P2188930858180019448

`char[A182831(n+1)]*A182831(A152947(n+1))`
-/

namespace A087063.P2188930858180019448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182831 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A182831 (A152947 (n + 1)).toNat

end

end A087063.P2188930858180019448

/-!
# A087065: Sum{Floor(n*r^k): r=sqrt(3)-1, k>=0}.

The programs for A087065, there is no canonical definition to state claims against.
-/

/-! ## A087065.P16855569743614165738

`record[A057117(gcd(n, A229979(n)))]`
-/

namespace A087065.P16855569743614165738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (Int.gcd (n : ℤ) (A229979 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087065.P16855569743614165738

/-! ## A087065.P15136888138278458970

`∑[A341596(∑[A026507(n+1)]²)]`
-/

namespace A087065.P15136888138278458970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026507 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087065.P15136888138278458970

/-! ## A087065.P8925304968448678735

`record[A057117(2*n)-A229979(2*n)]`
-/

namespace A087065.P8925304968448678735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (2 * n) - A229979 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087065.P8925304968448678735

/-! ## A087065.P1828981850941134007

`∑[∑{e}[A291382(n)-(A088884(n+1)-1), #]]`
-/

namespace A087065.P1828981850941134007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291382 n - (A088884 (n + 1) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087065.P1828981850941134007

/-! ## A087065.P11565582114648981608

`A259361(n²)+∑[A001221(A032120(n))]`
-/

namespace A087065.P11565582114648981608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A032120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087065.P11565582114648981608

/-!
# A087066: a(n) = Sum_{k>=0} floor(n*(r^k)), where r = sqrt(5)-2.

The programs for A087066, there is no canonical definition to state claims against.
-/

/-! ## A087066.P4547012414717557717

`A187329(4*n)-ceil(n*(4-sqrt(5)))`
-/

namespace A087066.P4547012414717557717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (4 * n) - ⌈(n : ℝ) * (4 - Real.sqrt (5 : ℝ))⌉

end

end A087066.P4547012414717557717

/-! ## A087066.P6382981636475839184

`A045681(A160544(n+1)-1)`
-/

namespace A087066.P6382981636475839184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (A160544 (n + 1) - 1).toNat

end

end A087066.P6382981636475839184

/-! ## A087066.P9532652951914101119

`A045681(A023443(A160544(n+1)))`
-/

namespace A087066.P9532652951914101119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045681 (A023443 (A160544 (n + 1)).toNat).toNat

end

end A087066.P9532652951914101119

/-! ## A087066.P8246503078268250086

`A060144(A008590(n))-A195173(n)`
-/

namespace A087066.P8246503078268250086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A008590 n).toNat - A195173 n

end

end A087066.P8246503078268250086

/-! ## A087066.P18282687770189681821

`A060144(A022144(n))-A195173(n)`
-/

namespace A087066.P18282687770189681821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A022144 n).toNat - A195173 n

end

end A087066.P18282687770189681821

/-! ## A087066.P18230721634633225983

`A060143(2*n)+A054898(A004526(n))`
-/

namespace A087066.P18230721634633225983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * n) + A054898 (A004526 n).toNat

end

end A087066.P18230721634633225983

/-! ## A087066.P24835344999622597

`A060143(2*n)+A152467(A002264(n))`
-/

namespace A087066.P24835344999622597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * n) + A152467 (A002264 n).toNat

end

end A087066.P24835344999622597

/-! ## A087066.P5067808445818162146

`A152467(A152467(2*n))+A060143(2*n)`
-/

namespace A087066.P5067808445818162146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A152467 (2 * n)).toNat + A060143 (2 * n)

end

end A087066.P5067808445818162146

/-! ## A087066.P11014780308125552787

`A023443(A160544(n+1)+n-A195172(n))`
-/

namespace A087066.P11014780308125552787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A160544 (n + 1) + ((n : ℤ) - A195172 n)).toNat

end

end A087066.P11014780308125552787

/-! ## A087066.P5462824538736863063

`A195172(A008574(n))-(A195172(n)+1+n)`
-/

namespace A087066.P5462824538736863063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (A008574 n).toNat - (A195172 n + 1 + (n : ℤ))

end

end A087066.P5462824538736863063

/-!
# A087069: a(n) = Sum_{k >= 0} floor(n/(4^k)).

The programs for A087069, the canonical program `A087069.P8198094130385700278` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087069 has offset 0).

The definition of A087069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087069.P8198094130385700278

`A054893(4*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087069

/-- `A054893(4*n)` -/
def P8198094130385700278.Spec : Prop :=
  ∀ n, P8198094130385700278.a n = A087069 n

theorem P8198094130385700278.correct : P8198094130385700278.Spec := by
  intro n
  simp only [A087069]

end A087069

/-! ## A087069.P17984029793309944403

`a(floor(n/4))+n` with `a(0)=0`
-/

namespace A087069.P17984029793309944403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + n

end

end A087069.P17984029793309944403

namespace A087069

/-- `a(floor(n/4))+n` -/
def P17984029793309944403.Spec : Prop :=
  ∀ n, (P17984029793309944403.a n : ℤ) = A087069 n

end A087069

/-! ## A087069.P1679939112567417804

`record[val(n, 4)-a(n-1)]` with `a(0)=0`
-/

namespace A087069.P1679939112567417804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (SequenceMachineLib.valuation n 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087069.P1679939112567417804

namespace A087069

/-- `record[val(n, 4)-a(n-1)]` -/
def P1679939112567417804.Spec : Prop :=
  ∀ n, P1679939112567417804.a n = A087069 n

end A087069

/-! ## A087069.P11519517529303197620

`a(n-1)+val(n, 4)+1` with `a(0)=0`
-/

namespace A087069.P11519517529303197620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 4 + 1

end

end A087069.P11519517529303197620

namespace A087069

/-- `a(n-1)+val(n, 4)+1` -/
def P11519517529303197620.Spec : Prop :=
  ∀ n, (P11519517529303197620.a n : ℤ) = A087069 n

end A087069

/-! ## A087069.P9223448147754290867

`n-xor(-1, a(floor(n/4)))-1` with `a(0)=0`
-/

namespace A087069.P9223448147754290867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.xor (-1) (a ⌊(n : ℚ) / 4⌋.toNat) - 1

end

end A087069.P9223448147754290867

namespace A087069

/-- `n-xor(-1, a(floor(n/4)))-1` -/
def P9223448147754290867.Spec : Prop :=
  ∀ n, P9223448147754290867.a n = A087069 n

end A087069

/-! ## A087069.P17694386947020274963

`Δ[n²]-(n-a(floor(n/4)))-1` with `a(0)=0`
-/

namespace A087069.P17694386947020274963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat) - 1

end

end A087069.P17694386947020274963

namespace A087069

/-- `Δ[n²]-(n-a(floor(n/4)))-1` -/
def P17694386947020274963.Spec : Prop :=
  ∀ n, P17694386947020274963.a n = A087069 n

end A087069

/-! ## A087069.P15706117209745041319

`∑[val(n+1, 4)+1]-(val(n+1, 4)+1)`
-/

namespace A087069.P15706117209745041319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 4 + 1 : ℤ)

end

end A087069.P15706117209745041319

namespace A087069

/-- `∑[val(n+1, 4)+1]-(val(n+1, 4)+1)` -/
def P15706117209745041319.Spec : Prop :=
  ∀ n, P15706117209745041319.a n = A087069 n

end A087069

/-! ## A087069.P16597537892354710280

`A054893(n)+n`
-/

namespace A087069.P16597537892354710280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 n + (n : ℤ)

end

end A087069.P16597537892354710280

namespace A087069

/-- `A054893(n)+n` -/
def P16597537892354710280.Spec : Prop :=
  ∀ n, P16597537892354710280.a n = A087069 n

end A087069

/-! ## A087069.P12841734863424936152

`∑[val(A008574(n), 4)]`
-/

namespace A087069.P12841734863424936152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008574 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087069.P12841734863424936152

namespace A087069

/-- `∑[val(A008574(n), 4)]` -/
def P12841734863424936152.Spec : Prop :=
  ∀ n, (P12841734863424936152.a n : ℤ) = A087069 n

end A087069

/-! ## A087069.P6086092821547049010

`A120518(n+1)-1`
-/

namespace A087069.P6086092821547049010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120518 (n + 1) - 1

end

end A087069.P6086092821547049010

namespace A087069

/-- `A120518(n+1)-1` -/
def P6086092821547049010.Spec : Prop :=
  ∀ n, P6086092821547049010.a n = A087069 n

end A087069

/-! ## A087069.P14633270129217776122

`A244415(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A087069.P14633270129217776122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A244415 (2 * n) + a (n - 1)

end

end A087069.P14633270129217776122

namespace A087069

/-- `A244415(2*n)+a(n-1)` -/
def P14633270129217776122.Spec : Prop :=
  ∀ n, P14633270129217776122.a n = A087069 n

end A087069

/-! ## A087069.P16200803865994308352

`A197911(n)-A139352(n)`
-/

namespace A087069.P16200803865994308352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 n - A139352 n

end

end A087069.P16200803865994308352

namespace A087069

/-- `A197911(n)-A139352(n)` -/
def P16200803865994308352.Spec : Prop :=
  ∀ n, P16200803865994308352.a n = A087069 n

end A087069

/-! ## A087069.P4222016068516892558

`∑[A004526(A089080(n+1))]`
-/

namespace A087069.P4222016068516892558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A089080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087069.P4222016068516892558

namespace A087069

/-- `∑[A004526(A089080(n+1))]` -/
def P4222016068516892558.Spec : Prop :=
  ∀ n, P4222016068516892558.a n = A087069 n

end A087069

/-! ## A087069.P1058515709026734457

`∑[A115362(n)]-A115362(n)`
-/

namespace A087069.P1058515709026734457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A115362 n

end

end A087069.P1058515709026734457

namespace A087069

/-- `∑[A115362(n)]-A115362(n)` -/
def P1058515709026734457.Spec : Prop :=
  ∀ n, P1058515709026734457.a n = A087069 n

end A087069

/-! ## A087069.P7890276389773400419

`(A050292(n)+A005187(n))/2`
-/

namespace A087069.P7890276389773400419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050292 n + A005187 n : ℚ) / 2

end

end A087069.P7890276389773400419

namespace A087069

/-- `(A050292(n)+A005187(n))/2` -/
def P7890276389773400419.Spec : Prop :=
  ∀ n, P7890276389773400419.a n = (A087069 n : ℚ)

end A087069

/-! ## A087069.P2546084207559871545

`2*A050292(n)-A139351(n)`
-/

namespace A087069.P2546084207559871545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050292 n - A139351 n

end

end A087069.P2546084207559871545

namespace A087069

/-- `2*A050292(n)-A139351(n)` -/
def P2546084207559871545.Spec : Prop :=
  ∀ n, P2546084207559871545.a n = A087069 n

end A087069

/-! ## A087069.P8576359390077332055

`A047878(n-A053737(n))+n`
-/

namespace A087069.P8576359390077332055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 ((n : ℤ) - A053737 n).toNat + (n : ℤ)

end

end A087069.P8576359390077332055

namespace A087069

/-- `A047878(n-A053737(n))+n` -/
def P8576359390077332055.Spec : Prop :=
  ∀ n, P8576359390077332055.a n = A087069 n

end A087069

/-! ## A087069.P7141014104697688249

`A068639(n)+n-A139351(n)`
-/

namespace A087069.P7141014104697688249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 n + ((n : ℤ) - A139351 n)

end

end A087069.P7141014104697688249

namespace A087069

/-- `A068639(n)+n-A139351(n)` -/
def P7141014104697688249.Spec : Prop :=
  ∀ n, P7141014104697688249.a n = A087069 n

end A087069

/-! ## A087069.P8915242821186578320

`A123087(n)+n-A139352(n)`
-/

namespace A087069.P8915242821186578320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n + ((n : ℤ) - A139352 n)

end

end A087069.P8915242821186578320

namespace A087069

/-- `A123087(n)+n-A139352(n)` -/
def P8915242821186578320.Spec : Prop :=
  ∀ n, P8915242821186578320.a n = A087069 n

end A087069

/-! ## A087069.P16639621160671024047

`A285870(n-A053737(n))+n`
-/

namespace A087069.P16639621160671024047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 ((n : ℤ) - A053737 n).toNat + (n : ℤ)

end

end A087069.P16639621160671024047

namespace A087069

/-- `A285870(n-A053737(n))+n` -/
def P16639621160671024047.Spec : Prop :=
  ∀ n, P16639621160671024047.a n = A087069 n

end A087069

/-!
# A087070: Sum{Floor(n*r^k): r=3/4, k>=0}.

The programs for A087070, there is no canonical definition to state claims against.
-/

/-! ## A087070.P1058551487662980241

`∑[A323014(A189145(n+1))]+n`
-/

namespace A087070.P1058551487662980241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A189145 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A087070.P1058551487662980241

/-! ## A087070.P5464134069046649133

`∑[A182850(A000085(n)+2*n)]`
-/

namespace A087070.P5464134069046649133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A000085 n + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087070.P5464134069046649133

/-! ## A087070.P6501448262244186976

`A340205(A053813(2*(n+1))-2)`
-/

namespace A087070.P6501448262244186976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340205 (A053813 (2 * (n + 1)) - 2).toNat

end

end A087070.P6501448262244186976

/-! ## A087070.P18250816612127300099

`A023671(A212889(n)+A000217(n))`
-/

namespace A087070.P18250816612127300099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023671 (A212889 n + A000217 n).toNat

end

end A087070.P18250816612127300099

/-! ## A087070.P11191353261937062915

`A023671(A212889(n)+A005187(n))`
-/

namespace A087070.P11191353261937062915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023671 (A212889 n + A005187 n).toNat

end

end A087070.P11191353261937062915

/-!
# A087071: Number of distinct prime 4-component links with crossing number n.

The programs for A087071, there is no canonical definition to state claims against.
-/

/-! ## A087071.P13133689808002203399

`A324052(A324104(n+1)^A079262(n))`
-/

namespace A087071.P13133689808002203399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324052 (SequenceMachineLib.roundAway ((A324104 (n + 1) : ℚ) ^ (A079262 n : ℤ))).toNat

end

end A087071.P13133689808002203399

/-! ## A087071.P15312692457065240241

`A239481(A049285(n+1)+A018818(n+1))`
-/

namespace A087071.P15312692457065240241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239481 (A049285 (n + 1) + A018818 (n + 1)).toNat

end

end A087071.P15312692457065240241

/-! ## A087071.P3543698726463368306

`A188380(n+1)%A003557(A073364(n+1))`
-/

namespace A087071.P3543698726463368306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188380 (n + 1)) (A003557 (A073364 (n + 1)).toNat)

end

end A087071.P3543698726463368306

/-!
# A087072: Numbers having no partitions into a sum of two or more consecutive primes.

The programs for A087072, there is no canonical definition to state claims against.
-/

/-! ## A087072.P9460429973843564431

`comp[A050936(n+1)-1]+1`
-/

namespace A087072.P9460429973843564431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A087072.P9460429973843564431

/-! ## A087072.P8912761086966375930

`eq[0, A084143(n+1)]+1`
-/

namespace A087072.P8912761086966375930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087072.P8912761086966375930

/-! ## A087072.P5645250670449158185

`eq[2, A000040(a(A084143(n)))]` with `a(0)=1`
-/

namespace A087072.P5645250670449158185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087072.P5645250670449158185

/-! ## A087072.P10071198054197827529

`eq[2, A004087(a(A084143(n)))]` with `a(0)=1`
-/

namespace A087072.P10071198054197827529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A004087 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087072.P10071198054197827529

/-! ## A087072.P6408402005047138639

`lt[n*A084143(A028310(n)), n]`
-/

namespace A087072.P6408402005047138639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A084143 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A087072.P6408402005047138639

/-! ## A087072.P10753581051765500926

`eq[2, A043096(a(A084143(n))-1)]` with `a(0)=4`
-/

namespace A087072.P10753581051765500926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A043096 (f2 (A084143 n).toNat - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087072.P10753581051765500926

/-! ## A087072.P11825324900763944548

`record[n+1-A001533(n)*A084143(n+1)]`
-/

namespace A087072.P11825324900763944548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001533 n * A084143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087072.P11825324900763944548

/-! ## A087072.P8532861643610969341

`record[n+1-lcm(A000069(n+1), A084143(n+1))]`
-/

namespace A087072.P8532861643610969341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Int.lcm (A000069 (n + 1)) (A084143 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087072.P8532861643610969341

/-! ## A087072.P10657007868472398872

`record[n+1-A085740(n^A084143(n+1))]`
-/

namespace A087072.P10657007868472398872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A085740 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A084143 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087072.P10657007868472398872

/-! ## A087072.P9904551553779623094

`record[1-A086834(n+1)+n]`
-/

namespace A087072.P9904551553779623094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086834 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087072.P9904551553779623094

/-!
# A087073: Mobius transform of A051664, the number of nonzero terms in the n-th cyclotomic polynomial.

The programs for A087073, there is no canonical definition to state claims against.
-/

/-! ## A087073.P3234170161913714127

`∑{d}[n+1, A008683(#)*A051664((n+1)/#)]`
-/

namespace A087073.P3234170161913714127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A051664 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087073.P3234170161913714127

/-! ## A087073.P2926019282835807774

`A173557(A126773(n+1))+A134824(A005848(n+1))`
-/

namespace A087073.P2926019282835807774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A126773 (n + 1)).toNat + A134824 (A005848 (n + 1)).toNat

end

end A087073.P2926019282835807774

/-! ## A087073.P9287288599909241384

`and(A337104(3*n+1)+A008683(n+1), n-1)`
-/

namespace A087073.P9287288599909241384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337104 (3 * n + 1) + A008683 (n + 1)) ((n : ℤ) - 1)

end

end A087073.P9287288599909241384

/-! ## A087073.P10884582668167692976

`and(A008683(n+1)+A000007(A001106(2*n)), n-1)`
-/

namespace A087073.P10884582668167692976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 1) + A000007 (A001106 (2 * n)).toNat) ((n : ℤ) - 1)

end

end A087073.P10884582668167692976

/-!
# A087076: Sums of the squares of the elements in the subsets of the integers 1 to n.

The programs for A087076, the canonical program `A087076.P16053759933983171129` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087076 has offset 0).

The definition of A087076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087076.P7523431508190699034

`2^(n-2)*n*(n+1)*(2*n+1)/3`
-/

namespace A087076.P7523431508190699034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n : ℚ) * (n + 1 : ℚ) * (2 * n + 1 : ℚ) / 3

end

end A087076.P7523431508190699034

namespace A087076

/-- `2^(n-2)*n*(n+1)*(2*n+1)/3` -/
def P7523431508190699034.Spec : Prop :=
  ∀ n, P7523431508190699034.a n = (A087076 n : ℚ)

theorem P7523431508190699034.correct : P7523431508190699034.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A087076, Nat.add_sub_cancel, A087076.P7523431508190699034.a, A087076.P16053759933983171129.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A087076, Nat.add_sub_cancel, A087076.P7523431508190699034.a, A087076.P16053759933983171129.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A087076

/-! ## A087076.P16053759933983171129

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=56`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087076

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P16053759933983171129.Spec : Prop :=
  ∀ n, P16053759933983171129.a n = A087076 n

theorem P16053759933983171129.correct : P16053759933983171129.Spec := by
  intro n
  simp only [A087076]

end A087076

/-! ## A087076.P16844094964600330271

`∑[A085385(n)]`
-/

namespace A087076.P16844094964600330271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087076.P16844094964600330271

namespace A087076

/-- `∑[A085385(n)]` -/
def P16844094964600330271.Spec : Prop :=
  ∀ n, P16844094964600330271.a n = A087076 n

end A087076

/-! ## A087076.P10186942360660008841

`∑[n²]*A011782(n)`
-/

namespace A087076.P10186942360660008841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 n

end

end A087076.P10186942360660008841

namespace A087076

/-- `∑[n²]*A011782(n)` -/
def P10186942360660008841.Spec : Prop :=
  ∀ n, P10186942360660008841.a n = A087076 n

end A087076

/-! ## A087076.P6493635838061306094

`∑[n²]*A131577(n)`
-/

namespace A087076.P6493635838061306094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A131577 n

end

end A087076.P6493635838061306094

namespace A087076

/-- `∑[n²]*A131577(n)` -/
def P6493635838061306094.Spec : Prop :=
  ∀ n, P6493635838061306094.a n = A087076 n

end A087076

/-! ## A087076.P1510993340707260842

`abs(∑[n²]*A123344(n))`
-/

namespace A087076.P1510993340707260842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123344 n|

end

end A087076.P1510993340707260842

namespace A087076

/-- `abs(∑[n²]*A123344(n))` -/
def P1510993340707260842.Spec : Prop :=
  ∀ n, P1510993340707260842.a n = A087076 n

end A087076

/-! ## A087076.P4976235818072601459

`abs(∑[n²]*A154589(n))`
-/

namespace A087076.P4976235818072601459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A154589 n|

end

end A087076.P4976235818072601459

namespace A087076

/-- `abs(∑[n²]*A154589(n))` -/
def P4976235818072601459.Spec : Prop :=
  ∀ n, P4976235818072601459.a n = A087076 n

end A087076

/-! ## A087076.P293689754374482675

`abs(∑[n²]*A157823(n))`
-/

namespace A087076.P293689754374482675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A157823 n|

end

end A087076.P293689754374482675

namespace A087076

/-- `abs(∑[n²]*A157823(n))` -/
def P293689754374482675.Spec : Prop :=
  ∀ n, P293689754374482675.a n = A087076 n

end A087076

/-! ## A087076.P3581327210528657251

`∑[n²]*A034008(n+1)`
-/

namespace A087076.P3581327210528657251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A034008 (n + 1)

end

end A087076.P3581327210528657251

namespace A087076

/-- `∑[n²]*A034008(n+1)` -/
def P3581327210528657251.Spec : Prop :=
  ∀ n, P3581327210528657251.a n = A087076 n

end A087076

/-! ## A087076.P13937081850942403916

`∑[n²]*A166444(n+1)`
-/

namespace A087076.P13937081850942403916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A166444 (n + 1)

end

end A087076.P13937081850942403916

namespace A087076

/-- `∑[n²]*A166444(n+1)` -/
def P13937081850942403916.Spec : Prop :=
  ∀ n, P13937081850942403916.a n = A087076 n

end A087076

/-! ## A087076.P9348213151322853077

`∑[A001794(n)-A136530(n)]`
-/

namespace A087076.P9348213151322853077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n - A136530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087076.P9348213151322853077

namespace A087076

/-- `∑[A001794(n)-A136530(n)]` -/
def P9348213151322853077.Spec : Prop :=
  ∀ n, P9348213151322853077.a n = A087076 n

end A087076

/-! ## A087076.P15775203700661449955

`A290026(n+1)+A001788(n)`
-/

namespace A087076.P15775203700661449955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 1) + A001788 n

end

end A087076.P15775203700661449955

namespace A087076

/-- `A290026(n+1)+A001788(n)` -/
def P15775203700661449955.Spec : Prop :=
  ∀ n, P15775203700661449955.a n = A087076 n

end A087076

/-! ## A087076.P760286678354392709

`∑[A101986(n)/2*A131577(n)]`
-/

namespace A087076.P760286678354392709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101986 n : ℚ) / 2 * (A131577 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087076.P760286678354392709

namespace A087076

/-- `∑[A101986(n)/2*A131577(n)]` -/
def P760286678354392709.Spec : Prop :=
  ∀ n, P760286678354392709.a n = (A087076 n : ℚ)

end A087076

/-! ## A087076.P10165862767433982334

`A331408(2*n+1)+A330592(2*n+1)/2`
-/

namespace A087076.P10165862767433982334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331408 (2 * n + 1) : ℚ) + (A330592 (2 * n + 1) : ℚ) / 2

end

end A087076.P10165862767433982334

namespace A087076

/-- `A331408(2*n+1)+A330592(2*n+1)/2` -/
def P10165862767433982334.Spec : Prop :=
  ∀ n, P10165862767433982334.a n = (A087076 n : ℚ)

end A087076

/-! ## A087076.P10500789643842398087

`A000079(n)*A000292(n)-A001788(n)`
-/

namespace A087076.P10500789643842398087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000292 n - A001788 n

end

end A087076.P10500789643842398087

namespace A087076

/-- `A000079(n)*A000292(n)-A001788(n)` -/
def P10500789643842398087.Spec : Prop :=
  ∀ n, P10500789643842398087.a n = A087076 n

end A087076

/-! ## A087076.P12177686780560035847

`A001789(n+3)-(A001788(n+1)+A001788(n))`
-/

namespace A087076.P12177686780560035847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) - (A001788 (n + 1) + A001788 n)

end

end A087076.P12177686780560035847

namespace A087076

/-- `A001789(n+3)-(A001788(n+1)+A001788(n))` -/
def P12177686780560035847.Spec : Prop :=
  ∀ n, P12177686780560035847.a n = A087076 n

end A087076

/-! ## A087076.P13534806837765660233

`A014483(n)-A085385(n+1)`
-/

namespace A087076.P13534806837765660233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014483 n - A085385 (n + 1)

end

end A087076.P13534806837765660233

namespace A087076

/-- `A014483(n)-A085385(n+1)` -/
def P13534806837765660233.Spec : Prop :=
  ∀ n, P13534806837765660233.a n = A087076 n

end A087076

/-!
# A087078: Sum of the elements in the primitive subsets of the integers 1 to n.

The programs for A087078, there is no canonical definition to state claims against.
-/

/-! ## A087078.P6061447145595709868

`A054554(A168027(2*n))%A054554(n+1)`
-/

namespace A087078.P6061447145595709868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054554 (A168027 (2 * n)).toNat) (A054554 (n + 1))

end

end A087078.P6061447145595709868

/-!
# A087079: Number of lunar partitions of n: number of ways of writing n as a lunar sum of distinct terms, ignoring order.

The programs for A087079, there is no canonical definition to state claims against.
-/

/-! ## A087079.P8195333047756266958

`A069626(A054842(n))`
-/

namespace A087079.P8195333047756266958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (A054842 n).toNat

end

end A087079.P8195333047756266958

/-! ## A087079.P612340598023873913

`A069626(A069877(n))`
-/

namespace A087079.P612340598023873913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (A069877 n).toNat

end

end A087079.P612340598023873913

/-! ## A087079.P12568379050010261549

`A076078(A054842(n))/A000032(floor(1/(n+1)))`
-/

namespace A087079.P12568379050010261549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (A054842 n).toNat : ℚ) / (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A087079.P12568379050010261549

/-! ## A087079.P18412484147322963209

`A069626(A061509(n))`
-/

namespace A087079.P18412484147322963209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (A061509 n).toNat

end

end A087079.P18412484147322963209

/-!
# A087081: Sum of the elements in the coprime subsets of the integers 1 to n.

The programs for A087081, there is no canonical definition to state claims against.
-/

/-! ## A087081.P9295477088620038229

`record[(n+1)/∏{p}[n+1, #]*A275494(3*(n+1))]`
-/

namespace A087081.P9295477088620038229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A275494 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087081.P9295477088620038229

/-! ## A087081.P17763115622473713340

`record[A356865(n)*A384632(n)]`
-/

namespace A087081.P17763115622473713340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356865 n * A384632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087081.P17763115622473713340

/-!
# A087082: Take bounded lunar divisors of n as defined in A087028, add them using normal addition. See A087121 for their lunar sum.

The programs for A087082, there is no canonical definition to state claims against.
-/

/-! ## A087082.P12817113555005938951

`∑[A194673(floor(n*ϕ²))]`
-/

namespace A087082.P12817113555005938951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087082.P12817113555005938951

/-! ## A087082.P9457079761299788204

`∑[46^A058348(3*n+1)]`
-/

namespace A087082.P9457079761299788204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (46 : ℚ) ^ (A058348 (3 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087082.P9457079761299788204

/-! ## A087082.P12603053829694641971

`∑[A239331(gcd(1-n, floor(n/2))!)]`
-/

namespace A087082.P12603053829694641971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 (Nat.factorial (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087082.P12603053829694641971

/-! ## A087082.P11419548614197131551

`∑[(∑[n]+1)^(n-A265556(n))²]`
-/

namespace A087082.P11419548614197131551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) ^ (((n : ℤ) - A265556 n) ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087082.P11419548614197131551

/-! ## A087082.P16599150987028173332

`∑[A011767(n)^∑{p}[(n+2)*n², val(#, 11)]]`
-/

namespace A087082.P16599150987028173332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011767 n ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087082.P16599150987028173332

/-!
# A087084: Number of integer elements in the subsets of the subsets of the integers 1 to n.

The programs for A087084, there is no canonical definition to state claims against.
-/

/-! ## A087084.P10425516879434031818

`(floor(((n-1)*2^n-1)/4)+1)*A011782(floor(2^(n-1)))`
-/

namespace A087084.P10425516879434031818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(((n : ℤ) - 1) * (2 ^ n : ℤ) - 1 : ℚ) / 4⌋ + 1) * A011782 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A087084.P10425516879434031818

/-! ## A087084.P17329968489562811858

`(n-1)*A057711(A131577(n))`
-/

namespace A087084.P17329968489562811858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A057711 (A131577 n).toNat

end

end A087084.P17329968489562811858

/-! ## A087084.P18299091164842137399

`(n-1)*A185251(A011782(n))`
-/

namespace A087084.P18299091164842137399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A185251 (A011782 n).toNat

end

end A087084.P18299091164842137399

/-! ## A087084.P17695588358520249965

`A011782(ceil(2^(n-1)))*A139756(n)`
-/

namespace A087084.P17695588358520249965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A139756 n

end

end A087084.P17695588358520249965

/-! ## A087084.P17957664180100875959

`A004275(n)*A049610(A011782(n))`
-/

namespace A087084.P17957664180100875959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n * A049610 (A011782 n).toNat

end

end A087084.P17957664180100875959

/-!
# A087085: Sum of the integer elements in the subsets of the subsets of the integers 1 to n.

The programs for A087085, the canonical program `A087085.P17446806475555210570` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087085 has offset 0).

The definition of A087085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087085.P17446806475555210570

`n*(n-1)*2^(n-4+2^(n-1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087085

/-- `n*(n-1)*2^(n-4+2^(n-1))` -/
def P17446806475555210570.Spec : Prop :=
  ∀ n, P17446806475555210570.a n = (A087085 n : ℝ)

end A087085

/-!
# A087086: Primitive sets of integers, each subset mapped onto a unique binary integer, values here shown in decimal.

The programs for A087086, there is no canonical definition to state claims against.
-/

/-! ## A087086.P17065787221275507059

`eq[A038573(n), A316556(A019565(n))]`
-/

namespace A087086.P17065787221275507059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A019565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087086.P17065787221275507059

/-! ## A087086.P8615820106349979954

`record[and(n, A004275(A195143(n)))]`
-/

namespace A087086.P8615820106349979954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A004275 (A195143 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087086.P8615820106349979954

/-! ## A087086.P2985080204934570829

`record[and(A167614(n+1), A345199(n))]`
-/

namespace A087086.P2985080204934570829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167614 (n + 1)) (A345199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087086.P2985080204934570829

/-! ## A087086.P11727693015340020587

`record[and(A046691(n)+7, A345199(n))]`
-/

namespace A087086.P11727693015340020587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046691 n + 7) (A345199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087086.P11727693015340020587

/-! ## A087086.P6163798351261487322

`lt[A240388(A051872(n)), A047201(n+4)]`
-/

namespace A087086.P6163798351261487322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240388 (A051872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087086.P6163798351261487322

/-!
# A087087: Coprime sets of integers, each subset mapped onto a unique binary integer, values here shown in decimal.

The programs for A087087, there is no canonical definition to state claims against.
-/

/-! ## A087087.P671103169330868313

`∪[A131577(n), A326675(n+1)]`
-/

namespace A087087.P671103169330868313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087087.P671103169330868313

/-! ## A087087.P12799904736967535802

`∪[A155559(n), A326675(n+1)]`
-/

namespace A087087.P12799904736967535802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087087.P12799904736967535802

/-! ## A087087.P794855040183091510

`∪[A244750(n+1), A326675(n+1)]`
-/

namespace A087087.P794855040183091510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A087087.P794855040183091510

/-! ## A087087.P8642086985642559928

`eq[A121663(A004526(n)), A271410(n)]`
-/

namespace A087087.P8642086985642559928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A004526 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087087.P8642086985642559928

/-! ## A087087.P1014499563022093444

`comp[A335237(n+2)]%∑[A316565(n+1)]`
-/

namespace A087087.P1014499563022093444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316565 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A087087.P1014499563022093444

/-! ## A087087.P7880308771992059928

`A216284(A236537(n+1))+comp[A335237(n+2)]`
-/

namespace A087087.P7880308771992059928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (A236537 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A087087.P7880308771992059928

/-! ## A087087.P17404626409359819484

`A216284(A343343(n+1))+comp[A335237(n+2)]`
-/

namespace A087087.P17404626409359819484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216284 (A343343 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A087087.P17404626409359819484

/-! ## A087087.P10012828325290212113

`comp[A335237(n+2)]*A087102(A000040(3*(n+1)))`
-/

namespace A087087.P10012828325290212113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A087102 (A000040 (3 * (n + 1))).toNat

end

end A087087.P10012828325290212113

/-! ## A087087.P14220973337860506151

`comp[A335237(n+2)]%A196042(n+1)`
-/

namespace A087087.P14220973337860506151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A196042 (n + 1))

end

end A087087.P14220973337860506151

/-! ## A087087.P17724125439028022861

`comp[A335237(A000027(n+2))]%A344950(n+1)`
-/

namespace A087087.P17724125439028022861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (A000027 (n + 2)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A344950 (n + 1))

end

end A087087.P17724125439028022861

/-!
# A087088: Positive ruler-type fractal sequence with 1's in every third position.

The programs for A087088, the canonical program `A087088.P4925167282759649030` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087088 has offset 1).

The definition of A087088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A087088.P4925167282759649030

`3+A244040(3*n)-A244040(3*(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087088

/-- `3+A244040(3*n)-A244040(3*(n+1))` -/
def P4925167282759649030.Spec : Prop :=
  ∀ n, P4925167282759649030.a n = A087088 (n + 1)

theorem P4925167282759649030.correct : P4925167282759649030.Spec := by
  intro n
  simp only [A087088, Nat.add_sub_cancel]

end A087088

/-! ## A087088.P6732311527949615779

`A335933(2*(n+1)+1)`
-/

namespace A087088.P6732311527949615779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335933 (2 * (n + 1) + 1)

end

end A087088.P6732311527949615779

namespace A087088

/-- `A335933(2*(n+1)+1)` -/
def P6732311527949615779.Spec : Prop :=
  ∀ n, P6732311527949615779.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P5889501290671838749

`Δ[a(floor(2*n/3))+n]` with `a(0)=0`
-/

namespace A087088.P5889501290671838749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊2 * ((n : ℚ) / 3)⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A087088.P5889501290671838749

namespace A087088

/-- `Δ[a(floor(2*n/3))+n]` -/
def P5889501290671838749.Spec : Prop :=
  ∀ n, P5889501290671838749.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P18355311447115100671

`3-Δ[A244040(2*n)]`
-/

namespace A087088.P18355311447115100671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A087088.P18355311447115100671

namespace A087088

/-- `3-Δ[A244040(2*n)]` -/
def P18355311447115100671.Spec : Prop :=
  ∀ n, P18355311447115100671.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P14632542490383053480

`Δ[n-ceil(-a(A002264(2*n)))]` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A087088.P14632542490383053480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (-f1 (A002264 (2 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087088.P14632542490383053480

namespace A087088

/-- `Δ[n-ceil(-a(A002264(2*n)))]` -/
def P14632542490383053480.Spec : Prop :=
  ∀ n, P14632542490383053480.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P16455980385211051896

`Δ[A244040(2*n)]*A062157(2*(n+1))+3`
-/

namespace A087088.P16455980385211051896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 (2 * (n + 1)) + 3

end

end A087088.P16455980385211051896

namespace A087088

/-- `Δ[A244040(2*n)]*A062157(2*(n+1))+3` -/
def P16455980385211051896.Spec : Prop :=
  ∀ n, P16455980385211051896.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P6638436535646220001

`Δ[A008486(n)-A244040(A008486(n))]`
-/

namespace A087088.P6638436535646220001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A244040 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087088.P6638436535646220001

namespace A087088

/-- `Δ[A008486(n)-A244040(A008486(n))]` -/
def P6638436535646220001.Spec : Prop :=
  ∀ n, P6638436535646220001.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P15499635889545179351

`A081604(Δ[A265316(n+1)])`
-/

namespace A087088.P15499635889545179351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (f1 (n + 1) - f1 n).toNat

end

end A087088.P15499635889545179351

namespace A087088

/-- `A081604(Δ[A265316(n+1)])` -/
def P15499635889545179351.Spec : Prop :=
  ∀ n, P15499635889545179351.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P942765887236688437

`A215879(Δ[A265316(n+1)])`
-/

namespace A087088.P942765887236688437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (f1 (n + 1) - f1 n).toNat

end

end A087088.P942765887236688437

namespace A087088

/-- `A215879(Δ[A265316(n+1)])` -/
def P942765887236688437.Spec : Prop :=
  ∀ n, P942765887236688437.a n = A087088 (n + 1)

end A087088

/-! ## A087088.P10440520336596726163

`A253786(Δ[A265316(n+1)])`
-/

namespace A087088.P10440520336596726163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (f1 (n + 1) - f1 n).toNat

end

end A087088.P10440520336596726163

namespace A087088

/-- `A253786(Δ[A265316(n+1)])` -/
def P10440520336596726163.Spec : Prop :=
  ∀ n, P10440520336596726163.a n = A087088 (n + 1)

end A087088

/-!
# A087090: Positive numbers n such that p=n^2+n+41 and p+2 are twin primes.

The programs for A087090, there is no canonical definition to state claims against.
-/

/-! ## A087090.P10055561824754607526

`eq[2, A166597(A202018(n))]`
-/

namespace A087090.P10055561824754607526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087090.P10055561824754607526

/-! ## A087090.P897258032624626314

`lt[A186683(n+1), A353463(A202018(n))]`
-/

namespace A087090.P897258032624626314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087090.P897258032624626314

/-! ## A087090.P16694125355978727716

`lt[A353463(n+1), A353463(A202018(n))]`
-/

namespace A087090.P16694125355978727716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087090.P16694125355978727716

/-! ## A087090.P889057333173754237

`eq[0, A274718(2*A202018(n))]`
-/

namespace A087090.P889057333173754237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274718 (2 * A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087090.P889057333173754237

/-! ## A087090.P6429516788289296827

`eq[2, A096501(A202018(n)+2)]`
-/

namespace A087090.P6429516788289296827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A202018 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087090.P6429516788289296827

/-!
# A087091: Numbers k such that p = k^2 + k + 41 and p - 2 are twin primes.

The programs for A087091, there is no canonical definition to state claims against.
-/

/-! ## A087091.P16499244671929251967

`eq[2, A166597(A202018(n)-1)]`
-/

namespace A087091.P16499244671929251967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A202018 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087091.P16499244671929251967

/-! ## A087091.P1600263818242542329

`lt[A186683(2*(n+2)), A353464(A202018(n))]`
-/

namespace A087091.P1600263818242542329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186683 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087091.P1600263818242542329

/-! ## A087091.P12262881791933918267

`lt[A353463(3*n+4), A353464(A202018(n))]`
-/

namespace A087091.P12262881791933918267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087091.P12262881791933918267

/-! ## A087091.P18041755758417082145

`eq[1, A175078(n²+41+n)]`
-/

namespace A087091.P18041755758417082145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n ^ 2 + 41 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087091.P18041755758417082145

/-! ## A087091.P17042596119781505991

`eq[1, A078772(A202018(n))]`
-/

namespace A087091.P17042596119781505991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A087091.P17042596119781505991

/-!
# A087092: Descending squares: which squares can be packed with at least 2 squares so that every square directly above a square is strictly smaller? It is conjectured that the answer is all except those in this sequence.

The programs for A087092, there is no canonical definition to state claims against.
-/

/-! ## A087092.P12132250471879628635

`lt[or(1, n), A106494(n+1)²]`
-/

namespace A087092.P12132250471879628635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106494 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087092.P12132250471879628635

/-! ## A087092.P3245691539254756351

`lt[n+3, A091694(n)²-(n+1)]`
-/

namespace A087092.P3245691539254756351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091694 n ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A087092.P3245691539254756351

/-! ## A087092.P8558270804880287497

`lt[A284825(n²), round((n-1)/2)+2]`
-/

namespace A087092.P8558270804880287497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284825 (n ^ 2 + 31)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087092.P8558270804880287497

/-! ## A087092.P11483944680545591098

`lt[A129808(p?[2*n+1]), ∏{e}[n+1, #+1]]`
-/

namespace A087092.P11483944680545591098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A087092.P11483944680545591098

/-! ## A087092.P6973092401025243885

`lt[A154513(n+2)/2, ∏{e}[n+1, #+1]/2]`
-/

namespace A087092.P6973092401025243885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154513 (n + 2) : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A087092.P6973092401025243885

/-!
# A087093: Numbers that have the same number of divisors as their digit reversal, but with different prime signatures.

The programs for A087093, there is no canonical definition to state claims against.
-/

/-! ## A087093.P16530064672041671606

`A292982(C(A051225(n+1), A124010(n+4)))`
-/

namespace A087093.P16530064672041671606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292982 (Nat.choose (A051225 (n + 1)).toNat (A124010 (n + 4)).toNat)

end

end A087093.P16530064672041671606

/-!
# A087094: a(n) = smallest k such that (10^k-1)/9 == 0 mod prime(n)^2, or 0 if no such k exists.

The programs for A087094, there is no canonical definition to state claims against.
-/

/-! ## A087094.P10085709874134106016

`p?[A069799(n+1)]*A071126(n+1)`
-/

namespace A087094.P10085709874134106016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A071126 (n + 1)

end

end A087094.P10085709874134106016

/-! ## A087094.P2589302378002892031

`p?[A085079(n+1)]*A071126(n+1)`
-/

namespace A087094.P2589302378002892031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A071126 (n + 1)

end

end A087094.P2589302378002892031

/-! ## A087094.P4254424843636000671

`p?[A225891(n+1)]*A071126(n+1)`
-/

namespace A087094.P4254424843636000671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A071126 (n + 1)

end

end A087094.P4254424843636000671

/-! ## A087094.P7228410990097559396

`p?[A295417(n+1)]*A071126(n+1)`
-/

namespace A087094.P7228410990097559396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A071126 (n + 1)

end

end A087094.P7228410990097559396

/-! ## A087094.P6710920191028271101

`record[A327277(n+1)]*A071126(n+1)`
-/

namespace A087094.P6710920191028271101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A071126 (n + 1)

end

end A087094.P6710920191028271101

/-! ## A087094.P5819421378454758162

`A006530(A073603(n+1))*A071126(n+1)`
-/

namespace A087094.P5819421378454758162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073603 (n + 1)).toNat * A071126 (n + 1)

end

end A087094.P5819421378454758162

/-! ## A087094.P10359243460859360763

`record[A006530(A016754(n))]*A071126(n+1)`
-/

namespace A087094.P10359243460859360763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A071126 (n + 1)

end

end A087094.P10359243460859360763

/-! ## A087094.P6770574027745591930

`A006530(A036689(n+1))*A071126(n+1)`
-/

namespace A087094.P6770574027745591930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036689 (n + 1)).toNat * A071126 (n + 1)

end

end A087094.P6770574027745591930

/-! ## A087094.P1282984402036955515

`A006530(record[A020639(n+2)²])*A071126(n+1)`
-/

namespace A087094.P1282984402036955515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A071126 (n + 1)

end

end A087094.P1282984402036955515

/-! ## A087094.P18134590937629532542

`A071126(n+1)*A160656(n+1)`
-/

namespace A087094.P18134590937629532542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071126 (n + 1) * A160656 (n + 1)

end

end A087094.P18134590937629532542

/-!
# A087095: a(n) = A077503(n) - n*10^d, where d = n-A055642(n), A055642(n) = number of digits in n.

The programs for A087095, there is no canonical definition to state claims against.
-/

/-! ## A087095.P11067784974687273528

`(A077503(n+1)^A136400(n))%A348783(n)`
-/

namespace A087095.P11067784974687273528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A077503 (n + 1) : ℚ) ^ (A136400 n : ℤ))) (A348783 n)

end

end A087095.P11067784974687273528

/-! ## A087095.P18024813645933792362

`(A077503(n+1)^A213217(n))%A348783(n)`
-/

namespace A087095.P18024813645933792362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A077503 (n + 1) : ℚ) ^ (A213217 n : ℤ))) (A348783 n)

end

end A087095.P18024813645933792362

/-! ## A087095.P2257611309906025749

`A000290(ceil(sqrt(∑[n]+(n+1)*10^n)))%(10^n)`
-/

namespace A087095.P2257611309906025749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) * 10 ^ n : ℕ) : ℝ)⌉.toNat) (10 ^ n : ℤ)

end

end A087095.P2257611309906025749

/-! ## A087095.P10228240141633400170

`record[A077503(n+1)-A053541(n+1)]`
-/

namespace A087095.P10228240141633400170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077503 (n + 1) - A053541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087095.P10228240141633400170

/-!
# A087097: Lunar primes (formerly called dismal primes) (cf. A087062).

The programs for A087097, there is no canonical definition to state claims against.
-/

/-! ## A087097.P8992036095600011332

`A144171(n+2)`
-/

namespace A087097.P8992036095600011332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (n + 2)

end

end A087097.P8992036095600011332

/-! ## A087097.P3066103294136236279

`eq[2, A087028(n+1)]+1`
-/

namespace A087097.P3066103294136236279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A087097.P3066103294136236279

/-! ## A087097.P12862100664571749259

`record[A144171(A080513(A004442(n)))]`
-/

namespace A087097.P12862100664571749259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P12862100664571749259

/-! ## A087097.P4970801469413572514

`record[A144171(A324347(A008619(n)))]`
-/

namespace A087097.P4970801469413572514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A324347 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P4970801469413572514

/-! ## A087097.P2344050433799312594

`record[A144171(A080513(A028242(n)))]`
-/

namespace A087097.P2344050433799312594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P2344050433799312594

/-! ## A087097.P9997224001381034946

`record[A144171(A126759(A016825(n)))]`
-/

namespace A087097.P9997224001381034946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A126759 (A016825 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P9997224001381034946

/-! ## A087097.P17944849009060726577

`record[A144171(A126759(A126759(n)))]`
-/

namespace A087097.P17944849009060726577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A126759 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P17944849009060726577

/-! ## A087097.P7841546838807412016

`record[A144171(A233583(A324347(n)))]`
-/

namespace A087097.P7841546838807412016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A233583 (A324347 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P7841546838807412016

/-! ## A087097.P16605814154412830590

`record[A144171(A233583(A344180(n)))]`
-/

namespace A087097.P16605814154412830590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A233583 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P16605814154412830590

/-! ## A087097.P891307219085208503

`record[A144171(A003056(A092486(n)))]`
-/

namespace A087097.P891307219085208503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144171 (A003056 (A092486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A087097.P891307219085208503

/-!
# A087098: Partial sums of A087100.

The programs for A087098, the canonical program `A087098.P11093039045898509139` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087098 has offset 0).

The definition of A087098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087098.P11093039045898509139

`∑[A087100(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A087098

/-- `∑[A087100(n)]` -/
def P11093039045898509139.Spec : Prop :=
  ∀ n, P11093039045898509139.a n = A087098 n

theorem P11093039045898509139.correct : P11093039045898509139.Spec := by
  intro n
  simp only [A087098]

end A087098

/-! ## A087098.P13489489683437928969

`∑[A057979(10*n+1+n)*A094024(n)]`
-/

namespace A087098.P13489489683437928969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (10 * n + 1 + n) * A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087098.P13489489683437928969

namespace A087098

/-- `∑[A057979(10*n+1+n)*A094024(n)]` -/
def P13489489683437928969.Spec : Prop :=
  ∀ n, P13489489683437928969.a n = A087098 n

end A087098

/-! ## A087098.P7869120226400718465

`∑[A057979(A017401(n))+A094024(n)-1]`
-/

namespace A087098.P7869120226400718465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A017401 n).toNat + (A094024 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087098.P7869120226400718465

namespace A087098

/-- `∑[A057979(A017401(n))+A094024(n)-1]` -/
def P7869120226400718465.Spec : Prop :=
  ∀ n, P7869120226400718465.a n = A087098 n

end A087098

/-! ## A087098.P5823774447101775442

`∑{d}[2*a(n-1), A087100(log2(#))]` with `a(0)=1`
-/

namespace A087098.P5823774447101775442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087100 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A087098.P5823774447101775442

namespace A087098

/-- `∑{d}[2*a(n-1), A087100(log2(#))]` -/
def P5823774447101775442.Spec : Prop :=
  ∀ n, P5823774447101775442.a n = A087098 n

end A087098

/-! ## A087098.P9819080502313158742

`∑{d}[A000079(n), A087100(log2(#))]`
-/

namespace A087098.P9819080502313158742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A087100 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A087098.P9819080502313158742

namespace A087098

/-- `∑{d}[A000079(n), A087100(log2(#))]` -/
def P9819080502313158742.Spec : Prop :=
  ∀ n, P9819080502313158742.a n = A087098 n

end A087098

/-!
# A087099: Partial sums of A063914.

The programs for A087099, the canonical program `A087099.P9741269906097782352` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A087099 has offset 1).

The definition of A087099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A087099.P9741269906097782352

`∑[gcd(xor(1, -n), ∑[n])+n]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A087099

/-- `∑[gcd(xor(1, -n), ∑[n])+n]` -/
def P9741269906097782352.Spec : Prop :=
  ∀ n, (P9741269906097782352.a n : ℤ) = A087099 (n + 1)

theorem P9741269906097782352.correct : P9741269906097782352.Spec := by
  intro n
  simp only [A087099, Nat.add_sub_cancel]

end A087099

/-! ## A087099.P7521164075112163113

`∑[ceil((lcm(2, n)+1+n)/2)]`
-/

namespace A087099.P7521164075112163113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P7521164075112163113

namespace A087099

/-- `∑[ceil((lcm(2, n)+1+n)/2)]` -/
def P7521164075112163113.Spec : Prop :=
  ∀ n, P7521164075112163113.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P13132498598119761966

`∑[n+1]+C(ceil(n/2), 2)`
-/

namespace A087099.P13132498598119761966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

end

end A087099.P13132498598119761966

namespace A087099

/-- `∑[n+1]+C(ceil(n/2), 2)` -/
def P13132498598119761966.Spec : Prop :=
  ∀ n, (P13132498598119761966.a n : ℤ) = A087099 (n + 1)

end A087099

/-! ## A087099.P10836558089730478347

`∑[ceil(n/2)^(n%2)+n]`
-/

namespace A087099.P10836558089730478347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ ^ (n % 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P10836558089730478347

namespace A087099

/-- `∑[ceil(n/2)^(n%2)+n]` -/
def P10836558089730478347.Spec : Prop :=
  ∀ n, P10836558089730478347.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P15271690979629574470

`∑[Δ[n²]+gcd(n, or(1, n))]/2`
-/

namespace A087099.P15271690979629574470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (Nat.gcd n (Nat.lor 1 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A087099.P15271690979629574470

namespace A087099

/-- `∑[Δ[n²]+gcd(n, or(1, n))]/2` -/
def P15271690979629574470.Spec : Prop :=
  ∀ n, P15271690979629574470.a n = (A087099 (n + 1) : ℚ)

end A087099

/-! ## A087099.P17957864444961302058

`∪[∑[n+1], ∑[n+2]]+∑[n]`
-/

namespace A087099.P17957864444961302058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n + ∑ j ∈ Finset.range (n + 1), f5 j

end

end A087099.P17957864444961302058

namespace A087099

/-- `∪[∑[n+1], ∑[n+2]]+∑[n]` -/
def P17957864444961302058.Spec : Prop :=
  ∀ n, (P17957864444961302058.a n : ℤ) = A087099 (n + 1)

end A087099

/-! ## A087099.P1179746219417573944

`∑[gcd(n+1, floor((n+1)/2))+n]`
-/

namespace A087099.P1179746219417573944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ⌊(n + 1 : ℚ) / 2⌋ + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P1179746219417573944

namespace A087099

/-- `∑[gcd(n+1, floor((n+1)/2))+n]` -/
def P1179746219417573944.Spec : Prop :=
  ∀ n, (P1179746219417573944.a n : ℤ) = A087099 (n + 1)

end A087099

/-! ## A087099.P13702820589100784871

`∑[floor((∑[n]+n²)/a(n-1))]` with `a(0)=1`
-/

namespace A087099.P13702820589100784871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2 : ℕ) : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P13702820589100784871

namespace A087099

/-- `∑[floor((∑[n]+n²)/a(n-1))]` -/
def P13702820589100784871.Spec : Prop :=
  ∀ n, P13702820589100784871.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P2129901291749247270

`∑[∑[a(n-2)-(-1)^n]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A087099.P2129901291749247270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 2) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P2129901291749247270

namespace A087099

/-- `∑[∑[a(n-2)-(-1)^n]]` -/
def P2129901291749247270.Spec : Prop :=
  ∀ n, P2129901291749247270.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P9104546986053182409

`∑[2*n-(n-1)/gcd(2, n-1)]`
-/

namespace A087099.P9104546986053182409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - ((n : ℤ) - 1 : ℚ) / (Int.gcd 2 ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P9104546986053182409

namespace A087099

/-- `∑[2*n-(n-1)/gcd(2, n-1)]` -/
def P9104546986053182409.Spec : Prop :=
  ∀ n, P9104546986053182409.a n = (A087099 (n + 1) : ℚ)

end A087099

/-! ## A087099.P1250529642519122959

`∑[2*n-(n-1)/(and(1, n)+1)]`
-/

namespace A087099.P1250529642519122959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - ((n : ℤ) - 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P1250529642519122959

namespace A087099

/-- `∑[2*n-(n-1)/(and(1, n)+1)]` -/
def P1250529642519122959.Spec : Prop :=
  ∀ n, P1250529642519122959.a n = (A087099 (n + 1) : ℚ)

end A087099

/-! ## A087099.P17150457739570473629

`∑[n^and(1, n)+2*n+1]/2`
-/

namespace A087099.P17150457739570473629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 1 n + 2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A087099.P17150457739570473629

namespace A087099

/-- `∑[n^and(1, n)+2*n+1]/2` -/
def P17150457739570473629.Spec : Prop :=
  ∀ n, P17150457739570473629.a n = (A087099 (n + 1) : ℚ)

end A087099

/-! ## A087099.P3077065622358667076

`∑[3-((n+1)%2-a(n-2))]` with `a(0)=1, a(1)=2`
-/

namespace A087099.P3077065622358667076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 - ((((n + 1) % 2 : ℕ) : ℤ) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P3077065622358667076

namespace A087099

/-- `∑[3-((n+1)%2-a(n-2))]` -/
def P3077065622358667076.Spec : Prop :=
  ∀ n, P3077065622358667076.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P5138911180512707670

`∑[2*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A087099.P5138911180512707670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P5138911180512707670

namespace A087099

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P5138911180512707670.Spec : Prop :=
  ∀ n, P5138911180512707670.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P15993636558288679461

`∑[5-a(n-1)]+a(n-2)-1` with `a(0)=1, a(1)=3`
-/

namespace A087099.P15993636558288679461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) - 1)

end

end A087099.P15993636558288679461

namespace A087099

/-- `∑[5-a(n-1)]+a(n-2)-1` -/
def P15993636558288679461.Spec : Prop :=
  ∀ n, P15993636558288679461.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P2674233563679565248

`∑[5-a(n-1)]-(1-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A087099.P2674233563679565248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (1 - a (n - 2))

end

end A087099.P2674233563679565248

namespace A087099

/-- `∑[5-a(n-1)]-(1-a(n-2))` -/
def P2674233563679565248.Spec : Prop :=
  ∀ n, P2674233563679565248.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P14465083950878207380

`∑[A063914(n+1)]`
-/

namespace A087099.P14465083950878207380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P14465083950878207380

namespace A087099

/-- `∑[A063914(n+1)]` -/
def P14465083950878207380.Spec : Prop :=
  ∀ n, P14465083950878207380.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P11386837381399374379

`∑[A152271(n)+n]`
-/

namespace A087099.P11386837381399374379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P11386837381399374379

namespace A087099

/-- `∑[A152271(n)+n]` -/
def P11386837381399374379.Spec : Prop :=
  ∀ n, P11386837381399374379.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P10590067794355308994

`A210977(n)+1+n`
-/

namespace A087099.P10590067794355308994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210977 n + 1 + (n : ℤ)

end

end A087099.P10590067794355308994

namespace A087099

/-- `A210977(n)+1+n` -/
def P10590067794355308994.Spec : Prop :=
  ∀ n, P10590067794355308994.a n = A087099 (n + 1)

end A087099

/-! ## A087099.P7184441673383671368

`∑[A195013(n+1)-1]`
-/

namespace A087099.P7184441673383671368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087099.P7184441673383671368

namespace A087099

/-- `∑[A195013(n+1)-1]` -/
def P7184441673383671368.Spec : Prop :=
  ∀ n, P7184441673383671368.a n = A087099 (n + 1)

end A087099

