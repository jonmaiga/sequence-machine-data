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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
import Seq.Opaque.C019
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
# A100800: Let f(n) = n + sum of the digits of n. If f(n) is multiple of n then a(n)= f(n) else a(n) = f(f(f(n)))... until one gets a multiple of n; a(n) = 0 if no such number exists.

The programs for A100800, there is no canonical definition to state claims against.
-/

/-! ## A100800.P6088174322896413083

`(n+1)*A100801(n+1)`
-/

namespace A100800.P6088174322896413083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A100801 (n + 1)

end

end A100800.P6088174322896413083

/-! ## A100800.P5221669813794103561

`(n+1)*p?[A094280(n+1)+1-n]`
-/

namespace A100800.P5221669813794103561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100800.P5221669813794103561

/-! ## A100800.P10364554017641653576

`(n+1)*A118377(A280351(n))`
-/

namespace A100800.P10364554017641653576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118377 (A280351 n).toNat

end

end A100800.P10364554017641653576

/-! ## A100800.P2434817937214011974

`(n+1)*A000040(Δ[lt[A025280(n+1), 7]])`
-/

namespace A100800.P2434817937214011974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100800.P2434817937214011974

/-! ## A100800.P17378986388207840220

`A066255(n+1)*A167495(A367215(n)^A326526(n))`
-/

namespace A100800.P17378986388207840220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066255 (n + 1) * A167495 (SequenceMachineLib.roundAway ((A367215 n : ℚ) ^ (A326526 n : ℤ))).toNat

end

end A100800.P17378986388207840220

/-!
# A100801: a(n) = A100800(n)/n.

The programs for A100801, there is no canonical definition to state claims against.
-/

/-! ## A100801.P12508027378543909703

`A100800(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100801.P12508027378543909703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100800 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A100801.P12508027378543909703

/-! ## A100801.P9283857302834418085

`(4*A100800(n+1))%A004767(n)`
-/

namespace A100801.P9283857302834418085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A100800 (n + 1)) (A004767 n)

end

end A100801.P9283857302834418085

/-! ## A100801.P13524849091210270383

`(n+1)^A008683(A063535(n))*A100800(n+1)`
-/

namespace A100801.P13524849091210270383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A100800 (n + 1) : ℚ)

end

end A100801.P13524849091210270383

/-! ## A100801.P6699078095312376296

`(n+1)^A008683(A000928(n+1))*A100800(n+1)`
-/

namespace A100801.P6699078095312376296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A000928 (n + 1)).toNat : ℤ) * (A100800 (n + 1) : ℚ)

end

end A100801.P6699078095312376296

/-! ## A100801.P15369580085107340981

`(n+1)^A008683(A092627(n+1))*A100800(n+1)`
-/

namespace A100801.P15369580085107340981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) * (A100800 (n + 1) : ℚ)

end

end A100801.P15369580085107340981

/-!
# A100802: a(n) = least k >= 0 such that (n+k)/2 is prime.

The programs for A100802, the canonical program `A100802.P2917269503347180124` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100802 has offset 0).

The definition of A100802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100802.P2917269503347180124

`2*A007918(A065033(n))-n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100802

/-- `2*A007918(A065033(n))-n` -/
def P2917269503347180124.Spec : Prop :=
  ∀ n, P2917269503347180124.a n = A100802 n

theorem P2917269503347180124.correct : P2917269503347180124.Spec := by
  intro n
  simp only [A100802]

end A100802

/-! ## A100802.P12743024681582516574

`2*A007918(A110654(n))-n`
-/

namespace A100802.P12743024681582516574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007918 (A110654 n).toNat - (n : ℤ)

end

end A100802.P12743024681582516574

namespace A100802

/-- `2*A007918(A110654(n))-n` -/
def P12743024681582516574.Spec : Prop :=
  ∀ n, P12743024681582516574.a n = A100802 n

end A100802

/-! ## A100802.P8102475127499980216

`2*A007918(∑[A000035(n)])-n`
-/

namespace A100802.P8102475127499980216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A100802.P8102475127499980216

namespace A100802

/-- `2*A007918(∑[A000035(n)])-n` -/
def P8102475127499980216.Spec : Prop :=
  ∀ n, P8102475127499980216.a n = A100802 n

end A100802

/-! ## A100802.P9710417350607279445

`2*A007918(A004526(n+1))-n`
-/

namespace A100802.P9710417350607279445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007918 (A004526 (n + 1)).toNat - (n : ℤ)

end

end A100802.P9710417350607279445

namespace A100802

/-- `2*A007918(A004526(n+1))-n` -/
def P9710417350607279445.Spec : Prop :=
  ∀ n, P9710417350607279445.a n = A100802 n

end A100802

/-! ## A100802.P5589783666547718323

`2*A007918(A123108(n+1))-n`
-/

namespace A100802.P5589783666547718323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007918 (A123108 (n + 1)).toNat - (n : ℤ)

end

end A100802.P5589783666547718323

namespace A100802

/-- `2*A007918(A123108(n+1))-n` -/
def P5589783666547718323.Spec : Prop :=
  ∀ n, P5589783666547718323.a n = A100802 n

end A100802

/-! ## A100802.P6818281481844433183

`2*A151800(A140106(n+1))-n`
-/

namespace A100802.P6818281481844433183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 (A140106 (n + 1)).toNat - (n : ℤ)

end

end A100802.P6818281481844433183

namespace A100802

/-- `2*A151800(A140106(n+1))-n` -/
def P6818281481844433183.Spec : Prop :=
  ∀ n, P6818281481844433183.a n = A100802 n

end A100802

/-! ## A100802.P4167875103915942472

`A100484(∑[char[A072055(n+1)]]+1)-n`
-/

namespace A100802.P4167875103915942472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n : ℤ)

end

end A100802.P4167875103915942472

namespace A100802

/-- `A100484(∑[char[A072055(n+1)]]+1)-n` -/
def P4167875103915942472.Spec : Prop :=
  ∀ n, P4167875103915942472.a n = A100802 n

end A100802

/-! ## A100802.P10322936604693855260

`A072055(∑[char[A072055(n+1)]]+1)-(n+1)`
-/

namespace A100802.P10322936604693855260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (n + 1 : ℤ)

end

end A100802.P10322936604693855260

namespace A100802

/-- `A072055(∑[char[A072055(n+1)]]+1)-(n+1)` -/
def P10322936604693855260.Spec : Prop :=
  ∀ n, P10322936604693855260.a n = A100802 n

end A100802

/-!
# A100803: A100802(m) where A100802(m) > A100802(m-1).

The programs for A100803, the canonical program `A100803.P18284078702291543981` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100803 has offset 1).

The definition of A100803 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100803.P18284078702291543981

`2*A001223(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A100803

/-- `2*A001223(n+1)-1` -/
def P18284078702291543981.Spec : Prop :=
  ∀ n, P18284078702291543981.a n = A100803 (n + 1)

theorem P18284078702291543981.correct : P18284078702291543981.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel]

end A100803

/-! ## A100803.P18219853407164586151

`val(A140299(n), 2)-1`
-/

namespace A100803.P18219853407164586151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A140299 n).toNat 2 : ℤ) - 1

end

end A100803.P18219853407164586151

namespace A100803

/-- `val(A140299(n), 2)-1` -/
def P18219853407164586151.Spec : Prop :=
  ∀ n, P18219853407164586151.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P1234529047727717170

`2*A046933(n+1)+1`
-/

namespace A100803.P1234529047727717170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046933 (n + 1) + 1

end

end A100803.P1234529047727717170

namespace A100803

/-- `2*A046933(n+1)+1` -/
def P1234529047727717170.Spec : Prop :=
  ∀ n, P1234529047727717170.a n = A100803 (n + 1)

theorem P1234529047727717170.correct : P1234529047727717170.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P1234529047727717170.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-! ## A100803.P2554983827449488075

`log2(A218075(n+1)²)-1`
-/

namespace A100803.P2554983827449488075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) ^ 2 : ℝ) - 1

end

end A100803.P2554983827449488075

namespace A100803

/-- `log2(A218075(n+1)²)-1` -/
def P2554983827449488075.Spec : Prop :=
  ∀ n, P2554983827449488075.a n = (A100803 (n + 1) : ℝ)

end A100803

/-! ## A100803.P3217277712992462087

`Δ[A001749(n+1)/2]-1`
-/

namespace A100803.P3217277712992462087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A100803.P3217277712992462087

namespace A100803

/-- `Δ[A001749(n+1)/2]-1` -/
def P3217277712992462087.Spec : Prop :=
  ∀ n, P3217277712992462087.a n = (A100803 (n + 1) : ℚ)

end A100803

/-! ## A100803.P9264662264159077129

`A004273(A001223(n+1))`
-/

namespace A100803.P9264662264159077129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001223 (n + 1)).toNat

end

end A100803.P9264662264159077129

namespace A100803

/-- `A004273(A001223(n+1))` -/
def P9264662264159077129.Spec : Prop :=
  ∀ n, P9264662264159077129.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P14903344353658745526

`A001650(A076821(n+1))`
-/

namespace A100803.P14903344353658745526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A076821 (n + 1)).toNat

end

end A100803.P14903344353658745526

namespace A100803

/-- `A001650(A076821(n+1))` -/
def P14903344353658745526.Spec : Prop :=
  ∀ n, P14903344353658745526.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P7742641452867434615

`A152204(A074927(n+1))`
-/

namespace A100803.P7742641452867434615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (A074927 (n + 1)).toNat

end

end A100803.P7742641452867434615

namespace A100803

/-- `A152204(A074927(n+1))` -/
def P7742641452867434615.Spec : Prop :=
  ∀ n, P7742641452867434615.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P1708578980132315196

`A005408(A001223(n+1)-1)`
-/

namespace A100803.P1708578980132315196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001223 (n + 1) - 1).toNat

end

end A100803.P1708578980132315196

namespace A100803

/-- `A005408(A001223(n+1)-1)` -/
def P1708578980132315196.Spec : Prop :=
  ∀ n, P1708578980132315196.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P3044530017844915254

`A014681(2*A001223(n+1))`
-/

namespace A100803.P3044530017844915254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A001223 (n + 1)).toNat

end

end A100803.P3044530017844915254

namespace A100803

/-- `A014681(2*A001223(n+1))` -/
def P3044530017844915254.Spec : Prop :=
  ∀ n, P3044530017844915254.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P3881639333783360583

`A023443(2*A001223(n+1))`
-/

namespace A100803.P3881639333783360583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A001223 (n + 1)).toNat

end

end A100803.P3881639333783360583

namespace A100803

/-- `A023443(2*A001223(n+1))` -/
def P3881639333783360583.Spec : Prop :=
  ∀ n, P3881639333783360583.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P9866003271837096646

`A103889(2*A001223(n+1))`
-/

namespace A100803.P9866003271837096646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (2 * A001223 (n + 1)).toNat

end

end A100803.P9866003271837096646

namespace A100803

/-- `A103889(2*A001223(n+1))` -/
def P9866003271837096646.Spec : Prop :=
  ∀ n, P9866003271837096646.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P9176249831592002275

`A046933(n+1)+A001223(n+1)`
-/

namespace A100803.P9176249831592002275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + A001223 (n + 1)

end

end A100803.P9176249831592002275

namespace A100803

/-- `A046933(n+1)+A001223(n+1)` -/
def P9176249831592002275.Spec : Prop :=
  ∀ n, P9176249831592002275.a n = A100803 (n + 1)

theorem P9176249831592002275.correct : P9176249831592002275.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P9176249831592002275.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-! ## A100803.P399500939622957099

`A006093(n+1)-A107471(n+1)`
-/

namespace A100803.P399500939622957099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A107471 (n + 1)

end

end A100803.P399500939622957099

namespace A100803

/-- `A006093(n+1)-A107471(n+1)` -/
def P399500939622957099.Spec : Prop :=
  ∀ n, P399500939622957099.a n = A100803 (n + 1)

theorem P399500939622957099.correct : P399500939622957099.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P399500939622957099.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A006093, A006093.P2906174024863549003.a, A107471, A107471.P390287189862035674.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, A065091, A065091.P6971844946592549357.a, A098764, A098764.P1450263935949736531.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-! ## A100803.P13013841968642220488

`A210497(n+1)-A008864(n+1)`
-/

namespace A100803.P13013841968642220488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A008864 (n + 1)

end

end A100803.P13013841968642220488

namespace A100803

/-- `A210497(n+1)-A008864(n+1)` -/
def P13013841968642220488.Spec : Prop :=
  ∀ n, P13013841968642220488.a n = A100803 (n + 1)

theorem P13013841968642220488.correct : P13013841968642220488.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P13013841968642220488.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A008864, A008864.P9177617808325052279.a, A210497, A210497.P15561998313545519789.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-! ## A100803.P13751014787562153208

`A211280(n+1)-A055670(n+1)`
-/

namespace A100803.P13751014787562153208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (n + 1) - A055670 (n + 1)

end

end A100803.P13751014787562153208

namespace A100803

/-- `A211280(n+1)-A055670(n+1)` -/
def P13751014787562153208.Spec : Prop :=
  ∀ n, P13751014787562153208.a n = A100803 (n + 1)

end A100803

/-! ## A100803.P9518933435714846114

`A123128(n+1)-A147965(n+1)`
-/

namespace A100803.P9518933435714846114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) - A147965 (n + 1)

end

end A100803.P9518933435714846114

namespace A100803

/-- `A123128(n+1)-A147965(n+1)` -/
def P9518933435714846114.Spec : Prop :=
  ∀ n, P9518933435714846114.a n = A100803 (n + 1)

theorem P9518933435714846114.correct : P9518933435714846114.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P9518933435714846114.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A123128, A123128.P14620295915267660605.a, A147965, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-! ## A100803.P7784088334153405628

`A001223(n+1)+A368748(n+1)+A080101(n+1)`
-/

namespace A100803.P7784088334153405628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A368748 (n + 1) + A080101 (n + 1))

end

end A100803.P7784088334153405628

namespace A100803

/-- `A001223(n+1)+A368748(n+1)+A080101(n+1)` -/
def P7784088334153405628.Spec : Prop :=
  ∀ n, P7784088334153405628.a n = A100803 (n + 1)

theorem P7784088334153405628.correct : P7784088334153405628.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P7784088334153405628.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A080101, A080101.P17293988866175764959.a, A368748, A368748.P2060391924120103936.a, A046933, A046933.P9479947770746769512.a, A366833, A366833.P13396481099192282929.f1, A366833.P13396481099192282929.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A024620, A024620.P8536977387799856667.a, A065515, A065515.P15129427044826637405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-! ## A100803.P8707562736441723961

`Δ[A134591(n+1)]`
-/

namespace A100803.P8707562736441723961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100803.P8707562736441723961

namespace A100803

/-- `Δ[A134591(n+1)]` -/
def P8707562736441723961.Spec : Prop :=
  ∀ n, P8707562736441723961.a n = A100803 (n + 1)

theorem P8707562736441723961.correct : P8707562736441723961.Spec := by
  intro n
  simp only [A100803, Nat.add_sub_cancel, A100803.P8707562736441723961.f1, A100803.P8707562736441723961.a, A100803.P18284078702291543981.a, A001223, A001223.P5083310856331133973.a, A134591, A134591.P13784663667261059065.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P3456970834266250440.a, A046933, A046933.P9479947770746769512.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100803

/-!
# A100806: a(1) = 1; for n>=2, a(n) = A001221(n)-th positive integer not yet in the sequence.

The programs for A100806, there is no canonical definition to state claims against.
-/

/-! ## A100806.P3288136630025759561

`A102450(A102451(n+1))`
-/

namespace A100806.P3288136630025759561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A102451 (n + 1)).toNat

end

end A100806.P3288136630025759561

/-! ## A100806.P9506078086549476648

`A102451(A102450(comp[2*n]-n))`
-/

namespace A100806.P9506078086549476648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (A102450 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)).toNat

end

end A100806.P9506078086549476648

/-! ## A100806.P15700741234960631520

`A306369(n+1)-A011730(A002445(n))`
-/

namespace A100806.P15700741234960631520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306369 (n + 1) - A011730 (A002445 n).toNat

end

end A100806.P15700741234960631520

/-! ## A100806.P931817291843278918

`A008480(A187829(n+1))+n-A325226(A132610(n))`
-/

namespace A100806.P931817291843278918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A187829 (n + 1)).toNat + (n : ℤ) - A325226 (A132610 n).toNat

end

end A100806.P931817291843278918

/-! ## A100806.P5599549801852441823

`xor(n+1, A011734(A052953(n)))`
-/

namespace A100806.P5599549801852441823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A011734 (A052953 n).toNat)

end

end A100806.P5599549801852441823

/-!
# A100807: Primes p such that either (or both) p-10 or p+10 are primes.

The programs for A100807, there is no canonical definition to state claims against.
-/

/-! ## A100807.P2368434398166935238

`∪[A015916(n+1), A092146(n+1)]`
-/

namespace A100807.P2368434398166935238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100807.P2368434398166935238

/-! ## A100807.P2805697716372524268

`∪[A015916(n+1), record[A140445(n+1)]]`
-/

namespace A100807.P2805697716372524268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100807.P2805697716372524268

/-! ## A100807.P14030247106969473386

`∪[A140445(2*n+1), record[A140445(n+2)]]`
-/

namespace A100807.P14030247106969473386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100807.P14030247106969473386

/-! ## A100807.P2455540929066426101

`∪[p?[A000040(n+1)-10], A092146(n+1)]`
-/

namespace A100807.P2455540929066426101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A100807.P2455540929066426101

/-! ## A100807.P788228623607127996

`∪[A140445(2*n+1), A140445(2*(n+1))]`
-/

namespace A100807.P788228623607127996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A100807.P788228623607127996

/-! ## A100807.P13216539901490050703

`∪[p?[A000040(n+1)+10], A087696(n+1)-5]`
-/

namespace A100807.P13216539901490050703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A100807.P13216539901490050703

/-!
# A100808: Quet transform (see A101387 for definition) of Kolakoski sequence A000002.

The programs for A100808, the canonical program `A100808.P5859117941916704897` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100808 has offset 1).

The definition of A100808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100808.P5859117941916704897

`char[A156243(n+1)]*A078880(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100808

/-- `char[A156243(n+1)]*A078880(n+1)+1` -/
def P5859117941916704897.Spec : Prop :=
  ∀ n, P5859117941916704897.a n = A100808 (n + 1)

theorem P5859117941916704897.correct : P5859117941916704897.Spec := by
  intro n
  simp only [A100808, Nat.add_sub_cancel]

end A100808

/-! ## A100808.P2892149283258682348

`A000002(n+1)+Δ[char[A074263(n+1)]]`
-/

namespace A100808.P2892149283258682348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A100808.P2892149283258682348

namespace A100808

/-- `A000002(n+1)+Δ[char[A074263(n+1)]]` -/
def P2892149283258682348.Spec : Prop :=
  ∀ n, P2892149283258682348.a n = A100808 (n + 1)

end A100808

/-! ## A100808.P12998653577870637138

`Δ[A216345(n+1)+char[A074263(n+1)]]`
-/

namespace A100808.P12998653577870637138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100808.P12998653577870637138

namespace A100808

/-- `Δ[A216345(n+1)+char[A074263(n+1)]]` -/
def P12998653577870637138.Spec : Prop :=
  ∀ n, P12998653577870637138.a n = A100808 (n + 1)

end A100808

/-! ## A100808.P16350185837432839344

`Δ[A054353(n+1)-char[A156243(n+1)]]`
-/

namespace A100808.P16350185837432839344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100808.P16350185837432839344

namespace A100808

/-- `Δ[A054353(n+1)-char[A156243(n+1)]]` -/
def P16350185837432839344.Spec : Prop :=
  ∀ n, P16350185837432839344.a n = A100808 (n + 1)

end A100808

/-! ## A100808.P5704560861210068047

`A078880(n+1)-Δ[char[A156243(n+1)]]`
-/

namespace A100808.P5704560861210068047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A100808.P5704560861210068047

namespace A100808

/-- `A078880(n+1)-Δ[char[A156243(n+1)]]` -/
def P5704560861210068047.Spec : Prop :=
  ∀ n, P5704560861210068047.a n = A100808 (n + 1)

end A100808

/-! ## A100808.P13024652892157827651

`Δ[char[A074263(n+1)]]+3-A049705(n+1)`
-/

namespace A100808.P13024652892157827651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074263 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (3 - A049705 (n + 1))

end

end A100808.P13024652892157827651

namespace A100808

/-- `Δ[char[A074263(n+1)]]+3-A049705(n+1)` -/
def P13024652892157827651.Spec : Prop :=
  ∀ n, P13024652892157827651.a n = A100808 (n + 1)

end A100808

/-! ## A100808.P10251400636828299151

`Δ[A054353(n+1)-char[A054353(2*n+1)]]`
-/

namespace A100808.P10251400636828299151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100808.P10251400636828299151

namespace A100808

/-- `Δ[A054353(n+1)-char[A054353(2*n+1)]]` -/
def P10251400636828299151.Spec : Prop :=
  ∀ n, P10251400636828299151.a n = A100808 (n + 1)

end A100808

/-! ## A100808.P5626742646817709604

`Δ[eq[1, A156728(n-a(n-1)+1)]]` with `a(0)=1`
-/

namespace A100808.P5626742646817709604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A156728 ((n : ℤ) - f3 (n - 1) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A100808.P5626742646817709604

namespace A100808

/-- `Δ[eq[1, A156728(n-a(n-1)+1)]]` -/
def P5626742646817709604.Spec : Prop :=
  ∀ n, P5626742646817709604.a n = A100808 (n + 1)

end A100808

/-!
# A100809: Numbers that are a sum of two squares and not divisible by 13.

The programs for A100809, there is no canonical definition to state claims against.
-/

/-! ## A100809.P5063287622772270917

`record[A106614(A000404(n+1))]`
-/

namespace A100809.P5063287622772270917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (A000404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100809.P5063287622772270917

/-! ## A100809.P16502266891070794022

`record[A106614(sqrt(A135784(n+1)))]`
-/

namespace A100809.P16502266891070794022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway (Real.sqrt (A135784 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100809.P16502266891070794022

/-! ## A100809.P13254572719000762635

`lt[lcm(4, A015868(n)), A063725(n)]`
-/

namespace A100809.P13254572719000762635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A015868 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A100809.P13254572719000762635

/-! ## A100809.P18167683262000142232

`record[A106614(A339273(n+1)/4)]`
-/

namespace A100809.P18167683262000142232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway ((A339273 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100809.P18167683262000142232

/-! ## A100809.P10404844325536862176

`∩[A000404(n+1), A113763(n+1)]`
-/

namespace A100809.P10404844325536862176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100809.P10404844325536862176

/-! ## A100809.P1434732752185893490

`eq[A000038(A063725(n)), A015868(n)]`
-/

namespace A100809.P1434732752185893490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A063725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100809.P1434732752185893490

/-! ## A100809.P9662392661357363144

`eq[A000038(A084888(n)), A015868(n)]`
-/

namespace A100809.P9662392661357363144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A084888 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100809.P9662392661357363144

/-! ## A100809.P1927471173034935450

`eq[A000038(A342154(n)), A015868(n)]`
-/

namespace A100809.P1927471173034935450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A342154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100809.P1927471173034935450

/-!
# A100810: a(n) = 0 if prime(n) + 2 = prime(n+1), otherwise 1.

The programs for A100810, the canonical program `A100810.P14849954687641833243` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100810 has offset 1).

The definition of A100810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100810.P13404490448061278487

`1-A100821(n+1)`
-/

namespace A100810.P13404490448061278487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100821 (n + 1)

end

end A100810.P13404490448061278487

namespace A100810

/-- `1-A100821(n+1)` -/
def P13404490448061278487.Spec : Prop :=
  ∀ n, P13404490448061278487.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P14849954687641833243

`1-A062301(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A100810

/-- `1-A062301(n+2)` -/
def P14849954687641833243.Spec : Prop :=
  ∀ n, P14849954687641833243.a n = A100810 (n + 1)

theorem P14849954687641833243.correct : P14849954687641833243.Spec := by
  intro n
  simp only [A100810, Nat.add_sub_cancel]

end A100810

/-! ## A100810.P7285758382706471531

`A163981(n+1)%2`
-/

namespace A100810.P7285758382706471531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163981 (n + 1)) 2

end

end A100810.P7285758382706471531

namespace A100810

/-- `A163981(n+1)%2` -/
def P7285758382706471531.Spec : Prop :=
  ∀ n, P7285758382706471531.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P7932508491988666904

`A331901(n+2)%3`
-/

namespace A100810.P7932508491988666904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331901 (n + 2)) 3

end

end A100810.P7932508491988666904

namespace A100810

/-- `A331901(n+2)%3` -/
def P7932508491988666904.Spec : Prop :=
  ∀ n, P7932508491988666904.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P14207899380859862605

`xor(1, A100821(1+n))`
-/

namespace A100810.P14207899380859862605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100821 (1 + n))

end

end A100810.P14207899380859862605

namespace A100810

/-- `xor(1, A100821(1+n))` -/
def P14207899380859862605.Spec : Prop :=
  ∀ n, P14207899380859862605.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P3488087356970805210

`floor(atan(A074927(n+1)))`
-/

namespace A100810.P3488087356970805210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A074927 (n + 1) : ℝ)⌋

end

end A100810.P3488087356970805210

namespace A100810

/-- `floor(atan(A074927(n+1)))` -/
def P3488087356970805210.Spec : Prop :=
  ∀ n, P3488087356970805210.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P14793665396101693663

`round(acot(A071572(n+1)))`
-/

namespace A100810.P14793665396101693663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A071572 (n + 1) : ℝ))

end

end A100810.P14793665396101693663

namespace A100810

/-- `round(acot(A071572(n+1)))` -/
def P14793665396101693663.Spec : Prop :=
  ∀ n, P14793665396101693663.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P9954079410771944068

`A082910(n+1)²%3`
-/

namespace A100810.P9954079410771944068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082910 (n + 1) ^ 2) 3

end

end A100810.P9954079410771944068

namespace A100810

/-- `A082910(n+1)²%3` -/
def P9954079410771944068.Spec : Prop :=
  ∀ n, P9954079410771944068.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P15809070991326902132

`dr(A076821(n+1))%2`
-/

namespace A100810.P15809070991326902132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A076821 (n + 1)) % 2

end

end A100810.P15809070991326902132

namespace A100810

/-- `dr(A076821(n+1))%2` -/
def P15809070991326902132.Spec : Prop :=
  ∀ n, (P15809070991326902132.a n : ℤ) = A100810 (n + 1)

end A100810

/-! ## A100810.P5791837812595859872

`1-char[A155752(n+1)]`
-/

namespace A100810.P5791837812595859872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100810.P5791837812595859872

namespace A100810

/-- `1-char[A155752(n+1)]` -/
def P5791837812595859872.Spec : Prop :=
  ∀ n, P5791837812595859872.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P13822382734072467930

`char[A047845(n+1)-n]`
-/

namespace A100810.P13822382734072467930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100810.P13822382734072467930

namespace A100810

/-- `char[A047845(n+1)-n]` -/
def P13822382734072467930.Spec : Prop :=
  ∀ n, (P13822382734072467930.a n : ℤ) = A100810 (n + 1)

end A100810

/-! ## A100810.P6645193837155903881

`char[n*A106002(n+1)]`
-/

namespace A100810.P6645193837155903881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100810.P6645193837155903881

namespace A100810

/-- `char[n*A106002(n+1)]` -/
def P6645193837155903881.Spec : Prop :=
  ∀ n, (P6645193837155903881.a n : ℤ) = A100810 (n + 1)

end A100810

/-! ## A100810.P373078311089655350

`C(2, A208936(n+1)+1)`
-/

namespace A100810.P373078311089655350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A208936 (n + 1) + 1).toNat

end

end A100810.P373078311089655350

namespace A100810

/-- `C(2, A208936(n+1)+1)` -/
def P373078311089655350.Spec : Prop :=
  ∀ n, (P373078311089655350.a n : ℤ) = A100810 (n + 1)

end A100810

/-! ## A100810.P94624670393388903

`1-C(2, A049234(n+1))`
-/

namespace A100810.P94624670393388903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A049234 (n + 1)).toNat : ℤ)

end

end A100810.P94624670393388903

namespace A100810

/-- `1-C(2, A049234(n+1))` -/
def P94624670393388903.Spec : Prop :=
  ∀ n, P94624670393388903.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P11774283420437439888

`(A175044(n+1)-1)^n`
-/

namespace A100810.P11774283420437439888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175044 (n + 1) - 1) ^ n

end

end A100810.P11774283420437439888

namespace A100810

/-- `(A175044(n+1)-1)^n` -/
def P11774283420437439888.Spec : Prop :=
  ∀ n, P11774283420437439888.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P16150480717939565850

`C(A062302(n+2), n+1)`
-/

namespace A100810.P16150480717939565850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062302 (n + 2)).toNat (n + 1)

end

end A100810.P16150480717939565850

namespace A100810

/-- `C(A062302(n+2), n+1)` -/
def P16150480717939565850.Spec : Prop :=
  ∀ n, (P16150480717939565850.a n : ℤ) = A100810 (n + 1)

end A100810

/-! ## A100810.P18043133272383479634

`1-C(n, A345366(n+1))`
-/

namespace A100810.P18043133272383479634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose n (A345366 (n + 1)).toNat : ℤ)

end

end A100810.P18043133272383479634

namespace A100810

/-- `1-C(n, A345366(n+1))` -/
def P18043133272383479634.Spec : Prop :=
  ∀ n, P18043133272383479634.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P3957366921584571866

`char[∑[A175632(n+1)]-1]`
-/

namespace A100810.P3957366921584571866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100810.P3957366921584571866

namespace A100810

/-- `char[∑[A175632(n+1)]-1]` -/
def P3957366921584571866.Spec : Prop :=
  ∀ n, (P3957366921584571866.a n : ℤ) = A100810 (n + 1)

end A100810

/-! ## A100810.P11100554194305558294

`1-char[∑[A242767(n+2)]]`
-/

namespace A100810.P11100554194305558294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A100810.P11100554194305558294

namespace A100810

/-- `1-char[∑[A242767(n+2)]]` -/
def P11100554194305558294.Spec : Prop :=
  ∀ n, P11100554194305558294.a n = A100810 (n + 1)

end A100810

/-! ## A100810.P16204543610381791496

`char[comp[A029707(n+1)-1]]`
-/

namespace A100810.P16204543610381791496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A100810.P16204543610381791496

namespace A100810

/-- `char[comp[A029707(n+1)-1]]` -/
def P16204543610381791496.Spec : Prop :=
  ∀ n, (P16204543610381791496.a n : ℤ) = A100810 (n + 1)

end A100810

/-!
# A100812: {a(n)} is monotone increasing, with a(1)=1, a(2)=3 and, for n>2, a(n) is the smallest integer such that a(n) mod a(j) is never a(i) for any pair i,j with 1<=i

The programs for A100812, there is no canonical definition to state claims against.
-/

/-! ## A100812.P10254356392817578503

`A232748(∑[p?[A076942(n+1)]])`
-/

namespace A100812.P10254356392817578503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076942 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100812.P10254356392817578503

/-! ## A100812.P16634397556464314117

`eq[n+2, A284397(3*n+1)]`
-/

namespace A100812.P16634397556464314117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284397 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A100812.P16634397556464314117

/-! ## A100812.P584378745460681316

`A002267(A277992(n+1))-2`
-/

namespace A100812.P584378745460681316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002267 (A277992 (n + 1)).toNat - 2

end

end A100812.P584378745460681316

/-! ## A100812.P16526837052415708249

`A181771(record[A070163(2*(n+1))])`
-/

namespace A100812.P16526837052415708249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070163 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181771 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100812.P16526837052415708249

/-! ## A100812.P17524294803715038795

`eq[A124151(n+1), A392413(A382356(n+1))]`
-/

namespace A100812.P17524294803715038795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392413 (A382356 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A100812.P17524294803715038795

/-!
# A100813: Smallest number in base 2 which is also prime in base 2+n, or 0 if no such number exists.

The programs for A100813, there is no canonical definition to state claims against.
-/

/-! ## A100813.P573642367527014869

`A004676(A177918(n+1)%A279398(n+1))`
-/

namespace A100813.P573642367527014869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (Int.tmod (A177918 (n + 1)) (A279398 (n + 1))).toNat

end

end A100813.P573642367527014869

/-! ## A100813.P3620645798742641505

`A008710(a(n-1))` with `a(0)=10, a(1)=11, a(2)=10, a(3)=11, a(4)=10`
-/

namespace A100813.P3620645798742641505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 11, 10, 11, 10] fun n a =>
  A008710 (a (n - 1)).toNat

end

end A100813.P3620645798742641505

/-!
# A100817: Product of the digits of n, each doubled.

The programs for A100817, the canonical program `A100817.P14953118249749826166` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100817 has offset 0).

The definition of A100817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100817.P14953118249749826166

`A007954(n)*2^A055642(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100817

/-- `A007954(n)*2^A055642(n)` -/
def P14953118249749826166.Spec : Prop :=
  ∀ n, P14953118249749826166.a n = (A100817 n : ℚ)

end A100817

/-! ## A100817.P12426135359907508902

`∏{digits}[n, 2*#]`
-/

namespace A100817.P12426135359907508902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 * x).prod

end

end A100817.P12426135359907508902

namespace A100817

/-- `∏{digits}[n, 2*#]` -/
def P12426135359907508902.Spec : Prop :=
  ∀ n, (P12426135359907508902.a n : ℤ) = A100817 n

end A100817

/-! ## A100817.P18392864276200430172

`lcm(2, ∏{digits}[n, #+#])`
-/

namespace A100817.P18392864276200430172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + x).prod

end

end A100817.P18392864276200430172

namespace A100817

/-- `lcm(2, ∏{digits}[n, #+#])` -/
def P18392864276200430172.Spec : Prop :=
  ∀ n, (P18392864276200430172.a n : ℤ) = A100817 n

end A100817

/-! ## A100817.P18086941683124622676

`abs(∏{digits}[n, -(#+#)])`
-/

namespace A100817.P18086941683124622676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -(x + x : ℤ)).prod|

end

end A100817.P18086941683124622676

namespace A100817

/-- `abs(∏{digits}[n, -(#+#)])` -/
def P18086941683124622676.Spec : Prop :=
  ∀ n, P18086941683124622676.a n = A100817 n

end A100817

/-! ## A100817.P5003937572810589439

`sqrt(∏{digits}[n, (#+#)²])`
-/

namespace A100817.P5003937572810589439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x + x) ^ 2).prod : ℕ) : ℝ)

