import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A395700: k is term if and only if k = gcd(k^2, k!) / gcd(k^2, k!/floor(k/2)!^2).

The programs for A395700, the canonical program `A395700.P10863328374740441814` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395700 has offset 1).

The definition of A395700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395700.P10863328374740441814

`eq[n, A181859(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395700

/-- `eq[n, A181859(n)]` -/
def P10863328374740441814.Spec : Prop :=
  ∀ n, (P10863328374740441814.a n : ℤ) = A395700 (n + 1)

theorem P10863328374740441814.correct : P10863328374740441814.Spec := by
  intro n
  simp only [A395700, Nat.add_sub_cancel]

end A395700

/-!
# A395701: Triangle read by rows: T(n, k) = binomial(n, k) * k^k.

The programs for A395701, the canonical program `A395701.P16713284021052508335` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395701 has offset 0).

The definition of A395701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*col(n)^col(n)` (program `A395701.P16713284021052508335`, by `A395701.P16713284021052508335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A395701.P16713284021052508335

`C(row(n), col(n))*col(n)^col(n)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395701

/-- `C(row(n), col(n))*col(n)^col(n)` -/
def P16713284021052508335.Spec : Prop :=
  ∀ n, (P16713284021052508335.a n : ℤ) = A395701 n

theorem P16713284021052508335.correct : P16713284021052508335.Spec := by
  intro n
  simp only [A395701]

end A395701

/-! ## A395701.P1294117894621147007

`col(n)^col(n)*C(row(n), col(n))`
-/

namespace A395701.P1294117894621147007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ SequenceMachineLib.triCol n * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A395701.P1294117894621147007

namespace A395701

/-- `col(n)^col(n)*C(row(n), col(n))` -/
def P1294117894621147007.Spec : Prop :=
  ∀ n, (P1294117894621147007.a n : ℤ) = A395701 n

theorem P1294117894621147007.correct : P1294117894621147007.Spec := by
  intro n
  simp only [A395701, Nat.add_sub_cancel, A395701.P1294117894621147007.a, A395701.P16713284021052508335.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A395701

/-! ## A395701.P14428581586742217020

`A000312(col(n))*A007318(n)`
-/

namespace A395701.P14428581586742217020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (SequenceMachineLib.triCol n) * A007318 n

end

end A395701.P14428581586742217020

namespace A395701

/-- `A000312(col(n))*A007318(n)` -/
def P14428581586742217020.Spec : Prop :=
  ∀ n, P14428581586742217020.a n = A395701 n

theorem P14428581586742217020.correct : P14428581586742217020.Spec := by
  intro n
  simp only [A395701, Nat.add_sub_cancel, A395701.P14428581586742217020.a, A395701.P16713284021052508335.a, A000312, A000312.P3932771318196185165.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A395701

/-! ## A395701.P15020081891721421638

`A000312(A002262(n))*A007318(n)`
-/

namespace A395701.P15020081891721421638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002262 n).toNat * A007318 n

end

end A395701.P15020081891721421638

namespace A395701

/-- `A000312(A002262(n))*A007318(n)` -/
def P15020081891721421638.Spec : Prop :=
  ∀ n, P15020081891721421638.a n = A395701 n

end A395701

/-! ## A395701.P6560387955132983739

`A356955(A059836(n+1))`
-/

namespace A395701.P6560387955132983739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356955 (A059836 (n + 1)).toNat

end

end A395701.P6560387955132983739

namespace A395701

/-- `A356955(A059836(n+1))` -/
def P6560387955132983739.Spec : Prop :=
  ∀ n, P6560387955132983739.a n = A395701 n

end A395701

/-!
# A395702: Number of transitive relations on an n-set that are neither reflexive nor symmetric.

The programs for A395702, there is no canonical definition to state claims against.
-/

/-! ## A395702.P8415663374132904249

`A006905(n)-A000798(n)-A000110(n+1)+A000110(n)`
-/

namespace A395702.P8415663374132904249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A000798 n - A000110 (n + 1) + A000110 n

end

end A395702.P8415663374132904249

/-!
# A395704: Expansion of g^4*(2*g-1)/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A395704, the canonical program `A395704.P16133964373773942356` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395704 has offset 0).

The definition of A395704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395704.P16133964373773942356

`(n+1)*A036829(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395704

/-- `(n+1)*A036829(n+1)` -/
def P16133964373773942356.Spec : Prop :=
  ∀ n, P16133964373773942356.a n = A395704 n

theorem P16133964373773942356.correct : P16133964373773942356.Spec := by
  intro n
  simp only [A395704]

end A395704

/-! ## A395704.P3050928987607030927

`(n+1)*∑{#}[n, 2^(n-#)*C(3*n+2, #)]`
-/

namespace A395704.P3050928987607030927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 2) k : ℚ))

end

end A395704.P3050928987607030927

namespace A395704

/-- `(n+1)*∑{#}[n, 2^(n-#)*C(3*n+2, #)]` -/
def P3050928987607030927.Spec : Prop :=
  ∀ n, P3050928987607030927.a n = (A395704 n : ℚ)

end A395704

/-!
# A395705: Expansion of g^5*(3*g-2)/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395705, the canonical program `A395705.P15236237571732691539` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395705 has offset 0).

The definition of A395705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395705.P15236237571732691539

`(n+1)*A308523(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395705

/-- `(n+1)*A308523(n+1)` -/
def P15236237571732691539.Spec : Prop :=
  ∀ n, P15236237571732691539.a n = A395705 n

theorem P15236237571732691539.correct : P15236237571732691539.Spec := by
  intro n
  simp only [A395705]

end A395705

/-! ## A395705.P4897380951265485723

`(n+1)*∑{#}[n, 3^(n-#)*C(4*n+3, #)]`
-/

namespace A395705.P4897380951265485723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 3) k : ℚ))

end

end A395705.P4897380951265485723

namespace A395705

/-- `(n+1)*∑{#}[n, 3^(n-#)*C(4*n+3, #)]` -/
def P4897380951265485723.Spec : Prop :=
  ∀ n, P4897380951265485723.a n = (A395705 n : ℚ)

end A395705

/-!
# A395706: Expansion of g^6*(4*g-3)/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395706, the canonical program `A395706.P726234389815810436` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395706 has offset 0).

The definition of A395706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395706.P726234389815810436

`(n+1)*A386367(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395706

/-- `(n+1)*A386367(n+1)` -/
def P726234389815810436.Spec : Prop :=
  ∀ n, P726234389815810436.a n = A395706 n

theorem P726234389815810436.correct : P726234389815810436.Spec := by
  intro n
  simp only [A395706]

end A395706

/-! ## A395706.P6416685196437489872

`(n+1)*∑{#}[n, 4^(n-#)*C(5*n+4, #)]`
-/

namespace A395706.P6416685196437489872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (5 * n + 4) k : ℚ))

