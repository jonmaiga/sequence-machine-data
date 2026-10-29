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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A354502: Squarefree semiprimes p*q such that (p*q+1+p-q)/2 and (p*q+1+q-p)/2 are prime.

The programs for A354502, there is no canonical definition to state claims against.
-/

/-! ## A354502.P11752308276105762986

`A160497(A117383(n+2))`
-/

namespace A354502.P11752308276105762986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160497 (A117383 (n + 2)).toNat

end

end A354502.P11752308276105762986

/-! ## A354502.P10512263497097613798

`∩[A236300(n+1), A276290(n+1)]`
-/

namespace A354502.P10512263497097613798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354502.P10512263497097613798

/-!
# A354503: Expansion of e.g.f. ( Product_{k>0} (1 + x^k)^(1/k) )^exp(x).

The programs for A354503, there is no canonical definition to state claims against.
-/

/-! ## A354503.P6136242281603792545

`A349536(or(1, A000257(n)))`
-/

namespace A354503.P6136242281603792545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (Int.lor 1 (A000257 n)).toNat

end

end A354503.P6136242281603792545

/-! ## A354503.P2158525725120443546

`A289494(A214692(n+1)+2)`
-/

namespace A354503.P2158525725120443546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A214692 (n + 1) + 2).toNat

end

end A354503.P2158525725120443546

/-!
# A354504: Expansion of e.g.f. ( Product_{k>0} (1 + x^k)^k )^exp(x).

The programs for A354504, there is no canonical definition to state claims against.
-/

/-! ## A354504.P18175368976281929367

`A130391((n+1)^n-n)`
-/

namespace A354504.P18175368976281929367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130391 ((n + 1) ^ n - n)

end

end A354504.P18175368976281929367

/-!
# A354505: Expansion of e.g.f. ( Product_{k>0} (1 + x^k)^(1/k!) )^exp(x).

The programs for A354505, there is no canonical definition to state claims against.
-/

/-! ## A354505.P5638608362014388566

`A060715(A293469(n)+2)`
-/

namespace A354505.P5638608362014388566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A293469 n + 2).toNat

end

end A354505.P5638608362014388566

/-! ## A354505.P16466429092114340799

`A211793(A052017(n+1))+n`
-/

namespace A354505.P16466429092114340799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211793 (A052017 (n + 1)).toNat + (n : ℤ)

end

end A354505.P16466429092114340799

/-!
# A354506: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d+1) )/(k * (n-k)!).

The programs for A354506, the canonical program `A354506.P3830637102415007409` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354506 has offset 1).

The definition of A354506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354506.P3830637102415007409

`(n+1)!*∑{#}[n, A048272(#+1)/((#+1)*(n+1-(#+1))!)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A354506

/-- `(n+1)!*∑{#}[n, A048272(#+1)/((#+1)*(n+1-(#+1))!)]` -/
def P3830637102415007409.Spec : Prop :=
  ∀ n, P3830637102415007409.a n = (A354506 (n + 1) : ℚ)

end A354506

/-! ## A354506.P8618106709677535015

`A084470(A027046(n))`
-/

namespace A354506.P8618106709677535015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A027046 n).toNat

end

end A354506.P8618106709677535015

namespace A354506

/-- `A084470(A027046(n))` -/
def P8618106709677535015.Spec : Prop :=
  ∀ n, P8618106709677535015.a n = A354506 (n + 1)

end A354506

/-!
# A354507: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d+1) * d )/(k * (n-k)!).

The programs for A354507, the canonical program `A354507.P8754823455795780191` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354507 has offset 1).

The definition of A354507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354507.P8754823455795780191

`(n+1)!*∑{#}[n, A000593(#+1)/((#+1)*(n+1-(#+1))!)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A354507

/-- `(n+1)!*∑{#}[n, A000593(#+1)/((#+1)*(n+1-(#+1))!)]` -/
def P8754823455795780191.Spec : Prop :=
  ∀ n, P8754823455795780191.a n = (A354507 (n + 1) : ℚ)

end A354507

/-!
# A354508: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(k/d+1) * d^2 )/(k * (n-k)!).

The programs for A354508, the canonical program `A354508.P2743617432193943751` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354508 has offset 1).

The definition of A354508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078306, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A354508.P2743617432193943751

`(n+1)!*∑{#}[n, A078306(#+1)/((#+1)*(n+1-(#+1))!)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A354508

/-- `(n+1)!*∑{#}[n, A078306(#+1)/((#+1)*(n+1-(#+1))!)]` -/
def P2743617432193943751.Spec : Prop :=
  ∀ n, P2743617432193943751.a n = (A354508 (n + 1) : ℚ)

end A354508

/-!
# A354509: a(n) = n! * Sum_{k=1..n} ( Sum_{d|k} (-1)^(d+1)/(d * (k/d)!) )/(n-k)!.

The programs for A354509, the canonical program `A354509.P2172010601228518392` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354509 has offset 1).

The definition of A354509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354509.P2172010601228518392

`∑{#}[n, A352013(#+1)*C(n+1, #+1)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A354509

/-- `∑{#}[n, A352013(#+1)*C(n+1, #+1)]` -/
def P2172010601228518392.Spec : Prop :=
  ∀ n, P2172010601228518392.a n = A354509 (n + 1)

theorem P2172010601228518392.correct : P2172010601228518392.Spec := by
  intro n
  simp only [A354509, Nat.add_sub_cancel]

end A354509

/-!
# A354512: Number of solutions m >= 2 to m - gpf(m) = n, gpf = A006530.

The programs for A354512, there is no canonical definition to state claims against.
-/

/-! ## A354512.P11500520470111456781

`A001221(n+1)-A354527(n+1)`
-/

namespace A354512.P11500520470111456781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A354527 (n + 1)

end

end A354512.P11500520470111456781

/-! ## A354512.P5161200163503304982

`∑{p}[n+1, A001222(#)]-A354527(n+1)`
-/

namespace A354512.P5161200163503304982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p - A354527 (n + 1)

end

end A354512.P5161200163503304982

/-! ## A354512.P341772861388363437

`A001222(∏{p}[n+1, #])-A354527(n+1)`
-/

namespace A354512.P341772861388363437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A354527 (n + 1)

end

end A354512.P341772861388363437

/-! ## A354512.P9598712867900092474

`A056239(A034444(n+1))-A354527(n+1)`
-/

namespace A354512.P9598712867900092474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A034444 (n + 1)).toNat - A354527 (n + 1)

end

end A354512.P9598712867900092474

/-! ## A354512.P5755287408417059533

`A303975(A000040(n+1))-A354527(n+1)`
-/

namespace A354512.P5755287408417059533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A000040 (n + 1)).toNat - A354527 (n + 1)

end

end A354512.P5755287408417059533

/-!
# A354513: The numbers whose square's position in the Wythoff array is immediately followed by another square in the next column.

The programs for A354513, there is no canonical definition to state claims against.
-/

/-! ## A354513.P3588858026600433224

`A225205(A356591(n+1))`
-/

namespace A354513.P3588858026600433224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225205 (A356591 (n + 1)).toNat

end

end A354513.P3588858026600433224

/-!
# A354514: Numbers k such that m - gpf(m) = k has solutions m >= 2, gpf = A006530.

The programs for A354514, the canonical program `A354514.P9936608674892317830` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354514 has offset 1).

The definition of A354514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8650 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354514.P3911127849975295712

`comp[A354515(n+1)]`
-/

namespace A354514.P3911127849975295712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354514.P3911127849975295712

namespace A354514

/-- `comp[A354515(n+1)]` -/
def P3911127849975295712.Spec : Prop :=
  ∀ n, (P3911127849975295712.a n : ℤ) = A354514 (n + 1)

end A354514

/-! ## A354514.P9936608674892317830

`comp[comp[n-A006530(n+1)]+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A354514

/-- `comp[comp[n-A006530(n+1)]+1]` -/
def P9936608674892317830.Spec : Prop :=
  ∀ n, (P9936608674892317830.a n : ℤ) = A354514 (n + 1)

theorem P9936608674892317830.correct : P9936608674892317830.Spec := by
  intro n
  simp only [A354514, Nat.add_sub_cancel]

end A354514

/-! ## A354514.P16270514838330732313

`lt[0, char[2-A006530(n+2)+n]]`
-/

namespace A354514.P16270514838330732313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (n + 2) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354514.P16270514838330732313

namespace A354514

/-- `lt[0, char[2-A006530(n+2)+n]]` -/
def P16270514838330732313.Spec : Prop :=
  ∀ n, (P16270514838330732313.a n : ℤ) = A354514 (n + 1)

end A354514

/-! ## A354514.P6131663368837750169

`eq[1, char[n-n%A006530(n-log2(1/4))]]`
-/

namespace A354514.P6131663368837750169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A006530 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354514.P6131663368837750169

namespace A354514

/-- `eq[1, char[n-n%A006530(n-log2(1/4))]]` -/
def P6131663368837750169.Spec : Prop :=
  ∀ n, (P6131663368837750169.a n : ℤ) = A354514 (n + 1)

end A354514

/-! ## A354514.P14586382907908059418

`eq[1, char[(2*(n+1))%(A006530(2*(n+2))+n)]]`
-/

namespace A354514.P14586382907908059418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A006530 (2 * (n + 2)) + (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354514.P14586382907908059418

namespace A354514

/-- `eq[1, char[(2*(n+1))%(A006530(2*(n+2))+n)]]` -/
def P14586382907908059418.Spec : Prop :=
  ∀ n, (P14586382907908059418.a n : ℤ) = A354514 (n + 1)

end A354514

/-!
# A354515: Numbers k such that m - gpf(m) = k has no solution m >= 2, gpf = A006530.

The programs for A354515, the canonical program `A354515.P5172981161591048395` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354515 has offset 1).

The definition of A354515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354515.P11317432897376048901

`lt[A354512(n+1), 1]+1`
-/

namespace A354515.P11317432897376048901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354512 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354515.P11317432897376048901

namespace A354515

/-- `lt[A354512(n+1), 1]+1` -/
def P11317432897376048901.Spec : Prop :=
  ∀ n, (P11317432897376048901.a n : ℤ) = A354515 (n + 1)

end A354515

/-! ## A354515.P11408705465093074417

`comp[A354514(n+1)]`
-/

namespace A354515.P11408705465093074417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354515.P11408705465093074417

namespace A354515

/-- `comp[A354514(n+1)]` -/
def P11408705465093074417.Spec : Prop :=
  ∀ n, (P11408705465093074417.a n : ℤ) = A354515 (n + 1)

end A354515

/-! ## A354515.P5172981161591048395

`eq[0, char[2-A006530(n+2)+n]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A354515

/-- `eq[0, char[2-A006530(n+2)+n]]` -/
def P5172981161591048395.Spec : Prop :=
  ∀ n, (P5172981161591048395.a n : ℤ) = A354515 (n + 1)

theorem P5172981161591048395.correct : P5172981161591048395.Spec := by
  intro n
  simp only [A354515, Nat.add_sub_cancel]

end A354515

/-! ## A354515.P18258621563466338801

`eq[0, char[n-n%A006530(n-log2(1/4))]]`
-/

namespace A354515.P18258621563466338801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (n : ℤ) (A006530 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354515.P18258621563466338801

namespace A354515

/-- `eq[0, char[n-n%A006530(n-log2(1/4))]]` -/
def P18258621563466338801.Spec : Prop :=
  ∀ n, (P18258621563466338801.a n : ℤ) = A354515 (n + 1)

end A354515

/-! ## A354515.P5594943218994446406

`eq[0, char[(2*(n+1))%(A006530(2*(n+2))+n)]]`
-/

namespace A354515.P5594943218994446406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 1) : ℤ) (A006530 (2 * (n + 2)) + (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354515.P5594943218994446406

namespace A354515

/-- `eq[0, char[(2*(n+1))%(A006530(2*(n+2))+n)]]` -/
def P5594943218994446406.Spec : Prop :=
  ∀ n, (P5594943218994446406.a n : ℤ) = A354515 (n + 1)

end A354515

/-! ## A354515.P296013151316512492

`comp[A076563(n+2)]`
-/

namespace A354515.P296013151316512492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A354515.P296013151316512492

namespace A354515

/-- `comp[A076563(n+2)]` -/
def P296013151316512492.Spec : Prop :=
  ∀ n, (P296013151316512492.a n : ℤ) = A354515 (n + 1)

end A354515

/-! ## A354515.P5792083539244610792

`comp[2-A006530(n+2)+n]%A072828(n+1)`
-/

namespace A354515.P5792083539244610792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A072828 (n + 1))

end

end A354515.P5792083539244610792

namespace A354515

/-- `comp[2-A006530(n+2)+n]%A072828(n+1)` -/
def P5792083539244610792.Spec : Prop :=
  ∀ n, P5792083539244610792.a n = A354515 (n + 1)

end A354515

/-! ## A354515.P2019043428176705339

`comp[n-A003966(A006530(n+2))]%A072828(n+1)`
-/

namespace A354515.P2019043428176705339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003966 (A006530 (n + 2)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A072828 (n + 1))

end

end A354515.P2019043428176705339

namespace A354515

/-- `comp[n-A003966(A006530(n+2))]%A072828(n+1)` -/
def P2019043428176705339.Spec : Prop :=
  ∀ n, P2019043428176705339.a n = A354515 (n + 1)

end A354515

/-!
# A354517: Expansion of e.g.f. cos(x)^exp(x).

The programs for A354517, there is no canonical definition to state claims against.
-/

/-! ## A354517.P14688694918211223126

`A235130(A134126(n+1))-∑[n]`
-/

namespace A354517.P14688694918211223126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A134126 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A354517.P14688694918211223126

/-! ## A354517.P17311693532810033497

`A323520(A373910(n))-A373893(n+1)`
-/

namespace A354517.P17311693532810033497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (A373910 n).toNat - A373893 (n + 1)

end

end A354517.P17311693532810033497

/-! ## A354517.P11700442010782969811

`A274170(A112834(n))-A174522(3*n+1)`
-/

namespace A354517.P11700442010782969811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274170 (A112834 n).toNat - A174522 (3 * n + 1)

end

end A354517.P11700442010782969811

/-!
# A354518: Expansion of e.g.f. cosh(x)^exp(x).

The programs for A354518, there is no canonical definition to state claims against.
-/

/-! ## A354518.P5259663116526458469

`A141639(a(n-1))-1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=7`
-/

namespace A354518.P5259663116526458469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3, 7] fun n a =>
  A141639 (a (n - 1)).toNat - 1