end

end A100817.P5003937572810589439

namespace A100817

/-- `sqrt(∏{digits}[n, (#+#)²])` -/
def P5003937572810589439.Spec : Prop :=
  ∀ n, P5003937572810589439.a n = (A100817 n : ℝ)

end A100817

/-! ## A100817.P15608485351805679591

`and(-2, ∏{digits}[n, #+#])`
-/

namespace A100817.P15608485351805679591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + x).prod : ℕ) : ℤ)

end

end A100817.P15608485351805679591

namespace A100817

/-- `and(-2, ∏{digits}[n, #+#])` -/
def P15608485351805679591.Spec : Prop :=
  ∀ n, P15608485351805679591.a n = A100817 n

end A100817

/-! ## A100817.P15924761181173881387

`or(1, ∏{digits}[n, #+#])-1`
-/

namespace A100817.P15924761181173881387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + x).prod : ℤ) - 1

end

end A100817.P15924761181173881387

namespace A100817

/-- `or(1, ∏{digits}[n, #+#])-1` -/
def P15924761181173881387.Spec : Prop :=
  ∀ n, P15924761181173881387.a n = A100817 n

end A100817

/-! ## A100817.P16976743375171448064

`(A344511(n)+1)*A007954(n)`
-/

namespace A100817.P16976743375171448064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344511 n + 1) * A007954 n

end

end A100817.P16976743375171448064

namespace A100817

/-- `(A344511(n)+1)*A007954(n)` -/
def P16976743375171448064.Spec : Prop :=
  ∀ n, P16976743375171448064.a n = A100817 n

end A100817

/-!
# A100818: For a given unrestricted partition pi, let P(pi)=lambda(pi), if mu(pi)=0. If mu(pi)>0 then let P(pi)=nu(pi), where nu(pi) is the number of parts of pi greater than mu(pi), mu(pi) is the number of ones in pi and lambda(pi) is the largest part of pi.

The programs for A100818, there is no canonical definition to state claims against.
-/

/-! ## A100818.P12953976101383852043

`A000041(n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A100818.P12953976101383852043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000041 (n + 1) - a (n - 1)

end

end A100818.P12953976101383852043

/-! ## A100818.P756342235290021699

`A087787((n+1)%(2*n+1))`
-/

namespace A100818.P756342235290021699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 ((n + 1) % (2 * n + 1))

end

end A100818.P756342235290021699

/-! ## A100818.P14959657210821445326

`record[A035363(n)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A100818.P14959657210821445326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A100818.P14959657210821445326

/-! ## A100818.P18266937210752389043

`floor(A000041(2*n-(n-1))-a(n-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A100818.P18266937210752389043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000041 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - a (n - 1)

end

end A100818.P18266937210752389043

/-! ## A100818.P14582940155683266609

`A087787(A087156(n+1))`
-/

namespace A100818.P14582940155683266609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (A087156 (n + 1)).toNat

end

end A100818.P14582940155683266609

/-! ## A100818.P10283209449296001152

`A087787(A199969(n+2))`
-/

namespace A100818.P10283209449296001152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (A199969 (n + 2)).toNat

end

end A100818.P10283209449296001152

/-! ## A100818.P14501231859789172280

`A087787(A000038(n)+1+n)`
-/

namespace A100818.P14501231859789172280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (A000038 n + 1 + (n : ℤ)).toNat

end

end A100818.P14501231859789172280

/-! ## A100818.P8182481942749452356

`A182712(A057427(n)+2+n)`
-/

namespace A100818.P8182481942749452356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (A057427 n + 2 + (n : ℤ)).toNat

end

end A100818.P8182481942749452356

/-! ## A100818.P12499678294139509117

`A087787(n/A028310(n)+n)`
-/

namespace A100818.P12499678294139509117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ) + (n : ℚ))).toNat

end

end A100818.P12499678294139509117

/-! ## A100818.P15761390943491843935

`A087787(2*n+1-A028310(n))`
-/

namespace A100818.P15761390943491843935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 ((2 * n + 1 : ℤ) - A028310 n).toNat

end

end A100818.P15761390943491843935

/-! ## A100818.P7095907983295075468

`Δ[A024786(n+2)-A208645(2*n)]`
-/

namespace A100818.P7095907983295075468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) - A208645 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100818.P7095907983295075468

/-! ## A100818.P1738284910325066156

`A326956(2*n+1)+A087787(n+1)`
-/

namespace A100818.P1738284910325066156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326956 (2 * n + 1) + A087787 (n + 1)

end

end A100818.P1738284910325066156

/-! ## A100818.P12720462460361267529

`A087787(n+1)+A000122(2*n)*A000122(3*n)`
-/

namespace A100818.P12720462460361267529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087787 (n + 1) + A000122 (2 * n) * A000122 (3 * n)

end

end A100818.P12720462460361267529

/-! ## A100818.P17449568345338561248

`A103424(2*n)+A087787(n+1)`
-/

namespace A100818.P17449568345338561248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103424 (2 * n) + A087787 (n + 1)

end

end A100818.P17449568345338561248

/-! ## A100818.P15394532831981759374

`record[A026807(n+1)]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A100818.P15394532831981759374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A100818.P15394532831981759374

/-!
# A100819: Composite numbers whose prime factors are twin primes.

The programs for A100819, there is no canonical definition to state claims against.
-/

/-! ## A100819.P4173227746136643701

`record[A072963(A005381(n+1))]`
-/

namespace A100819.P4173227746136643701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A005381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P4173227746136643701

/-! ## A100819.P7753801998797697151

`record[A072963(A009188(n+1))]`
-/

namespace A100819.P7753801998797697151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A009188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P7753801998797697151

/-! ## A100819.P45831482008685018

`record[A072963(A071904(n+1))]`
-/

namespace A100819.P45831482008685018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A071904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P45831482008685018

/-! ## A100819.P13442956264812424520

`record[A072963(A014076(n+2))]`
-/

namespace A100819.P13442956264812424520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A014076 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P13442956264812424520

/-! ## A100819.P17205635851391689250

`record[A072963(A068780(n+2))]`
-/

namespace A100819.P17205635851391689250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A068780 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P17205635851391689250

/-! ## A100819.P5900997653584407670

`record[A072963(A255763(n+2))]`
-/

namespace A100819.P5900997653584407670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A255763 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P5900997653584407670

/-! ## A100819.P13410156934878074551

`record[A072963(A002808(n+4))]`
-/

namespace A100819.P13410156934878074551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A002808 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P13410156934878074551

/-! ## A100819.P11806404951925436123

`record[A072963(A018252(n+5))]`
-/

namespace A100819.P11806404951925436123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A018252 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100819.P11806404951925436123

/-! ## A100819.P5581277314398806846

`filter[A062505(n+1), A066247(#)]`
-/

namespace A100819.P5581277314398806846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A100819.P5581277314398806846

/-! ## A100819.P6307357830341761301

`filter[A062505(n+1), A202238(#)]`
-/

namespace A100819.P6307357830341761301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A100819.P6307357830341761301

/-!
# A100820: Number of odd numbers between prime(n) and prime(n+1).

The programs for A100820, the canonical program `A100820.P11982638449188634560` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100820 has offset 1).

The definition of A100820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100820.P11982638449188634560

`floor(A046933(n+1)/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100820

/-- `floor(A046933(n+1)/2)` -/
def P11982638449188634560.Spec : Prop :=
  ∀ n, P11982638449188634560.a n = A100820 (n + 1)

theorem P11982638449188634560.correct : P11982638449188634560.Spec := by
  intro n
  simp only [A100820, Nat.add_sub_cancel]

end A100820

/-! ## A100820.P12492624973064928242

`floor((A001223(n+1)-1)/2)`
-/

namespace A100820.P12492624973064928242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001223 (n + 1) - 1 : ℚ) / 2⌋

end

end A100820.P12492624973064928242

namespace A100820

/-- `floor((A001223(n+1)-1)/2)` -/
def P12492624973064928242.Spec : Prop :=
  ∀ n, P12492624973064928242.a n = A100820 (n + 1)

theorem P12492624973064928242.correct : P12492624973064928242.Spec := by
  intro n
  simp only [A100820, Nat.add_sub_cancel, A100820.P12492624973064928242.a, A100820.P11982638449188634560.a, A001223, A001223.P5083310856331133973.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100820

/-! ## A100820.P5631967767496032856

`A028334(ceil(sqrt(n²+4)))-1`
-/

namespace A100820.P5631967767496032856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat - 1

end

end A100820.P5631967767496032856

namespace A100820

/-- `A028334(ceil(sqrt(n²+4)))-1` -/
def P5631967767496032856.Spec : Prop :=
  ∀ n, P5631967767496032856.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P7536836419965927166

`A004524(A046933(n+1))`
-/

namespace A100820.P7536836419965927166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A046933 (n + 1)).toNat

end

end A100820.P7536836419965927166

namespace A100820

/-- `A004524(A046933(n+1))` -/
def P7536836419965927166.Spec : Prop :=
  ∀ n, P7536836419965927166.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P10989081269903012479

`A002265(A100803(n+1))`
-/

namespace A100820.P10989081269903012479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A100803 (n + 1)).toNat

end

end A100820.P10989081269903012479

namespace A100820

/-- `A002265(A100803(n+1))` -/
def P10989081269903012479.Spec : Prop :=
  ∀ n, P10989081269903012479.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P356560953683451981

`A070139(A076821(n+1))`
-/

namespace A100820.P356560953683451981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070139 (A076821 (n + 1)).toNat

end

end A100820.P356560953683451981

namespace A100820

/-- `A070139(A076821(n+1))` -/
def P356560953683451981.Spec : Prop :=
  ∀ n, P356560953683451981.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P8392171727189164184

`A078898(A001223(n+1))-1`
-/

namespace A100820.P8392171727189164184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A001223 (n + 1)).toNat - 1

end

end A100820.P8392171727189164184

namespace A100820

/-- `A078898(A001223(n+1))-1` -/
def P8392171727189164184.Spec : Prop :=
  ∀ n, P8392171727189164184.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P17672412290464588789

`A078444(n+1)-A000040(n+1)`
-/

namespace A100820.P17672412290464588789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078444 (n + 1) - A000040 (n + 1)

end

end A100820.P17672412290464588789

namespace A100820

/-- `A078444(n+1)-A000040(n+1)` -/
def P17672412290464588789.Spec : Prop :=
  ∀ n, P17672412290464588789.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P9543690380012938136

`A005097(n+1)-A111333(n+1)`
-/

namespace A100820.P9543690380012938136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A111333 (n + 1)

end

end A100820.P9543690380012938136

namespace A100820

/-- `A005097(n+1)-A111333(n+1)` -/
def P9543690380012938136.Spec : Prop :=
  ∀ n, P9543690380012938136.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P8851152534323361522

`A067076(n+1)-A102781(n+1)`
-/

namespace A100820.P8851152534323361522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - A102781 (n + 1)

end

end A100820.P8851152534323361522

namespace A100820

/-- `A067076(n+1)-A102781(n+1)` -/
def P8851152534323361522.Spec : Prop :=
  ∀ n, P8851152534323361522.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P616992607535663605

`A162735(n+1)-A055670(n+1)`
-/

namespace A100820.P616992607535663605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1) - A055670 (n + 1)

end

end A100820.P616992607535663605

namespace A100820

/-- `A162735(n+1)-A055670(n+1)` -/
def P616992607535663605.Spec : Prop :=
  ∀ n, P616992607535663605.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P15625028760765817856

`A098090(n+1)-A124678(n+1)`
-/

namespace A100820.P15625028760765817856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - A124678 (n + 1)

end

end A100820.P15625028760765817856

namespace A100820

/-- `A098090(n+1)-A124678(n+1)` -/
def P15625028760765817856.Spec : Prop :=
  ∀ n, P15625028760765817856.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P11942597363917162963

`A165972(n+1)-A162735(n+1)`
-/

namespace A100820.P11942597363917162963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1) - A162735 (n + 1)

end

end A100820.P11942597363917162963

namespace A100820

/-- `A165972(n+1)-A162735(n+1)` -/
def P11942597363917162963.Spec : Prop :=
  ∀ n, P11942597363917162963.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P18352900413283108465

`A062047(n+1)/A162735(n+1)`
-/

namespace A100820.P18352900413283108465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062047 (n + 1) : ℚ) / (A162735 (n + 1) : ℚ)

end

end A100820.P18352900413283108465

namespace A100820

/-- `A062047(n+1)/A162735(n+1)` -/
def P18352900413283108465.Spec : Prop :=
  ∀ n, P18352900413283108465.a n = (A100820 (n + 1) : ℚ)

end A100820

/-! ## A100820.P3471702113933292996

`A062047(n+1)%A078444(n+1)`
-/

namespace A100820.P3471702113933292996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062047 (n + 1)) (A078444 (n + 1))

end

end A100820.P3471702113933292996

namespace A100820

/-- `A062047(n+1)%A078444(n+1)` -/
def P3471702113933292996.Spec : Prop :=
  ∀ n, P3471702113933292996.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P203472782613440906

`A283623(n+1)%A111333(n+1)`
-/

namespace A100820.P203472782613440906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283623 (n + 1)) (A111333 (n + 1))

end

end A100820.P203472782613440906

namespace A100820

/-- `A283623(n+1)%A111333(n+1)` -/
def P203472782613440906.Spec : Prop :=
  ∀ n, P203472782613440906.a n = A100820 (n + 1)

end A100820

/-! ## A100820.P5460615130684776811

`(A124434(n+1)-A001043(n+1))/A001043(n+1)`
-/

namespace A100820.P5460615130684776811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124434 (n + 1) - A001043 (n + 1) : ℚ) / (A001043 (n + 1) : ℚ)

end

end A100820.P5460615130684776811

namespace A100820

/-- `(A124434(n+1)-A001043(n+1))/A001043(n+1)` -/
def P5460615130684776811.Spec : Prop :=
  ∀ n, P5460615130684776811.a n = (A100820 (n + 1) : ℚ)

end A100820

/-! ## A100820.P16680700438884160117

`Δ[A129768(n+1)]`
-/

namespace A100820.P16680700438884160117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100820.P16680700438884160117

namespace A100820

/-- `Δ[A129768(n+1)]` -/
def P16680700438884160117.Spec : Prop :=
  ∀ n, P16680700438884160117.a n = A100820 (n + 1)

end A100820

/-!
# A100821: a(n) = 1 if prime(n) + 2 = prime(n+1), otherwise 0.

The programs for A100821, the canonical program `A100821.P8316936517107752978` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100821 has offset 1).

The definition of A100821 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062301, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A100821.P8316936517107752978

`A062301(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A100821

/-- `A062301(n+2)` -/
def P8316936517107752978.Spec : Prop :=
  ∀ n, P8316936517107752978.a n = A100821 (n + 1)

theorem P8316936517107752978.correct : P8316936517107752978.Spec := by
  intro n
  simp only [A100821, Nat.add_sub_cancel]

end A100821

/-! ## A100821.P115697533211136597

`1-A100810(n+1)`
-/

namespace A100821.P115697533211136597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100810 (n + 1)

end

end A100821.P115697533211136597

namespace A100821

/-- `1-A100810(n+1)` -/
def P115697533211136597.Spec : Prop :=
  ∀ n, P115697533211136597.a n = A100821 (n + 1)

theorem P115697533211136597.correct : P115697533211136597.Spec := by
  intro n
  simp only [A100821, Nat.add_sub_cancel, A100821.P115697533211136597.a, A100821.P8316936517107752978.a, A062301, A062301.P7583159109600131455.a, A100810, A100810.P14849954687641833243.a, A010051, A010051.P15078252821583414300.a, A075526, A075526.P13453056913313804413.a, A008578, A008578.P3639467937083264764.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A100821

/-! ## A100821.P17488619013058379388

`val(p?[a(n-1)+2]+2, p?[2*n+1])` with `a(0)=2, a(1)=3`
-/

namespace A100821.P17488619013058379388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A100821.P17488619013058379388

namespace A100821

/-- `val(p?[a(n-1)+2]+2, p?[2*n+1])` -/
def P17488619013058379388.Spec : Prop :=
  ∀ n, (P17488619013058379388.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P4884587532317183805

`val(p?[round(8*n/7)]+9, (p?[2*n+1]+7)/2)`
-/

namespace A100821.P4884587532317183805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 9).toNat (SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 7 : ℚ) / 2)).toNat