end

end A395706.P6416685196437489872

namespace A395706

/-- `(n+1)*∑{#}[n, 4^(n-#)*C(5*n+4, #)]` -/
def P6416685196437489872.Spec : Prop :=
  ∀ n, P6416685196437489872.a n = (A395706 n : ℚ)

end A395706

/-!
# A395707: Expansion of g^7*(5*g-4)/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

The programs for A395707, the canonical program `A395707.P1084172933383618630` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395707 has offset 0).

The definition of A395707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395707.P1084172933383618630

`(n+1)*A386368(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395707

/-- `(n+1)*A386368(n+1)` -/
def P1084172933383618630.Spec : Prop :=
  ∀ n, P1084172933383618630.a n = A395707 n

theorem P1084172933383618630.correct : P1084172933383618630.Spec := by
  intro n
  simp only [A395707]

end A395707

/-! ## A395707.P1959292060575918654

`(n+1)*∑{#}[n, 5^(n-#)*C(6*n+5, #)]`
-/

namespace A395707.P1959292060575918654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (5 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (6 * n + 5) k : ℚ))

end

end A395707.P1959292060575918654

namespace A395707

/-- `(n+1)*∑{#}[n, 5^(n-#)*C(6*n+5, #)]` -/
def P1959292060575918654.Spec : Prop :=
  ∀ n, P1959292060575918654.a n = (A395707 n : ℚ)

end A395707

/-!
# A395708: Expansion of g^4*(4*g-3)/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A395708, the canonical program `A395708.P4395769601045900910` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395708 has offset 0).

The definition of A395708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395708.P4395769601045900910

`(n+1)*A062236(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395708

/-- `(n+1)*A062236(n+1)` -/
def P4395769601045900910.Spec : Prop :=
  ∀ n, P4395769601045900910.a n = A395708 n

theorem P4395769601045900910.correct : P4395769601045900910.Spec := by
  intro n
  simp only [A395708]

end A395708

/-! ## A395708.P3855247348724182167

`(n+1)*∑{#}[n, 2^(n-#)*C(3*n+3, #)]`
-/

namespace A395708.P3855247348724182167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (3 * n + 3) k : ℚ))

end

end A395708.P3855247348724182167

namespace A395708

/-- `(n+1)*∑{#}[n, 2^(n-#)*C(3*n+3, #)]` -/
def P3855247348724182167.Spec : Prop :=
  ∀ n, P3855247348724182167.a n = (A395708 n : ℚ)

end A395708

/-! ## A395708.P6497731600689429062

`(n+1)*(A386617(n)+A036829(n+1))`
-/

namespace A395708.P6497731600689429062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A386617 n + A036829 (n + 1))

end

end A395708.P6497731600689429062

namespace A395708

/-- `(n+1)*(A386617(n)+A036829(n+1))` -/
def P6497731600689429062.Spec : Prop :=
  ∀ n, P6497731600689429062.a n = A395708 n

end A395708

/-!
# A395709: Expansion of g^5*(5*g-4)/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A395709, the canonical program `A395709.P9088190485973165721` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395709 has offset 0).

The definition of A395709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395709.P9088190485973165721

`(n+1)*A386565(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395709

/-- `(n+1)*A386565(n+1)` -/
def P9088190485973165721.Spec : Prop :=
  ∀ n, P9088190485973165721.a n = A395709 n

theorem P9088190485973165721.correct : P9088190485973165721.Spec := by
  intro n
  simp only [A395709]

end A395709

/-! ## A395709.P13516593267332814926

`(n+1)*∑{#}[n, 3^(n-#)*C(4*n+4, #)]`
-/

namespace A395709.P13516593267332814926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (4 * n + 4) k : ℚ))

end

end A395709.P13516593267332814926

namespace A395709

/-- `(n+1)*∑{#}[n, 3^(n-#)*C(4*n+4, #)]` -/
def P13516593267332814926.Spec : Prop :=
  ∀ n, P13516593267332814926.a n = (A395709 n : ℚ)

end A395709

/-!
# A395710: Expansion of g^6*(6*g-5)/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

The programs for A395710, the canonical program `A395710.P3437402016473658810` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395710 has offset 0).

The definition of A395710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395710.P3437402016473658810

`(n+1)*A386566(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395710

/-- `(n+1)*A386566(n+1)` -/
def P3437402016473658810.Spec : Prop :=
  ∀ n, P3437402016473658810.a n = A395710 n

theorem P3437402016473658810.correct : P3437402016473658810.Spec := by
  intro n
  simp only [A395710]

end A395710

/-! ## A395710.P6089961029700232698

`(n+1)*∑{#}[n, 4^(n-#)*C(5*n+5, #)]`
-/

namespace A395710.P6089961029700232698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (5 * n + 5) k : ℚ))

end

end A395710.P6089961029700232698

namespace A395710

/-- `(n+1)*∑{#}[n, 4^(n-#)*C(5*n+5, #)]` -/
def P6089961029700232698.Spec : Prop :=
  ∀ n, P6089961029700232698.a n = (A395710 n : ℚ)

end A395710

/-!
# A395711: Expansion of g^7*(7*g-6)/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

The programs for A395711, the canonical program `A395711.P18341920642502358831` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395711 has offset 0).

The definition of A395711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395711.P18341920642502358831

`(n+1)*A386567(n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395711

/-- `(n+1)*A386567(n+1)` -/
def P18341920642502358831.Spec : Prop :=
  ∀ n, P18341920642502358831.a n = A395711 n

theorem P18341920642502358831.correct : P18341920642502358831.Spec := by
  intro n
  simp only [A395711]

end A395711

/-! ## A395711.P1202466580837752732

`(n+1)*∑{#}[n, 5^(n-#)*C(6*n+6, #)]`
-/

namespace A395711.P1202466580837752732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (5 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (6 * n + 6) k : ℚ))

end

end A395711.P1202466580837752732

namespace A395711

/-- `(n+1)*∑{#}[n, 5^(n-#)*C(6*n+6, #)]` -/
def P1202466580837752732.Spec : Prop :=
  ∀ n, P1202466580837752732.a n = (A395711 n : ℚ)

end A395711

/-!
# A395712: Number of valid manual turn-on sequences for n computers in a line, where a computer turns on automatically if its two neighbors are already on.

The programs for A395712, there is no canonical definition to state claims against.
-/

/-! ## A395712.P11331539015064104682

`A238617(A000098(n))`
-/

namespace A395712.P11331539015064104682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238617 (A000098 n).toNat

end

end A395712.P11331539015064104682

/-! ## A395712.P12535293638798291041

`A059995(A000351(n))+A000079(n)`
-/