end

end A354518.P5259663116526458469

/-! ## A354518.P10825576827610126511

`A088931(A005517(n+2))`
-/

namespace A354518.P10825576827610126511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 (A005517 (n + 2)).toNat

end

end A354518.P10825576827610126511

/-! ## A354518.P582239896098109017

`A239963(∏[Δ[A000009(2*(n+1))]])`
-/

namespace A354518.P582239896098109017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354518.P582239896098109017

/-!
# A354519: Expansion of e.g.f. exp(x) * log(sec(x)).

The programs for A354519, there is no canonical definition to state claims against.
-/

/-! ## A354519.P11112770028801069523

`∑{#}[floor((n+1)/2)-1, A000182(#+1)*C(n+1, 2*(#+1))]`
-/

namespace A354519.P11112770028801069523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000182 (k + 1) * (Nat.choose (n + 1) (2 * (k + 1)) : ℤ)

end

end A354519.P11112770028801069523

/-! ## A354519.P5016091861099815201

`∑[A009739(n)]`
-/

namespace A354519.P5016091861099815201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354519.P5016091861099815201

/-! ## A354519.P16759110650456668278

`∑[A000667(n)-A003701(n)]`
-/

namespace A354519.P16759110650456668278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A003701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354519.P16759110650456668278

/-! ## A354519.P12002828250736805322

`∑[∪[A003719(n), A009747(n)]]`
-/

namespace A354519.P12002828250736805322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003719 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009747 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354519.P12002828250736805322

/-! ## A354519.P12716801590084677399

`∑[A292975(∑[n+2]-1)-A003701(n)]`
-/

namespace A354519.P12716801590084677399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (∑ j ∈ Finset.range (n + 1), f2 j - 1) - A003701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354519.P12716801590084677399

/-! ## A354519.P16993055652438208819

`∑[A062161(n)+A062272(n)-A003701(n)]`
-/

namespace A354519.P16993055652438208819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A062272 n - A003701 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354519.P16993055652438208819

/-!
# A354520: Expansion of e.g.f. exp(x) * log(cosh(x)).

The programs for A354520, there is no canonical definition to state claims against.
-/

/-! ## A354520.P15974400850219550628

`∑[A009832(n)]`
-/

namespace A354520.P15974400850219550628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P15974400850219550628

/-! ## A354520.P4708379124516454481

`∑[A399331(∑[n])]`
-/

namespace A354520.P4708379124516454481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399331 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P4708379124516454481

/-! ## A354520.P16859246035422747242

`∑[A119880(n)-1]`
-/

namespace A354520.P16859246035422747242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P16859246035422747242

/-! ## A354520.P13747008194574119088

`∑[1-A122045(n)]`
-/

namespace A354520.P13747008194574119088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A122045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P13747008194574119088

/-! ## A354520.P5246150915321221621

`∑[1-A119879(∑[n])]`
-/

namespace A354520.P5246150915321221621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A119879 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P5246150915321221621

/-! ## A354520.P7938945832530864516

`1-A009390(n+1)+n`
-/

namespace A354520.P7938945832530864516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009390 (n + 1) + (n : ℤ)

end

end A354520.P7938945832530864516

/-! ## A354520.P677570015241616291

`∑[∑[A241209(n)]-A241209(n)]`
-/

namespace A354520.P677570015241616291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A241209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P677570015241616291

/-! ## A354520.P12823224796034162278

`∑[1-A060081(∑[n])]`
-/

namespace A354520.P12823224796034162278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060081 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354520.P12823224796034162278

/-!
# A354524: Primes p such that p+1 is the concatenation of a power of 3 and a power of 2.

The programs for A354524, there is no canonical definition to state claims against.
-/

/-! ## A354524.P8418806377210733829

`∩[A078861(n+1), A127045(n+1)]`
-/

namespace A354524.P8418806377210733829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354524.P8418806377210733829

/-! ## A354524.P3265666849226157517

`∩[A127045(n+1), A277694(n+1)]`
-/

namespace A354524.P3265666849226157517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354524.P3265666849226157517

/-! ## A354524.P16820974345877413580

`∩[A191916(n+1), A266675(n+1)]`
-/

namespace A354524.P16820974345877413580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354524.P16820974345877413580

/-!
# A354525: Numbers k such that A354512(k) = A001221(k).

The programs for A354525, there is no canonical definition to state claims against.
-/

/-! ## A354525.P1115505807314985577

`eq[0, A354527(n+1)]+1`
-/

namespace A354525.P1115505807314985577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A354525.P1115505807314985577

/-! ## A354525.P17229949118744041967

`eq[A001221(n+1), A354512(n+1)]+1`
-/

namespace A354525.P17229949118744041967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354525.P17229949118744041967

/-! ## A354525.P18201321909627317623

`lt[A000217(n)*A354527(n+1), n+1]+1`
-/

namespace A354525.P18201321909627317623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A354527 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354525.P18201321909627317623

/-! ## A354525.P10481530994188665498

`lt[A002522(n)*A354527(n+1), n+1]+1`
-/

namespace A354525.P10481530994188665498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A354527 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354525.P10481530994188665498

/-! ## A354525.P1824223842021495914

`lt[A194275(n)*A354527(n+1), n+1]+1`
-/

namespace A354525.P1824223842021495914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n * A354527 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354525.P1824223842021495914

/-! ## A354525.P5261294486220398365

`lt[A000961(n+1)*A354527(n+1), n+1]+1`
-/

namespace A354525.P5261294486220398365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) * A354527 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354525.P5261294486220398365

/-! ## A354525.P7542976076546033435

`lt[A033096(n+1)*A354527(n+1), n+1]+1`
-/

namespace A354525.P7542976076546033435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033096 (n + 1) * A354527 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A354525.P7542976076546033435

/-! ## A354525.P11929711449088156246

`eq[A001222(A015053(n+1)), A354512(n+1)]+1`
-/

namespace A354525.P11929711449088156246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A015053 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A354525.P11929711449088156246

/-! ## A354525.P10688719323112899259

`lt[char[A354526(n+1)]*A018111(n), n]`
-/

namespace A354525.P10688719323112899259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354526 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A018111 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A354525.P10688719323112899259

/-!
# A354526: Numbers k such that A354512(k) < omega(k); complement of A354525.

The programs for A354526, there is no canonical definition to state claims against.
-/

/-! ## A354526.P3087098643389324581

`lt[0, A354527(n+1)]+1`
-/

namespace A354526.P3087098643389324581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354526.P3087098643389324581

/-! ## A354526.P6332650084565116806

`comp[A354525(n+1)-1]+1`
-/

namespace A354526.P6332650084565116806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354525 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A354526.P6332650084565116806

/-! ## A354526.P1056228672446661209

`lt[A354512(n+1), A001221(n+1)]+1`
-/

namespace A354526.P1056228672446661209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354526.P1056228672446661209

/-! ## A354526.P18152498984205859593

`eq[char[A354525(n+1)], A000007(n)]`
-/

namespace A354526.P18152498984205859593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354525 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A354526.P18152498984205859593

/-!
# A354527: a(n) = A001221(n) - A354512(n).

The programs for A354527, there is no canonical definition to state claims against.
-/

/-! ## A354527.P496179188273217543

`A001221(n+1)-A354512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A354527.P496179188273217543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A354512 (n + 1)

end

end A354527.P496179188273217543

/-! ## A354527.P1513155837118836668

`log2(A034444(n+1))-A354512(n+1)`
-/

namespace A354527.P1513155837118836668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ) - (A354512 (n + 1) : ℝ)

end

end A354527.P1513155837118836668

/-! ## A354527.P14896887492729862172

`A001222(∏{p}[n+1, #])-A354512(n+1)`
-/

namespace A354527.P14896887492729862172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A354512 (n + 1)

end

end A354527.P14896887492729862172

/-! ## A354527.P8981398264986990169

`log2(A000005(∏{p}[n+1, #]))-A354512(n+1)`
-/

namespace A354527.P8981398264986990169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ) - (A354512 (n + 1) : ℝ)

end

end A354527.P8981398264986990169

/-! ## A354527.P7466525921195909255

`A001222(A007947(n+1))-A354512(n+1)`
-/

namespace A354527.P7466525921195909255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat - A354512 (n + 1)

end

end A354527.P7466525921195909255

/-! ## A354527.P17651099309682028395

`A001222(A181819(n+1))-A354512(n+1)`
-/

namespace A354527.P17651099309682028395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181819 (n + 1)).toNat - A354512 (n + 1)

end

end A354527.P17651099309682028395

/-!
# A354529: a(1) = 3, a(2) = 12 and a(n) = (3n^2+8n-2)/2 if n is even or = (3n^2+8n-5)/2, if n is odd, for n >= 3.

The programs for A354529, the canonical program `A354529.P13299530593042820505` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354529 has offset 1).

The definition of A354529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354529.P13299530593042820505