end

end A100821.P4884587532317183805

namespace A100821

/-- `val(p?[round(8*n/7)]+9, (p?[2*n+1]+7)/2)` -/
def P4884587532317183805.Spec : Prop :=
  ∀ n, (P4884587532317183805.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P4716170797962368518

`floor((p?[2*n+1]-(p?[xor(1, n)+1]+1))^(1-n))`
-/

namespace A100821.P4716170797962368518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1 : ℤ) : ℚ) ^ (1 - (n : ℤ) : ℤ)⌋

end

end A100821.P4716170797962368518

namespace A100821

/-- `floor((p?[2*n+1]-(p?[xor(1, n)+1]+1))^(1-n))` -/
def P4716170797962368518.Spec : Prop :=
  ∀ n, P4716170797962368518.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P17758764112634376281

`round((p?[2*n+1]-(p?[xor(1, n)+1]+1))^(1-n))`
-/

namespace A100821.P17758764112634376281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1 : ℤ) : ℚ) ^ (1 - (n : ℤ) : ℤ))

end

end A100821.P17758764112634376281

namespace A100821

/-- `round((p?[2*n+1]-(p?[xor(1, n)+1]+1))^(1-n))` -/
def P17758764112634376281.Spec : Prop :=
  ∀ n, P17758764112634376281.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P14011792854948843870

`floor((p?[2*n+1]-(p?[round(8*n/7)]+1))^(1-n))`
-/

namespace A100821.P14011792854948843870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) : ℚ) ^ (1 - (n : ℤ) : ℤ)⌋

end

end A100821.P14011792854948843870

namespace A100821

/-- `floor((p?[2*n+1]-(p?[round(8*n/7)]+1))^(1-n))` -/
def P14011792854948843870.Spec : Prop :=
  ∀ n, P14011792854948843870.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P7672742329468782060

`round((p?[2*n+1]-(p?[round(8*n/7)]+1))^(1-n))`
-/

namespace A100821.P7672742329468782060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1) : ℚ) ^ (1 - (n : ℤ) : ℤ))

end

end A100821.P7672742329468782060

namespace A100821

/-- `round((p?[2*n+1]-(p?[round(8*n/7)]+1))^(1-n))` -/
def P7672742329468782060.Spec : Prop :=
  ∀ n, P7672742329468782060.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P5783521018648958672

`(1-floor((p?[2*n+1]-3)/(p?[round(8*n/7)]+1)))%(n+1)`
-/

namespace A100821.P5783521018648958672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ⌊((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1 : ℚ)⌋) (n + 1 : ℤ)

end

end A100821.P5783521018648958672

namespace A100821

/-- `(1-floor((p?[2*n+1]-3)/(p?[round(8*n/7)]+1)))%(n+1)` -/
def P5783521018648958672.Spec : Prop :=
  ∀ n, P5783521018648958672.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P13698718315565481724

`char[A155752(n+1)]`
-/

namespace A100821.P13698718315565481724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100821.P13698718315565481724

namespace A100821

/-- `char[A155752(n+1)]` -/
def P13698718315565481724.Spec : Prop :=
  ∀ n, (P13698718315565481724.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P6078387155837366747

`val(A163981(n+1), 2)`
-/

namespace A100821.P6078387155837366747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A163981 (n + 1)).toNat 2

end

end A100821.P6078387155837366747

namespace A100821

/-- `val(A163981(n+1), 2)` -/
def P6078387155837366747.Spec : Prop :=
  ∀ n, (P6078387155837366747.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P7489312683924417857

`val(A082910(n+1), 3)`
-/

namespace A100821.P7489312683924417857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082910 (n + 1)).toNat 3

end

end A100821.P7489312683924417857

namespace A100821

/-- `val(A082910(n+1), 3)` -/
def P7489312683924417857.Spec : Prop :=
  ∀ n, (P7489312683924417857.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P4356565547848429399

`C(2, A049234(n+1))`
-/

namespace A100821.P4356565547848429399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A049234 (n + 1)).toNat

end

end A100821.P4356565547848429399

namespace A100821

/-- `C(2, A049234(n+1))` -/
def P4356565547848429399.Spec : Prop :=
  ∀ n, (P4356565547848429399.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P1953066508234975559

`7%A175191(n+1)`
-/

namespace A100821.P1953066508234975559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A175191 (n + 1))

end

end A100821.P1953066508234975559

namespace A100821

/-- `7%A175191(n+1)` -/
def P1953066508234975559.Spec : Prop :=
  ∀ n, P1953066508234975559.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P4345970155602453396

`C(n, A345366(n+1))`
-/

namespace A100821.P4345970155602453396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A345366 (n + 1)).toNat

end

end A100821.P4345970155602453396

namespace A100821

/-- `C(n, A345366(n+1))` -/
def P4345970155602453396.Spec : Prop :=
  ∀ n, (P4345970155602453396.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P14942731357330886928

`char[∑[A242767(n+2)]]`
-/

namespace A100821.P14942731357330886928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100821.P14942731357330886928

namespace A100821

/-- `char[∑[A242767(n+2)]]` -/
def P14942731357330886928.Spec : Prop :=
  ∀ n, (P14942731357330886928.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P17065494352957619466

`floor(1/A074927(n+1))`
-/

namespace A100821.P17065494352957619466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A074927 (n + 1) : ℚ)⌋

end

end A100821.P17065494352957619466

namespace A100821

/-- `floor(1/A074927(n+1))` -/
def P17065494352957619466.Spec : Prop :=
  ∀ n, P17065494352957619466.a n = A100821 (n + 1)

end A100821

/-! ## A100821.P16144124740337077861

`char[A029707(n+1)-1]`
-/

namespace A100821.P16144124740337077861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100821.P16144124740337077861

namespace A100821

/-- `char[A029707(n+1)-1]` -/
def P16144124740337077861.Spec : Prop :=
  ∀ n, (P16144124740337077861.a n : ℤ) = A100821 (n + 1)

end A100821

/-! ## A100821.P6915747348867553725

`char[A237259(n+1)-1]`
-/

namespace A100821.P6915747348867553725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237259 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A100821.P6915747348867553725

namespace A100821

/-- `char[A237259(n+1)-1]` -/
def P6915747348867553725.Spec : Prop :=
  ∀ n, (P6915747348867553725.a n : ℤ) = A100821 (n + 1)

end A100821

/-!
# A100822: Triangle read by rows: T(n,k) is the number of deco polyominoes of height n with k cells in the first column. (A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column).

The programs for A100822, there is no canonical definition to state claims against.
-/

/-! ## A100822.P8562515000460646893

`A054115(n+1)`
-/

namespace A100822.P8562515000460646893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 (n + 1)

end

end A100822.P8562515000460646893

/-! ## A100822.P7032371873553468041

`abs(Δ[-∑[A054115(n)]])`
-/

namespace A100822.P7032371873553468041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100822.P7032371873553468041

/-! ## A100822.P18085046462351161930

`or(char[1], A054115(-xor(n, -1)))`
-/

namespace A100822.P18085046462351161930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054115 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A100822.P18085046462351161930

/-! ## A100822.P1890755589609097729

`(A054115(ϕ²-(ϕ-n))^(1/2))²`
-/

namespace A100822.P1890755589609097729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A054115 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A100822.P1890755589609097729

/-! ## A100822.P18267149778057982121

`gcd(C(2, n), A054115(A008619(2*n)))`
-/

namespace A100822.P18267149778057982121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A054115 (A008619 (2 * n)).toNat)

end

end A100822.P18267149778057982121

/-! ## A100822.P6658163717387443772

`abs(A054115(-xor(n, -1))-A000038(n))`
-/

namespace A100822.P6658163717387443772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054115 (-Int.xor (n : ℤ) (-1)).toNat - A000038 n|

end

end A100822.P6658163717387443772

/-! ## A100822.P2952660578703617301

`A054115(-xor(n, -1))%∑[A000032(n)]`
-/

namespace A100822.P2952660578703617301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054115 (-Int.xor (n : ℤ) (-1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100822.P2952660578703617301

/-! ## A100822.P2262358570456182456

`gcd(A054115(ϕ²-(ϕ-n)), A130706(n))`
-/

namespace A100822.P2262358570456182456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054115 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A130706 n)

end

end A100822.P2262358570456182456

/-! ## A100822.P3124380619153180040

`A054115(ϕ²-(ϕ-n))-val(A000032(n), 5)`
-/

namespace A100822.P3124380619153180040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054115 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - (SequenceMachineLib.valuation (A000032 n).toNat 5 : ℤ)

end

end A100822.P3124380619153180040

/-! ## A100822.P11461945312300873925

`A007318(∑[n]-n)*A054115(ϕ²-(ϕ-n))`
-/

namespace A100822.P11461945312300873925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) * A054115 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

end

end A100822.P11461945312300873925

/-!
# A100823: G.f.: Product_{k>0} (1+x^k)/((1-x^k)*(1+x^(3k))*(1+x^(5k))).

The programs for A100823, there is no canonical definition to state claims against.
-/

/-! ## A100823.P11921445619841549133

`A102346(n)-A178489(A184955(n))`
-/

namespace A100823.P11921445619841549133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102346 n - A178489 (A184955 n).toNat

end

end A100823.P11921445619841549133

/-! ## A100823.P15516235836771637458

`A102346(n)-A025466(A069646(n))`
-/

namespace A100823.P15516235836771637458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102346 n - A025466 (A069646 n).toNat

end

end A100823.P15516235836771637458

/-! ## A100823.P9998945681909414200

`A102346(n)-A185284(A020742(n))`
-/

namespace A100823.P9998945681909414200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102346 n - A185284 (A020742 n).toNat

end

end A100823.P9998945681909414200

/-! ## A100823.P4835470339305757793

`A102346(n)-A185284(A022819(n))`
-/

namespace A100823.P4835470339305757793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102346 n - A185284 (A022819 n).toNat

end

end A100823.P4835470339305757793

/-! ## A100823.P1565006402310700005

`A102346(n)+A030201(A211924(n+1))`
-/

namespace A100823.P1565006402310700005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102346 n + A030201 (A211924 (n + 1)).toNat

end

end A100823.P1565006402310700005

/-!
# A100824: Number of partitions of n with at most one odd part.

The programs for A100824, there is no canonical definition to state claims against.
-/

/-! ## A100824.P8070623776789096493

`Δ[A014153(A004526(n))-A035363(n)]`
-/

namespace A100824.P8070623776789096493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (A004526 n).toNat - A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100824.P8070623776789096493

/-! ## A100824.P5464535229017093991

`A035363(n)+∑[A035363(n)]*A000035(n)`
-/

namespace A100824.P5464535229017093991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A000035 n

end

end A100824.P5464535229017093991

/-! ## A100824.P14111172291090053007

`A035363(n)+A025065(n)%A025065(n+1)`
-/

namespace A100824.P14111172291090053007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + Int.tmod (A025065 n) (A025065 (n + 1))

end

end A100824.P14111172291090053007

/-! ## A100824.P9339567189497290605

`A054225(A110611(n+1)-A049778(n+1))`
-/

namespace A100824.P9339567189497290605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A110611 (n + 1) - A049778 (n + 1)).toNat

end

end A100824.P9339567189497290605

/-! ## A100824.P6636267711359374433

`A201376(A114220(n+1))`
-/

namespace A100824.P6636267711359374433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201376 (A114220 (n + 1)).toNat

end

end A100824.P6636267711359374433

/-! ## A100824.P3237866996280577796

`A201376(A055802(n+2))`
-/

namespace A100824.P3237866996280577796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201376 (A055802 (n + 2)).toNat

end

end A100824.P3237866996280577796

/-! ## A100824.P2331016791379425032

`A054225(lt[A007318(n+1), 2])`
-/

namespace A100824.P2331016791379425032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A100824.P2331016791379425032

/-! ## A100824.P11850810838541561256

`A292508(A165157(n+1))`
-/

namespace A100824.P11850810838541561256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A165157 (n + 1)).toNat

end

end A100824.P11850810838541561256

/-! ## A100824.P8568345658503564951

`A054225(eq[A025581(n)², A025581(n)])`
-/

namespace A100824.P8568345658503564951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100824.P8568345658503564951

/-! ## A100824.P8642061176051767491

`A346426(C(∑[n%2], 2)+n)`
-/

namespace A100824.P8642061176051767491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n)

end

end A100824.P8642061176051767491

/-! ## A100824.P13532236846707983461

`A346426(lt[A117316(n), 2])`
-/

namespace A100824.P13532236846707983461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117316 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A100824.P13532236846707983461

/-! ## A100824.P1461652628743514988

`A346426(eq[A025581(n)², A025581(n)])`
-/

namespace A100824.P1461652628743514988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100824.P1461652628743514988

/-! ## A100824.P9629634573226631258

`A346426(lt[A056861(n+2), A056861(n+4)])`
-/

namespace A100824.P9629634573226631258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A100824.P9629634573226631258

/-! ## A100824.P8964126894027949501

`A346426(eq[A033306(n), A056860(n+1)])`
-/

namespace A100824.P8964126894027949501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100824.P8964126894027949501

/-! ## A100824.P3060428039946448096

`A103919(∑[n]+n%2)`
-/

namespace A100824.P3060428039946448096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j + n % 2)

end

end A100824.P3060428039946448096

/-! ## A100824.P12055131916577949413

`A103919(∑[n]+and(1, n))`
-/

namespace A100824.P12055131916577949413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 n)

end

end A100824.P12055131916577949413

/-! ## A100824.P4788276125659838309

`A103919(∑[A014681(n)])`
-/

namespace A100824.P4788276125659838309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A100824.P4788276125659838309

/-! ## A100824.P5451899320859147078

`A103919(A000035(n)+∑[n])`
-/

namespace A100824.P5451899320859147078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A000035 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A100824.P5451899320859147078

/-! ## A100824.P14732393280398422839

`A103919(A245842(∑[n]+1)+∑[n])`
-/

namespace A100824.P14732393280398422839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A245842 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A100824.P14732393280398422839

/-! ## A100824.P7451381582150237130

`A103919(A000217(n)+A000035(n))`
-/

namespace A100824.P7451381582150237130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103919 (A000217 n + A000035 n).toNat

end

end A100824.P7451381582150237130

/-!
# A100827: Highly cototient numbers: records for a(n) in A063741.

The programs for A100827, there is no canonical definition to state claims against.
-/

/-! ## A100827.P18300390456094847467

`abs(1-A063741(A101373(n+1)))+1`
-/

namespace A100827.P18300390456094847467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A063741 (A101373 (n + 1)).toNat| + 1

end

end A100827.P18300390456094847467

/-! ## A100827.P12561007714094311080

`A063741(A101373(n%a(n-1)+1))` with `a(0)=2`
-/

namespace A100827.P12561007714094311080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A063741 (A101373 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat).toNat

end

end A100827.P12561007714094311080

/-! ## A100827.P9504430115888077247

`A063741(A101373(n+1))+A000038(n)`
-/

namespace A100827.P9504430115888077247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + A000038 n

end

end A100827.P9504430115888077247

/-! ## A100827.P5322952571317881684

`A063741(A101373(n+1))+1-A158388(n)`
-/

namespace A100827.P5322952571317881684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + (1 - A158388 n)

end

end A100827.P5322952571317881684

/-! ## A100827.P7757823605559969922

`A063741(A101373(n+1))+2*A000007(n)`
-/

namespace A100827.P7757823605559969922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + 2 * A000007 n

end

end A100827.P7757823605559969922

/-! ## A100827.P7206357141202960549

`A063741(A101373(n+1))+2*A151878(n)`
-/

namespace A100827.P7206357141202960549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + 2 * A151878 n

end

end A100827.P7206357141202960549

/-! ## A100827.P17328201310293956836

`A063741(A101373(n+1))+4-A040002(n)`
-/

namespace A100827.P17328201310293956836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + (4 - A040002 n)

end

end A100827.P17328201310293956836

/-! ## A100827.P17506318046775516605

`A063741(A101373(n+1))+A000122(n²+1)`
-/

namespace A100827.P17506318046775516605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + A000122 (n ^ 2 + 1)

end

end A100827.P17506318046775516605

/-! ## A100827.P1151023904225121825

`A063741(A101373(n+1))+A048298(n²+2)`
-/

namespace A100827.P1151023904225121825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + A048298 (n ^ 2 + 2)

end

end A100827.P1151023904225121825

/-! ## A100827.P4876081598984872582

`A063741(A101373(n+1))+A007494(A151878(n))`
-/

namespace A100827.P4876081598984872582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063741 (A101373 (n + 1)).toNat + A007494 (A151878 n).toNat

end

end A100827.P4876081598984872582

/-!
# A100828: Expansion of (1+2*x-2*x^3-3*x^2)/((x-1)*(x+1)*(x^2+2*x-1)).

The programs for A100828, the canonical program `A100828.P408839149086892561` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100828 has offset 0).

The definition of A100828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-3x^2-2x^3)/(1-2x-2x^2+2x^3+x^4))` (program `A100828.P408839149086892561`, by `A100828.P408839149086892561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100828.P408839149086892561

`ogf((1+2x-3x^2-2x^3)/(1-2x-2x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100828

/-- `ogf((1+2x-3x^2-2x^3)/(1-2x-2x^2+2x^3+x^4))` -/
def P408839149086892561.Spec : Prop :=
  ∀ n, P408839149086892561.a n = A100828 n

theorem P408839149086892561.correct : P408839149086892561.Spec := by
  intro n
  simp only [A100828]

end A100828

/-! ## A100828.P14645154693349906794

`2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=18`
-/

namespace A100828.P14645154693349906794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7, 18] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A100828.P14645154693349906794

namespace A100828

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)` -/
def P14645154693349906794.Spec : Prop :=
  ∀ n, P14645154693349906794.a n = A100828 n

end A100828

/-! ## A100828.P9701175739640862559

`a(n-2)+2*(a(n-1)-a(n-2)%2)` with `a(0)=1, a(1)=4`
-/

namespace A100828.P9701175739640862559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 2 * (a (n - 1) - Int.tmod (a (n - 2)) 2)

end

end A100828.P9701175739640862559

namespace A100828

/-- `a(n-2)+2*(a(n-1)-a(n-2)%2)` -/
def P9701175739640862559.Spec : Prop :=
  ∀ n, P9701175739640862559.a n = A100828 n

end A100828

/-! ## A100828.P2461709030016778363

`A078057(n)+and(1, n)`
-/

namespace A100828.P2461709030016778363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (Nat.land 1 n : ℤ)

end

end A100828.P2461709030016778363

namespace A100828

/-- `A078057(n)+and(1, n)` -/
def P2461709030016778363.Spec : Prop :=
  ∀ n, P2461709030016778363.a n = A100828 n

end A100828

/-! ## A100828.P7210834787832750202

`A001333(n+1)+and(1, n)`
-/

namespace A100828.P7210834787832750202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (Nat.land 1 n : ℤ)

end

end A100828.P7210834787832750202

namespace A100828

/-- `A001333(n+1)+and(1, n)` -/
def P7210834787832750202.Spec : Prop :=
  ∀ n, P7210834787832750202.a n = A100828 n

end A100828

/-! ## A100828.P13233682244489484674

`Δ[floor(n/2)]+∑[A052542(n)]`
-/

namespace A100828.P13233682244489484674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A100828.P13233682244489484674

namespace A100828

/-- `Δ[floor(n/2)]+∑[A052542(n)]` -/
def P13233682244489484674.Spec : Prop :=
  ∀ n, P13233682244489484674.a n = A100828 n

end A100828

/-! ## A100828.P10188340391517370658

`A082766(2*(n+1))+and(1, n)`
-/

namespace A100828.P10188340391517370658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (2 * (n + 1)) + (Nat.land 1 n : ℤ)

end

end A100828.P10188340391517370658

namespace A100828

/-- `A082766(2*(n+1))+and(1, n)` -/
def P10188340391517370658.Spec : Prop :=
  ∀ n, P10188340391517370658.a n = A100828 n

end A100828

/-! ## A100828.P6579737759860962994

`A155046(2*n+1)+and(1, n)`
-/

namespace A100828.P6579737759860962994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * n + 1) + (Nat.land 1 n : ℤ)

end

end A100828.P6579737759860962994

namespace A100828

/-- `A155046(2*n+1)+and(1, n)` -/
def P6579737759860962994.Spec : Prop :=
  ∀ n, P6579737759860962994.a n = A100828 n

end A100828

/-! ## A100828.P9029088470272183668

`A078057(n)+A000035(n)`
-/

namespace A100828.P9029088470272183668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + A000035 n

end

end A100828.P9029088470272183668

namespace A100828

/-- `A078057(n)+A000035(n)` -/
def P9029088470272183668.Spec : Prop :=
  ∀ n, P9029088470272183668.a n = A100828 n

end A100828

/-! ## A100828.P16719384870720275857

`A113224(n)+A010673(n)`
-/

namespace A100828.P16719384870720275857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113224 n + A010673 n

end

end A100828.P16719384870720275857

namespace A100828

/-- `A113224(n)+A010673(n)` -/
def P16719384870720275857.Spec : Prop :=
  ∀ n, P16719384870720275857.a n = A100828 n

end A100828

/-! ## A100828.P7928805593802673940

`A109522(n)+A106515(n)`
-/

namespace A100828.P7928805593802673940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 n + A106515 n

end

end A100828.P7928805593802673940

namespace A100828

/-- `A109522(n)+A106515(n)` -/
def P7928805593802673940.Spec : Prop :=
  ∀ n, P7928805593802673940.a n = A100828 n

end A100828

/-! ## A100828.P13292368971638173720

`A113282(n)-A101455(n)`
-/

namespace A100828.P13292368971638173720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113282 n - A101455 n

end

end A100828.P13292368971638173720

namespace A100828

/-- `A113282(n)-A101455(n)` -/
def P13292368971638173720.Spec : Prop :=
  ∀ n, P13292368971638173720.a n = A100828 n

end A100828

/-! ## A100828.P12627131763848557920

`A182780(n)-A059841(n)`
-/

namespace A100828.P12627131763848557920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n - A059841 n

end

end A100828.P12627131763848557920

namespace A100828

/-- `A182780(n)-A059841(n)` -/
def P12627131763848557920.Spec : Prop :=
  ∀ n, P12627131763848557920.a n = A100828 n

end A100828

/-! ## A100828.P15542523731448213800

`xor(A109718(n), A113282(n))`
-/

namespace A100828.P15542523731448213800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109718 n) (A113282 n)

end

end A100828.P15542523731448213800

namespace A100828

/-- `xor(A109718(n), A113282(n))` -/
def P15542523731448213800.Spec : Prop :=
  ∀ n, P15542523731448213800.a n = A100828 n

end A100828

/-! ## A100828.P17284565768782715892

`A078057(n)+Δ[A004526(n)]`
-/

namespace A100828.P17284565768782715892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (f1 (n + 1) - f1 n)

end

end A100828.P17284565768782715892

namespace A100828

/-- `A078057(n)+Δ[A004526(n)]` -/
def P17284565768782715892.Spec : Prop :=
  ∀ n, P17284565768782715892.a n = A100828 n

end A100828

/-! ## A100828.P17230361787760471368

`A078057(n)+Δ[A008619(n)]`
-/

namespace A100828.P17230361787760471368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + (f1 (n + 1) - f1 n)

end

end A100828.P17230361787760471368

namespace A100828

/-- `A078057(n)+Δ[A008619(n)]` -/
def P17230361787760471368.Spec : Prop :=
  ∀ n, P17230361787760471368.a n = A100828 n

end A100828

/-! ## A100828.P2707499406960763759

`A001333(n+1)+A000035(n)`
-/

namespace A100828.P2707499406960763759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + A000035 n

end

end A100828.P2707499406960763759

namespace A100828

/-- `A001333(n+1)+A000035(n)` -/
def P2707499406960763759.Spec : Prop :=
  ∀ n, P2707499406960763759.a n = A100828 n

end A100828

/-! ## A100828.P6570368333592787597

`A097075(n+1)+A024537(n)`
-/

namespace A100828.P6570368333592787597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097075 (n + 1) + A024537 n

end

end A100828.P6570368333592787597

namespace A100828

/-- `A097075(n+1)+A024537(n)` -/
def P6570368333592787597.Spec : Prop :=
  ∀ n, P6570368333592787597.a n = A100828 n

end A100828

/-! ## A100828.P3711029388447174621

`A078057(n)+A059841(n+1)`
-/

namespace A100828.P3711029388447174621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n + A059841 (n + 1)

end

end A100828.P3711029388447174621

namespace A100828

/-- `A078057(n)+A059841(n+1)` -/
def P3711029388447174621.Spec : Prop :=
  ∀ n, P3711029388447174621.a n = A100828 n

end A100828