namespace A395712.P12535293638798291041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A000351 n).toNat + A000079 n

end

end A395712.P12535293638798291041

/-!
# A395715: Number of relations on an n-set that are reflexive and transitive, but not symmetric.

The programs for A395715, there is no canonical definition to state claims against.
-/

/-! ## A395715.P4884740577988994625

`A000798(n)-A000110(n)`
-/

namespace A395715.P4884740577988994625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A000110 n

end

end A395715.P4884740577988994625

/-! ## A395715.P12178279239264396188

`A000798(n)-A011971(A000217(n))`
-/

namespace A395715.P12178279239264396188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A011971 (A000217 n).toNat

end

end A395715.P12178279239264396188

/-! ## A395715.P2052292292162134039

`A000798(n)-A318361(A000079(n))`
-/

namespace A395715.P2052292292162134039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A318361 (A000079 n).toNat

end

end A395715.P2052292292162134039

/-!
# A395718: Numbers admitted by the golden exclusion sieve.

The programs for A395718, there is no canonical definition to state claims against.
-/

/-! ## A395718.P18422940661261236161

`comp[A023852(A327512(3*n+5)*n)]`
-/

namespace A395718.P18422940661261236161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023852 (A327512 (3 * n + 5) * (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395718.P18422940661261236161

/-!
# A395720: Kangaroo numbers are numbers that are multiples of their inner number; that is, the number obtained by removing its first and last digits.

The programs for A395720, there is no canonical definition to state claims against.
-/

/-! ## A395720.P5164806769273730048

`A324100(A289867(n+2))`
-/

namespace A395720.P5164806769273730048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (A289867 (n + 2)).toNat

end

end A395720.P5164806769273730048

/-! ## A395720.P15967530937199149422

`A204581(n)+A040091(A001333(n))`
-/

namespace A395720.P15967530937199149422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204581 n + A040091 (A001333 n).toNat

end

end A395720.P15967530937199149422

/-!
# A395724: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/2)} (-1)^k * binomial(n,2*k+1)^2 * a(n-2*k-1).

The programs for A395724, there is no canonical definition to state claims against.
-/

/-! ## A395724.P11004201655424373940

`A352725(n!²)`
-/

namespace A395724.P11004201655424373940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352725 (Nat.factorial n ^ 2)

end

end A395724.P11004201655424373940

/-!
# A395726: Array read by ascending antidiagonals: A(n, k) = A(n, k-A002024(k)) + A002024(k) * A(n-1, k) with A(n, 0) = 0^n, A(0, k) = 1.

The programs for A395726, there is no canonical definition to state claims against.
-/

/-! ## A395726.P3132404095882718433

`A341883(A091480(n+1))`
-/

namespace A395726.P3132404095882718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341883 (A091480 (n + 1)).toNat

end

end A395726.P3132404095882718433

/-! ## A395726.P8229550895697688152

`A048723(n)+A000122(A122332(3*(n+1)))`
-/

namespace A395726.P8229550895697688152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048723 n + A000122 (A122332 (3 * (n + 1))).toNat

end

end A395726.P8229550895697688152

/-!
# A395735: Expansion of (Sum_{k>=0} binomial(5*k,k) * x^k)^4.

The programs for A395735, the canonical program `A395735.P5281444884193598993` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395735 has offset 0).

The definition of A395735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395735.P5281444884193598993

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+3, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395735

/-- `∑{#}[n, 4^#*C(#+2, 2)*C(5*n+3, n-#)]` -/
def P5281444884193598993.Spec : Prop :=
  ∀ n, (P5281444884193598993.a n : ℤ) = A395735 n

theorem P5281444884193598993.correct : P5281444884193598993.Spec := by
  intro n
  simp only [A395735]

end A395735

/-!
# A395736: Expansion of (Sum_{k>=0} binomial(5*k,k) * x^k)^5.

The programs for A395736, the canonical program `A395736.P794965471441195686` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395736 has offset 0).

The definition of A395736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395736.P794965471441195686

`∑{#}[n, 4^#*C(#+3, 3)*C(5*n+4, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395736

/-- `∑{#}[n, 4^#*C(#+3, 3)*C(5*n+4, n-#)]` -/
def P794965471441195686.Spec : Prop :=
  ∀ n, (P794965471441195686.a n : ℤ) = A395736 n

theorem P794965471441195686.correct : P794965471441195686.Spec := by
  intro n
  simp only [A395736]

end A395736

/-!
# A395741: a(n) is the smallest positive integer m such that m mod k < k/2 for each 1 <= k <= n.

The programs for A395741, there is no canonical definition to state claims against.
-/

/-! ## A395741.P7600945423926439275

`A014682(A362532(n+1))`
-/

namespace A395741.P7600945423926439275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A362532 (n + 1)).toNat

end

end A395741.P7600945423926439275

/-! ## A395741.P8038692534416472313

`A001281(A362532(n+1))`
-/

namespace A395741.P8038692534416472313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A362532 (n + 1)).toNat

end

end A395741.P8038692534416472313

/-! ## A395741.P8087485316456806961

`A322554(A130618(n+2))`
-/

namespace A395741.P8087485316456806961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (A130618 (n + 2)).toNat

end

end A395741.P8087485316456806961

/-! ## A395741.P14468132463409299001

`∏[A066099(A077834(n)+A075405(2*(n+1)))]`
-/

namespace A395741.P14468132463409299001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A077834 n + A075405 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A395741.P14468132463409299001

/-!
# A395742: Superior highly composite numbers (A002201) where a new prime factor is introduced for the first time.

The programs for A395742, there is no canonical definition to state claims against.
-/

/-! ## A395742.P12980556073712537159

`A062856(A296264(n))`
-/

namespace A395742.P12980556073712537159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062856 (A296264 n).toNat

end

end A395742.P12980556073712537159

/-! ## A395742.P9383669410167696662

`A057144(2*A053304(2*n))`
-/

namespace A395742.P9383669410167696662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057144 (2 * A053304 (2 * n)).toNat

end

end A395742.P9383669410167696662

/-!
# A395743: Sum of the cumulative number of previous occurrences of the digits of n in the sequence 1..n excluding the current occurrence of each digit.

The programs for A395743, there is no canonical definition to state claims against.
-/

/-! ## A395743.P4145310378716443346

`A343644(n+1)-A055642(n+1)`
-/

namespace A395743.P4145310378716443346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343644 (n + 1) - A055642 (n + 1)

end

end A395743.P4145310378716443346

/-!
# A395744: Number of occurrences of the n-th smallest value in A000793.

The programs for A395744, there is no canonical definition to state claims against.
-/

/-! ## A395744.P10032087189337745512

`Δ[A006644(n+1)]`
-/

namespace A395744.P10032087189337745512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395744.P10032087189337745512