`ogf((3+6x-x^2-x^3-2x^4+x^5)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354529

/-- `ogf((3+6x-x^2-x^3-2x^4+x^5)/(1-2x+2x^3-x^4))` -/
def P13299530593042820505.Spec : Prop :=
  ∀ n, P13299530593042820505.a n = A354529 (n + 1)

theorem P13299530593042820505.correct : P13299530593042820505.Spec := by
  intro n
  simp only [A354529, Nat.add_sub_cancel]

end A354529

/-! ## A354529.P3833932243557362193

`A016777(A074148(n+1))-char[1]+n-1`
-/

namespace A354529.P3833932243557362193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A074148 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A354529.P3833932243557362193

namespace A354529

/-- `A016777(A074148(n+1))-char[1]+n-1` -/
def P3833932243557362193.Spec : Prop :=
  ∀ n, P3833932243557362193.a n = A354529 (n + 1)

end A354529

/-! ## A354529.P11157704410574235316

`A354528(A105343(n+2)+3%A179207(n+1))`
-/

namespace A354529.P11157704410574235316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354528 (A105343 (n + 2) + Int.tmod 3 (A179207 (n + 1))).toNat

end

end A354529.P11157704410574235316

namespace A354529

/-- `A354528(A105343(n+2)+3%A179207(n+1))` -/
def P11157704410574235316.Spec : Prop :=
  ∀ n, P11157704410574235316.a n = A354529 (n + 1)

end A354529

/-! ## A354529.P5656266886562166155

`A354528(lt[A354528(n+2), n])`
-/

namespace A354529.P5656266886562166155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354528 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354528 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A354529.P5656266886562166155

namespace A354529

/-- `A354528(lt[A354528(n+2), n])` -/
def P5656266886562166155.Spec : Prop :=
  ∀ n, P5656266886562166155.a n = A354529 (n + 1)

end A354529

/-!
# A354530: Numbers k such that k^2 is a minimal number; numbers k whose square is in A007416.

The programs for A354530, there is no canonical definition to state claims against.
-/

/-! ## A354530.P16622589577448975833

`sqrt(A166721(n+1))`
-/

namespace A354530.P16622589577448975833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166721 (n + 1) : ℝ)

end

end A354530.P16622589577448975833

/-! ## A354530.P16669751979000203165

`root(A166721(n+1), A322585(2*n+1)+2)`
-/

namespace A354530.P16669751979000203165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A166721 (n + 1) : ℝ) ^ (1 / (A322585 (2 * n + 1) + 2 : ℝ))

end

end A354530.P16669751979000203165

/-! ## A354530.P11445624385234607168

`root(A166721(n+1), A034444(A034444(n+1)))`
-/

namespace A354530.P11445624385234607168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A166721 (n + 1) : ℝ) ^ (1 / (A034444 (A034444 (n + 1)).toNat : ℝ))

end

end A354530.P11445624385234607168

/-! ## A354530.P17076189985435021887

`sqrt(∩[A007416(n+1), A055932(n+1)²])`
-/

namespace A354530.P17076189985435021887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1) ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A354530.P17076189985435021887

/-! ## A354530.P1878855779450285474

`sqrt(∩[A007416(n+1), n²])`
-/

namespace A354530.P1878855779450285474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A354530.P1878855779450285474

/-! ## A354530.P9090856580988658288

`sqrt(∩[A221285(n+1), A007416(n+1)])`
-/

namespace A354530.P9090856580988658288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A354530.P9090856580988658288

/-! ## A354530.P749133563527704827

`sqrt(∩[n*A028310(n), A007416(n+1)])`
-/

namespace A354530.P749133563527704827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A354530.P749133563527704827

/-!
# A354531: Numbers k such that 2*(2^k-1) is in A354525.

The programs for A354531, there is no canonical definition to state claims against.
-/

/-! ## A354531.P11750536788104848742

`floor(log2(A354533(n+1)))`
-/

namespace A354531.P11750536788104848742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A354533 (n + 1)).toNat

end

end A354531.P11750536788104848742

/-! ## A354531.P7024383953744220930

`log2(A354536(n+1)+1)`
-/

namespace A354531.P7024383953744220930
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A354536 (n + 1) + 1 : ℝ)

end

end A354531.P7024383953744220930

/-! ## A354531.P2898273566397682943

`lt[A046051(n+1), A067131(A172419(n+3)+1)]+1`
-/

namespace A354531.P2898273566397682943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A172419 (n + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354531.P2898273566397682943

/-! ## A354531.P18155594836027525833

`∩[A155900(n+1), A347498(n+1)]`
-/

namespace A354531.P18155594836027525833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354531.P18155594836027525833

/-! ## A354531.P10602535279860980128

`eq[A287477(n), A292745(n)]`
-/

namespace A354531.P10602535279860980128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354531.P10602535279860980128

/-!
# A354532: Numbers k that are not Mersenne exponents (A000043) such that 2*(2^k-1) is in A354525.

The programs for A354532, there is no canonical definition to state claims against.
-/

/-! ## A354532.P8547813501012099335

`or(1, A055661(A188464(n)))`
-/

namespace A354532.P8547813501012099335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055661 (A188464 n).toNat)

end

end A354532.P8547813501012099335

/-!
# A354533: Even terms in A354525.

The programs for A354533, there is no canonical definition to state claims against.
-/

/-! ## A354533.P613811627677063378

`2*(2^A354531(n+1)-1)`
-/

namespace A354533.P613811627677063378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ (A354531 (n + 1) : ℤ) - 1)

end

end A354533.P613811627677063378

/-! ## A354533.P10245071004149522096

`2*A354536(n+1)`
-/

namespace A354533.P10245071004149522096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A354536 (n + 1)

end

end A354533.P10245071004149522096

/-! ## A354533.P15778705718839422466

`2*A000225(A354531(n+1))`
-/

namespace A354533.P15778705718839422466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000225 (A354531 (n + 1)).toNat

end

end A354533.P15778705718839422466

/-! ## A354533.P4507037459479254310

`A000225(A354531(n+1)+1)-1`
-/

namespace A354533.P4507037459479254310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A354531 (n + 1) + 1).toNat - 1

end

end A354533.P4507037459479254310

/-! ## A354533.P4832612894778426120

`A354536(A000027(n+1))+A354536(n+1)`
-/

namespace A354533.P4832612894778426120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354536 (A000027 (n + 1)).toNat + A354536 (n + 1)

end

end A354533.P4832612894778426120

/-!
# A354535: a(n) is the number of different tile sizes after n iterations of the "Square Multiscale" substitution.

The programs for A354535, there is no canonical definition to state claims against.
-/

/-! ## A354535.P14887306981191001155

`A002024(or(A008585(n), A340999(n)))`
-/

namespace A354535.P14887306981191001155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A008585 n) (A340999 (n + 204))).toNat

end

end A354535.P14887306981191001155

/-! ## A354535.P18405719415687210133

`A002024(xor(A008585(n), A340999(n)))`
-/

namespace A354535.P18405719415687210133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.xor (A008585 n) (A340999 (n + 204))).toNat

end

end A354535.P18405719415687210133

/-! ## A354535.P15744590660637775943

`A002024(comp[2*n+3]+record[A216455(n+1)])`
-/

namespace A354535.P15744590660637775943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A354535.P15744590660637775943

/-! ## A354535.P16973629816933524203

`A137734(A008588(n))%A130446(3*(n+1))`
-/

namespace A354535.P16973629816933524203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137734 (A008588 n).toNat) (A130446 (3 * (n + 1)))

end

end A354535.P16973629816933524203

/-! ## A354535.P15121390132085583580

`A002024(A008486(n))%A002997(A054582(n))`
-/

namespace A354535.P15121390132085583580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A008486 n).toNat) (A002997 (A054582 n).toNat)

end

end A354535.P15121390132085583580

/-! ## A354535.P7052068141900488080

`A000194(A151878(n)+A008458(n))`
-/

namespace A354535.P7052068141900488080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A151878 n + A008458 n).toNat

end

end A354535.P7052068141900488080

/-! ## A354535.P5403402007660365263

`A002024(A151878(n)+A008585(n))`
-/

namespace A354535.P5403402007660365263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A151878 n + A008585 n).toNat

end

end A354535.P5403402007660365263

/-! ## A354535.P14716822711607566315

`A107436(A151878(n)+A008486(n))`
-/

namespace A354535.P14716822711607566315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (A151878 n + A008486 n).toNat

end

end A354535.P14716822711607566315

/-! ## A354535.P17666777686340528058

`A107436(A151878(n)+A016777(n))`
-/

namespace A354535.P17666777686340528058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107436 (A151878 n + A016777 n).toNat

end

end A354535.P17666777686340528058

/-! ## A354535.P12976334358242709170

`A000194(or(A008458(n), A151878(n)))`
-/

namespace A354535.P12976334358242709170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor (A008458 n) (A151878 n)).toNat

end

end A354535.P12976334358242709170

/-!
# A354536: Numbers k such that 2*k is in A354525.

The programs for A354536, there is no canonical definition to state claims against.
-/

/-! ## A354536.P13217468675945213447

`A354533(n+1)/2`
-/

namespace A354536.P13217468675945213447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354533 (n + 1) : ℚ) / 2

end

end A354536.P13217468675945213447

/-! ## A354536.P3104328749070373665

`2^A354531(n+1)-1`
-/

namespace A354536.P3104328749070373665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A354531 (n + 1) : ℤ) - 1

end

end A354536.P3104328749070373665

/-! ## A354536.P164908827614173909

`A000225(A354531(n+1))`
-/

namespace A354536.P164908827614173909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A354531 (n + 1)).toNat

end

end A354536.P164908827614173909

/-! ## A354536.P16771406528590784125

`A000079(floor(log2(A354533(n+1))))-1`
-/

namespace A354536.P16771406528590784125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.log 2 (A354533 (n + 1)).toNat) - 1

end

end A354536.P16771406528590784125

/-!
# A354538: a(n) is the least k such that A322523(k) = n.

The programs for A354538, the canonical program `A354538.P4747650925600472059` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354538 has offset 0).

The definition of A354538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354538.P16883626954423592819

`∑[ogf((-1+x+x^2+6x^3)/(-1+3x))]`
-/

namespace A354538.P16883626954423592819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, -6] [1, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354538.P16883626954423592819

namespace A354538

/-- `∑[ogf((-1+x+x^2+6x^3)/(-1+3x))]` -/
def P16883626954423592819.Spec : Prop :=
  ∀ n, P16883626954423592819.a n = A354538 n

end A354538

/-! ## A354538.P7574074066192908441

`ogf((-1+x+x^2+6x^3)/(-1+4x-3x^2))`
-/

namespace A354538.P7574074066192908441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, -6] [1, -4, 3] n

end

end A354538.P7574074066192908441

namespace A354538

/-- `ogf((-1+x+x^2+6x^3)/(-1+4x-3x^2))` -/
def P7574074066192908441.Spec : Prop :=
  ∀ n, P7574074066192908441.a n = A354538 n

end A354538

/-! ## A354538.P4747650925600472059

`3*a(n-1)-7` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354538

/-- `3*a(n-1)-7` -/
def P4747650925600472059.Spec : Prop :=
  ∀ n, P4747650925600472059.a n = A354538 n

theorem P4747650925600472059.correct : P4747650925600472059.Spec := by
  intro n
  simp only [A354538]

end A354538

/-! ## A354538.P3740104747329059355

`∑[floor(3^(n-1))+C(2, C(n, 2))]`
-/

namespace A354538.P3740104747329059355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (Nat.choose 2 (Nat.choose n 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354538.P3740104747329059355

namespace A354538

/-- `∑[floor(3^(n-1))+C(2, C(n, 2))]` -/
def P3740104747329059355.Spec : Prop :=
  ∀ n, P3740104747329059355.a n = A354538 n

end A354538

/-! ## A354538.P16158148934844083220

`3^(n-1)-floor(-a(n-1))` with `a(0)=1, a(1)=3, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A354538.P16158148934844083220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A354538.P16158148934844083220

namespace A354538

/-- `3^(n-1)-floor(-a(n-1))` -/
def P16158148934844083220.Spec : Prop :=
  ∀ n, P16158148934844083220.a n = (A354538 n : ℚ)

end A354538

/-! ## A354538.P3815249930664554771

`A151798(n)+A003462(n)`
-/

namespace A354538.P3815249930664554771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n + A003462 n

end

end A354538.P3815249930664554771

namespace A354538

/-- `A151798(n)+A003462(n)` -/
def P3815249930664554771.Spec : Prop :=
  ∀ n, P3815249930664554771.a n = A354538 n

end A354538

/-! ## A354538.P586981290453951214

`A115098(n)-A113679(n)`
-/

namespace A354538.P586981290453951214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A113679 n

end

end A354538.P586981290453951214

namespace A354538

/-- `A115098(n)-A113679(n)` -/
def P586981290453951214.Spec : Prop :=
  ∀ n, P586981290453951214.a n = A354538 n

end A354538

/-! ## A354538.P353681102119423947

`A271589(∑[n]+1)`
-/

namespace A354538.P353681102119423947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271589 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A354538.P353681102119423947

namespace A354538

/-- `A271589(∑[n]+1)` -/
def P353681102119423947.Spec : Prop :=
  ∀ n, P353681102119423947.a n = A354538 n

end A354538

/-! ## A354538.P6750746077350815931

`record[A271589(n+1)]`
-/

namespace A354538.P6750746077350815931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A354538.P6750746077350815931

namespace A354538

/-- `record[A271589(n+1)]` -/
def P6750746077350815931.Spec : Prop :=
  ∀ n, P6750746077350815931.a n = A354538 n

end A354538

/-!
# A354539: Number of decorated Dyck paths of length n without peaks at level 1 ending at arbitrary levels.

The programs for A354539, there is no canonical definition to state claims against.
-/

/-! ## A354539.P18256907067313330048

`A122156(A026530(n))`
-/

namespace A354539.P18256907067313330048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (A026530 n).toNat

end

end A354539.P18256907067313330048

/-! ## A354539.P17106045762148068120

`A293606(n)-A007968(A293324(n))`
-/

namespace A354539.P17106045762148068120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 n - A007968 (A293324 n).toNat

end

end A354539.P17106045762148068120

/-! ## A354539.P11742456499854028871

`A195044(A026530(n)*A055642(n))`
-/

namespace A354539.P11742456499854028871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195044 (A026530 n * A055642 n).toNat

end

end A354539.P11742456499854028871

/-! ## A354539.P11187275103287457373

`A094767(n+1)-A033265(A001003(n))`
-/

namespace A354539.P11187275103287457373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094767 (n + 1) - A033265 (A001003 n).toNat

end

end A354539.P11187275103287457373

/-! ## A354539.P15808393798572067539

`A002487(A000688(n+5)*A328437(n))`
-/

namespace A354539.P15808393798572067539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A000688 (n + 5) * A328437 n).toNat

end

end A354539.P15808393798572067539

/-!
# A354540: Number of decorated Dyck paths of length n ending at arbitrary levels.

The programs for A354540, there is no canonical definition to state claims against.
-/

/-! ## A354540.P5367564113205274198

`A116406(n)+A014082(A165523(n))`
-/

namespace A354540.P5367564113205274198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n + A014082 (A165523 n).toNat

end

end A354540.P5367564113205274198

/-! ## A354540.P2359075024127166052

`A329313(A000332(n))+A056353(n)`
-/