/-! ## A100828.P12605515061517222784

`A000034(n)+A078057(n)-1`
-/

namespace A100828.P12605515061517222784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A078057 n - 1)

end

end A100828.P12605515061517222784

namespace A100828

/-- `A000034(n)+A078057(n)-1` -/
def P12605515061517222784.Spec : Prop :=
  ∀ n, P12605515061517222784.a n = A100828 n

end A100828

/-!
# A100829: Numbers that are a sum of two nonzero squares and not divisible by 17.

The programs for A100829, the canonical program `A100829.P18026693143017884367` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100829 has offset 1).

The definition of A100829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100829.P18026693143017884367

`A000404(eq[1, gcd(17, A000404(n+1))]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A100829

/-- `A000404(eq[1, gcd(17, A000404(n+1))]+1)` -/
def P18026693143017884367.Spec : Prop :=
  ∀ n, P18026693143017884367.a n = A100829 (n + 1)

theorem P18026693143017884367.correct : P18026693143017884367.Spec := by
  intro n
  simp only [A100829, Nat.add_sub_cancel]

end A100829

/-! ## A100829.P1097222824461518952

`∩[A000404(n+1), A160543(n+1)]`
-/

namespace A100829.P1097222824461518952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100829.P1097222824461518952

namespace A100829

/-- `∩[A000404(n+1), A160543(n+1)]` -/
def P1097222824461518952.Spec : Prop :=
  ∀ n, (P1097222824461518952.a n : ℤ) = A100829 (n + 1)

end A100829

/-! ## A100829.P1417795658640186978

`record[A106618(A000404(n+1))]`
-/

namespace A100829.P1417795658640186978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A000404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100829.P1417795658640186978

namespace A100829

/-- `record[A106618(A000404(n+1))]` -/
def P1417795658640186978.Spec : Prop :=
  ∀ n, P1417795658640186978.a n = A100829 (n + 1)

end A100829

/-! ## A100829.P7902930386799959192

`record[A106618(sqrt(A135784(n+1)))]`
-/

namespace A100829.P7902930386799959192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (SequenceMachineLib.roundAway (Real.sqrt (A135784 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100829.P7902930386799959192

namespace A100829

/-- `record[A106618(sqrt(A135784(n+1)))]` -/
def P7902930386799959192.Spec : Prop :=
  ∀ n, P7902930386799959192.a n = A100829 (n + 1)

end A100829

/-!
# A100830: Smallest number with same digital root as n but distinct from n and all earlier occurrences.

The programs for A100830, the canonical program `A100830.P13106035716542985707` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100830 has offset 1).

The definition of A100830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100830.P13106035716542985707

`n+1+9*(-1)^floor(n/9)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100830

/-- `n+1+9*(-1)^floor(n/9)` -/
def P13106035716542985707.Spec : Prop :=
  ∀ n, P13106035716542985707.a n = (A100830 (n + 1) : ℚ)

end A100830

/-!
# A100832: Amenable numbers: n such that there exists a multiset of integers (s(1), ..., s(n)) whose size, sum and product are all n.

The programs for A100832, the canonical program `A100832.P1023844840115298350` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100832 has offset 1).

The definition of A100832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100832.P1023844840115298350

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100832

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1023844840115298350.Spec : Prop :=
  ∀ n, P1023844840115298350.a n = A100832 (n + 1)

theorem P1023844840115298350.correct : P1023844840115298350.Spec := by
  intro n
  simp only [A100832, Nat.add_sub_cancel]

end A100832

/-! ## A100832.P1149934507509707152

`comp[(2*n)%or(6, n)]`
-/

namespace A100832.P1149934507509707152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % Nat.lor 6 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A100832.P1149934507509707152

namespace A100832

/-- `comp[(2*n)%or(6, n)]` -/
def P1149934507509707152.Spec : Prop :=
  ∀ n, (P1149934507509707152.a n : ℤ) = A100832 (n + 1)

end A100832

/-! ## A100832.P18317786864147746160

`a(n-2)+4` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A100832.P18317786864147746160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  a (n - 2) + 4

end

end A100832.P18317786864147746160

namespace A100832

/-- `a(n-2)+4` -/
def P18317786864147746160.Spec : Prop :=
  ∀ n, (P18317786864147746160.a n : ℤ) = A100832 (n + 1)

end A100832

/-! ## A100832.P4721089763644678729

`∑[4-a(n-1)]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A100832.P4721089763644678729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100832.P4721089763644678729

namespace A100832

/-- `∑[4-a(n-1)]` -/
def P4721089763644678729.Spec : Prop :=
  ∀ n, P4721089763644678729.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P8546439678409103636

`∑[gcd(3, a(gcd(2, n)))]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A100832.P8546439678409103636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  Nat.gcd 3 (f1 (Nat.gcd 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100832.P8546439678409103636

namespace A100832

/-- `∑[gcd(3, a(gcd(2, n)))]` -/
def P8546439678409103636.Spec : Prop :=
  ∀ n, (P8546439678409103636.a n : ℤ) = A100832 (n + 1)

end A100832

/-! ## A100832.P10539628507002594501

`∑[∑[ogf((1+4x+2x^2-3x^3)/(1+x))]]`
-/

namespace A100832.P10539628507002594501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100832.P10539628507002594501

namespace A100832

/-- `∑[∑[ogf((1+4x+2x^2-3x^3)/(1+x))]]` -/
def P10539628507002594501.Spec : Prop :=
  ∀ n, P10539628507002594501.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P15714590257245128510

`ogf((1+4x+2x^2-3x^3)/(1-x-x^2+x^3))`
-/

namespace A100832.P15714590257245128510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, -3] [1, -1, -1, 1] n

end

end A100832.P15714590257245128510

namespace A100832

/-- `ogf((1+4x+2x^2-3x^3)/(1-x-x^2+x^3))` -/
def P15714590257245128510.Spec : Prop :=
  ∀ n, P15714590257245128510.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P8830701107548711010

`2-xor(1, -a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A100832.P8830701107548711010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 - Int.xor 1 (-a (n - 1))

end

end A100832.P8830701107548711010

namespace A100832

/-- `2-xor(1, -a(n-1))` -/
def P8830701107548711010.Spec : Prop :=
  ∀ n, P8830701107548711010.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P5329462073817114926

`3-or(2, -a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A100832.P5329462073817114926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 - Int.lor 2 (-a (n - 1))

end

end A100832.P5329462073817114926

namespace A100832

/-- `3-or(2, -a(n-1))` -/
def P5329462073817114926.Spec : Prop :=
  ∀ n, P5329462073817114926.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P10811749184033499789

`∑{d}[n, C(2, #)]+2*n+1`
-/

namespace A100832.P10811749184033499789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 d + (2 * n + 1)

end

end A100832.P10811749184033499789

namespace A100832

/-- `∑{d}[n, C(2, #)]+2*n+1` -/
def P10811749184033499789.Spec : Prop :=
  ∀ n, (P10811749184033499789.a n : ℤ) = A100832 (n + 1)

end A100832

/-! ## A100832.P14018858227399056889

`6-xor(1, 4-a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A100832.P14018858227399056889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 - Int.xor 1 (4 - a (n - 1))

end

end A100832.P14018858227399056889

namespace A100832

/-- `6-xor(1, 4-a(n-1))` -/
def P14018858227399056889.Spec : Prop :=
  ∀ n, P14018858227399056889.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P14495376932323865571

`4*n-(a(n-1)-5)` with `a(0)=1, a(1)=5`
-/

namespace A100832.P14495376932323865571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (4 * n : ℤ) - (a (n - 1) - 5)

end

end A100832.P14495376932323865571

namespace A100832

/-- `4*n-(a(n-1)-5)` -/
def P14495376932323865571.Spec : Prop :=
  ∀ n, P14495376932323865571.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P18320053483546472243

`∑{d}[n, floor(2/#)]+2*n+1`
-/

namespace A100832.P18320053483546472243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊2 / (d : ℚ)⌋ + (2 * n + 1 : ℤ)

end

end A100832.P18320053483546472243

namespace A100832

/-- `∑{d}[n, floor(2/#)]+2*n+1` -/
def P18320053483546472243.Spec : Prop :=
  ∀ n, P18320053483546472243.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P6753859405462749753

`lt[n-2, (n-3)^and(3, 3-n)]`
-/

namespace A100832.P6753859405462749753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) ^ (Int.land 3 (3 - (n : ℤ)) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A100832.P6753859405462749753

namespace A100832

/-- `lt[n-2, (n-3)^and(3, 3-n)]` -/
def P6753859405462749753.Spec : Prop :=
  ∀ n, (P6753859405462749753.a n : ℤ) = A100832 (n + 1)

end A100832

/-! ## A100832.P18338975939092635592

`∪[2*n+2*n+1, 4*(n+2)]`
-/

namespace A100832.P18338975939092635592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A100832.P18338975939092635592

namespace A100832

/-- `∪[2*n+2*n+1, 4*(n+2)]` -/
def P18338975939092635592.Spec : Prop :=
  ∀ n, (P18338975939092635592.a n : ℤ) = A100832 (n + 1)

end A100832

/-! ## A100832.P5598527658669855948

`∑[A000045(a((n+1)%2))]` with `a(0)=1, a(1)=4`
-/

namespace A100832.P5598527658669855948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  A000045 (f1 ((n + 1) % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100832.P5598527658669855948

namespace A100832

/-- `∑[A000045(a((n+1)%2))]` -/
def P5598527658669855948.Spec : Prop :=
  ∀ n, P5598527658669855948.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P5496402023919334999

`A062545(n)+A059841(n)`
-/

namespace A100832.P5496402023919334999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n + A059841 n

end

end A100832.P5496402023919334999

namespace A100832

/-- `A062545(n)+A059841(n)` -/
def P5496402023919334999.Spec : Prop :=
  ∀ n, P5496402023919334999.a n = A100832 (n + 1)

end A100832

/-! ## A100832.P16558737248355121343

`A123932(n)+A042948(n)`
-/

namespace A100832.P16558737248355121343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n + A042948 n

end

end A100832.P16558737248355121343

namespace A100832

/-- `A123932(n)+A042948(n)` -/
def P16558737248355121343.Spec : Prop :=
  ∀ n, P16558737248355121343.a n = A100832 (n + 1)

end A100832

/-!
# A100833: Smallest positive palindrome-free and squarefree sequence.

The programs for A100833, the canonical program `A100833.P7455259891722925989` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100833 has offset 1).

The definition of A100833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100833.P7455259891722925989

`val(∑[(n%3)!], 2)+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100833

/-- `val(∑[(n%3)!], 2)+1` -/
def P7455259891722925989.Spec : Prop :=
  ∀ n, (P7455259891722925989.a n : ℤ) = A100833 (n + 1)

theorem P7455259891722925989.correct : P7455259891722925989.Spec := by
  intro n
  simp only [A100833, Nat.add_sub_cancel]

end A100833

/-! ## A100833.P6871534072298518546

`val(∑[gcd(3, n+1)+1], 2)`
-/

namespace A100833.P6871534072298518546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A100833.P6871534072298518546

namespace A100833

/-- `val(∑[gcd(3, n+1)+1], 2)` -/
def P6871534072298518546.Spec : Prop :=
  ∀ n, (P6871534072298518546.a n : ℤ) = A100833 (n + 1)

end A100833

/-! ## A100833.P6872330354696797127

`val(record[and(n+2, n-1)], 2)`
-/

namespace A100833.P6872330354696797127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A100833.P6872330354696797127

namespace A100833

/-- `val(record[and(n+2, n-1)], 2)` -/
def P6872330354696797127.Spec : Prop :=
  ∀ n, (P6872330354696797127.a n : ℤ) = A100833 (n + 1)

end A100833

/-! ## A100833.P8852951239729664304

`val(round(4*n/3)+1, 2)+1`
-/

namespace A100833.P8852951239729664304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) + 1).toNat 2 + 1

end

end A100833.P8852951239729664304

namespace A100833

/-- `val(round(4*n/3)+1, 2)+1` -/
def P8852951239729664304.Spec : Prop :=
  ∀ n, (P8852951239729664304.a n : ℤ) = A100833 (n + 1)

end A100833

/-! ## A100833.P6773871857595984755

`val(∑[∑[ogf((2+2x+4x^2)/(1+x+x^2))]], 2)`
-/

namespace A100833.P6773871857595984755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 4] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A100833.P6773871857595984755

namespace A100833

/-- `val(∑[∑[ogf((2+2x+4x^2)/(1+x+x^2))]], 2)` -/
def P6773871857595984755.Spec : Prop :=
  ∀ n, (P6773871857595984755.a n : ℤ) = A100833 (n + 1)

end A100833

/-! ## A100833.P6001342876235162951

`val(Δ[floor(∑[(2*n)²]/(n+1))], 2)`
-/

namespace A100833.P6001342876235162951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A100833.P6001342876235162951

namespace A100833

/-- `val(Δ[floor(∑[(2*n)²]/(n+1))], 2)` -/
def P6001342876235162951.Spec : Prop :=
  ∀ n, (P6001342876235162951.a n : ℤ) = A100833 (n + 1)

end A100833

/-! ## A100833.P17970475064128264847

`A001511(A006369(n)+1)`
-/

namespace A100833.P17970475064128264847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A006369 n + 1).toNat

end

end A100833.P17970475064128264847

namespace A100833

/-- `A001511(A006369(n)+1)` -/
def P17970475064128264847.Spec : Prop :=
  ∀ n, P17970475064128264847.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P9259643570703102613

`A001511(A265667(n+1))`
-/

namespace A100833.P9259643570703102613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A265667 (n + 1)).toNat

end

end A100833.P9259643570703102613

namespace A100833

/-- `A001511(A265667(n+1))` -/
def P9259643570703102613.Spec : Prop :=
  ∀ n, P9259643570703102613.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P17396769855351106285

`A001511(round(4*n/3)+1)`
-/

namespace A100833.P17396769855351106285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) + 1).toNat

end

end A100833.P17396769855351106285

namespace A100833

/-- `A001511(round(4*n/3)+1)` -/
def P17396769855351106285.Spec : Prop :=
  ∀ n, P17396769855351106285.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P16561458037186649094

`A007814(comp[4*n+2]+1)+1`
-/

namespace A100833.P16561458037186649094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A100833.P16561458037186649094

namespace A100833

/-- `A007814(comp[4*n+2]+1)+1` -/
def P16561458037186649094.Spec : Prop :=
  ∀ n, P16561458037186649094.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P15518273958415161105

`A089309(A047531(n+1))`
-/

namespace A100833.P15518273958415161105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A047531 (n + 1)).toNat

end

end A100833.P15518273958415161105

namespace A100833

/-- `A089309(A047531(n+1))` -/
def P15518273958415161105.Spec : Prop :=
  ∀ n, P15518273958415161105.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P9726151105065020968

`A059129(A047234(n+1))`
-/

namespace A100833.P9726151105065020968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A047234 (n + 1)).toNat

end

end A100833.P9726151105065020968

namespace A100833

/-- `A059129(A047234(n+1))` -/
def P9726151105065020968.Spec : Prop :=
  ∀ n, P9726151105065020968.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P16993070400092711416

`A059129(2*n)*A131534(n)`
-/

namespace A100833.P16993070400092711416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (2 * n) * A131534 n

end

end A100833.P16993070400092711416

namespace A100833

/-- `A059129(2*n)*A131534(n)` -/
def P16993070400092711416.Spec : Prop :=
  ∀ n, P16993070400092711416.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P16417255898062858559

`A059129(2*n)+A007814(A226122(n))`
-/

namespace A100833.P16417255898062858559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (2 * n) + A007814 (A226122 n).toNat

end

end A100833.P16417255898062858559

namespace A100833

/-- `A059129(2*n)+A007814(A226122(n))` -/
def P16417255898062858559.Spec : Prop :=
  ∀ n, P16417255898062858559.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P9146909097993912373

`A050603(A047395(n+1))`
-/

namespace A100833.P9146909097993912373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A047395 (n + 1)).toNat

end

end A100833.P9146909097993912373

namespace A100833

/-- `A050603(A047395(n+1))` -/
def P9146909097993912373.Spec : Prop :=
  ∀ n, P9146909097993912373.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P7859503329808695793

`A050603(A047399(n+1))`
-/

namespace A100833.P7859503329808695793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A047399 (n + 1)).toNat

end

end A100833.P7859503329808695793

namespace A100833

/-- `A050603(A047399(n+1))` -/
def P7859503329808695793.Spec : Prop :=
  ∀ n, P7859503329808695793.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P3326836606680343435

`A050603(A047525(n+1))`
-/

namespace A100833.P3326836606680343435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A047525 (n + 1)).toNat

end

end A100833.P3326836606680343435

namespace A100833

/-- `A050603(A047525(n+1))` -/
def P3326836606680343435.Spec : Prop :=
  ∀ n, P3326836606680343435.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P6612035558408857192

`A050603(A047528(n+1))`
-/

namespace A100833.P6612035558408857192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A047528 (n + 1)).toNat

end

end A100833.P6612035558408857192

namespace A100833

/-- `A050603(A047528(n+1))` -/
def P6612035558408857192.Spec : Prop :=
  ∀ n, P6612035558408857192.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P3124438372797602273

`A050603(A047529(n+1)-1)`
-/

namespace A100833.P3124438372797602273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A047529 (n + 1) - 1).toNat

end

end A100833.P3124438372797602273

namespace A100833

/-- `A050603(A047529(n+1)-1)` -/
def P3124438372797602273.Spec : Prop :=
  ∀ n, P3124438372797602273.a n = A100833 (n + 1)

end A100833

/-! ## A100833.P1717634734843121177

`A067029(2*(A006369(n)+1))`
-/

namespace A100833.P1717634734843121177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * (A006369 n + 1)).toNat

end

end A100833.P1717634734843121177

namespace A100833

/-- `A067029(2*(A006369(n)+1))` -/
def P1717634734843121177.Spec : Prop :=
  ∀ n, P1717634734843121177.a n = A100833 (n + 1)

end A100833

/-!
# A100835: Number of partitions of n with at most 2 odd parts.

The programs for A100835, there is no canonical definition to state claims against.
-/

/-! ## A100835.P15709952887644775719

`A317141(A068911(n))`
-/

namespace A100835.P15709952887644775719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A068911 n).toNat

end

end A100835.P15709952887644775719

/-! ## A100835.P2465691165609445899

`A317141(2*A182522(n))`
-/

namespace A100835.P2465691165609445899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (2 * A182522 n).toNat

end

end A100835.P2465691165609445899

/-! ## A100835.P17690392208933879639

`A317141(Δ[record[A253885(n)]])`
-/

namespace A100835.P17690392208933879639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (f1 (n + 1) - f1 n).toNat

end

end A100835.P17690392208933879639

/-! ## A100835.P8230079212443545953

`A317141(Δ[record[A003961(n+1)]])`
-/

namespace A100835.P8230079212443545953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (f1 (n + 1) - f1 n).toNat

end

end A100835.P8230079212443545953

/-! ## A100835.P4099214898882943117

`A317141(Δ[record[A045965(n+1)]])`
-/

namespace A100835.P4099214898882943117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (f1 (n + 1) - f1 n).toNat

end

end A100835.P4099214898882943117

/-!
# A100836: a(n) is the smallest value k > 1 such that k^2 - 1 is divisible by n^2.

The programs for A100836, there is no canonical definition to state claims against.
-/

/-! ## A100836.P13950621722476755584

`ceil(sqrt(A067872(n+1))*(n+1))`
-/

namespace A100836.P13950621722476755584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A067872 (n + 1) : ℝ) * (n + 1 : ℝ)⌉

end

end A100836.P13950621722476755584

/-! ## A100836.P12431450824097010676

`A215653((n+1)²)`
-/

namespace A100836.P12431450824097010676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215653 ((n + 1) ^ 2)

end

end A100836.P12431450824097010676

/-! ## A100836.P10043857999149676844

`sqrt(A061369((n+1)²))`
-/

namespace A100836.P10043857999149676844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061369 ((n + 1) ^ 2) : ℝ)

end

end A100836.P10043857999149676844

/-! ## A100836.P11623922921718365969

`floor(A070667((n+1)²)+acot(n))`
-/

namespace A100836.P11623922921718365969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070667 ((n + 1) ^ 2) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A100836.P11623922921718365969

/-! ## A100836.P5258264125891518347

`A070667((abs(1-n)+2)*(n+1))`
-/

namespace A100836.P5258264125891518347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((|1 - (n : ℤ)| + 2) * (n + 1 : ℤ)).toNat

end

end A100836.P5258264125891518347

/-! ## A100836.P6743423956308489394

`ceil(sqrt((n+1)²*A076942((n+1)²)))`
-/

namespace A100836.P6743423956308489394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((n + 1) ^ 2 : ℤ) * A076942 ((n + 1) ^ 2) : ℝ)⌉

end

end A100836.P6743423956308489394

/-! ## A100836.P16590082410082773828

`A254667(A070667((n+1)²))`
-/

namespace A100836.P16590082410082773828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A070667 ((n + 1) ^ 2)).toNat

end

end A100836.P16590082410082773828

/-! ## A100836.P12526363525011214031

`A070667((n+1)²)+A000007(n)`
-/

namespace A100836.P12526363525011214031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1) ^ 2) + A000007 n

end

end A100836.P12526363525011214031

/-! ## A100836.P4847464351999398431

`A070667((n+1)²)+A008574(n)%2`
-/

namespace A100836.P4847464351999398431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1) ^ 2) + Int.tmod (A008574 n) 2

end

end A100836.P4847464351999398431

/-! ## A100836.P6390489592796043579

`A070667((n+1)²)+A008683((n+1)²)`
-/

namespace A100836.P6390489592796043579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1) ^ 2) + A008683 ((n + 1) ^ 2)

end

end A100836.P6390489592796043579

/-! ## A100836.P15047661245696441566

`A070667((n+1)²)+2-A036453(n+1)`
-/

namespace A100836.P15047661245696441566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1) ^ 2) + (2 - A036453 (n + 1))

end

end A100836.P15047661245696441566

/-! ## A100836.P14124492737107142888

`A014963(4*n+2)*A070667((n+1)²)`
-/

namespace A100836.P14124492737107142888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A070667 ((n + 1) ^ 2)

end

end A100836.P14124492737107142888

/-! ## A100836.P11020544646666739636

`gcd(2, A000040(n+1))*A070667((n+1)²)`
-/

namespace A100836.P11020544646666739636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A070667 ((n + 1) ^ 2)

end

end A100836.P11020544646666739636

/-! ## A100836.P5387819650703101890

`lcm(A014963(A017317(n)), A070667((n+1)²))`
-/

namespace A100836.P5387819650703101890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A017317 n).toNat) (A070667 ((n + 1) ^ 2))

end

end A100836.P5387819650703101890

/-! ## A100836.P4979280870865728502

`A070667((n+1)²)+A065033(A005843(n))-n`
-/

namespace A100836.P4979280870865728502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 ((n + 1) ^ 2) + (A065033 (A005843 n).toNat - (n : ℤ))

end

end A100836.P4979280870865728502

/-! ## A100836.P10772370514681020901

`A001511(record[A000010(n+1)+1])*A070667((n+1)²)`
-/

namespace A100836.P10772370514681020901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A070667 ((n + 1) ^ 2)

end

end A100836.P10772370514681020901

/-!
# A100837: Numbers k such that k^k + 4 is prime.

The programs for A100837, there is no canonical definition to state claims against.
-/

/-! ## A100837.P7168858651685041617

`A098742(n)+n*A064300(n)`
-/

namespace A100837.P7168858651685041617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098742 n + (n : ℤ) * A064300 n

end

end A100837.P7168858651685041617

/-!
# A100843: a(n) = F(P(n)) where P(n) is the unrestricted partition number of n and F(n) is the Fibonacci number.

The programs for A100843, there is no canonical definition to state claims against.
-/

/-! ## A100843.P16388659146257583725

`A000045(A000041(n+1))`
-/

namespace A100843.P16388659146257583725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000041 (n + 1)).toNat

end

end A100843.P16388659146257583725

/-! ## A100843.P12539637034875778239

`A000045(Δ[A000070(n)])`
-/

namespace A100843.P12539637034875778239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A100843.P12539637034875778239

/-! ## A100843.P142404003504850215

`A000045(ratio[A058694(n)])`
-/

namespace A100843.P142404003504850215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A100843.P142404003504850215

/-! ## A100843.P7435001896105994008

`A000045(record[A035363(n)])`
-/

namespace A100843.P7435001896105994008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100843.P7435001896105994008

/-! ## A100843.P6657647314346203566

`A000045(record[A035377(n)])`
-/

namespace A100843.P6657647314346203566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100843.P6657647314346203566

/-!
# A100845: a(n) = L(P(n)), where P = A000041 (partition numbers) and L = A000032 (Lucas numbers).

The programs for A100845, there is no canonical definition to state claims against.
-/

/-! ## A100845.P16194694269505543952

`A000032(A000041(n))`
-/

namespace A100845.P16194694269505543952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000041 n).toNat

end

end A100845.P16194694269505543952

/-! ## A100845.P11007718405257034281

`A000032(A092885(n))`
-/

namespace A100845.P11007718405257034281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A092885 n).toNat

end

end A100845.P11007718405257034281

/-! ## A100845.P8662065911444151507

`A000032(A213598(n))`
-/

namespace A100845.P8662065911444151507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A213598 n).toNat

end

end A100845.P8662065911444151507

/-! ## A100845.P2509576467538043095

`A000032(A242700(n))`
-/

namespace A100845.P2509576467538043095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A242700 (n + 81)).toNat

end

end A100845.P2509576467538043095

/-! ## A100845.P3676472038288226178

`A000032(A242701(n))`
-/

namespace A100845.P3676472038288226178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A242701 (n + 100)).toNat

end

end A100845.P3676472038288226178

/-!
# A100846: Concatenate (1,n,n,1).

The programs for A100846, the canonical program `A100846.P7539906209974408570` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100846 has offset 0).

The definition of A100846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100846.P7539906209974408570

`1+10^(2*A055642(n)+1)+n*(10+10^(1+A055642(n)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100846

/-- `1+10^(2*A055642(n)+1)+n*(10+10^(1+A055642(n)))` -/
def P7539906209974408570.Spec : Prop :=
  ∀ n, P7539906209974408570.a n = (A100846 n : ℚ)

end A100846

/-! ## A100846.P6498916527310286342

`A100896(n)+A100897(n)-A102484(n+1)`
-/

namespace A100846.P6498916527310286342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100896 n + (A100897 n - A102484 (n + 1))

end

end A100846.P6498916527310286342

namespace A100846

/-- `A100896(n)+A100897(n)-A102484(n+1)` -/
def P6498916527310286342.Spec : Prop :=
  ∀ n, P6498916527310286342.a n = A100846 n

end A100846

/-!
# A100847: Number of partitions of 2n in which each odd part has even multiplicity and each even part has odd multiplicity.

The programs for A100847, there is no canonical definition to state claims against.
-/

/-! ## A100847.P2819613507199799691

`A345162(3*n+1)+A133872(A014138(n))`
-/

namespace A100847.P2819613507199799691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345162 (3 * n + 1) + A133872 (A014138 n).toNat

end

end A100847.P2819613507199799691

/-! ## A100847.P3291619706746645532

`A085141(A130129(n)+1)-Δ[A140514(n)]`
-/

namespace A100847.P3291619706746645532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A130129 n + 1).toNat - (f1 (n + 1) - f1 n)

end

end A100847.P3291619706746645532

/-! ## A100847.P6869301855433267783

`A345162(3*n+1)+A008683(A307411(n))`
-/

namespace A100847.P6869301855433267783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345162 (3 * n + 1) + A008683 (A307411 n).toNat

end

end A100847.P6869301855433267783

/-!
# A100848: Numbers k such that k^k + k + 3 is prime.

The programs for A100848, there is no canonical definition to state claims against.
-/

/-! ## A100848.P18288144377327309194

`A120257(A007112(n+1))+∑[or(1, n+1)]-1`
-/

namespace A100848.P18288144377327309194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120257 (A007112 (n + 1)).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A100848.P18288144377327309194

/-! ## A100848.P8203786445271231411

`A086961(A309522(n)+A194811(n))`
-/

namespace A100848.P8203786445271231411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086961 (A309522 n + A194811 n).toNat

end

end A100848.P8203786445271231411

/-!
# A100850: Numbers k such that k^k + k + 7 is prime.

The programs for A100850, there is no canonical definition to state claims against.
-/

/-! ## A100850.P13084950892345641680

`A244446(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A100850.P13084950892345641680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A244446 (a (n - 1)).toNat

end

end A100850.P13084950892345641680

/-!
# A100851: Triangle read by rows: T(n,k) = 2^n * 3^k, 0 <= k <= n, n >= 0.

The programs for A100851, the canonical program `A100851.P9342598840352089978` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100851 has offset 0).

The definition of A100851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100851.P9342598840352089978

`A036561(n)*A059268(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A100851

/-- `A036561(n)*A059268(n)` -/
def P9342598840352089978.Spec : Prop :=
  ∀ n, P9342598840352089978.a n = A100851 n

theorem P9342598840352089978.correct : P9342598840352089978.Spec := by
  intro n
  simp only [A100851]

end A100851

/-! ## A100851.P15793137185376901495

`lcm(A036561(n), A137688(n))`
-/

namespace A100851.P15793137185376901495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036561 n) (A137688 n)

end

end A100851.P15793137185376901495

namespace A100851

/-- `lcm(A036561(n), A137688(n))` -/
def P15793137185376901495.Spec : Prop :=
  ∀ n, (P15793137185376901495.a n : ℤ) = A100851 n

end A100851

/-! ## A100851.P5080743382124489820

`A000079(A002262(n))*A036561(n)`
-/

namespace A100851.P5080743382124489820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A036561 n

end

end A100851.P5080743382124489820

namespace A100851

/-- `A000079(A002262(n))*A036561(n)` -/
def P5080743382124489820.Spec : Prop :=
  ∀ n, P5080743382124489820.a n = A100851 n

end A100851

/-! ## A100851.P4263133719165872250

`A036561(n)*A036561(A112367(n))`
-/

namespace A100851.P4263133719165872250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n * A036561 (A112367 n).toNat

end

end A100851.P4263133719165872250

namespace A100851

/-- `A036561(n)*A036561(A112367(n))` -/
def P4263133719165872250.Spec : Prop :=
  ∀ n, P4263133719165872250.a n = A100851 n

end A100851

/-! ## A100851.P1038206867047881854

`A011782(A002260(n+1))*A036561(n)`
-/

namespace A100851.P1038206867047881854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A036561 n

end

end A100851.P1038206867047881854

namespace A100851

/-- `A011782(A002260(n+1))*A036561(n)` -/
def P1038206867047881854.Spec : Prop :=
  ∀ n, P1038206867047881854.a n = A100851 n

end A100851

/-! ## A100851.P16765284822047346938

`A013620(n)/A007318(n)*A059268(n)`
-/

namespace A100851.P16765284822047346938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) / (A007318 n : ℚ) * (A059268 n : ℚ)

end

end A100851.P16765284822047346938

namespace A100851

/-- `A013620(n)/A007318(n)*A059268(n)` -/
def P16765284822047346938.Spec : Prop :=
  ∀ n, P16765284822047346938.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P957114638885801570

`A013613(n)/A007318(n)²*A038207(n)`
-/

namespace A100851.P957114638885801570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A007318 n ^ 2 : ℚ) * (A038207 n : ℚ)

end

end A100851.P957114638885801570

namespace A100851

/-- `A013613(n)/A007318(n)²*A038207(n)` -/
def P957114638885801570.Spec : Prop :=
  ∀ n, P957114638885801570.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P11590122882351384575

`A038212(n)/A007318(n)`
-/

namespace A100851.P11590122882351384575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038212 n : ℚ) / (A007318 n : ℚ)

end

end A100851.P11590122882351384575

namespace A100851

/-- `A038212(n)/A007318(n)` -/
def P11590122882351384575.Spec : Prop :=
  ∀ n, P11590122882351384575.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P334640975179650270

`A036561(A245300(n))`
-/

namespace A100851.P334640975179650270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A245300 n).toNat

end

end A100851.P334640975179650270

namespace A100851

/-- `A036561(A245300(n))` -/
def P334640975179650270.Spec : Prop :=
  ∀ n, P334640975179650270.a n = A100851 n

end A100851

/-! ## A100851.P2517137829293025082

`A038236(n)/A038207(n)`
-/

namespace A100851.P2517137829293025082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038236 n : ℚ) / (A038207 n : ℚ)

end

end A100851.P2517137829293025082

namespace A100851

/-- `A038236(n)/A038207(n)` -/
def P2517137829293025082.Spec : Prop :=
  ∀ n, P2517137829293025082.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P17253131875643559850

`A038260(n)/A027465(n)`
-/

namespace A100851.P17253131875643559850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A027465 n : ℚ)