/-! ## A395744.P16445108114758090162

`A006644(n+2)-A006644(n+1)`
-/

namespace A395744.P16445108114758090162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006644 (n + 2) - A006644 (n + 1)

end

end A395744.P16445108114758090162

/-! ## A395744.P14180403603726913631

`runs[A000793(n)]`
-/

namespace A395744.P14180403603726913631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A395744.P14180403603726913631

/-! ## A395744.P7780044502504179649

`A375001(A121369(n+2))`
-/

namespace A395744.P7780044502504179649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375001 (A121369 (n + 2)).toNat

end

end A395744.P7780044502504179649

/-!
# A395754: Number of k < m^2 such that both rad(k) and rad(k+1) divide m, where rad = A007947 and m = A005117(n).

The programs for A395754, there is no canonical definition to state claims against.
-/

/-! ## A395754.P7892049180958111896

`A395896(A048672(n+1))`
-/

namespace A395754.P7892049180958111896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395896 (A048672 (n + 1)).toNat

end

end A395754.P7892049180958111896

/-! ## A395754.P4447134127380331307

`A003849(n)*A319468(A389804(n+1))`
-/

namespace A395754.P4447134127380331307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n * A319468 (A389804 (n + 1)).toNat

end

end A395754.P4447134127380331307

/-!
# A395760: Number of labeled squarefree bipartite graphs on n vertices.

The programs for A395760, there is no canonical definition to state claims against.
-/

/-! ## A395760.P7941065383670300771

`A001858(∑[C(n, 4)!])`
-/

namespace A395760.P7941065383670300771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001858 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A395760.P7941065383670300771

/-!
# A395762: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..n} Stirling2(n, j)*5^j*(k)_j.

The programs for A395762, there is no canonical definition to state claims against.
-/

/-! ## A395762.P4899491953490388370

`A007305(A122542(n)^5)`
-/

namespace A395762.P4899491953490388370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A122542 n ^ 5).toNat

end

end A395762.P4899491953490388370

/-! ## A395762.P18178931679053393456

`A101412(A022184(n))*A332670(n)`
-/

namespace A395762.P18178931679053393456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101412 (A022184 n).toNat * A332670 n

end

end A395762.P18178931679053393456

/-!
# A395764: First column of the triangular array with T(0, m) = m! and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

The programs for A395764, the canonical program `A395764.P2673545311112463722` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395764 has offset 0).

The definition of A395764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395764.P2673545311112463722

`∑{#}[2*n, (-1)^#*C(2*n, #)*(3*n-#)!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395764

/-- `∑{#}[2*n, (-1)^#*C(2*n, #)*(3*n-#)!]` -/
def P2673545311112463722.Spec : Prop :=
  ∀ n, P2673545311112463722.a n = A395764 n

theorem P2673545311112463722.correct : P2673545311112463722.Spec := by
  intro n
  simp only [A395764]

end A395764

/-! ## A395764.P4462682270954876329

`A047920(A062728(n))`
-/

namespace A395764.P4462682270954876329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A062728 n).toNat

end

end A395764.P4462682270954876329

namespace A395764

/-- `A047920(A062728(n))` -/
def P4462682270954876329.Spec : Prop :=
  ∀ n, P4462682270954876329.a n = A395764 n

end A395764

/-! ## A395764.P4443953394327824413

`A068106(A062725(n))`
-/

namespace A395764.P4443953394327824413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A062725 n).toNat

end

end A395764.P4443953394327824413

namespace A395764

/-- `A068106(A062725(n))` -/
def P4443953394327824413.Spec : Prop :=
  ∀ n, P4443953394327824413.a n = A395764 n

end A395764

/-! ## A395764.P9333151575412346219

`A116854(A064225(n))`
-/

namespace A395764.P9333151575412346219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A064225 n).toNat

end

end A395764.P9333151575412346219

namespace A395764

/-- `A116854(A064225(n))` -/
def P9333151575412346219.Spec : Prop :=
  ∀ n, P9333151575412346219.a n = A395764 n

end A395764

/-! ## A395764.P10228312198365467074

`A398999(A139277(n))`
-/

namespace A395764.P10228312198365467074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398999 (A139277 n).toNat

end

end A395764.P10228312198365467074

namespace A395764

/-- `A398999(A139277(n))` -/
def P10228312198365467074.Spec : Prop :=
  ∀ n, P10228312198365467074.a n = A395764 n

end A395764

/-!
# A395765: First column of the triangular array with T(0, m) = m! and T(n, m) = T(n - 1, m + 3) - T(n - 1, m + 2).

The programs for A395765, the canonical program `A395765.P4578919165227301791` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395765 has offset 0).

The definition of A395765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395765.P4578919165227301791

`∑{#}[n, (-1)^#*C(n, #)*(3*n-#)!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395765

/-- `∑{#}[n, (-1)^#*C(n, #)*(3*n-#)!]` -/
def P4578919165227301791.Spec : Prop :=
  ∀ n, P4578919165227301791.a n = A395765 n

theorem P4578919165227301791.correct : P4578919165227301791.Spec := by
  intro n
  simp only [A395765]

end A395765

/-! ## A395765.P11522508879416848335

`A047920(A062725(n))`
-/

namespace A395765.P11522508879416848335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A062725 n).toNat

end

end A395765.P11522508879416848335

namespace A395765

/-- `A047920(A062725(n))` -/
def P11522508879416848335.Spec : Prop :=
  ∀ n, P11522508879416848335.a n = A395765 n

end A395765

/-! ## A395765.P8100028748031592335

`A068106(A062728(n))`
-/

namespace A395765.P8100028748031592335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A062728 n).toNat

end

end A395765.P8100028748031592335

namespace A395765

/-- `A068106(A062728(n))` -/
def P8100028748031592335.Spec : Prop :=
  ∀ n, P8100028748031592335.a n = A395765 n

end A395765

/-! ## A395765.P13677485109688904246

`A116854(A081267(n))`
-/

namespace A395765.P13677485109688904246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A081267 n).toNat

end

end A395765.P13677485109688904246

namespace A395765

/-- `A116854(A081267(n))` -/
def P13677485109688904246.Spec : Prop :=
  ∀ n, P13677485109688904246.a n = A395765 n

end A395765

/-! ## A395765.P4657184436803611979

`A068106(A024966(n)+n²)`
-/

namespace A395765.P4657184436803611979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A024966 n + (n ^ 2 : ℤ)).toNat

end

end A395765.P4657184436803611979

namespace A395765

/-- `A068106(A024966(n)+n²)` -/
def P4657184436803611979.Spec : Prop :=
  ∀ n, P4657184436803611979.a n = A395765 n

end A395765

/-!
# A395766: Indices k such that the cumulative bitwise XOR of the first k primes is prime.