namespace A354540.P2359075024127166052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A000332 n).toNat + A056353 n

end

end A354540.P2359075024127166052

/-! ## A354540.P11451684181886693829

`A116406(n)+A002262(A309861(n))`
-/

namespace A354540.P11451684181886693829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116406 n + A002262 (A309861 n).toNat

end

end A354540.P11451684181886693829

/-! ## A354540.P530625530394034260

`A163510(A184510(n))+A116406(n)`
-/

namespace A354540.P530625530394034260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (A184510 n).toNat + A116406 n

end

end A354540.P530625530394034260

/-!
# A354541: Number of ways to tile a double-hexagon strip of n hexagons, using single and double hexagons.

The programs for A354541, the canonical program `A354541.P4063792699594929995` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354541 has offset 0).

The definition of A354541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354541.P4063792699594929995

`6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354541

/-- `6*a(n-3)` -/
def P4063792699594929995.Spec : Prop :=
  ∀ n, (P4063792699594929995.a n : ℤ) = A354541 n

theorem P4063792699594929995.correct : P4063792699594929995.Spec := by
  intro n
  simp only [A354541]

end A354541

/-! ## A354541.P2449362336099313748

`ogf((1+x+2x^2-2x^3+2x^4)/(1-6x^3))`
-/

namespace A354541.P2449362336099313748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, -2, 2] [1, 0, 0, -6] n

end

end A354541.P2449362336099313748

namespace A354541

/-- `ogf((1+x+2x^2-2x^3+2x^4)/(1-6x^3))` -/
def P2449362336099313748.Spec : Prop :=
  ∀ n, P2449362336099313748.a n = A354541 n

end A354541

/-! ## A354541.P4422745310313665381

`a(n-1)+a(n-(n%3)!)` with `a(0)=1, a(1)=1`
-/

namespace A354541.P4422745310313665381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - Nat.factorial (n % 3))

end

end A354541.P4422745310313665381

namespace A354541

/-- `a(n-1)+a(n-(n%3)!)` -/
def P4422745310313665381.Spec : Prop :=
  ∀ n, (P4422745310313665381.a n : ℤ) = A354541 n

end A354541

/-! ## A354541.P7048141544515972336

`∏[A239141(n+1)/A107751(n)]`
-/

namespace A354541.P7048141544515972336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239141 (n + 1) : ℚ) / (A107751 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A354541.P7048141544515972336

namespace A354541

/-- `∏[A239141(n+1)/A107751(n)]` -/
def P7048141544515972336.Spec : Prop :=
  ∀ n, P7048141544515972336.a n = (A354541 n : ℚ)

end A354541

/-! ## A354541.P16735184511255190338

`A317312(a(n-3))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8`
-/

namespace A354541.P16735184511255190338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8] fun n a =>
  A317312 (a (n - 3)).toNat

end

end A354541.P16735184511255190338

namespace A354541

/-- `A317312(a(n-3))` -/
def P16735184511255190338.Spec : Prop :=
  ∀ n, P16735184511255190338.a n = A354541 n

end A354541

/-!
# A354548: Number of edges in the graph of continuous discrete sections for a trivial bundle in a total space of the fiber bundle of size n.

The programs for A354548, there is no canonical definition to state claims against.
-/

/-! ## A354548.P7829571250047517797

`A072614(A008418(n))`
-/

namespace A354548.P7829571250047517797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072614 (A008418 n).toNat

end

end A354548.P7829571250047517797

/-!
# A354549: Numbers k such that floor(k^2*phi) is a square, where phi = A001622 is the golden ratio.

The programs for A354549, there is no canonical definition to state claims against.
-/

/-! ## A354549.P15138024325396292958

`A225205(A306225(2*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A354549.P15138024325396292958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A225205 (A306225 (2 * a (n - 1)).toNat).toNat

end

end A354549.P15138024325396292958

/-!
# A354550: Expansion of e.g.f. exp( x * exp(x^2/2) ).

The programs for A354550, the canonical program `A354550.P17489378485128075191` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354550 has offset 0).

The definition of A354550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354550.P17489378485128075191

`n!*∑{#}[floor(n/2), (n-2*#)^#/(2^#*#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354550

/-- `n!*∑{#}[floor(n/2), (n-2*#)^#/(2^#*#!*(n-2*#)!)]` -/
def P17489378485128075191.Spec : Prop :=
  ∀ n, P17489378485128075191.a n = (A354550 n : ℚ)

end A354550

/-! ## A354550.P1622785009608366590

`A143566(A324674(n)+n)`
-/

namespace A354550.P1622785009608366590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143566 (A324674 n + (n : ℤ)).toNat

end

end A354550.P1622785009608366590

namespace A354550

/-- `A143566(A324674(n)+n)` -/
def P1622785009608366590.Spec : Prop :=
  ∀ n, P1622785009608366590.a n = A354550 n

end A354550

/-! ## A354550.P5854040583276033716

`A143566(n^A143570(n))`
-/

namespace A354550.P5854040583276033716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143566 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A143570 n : ℤ))).toNat

end

end A354550.P5854040583276033716

namespace A354550

/-- `A143566(n^A143570(n))` -/
def P5854040583276033716.Spec : Prop :=
  ∀ n, P5854040583276033716.a n = A354550 n

end A354550

/-!
# A354551: Expansion of e.g.f. exp( x * exp(x^3/6) ).

The programs for A354551, the canonical program `A354551.P4089215802977993662` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354551 has offset 0).

The definition of A354551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354551.P4089215802977993662

`n!*∑{#}[floor(n/3), (n-3*#)^#/(6^#*#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354551

/-- `n!*∑{#}[floor(n/3), (n-3*#)^#/(6^#*#!*(n-3*#)!)]` -/
def P4089215802977993662.Spec : Prop :=
  ∀ n, P4089215802977993662.a n = (A354551 n : ℚ)

end A354551

/-! ## A354551.P17588521842700659915

`A143567(gcd(n, A328459(n)))`
-/

namespace A354551.P17588521842700659915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143567 (Int.gcd (n : ℤ) (A328459 n))

end

end A354551.P17588521842700659915

namespace A354551

/-- `A143567(gcd(n, A328459(n)))` -/
def P17588521842700659915.Spec : Prop :=
  ∀ n, P17588521842700659915.a n = A354551 n

end A354551

/-! ## A354551.P3176136118738753688

`A006519(∑[2^n])*A143567(n)`
-/

namespace A354551.P3176136118738753688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∑ j ∈ Finset.range (n + 1), f1 j) * A143567 n

end

end A354551.P3176136118738753688

namespace A354551

/-- `A006519(∑[2^n])*A143567(n)` -/
def P3176136118738753688.Spec : Prop :=
  ∀ n, P3176136118738753688.a n = A354551 n

end A354551

/-! ## A354551.P9655776749053517797

`A067513(∑[2^n])*A143567(n)`
-/

namespace A354551.P9655776749053517797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (∑ j ∈ Finset.range (n + 1), f1 j) * A143567 n

end

end A354551.P9655776749053517797

namespace A354551

/-- `A067513(∑[2^n])*A143567(n)` -/
def P9655776749053517797.Spec : Prop :=
  ∀ n, P9655776749053517797.a n = A354551 n

end A354551

/-! ## A354551.P4369805129424986141

`A143567(A145037(3*2^n-1))`
-/

namespace A354551.P4369805129424986141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143567 (A145037 (3 * 2 ^ n - 1)).toNat

end

end A354551.P4369805129424986141

namespace A354551

/-- `A143567(A145037(3*2^n-1))` -/
def P4369805129424986141.Spec : Prop :=
  ∀ n, P4369805129424986141.a n = A354551 n

end A354551

/-!
# A354552: Expansion of e.g.f. exp( x * exp(x^4/24) ).

The programs for A354552, there is no canonical definition to state claims against.
-/

/-! ## A354552.P8402236079560472034

`n!*∑{#}[floor(n/4), (n-4*#)^#/(24^#*#!*(n-4*#)!)]`
-/

namespace A354552.P8402236079560472034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (((n : ℤ) - (4 * k : ℤ)) ^ k : ℚ) / (24 ^ k * Nat.factorial k * Nat.factorial ((n : ℤ) - (4 * k : ℤ)).toNat : ℚ))

end

end A354552.P8402236079560472034

/-!
# A354553: Expansion of e.g.f. exp( x * exp(x^3) ).

The programs for A354553, the canonical program `A354553.P5224218387081730377` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354553 has offset 0).

The definition of A354553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354553.P5224218387081730377

`n!*∑{#}[floor(n/3), (n-3*#)^#/(#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354553

/-- `n!*∑{#}[floor(n/3), (n-3*#)^#/(#!*(n-3*#)!)]` -/
def P5224218387081730377.Spec : Prop :=
  ∀ n, P5224218387081730377.a n = (A354553 n : ℚ)

end A354553

/-! ## A354553.P16290651572184001137

`A367719(n)+A000007(A079117(n))`
-/

namespace A354553.P16290651572184001137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367719 n + A000007 (A079117 n).toNat

end

end A354553.P16290651572184001137

namespace A354553

/-- `A367719(n)+A000007(A079117(n))` -/
def P16290651572184001137.Spec : Prop :=
  ∀ n, P16290651572184001137.a n = A354553 n

end A354553

/-! ## A354553.P1936451764814579477

`A367719(n)+A000035(A088625(n))`
-/

namespace A354553.P1936451764814579477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367719 n + A000035 (A088625 n).toNat

end

end A354553.P1936451764814579477

namespace A354553

/-- `A367719(n)+A000035(A088625(n))` -/
def P1936451764814579477.Spec : Prop :=
  ∀ n, P1936451764814579477.a n = A354553 n

end A354553

/-! ## A354553.P3999814793345157647

`A367719(n)+A156659(A014820(n))`
-/

namespace A354553.P3999814793345157647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367719 n + A156659 (A014820 n).toNat

end

end A354553.P3999814793345157647

namespace A354553

/-- `A367719(n)+A156659(A014820(n))` -/
def P3999814793345157647.Spec : Prop :=
  ∀ n, P3999814793345157647.a n = A354553 n

end A354553

/-! ## A354553.P16230204230880135392

`A367719(n)+A000007(A290551(n))`
-/

namespace A354553.P16230204230880135392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367719 n + A000007 (A290551 n).toNat

end

end A354553.P16230204230880135392

namespace A354553

/-- `A367719(n)+A000007(A290551(n))` -/
def P16230204230880135392.Spec : Prop :=
  ∀ n, P16230204230880135392.a n = A354553 n

end A354553

/-!
# A354554: Expansion of e.g.f. exp( x * exp(x^4) ).

The programs for A354554, the canonical program `A354554.P7148863830840916677` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354554 has offset 0).

The definition of A354554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354554.P7148863830840916677

`n!*∑{#}[floor(n/4), (n-4*#)^#/(#!*(n-4*#)!)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354554

/-- `n!*∑{#}[floor(n/4), (n-4*#)^#/(#!*(n-4*#)!)]` -/
def P7148863830840916677.Spec : Prop :=
  ∀ n, P7148863830840916677.a n = (A354554 n : ℚ)

end A354554

/-!
# A354555: Rectangular array read by antidiagonals. T(m,n) is the number of degree n monic polynomials in GF_2[x] such that each irreducible factor in the prime factorization has multiplicity no greater than m, m>=1, n>=0.

The programs for A354555, there is no canonical definition to state claims against.
-/

/-! ## A354555.P13435941206441892336

`A385318(A135086(n+1))`
-/

namespace A354555.P13435941206441892336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385318 (A135086 (n + 1)).toNat

end

end A354555.P13435941206441892336

/-! ## A354555.P16101527381984351543

`A057601(A210950(n+1)%A220217(3*n+2))`
-/

namespace A354555.P16101527381984351543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057601 (Int.tmod (A210950 (n + 1)) (A220217 (3 * n + 2))).toNat

end

end A354555.P16101527381984351543

/-! ## A354555.P10242394138525213718

`A381524(A208763(n+1))`
-/

namespace A354555.P10242394138525213718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381524 (A208763 (n + 1)).toNat

end

end A354555.P10242394138525213718

/-! ## A354555.P9376509158708488500

`∏{e}[A083222(A209435(n)), #]`
-/

namespace A354555.P9376509158708488500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083222 (A209435 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A354555.P9376509158708488500

/-! ## A354555.P5405437495759593854

`A058318(A122366(n))`
-/

namespace A354555.P5405437495759593854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058318 (A122366 n).toNat

end

end A354555.P5405437495759593854

/-!
# A354557: Denominators of a sequence related to the Secretary Problem with Multiple Stoppings.

The programs for A354557, there is no canonical definition to state claims against.
-/

/-! ## A354557.P15829434345799596149

`A320009(∑{d}[A001045(2*n)+7, n²%#])`
-/

namespace A354557.P15829434345799596149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320009 (∑ d ∈ Nat.divisors (f1 n).natAbs, n ^ 2 % d)

end

end A354557.P15829434345799596149

/-!
# A354558: Numbers k such that k and k+1 are both divisible by the square of their largest prime factor.

The programs for A354558, there is no canonical definition to state claims against.
-/

/-! ## A354558.P10655404312782156499

`∩[A070003(n+1)-1, A070003(n+1)]`
-/

namespace A354558.P10655404312782156499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354558.P10655404312782156499

/-! ## A354558.P17786090078946490061

`∩[A070003(n+1), A023443(A070003(n+1))]`
-/

namespace A354558.P17786090078946490061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A070003 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354558.P17786090078946490061

/-!
# A354559: The number of terms of A354558 that are <= 10^n.

The programs for A354559, there is no canonical definition to state claims against.
-/

/-! ## A354559.P9799849304528252454

`A364185(A060058(2*(n+1)))+A000495(n)`
-/

namespace A354559.P9799849304528252454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364185 (A060058 (2 * (n + 1))).toNat + A000495 n

end

end A354559.P9799849304528252454

/-! ## A354559.P1191746695208471737

`A326622(A133686(n))+A125108(n+1)`
-/

namespace A354559.P1191746695208471737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A133686 n).toNat + A125108 (n + 1)

end

end A354559.P1191746695208471737

/-! ## A354559.P6628434806972027237

`or(A285899(A005418(n+1)), A338828(n))`
-/

namespace A354559.P6628434806972027237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285899 (A005418 (n + 1)).toNat) (A338828 n)