end

end A100851.P17253131875643559850

namespace A100851

/-- `A038260(n)/A027465(n)` -/
def P17253131875643559850.Spec : Prop :=
  ∀ n, P17253131875643559850.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P6755988200954658354

`A038218(n)/A013609(n)`
-/

namespace A100851.P6755988200954658354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038218 n : ℚ) / (A013609 n : ℚ)

end

end A100851.P6755988200954658354

namespace A100851

/-- `A038218(n)/A013609(n)` -/
def P6755988200954658354.Spec : Prop :=
  ∀ n, P6755988200954658354.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P7766701459036604903

`A038284(n)/A038231(n)`
-/

namespace A100851.P7766701459036604903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038284 n : ℚ) / (A038231 n : ℚ)

end

end A100851.P7766701459036604903

namespace A100851

/-- `A038284(n)/A038231(n)` -/
def P7766701459036604903.Spec : Prop :=
  ∀ n, P7766701459036604903.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P4985982122259381631

`A038242(n)/A038208(n)`
-/

namespace A100851.P4985982122259381631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038242 n : ℚ) / (A038208 n : ℚ)

end

end A100851.P4985982122259381631

namespace A100851

/-- `A038242(n)/A038208(n)` -/
def P4985982122259381631.Spec : Prop :=
  ∀ n, P4985982122259381631.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P7117870302592802086

`A038308(n)/A038243(n)`
-/

namespace A100851.P7117870302592802086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038308 n : ℚ) / (A038243 n : ℚ)

end

end A100851.P7117870302592802086

namespace A100851

/-- `A038308(n)/A038243(n)` -/
def P7117870302592802086.Spec : Prop :=
  ∀ n, P7117870302592802086.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P9780068974426644620

`lcm(A038212(n), A038243(n))/A038243(n)`
-/

namespace A100851.P9780068974426644620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A038212 n) (A038243 n) : ℚ) / (A038243 n : ℚ)

end

end A100851.P9780068974426644620

namespace A100851

/-- `lcm(A038212(n), A038243(n))/A038243(n)` -/
def P9780068974426644620.Spec : Prop :=
  ∀ n, P9780068974426644620.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P13544298135070332067

`A038266(n)/A038220(n)`
-/

namespace A100851.P13544298135070332067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A038220 n : ℚ)

end

end A100851.P13544298135070332067

namespace A100851

/-- `A038266(n)/A038220(n)` -/
def P13544298135070332067.Spec : Prop :=
  ∀ n, P13544298135070332067.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P5520867033754063267

`A038332(n)/A038255(n)`
-/

namespace A100851.P5520867033754063267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A038255 n : ℚ)

end

end A100851.P5520867033754063267

namespace A100851

/-- `A038332(n)/A038255(n)` -/
def P5520867033754063267.Spec : Prop :=
  ∀ n, P5520867033754063267.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P1402363641458600263

`A038290(n)/A038232(n)`
-/

namespace A100851.P1402363641458600263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038290 n : ℚ) / (A038232 n : ℚ)

end

end A100851.P1402363641458600263

namespace A100851

/-- `A038290(n)/A038232(n)` -/
def P1402363641458600263.Spec : Prop :=
  ∀ n, P1402363641458600263.a n = (A100851 n : ℚ)

end A100851

/-! ## A100851.P9955838258224586242

`A038314(n)/A038244(n)`
-/

namespace A100851.P9955838258224586242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038314 n : ℚ) / (A038244 n : ℚ)

end

end A100851.P9955838258224586242

namespace A100851

/-- `A038314(n)/A038244(n)` -/
def P9955838258224586242.Spec : Prop :=
  ∀ n, P9955838258224586242.a n = (A100851 n : ℚ)

end A100851

/-!
# A100852: Triangle read by rows: T(n,k) = 2^k * 3^n, 0 <= k <= n.

The programs for A100852, the canonical program `A100852.P5582764388534758657` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100852 has offset 0).

The definition of A100852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8513 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100852.P5582764388534758657

`A059268(n)*A098355(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A100852

/-- `A059268(n)*A098355(n)` -/
def P5582764388534758657.Spec : Prop :=
  ∀ n, P5582764388534758657.a n = A100852 n

theorem P5582764388534758657.correct : P5582764388534758657.Spec := by
  intro n
  simp only [A100852]

end A100852

/-! ## A100852.P14558401769157294026

`A000244(val(A175840(n), 2))*A175840(n)`
-/

namespace A100852.P14558401769157294026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (A175840 n).toNat 2) * A175840 n

end

end A100852.P14558401769157294026

namespace A100852

/-- `A000244(val(A175840(n), 2))*A175840(n)` -/
def P14558401769157294026.Spec : Prop :=
  ∀ n, P14558401769157294026.a n = A100852 n

end A100852

/-! ## A100852.P12534441006723442707

`A038221(n)/A007318(n)*A059268(n)`
-/

namespace A100852.P12534441006723442707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A007318 n : ℚ) * (A059268 n : ℚ)

end

end A100852.P12534441006723442707

namespace A100852

/-- `A038221(n)/A007318(n)*A059268(n)` -/
def P12534441006723442707.Spec : Prop :=
  ∀ n, P12534441006723442707.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P6835878852241945869

`A013609(n)/A007318(n)²*A038221(n)`
-/

namespace A100852.P6835878852241945869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n ^ 2 : ℚ) * (A038221 n : ℚ)

end

end A100852.P6835878852241945869

namespace A100852

/-- `A013609(n)/A007318(n)²*A038221(n)` -/
def P6835878852241945869.Spec : Prop :=
  ∀ n, P6835878852241945869.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P8194593182709198277

`A038224(n)/A007318(n)`
-/

namespace A100852.P8194593182709198277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038224 n : ℚ) / (A007318 n : ℚ)

end

end A100852.P8194593182709198277

namespace A100852

/-- `A038224(n)/A007318(n)` -/
def P8194593182709198277.Spec : Prop :=
  ∀ n, P8194593182709198277.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P948364235236660112

`lcm(A013609(n), A038221(n))/A007318(n)`
-/

namespace A100852.P948364235236660112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013609 n) (A038221 n) : ℚ) / (A007318 n : ℚ)

end

end A100852.P948364235236660112

namespace A100852

/-- `lcm(A013609(n), A038221(n))/A007318(n)` -/
def P948364235236660112.Spec : Prop :=
  ∀ n, P948364235236660112.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P7826691268534868148

`A013613(n)/A038207(n)*A038255(n)/A007318(n)`
-/

namespace A100852.P7826691268534868148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A038207 n : ℚ) * (A038255 n : ℚ) / (A007318 n : ℚ)

end

end A100852.P7826691268534868148

namespace A100852

/-- `A013613(n)/A038207(n)*A038255(n)/A007318(n)` -/
def P7826691268534868148.Spec : Prop :=
  ∀ n, P7826691268534868148.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P10363203872094612986

`A038260(n)/A038207(n)`
-/

namespace A100852.P10363203872094612986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A038207 n : ℚ)

end

end A100852.P10363203872094612986

namespace A100852

/-- `A038260(n)/A038207(n)` -/
def P10363203872094612986.Spec : Prop :=
  ∀ n, P10363203872094612986.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P17121837780971874326

`A038230(n)/A013609(n)`
-/

namespace A100852.P17121837780971874326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038230 n : ℚ) / (A013609 n : ℚ)

end

end A100852.P17121837780971874326

namespace A100852

/-- `A038230(n)/A013609(n)` -/
def P17121837780971874326.Spec : Prop :=
  ∀ n, P17121837780971874326.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P14640664246441429533

`A038296(n)/A027465(n)`
-/

namespace A100852.P14640664246441429533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038296 n : ℚ) / (A027465 n : ℚ)

end

end A100852.P14640664246441429533

namespace A100852

/-- `A038296(n)/A027465(n)` -/
def P14640664246441429533.Spec : Prop :=
  ∀ n, P14640664246441429533.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P9369319792833850619

`A038266(n)/A038208(n)`
-/

namespace A100852.P9369319792833850619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038266 n : ℚ) / (A038208 n : ℚ)

end

end A100852.P9369319792833850619

namespace A100852

/-- `A038266(n)/A038208(n)` -/
def P9369319792833850619.Spec : Prop :=
  ∀ n, P9369319792833850619.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P8096693439587187949

`A038332(n)/A038231(n)`
-/

namespace A100852.P8096693439587187949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038332 n : ℚ) / (A038231 n : ℚ)

end

end A100852.P8096693439587187949

namespace A100852

/-- `A038332(n)/A038231(n)` -/
def P8096693439587187949.Spec : Prop :=
  ∀ n, P8096693439587187949.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P11596757611427881989

`A038302(n)/A038220(n)`
-/

namespace A100852.P11596757611427881989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038302 n : ℚ) / (A038220 n : ℚ)

end

end A100852.P11596757611427881989

namespace A100852

/-- `A038302(n)/A038220(n)` -/
def P11596757611427881989.Spec : Prop :=
  ∀ n, P11596757611427881989.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P796630227474336338

`A038338(n)/A038232(n)`
-/

namespace A100852.P796630227474336338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038338 n : ℚ) / (A038232 n : ℚ)

end

end A100852.P796630227474336338

namespace A100852

/-- `A038338(n)/A038232(n)` -/
def P796630227474336338.Spec : Prop :=
  ∀ n, P796630227474336338.a n = (A100852 n : ℚ)

end A100852

/-! ## A100852.P8239887705114518925

`A175840(A245300(n))`
-/

namespace A100852.P8239887705114518925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A245300 n).toNat

end

end A100852.P8239887705114518925

namespace A100852

/-- `A175840(A245300(n))` -/
def P8239887705114518925.Spec : Prop :=
  ∀ n, P8239887705114518925.a n = A100852 n

end A100852

/-! ## A100852.P12383518979642490142

`A059268(n)*A332818(A137688(n))`
-/

namespace A100852.P12383518979642490142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A332818 (A137688 n).toNat

end

end A100852.P12383518979642490142

namespace A100852

/-- `A059268(n)*A332818(A137688(n))` -/
def P12383518979642490142.Spec : Prop :=
  ∀ n, P12383518979642490142.a n = A100852 n

end A100852

/-! ## A100852.P8023179437617955077

`A003961(A059268(n))*A175840(n)`
-/

namespace A100852.P8023179437617955077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A059268 n).toNat * A175840 n

end

end A100852.P8023179437617955077

namespace A100852

/-- `A003961(A059268(n))*A175840(n)` -/
def P8023179437617955077.Spec : Prop :=
  ∀ n, P8023179437617955077.a n = A100852 n

end A100852

/-! ## A100852.P11587963924318377475

`A003961(A059268(n)*A130321(n))*A059268(n)`
-/

namespace A100852.P11587963924318377475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A059268 n * A130321 n).toNat * A059268 n

end

end A100852.P11587963924318377475

namespace A100852

/-- `A003961(A059268(n)*A130321(n))*A059268(n)` -/
def P11587963924318377475.Spec : Prop :=
  ∀ n, P11587963924318377475.a n = A100852 n

end A100852

/-!
# A100853: Number of partitions of n in which every part occurs 1, 4, or 5 times. Also number of partitions of n in which every part is congruent to {1, 3, 4, 5, 7} mod 8.

The programs for A100853, there is no canonical definition to state claims against.
-/

/-! ## A100853.P1442807972162385700

`ceil(A120922(n)/record[A000139(n)])`
-/

namespace A100853.P1442807972162385700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120922 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A100853.P1442807972162385700

/-! ## A100853.P6436936895387615146

`A003056(A002985(n+1)+A002620(n))`
-/

namespace A100853.P6436936895387615146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002985 (n + 1) + A002620 n).toNat

end

end A100853.P6436936895387615146

/-! ## A100853.P2176010016544141373

`A100617(A058696(n)-A122768(n))`
-/

namespace A100853.P2176010016544141373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A058696 n - A122768 n).toNat

end

end A100853.P2176010016544141373

/-! ## A100853.P12603033909464391533

`A259361(A322304(n)+3)`
-/

namespace A100853.P12603033909464391533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A322304 n + 3).toNat

end

end A100853.P12603033909464391533

/-! ## A100853.P5392456620197414719

`A036234(∏{e}[2^(n+1), A242699(#)]-n)`
-/

namespace A100853.P5392456620197414719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64) - (n : ℤ)).toNat

end

end A100853.P5392456620197414719

/-!
# A100854: Least number of positive cubes that sum to n^2.

The programs for A100854, there is no canonical definition to state claims against.
-/

/-! ## A100854.P9432990595171879685

`A002376((n+1)²)`
-/

namespace A100854.P9432990595171879685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 ((n + 1) ^ 2)

end

end A100854.P9432990595171879685

/-! ## A100854.P8475366488000720008

`dr(A002376(∑[2*n+1]))`
-/

namespace A100854.P8475366488000720008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A100854.P8475366488000720008

/-! ## A100854.P15067043429962129734

`A002376(∑[n+1+n])%8`
-/

namespace A100854.P15067043429962129734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002376 (∑ j ∈ Finset.range (n + 1), f1 j)) 8

end

end A100854.P15067043429962129734

/-! ## A100854.P4425826198978031877

`or(A000007(n), A002376(∑[2*n+1]))`
-/

namespace A100854.P4425826198978031877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A002376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A100854.P4425826198978031877

/-! ## A100854.P6022653765633930114

`A007318(C(2, n))*A002376(∑[n+1+n])`
-/

namespace A100854.P6022653765633930114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A002376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100854.P6022653765633930114

/-! ## A100854.P5715272499645385178

`A007318(and(2, -n))*A002376(∑[2*n+1])`
-/

namespace A100854.P5715272499645385178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A002376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100854.P5715272499645385178

/-! ## A100854.P650287082559731068

`A002376(∑[2*n+1])+A008683(8*(n+1))`
-/

namespace A100854.P650287082559731068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (8 * (n + 1))

end

end A100854.P650287082559731068

/-! ## A100854.P2030904112105258827

`A014963(4*n+10)*A002376(∑[2*n+1])`
-/

namespace A100854.P2030904112105258827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A002376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100854.P2030904112105258827

/-! ## A100854.P8421211390279613252

`A000041(C(2, n+2))*A002376(∑[2*n+1])`
-/

namespace A100854.P8421211390279613252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A002376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100854.P8421211390279613252

/-! ## A100854.P5102003461155594340

`gcd(n, A020639(n+1))*A002376(∑[2*n+1])`
-/

namespace A100854.P5102003461155594340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A020639 (n + 1)) : ℤ) * A002376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A100854.P5102003461155594340

/-! ## A100854.P3224812970069989321

`A002376(A000290(n+1))+A000035(2*n)`
-/

namespace A100854.P3224812970069989321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A000290 (n + 1)).toNat + A000035 (2 * n)

end

end A100854.P3224812970069989321

/-! ## A100854.P6974709131955070416

`A277024(A277015(n))+A002376(A000290(n+1))`
-/

namespace A100854.P6974709131955070416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277024 (A277015 n).toNat + A002376 (A000290 (n + 1)).toNat

end

end A100854.P6974709131955070416

/-! ## A100854.P16150964101336886401

`A002376(A000290(n+1))*A010052(A000290(n))`
-/

namespace A100854.P16150964101336886401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A000290 (n + 1)).toNat * A010052 (A000290 n).toNat

end

end A100854.P16150964101336886401

/-! ## A100854.P2809652945750730460

`A010052(A000415(n+1))+A002376(A000290(n+1))`
-/

namespace A100854.P2809652945750730460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000415 (n + 1)).toNat + A002376 (A000290 (n + 1)).toNat

end

end A100854.P2809652945750730460

/-! ## A100854.P422854745326532098

`A010052(A000419(n+1))+A002376(A000290(n+1))`
-/

namespace A100854.P422854745326532098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A000419 (n + 1)).toNat + A002376 (A000290 (n + 1)).toNat

end

end A100854.P422854745326532098

/-! ## A100854.P13153059623108857608

`A010052(A004215(n+1))+A002376(A000290(n+1))`
-/

namespace A100854.P13153059623108857608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004215 (n + 1)).toNat + A002376 (A000290 (n + 1)).toNat

end

end A100854.P13153059623108857608

/-! ## A100854.P9007955332424647540

`A062535(A000196(n+1))+A002376(A000290(n+1))`
-/

namespace A100854.P9007955332424647540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062535 (A000196 (n + 1)).toNat + A002376 (A000290 (n + 1)).toNat

end

end A100854.P9007955332424647540

/-! ## A100854.P11348807703046567368

`A002376(A000290(n+1))/A180466(A180466(n+1))`
-/

namespace A100854.P11348807703046567368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002376 (A000290 (n + 1)).toNat : ℚ) / (A180466 (A180466 (n + 1)).toNat : ℚ)

end

end A100854.P11348807703046567368

/-! ## A100854.P18180811611064696377

`A002376(A000290(n+1))*A180466(A180466(n+2))`
-/

namespace A100854.P18180811611064696377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (A000290 (n + 1)).toNat * A180466 (A180466 (n + 2)).toNat

end

end A100854.P18180811611064696377

/-!
# A100855: a(n) = n*(n^3-n^2+n+1)/2.

The programs for A100855, the canonical program `A100855.P16018307548543562010` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100855 has offset 0).

The definition of A100855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100855.P16018307548543562010