The programs for A395766, the canonical program `A395766.P2737168039498040355` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395766 has offset 1).

The definition of A395766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395766.P2737168039498040355

`eq[1, A003415(A126084(n))]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A395766

/-- `eq[1, A003415(A126084(n))]` -/
def P2737168039498040355.Spec : Prop :=
  ∀ n, (P2737168039498040355.a n : ℤ) = A395766 (n + 1)

theorem P2737168039498040355.correct : P2737168039498040355.Spec := by
  intro n
  simp only [A395766, Nat.add_sub_cancel]

end A395766

/-!
# A395767: Minimal value of p(1) + Sum_{i=2...n} p(i-1)*p(i), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

The programs for A395767, the canonical program `A395767.P11376683604113877630` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395767 has offset 1).

The definition of A395767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395767.P11376683604113877630

`ogf((1+x-2x^2+2x^3)/(1-2x-4x^2+8x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395767

/-- `ogf((1+x-2x^2+2x^3)/(1-2x-4x^2+8x^3))` -/
def P11376683604113877630.Spec : Prop :=
  ∀ n, P11376683604113877630.a n = A395767 (n + 1)

theorem P11376683604113877630.correct : P11376683604113877630.Spec := by
  intro n
  simp only [A395767, Nat.add_sub_cancel]

end A395767

/-! ## A395767.P9782148771678009806

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=22`
-/

namespace A395767.P9782148771678009806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 22] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 8 * a (n - 3)

end

end A395767.P9782148771678009806

namespace A395767

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P9782148771678009806.Spec : Prop :=
  ∀ n, P9782148771678009806.a n = A395767 (n + 1)

end A395767

/-! ## A395767.P6540470511524819013

`A394572(n)+2^n`
-/

namespace A395767.P6540470511524819013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394572 n + (2 ^ n : ℤ)

end

end A395767.P6540470511524819013

namespace A395767

/-- `A394572(n)+2^n` -/
def P6540470511524819013.Spec : Prop :=
  ∀ n, P6540470511524819013.a n = A395767 (n + 1)

end A395767

/-! ## A395767.P16989537861245372279

`A395770(n+1)+A011782(n)`
-/

namespace A395767.P16989537861245372279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395770 (n + 1) + A011782 n

end

end A395767.P16989537861245372279

namespace A395767

/-- `A395770(n+1)+A011782(n)` -/
def P16989537861245372279.Spec : Prop :=
  ∀ n, P16989537861245372279.a n = A395767 (n + 1)

end A395767

/-! ## A395767.P11213690137614388919

`A395770(n+2)+A394572(n)-A394572(n+1)`
-/

namespace A395767.P11213690137614388919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395770 (n + 2) + (A394572 n - A394572 (n + 1))

end

end A395767.P11213690137614388919

namespace A395767

/-- `A395770(n+2)+A394572(n)-A394572(n+1)` -/
def P11213690137614388919.Spec : Prop :=
  ∀ n, P11213690137614388919.a n = A395767 (n + 1)

end A395767

/-!
# A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

The programs for A395768, the canonical program `A395768.P1059238046107922784` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395768 has offset 1).

The definition of A395768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395768.P12394104628215582133

`A204617(2*(n+1))`
-/

namespace A395768.P12394104628215582133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204617 (2 * (n + 1))

end

end A395768.P12394104628215582133

namespace A395768

/-- `A204617(2*(n+1))` -/
def P12394104628215582133.Spec : Prop :=
  ∀ n, P12394104628215582133.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A395768

/-- `∑{d}[n+1, #*A374367((n+1)/#)]` -/
def P1059238046107922784.Spec : Prop :=
  ∀ n, P1059238046107922784.a n = A395768 (n + 1)

theorem P1059238046107922784.correct : P1059238046107922784.Spec := by
  intro n
  simp only [A395768, Nat.add_sub_cancel]

end A395768

/-! ## A395768.P16799943259967393337

`A060968(n+1)/A177704(n)`
-/

namespace A395768.P16799943259967393337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060968 (n + 1) : ℚ) / (A177704 n : ℚ)

end

end A395768.P16799943259967393337

namespace A395768

/-- `A060968(n+1)/A177704(n)` -/
def P16799943259967393337.Spec : Prop :=
  ∀ n, P16799943259967393337.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P3096175418037686211

`A079458(n+1)/A000010(n+1)`
-/

namespace A395768.P3096175418037686211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A395768.P3096175418037686211

namespace A395768

/-- `A079458(n+1)/A000010(n+1)` -/
def P3096175418037686211.Spec : Prop :=
  ∀ n, P3096175418037686211.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P10551596134192565744

`∑{d}[n+1, A000203(#)*A120630((n+1)/#)]`
-/

namespace A395768.P10551596134192565744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P10551596134192565744

namespace A395768

/-- `∑{d}[n+1, A000203(#)*A120630((n+1)/#)]` -/
def P10551596134192565744.Spec : Prop :=
  ∀ n, P10551596134192565744.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P17380768330038655001

`∑{d}[n+1, A065332(#)*A182158((n+1)/#)]`
-/

namespace A395768.P17380768330038655001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A182158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P17380768330038655001

namespace A395768

/-- `∑{d}[n+1, A065332(#)*A182158((n+1)/#)]` -/
def P17380768330038655001.Spec : Prop :=
  ∀ n, P17380768330038655001.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P7785789785476320208

`∑{d}[n+1, A000010(#)*A374366((n+1)/#)]`
-/

namespace A395768.P7785789785476320208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P7785789785476320208

namespace A395768

/-- `∑{d}[n+1, A000010(#)*A374366((n+1)/#)]` -/
def P7785789785476320208.Spec : Prop :=
  ∀ n, P7785789785476320208.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P5299324630503628806

`A006519(n+1)*A060968(A000265(n+1))`
-/

namespace A395768.P5299324630503628806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A060968 (A000265 (n + 1)).toNat

end

end A395768.P5299324630503628806

namespace A395768

/-- `A006519(n+1)*A060968(A000265(n+1))` -/
def P5299324630503628806.Spec : Prop :=
  ∀ n, P5299324630503628806.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P241920691882686703

`A060968(A204455(n+1))*A357689(n+1)`
-/

namespace A395768.P241920691882686703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A204455 (n + 1)).toNat * A357689 (n + 1)

end

end A395768.P241920691882686703

namespace A395768

/-- `A060968(A204455(n+1))*A357689(n+1)` -/
def P241920691882686703.Spec : Prop :=
  ∀ n, P241920691882686703.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P1721507974125737964

`A040000(n)*A096445(n+1)`
-/

namespace A395768.P1721507974125737964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A096445 (n + 1)

end

end A395768.P1721507974125737964

namespace A395768

/-- `A040000(n)*A096445(n+1)` -/
def P1721507974125737964.Spec : Prop :=
  ∀ n, P1721507974125737964.a n = A395768 (n + 1)

end A395768

/-! ## A395768.P8968661352761146067

`A079458(2*(n+1))/A062570(2*(n+1))`
-/

namespace A395768.P8968661352761146067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (2 * (n + 1)) : ℚ) / (A062570 (2 * (n + 1)) : ℚ)