end

end A354559.P6628434806972027237

/-!
# A354561: Numbers divisible by the cube of their largest prime factor.

The programs for A354561, the canonical program `A354561.P7371414778819772247` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354561 has offset 1).

The definition of A354561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354561.P7371414778819772247

`lt[2, A071178(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A354561

/-- `lt[2, A071178(n+1)]+1` -/
def P7371414778819772247.Spec : Prop :=
  ∀ n, (P7371414778819772247.a n : ℤ) = A354561 (n + 1)

theorem P7371414778819772247.correct : P7371414778819772247.Spec := by
  intro n
  simp only [A354561, Nat.add_sub_cancel]

end A354561

/-! ## A354561.P16995894486982891913

`lt[2, A001222(A053585(n+1))]+1`
-/

namespace A354561.P16995894486982891913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053585 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354561.P16995894486982891913

namespace A354561

/-- `lt[2, A001222(A053585(n+1))]+1` -/
def P16995894486982891913.Spec : Prop :=
  ∀ n, (P16995894486982891913.a n : ℤ) = A354561 (n + 1)

end A354561

/-! ## A354561.P8094943669177185276

`lt[2, A124010(A013939(n+1)+1)]+1`
-/

namespace A354561.P8094943669177185276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A013939 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A354561.P8094943669177185276

namespace A354561

/-- `lt[2, A124010(A013939(n+1)+1)]+1` -/
def P8094943669177185276.Spec : Prop :=
  ∀ n, (P8094943669177185276.a n : ℤ) = A354561 (n + 1)

end A354561

/-! ## A354561.P4874422884869758732

`lt[A243074(n+1), A052126(n+1)]+1`
-/

namespace A354561.P4874422884869758732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A354561.P4874422884869758732

namespace A354561

/-- `lt[A243074(n+1), A052126(n+1)]+1` -/
def P4874422884869758732.Spec : Prop :=
  ∀ n, (P4874422884869758732.a n : ℤ) = A354561 (n + 1)

end A354561

/-! ## A354561.P2600395556289316962

`A020725(lt[A243074(n+1), A052126(n+1)])`
-/

namespace A354561.P2600395556289316962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354561.P2600395556289316962

namespace A354561

/-- `A020725(lt[A243074(n+1), A052126(n+1)])` -/
def P2600395556289316962.Spec : Prop :=
  ∀ n, P2600395556289316962.a n = A354561 (n + 1)

end A354561

/-! ## A354561.P17335324614640858149

`A065475(lt[A243074(n+1), A052126(n+1)])`
-/

namespace A354561.P17335324614640858149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A354561.P17335324614640858149

namespace A354561

/-- `A065475(lt[A243074(n+1), A052126(n+1)])` -/
def P17335324614640858149.Spec : Prop :=
  ∀ n, P17335324614640858149.a n = A354561 (n + 1)

end A354561

/-!
# A354562: Numbers k such that k and k+1 are both divisible by the cube of their largest prime factor.

The programs for A354562, there is no canonical definition to state claims against.
-/

/-! ## A354562.P8718219332062563363

`∩[A354563(n+1), A354564(n+1)]`
-/

namespace A354562.P8718219332062563363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354562.P8718219332062563363

/-!
# A354563: Numbers k such that P(k)^2 | k and P(k+1)^3 | (k+1), where P(k) = A006530(k) is the largest prime dividing k.

The programs for A354563, there is no canonical definition to state claims against.
-/

/-! ## A354563.P17509146671776356077

`∩[A354558(n+1), A354561(n+1)-1]`
-/

namespace A354563.P17509146671776356077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354563.P17509146671776356077

/-!
# A354564: Numbers k such that P(k)^3 | k and P(k+1)^2 | (k+1), where P(k) = A006530(k) is the largest prime dividing k.

The programs for A354564, there is no canonical definition to state claims against.
-/

/-! ## A354564.P6952213875941892741

`∩[A354558(n+1), A354561(n+1)]`
-/

namespace A354564.P6952213875941892741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354564.P6952213875941892741

/-!
# A354569: Ordered even leg lengths k (listed with multiplicity) of primitive Pythagorean triangles such that all odd prime factors of k are congruent to 1 (mod 4) and at least one prime factor is congruent to 1 (mod 4).

The programs for A354569, there is no canonical definition to state claims against.
-/

/-! ## A354569.P3773183473947541908

`A265560(A056022(n+2))`
-/

namespace A354569.P3773183473947541908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265560 (A056022 (n + 2)).toNat

end

end A354569.P3773183473947541908

/-!
# A354570: Ordered odd leg lengths k (listed with multiplicity) of primitive Pythagorean triangles such that all prime factors of k are congruent to 3 (mod 4).

The programs for A354570, there is no canonical definition to state claims against.
-/

/-! ## A354570.P16851688932317269593

`A141225(A079652(n+1))+A079603(n+1)`
-/

namespace A354570.P16851688932317269593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141225 (A079652 (n + 1)).toNat + A079603 (n + 1)

end

end A354570.P16851688932317269593

/-!
# A354572: Prime partial sums of the primes == 1 (mod 6).

The programs for A354572, there is no canonical definition to state claims against.
-/

/-! ## A354572.P11657771770875996605

`p?[∑[p?[3*n+1]]]`
-/

namespace A354572.P11657771770875996605
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A354572.P11657771770875996605

/-! ## A354572.P1165024488196206644

`p?[A038349(n+1)]`
-/

namespace A354572.P1165024488196206644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354572.P1165024488196206644

/-! ## A354572.P2506373975390477698

`p?[∑[A002476(n+1)]]`
-/

namespace A354572.P2506373975390477698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354572.P2506373975390477698

/-! ## A354572.P13322983844463535550

`p?[∑[A007645(n+2)]]`
-/

namespace A354572.P13322983844463535550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354572.P13322983844463535550

/-! ## A354572.P10184610059542531680

`p?[∑[A045375(n+2)]]`
-/

namespace A354572.P10184610059542531680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354572.P10184610059542531680

/-!
# A354573: Prime partial sums of the primes == 5 (mod 6).

The programs for A354573, there is no canonical definition to state claims against.
-/

/-! ## A354573.P805480406928133654

`p?[∑[p?[3*n+5]]]`
-/

namespace A354573.P805480406928133654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A354573.P805480406928133654

/-! ## A354573.P18299983497662897717

`p?[p?[a(n-1)+3]+a(n-1)]` with `a(0)=5`
-/

namespace A354573.P18299983497662897717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A354573.P18299983497662897717

/-! ## A354573.P12460136004265146120

`p?[A038361(n+1)]`
-/

namespace A354573.P12460136004265146120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354573.P12460136004265146120

/-! ## A354573.P9295836980068952836

`p?[∑[A007528(n+1)]]`
-/

namespace A354573.P9295836980068952836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354573.P9295836980068952836

/-! ## A354573.P3108290205375207925

`p?[∑[A003627(n+2)]]`
-/

namespace A354573.P3108290205375207925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A354573.P3108290205375207925

/-!
# A354575: a(1) = 1; for n > 1, a(n) is the smallest positive number that has not yet appeared that is coprime to a(n-1) and the difference a(n) - a(n-1) is distinct from all previous differences.

The programs for A354575, there is no canonical definition to state claims against.
-/

/-! ## A354575.P15049435625195833794

`A354679(n)+a(n-1)` with `a(0)=1`
-/

namespace A354575.P15049435625195833794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354679 n + a (n - 1)

end

end A354575.P15049435625195833794

/-! ## A354575.P2347806041266847418

`∑[A354679(round(sqrt(n²+1)))]`
-/

namespace A354575.P2347806041266847418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354679 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354575.P2347806041266847418

/-! ## A354575.P12841925707001364474

`abs(∑[A354679(A028310(n))])`
-/

namespace A354575.P12841925707001364474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354679 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A354575.P12841925707001364474

/-! ## A354575.P13259559994764357788

`A354679(n)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A354575.P13259559994764357788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A354679 n - (A000038 n - a (n - 1))

end

end A354575.P13259559994764357788

/-! ## A354575.P7995419391137133808

`∑[A354679(A028310(n))]%A017137(n)`
-/

namespace A354575.P7995419391137133808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354679 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017137 n)

end

end A354575.P7995419391137133808

/-! ## A354575.P13509360162344285910

`A033999(n)²*∑[A354679(A028310(n))]`
-/

namespace A354575.P13509360162344285910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354679 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354575.P13509360162344285910

/-! ## A354575.P9731147479863455860

`∑[A354679(A028310(n))]+(2*A000045(n)+1)%2-1`
-/

namespace A354575.P9731147479863455860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354679 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (2 * A000045 n + 1) 2 - 1

end

end A354575.P9731147479863455860

/-! ## A354575.P3275298889535271239

`∑[A354679(n+1)]+1-A354679(n+1)`
-/

namespace A354575.P3275298889535271239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A354679 (n + 1))

end

end A354575.P3275298889535271239

/-!
# A354578: Number of ways to choose a divisor of each part of the n-th composition in standard order such that no adjacent divisors are equal.

The programs for A354578, there is no canonical definition to state claims against.
-/

/-! ## A354578.P10399532917426409524

`A137281(2*n+3)%A071928(A072374(n+1))`
-/

namespace A354578.P10399532917426409524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137281 (2 * n + 3)) (A071928 (A072374 (n + 1)).toNat)

end

end A354578.P10399532917426409524

/-!
# A354579: Number of distinct lengths of runs in the n-th composition in standard order.

The programs for A354579, there is no canonical definition to state claims against.
-/

/-! ## A354579.P5279627372997728694

`A334028(A333627(n))`
-/

namespace A354579.P5279627372997728694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A333627 n).toNat

end

end A354579.P5279627372997728694

/-! ## A354579.P14307352578136838337

`A351014(and(-1, A333627(n)))`
-/

namespace A354579.P14307352578136838337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.land (-1) (A333627 n)).toNat

end

end A354579.P14307352578136838337

/-! ## A354579.P13036500309641753547

`A351014(A333627(n)+char[1])`
-/

namespace A354579.P13036500309641753547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A333627 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A354579.P13036500309641753547

/-! ## A354579.P10579163469580191715

`A351014(xor(char[3], A333627(n)))`
-/

namespace A354579.P10579163469580191715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A333627 n)).toNat

end

end A354579.P10579163469580191715

/-! ## A354579.P2640637018985507270

`A351014(A333627(n)%(n+1))`
-/

namespace A354579.P2640637018985507270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.tmod (A333627 n) (n + 1 : ℤ)).toNat

end

end A354579.P2640637018985507270

/-! ## A354579.P9492308952246273602

`A124768(A333627(A333627(n))²)`
-/

namespace A354579.P9492308952246273602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A333627 (A333627 n).toNat ^ 2).toNat

end

end A354579.P9492308952246273602

/-! ## A354579.P17485773022600008637

`A354582(A333627(A333627(n))²)`
-/

namespace A354579.P17485773022600008637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A333627 (A333627 n).toNat ^ 2).toNat

end

end A354579.P17485773022600008637

/-! ## A354579.P6067139579500653338

`A351014(A178334(n)*A333627(n))`
-/

namespace A354579.P6067139579500653338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A178334 n * A333627 n).toNat

end

end A354579.P6067139579500653338

/-! ## A354579.P1260113904995752062

`gcd(A211978(n), A351014(A333627(n)))`
-/

namespace A354579.P1260113904995752062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211978 n) (A351014 (A333627 n).toNat)

end

end A354579.P1260113904995752062