`n*(n^3-n²+n+1)/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100855

/-- `n*(n^3-n²+n+1)/2` -/
def P16018307548543562010.Spec : Prop :=
  ∀ n, P16018307548543562010.a n = (A100855 n : ℚ)

end A100855

/-! ## A100855.P10322031998727084406

`∑[n]+n²*C(n, 2)`
-/

namespace A100855.P10322031998727084406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 * Nat.choose n 2

end

end A100855.P10322031998727084406

namespace A100855

/-- `∑[n]+n²*C(n, 2)` -/
def P10322031998727084406.Spec : Prop :=
  ∀ n, (P10322031998727084406.a n : ℤ) = A100855 n

end A100855

/-! ## A100855.P6697149013799121282

`(n²+1)*C(n, 2)+n`
-/

namespace A100855.P6697149013799121282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) * Nat.choose n 2 + n

end

end A100855.P6697149013799121282

namespace A100855

/-- `(n²+1)*C(n, 2)+n` -/
def P6697149013799121282.Spec : Prop :=
  ∀ n, (P6697149013799121282.a n : ℤ) = A100855 n

end A100855

/-! ## A100855.P15250230611807490650

`A071252(n)+n`
-/

namespace A100855.P15250230611807490650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071252 n + (n : ℤ)

end

end A100855.P15250230611807490650

namespace A100855

/-- `A071252(n)+n` -/
def P15250230611807490650.Spec : Prop :=
  ∀ n, P15250230611807490650.a n = A100855 n

end A100855

/-! ## A100855.P9569393046716071340

`A071237(n)-n^3`
-/

namespace A100855.P9569393046716071340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071237 n - (n ^ 3 : ℤ)

end

end A100855.P9569393046716071340

namespace A100855

/-- `A071237(n)-n^3` -/
def P9569393046716071340.Spec : Prop :=
  ∀ n, P9569393046716071340.a n = A100855 n

end A100855

/-! ## A100855.P2997764960341474729

`A391092(n)+∑[n²]`
-/

namespace A100855.P2997764960341474729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391092 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A100855.P2997764960341474729

namespace A100855

/-- `A391092(n)+∑[n²]` -/
def P2997764960341474729.Spec : Prop :=
  ∀ n, P2997764960341474729.a n = A100855 n

end A100855

/-! ## A100855.P18388333689073278420

`floor(A060884(n)/2+n)`
-/

namespace A100855.P18388333689073278420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060884 n : ℚ) / 2 + (n : ℚ)⌋

end

end A100855.P18388333689073278420

namespace A100855

/-- `floor(A060884(n)/2+n)` -/
def P18388333689073278420.Spec : Prop :=
  ∀ n, P18388333689073278420.a n = A100855 n

end A100855

/-! ## A100855.P3981482340549319611

`A171129(n)+n²+n`
-/

namespace A100855.P3981482340549319611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + (n ^ 2 + n : ℤ)

end

end A100855.P3981482340549319611

namespace A100855

/-- `A171129(n)+n²+n` -/
def P3981482340549319611.Spec : Prop :=
  ∀ n, P3981482340549319611.a n = A100855 n

end A100855

/-! ## A100855.P12854090450307044583

`A071246(n)+A006484(n)`
-/

namespace A100855.P12854090450307044583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071246 n + A006484 n

end

end A100855.P12854090450307044583

namespace A100855

/-- `A071246(n)+A006484(n)` -/
def P12854090450307044583.Spec : Prop :=
  ∀ n, P12854090450307044583.a n = A100855 n

end A100855

/-! ## A100855.P16182864730876253723

`A161680(n)+A101375(n)`
-/

namespace A100855.P16182864730876253723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A101375 n

end

end A100855.P16182864730876253723

namespace A100855

/-- `A161680(n)+A101375(n)` -/
def P16182864730876253723.Spec : Prop :=
  ∀ n, P16182864730876253723.a n = A100855 n

end A100855

/-! ## A100855.P10098076583827943274

`A349919(n)+A060354(n)`
-/

namespace A100855.P10098076583827943274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349919 n + A060354 n

end

end A100855.P10098076583827943274

namespace A100855

/-- `A349919(n)+A060354(n)` -/
def P10098076583827943274.Spec : Prop :=
  ∀ n, P10098076583827943274.a n = A100855 n

end A100855

/-! ## A100855.P7933867411847134906

`A163102(n)-A004188(n)`
-/

namespace A100855.P7933867411847134906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 n - A004188 n

end

end A100855.P7933867411847134906

namespace A100855

/-- `A163102(n)-A004188(n)` -/
def P7933867411847134906.Spec : Prop :=
  ∀ n, P7933867411847134906.a n = A100855 n

end A100855

/-! ## A100855.P3308574933589241170

`A037270(n)-A135503(n)`
-/

namespace A100855.P3308574933589241170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A135503 n

end

end A100855.P3308574933589241170

namespace A100855

/-- `A037270(n)-A135503(n)` -/
def P3308574933589241170.Spec : Prop :=
  ∀ n, P3308574933589241170.a n = A100855 n

end A100855

/-! ## A100855.P12240675290731271299

`A167963(n)-A085743(n)`
-/

namespace A100855.P12240675290731271299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167963 n - A085743 n

end

end A100855.P12240675290731271299

namespace A100855

/-- `A167963(n)-A085743(n)` -/
def P12240675290731271299.Spec : Prop :=
  ∀ n, P12240675290731271299.a n = A100855 n

end A100855

/-! ## A100855.P18237636965496438841

`A168192(n)-A085742(n)`
-/

namespace A100855.P18237636965496438841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 n - A085742 n

end

end A100855.P18237636965496438841

namespace A100855

/-- `A168192(n)-A085742(n)` -/
def P18237636965496438841.Spec : Prop :=
  ∀ n, P18237636965496438841.a n = A100855 n

end A100855

/-! ## A100855.P4362609403984325206

`A085537(n)-A171129(n)`
-/

namespace A100855.P4362609403984325206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n - A171129 n

end

end A100855.P4362609403984325206

namespace A100855

/-- `A085537(n)-A171129(n)` -/
def P4362609403984325206.Spec : Prop :=
  ∀ n, P4362609403984325206.a n = A100855 n

end A100855

/-! ## A100855.P9311479283211477537

`A309372(n)-A071252(n)`
-/

namespace A100855.P9311479283211477537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 n - A071252 n

end

end A100855.P9311479283211477537

namespace A100855

/-- `A309372(n)-A071252(n)` -/
def P9311479283211477537.Spec : Prop :=
  ∀ n, P9311479283211477537.a n = A100855 n

end A100855

/-! ## A100855.P16432188293318918436

`A239592(n)-A143689(n)`
-/

namespace A100855.P16432188293318918436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239592 n - A143689 n

end

end A100855.P16432188293318918436

namespace A100855

/-- `A239592(n)-A143689(n)` -/
def P16432188293318918436.Spec : Prop :=
  ∀ n, P16432188293318918436.a n = A100855 n

end A100855

/-! ## A100855.P10309140415044872374

`A168351(n)%A165563(n)`
-/

namespace A100855.P10309140415044872374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168351 n) (A165563 n)

end

end A100855.P10309140415044872374

namespace A100855

/-- `A168351(n)%A165563(n)` -/
def P10309140415044872374.Spec : Prop :=
  ∀ n, P10309140415044872374.a n = A100855 n

end A100855

/-! ## A100855.P5768564068827215128

`A135509(n)%A100177(n+1)`
-/

namespace A100855.P5768564068827215128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135509 n) (A100177 (n + 1))

end

end A100855.P5768564068827215128

namespace A100855

/-- `A135509(n)%A100177(n+1)` -/
def P5768564068827215128.Spec : Prop :=
  ∀ n, P5768564068827215128.a n = A100855 n

end A100855

/-!
# A100856: a(n) = (prime(n) - 1)! + prime(n).

The programs for A100856, there is no canonical definition to state claims against.
-/

/-! ## A100856.P4989389023360850333

`p?[comp[n²]]+record[A000010(n+1)!]`
-/

namespace A100856.P4989389023360850333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A100856.P4989389023360850333

/-! ## A100856.P11160561079681136213

`record[(A006530(n+2)-1)!+n+2]`
-/

namespace A100856.P11160561079681136213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A006530 (n + 2) - 1).toNat + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100856.P11160561079681136213

/-! ## A100856.P7418618193736451453

`record[(A020639(n+2)-1)!+n+2]`
-/

namespace A100856.P7418618193736451453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A020639 (n + 2) - 1).toNat + (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100856.P7418618193736451453

/-! ## A100856.P1917364229295400255

`A213169(record[A000010(n+1)])`
-/

namespace A100856.P1917364229295400255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213169 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100856.P1917364229295400255

/-! ## A100856.P9148078448949836191

`A213169(A000040(n+1)-1)`
-/

namespace A100856.P9148078448949836191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213169 (A000040 (n + 1) - 1).toNat

end

end A100856.P9148078448949836191

/-!
# A100858: Primes of the form (p - 1)! + p, p prime.

The programs for A100858, there is no canonical definition to state claims against.
-/

/-! ## A100858.P11767731178539698306

`A073309(n+2)`
-/

namespace A100858.P11767731178539698306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073309 (n + 2)

end

end A100858.P11767731178539698306

/-!
# A100859: Beginning with 3, increasing primes such that no two adjacent terms are congruent mod 4.

The programs for A100859, there is no canonical definition to state claims against.
-/

/-! ## A100859.P8088041216184463361

`2*A215523(n+1)+1`
-/

namespace A100859.P8088041216184463361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215523 (n + 1) + 1

end

end A100859.P8088041216184463361

/-! ## A100859.P10051458630001679024

`or(1, 2*A215523(-xor(n, -1)))`
-/

namespace A100859.P10051458630001679024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A215523 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A100859.P10051458630001679024

/-! ## A100859.P12614688922278276287

`p?[n+3-and(2, A175851(n+1))]`
-/

namespace A100859.P12614688922278276287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - Int.land 2 (A175851 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100859.P12614688922278276287

/-! ## A100859.P333712759547415560

`p?[2*n-n%2-A051698(n)]`
-/

namespace A100859.P333712759547415560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 2 : ℕ) : ℤ) - A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100859.P333712759547415560

/-! ## A100859.P12435209710421119328

`p?[abs((n-1)%A000203(a(n-2))-n)]` with `a(0)=4, a(1)=1`
-/

namespace A100859.P12435209710421119328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  |Int.tmod ((n : ℤ) - 1) (A000203 (f1 (n - 2)).toNat) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100859.P12435209710421119328

/-! ## A100859.P11565447333870428574

`2*eq[2, C(2, a(n-1))*A000005(2*n+1)]+1` with `a(0)=0`
-/

namespace A100859.P11565447333870428574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (Nat.choose 2 (f2 (n - 1)).toNat : ℤ) * A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A100859.P11565447333870428574

/-! ## A100859.P14790318986061415530

`A003961(A098058(n+1))`
-/

namespace A100859.P14790318986061415530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A098058 (n + 1)).toNat

end

end A100859.P14790318986061415530

/-! ## A100859.P17610259543020147619

`A037287(A215523(n+1))`
-/

namespace A100859.P17610259543020147619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037287 (A215523 (n + 1)).toNat

end

end A100859.P17610259543020147619

/-! ## A100859.P5637654463276646479

`A060308(A215523(n+1)+1)`
-/

namespace A100859.P5637654463276646479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A215523 (n + 1) + 1).toNat

end

end A100859.P5637654463276646479

/-! ## A100859.P13328574446442308615

`A000040(∑[A091237(n+1)]+1)`
-/

namespace A100859.P13328574446442308615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A100859.P13328574446442308615

/-!
# A100860: Lesser of two consecutive primes of forms 4k+3 and 4k+1 respectively.

The programs for A100860, there is no canonical definition to state claims against.
-/

/-! ## A100860.P1678320746948318910

`A098058(2*(n+1))`
-/

namespace A100860.P1678320746948318910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (2 * (n + 1))

end

end A100860.P1678320746948318910

/-! ## A100860.P4071537997601264741

`record[A098058(xor(1, n)+1)]`
-/

namespace A100860.P4071537997601264741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100860.P4071537997601264741

/-! ## A100860.P3780952983413001157

`∑{p}[A098058(n+2+n), #]`
-/

namespace A100860.P3780952983413001157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A100860.P3780952983413001157

/-! ## A100860.P8308782229920455165

`p?[(n+1)*A246272(n+1)]`
-/

namespace A100860.P8308782229920455165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A246272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100860.P8308782229920455165

/-! ## A100860.P6482376927946437617

`p?[A098058(n+1)^(n%2)]`
-/

namespace A100860.P6482376927946437617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A100860.P6482376927946437617

/-! ## A100860.P7286644487654941537

`or(1, A098058(record[2-xor(1, -n)]))`
-/

namespace A100860.P7286644487654941537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A100860.P7286644487654941537

/-! ## A100860.P2912083616595699597

`record[A098058(A133265(n))]`
-/

namespace A100860.P2912083616595699597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100860.P2912083616595699597

/-! ## A100860.P1904671444244649352

`A064989(A100877(n+1))`
-/

namespace A100860.P1904671444244649352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A100877 (n + 1)).toNat

end

end A100860.P1904671444244649352

/-! ## A100860.P4744031681743188093

`record[A098058(2*A133310(n))]`
-/

namespace A100860.P4744031681743188093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100860.P4744031681743188093

/-! ## A100860.P2936323235726567435

`A060308(A215523(2*(n+1)))`
-/

namespace A100860.P2936323235726567435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A215523 (2 * (n + 1))).toNat

end

end A100860.P2936323235726567435

/-!
# A100861: Triangle of Bessel numbers read by rows: T(n,k) is the number of k-matchings of the complete graph K(n).

The programs for A100861, the canonical program `A100861.P8415527314952672000` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100861 has offset 0).

The definition of A100861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100861.P9528633908524878137

`A144299(2*n-A322832(n))`
-/

namespace A100861.P9528633908524878137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 ((2 * n : ℤ) - A322832 n).toNat

end

end A100861.P9528633908524878137

namespace A100861

/-- `A144299(2*n-A322832(n))` -/
def P9528633908524878137.Spec : Prop :=
  ∀ n, P9528633908524878137.a n = A100861 n

end A100861

/-! ## A100861.P13537345125136410660

`A144299(n-A322832(n)+n)`
-/

namespace A100861.P13537345125136410660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 ((n : ℤ) - A322832 n + (n : ℤ)).toNat

end

end A100861.P13537345125136410660

namespace A100861

/-- `A144299(n-A322832(n)+n)` -/
def P13537345125136410660.Spec : Prop :=
  ∀ n, P13537345125136410660.a n = A100861 n

end A100861

/-! ## A100861.P1422327665813254675

`A144299(n-(A322832(n)-n))`
-/

namespace A100861.P1422327665813254675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 ((n : ℤ) - (A322832 n - (n : ℤ))).toNat

end

end A100861.P1422327665813254675

namespace A100861

/-- `A144299(n-(A322832(n)-n))` -/
def P1422327665813254675.Spec : Prop :=
  ∀ n, P1422327665813254675.a n = A100861 n

end A100861

/-! ## A100861.P7103379943128596220

`A144299(record[n%A038722(n+1)])`
-/

namespace A100861.P7103379943128596220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A038722 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100861.P7103379943128596220

namespace A100861

/-- `A144299(record[n%A038722(n+1)])` -/
def P7103379943128596220.Spec : Prop :=
  ∀ n, P7103379943128596220.a n = A100861 n

end A100861

/-! ## A100861.P5100604824721905492

`A144299(eq[A002262(n), A051777(n+1)])`
-/

namespace A100861.P5100604824721905492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A100861.P5100604824721905492

namespace A100861

/-- `A144299(eq[A002262(n), A051777(n+1)])` -/
def P5100604824721905492.Spec : Prop :=
  ∀ n, P5100604824721905492.a n = A100861 n

end A100861

/-! ## A100861.P8415527314952672000

`A059344(n)/2^A055087(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A100861

/-- `A059344(n)/2^A055087(n)` -/
def P8415527314952672000.Spec : Prop :=
  ∀ n, P8415527314952672000.a n = (A100861 n : ℚ)

end A100861

/-! ## A100861.P9316815778908153389

`gcd(A059344(n), A114320(n))`
-/

namespace A100861.P9316815778908153389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059344 n) (A114320 n)

end

end A100861.P9316815778908153389

namespace A100861

/-- `gcd(A059344(n), A114320(n))` -/
def P9316815778908153389.Spec : Prop :=
  ∀ n, (P9316815778908153389.a n : ℤ) = A100861 n

end A100861

/-! ## A100861.P16407859947250504474

`A001498(A091018(n))`
-/

namespace A100861.P16407859947250504474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 (A091018 n).toNat

end

end A100861.P16407859947250504474

namespace A100861

/-- `A001498(A091018(n))` -/
def P16407859947250504474.Spec : Prop :=
  ∀ n, P16407859947250504474.a n = A100861 n

end A100861

/-!
# A100862: Triangle read by rows: T(n,k) is the number of k-matchings of the corona K'(n) of the complete graph K(n) and the complete graph K(1); in other words, K'(n) is the graph constructed from K(n) by adding for each vertex v a new vertex v' and the edge vv'.

The programs for A100862, there is no canonical definition to state claims against.
-/

/-! ## A100862.P3312894926289275543

`or(A007814(A154227(n)), A088925(n))`
-/

namespace A100862.P3312894926289275543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A154227 n).toNat) (A088925 n)

end

end A100862.P3312894926289275543

/-! ## A100862.P16764621675732160379

`or(A088925(n), A165878(A007318(n)))`
-/

namespace A100862.P16764621675732160379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088925 n) (A165878 (A007318 n).toNat)

end

end A100862.P16764621675732160379

/-! ## A100862.P5764694719358633854

`or(A107105(n), A165878(A007318(n)))`
-/

namespace A100862.P5764694719358633854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107105 n) (A165878 (A007318 n).toNat)

end

end A100862.P5764694719358633854

/-! ## A100862.P18127588510262589259

`filter[A088925(n), A103583(#)]`
-/

namespace A100862.P18127588510262589259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A100862.P18127588510262589259

/-!
# A100864: Continued fraction expansion of the square of the constant (A100338) which has the continued fraction equal to A006519 (highest power of 2 dividing n).

The programs for A100864, there is no canonical definition to state claims against.
-/

/-! ## A100864.P2919697124319949274

`A100865(A337377(n)^2^val(n+1, 2))`
-/

namespace A100864.P2919697124319949274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100865 (A337377 n ^ 2 ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A100864.P2919697124319949274

/-! ## A100864.P4653566131326185446

`A100865(A337377(n)^(or(n, n+1)-n))`
-/

namespace A100864.P4653566131326185446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100865 (SequenceMachineLib.roundAway ((A337377 n : ℚ) ^ ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A100864.P4653566131326185446

/-! ## A100864.P14839037164486014073

`A100865(A337377(n)^xor(n, or(n, n+1)))`
-/

namespace A100864.P14839037164486014073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100865 (A337377 n ^ Nat.xor n (Nat.lor n (n + 1))).toNat

end

end A100864.P14839037164486014073

/-! ## A100864.P2867641044843170634

`A100865(A337377(n)^and(n+1, -(n+1)))`
-/

namespace A100864.P2867641044843170634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100865 (SequenceMachineLib.roundAway ((A337377 n : ℚ) ^ (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℤ))).toNat

end

end A100864.P2867641044843170634

/-!
# A100865: Records in the continued fraction expansion A100864.

The programs for A100865, there is no canonical definition to state claims against.
-/

/-! ## A100865.P3528583117256573232

`record[A100864(n+1)]`
-/

namespace A100865.P3528583117256573232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100865.P3528583117256573232

/-! ## A100865.P2555465508851853362

`A100864(A100866(n+1))`
-/

namespace A100865.P2555465508851853362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100864 (A100866 (n + 1)).toNat

end

end A100865.P2555465508851853362

/-!
# A100866: Positions of records in the continued fraction expansion A100864.

The programs for A100866, there is no canonical definition to state claims against.
-/

/-! ## A100866.P11983325809873318785

`record[A114278(∑[A048804(n)])]`
-/

namespace A100866.P11983325809873318785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114278 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100866.P11983325809873318785

/-! ## A100866.P11085264022181330360

`record[gcd(A325266(n+1), A325312(n+1))]`
-/

namespace A100866.P11085264022181330360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325266 (n + 1)) (A325312 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100866.P11085264022181330360

/-! ## A100866.P7187852699589748339

`or(A003004(A018164(n)), A097564(n))`
-/

namespace A100866.P7187852699589748339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003004 (A018164 n).toNat) (A097564 n)

end

end A100866.P7187852699589748339

/-! ## A100866.P11323504721477445312

`A232443(A076185(2*(n+2))+A005109(n+4)-A165595(n))`
-/

namespace A100866.P11323504721477445312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232443 (A076185 (2 * (n + 2)) + (A005109 (n + 4) - A165595 n)).toNat

end

end A100866.P11323504721477445312

/-!
# A100867: Smallest positive integer k such that A000037(n) is not a quadratic residue modulo k.

The programs for A100867, there is no canonical definition to state claims against.
-/

/-! ## A100867.P15678461690340820307

`A139401(A000037(n+1))`
-/

namespace A100867.P15678461690340820307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A000037 (n + 1)).toNat

end

end A100867.P15678461690340820307

/-! ## A100867.P15072006198306823032

`A139401(comp[n²])`
-/

namespace A100867.P15072006198306823032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A100867.P15072006198306823032

/-! ## A100867.P6449103256180083189

`dr(A139401(comp[A000290(n)]))`
-/

namespace A100867.P6449103256180083189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A100867.P6449103256180083189

/-! ## A100867.P6452794154984713811

`filter[A139401(n+1), A097325(#)]`
-/

namespace A100867.P6452794154984713811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A100867.P6452794154984713811

/-! ## A100867.P16028715627726654612

`filter[A139401(n+1), A145568(#)]`
-/

namespace A100867.P16028715627726654612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A100867.P16028715627726654612

/-! ## A100867.P4514259806045608889

`filter[A139401(n+1), A168046(#)]`
-/

namespace A100867.P4514259806045608889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A100867.P4514259806045608889

/-! ## A100867.P15489070720107891440

`filter[A139401(n+1), A168184(#)]`
-/

namespace A100867.P15489070720107891440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A100867.P15489070720107891440

/-! ## A100867.P9713168385912936701

`filter[A139401(n+1), A168185(#)]`
-/

namespace A100867.P9713168385912936701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A100867.P9713168385912936701

/-! ## A100867.P12452026028919891464

`filter[A139401(n+1), A182067(#)]`
-/

namespace A100867.P12452026028919891464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A100867.P12452026028919891464

/-! ## A100867.P14507601112318402291

`filter[A139401(n+1), A188642(#)]`
-/

namespace A100867.P14507601112318402291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A100867.P14507601112318402291

/-! ## A100867.P4055200902222286682

`filter[A139401(n+1), A368905(#)]`
-/

namespace A100867.P4055200902222286682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368905 (f1 j).toNat = 1) n)

end

end A100867.P4055200902222286682

/-!
# A100868: a(n) = Sum_{k>0} k^(2n-1)/phi^(2k) where phi = (1+sqrt(5))/2 = A001622.

The programs for A100868, there is no canonical definition to state claims against.
-/

/-! ## A100868.P12305233597235324897

`A050946(2*(n+1)-1)`
-/

namespace A100868.P12305233597235324897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (2 * (n + 1) - 1)

end

end A100868.P12305233597235324897

/-! ## A100868.P13941803764476481887

`A307361(Δ[n²])`
-/

namespace A100868.P13941803764476481887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A100868.P13941803764476481887

/-! ## A100868.P8993360238957229218

`record[A050946(xor(1, n))]`
-/

namespace A100868.P8993360238957229218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100868.P8993360238957229218

/-! ## A100868.P15731048621478837027

`record[A050946(Δ[A048761(n)])]`
-/

namespace A100868.P15731048621478837027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100868.P15731048621478837027

/-! ## A100868.P3792445451571253472

`record[A307361(Δ[A001318(n)])]`
-/

namespace A100868.P3792445451571253472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307361 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100868.P3792445451571253472

/-!
# A100869: Triangle read by rows: T(n,k) = minimal sum of denominators needed to write k/n (for 1 <= k <= n with gcd(k,n) = 1) as a sum of unit fractions, where k/n is in lowest terms.

The programs for A100869, there is no canonical definition to state claims against.
-/

/-! ## A100869.P2796693010427816477

`A111809(2+n)`
-/

namespace A100869.P2796693010427816477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111809 (2 + n)

end

end A100869.P2796693010427816477

/-!
# A100872: a(n) = (1/sqrt(5)) * Sum_{k>0} k^(2n)/phi^(2k) where phi = (1+sqrt(5))/2 = A001622.

The programs for A100872, there is no canonical definition to state claims against.
-/

/-! ## A100872.P2791011842032762758

`A050946(2*(n+1))`
-/

namespace A100872.P2791011842032762758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (2 * (n + 1))

end

end A100872.P2791011842032762758

/-! ## A100872.P4578732847951573586

`A210672(n+1)/2`
-/

namespace A100872.P4578732847951573586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210672 (n + 1) : ℚ) / 2

end

end A100872.P4578732847951573586

/-! ## A100872.P4166766184655938113

`Δ[∑[A210672(n)]/2]`
-/

namespace A100872.P4166766184655938113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210672 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100872.P4166766184655938113

/-! ## A100872.P14021198451374941905

`record[A050946(A124625(n))]`
-/