end

end A395768.P8968661352761146067

namespace A395768

/-- `A079458(2*(n+1))/A062570(2*(n+1))` -/
def P8968661352761146067.Spec : Prop :=
  ∀ n, P8968661352761146067.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P10951007231319740502

`A079458(2*(n+1))/A140434(2*(n+1))`
-/

namespace A395768.P10951007231319740502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (2 * (n + 1)) : ℚ) / (A140434 (2 * (n + 1)) : ℚ)

end

end A395768.P10951007231319740502

namespace A395768

/-- `A079458(2*(n+1))/A140434(2*(n+1))` -/
def P10951007231319740502.Spec : Prop :=
  ∀ n, P10951007231319740502.a n = (A395768 (n + 1) : ℚ)

end A395768

/-! ## A395768.P13675368954138920047

`A096445(2*(n+1))`
-/

namespace A395768.P13675368954138920047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (2 * (n + 1))

end

end A395768.P13675368954138920047

namespace A395768

/-- `A096445(2*(n+1))` -/
def P13675368954138920047.Spec : Prop :=
  ∀ n, P13675368954138920047.a n = A395768 (n + 1)

end A395768

/-!
# A395769: The twisted Euler phi-function for the Dirichlet character kronecker(-8,.) mod 8.

The programs for A395769, there is no canonical definition to state claims against.
-/

/-! ## A395769.P2309648224152240816

`A000003(2*(n+1)²)`
-/

namespace A395769.P2309648224152240816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (2 * (n + 1) ^ 2)

end

end A395769.P2309648224152240816

/-! ## A395769.P8211351445773478548

`A014600(A000466(n+1))`
-/

namespace A395769.P8211351445773478548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (A000466 (n + 1)).toNat

end

end A395769.P8211351445773478548

/-! ## A395769.P14375888592886078243

`A014600(A000290(2*(n+1))-1)`
-/

namespace A395769.P14375888592886078243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (A000290 (2 * (n + 1)) - 1).toNat

end

end A395769.P14375888592886078243

/-! ## A395769.P6194955749419262220

`A066360(A139098(n+1))`
-/

namespace A395769.P6194955749419262220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 (A139098 (n + 1)).toNat

end

end A395769.P6194955749419262220

/-! ## A395769.P5335624588515585768

`gcd(A088965(n+1), A229179(A288364(n)))`
-/

namespace A395769.P5335624588515585768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088965 (n + 1)) (A229179 (A288364 n).toNat)

end

end A395769.P5335624588515585768

/-!
# A395770: Minimal value of Sum_{i=1..n-1} p(i)*p(i+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

The programs for A395770, the canonical program `A395770.P6015351463328075151` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395770 has offset 1).

The definition of A395770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395770.P6015351463328075151

`ogf((2x+2x^2-2x^3)/(1-2x-4x^2+8x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395770

/-- `ogf((2x+2x^2-2x^3)/(1-2x-4x^2+8x^3))` -/
def P6015351463328075151.Spec : Prop :=
  ∀ n, P6015351463328075151.a n = A395770 (n + 1)

theorem P6015351463328075151.correct : P6015351463328075151.Spec := by
  intro n
  simp only [A395770, Nat.add_sub_cancel]

end A395770

/-! ## A395770.P7599257743219112810

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=18`
-/

namespace A395770.P7599257743219112810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 18] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 8 * a (n - 3)

end

end A395770.P7599257743219112810

namespace A395770

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P7599257743219112810.Spec : Prop :=
  ∀ n, P7599257743219112810.a n = A395770 (n + 1)

end A395770

/-! ## A395770.P6054457820381532371

`A394572(n)+A131577(n)`
-/

namespace A395770.P6054457820381532371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394572 n + A131577 n

end

end A395770.P6054457820381532371

namespace A395770

/-- `A394572(n)+A131577(n)` -/
def P6054457820381532371.Spec : Prop :=
  ∀ n, P6054457820381532371.a n = A395770 (n + 1)

end A395770

/-! ## A395770.P16966019493068547943

`A395767(n+1)-A011782(n)`
-/

namespace A395770.P16966019493068547943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395767 (n + 1) - A011782 n

end

end A395770.P16966019493068547943

namespace A395770

/-- `A395767(n+1)-A011782(n)` -/
def P16966019493068547943.Spec : Prop :=
  ∀ n, P16966019493068547943.a n = A395770 (n + 1)

end A395770

/-! ## A395770.P9977738690932301166

`A002265(A000079(n)*A047209(n+1))`
-/

namespace A395770.P9977738690932301166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000079 n * A047209 (n + 1)).toNat

end

end A395770.P9977738690932301166

namespace A395770

/-- `A002265(A000079(n)*A047209(n+1))` -/
def P9977738690932301166.Spec : Prop :=
  ∀ n, P9977738690932301166.a n = A395770 (n + 1)

end A395770

/-!
# A395773: The twisted Euler phi-function for the Dirichlet character kronecker(-15,.) mod 15.

The programs for A395773, there is no canonical definition to state claims against.
-/

/-! ## A395773.P1670718934447643678

`A117332(A105658(n+1))`
-/

namespace A395773.P1670718934447643678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117332 (A105658 (n + 1)).toNat

end

end A395773.P1670718934447643678

/-! ## A395773.P15151574035570576778

`A320443(A284463(n))+floor(n/(n%2+1))`
-/

namespace A395773.P15151574035570576778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320443 (A284463 n).toNat + ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

end

end A395773.P15151574035570576778

/-!
# A395778: Squarefree numbers k with least prime factor p and m distinct prime factors, such that not all larger prime factors q > p are less than p^m.

The programs for A395778, there is no canonical definition to state claims against.
-/

/-! ## A395778.P265615989600075271

`∩[A253785(n+1), A325362(n+1)]`
-/

namespace A395778.P265615989600075271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P265615989600075271

/-! ## A395778.P16329692801715290358

`∩[A245729(n+1), A301899(n+1)]`
-/

namespace A395778.P16329692801715290358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P16329692801715290358

/-! ## A395778.P15584634506845844177

`∩[A253785(n+1), A301899(n+1)]`
-/

namespace A395778.P15584634506845844177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P15584634506845844177

/-! ## A395778.P9283429632481810976

`∩[A245729(n+1), A319315(n+1)]`
-/

namespace A395778.P9283429632481810976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P9283429632481810976