/-! ## A354579.P12686222879234356774

`A351014(A335520(n+1)+A333627(n))`
-/

namespace A354579.P12686222879234356774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A335520 (n + 1) + A333627 n).toNat

end

end A354579.P12686222879234356774

/-!
# A354580: Number of rucksack compositions of n: every distinct partial run has a different sum.

The programs for A354580, there is no canonical definition to state claims against.
-/

/-! ## A354580.P932968321684643773

`A262689(A006190(n)+∑[(1-n)*A167022(n)])`
-/

namespace A354580.P932968321684643773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A006190 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A354580.P932968321684643773

/-! ## A354580.P17600209472615616031

`A262689(A006190(n)+A005043(n)+A025178(n+1)/2)`
-/

namespace A354580.P17600209472615616031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (SequenceMachineLib.roundAway ((A006190 n : ℚ) + ((A005043 n : ℚ) + (A025178 (n + 1) : ℚ) / 2))).toNat

end

end A354580.P17600209472615616031

/-! ## A354580.P9453723510578909772

`A084616(A018067(n))`
-/

namespace A354580.P9453723510578909772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084616 (A018067 n).toNat

end

end A354580.P9453723510578909772

/-! ## A354580.P12368190260624832319

`A034298(A224957(n))`
-/

namespace A354580.P12368190260624832319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A224957 n).toNat

end

end A354580.P12368190260624832319

/-! ## A354580.P7222980136598257030

`A102451(A374632(n))`
-/

namespace A354580.P7222980136598257030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102451 (A374632 n).toNat

end

end A354580.P7222980136598257030

/-!
# A354581: Numbers k such that the k-th composition in standard order is rucksack, meaning every distinct partial run has a different sum.

The programs for A354581, there is no canonical definition to state claims against.
-/

/-! ## A354581.P10149319860289518278

`eq[A354582(n), A354907(n)]`
-/

namespace A354581.P10149319860289518278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A354581.P10149319860289518278

/-! ## A354581.P16397609136257811767

`lt[A199970(n+2), A272066(A272020(n))]`
-/

namespace A354581.P16397609136257811767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199970 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272066 (A272020 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354581.P16397609136257811767

/-! ## A354581.P9513641199166313361

`lt[A124762(n), A374630(A357979(n+1))]`
-/

namespace A354581.P9513641199166313361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (A357979 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354581.P9513641199166313361

/-! ## A354581.P12383280772744953045

`lt[A238571(A318921(2*(n+1))), A360679(2*n+5)]`
-/

namespace A354581.P12383280772744953045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238571 (A318921 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354581.P12383280772744953045

/-! ## A354581.P9016977157912875762

`lt[A372428(n+1)², A143937(2*(n+1))]`
-/

namespace A354581.P9016977157912875762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372428 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143937 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A354581.P9016977157912875762

/-!
# A354582: Number of distinct contiguous constant subsequences (or partial runs) in the k-th composition in standard order.

The programs for A354582, there is no canonical definition to state claims against.
-/

/-! ## A354582.P2949942091532986892

`A351014(n)+A124762(A135382(n+1))`
-/

namespace A354582.P2949942091532986892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n + A124762 (A135382 (n + 1)).toNat

end

end A354582.P2949942091532986892

/-! ## A354582.P2825981213571564992

`A000120(n)-A335520(A341446(n+1))`
-/

namespace A354582.P2825981213571564992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A335520 (A341446 (n + 1)).toNat

end

end A354582.P2825981213571564992

/-! ## A354582.P13287080489625089234

`and(A000120(n), A000788(A101910(3*n+4)))`
-/

namespace A354582.P13287080489625089234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A000788 (A101910 (3 * n + 4)).toNat)

end

end A354582.P13287080489625089234

/-! ## A354582.P340591775426823228

`and(32-A131762(n), A000788(A101910(3*n+4)))`
-/

namespace A354582.P340591775426823228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (32 - A131762 n) (A000788 (A101910 (3 * n + 4)).toNat)

end

end A354582.P340591775426823228

/-! ## A354582.P3182665816635595010

`A000120(n)-A275947(A124795(n+5))`
-/

namespace A354582.P3182665816635595010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A275947 (A124795 (n + 5)).toNat

end

end A354582.P3182665816635595010

/-!
# A354583: Heinz numbers of non-rucksack partitions: not every prime-power divisor has a different sum of prime indices.

The programs for A354583, there is no canonical definition to state claims against.
-/

/-! ## A354583.P9259212694028969120

`∩[A110134(n+1), A299729(n+1)]`
-/

namespace A354583.P9259212694028969120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354583.P9259212694028969120

/-! ## A354583.P9938228465760755929

`∩[A177713(n+1), A299729(n+1)]`
-/

namespace A354583.P9938228465760755929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354583.P9938228465760755929

/-! ## A354583.P6482052451560764335

`∩[A299729(n+1), A327907(n+1)]`
-/

namespace A354583.P6482052451560764335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354583.P6482052451560764335

/-! ## A354583.P12663016741998934876

`∩[A124391(n+1), A299729(n+1)]`
-/

namespace A354583.P12663016741998934876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354583.P12663016741998934876

/-! ## A354583.P2648915793601956322

`∩[A299729(n+1), A386971(n+1)]`
-/

namespace A354583.P2648915793601956322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354583.P2648915793601956322

/-!
# A354584: Irregular triangle read by rows where row k lists the run-sums of the multiset (weakly increasing sequence) of prime indices of n.

The programs for A354584, there is no canonical definition to state claims against.
-/

/-! ## A354584.P4974703892722338141

`A056239(A141809(n+2))`
-/

namespace A354584.P4974703892722338141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A141809 (n + 2)).toNat

end

end A354584.P4974703892722338141

/-! ## A354584.P7219953953985164479

`∑{d}[A141809(n+2), A061395(#)]`
-/

namespace A354584.P7219953953985164479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A354584.P7219953953985164479

/-! ## A354584.P8120553863180812525

`∑{d}[A141809(n+2), A286469(#)]`
-/

namespace A354584.P8120553863180812525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A286469 d

end

end A354584.P8120553863180812525

/-! ## A354584.P3627644052506692140

`∑{d}[A141809(n+2), A364192(#)]`
-/

namespace A354584.P3627644052506692140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141809 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A364192 d

end

end A354584.P3627644052506692140

/-! ## A354584.P17328083411048760233

`A124010(n+2)*A304038(n+2)`
-/

namespace A354584.P17328083411048760233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (n + 2) * A304038 (n + 2)

end

end A354584.P17328083411048760233

/-!
# A354585: Least prime p such that 2^x - 2 + p produces primes for x=1..n and a composite for x=n+1.

The programs for A354585, there is no canonical definition to state claims against.
-/

/-! ## A354585.P17515144002254341677

`A193109(n+1)+2`
-/

namespace A354585.P17515144002254341677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193109 (n + 1) + 2

end

end A354585.P17515144002254341677

/-!
# A354586: Table of Sprague-Grundy values for n X m 2D Toppling Dominoes L's read by antidiagonals.

The programs for A354586, there is no canonical definition to state claims against.
-/

/-! ## A354586.P16060810736158123994

`xor(A003986(n)+1, A004198(n))`
-/

namespace A354586.P16060810736158123994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003986 n + 1) (A004198 n)

end

end A354586.P16060810736158123994

/-! ## A354586.P11002009391548485594

`A003987(A099026(n)+comp[∑[n]])`
-/

namespace A354586.P11002009391548485594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A099026 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A354586.P11002009391548485594

/-! ## A354586.P10597858310324014398

`A003987(comp[∑[n-1]]-A268040(n))`
-/

namespace A354586.P10597858310324014398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A268040 n).toNat

end

end A354586.P10597858310324014398

/-! ## A354586.P13772425544518043610

`A003987(A127739(n+1)+A004198(n))`
-/

namespace A354586.P13772425544518043610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A127739 (n + 1) + A004198 n).toNat

end

end A354586.P13772425544518043610

/-! ## A354586.P10573843022600028059

`A003987(A286098(n)+A002024(n+1))`
-/

namespace A354586.P10573843022600028059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286098 n + A002024 (n + 1)).toNat

end

end A354586.P10573843022600028059

/-! ## A354586.P10302520769698991833

`A003987(A003056(n)+A286098(n)+1)`
-/

namespace A354586.P10302520769698991833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A003056 n + (A286098 n + 1)).toNat

end

end A354586.P10302520769698991833

/-! ## A354586.P9049833841959385775

`A003987(A286099(n)+A003057(n+2))`
-/

namespace A354586.P9049833841959385775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A286099 n + A003057 (n + 2)).toNat

end

end A354586.P9049833841959385775

/-! ## A354586.P16587803762666019925

`xor(A003987(n), A038712(A003986(n)+1))`
-/

namespace A354586.P16587803762666019925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A038712 (A003986 n + 1).toNat)

end

end A354586.P16587803762666019925

/-! ## A354586.P9109484492177562133

`A003987(A002024(n+1)+A286099(n)+1)`
-/

namespace A354586.P9109484492177562133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A002024 (n + 1) + (A286099 n + 1)).toNat

end

end A354586.P9109484492177562133

/-! ## A354586.P10738680796588656961

`xor(A280172(n+1)+A004198(n), A004198(n))`
-/

namespace A354586.P10738680796588656961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280172 (n + 1) + A004198 n) (A004198 n)

end

end A354586.P10738680796588656961

/-!
# A354587: Diagonal of Sprague-Grundy values for n X m 2D Toppling Dominoes L's.

The programs for A354587, there is no canonical definition to state claims against.
-/

/-! ## A354587.P7978108748438093802

`A038712(n+1)^A104234(2*(n+2))`
-/

namespace A354587.P7978108748438093802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038712 (n + 1) : ℚ) ^ (A104234 (2 * (n + 2)) : ℤ)

end

end A354587.P7978108748438093802

/-! ## A354587.P14133559618529438855

`xor(n, n+1)^A007862(A323522(n))`
-/

namespace A354587.P14133559618529438855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) : ℚ) ^ (A007862 (A323522 n).toNat : ℤ)

end

end A354587.P14133559618529438855

/-! ## A354587.P5900932841891099164

`A038712(n+1)^A373911(A304442(n))`
-/

namespace A354587.P5900932841891099164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038712 (n + 1) : ℚ) ^ (A373911 (A304442 n).toNat : ℤ)

end

end A354587.P5900932841891099164

/-!
# A354588: Number of marked chord diagrams (linear words in which each letter appears twice) with n chords, whose intersection graph is connected and distance-hereditary.

The programs for A354588, the canonical program `A354588.P6851414108982276476` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354588 has offset 0).

The definition of A354588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A354588.P6851414108982276476

`1/(n+1)*∑{#}[n, C(n+#, n)*C(2*(n+1)+#, n-#)*2^#]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354588

/-- `1/(n+1)*∑{#}[n, C(n+#, n)*C(2*(n+1)+#, n-#)*2^#]` -/
def P6851414108982276476.Spec : Prop :=
  ∀ n, P6851414108982276476.a n = (A354588 n : ℚ)

end A354588

/-!
# A354591: Numbers k that can be written as the sum of 4 divisors of k (not necessarily distinct).

The programs for A354591, the canonical program `A354591.P12612111734364662311` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354591 has offset 1).

The definition of A354591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A354591.P12612111734364662311