namespace A100872.P14021198451374941905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (A124625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A100872.P14021198451374941905

/-! ## A100872.P10394002758460610431

`or(1, A050946(A103517(n)))`
-/

namespace A100872.P10394002758460610431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050946 (A103517 n).toNat)

end

end A100872.P10394002758460610431

/-!
# A100873: Pseudotwinprimes p+2 for primes p such that p+2 divides p^(p+2)+2 and p+2 is composite.

The programs for A100873, there is no canonical definition to state claims against.
-/

/-! ## A100873.P3443123935683855553

`p?[A192297(n+1)]+2`
-/

namespace A100873.P3443123935683855553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A100873.P3443123935683855553

/-! ## A100873.P17105521571704235242

`p?[A001567(n+1)-2]+2`
-/

namespace A100873.P17105521571704235242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A100873.P17105521571704235242

/-! ## A100873.P9296818787087619114

`∩[A001567(n+1), A028815(n)+1]`
-/

namespace A100873.P9296818787087619114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100873.P9296818787087619114

/-! ## A100873.P2001112541951419123

`∩[A000040(n+1)+2, A001567(n+1)]`
-/

namespace A100873.P2001112541951419123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100873.P2001112541951419123

/-! ## A100873.P12948784984594864668

`∩[A001567(n+1), A307750(n+1)+2]`
-/

namespace A100873.P12948784984594864668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307750 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100873.P12948784984594864668

/-!
# A100874: Number of terms of A100873 less than 10^n.

The programs for A100874, there is no canonical definition to state claims against.
-/

/-! ## A100874.P14316093063107583350

`A104463(A228820(n))+A062728(A254041(n+1))`
-/

namespace A100874.P14316093063107583350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104463 (A228820 n).toNat + A062728 (A254041 (n + 1)).toNat

end

end A100874.P14316093063107583350

/-!
# A100875: Pseudoquadprimes: p+4 for primes p where p+4 divides p^(p+4) + 4 and p+4 is composite.

The programs for A100875, there is no canonical definition to state claims against.
-/

/-! ## A100875.P16680292388262859717

`p?[A020136(n+1)-4]+4`
-/

namespace A100875.P16680292388262859717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A100875.P16680292388262859717

/-! ## A100875.P8358563625610745084

`∩[A020136(n+1), A164383(n+1)]`
-/

namespace A100875.P8358563625610745084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A100875.P8358563625610745084

/-! ## A100875.P2910989186845149140

`A007535(p?[A020136(n+1)-4])`
-/

namespace A100875.P2910989186845149140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100875.P2910989186845149140

/-! ## A100875.P15418933147109413012

`A090085(p?[A020136(n+1)-4])`
-/

namespace A100875.P15418933147109413012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090085 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100875.P15418933147109413012

/-! ## A100875.P10592385842003215098

`A239293(p?[A020136(n+1)-4])`
-/

namespace A100875.P10592385842003215098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239293 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100875.P10592385842003215098

/-!
# A100876: Least number of squares that sum to prime(n).

The programs for A100876, the canonical program `A100876.P16570100526589804960` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100876 has offset 1).

The definition of A100876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A100876.P18436254941489360095

`A002828(p?[comp[n²]])`
-/

namespace A100876.P18436254941489360095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100876.P18436254941489360095

namespace A100876

/-- `A002828(p?[comp[n²]])` -/
def P18436254941489360095.Spec : Prop :=
  ∀ n, P18436254941489360095.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P11436563210910342323

`4-C(2, A088192(n+1))`
-/

namespace A100876.P11436563210910342323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.choose 2 (A088192 (n + 1)).toNat : ℤ)

end

end A100876.P11436563210910342323

namespace A100876

/-- `4-C(2, A088192(n+1))` -/
def P11436563210910342323.Spec : Prop :=
  ∀ n, P11436563210910342323.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P4638696499191116240

`A002828(4*p?[xor(1, n)+1])`
-/

namespace A100876.P4638696499191116240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A100876.P4638696499191116240

namespace A100876

/-- `A002828(4*p?[xor(1, n)+1])` -/
def P4638696499191116240.Spec : Prop :=
  ∀ n, P4638696499191116240.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P2552464796657006535

`A002828(p?[xor(1, n)+1])%5`
-/

namespace A100876.P2552464796657006535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002828 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) 5

end

end A100876.P2552464796657006535

namespace A100876

/-- `A002828(p?[xor(1, n)+1])%5` -/
def P2552464796657006535.Spec : Prop :=
  ∀ n, P2552464796657006535.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P2405862626246517261

`A002828(4*p?[abs(xor(1, -n))])`
-/

namespace A100876.P2405862626246517261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100876.P2405862626246517261

namespace A100876

/-- `A002828(4*p?[abs(xor(1, -n))])` -/
def P2405862626246517261.Spec : Prop :=
  ∀ n, P2405862626246517261.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P2248525294661976238

`A002828(p?[abs(xor(1, -n))])%9`
-/

namespace A100876.P2248525294661976238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002828 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 9

end

end A100876.P2248525294661976238

namespace A100876

/-- `A002828(p?[abs(xor(1, -n))])%9` -/
def P2248525294661976238.Spec : Prop :=
  ∀ n, P2248525294661976238.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P6550464798925215035

`A002828(∏{d}[p?[xor(1, n)+1], #])`
-/

namespace A100876.P6550464798925215035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A100876.P6550464798925215035

namespace A100876

/-- `A002828(∏{d}[p?[xor(1, n)+1], #])` -/
def P6550464798925215035.Spec : Prop :=
  ∀ n, P6550464798925215035.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P8236454445481457382

`A002828(∑{p}[p?[xor(1, n)+1], #])`
-/

namespace A100876.P8236454445481457382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A100876.P8236454445481457382

namespace A100876

/-- `A002828(∑{p}[p?[xor(1, n)+1], #])` -/
def P8236454445481457382.Spec : Prop :=
  ∀ n, P8236454445481457382.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P8165960052843150253

`A002828(and(p?[xor(1, n)+1], -1))`
-/

namespace A100876.P8165960052843150253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (-1)).toNat

end

end A100876.P8165960052843150253

namespace A100876

/-- `A002828(and(p?[xor(1, n)+1], -1))` -/
def P8165960052843150253.Spec : Prop :=
  ∀ n, P8165960052843150253.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P9479758249124276466

`A002828(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A100876.P9479758249124276466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A100876.P9479758249124276466

namespace A100876

/-- `A002828(∑{p}[p?[round(8*n/7)]², #])` -/
def P9479758249124276466.Spec : Prop :=
  ∀ n, P9479758249124276466.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P3273240162067847461

`A002828(3*3*p?[round(8*n/7)])`
-/

namespace A100876.P3273240162067847461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (3 * (3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A100876.P3273240162067847461

namespace A100876

/-- `A002828(3*3*p?[round(8*n/7)])` -/
def P3273240162067847461.Spec : Prop :=
  ∀ n, P3273240162067847461.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P13466125741921337053

`A002828(Δ[A007504(n)])`
-/

namespace A100876.P13466125741921337053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (f1 (n + 1) - f1 n).toNat

end

end A100876.P13466125741921337053

namespace A100876

/-- `A002828(Δ[A007504(n)])` -/
def P13466125741921337053.Spec : Prop :=
  ∀ n, P13466125741921337053.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P11575697602917239008

`A151925(Δ[A007504(n)])`
-/

namespace A100876.P11575697602917239008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151925 (f1 (n + 1) - f1 n).toNat

end

end A100876.P11575697602917239008

namespace A100876

/-- `A151925(Δ[A007504(n)])` -/
def P11575697602917239008.Spec : Prop :=
  ∀ n, P11575697602917239008.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P9018895713934080173

`A002828(record[A051698(n)])`
-/

namespace A100876.P9018895713934080173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A100876.P9018895713934080173

namespace A100876

/-- `A002828(record[A051698(n)])` -/
def P9018895713934080173.Spec : Prop :=
  ∀ n, P9018895713934080173.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P12293106875700580363

`A002828(A000040(n+1))`
-/

namespace A100876.P12293106875700580363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000040 (n + 1)).toNat

end

end A100876.P12293106875700580363

namespace A100876

/-- `A002828(A000040(n+1))` -/
def P12293106875700580363.Spec : Prop :=
  ∀ n, P12293106875700580363.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P483486046516778192

`A002828(A001749(n+1))`
-/

namespace A100876.P483486046516778192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A001749 (n + 1)).toNat

end

end A100876.P483486046516778192

namespace A100876

/-- `A002828(A001749(n+1))` -/
def P483486046516778192.Spec : Prop :=
  ∀ n, P483486046516778192.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P17380336203698199959

`A002828(A072900(n+1))`
-/

namespace A100876.P17380336203698199959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A072900 (n + 1)).toNat

end

end A100876.P17380336203698199959

namespace A100876

/-- `A002828(A072900(n+1))` -/
def P17380336203698199959.Spec : Prop :=
  ∀ n, P17380336203698199959.a n = A100876 (n + 1)

end A100876

/-! ## A100876.P16570100526589804960

`A081611(A227471(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A100876

/-- `A081611(A227471(n+1))` -/
def P16570100526589804960.Spec : Prop :=
  ∀ n, P16570100526589804960.a n = A100876 (n + 1)

theorem P16570100526589804960.correct : P16570100526589804960.Spec := by
  intro n
  simp only [A100876, Nat.add_sub_cancel]

end A100876

/-! ## A100876.P7107753752172137343

`A300404(A023512(n+1))`
-/

namespace A100876.P7107753752172137343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300404 (A023512 (n + 1)).toNat

end

end A100876.P7107753752172137343

namespace A100876

/-- `A300404(A023512(n+1))` -/
def P7107753752172137343.Spec : Prop :=
  ∀ n, P7107753752172137343.a n = A100876 (n + 1)

end A100876

/-!
# A100877: Greater of two consecutive primes of form 4k+3 and 4k+1 respectively.

The programs for A100877, there is no canonical definition to state claims against.
-/

/-! ## A100877.P6585021659936746946

`2*A215523(2*(n+1))+1`
-/

namespace A100877.P6585021659936746946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215523 (2 * (n + 1)) + 1

end

end A100877.P6585021659936746946

/-! ## A100877.P6577850035398583789

`A003961(A100860(n+1))`
-/

namespace A100877.P6577850035398583789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A100860 (n + 1)).toNat

end

end A100877.P6577850035398583789

/-! ## A100877.P11023491539372958529

`A007918(A072568(Δ[n²]))`
-/

namespace A100877.P11023491539372958529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A072568 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A100877.P11023491539372958529

/-! ## A100877.P8656533827089930176

`A151800(p?[A100860(n+1)])`
-/

namespace A100877.P8656533827089930176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100877.P8656533827089930176

/-! ## A100877.P13103805568454501681

`A282141(p?[A100860(n+1)])`
-/

namespace A100877.P13103805568454501681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282141 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100877.P13103805568454501681

/-! ## A100877.P11806045631534823240

`A322863(p?[A100860(n+1)])`
-/

namespace A100877.P11806045631534823240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A100877.P11806045631534823240

/-! ## A100877.P13774050840160747570

`A007918(A100860(n+1)+1)`
-/

namespace A100877.P13774050840160747570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A100860 (n + 1) + 1).toNat

end

end A100877.P13774050840160747570

/-! ## A100877.P5251710759692719606

`A151800(A100860(n+1)+1)`
-/

namespace A100877.P5251710759692719606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A100860 (n + 1) + 1).toNat

end

end A100877.P5251710759692719606

/-! ## A100877.P13988453306747230909

`A003961(A098058(2*(n+1)))`
-/

namespace A100877.P13988453306747230909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A098058 (2 * (n + 1))).toNat

end

end A100877.P13988453306747230909

/-! ## A100877.P17133495198754134199

`A037464(A215523(2*(n+1)))`
-/

namespace A100877.P17133495198754134199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037464 (A215523 (2 * (n + 1))).toNat

end

end A100877.P17133495198754134199

/-!
# A100879: a(n) = n^sigma(n).

The programs for A100879, the canonical program `A100879.P18333379165810020226` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100879 has offset 1).

The definition of A100879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100879.P18333379165810020226

`(n+1)^A000203(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A100879

/-- `(n+1)^A000203(n+1)` -/
def P18333379165810020226.Spec : Prop :=
  ∀ n, P18333379165810020226.a n = (A100879 (n + 1) : ℚ)

end A100879

/-! ## A100879.P12737251587678590684

`(n+1)^∑{d}[n+1, #]`
-/

namespace A100879.P12737251587678590684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ d ∈ Nat.divisors (f1 n), d)

end

end A100879.P12737251587678590684

namespace A100879

/-- `(n+1)^∑{d}[n+1, #]` -/
def P12737251587678590684.Spec : Prop :=
  ∀ n, (P12737251587678590684.a n : ℤ) = A100879 (n + 1)

end A100879

/-! ## A100879.P9851236923486468808

`∏{d}[n+1, (n+1)^#]`
-/

namespace A100879.P9851236923486468808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (n + 1) ^ d

end

end A100879.P9851236923486468808

namespace A100879

/-- `∏{d}[n+1, (n+1)^#]` -/
def P9851236923486468808.Spec : Prop :=
  ∀ n, (P9851236923486468808.a n : ℤ) = A100879 (n + 1)

end A100879

/-! ## A100879.P16782669805508633549

`root(n+1, 1/∑{d}[n+1, #])`
-/

namespace A100879.P16782669805508633549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (1 / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) : ℝ))

end

end A100879.P16782669805508633549

namespace A100879

/-- `root(n+1, 1/∑{d}[n+1, #])` -/
def P16782669805508633549.Spec : Prop :=
  ∀ n, P16782669805508633549.a n = (A100879 (n + 1) : ℝ)

end A100879

/-! ## A100879.P2524842761436314657

`∏{d}[n+1, root(n+1, 2/#)]²`
-/

namespace A100879.P2524842761436314657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), (n + 1 : ℝ) ^ (1 / (2 / (d : ℚ) : ℝ))) ^ 2

end

end A100879.P2524842761436314657

namespace A100879

/-- `∏{d}[n+1, root(n+1, 2/#)]²` -/
def P2524842761436314657.Spec : Prop :=
  ∀ n, P2524842761436314657.a n = (A100879 (n + 1) : ℝ)

end A100879

/-!
# A100880: First differences of A100787.

The programs for A100880, there is no canonical definition to state claims against.
-/

/-! ## A100880.P18407916076146656560

`Δ[A100787(n+1)]`
-/

namespace A100880.P18407916076146656560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100880.P18407916076146656560

/-! ## A100880.P5915255468391641379

`abs(Δ[A100787(ϕ²-(ϕ-n))])`
-/

namespace A100880.P5915255468391641379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100787 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A100880.P5915255468391641379

/-! ## A100880.P12430853517494545022

`A100787(n+2)-A100787(n+1)`
-/

namespace A100880.P12430853517494545022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100787 (n + 2) - A100787 (n + 1)

end

end A100880.P12430853517494545022

/-! ## A100880.P4739692052401070588

`and(Δ[A100787(ϕ²-(ϕ-n))], A065532(n))`
-/

namespace A100880.P4739692052401070588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100787 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A065532 n)

end

end A100880.P4739692052401070588

/-! ## A100880.P10161425048907703105

`Δ[A100787(ϕ²-(ϕ-n))-A007318(C(2, n))]`
-/

namespace A100880.P10161425048907703105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100787 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - A007318 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100880.P10161425048907703105

/-!
# A100882: Number of partitions of n in which the sequence of frequencies of the summands is nonincreasing.

The programs for A100882, there is no canonical definition to state claims against.
-/

/-! ## A100882.P9632194271195705849

`A332339(n)+A100910(A283212(n))`
-/

namespace A100882.P9632194271195705849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332339 n + A100910 (A283212 n).toNat

end

end A100882.P9632194271195705849

/-! ## A100882.P9600683152101169868

`A332339(n)+A100910(A061256(n))`
-/

namespace A100882.P9600683152101169868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332339 n + A100910 (A061256 n).toNat

end

end A100882.P9600683152101169868

/-! ## A100882.P6204071810563401219

`A332339(n)+A100910(A120393(n+1))`
-/

namespace A100882.P6204071810563401219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332339 n + A100910 (A120393 (n + 1)).toNat

end

end A100882.P6204071810563401219

/-!
# A100883: Number of partitions of n in which the sequence of frequencies of the summands is nondecreasing.

The programs for A100883, there is no canonical definition to state claims against.
-/

/-! ## A100883.P13420687903633087702

`A357875(A317256(n))`
-/

namespace A100883.P13420687903633087702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (A317256 n).toNat

end

end A100883.P13420687903633087702

/-! ## A100883.P4364598355738938048

`A317256(n)+A144597(A007825(n))`
-/

namespace A100883.P4364598355738938048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317256 n + A144597 (A007825 n).toNat

end

end A100883.P4364598355738938048

/-! ## A100883.P4560278367108961383

`A325135(A294675(2*(n+1)))+A317256(n)`
-/

namespace A100883.P4560278367108961383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A294675 (2 * (n + 1))).toNat + A317256 n

end

end A100883.P4560278367108961383

/-! ## A100883.P13785305938416357975

`A096532(A357459(n+1))`
-/

namespace A100883.P13785305938416357975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (A357459 (n + 1)).toNat

end

end A100883.P13785305938416357975

/-! ## A100883.P6766534821161150332

`A070289(n)-A162781(A050369(n+1))`
-/

namespace A100883.P6766534821161150332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070289 n - A162781 (A050369 (n + 1)).toNat

end

end A100883.P6766534821161150332

/-!
# A100886: Expansion of x*(1+3*x+2*x^2)/((1+x+x^2)*(1-x-x^2)).

The programs for A100886, the canonical program `A100886.P5467426869250509720` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100886 has offset 0).

The definition of A100886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2+2x^3)/(1-x^2-2x^3-x^4))` (program `A100886.P5467426869250509720`, by `A100886.P5467426869250509720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100886.P5467426869250509720

`ogf((x+3x^2+2x^3)/(1-x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100886

/-- `ogf((x+3x^2+2x^3)/(1-x^2-2x^3-x^4))` -/
def P5467426869250509720.Spec : Prop :=
  ∀ n, P5467426869250509720.a n = A100886 n

theorem P5467426869250509720.correct : P5467426869250509720.Spec := by
  intro n
  simp only [A100886]

end A100886

/-! ## A100886.P7730280681639203741

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A100886.P7730280681639203741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n a =>
  a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A100886.P7730280681639203741

namespace A100886

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P7730280681639203741.Spec : Prop :=
  ∀ n, (P7730280681639203741.a n : ℤ) = A100886 n

end A100886

/-! ## A100886.P18428032135932045729

`A000032(n+1)-A366043(n+1)`
-/

namespace A100886.P18428032135932045729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - A366043 (n + 1)

end

end A100886.P18428032135932045729

namespace A100886

/-- `A000032(n+1)-A366043(n+1)` -/
def P18428032135932045729.Spec : Prop :=
  ∀ n, P18428032135932045729.a n = A100886 n

end A100886

/-! ## A100886.P3206499537446422530

`A000032(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A100886.P3206499537446422530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A000032 (n - 1) + a (n - 3)

end

end A100886.P3206499537446422530

namespace A100886

/-- `A000032(n-1)+a(n-3)` -/
def P3206499537446422530.Spec : Prop :=
  ∀ n, P3206499537446422530.a n = A100886 n

end A100886

/-! ## A100886.P10488312606947545752

`A000045(n)+Δ[A093040(n)]`
-/

namespace A100886.P10488312606947545752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A100886.P10488312606947545752

namespace A100886

/-- `A000045(n)+Δ[A093040(n)]` -/
def P10488312606947545752.Spec : Prop :=
  ∀ n, P10488312606947545752.a n = A100886 n

end A100886

/-! ## A100886.P16886282520947838454

`A173714(n)+Δ[A002264(n)]`
-/

namespace A100886.P16886282520947838454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n + (f1 (n + 1) - f1 n)

end

end A100886.P16886282520947838454

namespace A100886

/-- `A173714(n)+Δ[A002264(n)]` -/
def P16886282520947838454.Spec : Prop :=
  ∀ n, P16886282520947838454.a n = A100886 n

end A100886

/-! ## A100886.P9007053123613004225

`A173714(n)+Δ[A008620(n)]`
-/

namespace A100886.P9007053123613004225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n + (f1 (n + 1) - f1 n)

end

end A100886.P9007053123613004225

namespace A100886

/-- `A173714(n)+Δ[A008620(n)]` -/
def P9007053123613004225.Spec : Prop :=
  ∀ n, P9007053123613004225.a n = A100886 n

end A100886

/-! ## A100886.P12722521825003159676

`A366043(n+1)-A061347(n+1)`
-/

namespace A100886.P12722521825003159676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366043 (n + 1) - A061347 (n + 1)

end

end A100886.P12722521825003159676

namespace A100886

/-- `A366043(n+1)-A061347(n+1)` -/
def P12722521825003159676.Spec : Prop :=
  ∀ n, P12722521825003159676.a n = A100886 n

end A100886

/-! ## A100886.P6573560125416095011

`A000045(n)+A094686(n)-A057078(n)`
-/

namespace A100886.P6573560125416095011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A094686 n - A057078 n)

end

end A100886.P6573560125416095011

namespace A100886

/-- `A000045(n)+A094686(n)-A057078(n)` -/
def P6573560125416095011.Spec : Prop :=
  ∀ n, P6573560125416095011.a n = A100886 n

end A100886

/-! ## A100886.P11021030077391948032

`A049347(n+1)+A094686(n)+A000045(n)`
-/

namespace A100886.P11021030077391948032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (n + 1) + (A094686 n + A000045 n)

end

end A100886.P11021030077391948032

namespace A100886

/-- `A049347(n+1)+A094686(n)+A000045(n)` -/
def P11021030077391948032.Spec : Prop :=
  ∀ n, P11021030077391948032.a n = A100886 n

end A100886

/-! ## A100886.P11428865540064049273

`A093040(n+1)+A000045(n)-A093040(n)`
-/

namespace A100886.P11428865540064049273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (n + 1) + (A000045 n - A093040 n)

end

end A100886.P11428865540064049273

namespace A100886

/-- `A093040(n+1)+A000045(n)-A093040(n)` -/
def P11428865540064049273.Spec : Prop :=
  ∀ n, P11428865540064049273.a n = A100886 n

end A100886

/-! ## A100886.P11061281576538175938

`A093040(n+1)+A212804(n+1)-A093040(n)`
-/

namespace A100886.P11061281576538175938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (n + 1) + (A212804 (n + 1) - A093040 n)

end

end A100886.P11061281576538175938

namespace A100886

/-- `A093040(n+1)+A212804(n+1)-A093040(n)` -/
def P11061281576538175938.Spec : Prop :=
  ∀ n, P11061281576538175938.a n = A100886 n

end A100886

/-! ## A100886.P2248552949038463712

`A000204(n+1)-A366043(n+1)`
-/

namespace A100886.P2248552949038463712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) - A366043 (n + 1)

end

end A100886.P2248552949038463712

namespace A100886

/-- `A000204(n+1)-A366043(n+1)` -/
def P2248552949038463712.Spec : Prop :=
  ∀ n, P2248552949038463712.a n = A100886 n

end A100886

/-! ## A100886.P13071705361573162860

`A007040(n+1)/2*A062157(n)²`
-/

namespace A100886.P13071705361573162860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007040 (n + 1) : ℚ) / 2 * (A062157 n ^ 2 : ℚ)

end

end A100886.P13071705361573162860

namespace A100886

/-- `A007040(n+1)/2*A062157(n)²` -/
def P13071705361573162860.Spec : Prop :=
  ∀ n, P13071705361573162860.a n = (A100886 n : ℚ)

end A100886

/-! ## A100886.P5917188967584330462

`(A000032(n+1)-A061347(n+1))/2`
-/

namespace A100886.P5917188967584330462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A061347 (n + 1) : ℚ) / 2

end

end A100886.P5917188967584330462

namespace A100886

/-- `(A000032(n+1)-A061347(n+1))/2` -/
def P5917188967584330462.Spec : Prop :=
  ∀ n, P5917188967584330462.a n = (A100886 n : ℚ)

end A100886

/-! ## A100886.P7598661389556706561

`(A000204(n+1)-A061347(n+1))/2`
-/

namespace A100886.P7598661389556706561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) - A061347 (n + 1) : ℚ) / 2

end

end A100886.P7598661389556706561

namespace A100886

/-- `(A000204(n+1)-A061347(n+1))/2` -/
def P7598661389556706561.Spec : Prop :=
  ∀ n, P7598661389556706561.a n = (A100886 n : ℚ)

end A100886

/-! ## A100886.P1651036182773923999

`(A000032(n+1)-A057079(2*n))/2`
-/

namespace A100886.P1651036182773923999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) - A057079 (2 * n) : ℚ) / 2

end

end A100886.P1651036182773923999

namespace A100886

/-- `(A000032(n+1)-A057079(2*n))/2` -/
def P1651036182773923999.Spec : Prop :=
  ∀ n, P1651036182773923999.a n = (A100886 n : ℚ)

end A100886

/-! ## A100886.P5466178790536502992