/-! ## A395778.P7457415088758513650

`∩[A245729(n+1), A325398(n+1)]`
-/

namespace A395778.P7457415088758513650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395778.P7457415088758513650

/-!
# A395779: Expansion of (Sum_{k>=0} binomial(3*k+1,k) * x^k)^3.

The programs for A395779, the canonical program `A395779.P17527892518995673863` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395779 has offset 0).

The definition of A395779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395779.P17527892518995673863

`∑{#}[n, (#+1)*3^#*C(3*n+3-#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395779

/-- `∑{#}[n, (#+1)*3^#*C(3*n+3-#, n-#)]` -/
def P17527892518995673863.Spec : Prop :=
  ∀ n, (P17527892518995673863.a n : ℤ) = A395779 n

theorem P17527892518995673863.correct : P17527892518995673863.Spec := by
  intro n
  simp only [A395779]

end A395779

/-!
# A395780: Expansion of (Sum_{k>=0} binomial(3*k+1,k) * x^k)^4.

The programs for A395780, the canonical program `A395780.P14412010587137782713` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395780 has offset 0).

The definition of A395780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395780.P14412010587137782713

`∑{#}[n, 2^#*C(#+2, 2)*C(3*n+7, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395780

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(3*n+7, n-#)]` -/
def P14412010587137782713.Spec : Prop :=
  ∀ n, (P14412010587137782713.a n : ℤ) = A395780 n

theorem P14412010587137782713.correct : P14412010587137782713.Spec := by
  intro n
  simp only [A395780]

end A395780

/-! ## A395780.P4479307971604757148

`∑{#}[n, A062236(#+1)*A062236(n-#+1)]`
-/

namespace A395780.P4479307971604757148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A062236 (k + 1) * A062236 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A395780.P4479307971604757148

namespace A395780

/-- `∑{#}[n, A062236(#+1)*A062236(n-#+1)]` -/
def P4479307971604757148.Spec : Prop :=
  ∀ n, P4479307971604757148.a n = A395780 n

end A395780

/-!
# A395781: Expansion of (Sum_{k>=0} binomial(4*k+1,k) * x^k)^3.

The programs for A395781, the canonical program `A395781.P17508458645405075796` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395781 has offset 0).

The definition of A395781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395781.P17508458645405075796

`∑{#}[n, (#+1)*4^#*C(4*n+3-#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395781

/-- `∑{#}[n, (#+1)*4^#*C(4*n+3-#, n-#)]` -/
def P17508458645405075796.Spec : Prop :=
  ∀ n, (P17508458645405075796.a n : ℤ) = A395781 n

theorem P17508458645405075796.correct : P17508458645405075796.Spec := by
  intro n
  simp only [A395781]

end A395781

/-!
# A395782: Expansion of (Sum_{k>=0} binomial(4*k+1,k) * x^k)^4.

The programs for A395782, the canonical program `A395782.P6923194367833627499` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395782 has offset 0).

The definition of A395782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395782.P6923194367833627499

`∑{#}[n, 3^#*C(#+2, 2)*C(4*n+7, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395782

/-- `∑{#}[n, 3^#*C(#+2, 2)*C(4*n+7, n-#)]` -/
def P6923194367833627499.Spec : Prop :=
  ∀ n, (P6923194367833627499.a n : ℤ) = A395782 n

theorem P6923194367833627499.correct : P6923194367833627499.Spec := by
  intro n
  simp only [A395782]

end A395782

/-!
# A395783: Expansion of (Sum_{k>=0} binomial(3*k+2,k) * x^k)^3.

The programs for A395783, the canonical program `A395783.P18438307682850857593` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395783 has offset 0).

The definition of A395783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395783.P18438307682850857593

`∑{#}[n, (#+1)*2^#*C(3*n+8, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395783

/-- `∑{#}[n, (#+1)*2^#*C(3*n+8, n-#)]` -/
def P18438307682850857593.Spec : Prop :=
  ∀ n, (P18438307682850857593.a n : ℤ) = A395783 n

theorem P18438307682850857593.correct : P18438307682850857593.Spec := by
  intro n
  simp only [A395783]

end A395783

/-!
# A395784: Brick wall numbers: an integer k > 1, written as k = p_1 * p_2 * ... * p_r where p_1 <= p_2 <= ... <= p_r are primes, is a brick wall number if there exist integers h >= 2 and w >= 2 such that the prime factors p_i of k can be stacked up in h horizontal layers of bricks such that the sum of the p_i's in each layer is equal to w.

The programs for A395784, there is no canonical definition to state claims against.
-/

/-! ## A395784.P18092833571195982609

`A109422(A128870(n+1))`
-/

namespace A395784.P18092833571195982609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (A128870 (n + 1)).toNat

end

end A395784.P18092833571195982609

/-! ## A395784.P7086988217600733709

`∩[A321454(n+1), A357862(n+1)]`
-/

namespace A395784.P7086988217600733709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395784.P7086988217600733709

/-! ## A395784.P13790861595835318460

`A109422(A106000(n+1))`
-/

namespace A395784.P13790861595835318460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (A106000 (n + 1)).toNat

end

end A395784.P13790861595835318460

/-! ## A395784.P8617371031182681873

`∩[A010432(n+1), A109422(n+1)]`
-/

namespace A395784.P8617371031182681873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395784.P8617371031182681873

/-! ## A395784.P13722689027960306453

`A109422(A064704(n+1))`
-/

namespace A395784.P13722689027960306453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (A064704 (n + 1)).toNat

end

end A395784.P13722689027960306453

/-!
# A395785: Expansion of (Sum_{k>=0} binomial(3*k+2,k) * x^k)^4.

The programs for A395785, the canonical program `A395785.P1011992714725669051` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395785 has offset 0).

The definition of A395785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395785.P1011992714725669051

`∑{#}[n, 3^#*C(#+2, 2)*C(3*n+8-#, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395785

/-- `∑{#}[n, 3^#*C(#+2, 2)*C(3*n+8-#, n-#)]` -/
def P1011992714725669051.Spec : Prop :=
  ∀ n, (P1011992714725669051.a n : ℤ) = A395785 n

theorem P1011992714725669051.correct : P1011992714725669051.Spec := by
  intro n
  simp only [A395785]

end A395785

/-!
# A395786: Expansion of (Sum_{k>=0} binomial(4*k+2,k) * x^k)^3.

The programs for A395786, the canonical program `A395786.P4995401195458364813` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395786 has offset 0).

The definition of A395786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395786.P4995401195458364813