`2*lt[lcm(30, n), 30*n]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354591

/-- `2*lt[lcm(30, n), 30*n]` -/
def P12612111734364662311.Spec : Prop :=
  ∀ n, (P12612111734364662311.a n : ℤ) = A354591 (n + 1)

theorem P12612111734364662311.correct : P12612111734364662311.Spec := by
  intro n
  simp only [A354591, Nat.add_sub_cancel]

end A354591

/-! ## A354591.P3745032754734920146

`2*A080671(n+1)`
-/

namespace A354591.P3745032754734920146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080671 (n + 1)

end

end A354591.P3745032754734920146

namespace A354591

/-- `2*A080671(n+1)` -/
def P3745032754734920146.Spec : Prop :=
  ∀ n, P3745032754734920146.a n = A354591 (n + 1)

theorem P3745032754734920146.correct : P3745032754734920146.Spec := by
  intro n
  simp only [A354591, Nat.add_sub_cancel, A354591.P3745032754734920146.a, A354591.P12612111734364662311.f1, A354591.P12612111734364662311.f2, A354591.P12612111734364662311.a, A080671, A080671.P899898028490012440.f1, A080671.P899898028490012440.f2, A080671.P899898028490012440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A354591

/-! ## A354591.P15938849049412525048

`2*∪[A065502(n+1), A016945(n)]`
-/

namespace A354591.P15938849049412525048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354591.P15938849049412525048

namespace A354591

/-- `2*∪[A065502(n+1), A016945(n)]` -/
def P15938849049412525048.Spec : Prop :=
  ∀ n, (P15938849049412525048.a n : ℤ) = A354591 (n + 1)

end A354591

/-! ## A354591.P11651645497551388886

`2*∪[A047228(n+1), A065502(n+1)]`
-/

namespace A354591.P11651645497551388886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354591.P11651645497551388886

namespace A354591

/-- `2*∪[A047228(n+1), A065502(n+1)]` -/
def P11651645497551388886.Spec : Prop :=
  ∀ n, (P11651645497551388886.a n : ℤ) = A354591 (n + 1)

end A354591

/-! ## A354591.P7496428106162287423

`2*∪[A047230(n+1), A065502(n+1)]`
-/

namespace A354591.P7496428106162287423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354591.P7496428106162287423

namespace A354591

/-- `2*∪[A047230(n+1), A065502(n+1)]` -/
def P7496428106162287423.Spec : Prop :=
  ∀ n, (P7496428106162287423.a n : ℤ) = A354591 (n + 1)

end A354591

/-! ## A354591.P9873175281980043719

`2*∪[A047243(n+1), A065502(n+1)]`
-/

namespace A354591.P9873175281980043719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354591.P9873175281980043719

namespace A354591

/-- `2*∪[A047243(n+1), A065502(n+1)]` -/
def P9873175281980043719.Spec : Prop :=
  ∀ n, (P9873175281980043719.a n : ℤ) = A354591 (n + 1)

end A354591

/-! ## A354591.P3575415262204607681

`2*∪[A065502(n+1), A126590(n+1)]`
-/

namespace A354591.P3575415262204607681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354591.P3575415262204607681

namespace A354591

/-- `2*∪[A065502(n+1), A126590(n+1)]` -/
def P3575415262204607681.Spec : Prop :=
  ∀ n, (P3575415262204607681.a n : ℤ) = A354591 (n + 1)

end A354591

/-! ## A354591.P12167295878700827450

`A004277(A080671(n+1))`
-/

namespace A354591.P12167295878700827450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A080671 (n + 1)).toNat

end

end A354591.P12167295878700827450

namespace A354591

/-- `A004277(A080671(n+1))` -/
def P12167295878700827450.Spec : Prop :=
  ∀ n, P12167295878700827450.a n = A354591 (n + 1)

end A354591

/-!
# A354594: a(n) = n^2 + 2*floor(n/2)^2.

The programs for A354594, the canonical program `A354594.P10636411748254944208` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354594 has offset 0).

The definition of A354594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*floor(n/2)²` (program `A354594.P10636411748254944208`, by `A354594.P10636411748254944208.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A354594.P10636411748254944208

`n²+2*floor(n/2)²`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354594

/-- `n²+2*floor(n/2)²` -/
def P10636411748254944208.Spec : Prop :=
  ∀ n, P10636411748254944208.a n = A354594 n

theorem P10636411748254944208.correct : P10636411748254944208.Spec := by
  intro n
  simp only [A354594]

end A354594

/-! ## A354594.P2899893924270316880

`ogf((x+5x^2+3x^3+3x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A354594.P2899893924270316880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 3, 3] [1, -1, -2, 2, 1, -1] n

end

end A354594.P2899893924270316880

namespace A354594

/-- `ogf((x+5x^2+3x^3+3x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P2899893924270316880.Spec : Prop :=
  ∀ n, P2899893924270316880.a n = A354594 n

end A354594

/-! ## A354594.P6837306088644511725

`(A354595(n)+n²)/2`
-/

namespace A354594.P6837306088644511725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354595 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A354594.P6837306088644511725

namespace A354594

/-- `(A354595(n)+n²)/2` -/
def P6837306088644511725.Spec : Prop :=
  ∀ n, P6837306088644511725.a n = (A354594 n : ℚ)

theorem P6837306088644511725.correct : P6837306088644511725.Spec := by
  intro n
  simp only [A354594, Nat.add_sub_cancel, A354594.P6837306088644511725.a, A354594.P10636411748254944208.a, A354595, A354595.P10643430001123028850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A354594

/-! ## A354594.P1200995156667646973

`∑[(n-1)*gcd(4, A255177(n))+1]`
-/

namespace A354594.P1200995156667646973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Int.gcd 4 (A255177 n) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A354594.P1200995156667646973

namespace A354594

/-- `∑[(n-1)*gcd(4, A255177(n))+1]` -/
def P1200995156667646973.Spec : Prop :=
  ∀ n, P1200995156667646973.a n = A354594 n

end A354594

/-! ## A354594.P10674857686749763728

`A085473(n)%A348232(n)`
-/

namespace A354594.P10674857686749763728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085473 n) (A348232 n)

end

end A354594.P10674857686749763728

namespace A354594

/-- `A085473(n)%A348232(n)` -/
def P10674857686749763728.Spec : Prop :=
  ∀ n, P10674857686749763728.a n = A354594 n

end A354594

/-! ## A354594.P17796371138354386230

`∪[A033581(n), A080859(n)]`
-/

namespace A354594.P17796371138354386230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354594.P17796371138354386230

namespace A354594

/-- `∪[A033581(n), A080859(n)]` -/
def P17796371138354386230.Spec : Prop :=
  ∀ n, (P17796371138354386230.a n : ℤ) = A354594 n

end A354594

/-! ## A354594.P5911129411582681979

`A071619(A032766(n))`
-/

namespace A354594.P5911129411582681979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A032766 n).toNat

end

end A354594.P5911129411582681979

namespace A354594

/-- `A071619(A032766(n))` -/
def P5911129411582681979.Spec : Prop :=
  ∀ n, P5911129411582681979.a n = A354594 n

end A354594

/-! ## A354594.P3726605119633828981

`A071619(A047215(n)-n)`
-/

namespace A354594.P3726605119633828981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A047215 n - (n : ℤ)).toNat

end

end A354594.P3726605119633828981

namespace A354594

/-- `A071619(A047215(n)-n)` -/
def P3726605119633828981.Spec : Prop :=
  ∀ n, P3726605119633828981.a n = A354594 n

end A354594

/-! ## A354594.P4437172338221711512

`A071619(A007494(n+1)-2)`
-/

namespace A354594.P4437172338221711512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A007494 (n + 1) - 2).toNat

end

end A354594.P4437172338221711512

namespace A354594

/-- `A071619(A007494(n+1)-2)` -/
def P4437172338221711512.Spec : Prop :=
  ∀ n, P4437172338221711512.a n = A354594 n

end A354594

/-! ## A354594.P2885925982345224594

`abs(record[∑[n*(A176895(n)-2)]]-n)`
-/

namespace A354594.P2885925982345224594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A176895 n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)|

end

end A354594.P2885925982345224594

namespace A354594

/-- `abs(record[∑[n*(A176895(n)-2)]]-n)` -/
def P2885925982345224594.Spec : Prop :=
  ∀ n, P2885925982345224594.a n = A354594 n

end A354594

/-! ## A354594.P18437971336951322664

`A396813(A042948(n))`
-/

namespace A354594.P18437971336951322664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396813 (A042948 n).toNat

end

end A354594.P18437971336951322664

namespace A354594

/-- `A396813(A042948(n))` -/
def P18437971336951322664.Spec : Prop :=
  ∀ n, P18437971336951322664.a n = A354594 n

end A354594

/-! ## A354594.P7517790202058967100

`∩[A071619(n), A396814(n)]`
-/

namespace A354594.P7517790202058967100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A354594.P7517790202058967100

namespace A354594

/-- `∩[A071619(n), A396814(n)]` -/
def P7517790202058967100.Spec : Prop :=
  ∀ n, (P7517790202058967100.a n : ℤ) = A354594 n

end A354594

/-! ## A354594.P5152025399303742731

`A071619(A002265(2*n)+n)`
-/

namespace A354594.P5152025399303742731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A002265 (2 * n) + (n : ℤ)).toNat

end

end A354594.P5152025399303742731

namespace A354594

/-- `A071619(A002265(2*n)+n)` -/
def P5152025399303742731.Spec : Prop :=
  ∀ n, P5152025399303742731.a n = A354594 n

end A354594

/-! ## A354594.P12272181700011848100

`A247375(3*n)/3`
-/

namespace A354594.P12272181700011848100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247375 (3 * n) : ℚ) / 3

end

end A354594.P12272181700011848100

namespace A354594

/-- `A247375(3*n)/3` -/
def P12272181700011848100.Spec : Prop :=
  ∀ n, P12272181700011848100.a n = (A354594 n : ℚ)

end A354594

/-! ## A354594.P14587887080958575932

`A056829(A047238(n+1))`
-/

namespace A354594.P14587887080958575932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (A047238 (n + 1)).toNat

end

end A354594.P14587887080958575932

namespace A354594

/-- `A056829(A047238(n+1))` -/
def P14587887080958575932.Spec : Prop :=
  ∀ n, P14587887080958575932.a n = A354594 n

end A354594

/-! ## A354594.P17718980489460390649

`A056829(2*A032766(n))`
-/

namespace A354594.P17718980489460390649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (2 * A032766 n).toNat

end

end A354594.P17718980489460390649

namespace A354594

/-- `A056829(2*A032766(n))` -/
def P17718980489460390649.Spec : Prop :=
  ∀ n, P17718980489460390649.a n = A354594 n

end A354594

/-! ## A354594.P96963348078500458

`A056829(A047235(n+1)-2)`
-/

namespace A354594.P96963348078500458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (A047235 (n + 1) - 2).toNat

end

end A354594.P96963348078500458

namespace A354594

/-- `A056829(A047235(n+1)-2)` -/
def P96963348078500458.Spec : Prop :=
  ∀ n, P96963348078500458.a n = A354594 n

end A354594

/-! ## A354594.P5855397841287679669

`A056829(2*A004526(3*n))`
-/

namespace A354594.P5855397841287679669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (2 * A004526 (3 * n)).toNat

end

end A354594.P5855397841287679669

namespace A354594

/-- `A056829(2*A004526(3*n))` -/
def P5855397841287679669.Spec : Prop :=
  ∀ n, P5855397841287679669.a n = A354594 n

end A354594

/-! ## A354594.P6892458459233757948

`A008810(A042948(n)+n)/2`
-/

namespace A354594.P6892458459233757948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008810 (A042948 n + (n : ℤ)).toNat : ℚ) / 2

end

end A354594.P6892458459233757948

namespace A354594

/-- `A008810(A042948(n)+n)/2` -/
def P6892458459233757948.Spec : Prop :=
  ∀ n, P6892458459233757948.a n = (A354594 n : ℚ)

end A354594

/-! ## A354594.P13907159728110589603

`A026927(A087445(n+1))`
-/

namespace A354594.P13907159728110589603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026927 (A087445 (n + 1)).toNat

end

end A354594.P13907159728110589603

namespace A354594

/-- `A026927(A087445(n+1))` -/
def P13907159728110589603.Spec : Prop :=
  ∀ n, P13907159728110589603.a n = A354594 n

end A354594

/-!
# A354595: a(n) = n^2 + 4*floor(n/2)^2.

The programs for A354595, the canonical program `A354595.P10643430001123028850` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354595 has offset 0).

The definition of A354595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+4*floor(n/2)²` (program `A354595.P10643430001123028850`, by `A354595.P10643430001123028850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A354595.P10643430001123028850

`n²+4*floor(n/2)²`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354595

/-- `n²+4*floor(n/2)²` -/
def P10643430001123028850.Spec : Prop :=
  ∀ n, P10643430001123028850.a n = A354595 n

theorem P10643430001123028850.correct : P10643430001123028850.Spec := by
  intro n
  simp only [A354595]

end A354595

/-! ## A354595.P16689857278288572933

`ogf((x+7x^2+3x^3+5x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A354595.P16689857278288572933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7, 3, 5] [1, -1, -2, 2, 1, -1] n

end

end A354595.P16689857278288572933

namespace A354595

/-- `ogf((x+7x^2+3x^3+5x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P16689857278288572933.Spec : Prop :=
  ∀ n, P16689857278288572933.a n = A354595 n

end A354595

/-! ## A354595.P1951351609802988703

`ceil(comp[or(2, n)]²/2)`
-/

namespace A354595.P1951351609802988703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℚ) / 2⌉

end

end A354595.P1951351609802988703

namespace A354595

/-- `ceil(comp[or(2, n)]²/2)` -/
def P1951351609802988703.Spec : Prop :=
  ∀ n, P1951351609802988703.a n = A354595 n

end A354595

/-! ## A354595.P13316121683892773730

`and(n, -2)²+n²`
-/

namespace A354595.P13316121683892773730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) ^ 2 + (n ^ 2 : ℤ)

end

end A354595.P13316121683892773730

namespace A354595

/-- `and(n, -2)²+n²` -/
def P13316121683892773730.Spec : Prop :=
  ∀ n, P13316121683892773730.a n = A354595 n

end A354595

/-! ## A354595.P14175792437255275944

`(and(1, n)-n)²+n²`
-/

namespace A354595.P14175792437255275944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)

end

end A354595.P14175792437255275944

namespace A354595

/-- `(and(1, n)-n)²+n²` -/
def P14175792437255275944.Spec : Prop :=
  ∀ n, P14175792437255275944.a n = A354595 n

end A354595

/-! ## A354595.P17909659785611342331

`∪[A102083(n), A139098(n)]`
-/

namespace A354595.P17909659785611342331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A354595.P17909659785611342331

namespace A354595

/-- `∪[A102083(n), A139098(n)]` -/
def P17909659785611342331.Spec : Prop :=
  ∀ n, (P17909659785611342331.a n : ℤ) = A354595 n

end A354595

/-! ## A354595.P2286089290034230006

`A335298(A004273(n))`
-/

namespace A354595.P2286089290034230006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335298 (A004273 n).toNat

end

end A354595.P2286089290034230006

namespace A354595

/-- `A335298(A004273(n))` -/
def P2286089290034230006.Spec : Prop :=
  ∀ n, P2286089290034230006.a n = A354595 n

end A354595

/-! ## A354595.P15311906992896776150

`A335298(A047624(n+1))`
-/

namespace A354595.P15311906992896776150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335298 (A047624 (n + 1)).toNat

end

end A354595.P15311906992896776150

namespace A354595

/-- `A335298(A047624(n+1))` -/
def P15311906992896776150.Spec : Prop :=
  ∀ n, P15311906992896776150.a n = A354595 n

end A354595

/-! ## A354595.P8597555820623744928

`A000982(comp[or(2, n)])`
-/

namespace A354595.P8597555820623744928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A354595.P8597555820623744928

namespace A354595

/-- `A000982(comp[or(2, n)])` -/
def P8597555820623744928.Spec : Prop :=
  ∀ n, P8597555820623744928.a n = A354595 n

end A354595

/-! ## A354595.P14734827656962710587

`A000982(2*n-n%2)`
-/

namespace A354595.P14734827656962710587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (2 * n - n % 2)

end

end A354595.P14734827656962710587

namespace A354595

/-- `A000982(2*n-n%2)` -/
def P14734827656962710587.Spec : Prop :=
  ∀ n, P14734827656962710587.a n = A354595 n

end A354595

/-! ## A354595.P11005320698997621138

`ceil(A080412(2*n)²/2)`
-/

namespace A354595.P11005320698997621138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080412 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A354595.P11005320698997621138

namespace A354595

/-- `ceil(A080412(2*n)²/2)` -/
def P11005320698997621138.Spec : Prop :=
  ∀ n, P11005320698997621138.a n = A354595 n

end A354595

/-! ## A354595.P2262147182988876539

`ceil((2*n+1-A176895(2*n))²/2)`
-/

namespace A354595.P2262147182988876539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((2 * n + 1 : ℤ) - A176895 (2 * n)) ^ 2 : ℚ) / 2⌉

end

end A354595.P2262147182988876539

namespace A354595

/-- `ceil((2*n+1-A176895(2*n))²/2)` -/
def P2262147182988876539.Spec : Prop :=
  ∀ n, P2262147182988876539.a n = A354595 n

end A354595

/-! ## A354595.P12912745145202616802

`A000982(A042948(n))`
-/

namespace A354595.P12912745145202616802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A042948 n).toNat

end

end A354595.P12912745145202616802

namespace A354595

/-- `A000982(A042948(n))` -/
def P12912745145202616802.Spec : Prop :=
  ∀ n, P12912745145202616802.a n = A354595 n

end A354595

/-! ## A354595.P4066755790545363697

`A000982(A080412(2*n))`
-/

namespace A354595.P4066755790545363697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A080412 (2 * n)).toNat

end

end A354595.P4066755790545363697

namespace A354595

/-- `A000982(A080412(2*n))` -/
def P4066755790545363697.Spec : Prop :=
  ∀ n, P4066755790545363697.a n = A354595 n

end A354595

/-! ## A354595.P6013929803835836928

`A000982(A052928(n)+n)`
-/

namespace A354595.P6013929803835836928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A052928 n + (n : ℤ)).toNat

end

end A354595.P6013929803835836928

namespace A354595

/-- `A000982(A052928(n)+n)` -/
def P6013929803835836928.Spec : Prop :=
  ∀ n, P6013929803835836928.a n = A354595 n

end A354595

/-! ## A354595.P3931167613743911244

`A030978(A052928(n)+n)`
-/

namespace A354595.P3931167613743911244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030978 (A052928 n + (n : ℤ)).toNat

end

end A354595.P3931167613743911244

namespace A354595

/-- `A030978(A052928(n)+n)` -/
def P3931167613743911244.Spec : Prop :=
  ∀ n, P3931167613743911244.a n = A354595 n

end A354595

/-! ## A354595.P12383226066264396668

`A000982(A042963(n+1)-1)`
-/

namespace A354595.P12383226066264396668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A042963 (n + 1) - 1).toNat

end

end A354595.P12383226066264396668

namespace A354595

/-- `A000982(A042963(n+1)-1)` -/
def P12383226066264396668.Spec : Prop :=
  ∀ n, P12383226066264396668.a n = A354595 n

end A354595

/-! ## A354595.P9961666957820646909

`A104563(A042964(n+1)-2)`
-/

namespace A354595.P9961666957820646909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A042964 (n + 1) - 2).toNat

end

end A354595.P9961666957820646909

namespace A354595

/-- `A104563(A042964(n+1)-2)` -/
def P9961666957820646909.Spec : Prop :=
  ∀ n, P9961666957820646909.a n = A354595 n

end A354595

/-! ## A354595.P11046127161549528935

`A104563(A098180(2*n)-1)`
-/

namespace A354595.P11046127161549528935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A098180 (2 * n) - 1).toNat

end

end A354595.P11046127161549528935

namespace A354595

/-- `A104563(A098180(2*n)-1)` -/
def P11046127161549528935.Spec : Prop :=
  ∀ n, P11046127161549528935.a n = A354595 n

end A354595

/-! ## A354595.P12482113923502074243

`A104563(A004524(2*n)+n)`
-/

namespace A354595.P12482113923502074243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A004524 (2 * n) + (n : ℤ)).toNat

end

end A354595.P12482113923502074243

namespace A354595

/-- `A104563(A004524(2*n)+n)` -/
def P12482113923502074243.Spec : Prop :=
  ∀ n, P12482113923502074243.a n = A354595 n

end A354595

/-!
# A354596: Array T(n,k) = k^2 + (2n-4)*floor(k/2)^2, n >= 0, k >= 0, read by descending antidiagonals.

The programs for A354596, the canonical program `A354596.P2780467971800101539` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A354596 has offset 0).

The definition of A354596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))²+(2*col(n)-4)*floor((row(n)-col(n))/2)²` (program `A354596.P2780467971800101539`, by `A354596.P2780467971800101539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A354596.P2780467971800101539

`(row(n)-col(n))²+(2*col(n)-4)*floor((row(n)-col(n))/2)²`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A354596

/-- `(row(n)-col(n))²+(2*col(n)-4)*floor((row(n)-col(n))/2)²` -/
def P2780467971800101539.Spec : Prop :=
  ∀ n, P2780467971800101539.a n = A354596 n

theorem P2780467971800101539.correct : P2780467971800101539.Spec := by
  intro n
  simp only [A354596]

end A354596

/-! ## A354596.P11683551716851158056

`A048793(A048854(n+1)%A048854(n))`
-/

namespace A354596.P11683551716851158056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (Int.tmod (A048854 (n + 1)) (A048854 n)).toNat

end

end A354596.P11683551716851158056

namespace A354596

/-- `A048793(A048854(n+1)%A048854(n))` -/
def P11683551716851158056.Spec : Prop :=
  ∀ n, P11683551716851158056.a n = A354596 n

end A354596

/-! ## A354596.P1607247348233907790

`and(A054238(n), A334265(A250120(n)))`
-/

namespace A354596.P1607247348233907790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A334265 (A250120 n).toNat)

end

end A354596.P1607247348233907790

namespace A354596

/-- `and(A054238(n), A334265(A250120(n)))` -/
def P1607247348233907790.Spec : Prop :=
  ∀ n, P1607247348233907790.a n = A354596 n

end A354596

/-! ## A354596.P10975623776681280920

`and(A054238(n), A090649(A054238(n+1)))`
-/

namespace A354596.P10975623776681280920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054238 n) (A090649 (A054238 (n + 1)).toNat)

end

end A354596.P10975623776681280920

namespace A354596

/-- `and(A054238(n), A090649(A054238(n+1)))` -/
def P10975623776681280920.Spec : Prop :=
  ∀ n, P10975623776681280920.a n = A354596 n

end A354596

/-! ## A354596.P11774714993781343958

`and(A002972(A082582(n)), A054238(n))`
-/

namespace A354596.P11774714993781343958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002972 (A082582 n).toNat) (A054238 n)

end

end A354596.P11774714993781343958

namespace A354596

/-- `and(A002972(A082582(n)), A054238(n))` -/
def P11774714993781343958.Spec : Prop :=
  ∀ n, P11774714993781343958.a n = A354596 n

end A354596

/-!
# A354597: a(n) is the smallest number k>0 such that -n is not a quadratic residue modulo k.

The programs for A354597, there is no canonical definition to state claims against.
-/

/-! ## A354597.P17422430698193606416

`A139401(A173089(n+1))`
-/

namespace A354597.P17422430698193606416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A173089 (n + 1)).toNat

end

end A354597.P17422430698193606416

/-! ## A354597.P14460364946447487072

`A007978(∑[∑[12*n+10]])`
-/

namespace A354597.P14460364946447487072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A354597.P14460364946447487072

/-! ## A354597.P17884077089181383270

`A055874((n+2)*A014106(n+1))+1`
-/

namespace A354597.P17884077089181383270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 ((n + 2 : ℤ) * A014106 (n + 1)).toNat + 1

end

end A354597.P17884077089181383270

/-! ## A354597.P10532789842165352102

`A196437(A031712(n+1))`
-/

namespace A354597.P10532789842165352102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196437 (A031712 (n + 1)).toNat

end

end A354597.P10532789842165352102

/-!
# A354598: Maximal GCD of eight positive integers with sum n.

The programs for A354598, there is no canonical definition to state claims against.
-/

/-! ## A354598.P5919944701858868382

`A038769(A066575(n+2))`
-/

namespace A354598.P5919944701858868382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A066575 (n + 2)).toNat

end

end A354598.P5919944701858868382

/-! ## A354598.P5106473531809183302

`gcd(n+2, A000688(A139550(n)))`
-/

namespace A354598.P5106473531809183302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000688 (A139550 n).toNat)

end

end A354598.P5106473531809183302

/-! ## A354598.P2353457629814549737

`A256911(A134192(n+2)²+2)`
-/

namespace A354598.P2353457629814549737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (A134192 (n + 2) ^ 2 + 2).toNat

end

end A354598.P2353457629814549737

/-! ## A354598.P9156061322297502553

`gcd(A137753(3*(n+1)), A243346(A271608(n)))`
-/

namespace A354598.P9156061322297502553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137753 (3 * (n + 1))) (A243346 (A271608 n).toNat)

end

end A354598.P9156061322297502553

/-! ## A354598.P6622893093132313637

`A282934(A286225(n))`
-/

namespace A354598.P6622893093132313637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282934 (A286225 n).toNat

end

end A354598.P6622893093132313637

/-!
# A354599: Maximal GCD of nine positive integers with sum n.

The programs for A354599, there is no canonical definition to state claims against.
-/

/-! ## A354599.P4770145627741588830

`A354601(A009994(n+3)%A230118(2*(n+2)))`
-/

namespace A354599.P4770145627741588830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354601 ((Int.tmod (A009994 (n + 3)) (A230118 (2 * (n + 2)))).toNat + 10)

end

end A354599.P4770145627741588830

/-! ## A354599.P2037342099594885998

`A346874(gcd(A130539(n), A301361(n+1)))`
-/

namespace A354599.P2037342099594885998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346874 (Int.gcd (A130539 n) (A301361 (n + 1)))

end

end A354599.P2037342099594885998

/-! ## A354599.P13724359746922163473

`A007318(A077767(2*n+3)^A074465(3*n+1))`
-/

namespace A354599.P13724359746922163473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A077767 (2 * n + 3) : ℚ) ^ (A074465 (3 * n + 1) : ℤ))).toNat

end

end A354599.P13724359746922163473

/-! ## A354599.P2919279337658019887

`gcd(A005361(A225910(2*(n+2))), A113925(2*(n+1)))`
-/

namespace A354599.P2919279337658019887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005361 (A225910 (2 * (n + 2))).toNat) (A113925 (2 * (n + 1)))

end

end A354599.P2919279337658019887

/-! ## A354599.P235497561977675315

`gcd(A000217(2*(n+1)), A318848(A266547(2*n+5)))`
-/

namespace A354599.P235497561977675315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (2 * (n + 1))) (A318848 (A266547 (2 * n + 5)).toNat)

end

end A354599.P235497561977675315