`Δ[A000032(n)+a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A100886.P5466178790536502992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  A000032 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100886.P5466178790536502992

namespace A100886

/-- `Δ[A000032(n)+a(n-3)]` -/
def P5466178790536502992.Spec : Prop :=
  ∀ n, P5466178790536502992.a n = A100886 n

end A100886

/-! ## A100886.P16930472634436571035

`Δ[abs(Δ[A226447(n)])]`
-/

namespace A100886.P16930472634436571035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226447 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100886.P16930472634436571035

namespace A100886

/-- `Δ[abs(Δ[A226447(n)])]` -/
def P16930472634436571035.Spec : Prop :=
  ∀ n, P16930472634436571035.a n = A100886 n

end A100886

/-! ## A100886.P415637479260872085

`Δ[Δ[A173495(n+3)]]`
-/

namespace A100886.P415637479260872085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100886.P415637479260872085

namespace A100886

/-- `Δ[Δ[A173495(n+3)]]` -/
def P415637479260872085.Spec : Prop :=
  ∀ n, P415637479260872085.a n = A100886 n

end A100886

/-!
# A100887: Expansion of (-1+2x+2x^2)/((1+x+x^2)(1-x-x^2)).

The programs for A100887, the canonical program `A100887.P7352177119360271035` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100887 has offset 0).

The definition of A100887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-1+2x+2x^2)/(1-x^2-2x^3-x^4))` (program `A100887.P7352177119360271035`, by `A100887.P7352177119360271035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100887.P7352177119360271035

`ogf((-1+2x+2x^2)/(1-x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100887

/-- `ogf((-1+2x+2x^2)/(1-x^2-2x^3-x^4))` -/
def P7352177119360271035.Spec : Prop :=
  ∀ n, P7352177119360271035.a n = A100887 n

theorem P7352177119360271035.correct : P7352177119360271035.Spec := by
  intro n
  simp only [A100887]

end A100887

/-! ## A100887.P2247402679428395238

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=2, a(2)=1, a(3)=0`
-/

namespace A100887.P2247402679428395238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 1, 0] fun n a =>
  a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A100887.P2247402679428395238

namespace A100887

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P2247402679428395238.Spec : Prop :=
  ∀ n, P2247402679428395238.a n = A100887 n

end A100887

/-! ## A100887.P12790379625020288008

`A094686(n)-2*A049347(n)`
-/

namespace A100887.P12790379625020288008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - 2 * A049347 n

end

end A100887.P12790379625020288008

namespace A100887

/-- `A094686(n)-2*A049347(n)` -/
def P12790379625020288008.Spec : Prop :=
  ∀ n, P12790379625020288008.a n = A100887 n

end A100887

/-! ## A100887.P6073681605600940546

`A201864(n+1)+A153727(n)-A130196(n+1)`
-/

namespace A100887.P6073681605600940546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (n + 1) + (A153727 n - A130196 (n + 1))

end

end A100887.P6073681605600940546

namespace A100887

/-- `A201864(n+1)+A153727(n)-A130196(n+1)` -/
def P6073681605600940546.Spec : Prop :=
  ∀ n, P6073681605600940546.a n = A100887 n

end A100887

/-! ## A100887.P1207552398626219838

`A004695(n+1)+A011655(n+1)*A099837(n+2)`
-/

namespace A100887.P1207552398626219838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 1) + A011655 (n + 1) * A099837 (n + 2)

end

end A100887.P1207552398626219838

namespace A100887

/-- `A004695(n+1)+A011655(n+1)*A099837(n+2)` -/
def P1207552398626219838.Spec : Prop :=
  ∀ n, P1207552398626219838.a n = A100887 n

end A100887

/-! ## A100887.P10023411882320293857

`Δ[A000045(n)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A100887.P10023411882320293857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  A000045 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P10023411882320293857

namespace A100887

/-- `Δ[A000045(n)+a(n-3)]` -/
def P10023411882320293857.Spec : Prop :=
  ∀ n, P10023411882320293857.a n = A100887 n

end A100887

/-! ## A100887.P15028815534751951416

`Δ[a(n-3)+abs(A236191(n))]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A100887.P15028815534751951416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (n - 3) + |A236191 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P15028815534751951416

namespace A100887

/-- `Δ[a(n-3)+abs(A236191(n))]` -/
def P15028815534751951416.Spec : Prop :=
  ∀ n, P15028815534751951416.a n = A100887 n

end A100887

/-! ## A100887.P8204804180475571703

`Δ[A093040(n)-A102283(n)]`
-/

namespace A100887.P8204804180475571703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 n - A102283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P8204804180475571703

namespace A100887

/-- `Δ[A093040(n)-A102283(n)]` -/
def P8204804180475571703.Spec : Prop :=
  ∀ n, P8204804180475571703.a n = A100887 n

end A100887

/-! ## A100887.P636835873990852221

`Δ[A093040(n)]-A131713(n)`
-/

namespace A100887.P636835873990852221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131713 n

end

end A100887.P636835873990852221

namespace A100887

/-- `Δ[A093040(n)]-A131713(n)` -/
def P636835873990852221.Spec : Prop :=
  ∀ n, P636835873990852221.a n = A100887 n

end A100887

/-! ## A100887.P3586676739978198981

`Δ[A102283(2*n)+A093040(n)]`
-/

namespace A100887.P3586676739978198981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * n) + A093040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P3586676739978198981

namespace A100887

/-- `Δ[A102283(2*n)+A093040(n)]` -/
def P3586676739978198981.Spec : Prop :=
  ∀ n, P3586676739978198981.a n = A100887 n

end A100887

/-! ## A100887.P4658029959170020314

`Δ[Δ[A094686(n+2)]]`
-/

namespace A100887.P4658029959170020314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P4658029959170020314

namespace A100887

/-- `Δ[Δ[A094686(n+2)]]` -/
def P4658029959170020314.Spec : Prop :=
  ∀ n, P4658029959170020314.a n = A100887 n

end A100887

/-! ## A100887.P8085780838906707909

`Δ[a(n-3)+A022086(n)/3]` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A100887.P8085780838906707909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1, 3] fun n f1 =>
  f1 (n - 3) + (A022086 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P8085780838906707909

namespace A100887

/-- `Δ[a(n-3)+A022086(n)/3]` -/
def P8085780838906707909.Spec : Prop :=
  ∀ n, P8085780838906707909.a n = (A100887 n : ℚ)

end A100887

/-! ## A100887.P1129517018735622169

`A000045(n+1)-Δ[Δ[A093040(n+1)]]`
-/

namespace A100887.P1129517018735622169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (f1 (n + 1) - f1 n)

end

end A100887.P1129517018735622169

namespace A100887

/-- `A000045(n+1)-Δ[Δ[A093040(n+1)]]` -/
def P1129517018735622169.Spec : Prop :=
  ∀ n, P1129517018735622169.a n = A100887 n

end A100887

/-! ## A100887.P18261308294404550392

`Δ[Δ[Δ[A004695(n+4)]]]`
-/

namespace A100887.P18261308294404550392
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100887.P18261308294404550392

namespace A100887

/-- `Δ[Δ[Δ[A004695(n+4)]]]` -/
def P18261308294404550392.Spec : Prop :=
  ∀ n, P18261308294404550392.a n = A100887 n

end A100887

/-!
# A100888: Expansion of (3+x-x^2)/((1+x+x^2)(1-x-x^2)).

The programs for A100888, the canonical program `A100888.P9087362163447098940` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100888 has offset 0).

The definition of A100888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+x-x^2)/(1-x^2-2x^3-x^4))` (program `A100888.P9087362163447098940`, by `A100888.P9087362163447098940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A100888.P9087362163447098940

`ogf((3+x-x^2)/(1-x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A100888

/-- `ogf((3+x-x^2)/(1-x^2-2x^3-x^4))` -/
def P9087362163447098940.Spec : Prop :=
  ∀ n, P9087362163447098940.a n = A100888 n

theorem P9087362163447098940.correct : P9087362163447098940.Spec := by
  intro n
  simp only [A100888]

end A100888

/-! ## A100888.P12314889275048599013

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=1, a(2)=2, a(3)=7`
-/

namespace A100888.P12314889275048599013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2, 7] fun n a =>
  a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A100888.P12314889275048599013

namespace A100888

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P12314889275048599013.Spec : Prop :=
  ∀ n, (P12314889275048599013.a n : ℤ) = A100888 n

end A100888

/-! ## A100888.P1118464882775187585

`∑[A000045(n)]+C(gcd(3, n), 2)`
-/

namespace A100888.P1118464882775187585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (Nat.gcd 3 n) 2 : ℤ)

end

end A100888.P1118464882775187585

namespace A100888

/-- `∑[A000045(n)]+C(gcd(3, n), 2)` -/
def P1118464882775187585.Spec : Prop :=
  ∀ n, P1118464882775187585.a n = A100888 n

end A100888

/-! ## A100888.P14296298739293864983

`A049347(n)+2*A093040(n)`
-/

namespace A100888.P14296298739293864983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + 2 * A093040 n

end

end A100888.P14296298739293864983

namespace A100888

/-- `A049347(n)+2*A093040(n)` -/
def P14296298739293864983.Spec : Prop :=
  ∀ n, P14296298739293864983.a n = A100888 n

end A100888

/-! ## A100888.P3691105835193783670

`A000045(n+2)-A131713(n+1)`
-/

namespace A100888.P3691105835193783670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A131713 (n + 1)

end

end A100888.P3691105835193783670

namespace A100888

/-- `A000045(n+2)-A131713(n+1)` -/
def P3691105835193783670.Spec : Prop :=
  ∀ n, P3691105835193783670.a n = A100888 n

end A100888

/-! ## A100888.P3015449903272670346

`A102283(n+1)+2*A093040(n)`
-/

namespace A100888.P3015449903272670346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) + 2 * A093040 n

end

end A100888.P3015449903272670346

namespace A100888

/-- `A102283(n+1)+2*A093040(n)` -/
def P3015449903272670346.Spec : Prop :=
  ∀ n, P3015449903272670346.a n = A100888 n

end A100888

/-! ## A100888.P745032713851703193

`A000045(n+2)-A061347(n+3)`
-/

namespace A100888.P745032713851703193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A061347 (n + 3)

end

end A100888.P745032713851703193

namespace A100888

/-- `A000045(n+2)-A061347(n+3)` -/
def P745032713851703193.Spec : Prop :=
  ∀ n, P745032713851703193.a n = A100888 n

end A100888

/-! ## A100888.P14132911700484337505

`A087204(2*n)+A000045(n+2)`
-/

namespace A100888.P14132911700484337505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (2 * n) + A000045 (n + 2)

end

end A100888.P14132911700484337505

namespace A100888

/-- `A087204(2*n)+A000045(n+2)` -/
def P14132911700484337505.Spec : Prop :=
  ∀ n, P14132911700484337505.a n = A100888 n

end A100888

/-! ## A100888.P15288899362960332555

`A057079(2*n+1)+A000045(n+2)`
-/

namespace A100888.P15288899362960332555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n + 1) + A000045 (n + 2)

end

end A100888.P15288899362960332555

namespace A100888

/-- `A057079(2*n+1)+A000045(n+2)` -/
def P15288899362960332555.Spec : Prop :=
  ∀ n, P15288899362960332555.a n = A100888 n

end A100888

/-! ## A100888.P14149809264844491291

`2*A100887(n+1)-A061347(n+1)`
-/

namespace A100888.P14149809264844491291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100887 (n + 1) - A061347 (n + 1)

end

end A100888.P14149809264844491291

namespace A100888

/-- `2*A100887(n+1)-A061347(n+1)` -/
def P14149809264844491291.Spec : Prop :=
  ∀ n, P14149809264844491291.a n = A100888 n

end A100888

/-! ## A100888.P5585004038188125200

`∑[A100887(n+1)]-A100887(n)`
-/

namespace A100888.P5585004038188125200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100887 n

end

end A100888.P5585004038188125200

namespace A100888

/-- `∑[A100887(n+1)]-A100887(n)` -/
def P5585004038188125200.Spec : Prop :=
  ∀ n, P5585004038188125200.a n = A100888 n

end A100888

/-! ## A100888.P11141896250375393012

`Δ[A000045(n+3)+(2*n)%3]`
-/

namespace A100888.P11141896250375393012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + ((2 * n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100888.P11141896250375393012

namespace A100888

/-- `Δ[A000045(n+3)+(2*n)%3]` -/
def P11141896250375393012.Spec : Prop :=
  ∀ n, P11141896250375393012.a n = A100888 n

end A100888

/-! ## A100888.P18408050003773785686

`Δ[A001911(n)-A010892(4*n)]`
-/

namespace A100888.P18408050003773785686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - A010892 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100888.P18408050003773785686

namespace A100888

/-- `Δ[A001911(n)-A010892(4*n)]` -/
def P18408050003773785686.Spec : Prop :=
  ∀ n, P18408050003773785686.a n = A100888 n

end A100888

/-!
# A100891: Prime Padovan numbers.

The programs for A100891, there is no canonical definition to state claims against.
-/

/-! ## A100891.P6570295499941503984

`A000931(A152870(n+2))`
-/

namespace A100891.P6570295499941503984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A152870 (n + 2)).toNat

end

end A100891.P6570295499941503984

/-! ## A100891.P9399909000722721012

`A228361(A112882(n+2))`
-/

namespace A100891.P9399909000722721012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A112882 (n + 2)).toNat

end

end A100891.P9399909000722721012

/-! ## A100891.P12451170966097624945

`A127682(2*A112882(n+2))`
-/

namespace A100891.P12451170966097624945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * A112882 (n + 2)).toNat

end

end A100891.P12451170966097624945

/-! ## A100891.P17108931348746923664

`p?[a(n-2)+a(n-3)]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A100891.P17108931348746923664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A100891.P17108931348746923664

/-!
# A100892: a(n) = (2*n-1) XOR (2*n+1), bitwise.

The programs for A100892, the canonical program `A100892.P5668575000177681908` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A100892 has offset 1).

The definition of A100892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A100892.P3495110523297599787

`4*2^val(n+1, 2)-2`
-/

namespace A100892.P3495110523297599787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) - 2

end

end A100892.P3495110523297599787

namespace A100892

/-- `4*2^val(n+1, 2)-2` -/
def P3495110523297599787.Spec : Prop :=
  ∀ n, P3495110523297599787.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P10416908929018934004

`xor(2*(n+1)-1, 2*(n+1)+1)`
-/

namespace A100892.P10416908929018934004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * (n + 1) : ℤ) - 1) (2 * (n + 1) + 1 : ℤ)

end

end A100892.P10416908929018934004

namespace A100892

/-- `xor(2*(n+1)-1, 2*(n+1)+1)` -/
def P10416908929018934004.Spec : Prop :=
  ∀ n, P10416908929018934004.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P5668575000177681908

`A088837(n+1)-1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A100892

/-- `A088837(n+1)-1` -/
def P5668575000177681908.Spec : Prop :=
  ∀ n, P5668575000177681908.a n = A100892 (n + 1)

theorem P5668575000177681908.correct : P5668575000177681908.Spec := by
  intro n
  simp only [A100892, Nat.add_sub_cancel]

end A100892

/-! ## A100892.P12613580652783494874

`2*A038712(n+1)`
-/

namespace A100892.P12613580652783494874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038712 (n + 1)

end

end A100892.P12613580652783494874

namespace A100892

/-- `2*A038712(n+1)` -/
def P12613580652783494874.Spec : Prop :=
  ∀ n, P12613580652783494874.a n = A100892 (n + 1)

theorem P12613580652783494874.correct : P12613580652783494874.Spec := by
  intro n
  simp only [A100892, Nat.add_sub_cancel, A100892.P12613580652783494874.a, A100892.P5668575000177681908.a, A038712, A038712.P3404197303190209645.a, A088837, A088837.P13542131755671239569.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A100892

/-! ## A100892.P9700460559737126623

`4*2^A007814(n+1)-2`
-/

namespace A100892.P9700460559737126623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (2 : ℚ) ^ (A007814 (n + 1) : ℤ) - 2

end

end A100892.P9700460559737126623

namespace A100892

/-- `4*2^A007814(n+1)-2` -/
def P9700460559737126623.Spec : Prop :=
  ∀ n, P9700460559737126623.a n = (A100892 (n + 1) : ℚ)

end A100892

/-! ## A100892.P11051435704635980273

`A074400(n+1)/A000593(n+1)`
-/

namespace A100892.P11051435704635980273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ)

end

end A100892.P11051435704635980273

namespace A100892

/-- `A074400(n+1)/A000593(n+1)` -/
def P11051435704635980273.Spec : Prop :=
  ∀ n, P11051435704635980273.a n = (A100892 (n + 1) : ℚ)

end A100892

/-! ## A100892.P9678417020129147861

`2*A000203(n+1)/A000593(n+1)`
-/

namespace A100892.P9678417020129147861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000203 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ)

end

end A100892.P9678417020129147861

namespace A100892

/-- `2*A000203(n+1)/A000593(n+1)` -/
def P9678417020129147861.Spec : Prop :=
  ∀ n, P9678417020129147861.a n = (A100892 (n + 1) : ℚ)

end A100892

/-! ## A100892.P12213756483213344758

`2*xor(n, n+1)`
-/

namespace A100892.P12213756483213344758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (n + 1)

end

end A100892.P12213756483213344758

namespace A100892

/-- `2*xor(n, n+1)` -/
def P12213756483213344758.Spec : Prop :=
  ∀ n, (P12213756483213344758.a n : ℤ) = A100892 (n + 1)

end A100892

/-! ## A100892.P16341804413064450546

`lcm(2, xor(n, n+1))`
-/

namespace A100892.P16341804413064450546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (Nat.xor n (n + 1))

end

end A100892.P16341804413064450546

namespace A100892

/-- `lcm(2, xor(n, n+1))` -/
def P16341804413064450546.Spec : Prop :=
  ∀ n, (P16341804413064450546.a n : ℤ) = A100892 (n + 1)

end A100892

/-! ## A100892.P17742158663907891872

`xor(n, n+1)/log2(sqrt(2))`
-/

namespace A100892.P17742158663907891872
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ))

end

end A100892.P17742158663907891872

namespace A100892

/-- `xor(n, n+1)/log2(sqrt(2))` -/
def P17742158663907891872.Spec : Prop :=
  ∀ n, P17742158663907891872.a n = (A100892 (n + 1) : ℝ)

end A100892

/-! ## A100892.P14481262454654785027

`4*and(n, -(n+2))+2`
-/

namespace A100892.P14481262454654785027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(n + 2 : ℤ)) + 2

end

end A100892.P14481262454654785027

namespace A100892

/-- `4*and(n, -(n+2))+2` -/
def P14481262454654785027.Spec : Prop :=
  ∀ n, P14481262454654785027.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P13078992939258594066

`2/xor(n, n+1)^-1`
-/

namespace A100892.P13078992939258594066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.xor n (n + 1) : ℚ) ^ (-1 : ℤ)

end

end A100892.P13078992939258594066

namespace A100892

/-- `2/xor(n, n+1)^-1` -/
def P13078992939258594066.Spec : Prop :=
  ∀ n, P13078992939258594066.a n = (A100892 (n + 1) : ℚ)

end A100892

/-! ## A100892.P7232731663333505834

`2^(log2(xor(n, n+1))+1)`
-/

namespace A100892.P7232731663333505834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (Nat.xor n (n + 1) : ℝ) + 1)

end

end A100892.P7232731663333505834

namespace A100892

/-- `2^(log2(xor(n, n+1))+1)` -/
def P7232731663333505834.Spec : Prop :=
  ∀ n, P7232731663333505834.a n = (A100892 (n + 1) : ℝ)

end A100892

/-! ## A100892.P3880946723542473615

`lcm(4, and(n, -(n+2)))+2`
-/

namespace A100892.P3880946723542473615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (Int.land (n : ℤ) (-(n + 2 : ℤ))) + 2

end

end A100892.P3880946723542473615

namespace A100892

/-- `lcm(4, and(n, -(n+2)))+2` -/
def P3880946723542473615.Spec : Prop :=
  ∀ n, (P3880946723542473615.a n : ℤ) = A100892 (n + 1)

end A100892

/-! ## A100892.P14374626385362181770

`∑{d}[xor(n, -(n+2)), #]-1`
-/

namespace A100892.P14374626385362181770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A100892.P14374626385362181770

namespace A100892

/-- `∑{d}[xor(n, -(n+2)), #]-1` -/
def P14374626385362181770.Spec : Prop :=
  ∀ n, P14374626385362181770.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P63027974903842697

`4*(n-and(n, n+1))+2`
-/

namespace A100892.P63027974903842697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - (Nat.land n (n + 1) : ℤ)) + 2

end

end A100892.P63027974903842697

namespace A100892

/-- `4*(n-and(n, n+1))+2` -/
def P63027974903842697.Spec : Prop :=
  ∀ n, P63027974903842697.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P7468358572592843670

`abs(2*xor(n, 2*n-(n-1)))`
-/

namespace A100892.P7468358572592843670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.xor (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - 1))|

end

end A100892.P7468358572592843670

namespace A100892

/-- `abs(2*xor(n, 2*n-(n-1)))` -/
def P7468358572592843670.Spec : Prop :=
  ∀ n, P7468358572592843670.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P761204237032847982

`2*∑{d}[or(n+1, -(n+1)), #]`
-/

namespace A100892.P761204237032847982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A100892.P761204237032847982

namespace A100892

/-- `2*∑{d}[or(n+1, -(n+1)), #]` -/
def P761204237032847982.Spec : Prop :=
  ∀ n, (P761204237032847982.a n : ℤ) = A100892 (n + 1)

end A100892

/-! ## A100892.P4200360357831606722

`A393210(n+1)+1`
-/

namespace A100892.P4200360357831606722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393210 (n + 1) + 1

end

end A100892.P4200360357831606722

namespace A100892

/-- `A393210(n+1)+1` -/
def P4200360357831606722.Spec : Prop :=
  ∀ n, P4200360357831606722.a n = A100892 (n + 1)

end A100892

/-! ## A100892.P16062027242732619682

`A059159(n+1)-2`
-/

namespace A100892.P16062027242732619682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059159 (n + 1) - 2

end

end A100892.P16062027242732619682

namespace A100892

/-- `A059159(n+1)-2` -/
def P16062027242732619682.Spec : Prop :=
  ∀ n, P16062027242732619682.a n = A100892 (n + 1)

end A100892

/-!
# A100893: a(n) = smallest n-digit prime formed by appending a digit to a(n-1); a(1) = 2.

The programs for A100893, there is no canonical definition to state claims against.
-/

/-! ## A100893.P7577282637698900911

`ogf((2+3x+3x^2+3x^3+3x^4)/(1-10x))`
-/

namespace A100893.P7577282637698900911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3, 3, 3] [1, -10] n

end

end A100893.P7577282637698900911

/-!
# A100894: a(n) = smallest n-digit prime formed by appending a digit to a(n-1); a(1) = 3.

The programs for A100894, there is no canonical definition to state claims against.
-/

/-! ## A100894.P15735465516153064518

`ogf((3+x+x^2+9x^3+3x^4)/(1-10x))`
-/

namespace A100894.P15735465516153064518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 1, 9, 3] [1, -10] n

end

end A100894.P15735465516153064518

/-!
# A100895: a(n) = smallest n-digit prime formed by appending a digit to a(n-1); a(1) = 7.

The programs for A100895, there is no canonical definition to state claims against.
-/

/-! ## A100895.P631990098883410493

`∑[ogf((7-6x+8x^2-6x^3)/(1-10x))]`
-/

namespace A100895.P631990098883410493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -6, 8, -6] [1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100895.P631990098883410493

/-!
# A100896: a(n) has decimal expansion 3nn3.

The programs for A100896, there is no canonical definition to state claims against.
-/

/-! ## A100896.P2065608213158710226

`A102484(n+1)+A100846(n)-A100897(n)`
-/

namespace A100896.P2065608213158710226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1) + (A100846 n - A100897 n)

end

end A100896.P2065608213158710226

/-!
# A100897: a(n) is the decimal expansion of 7nn7.

The programs for A100897, there is no canonical definition to state claims against.
-/

/-! ## A100897.P15227901541290666332

`A102484(n+1)+A100846(n)-A100896(n)`
-/

namespace A100897.P15227901541290666332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102484 (n + 1) + (A100846 n - A100896 n)

end

end A100897.P15227901541290666332

/-!
# A100898: Triangle read by rows: T(n,k) is the number of k-matchings of the fan graph on n+1 vertices (i.e., the join of the path graph on n vertices with one extra vertex).

The programs for A100898, there is no canonical definition to state claims against.
-/

/-! ## A100898.P15838646210833736271

`A287355(A093127(n+1))`
-/

namespace A100898.P15838646210833736271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A093127 (n + 1)).toNat

end

end A100898.P15838646210833736271

/-! ## A100898.P5710275216110186327

`A287355(ratio[A093127(n)]*A093127(n))`
-/

namespace A100898.P5710275216110186327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A093127 n : ℚ))).toNat

end

end A100898.P5710275216110186327

/-! ## A100898.P7635933061760112616

`A101350(n+1)-A101349(A327922(2*n+5))`
-/

namespace A100898.P7635933061760112616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101350 (n + 1) - A101349 (A327922 (2 * n + 5)).toNat

end

end A100898.P7635933061760112616