`∑{#}[n, (#+1)*3^#*C(4*n+8, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395786

/-- `∑{#}[n, (#+1)*3^#*C(4*n+8, n-#)]` -/
def P4995401195458364813.Spec : Prop :=
  ∀ n, (P4995401195458364813.a n : ℤ) = A395786 n

theorem P4995401195458364813.correct : P4995401195458364813.Spec := by
  intro n
  simp only [A395786]

end A395786

/-!
# A395787: Expansion of (Sum_{k>=0} binomial(4*k+2,k) * x^k)^4.

The programs for A395787, the canonical program `A395787.P18127278295350292329` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395787 has offset 0).

The definition of A395787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A395787.P18127278295350292329

`∑{#}[n, 3^#*C(#+2, 2)*C(4*n+11, n-#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A395787

/-- `∑{#}[n, 3^#*C(#+2, 2)*C(4*n+11, n-#)]` -/
def P18127278295350292329.Spec : Prop :=
  ∀ n, (P18127278295350292329.a n : ℤ) = A395787 n

theorem P18127278295350292329.correct : P18127278295350292329.Spec := by
  intro n
  simp only [A395787]

end A395787

/-!
# A395788: Numbers k for which sopfr(2*k) = sopfr(k + 2) where sopfr = A001414.

The programs for A395788, the canonical program `A395788.P12615804194688799175` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395788 has offset 1).

The definition of A395788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395788.P12615804194688799175

`eq[A001414(2*(n+2)), A001414(A008574(n))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A395788

/-- `eq[A001414(2*(n+2)), A001414(A008574(n))]` -/
def P12615804194688799175.Spec : Prop :=
  ∀ n, (P12615804194688799175.a n : ℤ) = A395788 (n + 1)

theorem P12615804194688799175.correct : P12615804194688799175.Spec := by
  intro n
  simp only [A395788, Nat.add_sub_cancel]

end A395788

/-!
# A395789: Number of permutations p of [n] such that |p(i)-i| >= 7 for all i in [n].

The programs for A395789, there is no canonical definition to state claims against.
-/

/-! ## A395789.P6436304328449375979

`A082331(C(A045931(n), A210221(n+1)))`
-/

namespace A395789.P6436304328449375979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082331 (Nat.choose (A045931 n).toNat (A210221 (n + 1)).toNat)

end

end A395789.P6436304328449375979

/-! ## A395789.P12291628106757883723

`and(A000079(A322333(n+3)), A079181(n))`
-/

namespace A395789.P12291628106757883723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 (A322333 (n + 3)).toNat) (A079181 n)

end

end A395789.P12291628106757883723

/-!
# A395790: Numbers k such that gcd(i!,k) > gcd((i-1)!,k) for every i <= A002034(k) not coprime to k.

The programs for A395790, there is no canonical definition to state claims against.
-/

/-! ## A395790.P8760842315345630711

`lt[A144228(A076563(3*n+2)), A155764(2*(n+1))]`
-/

namespace A395790.P8760842315345630711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (A076563 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155764 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P8760842315345630711

/-! ## A395790.P230307885606609843

`lt[A037214(A082392(n)), A082356(n)]`
-/

namespace A395790.P230307885606609843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (A082392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P230307885606609843

/-! ## A395790.P522683224063432761

`lt[A037214(A082392(n)), A082359(n)]`
-/

namespace A395790.P522683224063432761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (A082392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P522683224063432761

/-! ## A395790.P17101962141903846120

`lt[A037214(A082392(n)), A082360(n)]`
-/

namespace A395790.P17101962141903846120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (A082392 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P17101962141903846120

/-! ## A395790.P7741491916337437005

`lt[A266770(n), A070667(A070667(3*n+2))]`
-/

namespace A395790.P7741491916337437005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (A070667 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395790.P7741491916337437005

/-!
# A395791: Numbers k such that gcd(i!,k) = gcd((i-1)!,k) for some i <= A002034(k) not coprime to k.

The programs for A395791, there is no canonical definition to state claims against.
-/

/-! ## A395791.P6617155726159100897

`lt[A272332(A017666(2*n+3)), A333627(2*(n+1))]`
-/

namespace A395791.P6617155726159100897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272332 (A017666 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A395791.P6617155726159100897

/-! ## A395791.P15560172636146973345

`A361102(lt[A144891(3*n+5), A064914(n)])`
-/

namespace A395791.P15560172636146973345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144891 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A395791.P15560172636146973345

/-!
# A395792: Numbers k such that k-3 and k+3 are prime and gcd(k, sigma(k)) is prime.

The programs for A395792, the canonical program `A395792.P15440842927184700187` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A395792 has offset 1).

The definition of A395792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A395792.P15440842927184700187

`∩[A087695(n+1), A392199(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A395792

/-- `∩[A087695(n+1), A392199(n+1)]` -/
def P15440842927184700187.Spec : Prop :=
  ∀ n, (P15440842927184700187.a n : ℤ) = A395792 (n + 1)

theorem P15440842927184700187.correct : P15440842927184700187.Spec := by
  intro n
  simp only [A395792, Nat.add_sub_cancel]

end A395792

/-!
# A395795: Lexicographically earliest sequence of the form 1 followed by semiprimes (A001358), with the property that (a) for all k>=0, a(k) shares a factor with exactly k other terms, and (b) for all k >= 1, a(k) is divisible by a prime which does not divide any earlier term.

The programs for A395795, there is no canonical definition to state claims against.
-/

/-! ## A395795.P4612784745316121022

`A064505(A396178(n))`
-/

namespace A395795.P4612784745316121022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064505 (A396178 n).toNat

end

end A395795.P4612784745316121022

/-! ## A395795.P17009340571023041067

`A373565(n)*A396178(n)`
-/

namespace A395795.P17009340571023041067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n * A396178 n

end

end A395795.P17009340571023041067

/-! ## A395795.P13493402754201218044

`A083796(A000124(n))*A396178(n)`
-/

namespace A395795.P13493402754201218044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083796 (A000124 n).toNat * A396178 n

end

end A395795.P13493402754201218044

/-! ## A395795.P16735224156896527130

`A396178(n)+A000122(A161639(n+1))`
-/

namespace A395795.P16735224156896527130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396178 n + A000122 (A161639 (n + 1)).toNat

end

end A395795.P16735224156896527130

/-! ## A395795.P2689125696612065574

`A396178(n)+A000122(A396174(3*n+2))`
-/

namespace A395795.P2689125696612065574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396178 n + A000122 (A396174 (3 * n + 2)).toNat

end

end A395795.P2689125696612065574

/-!
# A395796: Expansion of -1/(Sum_{k>=0} binomial(4*k+1,k) * x^k).

The programs for A395796, there is no canonical definition to state claims against.
-/

/-! ## A395796.P9001078195723577301

`A375825(A373568(n))*(6*n-1)`
-/

namespace A395796.P9001078195723577301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375825 (A373568 n).toNat * ((6 * n : ℤ) - 1)

end

end A395796.P9001078195723577301

