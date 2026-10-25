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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A195800: Number of triangular nXnXn 0..3 arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195800, there is no canonical definition to state claims against.
-/

/-! ## A195800.P6063062142410504586

`A195805(∑[n+3]+1)`
-/

namespace A195800.P6063062142410504586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195800.P6063062142410504586

/-!
# A195801: Number of triangular nXnXn 0..4 arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195801, there is no canonical definition to state claims against.
-/

/-! ## A195801.P15601888483379543170

`A195805(A141214(n+1))`
-/

namespace A195801.P15601888483379543170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (A141214 (n + 1)).toNat

end

end A195801.P15601888483379543170

/-!
# A195802: Number of triangular nXnXn 0..5 arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195802, there is no canonical definition to state claims against.
-/

/-! ## A195802.P5226605514975995268

`A195805(∑[n+5]+6)`
-/

namespace A195802.P5226605514975995268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A195802.P5226605514975995268

/-! ## A195802.P3030784026397135254

`A055642(n)*A195805(A046691(n+3))`
-/

namespace A195802.P3030784026397135254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A195805 (A046691 (n + 3)).toNat

end

end A195802.P3030784026397135254

/-!
# A195803: Number of triangular nXnXn 0..6 arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195803, there is no canonical definition to state claims against.
-/

/-! ## A195803.P6382859749877204333

`A195805(A052905(n+3))`
-/

namespace A195803.P6382859749877204333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (A052905 (n + 3)).toNat

end

end A195803.P6382859749877204333

/-!
# A195806: Number of triangular of a 5 X 5 X 5 0..n arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195806, there is no canonical definition to state claims against.
-/

/-! ## A195806.P4295645260417438713

`A195805(∑[n+4]+11)`
-/

namespace A195806.P4295645260417438713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A195806.P4295645260417438713

/-! ## A195806.P7101884474944491221

`A195805(A167499(n+3))+A025443(n)`
-/

namespace A195806.P7101884474944491221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (A167499 (n + 3)).toNat + A025443 n

end

end A195806.P7101884474944491221

/-!
# A195807: Number of triangular of a 6X6X6 0..n arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195807, there is no canonical definition to state claims against.
-/

/-! ## A195807.P13052082644162042973

`A195805(A166136(n+4))`
-/

namespace A195807.P13052082644162042973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (A166136 (n + 4)).toNat

end

end A195807.P13052082644162042973

/-!
# A195814: Numbers k which use half of the ten digits such that they have at least one factorization k=p*q that uses remaining half of the digits that are not in k.

The programs for A195814, there is no canonical definition to state claims against.
-/

/-! ## A195814.P1291916715210962744

`∩[A253172(n+1), A370970(n+1)]`
-/

namespace A195814.P1291916715210962744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195814.P1291916715210962744

/-! ## A195814.P7022168203423353863

`∩[A253172(n+1), A372259(n+1)]`
-/

namespace A195814.P7022168203423353863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195814.P7022168203423353863

/-! ## A195814.P13945854822767836219

`∩[A253173(n+1), A370970(n+1)]`
-/

namespace A195814.P13945854822767836219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195814.P13945854822767836219

/-! ## A195814.P8970048639378561624

`∩[A253173(n+1), A372259(n+1)]`
-/

namespace A195814.P8970048639378561624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195814.P8970048639378561624

/-! ## A195814.P12594420361337767290

`A253173(A077168(n))`
-/

namespace A195814.P12594420361337767290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253173 (A077168 n).toNat

end

end A195814.P12594420361337767290

/-!
# A195815: Numbers k such that 2*(3^k-2*k)+1 is prime.

The programs for A195815, there is no canonical definition to state claims against.
-/

/-! ## A195815.P8989706871314239444

`∑[A100664(A003242(n))]`
-/

namespace A195815.P8989706871314239444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100664 (A003242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195815.P8989706871314239444

/-! ## A195815.P9848529067511858272

`∑[A100664(A050342(n))]`
-/

namespace A195815.P9848529067511858272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100664 (A050342 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195815.P9848529067511858272

/-!
# A195817: Multiples of 10 and odd numbers interleaved.

The programs for A195817, the canonical program `A195817.P10868073384841186219` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195817 has offset 0).

The definition of A195817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195817.P10868073384841186219

`(2*(-1)^n+3)*n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195817

/-- `(2*(-1)^n+3)*n` -/
def P10868073384841186219.Spec : Prop :=
  ∀ n, P10868073384841186219.a n = A195817 n

theorem P10868073384841186219.correct : P10868073384841186219.Spec := by
  intro n
  simp only [A195817]

end A195817

/-! ## A195817.P8463678486141846838

`a(n-2)*n/(n-2)` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A195817.P8463678486141846838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  a (n - 2) * (n : ℚ) / ((n : ℤ) - 2 : ℚ)

end

end A195817.P8463678486141846838

namespace A195817

/-- `a(n-2)*n/(n-2)` -/
def P8463678486141846838.Spec : Prop :=
  ∀ n, P8463678486141846838.a n = (A195817 n : ℚ)

end A195817

/-! ## A195817.P13141203332247587207

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=3`
-/

namespace A195817.P13141203332247587207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10, 3] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A195817.P13141203332247587207

namespace A195817

/-- `2*a(n-2)-a(n-4)` -/
def P13141203332247587207.Spec : Prop :=
  ∀ n, P13141203332247587207.a n = A195817 n

theorem P13141203332247587207.correct : P13141203332247587207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A195817, Nat.add_sub_cancel, A195817.P13141203332247587207.a, A195817.P10868073384841186219.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A195817, Nat.add_sub_cancel, A195817.P13141203332247587207.a, A195817.P10868073384841186219.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [h2, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195817

/-! ## A195817.P10857421349028543174

`Δ[or(1, -n)²]+n`
-/

namespace A195817.P10857421349028543174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A195817.P10857421349028543174

namespace A195817

/-- `Δ[or(1, -n)²]+n` -/
def P10857421349028543174.Spec : Prop :=
  ∀ n, P10857421349028543174.a n = A195817 n

end A195817

/-! ## A195817.P2424851116460461115

`n/5^((1-n)%2)`
-/

namespace A195817.P2424851116460461115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (5 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

end

end A195817.P2424851116460461115

namespace A195817

/-- `n/5^((1-n)%2)` -/
def P2424851116460461115.Spec : Prop :=
  ∀ n, P2424851116460461115.a n = (A195817 n : ℚ)

end A195817

/-! ## A195817.P4013187644734377634

`n/5^(and(1, n)-1)`
-/

namespace A195817.P4013187644734377634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (5 : ℚ) ^ ((Nat.land 1 n : ℤ) - 1 : ℤ)

end

end A195817.P4013187644734377634

namespace A195817

/-- `n/5^(and(1, n)-1)` -/
def P4013187644734377634.Spec : Prop :=
  ∀ n, P4013187644734377634.a n = (A195817 n : ℚ)

end A195817

/-! ## A195817.P8938401212372815726

`n/5^-and(1, n+1)`
-/

namespace A195817.P8938401212372815726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (5 : ℚ) ^ (-(Nat.land 1 (n + 1) : ℤ) : ℤ)

end

end A195817.P8938401212372815726

namespace A195817

/-- `n/5^-and(1, n+1)` -/
def P8938401212372815726.Spec : Prop :=
  ∀ n, P8938401212372815726.a n = (A195817 n : ℚ)

end A195817

/-! ## A195817.P14980223331012974576

`abs(n*or(-5, (2*n)²))`
-/

namespace A195817.P14980223331012974576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor (-5) ((2 * n) ^ 2 : ℤ)|

end

end A195817.P14980223331012974576

namespace A195817

/-- `abs(n*or(-5, (2*n)²))` -/
def P14980223331012974576.Spec : Prop :=
  ∀ n, P14980223331012974576.a n = A195817 n

end A195817

/-! ## A195817.P2134436677438367211

`-(n*or(-5, (2*n)²))`
-/

namespace A195817.P2134436677438367211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor (-5) ((2 * n) ^ 2 : ℤ))

end

end A195817.P2134436677438367211

namespace A195817

/-- `-(n*or(-5, (2*n)²))` -/
def P2134436677438367211.Spec : Prop :=
  ∀ n, P2134436677438367211.a n = A195817 n

end A195817

/-! ## A195817.P3301569934252919060

`n-Δ[-or(1, n-1)²]`
-/

namespace A195817.P3301569934252919060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor 1 ((n : ℤ) - 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A195817.P3301569934252919060

namespace A195817

/-- `n-Δ[-or(1, n-1)²]` -/
def P3301569934252919060.Spec : Prop :=
  ∀ n, P3301569934252919060.a n = A195817 n

end A195817

/-! ## A195817.P17448986409762207535

`4*n*(n+1)%2+n`
-/

namespace A195817.P17448986409762207535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * ((n + 1) % 2)) + n

end

end A195817.P17448986409762207535

namespace A195817

/-- `4*n*(n+1)%2+n` -/
def P17448986409762207535.Spec : Prop :=
  ∀ n, (P17448986409762207535.a n : ℤ) = A195817 n

end A195817

/-! ## A195817.P6780255653936636958

`(gcd(2, n)-1)*4*n+n`
-/

namespace A195817.P6780255653936636958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n : ℤ) - 1) * (4 * n : ℤ) + (n : ℤ)

end

end A195817.P6780255653936636958

namespace A195817

/-- `(gcd(2, n)-1)*4*n+n` -/
def P6780255653936636958.Spec : Prop :=
  ∀ n, P6780255653936636958.a n = A195817 n

end A195817

/-! ## A195817.P3686090718888535152

`∑{digits}[4-a(n-1), n*#]` with `a(0)=5`
-/

namespace A195817.P3686090718888535152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n * x).sum

end

end A195817.P3686090718888535152

namespace A195817

/-- `∑{digits}[4-a(n-1), n*#]` -/
def P3686090718888535152.Spec : Prop :=
  ∀ n, (P3686090718888535152.a n : ℤ) = A195817 n

end A195817

/-! ## A195817.P4452429938462864632

`∏{digits}[4-a(n-1), n*#]` with `a(0)=5`
-/

namespace A195817.P4452429938462864632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => n * x).prod

end

end A195817.P4452429938462864632

namespace A195817

/-- `∏{digits}[4-a(n-1), n*#]` -/
def P4452429938462864632.Spec : Prop :=
  ∀ n, (P4452429938462864632.a n : ℤ) = A195817 n

end A195817

/-! ## A195817.P4639182687058490261

`Δ[(and(1, n+1)-n)²]+n`
-/

namespace A195817.P4639182687058490261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A195817.P4639182687058490261

namespace A195817

/-- `Δ[(and(1, n+1)-n)²]+n` -/
def P4639182687058490261.Spec : Prop :=
  ∀ n, P4639182687058490261.a n = A195817 n

end A195817

/-! ## A195817.P1932715279198541292

`n*∑[floor(a(n-2))]+n` with `a(0)=4, a(1)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A195817.P1932715279198541292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, -4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A195817.P1932715279198541292

namespace A195817

/-- `n*∑[floor(a(n-2))]+n` -/
def P1932715279198541292.Spec : Prop :=
  ∀ n, P1932715279198541292.a n = A195817 n

end A195817

/-! ## A195817.P16006338702394971021

`n-n*∑[floor(a(n-2))]` with `a(0)=-4, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A195817.P16006338702394971021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195817.P16006338702394971021

namespace A195817

/-- `n-n*∑[floor(a(n-2))]` -/
def P16006338702394971021.Spec : Prop :=
  ∀ n, P16006338702394971021.a n = A195817 n

end A195817

/-! ## A195817.P3893517485850843176

`2*n*2*and(1, n+1)+n`
-/

namespace A195817.P3893517485850843176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (2 * Nat.land 1 (n + 1)) + n

end

end A195817.P3893517485850843176

namespace A195817

/-- `2*n*2*and(1, n+1)+n` -/
def P3893517485850843176.Spec : Prop :=
  ∀ n, (P3893517485850843176.a n : ℤ) = A195817 n

end A195817

/-! ## A195817.P10809431476224915458

`n*∑[2-a(n-1)]-n²` with `a(0)=5`
-/

namespace A195817.P10809431476224915458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (n ^ 2 : ℤ)

end

end A195817.P10809431476224915458

namespace A195817

/-- `n*∑[2-a(n-1)]-n²` -/
def P10809431476224915458.Spec : Prop :=
  ∀ n, P10809431476224915458.a n = A195817 n

end A195817

/-! ## A195817.P13499710952548883500

`lcm(n, A195140(n))`
-/

namespace A195817.P13499710952548883500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A195140 n)

end

end A195817.P13499710952548883500

namespace A195817

/-- `lcm(n, A195140(n))` -/
def P13499710952548883500.Spec : Prop :=
  ∀ n, (P13499710952548883500.a n : ℤ) = A195817 n

end A195817

/-!
# A195818: Generalized 14-gonal numbers: m*(6*m-5), m = 0,+1,-1,+2,-2,+3,-3,...

The programs for A195818, the canonical program `A195818.P7135348003811503779` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195818 has offset 0).

The definition of A195818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195818.P7135348003811503779

`(3*n*(n+1)+(2*n+1)*(-1)^n-1)/2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195818

/-- `(3*n*(n+1)+(2*n+1)*(-1)^n-1)/2` -/
def P7135348003811503779.Spec : Prop :=
  ∀ n, P7135348003811503779.a n = (A195818 n : ℚ)

end A195818

/-! ## A195818.P6521961766277899254

`∑[n*gcd(5, n%2)]`
-/

namespace A195818.P6521961766277899254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195818.P6521961766277899254

namespace A195818

/-- `∑[n*gcd(5, n%2)]` -/
def P6521961766277899254.Spec : Prop :=
  ∀ n, (P6521961766277899254.a n : ℤ) = A195818 n

end A195818

/-! ## A195818.P17598513634164381029

`∑[n]+or(1, n)²-1`
-/

namespace A195818.P17598513634164381029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((Nat.lor 1 n ^ 2 : ℤ) - 1)

end

end A195818.P17598513634164381029

namespace A195818

/-- `∑[n]+or(1, n)²-1` -/
def P17598513634164381029.Spec : Prop :=
  ∀ n, P17598513634164381029.a n = A195818 n

end A195818

/-! ## A195818.P74607698987216875

`∑[n*or(1, gcd(2, n)²)]`
-/

namespace A195818.P74607698987216875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (Nat.gcd 2 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195818.P74607698987216875

namespace A195818

/-- `∑[n*or(1, gcd(2, n)²)]` -/
def P74607698987216875.Spec : Prop :=
  ∀ n, (P74607698987216875.a n : ℤ) = A195818 n

end A195818

/-! ## A195818.P6251607426031976469

`∑[n*5^and(1, n+1)]`
-/

namespace A195818.P6251607426031976469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195818.P6251607426031976469

namespace A195818

/-- `∑[n*5^and(1, n+1)]` -/
def P6251607426031976469.Spec : Prop :=
  ∀ n, (P6251607426031976469.a n : ℤ) = A195818 n

end A195818

/-! ## A195818.P2118453968662773703

`or(1, n)*comp[3*n]-1`
-/

namespace A195818.P2118453968662773703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A195818.P2118453968662773703

namespace A195818

/-- `or(1, n)*comp[3*n]-1` -/
def P2118453968662773703.Spec : Prop :=
  ∀ n, P2118453968662773703.a n = A195818 n

end A195818

/-! ## A195818.P2896785058913675260

`∑[n*(∑[2-a(n-1)]-n)]` with `a(0)=5`
-/

namespace A195818.P2896785058913675260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195818.P2896785058913675260

namespace A195818

/-- `∑[n*(∑[2-a(n-1)]-n)]` -/
def P2896785058913675260.Spec : Prop :=
  ∀ n, P2896785058913675260.a n = A195818 n

end A195818

/-! ## A195818.P16975170208607000373

`∑[A195817(n)]`
-/

namespace A195818.P16975170208607000373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195818.P16975170208607000373

namespace A195818

/-- `∑[A195817(n)]` -/
def P16975170208607000373.Spec : Prop :=
  ∀ n, P16975170208607000373.a n = A195818 n

end A195818

/-! ## A195818.P4960947358936624749

`∑[n*A176260(n)]`
-/

namespace A195818.P4960947358936624749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195818.P4960947358936624749

namespace A195818

/-- `∑[n*A176260(n)]` -/
def P4960947358936624749.Spec : Prop :=
  ∀ n, P4960947358936624749.a n = A195818 n

end A195818

/-! ## A195818.P10586273628041239214

`A036499(n+1)-1`
-/

namespace A195818.P10586273628041239214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036499 (n + 1) - 1

end

end A195818.P10586273628041239214

namespace A195818

/-- `A036499(n+1)-1` -/
def P10586273628041239214.Spec : Prop :=
  ∀ n, P10586273628041239214.a n = A195818 n

end A195818

/-! ## A195818.P5888428125821032040

`∑[A035877(n)-n]-1`
-/

namespace A195818.P5888428125821032040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035877 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A195818.P5888428125821032040

namespace A195818

/-- `∑[A035877(n)-n]-1` -/
def P5888428125821032040.Spec : Prop :=
  ∀ n, P5888428125821032040.a n = A195818 n

end A195818

/-! ## A195818.P235283863721749203

`2*A074377(n)-∑[n]`
-/

namespace A195818.P235283863721749203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074377 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A195818.P235283863721749203

namespace A195818

/-- `2*A074377(n)-∑[n]` -/
def P235283863721749203.Spec : Prop :=
  ∀ n, P235283863721749203.a n = A195818 n

end A195818

/-! ## A195818.P12031929686999999850

`A195143(n)-a(n-1)` with `a(0)=0`
-/

namespace A195818.P12031929686999999850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195143 n - a (n - 1)

end

end A195818.P12031929686999999850

namespace A195818

/-- `A195143(n)-a(n-1)` -/
def P12031929686999999850.Spec : Prop :=
  ∀ n, P12031929686999999850.a n = A195818 n

end A195818

/-! ## A195818.P12003935863106061897

`A014493(n+1)-(∑[n]+1)`
-/

namespace A195818.P12003935863106061897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A195818.P12003935863106061897

namespace A195818

/-- `A014493(n+1)-(∑[n]+1)` -/
def P12003935863106061897.Spec : Prop :=
  ∀ n, P12003935863106061897.a n = A195818 n

end A195818

/-! ## A195818.P7334050924148974262

`A193868(n+1)-(∑[n]+2)`
-/

namespace A195818.P7334050924148974262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193868 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A195818.P7334050924148974262

namespace A195818

/-- `A193868(n+1)-(∑[n]+2)` -/
def P7334050924148974262.Spec : Prop :=
  ∀ n, P7334050924148974262.a n = A195818 n

end A195818

/-! ## A195818.P336745456265060669

`comp[3*n]*A109613(n)-1`
-/

namespace A195818.P336745456265060669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A109613 n - 1

end

end A195818.P336745456265060669

namespace A195818

/-- `comp[3*n]*A109613(n)-1` -/
def P336745456265060669.Spec : Prop :=
  ∀ n, P336745456265060669.a n = A195818 n

end A195818

/-! ## A195818.P13808499712214320621

`a(n-1)+n*A021070(n)` with `a(0)=0`
-/

namespace A195818.P13808499712214320621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A021070 n

end

end A195818.P13808499712214320621

namespace A195818

/-- `a(n-1)+n*A021070(n)` -/
def P13808499712214320621.Spec : Prop :=
  ∀ n, P13808499712214320621.a n = A195818 n

end A195818

/-! ## A195818.P3504623721024999366

`A195162(n)+A110660(n)`
-/

namespace A195818.P3504623721024999366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n + A110660 n

end

end A195818.P3504623721024999366

namespace A195818

/-- `A195162(n)+A110660(n)` -/
def P3504623721024999366.Spec : Prop :=
  ∀ n, P3504623721024999366.a n = A195818 n

end A195818

/-! ## A195818.P17221572473935241113

`A024966(n)-A014494(n)`
-/

namespace A195818.P17221572473935241113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n - A014494 n

end

end A195818.P17221572473935241113

namespace A195818

/-- `A024966(n)-A014494(n)` -/
def P17221572473935241113.Spec : Prop :=
  ∀ n, P17221572473935241113.a n = A195818 n

end A195818

/-! ## A195818.P12254511575228817471

`A095894(n)-A165998(n)`
-/

namespace A195818.P12254511575228817471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095894 n - A165998 n

end

end A195818.P12254511575228817471

namespace A195818

/-- `A095894(n)-A165998(n)` -/
def P12254511575228817471.Spec : Prop :=
  ∀ n, P12254511575228817471.a n = A195818 n

end A195818

/-!
# A195819: Multiples of 29.

The programs for A195819, the canonical program `A195819.P17425551630920011679` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195819 has offset 0).

The definition of A195819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195819.P17425551630920011679

`29*n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195819

/-- `29*n` -/
def P17425551630920011679.Spec : Prop :=
  ∀ n, (P17425551630920011679.a n : ℤ) = A195819 n

theorem P17425551630920011679.correct : P17425551630920011679.Spec := by
  intro n
  simp only [A195819]

end A195819

/-!
# A195820: Total number of smallest parts in all partitions of n that do not contain 1 as a part.

The programs for A195820, there is no canonical definition to state claims against.
-/

/-! ## A195820.P1392726540829279862

`A092269(n+1)-A000070(n)`
-/

namespace A195820.P1392726540829279862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A000070 n

end

end A195820.P1392726540829279862

/-! ## A195820.P11889676296598380821

`Δ[A096541(n)]-A195821(n+1)`
-/

namespace A195820.P11889676296598380821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195821 (n + 1)

end

end A195820.P11889676296598380821

/-! ## A195820.P12285107941590125264

`A220479(n+1)+A002865(n+1)`
-/

namespace A195820.P12285107941590125264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) + A002865 (n + 1)

end

end A195820.P12285107941590125264

/-! ## A195820.P13190893556031315471

`A138135(n+1)-A195821(n+1)`
-/

namespace A195820.P13190893556031315471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) - A195821 (n + 1)

end

end A195820.P13190893556031315471

/-! ## A195820.P5129729066672426974

`A194552(n+1)-A220907(n+1)`
-/

namespace A195820.P5129729066672426974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194552 (n + 1) - A220907 (n + 1)

end

end A195820.P5129729066672426974

/-! ## A195820.P15387495282789643870

`Δ[A093694(n)-A000070(n)]-A195821(n+1)`
-/

namespace A195820.P15387495282789643870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195821 (n + 1)

end

end A195820.P15387495282789643870

/-! ## A195820.P4478064583487912982

`A006128(n+1)-(A182984(n+1)+A000070(n))`
-/

namespace A195820.P4478064583487912982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A182984 (n + 1) + A000070 n)

end

end A195820.P4478064583487912982

/-! ## A195820.P7087852575101690963

`A000041(n+1)+A215513(n+1)-A000070(n)`
-/

namespace A195820.P7087852575101690963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A215513 (n + 1) - A000070 n)

end

end A195820.P7087852575101690963

/-! ## A195820.P798173367700921907

`A000041(n+1)+A220479(n+1)-A000041(n)`
-/

namespace A195820.P798173367700921907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A220479 (n + 1) - A000041 n)

end

end A195820.P798173367700921907

/-! ## A195820.P2627155248612823738

`A066186(n+1)-(A220907(n+1)+A000070(n))`
-/

namespace A195820.P2627155248612823738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A220907 (n + 1) + A000070 n)

end

end A195820.P2627155248612823738

/-! ## A195820.P9194609691143752938

`A138137(n+1)-(A195821(n+1)+A000041(n))`
-/

namespace A195820.P9194609691143752938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - (A195821 (n + 1) + A000041 n)

end

end A195820.P9194609691143752938

/-! ## A195820.P759620715681508003

`A182978(n+1)-(A182629(n+1)+A000070(n))`
-/

namespace A195820.P759620715681508003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182978 (n + 1) - (A182629 (n + 1) + A000070 n)

end

end A195820.P759620715681508003

/-! ## A195820.P467798137387455279

`A096541(n+1)-(A195821(n+1)+A096541(n))`
-/

namespace A195820.P467798137387455279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) - (A195821 (n + 1) + A096541 n)

end

end A195820.P467798137387455279

/-! ## A195820.P1242348166531673523

`A220483(n+1)+A220489(n+1)-A000070(n)`
-/

namespace A195820.P1242348166531673523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220483 (n + 1) + (A220489 (n + 1) - A000070 n)

end

end A195820.P1242348166531673523

/-! ## A195820.P6178988693448212965

`A220479(n+1)+A120452(n+2)-A000070(n)`
-/

namespace A195820.P6178988693448212965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) + (A120452 (n + 2) - A000070 n)

end

end A195820.P6178988693448212965

/-! ## A195820.P16200473160573673170

`A002865(n+1)+A092269(n+1)-A120452(n+2)`
-/

namespace A195820.P16200473160573673170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A092269 (n + 1) - A120452 (n + 2))

end

end A195820.P16200473160573673170

/-! ## A195820.P15079558357457536119

`A092269(n+1)+A220479(n+2)-A215513(n+2)`
-/

namespace A195820.P15079558357457536119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220479 (n + 2) - A215513 (n + 2))

end

end A195820.P15079558357457536119

/-! ## A195820.P1035456816290016058

`A092269(n+1)-A100824(2*n+1)`
-/

namespace A195820.P1035456816290016058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A100824 (2 * n + 1)

end

end A195820.P1035456816290016058

/-!
# A195821: Total number of parts that are not the smallest part in all partitions of n that do not contain 1 as a part.

The programs for A195821, there is no canonical definition to state claims against.
-/

/-! ## A195821.P12721566733051029022

`A138135(n+1)-A195820(n+1)`
-/

namespace A195821.P12721566733051029022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) - A195820 (n + 1)

end

end A195821.P12721566733051029022

/-! ## A195821.P758763726927555883

`A138137(n+1)-A195820(n+1)-A000041(n)`
-/

namespace A195821.P758763726927555883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1) - A195820 (n + 1) - A000041 n

end

end A195821.P758763726927555883

/-! ## A195821.P16598900184365539768

`Δ[A096541(n)]-A195820(n+1)`
-/

namespace A195821.P16598900184365539768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195820 (n + 1)

end

end A195821.P16598900184365539768

/-! ## A195821.P5872250025780363012

`A182699(n+1)-A220479(n+1)`
-/

namespace A195821.P5872250025780363012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (n + 1) - A220479 (n + 1)

end

end A195821.P5872250025780363012

/-! ## A195821.P13367169374003954659

`Δ[A093694(n)-A000070(n)]-A195820(n+1)`
-/

namespace A195821.P13367169374003954659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A195820 (n + 1)

end

end A195821.P13367169374003954659

/-! ## A195821.P2175064335906274712

`A138135(n+1)+A000070(n)-A092269(n+1)`
-/

namespace A195821.P2175064335906274712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138135 (n + 1) + (A000070 n - A092269 (n + 1))

end

end A195821.P2175064335906274712

/-! ## A195821.P541262461096903419

`A096541(n+1)-A096541(n)-A195820(n+1)`
-/

namespace A195821.P541262461096903419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (n + 1) - A096541 n - A195820 (n + 1)

end

end A195821.P541262461096903419

/-! ## A195821.P17167078319014782187

`A182699(n+1)+A120452(n+2)-A092269(n+1)`
-/

namespace A195821.P17167078319014782187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 (n + 1) + (A120452 (n + 2) - A092269 (n + 1))

end

end A195821.P17167078319014782187

/-!
# A195824: a(n) = 24*n^2.

The programs for A195824, the canonical program `A195824.P11133924317718936141` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195824 has offset 0).

The definition of A195824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n²` (program `A195824.P11133924317718936141`, by `A195824.P11133924317718936141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195824.P11133924317718936141

`24*n²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195824

/-- `24*n²` -/
def P11133924317718936141.Spec : Prop :=
  ∀ n, (P11133924317718936141.a n : ℤ) = A195824 n

theorem P11133924317718936141.correct : P11133924317718936141.Spec := by
  intro n
  simp only [A195824]

end A195824

/-!
# A195825: Square array T(n,k) read by antidiagonals, n>=0, k>=1, which arises from a generalization of Euler's Pentagonal Number Theorem.

The programs for A195825, there is no canonical definition to state claims against.
-/

/-! ## A195825.P17316571462220639999

`A211970(comp[∑[n]])`
-/

namespace A195825.P17316571462220639999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211970 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A195825.P17316571462220639999

/-! ## A195825.P14981639285938760164

`A211970(A014132(n+1))%44`
-/

namespace A195825.P14981639285938760164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211970 (A014132 (n + 1)).toNat) 44

end

end A195825.P14981639285938760164

/-! ## A195825.P2709340252403059557

`∑{d}[A211970(A014132(n+1)), A000010(#)]`
-/

namespace A195825.P2709340252403059557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211970 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A195825.P2709340252403059557

/-! ## A195825.P7716599874345781996

`∏{d}[A211970(A014132(n+1)), A014963(#)]`
-/

namespace A195825.P7716599874345781996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211970 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A195825.P7716599874345781996

/-! ## A195825.P5359103676860314357

`abs(A033999(n)*A211970(A014132(n+1)))`
-/

namespace A195825.P5359103676860314357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A211970 (A014132 (n + 1)).toNat|

end

end A195825.P5359103676860314357

/-! ## A195825.P1005665537852655997

`A211970(A014132(n+1))+A154955(n+5)`
-/

namespace A195825.P1005665537852655997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211970 (A014132 (n + 1)).toNat + A154955 (n + 5)

end

end A195825.P1005665537852655997

/-! ## A195825.P7214537408250442348

`lcm(A153881(n+1), A211970(A014132(n+1)))`
-/

namespace A195825.P7214537408250442348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A211970 (A014132 (n + 1)).toNat)

end

end A195825.P7214537408250442348

/-! ## A195825.P7267422763979611817

`A007318(C(2, n))*A211970(A014132(n+1))`
-/

namespace A195825.P7267422763979611817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A211970 (A014132 (n + 1)).toNat

end

end A195825.P7267422763979611817

/-! ## A195825.P9466444991041690541

`A007318(and(3, -n))*A211970(A014132(n+1))`
-/

namespace A195825.P9466444991041690541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A211970 (A014132 (n + 1)).toNat

end

end A195825.P9466444991041690541

/-! ## A195825.P3268650867575014324

`A211970(A014132(n+1))^A014963(∑[n+1])`
-/

namespace A195825.P3268650867575014324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211970 (A014132 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A195825.P3268650867575014324

/-!
# A195826: Triangle read by rows with T(n,k) = n - A000217(k), n>=1, k>=1, if (n - A000217(k))>=0.

The programs for A195826, there is no canonical definition to state claims against.
-/

/-! ## A195826.P8174628593013326016

`A025581(eq[2, A057945(n)])`
-/

namespace A195826.P8174628593013326016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195826.P8174628593013326016

/-! ## A195826.P589701875457257316

`A025581(eq[1, A218828(n+1)])`
-/

namespace A195826.P589701875457257316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195826.P589701875457257316

/-! ## A195826.P11953966791320035488

`A025581(eq[2, A220280(n+1)])`
-/

namespace A195826.P11953966791320035488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195826.P11953966791320035488

/-! ## A195826.P5924230241076362485

`A025581(lt[A218828(n+1), 2])`
-/

namespace A195826.P5924230241076362485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218828 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A195826.P5924230241076362485

/-! ## A195826.P3334289793942452902

`A004736(eq[2, A057945(n)])-2`
-/

namespace A195826.P3334289793942452902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A195826.P3334289793942452902

/-! ## A195826.P11125186255047859964

`A025581(record[n/A218828(n+1)])`
-/

namespace A195826.P11125186255047859964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A218828 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A195826.P11125186255047859964

/-! ## A195826.P5937243146704896165

`A025581(eq[0, A025581(A002262(n))])`
-/

namespace A195826.P5937243146704896165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195826.P5937243146704896165

/-! ## A195826.P9582943067907921133

`A025581(eq[2, A002260(A002260(n+1))])`
-/

namespace A195826.P9582943067907921133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195826.P9582943067907921133

/-!
# A195827: Triangle read by rows with T(n,k) = n - A085787(k), n>=1, k>=1, if (n - A085787(k))>=0.

The programs for A195827, there is no canonical definition to state claims against.
-/

/-! ## A195827.P16810740576852678663

`A056974(2*A297107(n+2))`
-/

namespace A195827.P16810740576852678663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (2 * A297107 (n + 2)).toNat

end

end A195827.P16810740576852678663

/-! ## A195827.P11872696712132276973

`A099751(A000010(A297107(n+2)))`
-/

namespace A195827.P11872696712132276973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099751 (A000010 (A297107 (n + 2)).toNat).toNat

end

end A195827.P11872696712132276973

/-! ## A195827.P9588784226874371002

`A007814(A297107(n+2)/2)`
-/

namespace A195827.P9588784226874371002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A297107 (n + 2) : ℚ) / 2)).toNat

end

end A195827.P9588784226874371002

/-! ## A195827.P4485915012762904708

`A099751(A297107(n+2))`
-/

namespace A195827.P4485915012762904708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099751 (A297107 (n + 2)).toNat

end

end A195827.P4485915012762904708

/-! ## A195827.P2729412170118874582

`A235342(A297107(n+2)/2)`
-/

namespace A195827.P2729412170118874582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235342 (SequenceMachineLib.roundAway ((A297107 (n + 2) : ℚ) / 2)).toNat

end

end A195827.P2729412170118874582

/-!
# A195828: Triangle read by rows with T(n,k) = n - A001082(k), n>=1, k>=1, if (n - A001082(k))>=0.

The programs for A195828, there is no canonical definition to state claims against.
-/

/-! ## A195828.P14330022424464550835

`A089263(record[A052126(2*(n+1))])`
-/

namespace A195828.P14330022424464550835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A195828.P14330022424464550835

/-! ## A195828.P8736468811430127604

`A025581(eq[2, A001285(A036561(n))])`
-/

namespace A195828.P8736468811430127604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A036561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195828.P8736468811430127604

/-! ## A195828.P14870366089191223615

`val(A217434(A014950(n+1)), 3)`
-/

namespace A195828.P14870366089191223615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A217434 (A014950 (n + 1)).toNat).toNat 3

end

end A195828.P14870366089191223615

/-! ## A195828.P8831630419249994226

`A167971(A167973(n+1))-A167964(A122539(n))`
-/

namespace A195828.P8831630419249994226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167971 (A167973 (n + 1)).toNat - A167964 (A122539 n).toNat

end

end A195828.P8831630419249994226

/-!
# A195829: Triangle read by rows with T(n,k) = n - A118277(k), n>=1, k>=1, if (n - A118277(k))>=0.

The programs for A195829, there is no canonical definition to state claims against.
-/

/-! ## A195829.P12445309179871745213

`A007814(13*A072011(n+1))`
-/

namespace A195829.P12445309179871745213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (13 * A072011 (n + 1)).toNat

end

end A195829.P12445309179871745213

/-! ## A195829.P6631125700065450743

`A007814(lcm(13, A072011(n+1)))`
-/

namespace A195829.P6631125700065450743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm 13 (A072011 (n + 1)))

end

end A195829.P6631125700065450743

/-! ## A195829.P10056592954783469425

`val(A072011(n+1), ∑{e}[A071700(n+1), #])`
-/

namespace A195829.P10056592954783469425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072011 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A195829.P10056592954783469425

/-! ## A195829.P213136049855893652

`val(A072011(n+1), A020639(A007283(n)))`
-/

namespace A195829.P213136049855893652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072011 (n + 1)).toNat (A020639 (A007283 n).toNat).toNat

end

end A195829.P213136049855893652

/-! ## A195829.P14353769494048479215

`val(A072011(n+1), ∑{e}[A071697(n+5), #])`
-/

namespace A195829.P14353769494048479215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071697 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072011 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A195829.P14353769494048479215

/-!
# A195830: Triangle read by rows with T(n,k) = n - A074377(k), n>=1, k>=1, if (n - A074377(k))>=0.

The programs for A195830, there is no canonical definition to state claims against.
-/

/-! ## A195830.P3959910818926394430

`A025581(eq[1, A025581(A158405(n+1))])`
-/

namespace A195830.P3959910818926394430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195830.P3959910818926394430

/-!
# A195831: Triangle read by rows with T(n,k) = n - A195160(k), n>=1, k>=1, if (n - A195160(k))>=0.

The programs for A195831, there is no canonical definition to state claims against.
-/

/-! ## A195831.P9609283899538636101

`A122201(eq[1, A014963(A158405(n+1))])`
-/

namespace A195831.P9609283899538636101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A158405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195831.P9609283899538636101

/-!
# A195835: Leaders in the race of digits of Pi.

The programs for A195835, there is no canonical definition to state claims against.
-/

/-! ## A195835.P11718679460437531644

`A000796(A361434(n+1)-1)`
-/

namespace A195835.P11718679460437531644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A361434 (n + 1) - 1).toNat + 1)

end

end A195835.P11718679460437531644

/-! ## A195835.P16132328267889838634

`A123152(A361434(n+1))-A010684(2*n)`
-/

namespace A195835.P16132328267889838634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A361434 (n + 1)).toNat - A010684 (2 * n)

end

end A195835.P16132328267889838634

/-! ## A195835.P8777671895300775171

`A166931(n+1)%A123152(A361434(n+1))`
-/

namespace A195835.P8777671895300775171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A123152 (A361434 (n + 1)).toNat)

end

end A195835.P8777671895300775171

/-! ## A195835.P14332391590733970510

`A123152(A361434(n+1))+A033999(2*n+3)`
-/

namespace A195835.P14332391590733970510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (A361434 (n + 1)).toNat + A033999 (2 * n + 3)

end

end A195835.P14332391590733970510

/-! ## A195835.P9946917119922082146

`A176028(A361434(n+1))`
-/

namespace A195835.P9946917119922082146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176028 (A361434 (n + 1)).toNat

end

end A195835.P9946917119922082146

/-!
# A195836: Triangle read by rows which arises from A195826 in the same way as A175003 arises from A195310. Column k starts at row A000217(k).

The programs for A195836, there is no canonical definition to state claims against.
-/

/-! ## A195836.P10871869752318839319

`A195840(record[A032742(n+1)-A195830(n+1)])`
-/

namespace A195836.P10871869752318839319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) - A195830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195840 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A195836.P10871869752318839319

/-!
# A195837: Triangle read by rows which arises from A195827, in the same way as A175003 arises from A195310. Column k starts at row A085787(k).

The programs for A195837, there is no canonical definition to state claims against.
-/

/-! ## A195837.P532506573058919433

`A195840(A068585(n+2)-1)`
-/

namespace A195837.P532506573058919433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195840 (A068585 (n + 2) - 1).toNat

end

end A195837.P532506573058919433

/-! ## A195837.P6900373632403327604

`A195843(A214078(n)+n+1)`
-/

namespace A195837.P6900373632403327604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (A214078 n + (n + 1 : ℤ)).toNat

end

end A195837.P6900373632403327604

/-! ## A195837.P16056846960710488121

`A195838(A172985(n)+A044917(n+1))`
-/

namespace A195837.P16056846960710488121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195838 (A172985 n + A044917 (n + 1)).toNat

end

end A195837.P16056846960710488121

/-! ## A195837.P11922202571088040884

`A195838(A187829(n+1)+A172985(n))`
-/

namespace A195837.P11922202571088040884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195838 (A187829 (n + 1) + A172985 n).toNat

end

end A195837.P11922202571088040884

/-! ## A195837.P162133483531928015

`A295875(A286740(n))+A195839(n+3)`
-/

namespace A195837.P162133483531928015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295875 (A286740 n).toNat + A195839 (n + 3)

end

end A195837.P162133483531928015

/-!
# A195838: Triangle read by rows which arises from A195828, in the same way as A175003 arises from A195310. Column k starts at row A001082(k+1).

The programs for A195838, there is no canonical definition to state claims against.
-/

/-! ## A195838.P12855872464497203643

`A195843(A096304(n+1)+2)`
-/

namespace A195838.P12855872464497203643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (A096304 (n + 1) + 2).toNat

end

end A195838.P12855872464497203643

/-! ## A195838.P14399074955559443721

`A195839(lt[A264428(n), A166880(2*n+3)])`
-/

namespace A195838.P14399074955559443721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166880 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195839 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195838.P14399074955559443721

/-! ## A195838.P12999237511381888813

`A195841(A068585(n+1))`
-/

namespace A195838.P12999237511381888813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195841 (A068585 (n + 1)).toNat

end

end A195838.P12999237511381888813

/-! ## A195838.P3916275085387195696

`A195839(A172985(n)+A077342(n+1))`
-/

namespace A195838.P3916275085387195696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195839 (A172985 n + A077342 (n + 1)).toNat

end

end A195838.P3916275085387195696

/-! ## A195838.P13775661074077247429

`A195839(n+2)+A188170(A346994(n+5))`
-/

namespace A195838.P13775661074077247429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195839 (n + 2) + A188170 (A346994 (n + 5)).toNat

end

end A195838.P13775661074077247429

/-!
# A195839: Triangle read by rows which arises from A195829, in the same way as A175003 arises from A195310. Column k starts at row A118277(k).

The programs for A195839, there is no canonical definition to state claims against.
-/

/-! ## A195839.P3330539583795266472

`A195841(lt[1, A354802(3*n)])`
-/

namespace A195839.P3330539583795266472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354802 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A195839.P3330539583795266472

/-! ## A195839.P10194276589849967739

`A195842(n+4)%A000978(2*n+1)`
-/

namespace A195839.P10194276589849967739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195842 (n + 4)) (A000978 (2 * n + 1))

end

end A195839.P10194276589849967739

/-! ## A195839.P16898109334693718425

`A195843(n+5)%A335126(3*n+2)`
-/

namespace A195839.P16898109334693718425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195843 (n + 5)) (A335126 (3 * n + 2))

end

end A195839.P16898109334693718425

/-! ## A195839.P9018706529791009733

`A195842(n+4)%A004767(A000045(n))`
-/

namespace A195839.P9018706529791009733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195842 (n + 4)) (A004767 (A000045 n).toNat)

end

end A195839.P9018706529791009733

/-! ## A195839.P10495429037254320330

`A195843(n+5)%A223625(A250120(n))`
-/

namespace A195839.P10495429037254320330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195843 (n + 5)) (A223625 (A250120 n).toNat)

end

end A195839.P10495429037254320330

/-!
# A195840: Triangle read by rows which arises from A195830, in the same way as A175003 arises from A195310. Column k starts at row A074377(k).

The programs for A195840, there is no canonical definition to state claims against.
-/

/-! ## A195840.P13646561545348956870

`A195841(A243903(n+1)+1)`
-/

namespace A195840.P13646561545348956870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195841 (A243903 (n + 1) + 1).toNat

end

end A195840.P13646561545348956870

/-! ## A195840.P9186662953008808382

`A195841(A243903(n+2))`
-/

namespace A195840.P9186662953008808382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195841 (A243903 (n + 2)).toNat

end

end A195840.P9186662953008808382

/-! ## A195840.P12167961412186570774

`A195843(A153679(n+5)-1)`
-/

namespace A195840.P12167961412186570774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (A153679 (n + 5) - 1).toNat

end

end A195840.P12167961412186570774

/-! ## A195840.P15685835193855029406

`A195842(A153679(n+5)-2)`
-/

namespace A195840.P15685835193855029406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A153679 (n + 5) - 2).toNat

end

end A195840.P15685835193855029406

/-! ## A195840.P14335672272086749572

`A195842(n+3)%A139444(n+1)`
-/

namespace A195840.P14335672272086749572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195842 (n + 3)) (A139444 (n + 1))

end

end A195840.P14335672272086749572

/-!
# A195841: Triangle read by rows which arises from A195831, in the same way as A175003 arises from A195310. Column k starts at row A195160(k).

The programs for A195841, there is no canonical definition to state claims against.
-/

/-! ## A195841.P11280009406444976569

`A195842(∑[A143953(3*val(n+1, 3))]+1)`
-/

namespace A195841.P11280009406444976569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143953 (3 * SequenceMachineLib.valuation (n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A195841.P11280009406444976569

/-! ## A195841.P10706487852063844419

`A195842(A243903(n+1)+1)`
-/

namespace A195841.P10706487852063844419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A243903 (n + 1) + 1).toNat

end

end A195841.P10706487852063844419

/-! ## A195841.P2399253509289813857

`A195842(A243903(n+2))`
-/

namespace A195841.P2399253509289813857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A243903 (n + 2)).toNat

end

end A195841.P2399253509289813857

/-! ## A195841.P3349935279641776695

`A195842(A281873(n+2))`
-/

namespace A195841.P3349935279641776695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A281873 (n + 2)).toNat

end

end A195841.P3349935279641776695

/-! ## A195841.P13109884260226944108

`A195842(A153679(n+1)+1)`
-/

namespace A195841.P13109884260226944108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A153679 (n + 1) + 1).toNat

end

end A195841.P13109884260226944108

/-!
# A195842: Triangle read by rows which arises from A195832, in the same way as A175003 arises from A195310. Column k starts at row A195162(k).

The programs for A195842, there is no canonical definition to state claims against.
-/

/-! ## A195842.P16029485258843627613

`A195843(n+2)%A213300(n)`
-/

namespace A195842.P16029485258843627613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195843 (n + 2)) (A213300 n)

end

end A195842.P16029485258843627613

/-! ## A195842.P4981225299544898021

`A210954(n+3)%A092859(2*n+1)`
-/

namespace A195842.P4981225299544898021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210954 (n + 3)) (A092859 (2 * n + 1))

end

end A195842.P4981225299544898021

/-! ## A195842.P17353230525166326159

`A195843(n+2)+val(A250240(n+2), 9)`
-/

namespace A195842.P17353230525166326159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195843 (n + 2) + (SequenceMachineLib.valuation (A250240 (n + 2)).toNat 9 : ℤ)

end

end A195842.P17353230525166326159

/-! ## A195842.P12860713168166155530

`A210954(n+3)+A000007(A000041(n))`
-/

namespace A195842.P12860713168166155530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210954 (n + 3) + A000007 (A000041 n).toNat

end

end A195842.P12860713168166155530

/-! ## A195842.P11538000572421752792

`A210954(n+3)%A000040(A117433(n))`
-/

namespace A195842.P11538000572421752792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210954 (n + 3)) (A000040 (A117433 n).toNat)

end

end A195842.P11538000572421752792

/-!
# A195843: Triangle read by rows which arises from A195833, in the same way as A175003 arises from A195310. Column k starts at row A195313(k).

The programs for A195843, there is no canonical definition to state claims against.
-/

/-! ## A195843.P16011073393827562926

`A210954(n+2)%∑[A051994(2*n+3)]`
-/

namespace A195843.P16011073393827562926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051994 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210954 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195843.P16011073393827562926

/-! ## A195843.P16628047937077890754

`A210954(n+2)^A161618(A161618(n+2)^3+1)`
-/

namespace A195843.P16628047937077890754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210954 (n + 2) : ℚ) ^ (A161618 (A161618 (n + 2) ^ 3 + 1).toNat : ℤ)

end

end A195843.P16628047937077890754

/-! ## A195843.P12529309224547284347

`A161618(A161618(A161618(n+5)+1)+1)*A210954(n+2)`
-/

namespace A195843.P12529309224547284347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (A161618 (A161618 (n + 5) + 1).toNat + 1).toNat * A210954 (n + 2)

end

end A195843.P12529309224547284347

/-! ## A195843.P6934774081977936291

`A210954(∑[A161618(n+1)²²]+1)`
-/

namespace A195843.P6934774081977936291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161618 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210954 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A195843.P6934774081977936291

/-! ## A195843.P5355310229201827195

`A210954(n+2)+A010815(A007434(3*(n+1)))`
-/

namespace A195843.P5355310229201827195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210954 (n + 2) + A010815 (A007434 (3 * (n + 1))).toNat

end

end A195843.P5355310229201827195

/-!
# A195848: Expansion of 1 / f(-x^1, -x^5) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A195848, there is no canonical definition to state claims against.
-/

/-! ## A195848.P13568387624203857735

`A196933(A293292(n+1))%p?[A175458(n)]`
-/

namespace A195848.P13568387624203857735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196933 (A293292 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195848.P13568387624203857735

/-! ## A195848.P8718422503818835704

`A196933(A293292(n+1)%A256570(n+1))`
-/

namespace A195848.P8718422503818835704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (Int.tmod (A293292 (n + 1)) (A256570 (n + 1))).toNat

end

end A195848.P8718422503818835704

/-! ## A195848.P9901932434177462381

`A196933(A007091(n)%A328867(3*n+4))`
-/

namespace A195848.P9901932434177462381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (Int.tmod (A007091 n) (A328867 (3 * n + 4))).toNat

end

end A195848.P9901932434177462381

/-! ## A195848.P7146108555735259855

`A195851(lt[A342524(n+1), A111792(n+2)])`
-/

namespace A195848.P7146108555735259855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111792 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195848.P7146108555735259855

/-!
# A195849: Column 5 of array A195825. Also column 1 of triangle A195839. Also 1 together with the row sums of triangle A195839.

The programs for A195849, there is no canonical definition to state claims against.
-/

/-! ## A195849.P3170262426581253032

`A195850(eq[0, A106226(3*(n+1))])`
-/

namespace A195849.P3170262426581253032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106226 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195849.P3170262426581253032

/-! ## A195849.P13226377222830804368

`A195851(A037471(n))+A000122(A198014(n+1))`
-/

namespace A195849.P13226377222830804368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 (A037471 n).toNat + A000122 (A198014 (n + 1)).toNat

end

end A195849.P13226377222830804368

/-! ## A195849.P5065306952802696533

`A001222(A000043(n+1))*A195851(A037471(n))`
-/

namespace A195849.P5065306952802696533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A195851 (A037471 n).toNat

end

end A195849.P5065306952802696533

/-! ## A195849.P3928364093772625974

`A195850(lt[A268232(n+4), A268252(n+3)])`
-/

namespace A195849.P3928364093772625974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268232 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195850 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195849.P3928364093772625974

/-!
# A195850: Column 6 of array A195825. Also column 1 of triangle A195840. Also 1 together with the row sums of triangle A195840.

The programs for A195850, there is no canonical definition to state claims against.
-/

/-! ## A195850.P12595038524467359759

`A196933(A007093(n)-A332671(2*n+5))`
-/

namespace A195850.P12595038524467359759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (A007093 n - A332671 (2 * n + 5)).toNat

end

end A195850.P12595038524467359759

/-! ## A195850.P1633450657163118278

`A195851(A052382(n+1))%A306526(3*(n+2))`
-/

namespace A195850.P1633450657163118278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195851 (A052382 (n + 1)).toNat) (A306526 (3 * (n + 2)))

end

end A195850.P1633450657163118278

/-! ## A195850.P5552026612335442511

`A195851(A367733(n+1))%A306526(3*(n+2))`
-/

namespace A195850.P5552026612335442511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195851 (A367733 (n + 1)).toNat) (A306526 (3 * (n + 2)))

end

end A195850.P5552026612335442511

/-! ## A195850.P10691755058395579211

`A195851(lt[A317848(2*(n+1)), A126727(2*n+1)])`
-/

namespace A195850.P10691755058395579211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317848 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126727 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195850.P10691755058395579211

/-! ## A195850.P7214249417031511095

`A195851(lt[A074206(3*(n+1)), A329452(3*n+4)])`
-/

namespace A195850.P7214249417031511095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195850.P7214249417031511095

/-!
# A195851: Column 7 of array A195825. Also column 1 of triangle A195841. Also 1 together with the row sums of triangle A195841.

The programs for A195851, there is no canonical definition to state claims against.
-/

/-! ## A195851.P12038383446867464701

`A196933(A335462(2*n+3)+A007094(n))`
-/

namespace A195851.P12038383446867464701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (A335462 (2 * n + 3) + A007094 n).toNat

end

end A195851.P12038383446867464701

/-! ## A195851.P12397310796525528161

`A195852(A057366(3*n+2)%A374632(n))`
-/

namespace A195851.P12397310796525528161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195852 (Int.tmod (A057366 (3 * n + 2)) (A374632 n)).toNat

end

end A195851.P12397310796525528161

/-! ## A195851.P17678595260624460803

`A195852(lt[A073731(n), A073731(2*n+1)])`
-/

namespace A195851.P17678595260624460803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (2 * n + 1 + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195852 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195851.P17678595260624460803

/-! ## A195851.P14495283618463516004

`A195852(lt[A096684(n+1), A058949(2*n+5)])`
-/

namespace A195851.P14495283618463516004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058949 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195852 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195851.P14495283618463516004

/-! ## A195851.P10918876790761593793

`A195852(lt[A096684(n+1), A208815(2*n+5)])`
-/

namespace A195851.P10918876790761593793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208815 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195852 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195851.P10918876790761593793

/-!
# A195852: Column 8 of array A195825. Also column 1 of triangle A195842. Also 1 together with the row sums of triangle A195842.

The programs for A195852, there is no canonical definition to state claims against.
-/

/-! ## A195852.P11627337619296139484

`A196933(lt[A005657(2*n+1), A356842(n+1)])`
-/

namespace A195852.P11627337619296139484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005657 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195852.P11627337619296139484

/-! ## A195852.P10164258937847229524

`A196933(A007095(n)%∑[A350528(n+1)])`
-/

namespace A195852.P10164258937847229524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (Int.tmod (A007095 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A195852.P10164258937847229524

/-! ## A195852.P16977590956154445698

`A210964(A039255(n+1)%A270865(n+1))`
-/

namespace A195852.P16977590956154445698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210964 (Int.tmod (A039255 (n + 1)) (A270865 (n + 1))).toNat

end

end A195852.P16977590956154445698

/-! ## A195852.P1479863361039374007

`A196933(A007095(n))%A112368(A196933(n))`
-/

namespace A195852.P1479863361039374007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196933 (A007095 n).toNat) (A112368 (A196933 n).toNat)

end

end A195852.P1479863361039374007

/-! ## A195852.P1029546892251488554

`A196933(lt[A371074(2*(n+1)), A037162(3*(n+1))])`
-/

namespace A195852.P1029546892251488554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371074 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037162 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195852.P1029546892251488554

/-!
# A195855: a(n) = T(9,n), array T given by A048505.

The programs for A195855, the canonical program `A195855.P7137702860130382807` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195855 has offset 0).

The definition of A195855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195855.P7137702860130382807

`(n²+37*n+324)*2^(n-2)-80`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195855

/-- `(n²+37*n+324)*2^(n-2)-80` -/
def P7137702860130382807.Spec : Prop :=
  ∀ n, P7137702860130382807.a n = (A195855 n : ℚ)

end A195855

/-! ## A195855.P13622103457835296995

`A048505(eq[9, A002262(n)])`
-/

namespace A195855.P13622103457835296995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195855.P13622103457835296995

namespace A195855

/-- `A048505(eq[9, A002262(n)])` -/
def P13622103457835296995.Spec : Prop :=
  ∀ n, P13622103457835296995.a n = A195855 n

end A195855

/-! ## A195855.P13419392459241461694

`A048505(A167614(n+8)+6)`
-/

namespace A195855.P13419392459241461694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (A167614 (n + 8) + 6).toNat

end

end A195855.P13419392459241461694

namespace A195855

/-- `A048505(A167614(n+8)+6)` -/
def P13419392459241461694.Spec : Prop :=
  ∀ n, P13419392459241461694.a n = A195855 n

end A195855

/-! ## A195855.P9890556445037827029

`A048505(eq[9, A144328(n+1)])`
-/

namespace A195855.P9890556445037827029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195855.P9890556445037827029

namespace A195855

/-- `A048505(eq[9, A144328(n+1)])` -/
def P9890556445037827029.Spec : Prop :=
  ∀ n, P9890556445037827029.a n = A195855 n

end A195855

/-! ## A195855.P6600475513127364749

`A048505(eq[10, A002260(n+1)])`
-/

namespace A195855.P6600475513127364749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195855.P6600475513127364749

namespace A195855

/-- `A048505(eq[10, A002260(n+1)])` -/
def P6600475513127364749.Spec : Prop :=
  ∀ n, P6600475513127364749.a n = A195855 n

end A195855

/-!
# A195856: a(n) = T(10,n), array T given by A048505.

The programs for A195856, the canonical program `A195856.P4221495348972399100` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195856 has offset 0).

The definition of A195856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195856.P4221495348972399100

`(n²+41*n+400)*2^(n-2)-99`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195856

/-- `(n²+41*n+400)*2^(n-2)-99` -/
def P4221495348972399100.Spec : Prop :=
  ∀ n, P4221495348972399100.a n = (A195856 n : ℚ)

end A195856

/-! ## A195856.P1061674891138993289

`A048505(eq[10, A002262(n)])`
-/

namespace A195856.P1061674891138993289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195856.P1061674891138993289

namespace A195856

/-- `A048505(eq[10, A002262(n)])` -/
def P1061674891138993289.Spec : Prop :=
  ∀ n, P1061674891138993289.a n = A195856 n

end A195856

/-! ## A195856.P11689395079323979665

`A048505(eq[10, A144328(n+1)])`
-/

namespace A195856.P11689395079323979665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195856.P11689395079323979665

namespace A195856

/-- `A048505(eq[10, A144328(n+1)])` -/
def P11689395079323979665.Spec : Prop :=
  ∀ n, P11689395079323979665.a n = A195856 n

end A195856

/-! ## A195856.P8518629706756256986

`A048505(eq[11, A002260(n+1)])`
-/

namespace A195856.P8518629706756256986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195856.P8518629706756256986

namespace A195856

/-- `A048505(eq[11, A002260(n+1)])` -/
def P8518629706756256986.Spec : Prop :=
  ∀ n, P8518629706756256986.a n = A195856 n

end A195856

/-!
# A195857: a(n) = T(9,n), array T given by A047858.

The programs for A195857, the canonical program `A195857.P8571242274445653853` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195857 has offset 0).

The definition of A195857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195857.P8571242274445653853

`2^(n-1)*(n+18)-8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195857

/-- `2^(n-1)*(n+18)-8` -/
def P8571242274445653853.Spec : Prop :=
  ∀ n, P8571242274445653853.a n = (A195857 n : ℚ)

end A195857

/-! ## A195857.P3884154870539126306

`abs(8-A159697(n))`
-/

namespace A195857.P3884154870539126306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A159697 n|

end

end A195857.P3884154870539126306

namespace A195857

/-- `abs(8-A159697(n))` -/
def P3884154870539126306.Spec : Prop :=
  ∀ n, P3884154870539126306.a n = A195857 n

end A195857

/-! ## A195857.P7511051806153174045

`abs(A000225(n)-A195858(n))`
-/

namespace A195857.P7511051806153174045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A195858 n|

end

end A195857.P7511051806153174045

namespace A195857

/-- `abs(A000225(n)-A195858(n))` -/
def P7511051806153174045.Spec : Prop :=
  ∀ n, P7511051806153174045.a n = A195857 n

end A195857

/-! ## A195857.P14968025035472874238

`(A195858(n)+A048469(n))/2`
-/

namespace A195857.P14968025035472874238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195858 n + A048469 n : ℚ) / 2

end

end A195857.P14968025035472874238

namespace A195857

/-- `(A195858(n)+A048469(n))/2` -/
def P14968025035472874238.Spec : Prop :=
  ∀ n, P14968025035472874238.a n = (A195857 n : ℚ)

end A195857

/-! ## A195857.P14316118656912447991

`Δ[A159696(n)-A004770(n+1)]`
-/

namespace A195857.P14316118656912447991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159696 n - A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195857.P14316118656912447991

namespace A195857

/-- `Δ[A159696(n)-A004770(n+1)]` -/
def P14316118656912447991.Spec : Prop :=
  ∀ n, P14316118656912447991.a n = A195857 n

end A195857

/-!
# A195858: a(n) = T(10,n), array T given by A047858.

The programs for A195858, the canonical program `A195858.P4301879466863990736` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195858 has offset 0).

The definition of A195858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195858.P4301879466863990736

`2^(n-1)*(n+20)-9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195858

/-- `2^(n-1)*(n+20)-9` -/
def P4301879466863990736.Spec : Prop :=
  ∀ n, P4301879466863990736.a n = (A195858 n : ℚ)

end A195858

/-! ## A195858.P12381238582198590149

`abs(A185346(n)+A159697(n))`
-/

namespace A195858.P12381238582198590149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185346 n + A159697 n|

end

end A195858.P12381238582198590149

namespace A195858

/-- `abs(A185346(n)+A159697(n))` -/
def P12381238582198590149.Spec : Prop :=
  ∀ n, P12381238582198590149.a n = A195858 n

end A195858

/-! ## A195858.P14350050187925991512

`(A185346(n)+A159697(n))*A014963(15*(n+1))`
-/

namespace A195858.P14350050187925991512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185346 n + A159697 n) * A014963 (15 * (n + 1))

end

end A195858.P14350050187925991512

namespace A195858

/-- `(A185346(n)+A159697(n))*A014963(15*(n+1))` -/
def P14350050187925991512.Spec : Prop :=
  ∀ n, P14350050187925991512.a n = A195858 n

end A195858

/-! ## A195858.P7616169023807944783

`(A185346(n)+A159697(n))*A001222(A020483(n))`
-/

namespace A195858.P7616169023807944783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185346 n + A159697 n) * A001222 (A020483 n).toNat

end

end A195858.P7616169023807944783

namespace A195858

/-- `(A185346(n)+A159697(n))*A001222(A020483(n))` -/
def P7616169023807944783.Spec : Prop :=
  ∀ n, P7616169023807944783.a n = A195858 n

end A195858

/-! ## A195858.P12061520211590705026

`(A185346(n)+A159697(n))*A001222(A005145(n+1))`
-/

namespace A195858.P12061520211590705026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185346 n + A159697 n) * A001222 (A005145 (n + 1)).toNat

end

end A195858.P12061520211590705026

namespace A195858

/-- `(A185346(n)+A159697(n))*A001222(A005145(n+1))` -/
def P12061520211590705026.Spec : Prop :=
  ∀ n, P12061520211590705026.a n = A195858 n

end A195858

/-! ## A195858.P4179844130282130844

`(A185346(n)+A159697(n))*A001222(A042966(n+1))`
-/

namespace A195858.P4179844130282130844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185346 n + A159697 n) * A001222 (A042966 (n + 1)).toNat

end

end A195858.P4179844130282130844

namespace A195858

/-- `(A185346(n)+A159697(n))*A001222(A042966(n+1))` -/
def P4179844130282130844.Spec : Prop :=
  ∀ n, P4179844130282130844.a n = A195858 n

end A195858

/-! ## A195858.P4887833142460536224

`(A185346(n)+A159697(n))*A001221(A306220(n+1))`
-/

namespace A195858.P4887833142460536224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185346 n + A159697 n) * A001221 (A306220 (n + 1)).toNat

end

end A195858.P4887833142460536224

namespace A195858

/-- `(A185346(n)+A159697(n))*A001221(A306220(n+1))` -/
def P4887833142460536224.Spec : Prop :=
  ∀ n, P4887833142460536224.a n = A195858 n

end A195858

/-! ## A195858.P11346613664922677450

`(A185346(n)+A159697(n))*A001222(A144226(n+2))`
-/

namespace A195858.P11346613664922677450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A185346 n + A159697 n) * A001222 (A144226 (n + 2)).toNat

end

end A195858.P11346613664922677450

namespace A195858

/-- `(A185346(n)+A159697(n))*A001222(A144226(n+2))` -/
def P11346613664922677450.Spec : Prop :=
  ∀ n, P11346613664922677450.a n = A195858 n

end A195858

/-! ## A195858.P12449803369220956286

`abs(9-Δ[A195857(n)])`
-/

namespace A195858.P12449803369220956286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195857 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - (f1 (n + 1) - f1 n)|

end

end A195858.P12449803369220956286

namespace A195858

/-- `abs(9-Δ[A195857(n)])` -/
def P12449803369220956286.Spec : Prop :=
  ∀ n, P12449803369220956286.a n = A195858 n

end A195858

/-! ## A195858.P3007769186293577685

`Δ[A159697(n)-A016789(A016789(n))]`
-/

namespace A195858.P3007769186293577685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 n - A016789 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195858.P3007769186293577685

namespace A195858

/-- `Δ[A159697(n)-A016789(A016789(n))]` -/
def P3007769186293577685.Spec : Prop :=
  ∀ n, P3007769186293577685.a n = A195858 n

end A195858

/-! ## A195858.P5896082454692722859

`Δ[A079862(n)/2-(9*n-8)]`
-/

namespace A195858.P5896082454692722859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079862 (n + 10) : ℚ) / 2 - ((9 * n : ℤ) - 8 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195858.P5896082454692722859

namespace A195858

/-- `Δ[A079862(n)/2-(9*n-8)]` -/
def P5896082454692722859.Spec : Prop :=
  ∀ n, P5896082454692722859.a n = (A195858 n : ℚ)

end A195858

/-!
# A195859: a(n) = n^8-n.

The programs for A195859, the canonical program `A195859.P11499926218222609454` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195859 has offset 0).

The definition of A195859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8-n` (program `A195859.P11499926218222609454`, by `A195859.P11499926218222609454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195859.P11499926218222609454

`n^8-n`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195859

/-- `n^8-n` -/
def P11499926218222609454.Spec : Prop :=
  ∀ n, P11499926218222609454.a n = A195859 n

theorem P11499926218222609454.correct : P11499926218222609454.Spec := by
  intro n
  simp only [A195859]

end A195859

/-!
# A195861: Expansion of (psi(x) / phi(x))^5 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A195861, there is no canonical definition to state claims against.
-/

/-! ## A195861.P5627210850778215522

`(-1)^n*A001939(n)`
-/

namespace A195861.P5627210850778215522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001939 n

end

end A195861.P5627210850778215522

/-! ## A195861.P16844890848885980338

`A001939(n)*A033999(n)`
-/

namespace A195861.P16844890848885980338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001939 n * A033999 n

end

end A195861.P16844890848885980338

/-! ## A195861.P6985596948933526662

`A001939(n)/A033999(n+2)`
-/

namespace A195861.P6985596948933526662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A195861.P6985596948933526662

/-! ## A195861.P5906869056667102918

`A001939(n)/A001940(n)*A320049(n)`
-/

namespace A195861.P5906869056667102918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001939 n : ℚ) / (A001940 n : ℚ) * (A320049 n : ℚ)

end

end A195861.P5906869056667102918

/-! ## A195861.P6620917359150632211

`A001939(n)*A309873(n²+1)`
-/

namespace A195861.P6620917359150632211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001939 n * A309873 (n ^ 2 + 1)

end

end A195861.P6620917359150632211

/-! ## A195861.P13974098999746013203

`A001939(n)*A162511(A269906(n))`
-/

namespace A195861.P13974098999746013203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001939 n * A162511 (A269906 n).toNat

end

end A195861.P13974098999746013203

/-!
# A195864: Numbers k such that sigma(k) + tau(k) is a perfect number (A000396).

The programs for A195864, there is no canonical definition to state claims against.
-/

/-! ## A195864.P1995828218464512216

`A108779(n+1)+A052126(A290890(2*(n+1)))`
-/

namespace A195864.P1995828218464512216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108779 (n + 1) + A052126 (A290890 (2 * (n + 1))).toNat

end

end A195864.P1995828218464512216

/-!
# A195865: G.f. satisfies A(x) = exp( Sum_{n>=1} (A(x^n) + A(-x^n))/2 * x^n/n ).

The programs for A195865, there is no canonical definition to state claims against.
-/

/-! ## A195865.P3338324688921363379

`A094275(A222006(n))`
-/

namespace A195865.P3338324688921363379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A222006 n).toNat

end

end A195865.P3338324688921363379

/-! ## A195865.P6029717191843022478

`A098745(A258289(n))`
-/

namespace A195865.P6029717191843022478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098745 (A258289 n).toNat

end

end A195865.P6029717191843022478

/-! ## A195865.P763134341211083705

`A030223(n+1)-A037857(A006882(n))`
-/

namespace A195865.P763134341211083705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030223 (n + 1) - A037857 (A006882 n).toNat

end

end A195865.P763134341211083705

/-! ## A195865.P2815423803694527674

`A297861(A187187(n+1))+A194966(A222006(n))`
-/

namespace A195865.P2815423803694527674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297861 (A187187 (n + 1)).toNat + A194966 (A222006 n).toNat

end

end A195865.P2815423803694527674

/-!
# A195867: Positive integers c for which there is a 1-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195867, there is no canonical definition to state claims against.
-/

/-! ## A195867.P2908016821278421922

`A195795(lt[A196252(n+1), A195795(n+1)]+1)`
-/

namespace A195867.P2908016821278421922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195795 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A195867.P2908016821278421922

/-! ## A195867.P5432661539820192415

`A195795(lt[A196155(3*(n+1)), A195794(n+1)]+1)`
-/

namespace A195867.P5432661539820192415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195795 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A195867.P5432661539820192415

/-!
# A195868: Positive integers a for which there is a primitive 1-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195868, there is no canonical definition to state claims against.
-/

/-! ## A195868.P16707919728969218971

`A264827(3*n+1)%p?[A335034(n+1)]`
-/

namespace A195868.P16707919728969218971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264827 (3 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A195868.P16707919728969218971

/-! ## A195868.P35864744462242879

`A323186((n+2)²-1)+A264827(A016777(n))`
-/

namespace A195868.P35864744462242879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323186 ((n + 2) ^ 2 - 1) + A264827 (A016777 n).toNat

end

end A195868.P35864744462242879

/-! ## A195868.P9126904638172963551

`A020500(A147296(n+4))*A264827(3*n+1)`
-/

namespace A195868.P9126904638172963551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A147296 (n + 4)).toNat * A264827 (3 * n + 1)

end

end A195868.P9126904638172963551

/-!
# A195869: Positive integers b for which there is a primitive 1-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195869, there is no canonical definition to state claims against.
-/

/-! ## A195869.P11619916495281958734

`A264827(3*n+2)%A264821(A264872(n))`
-/

namespace A195869.P11619916495281958734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264827 (3 * n + 2)) (A264821 (A264872 n).toNat)

end

end A195869.P11619916495281958734

/-! ## A195869.P15137999300131147560

`A264827(3*n+2)+A010057(A022279(n+1))`
-/

namespace A195869.P15137999300131147560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264827 (3 * n + 2) + A010057 (A022279 (n + 1)).toNat

end

end A195869.P15137999300131147560

/-! ## A195869.P3292041332878209961

`A079978(A152759(n+2))*A264827(3*n+2)`
-/

namespace A195869.P3292041332878209961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A152759 (n + 2)).toNat * A264827 (3 * n + 2)

end

end A195869.P3292041332878209961

/-! ## A195869.P8724551312781280953

`A281116(A207872(2*n+1))+A264827(3*n+2)`
-/

namespace A195869.P8724551312781280953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A207872 (2 * n + 1)).toNat + A264827 (3 * n + 2)

end

end A195869.P8724551312781280953

/-! ## A195869.P9658518308406172482

`A281116(A075462(n+1))+A264827(3*n+2)`
-/

namespace A195869.P9658518308406172482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A075462 (n + 1)).toNat + A264827 (3 * n + 2)

end

end A195869.P9658518308406172482

/-!
# A195870: Positive integers c for which there is a primitive 1-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195870, there is no canonical definition to state claims against.
-/

/-! ## A195870.P8627778129371456557

`A264827(3*(n+1))%A264821(A264872(n))`
-/

namespace A195870.P8627778129371456557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264827 (3 * (n + 1))) (A264821 (A264872 n).toNat)

end

end A195870.P8627778129371456557

/-! ## A195870.P1777994961536477107

`A264827(3*n+3)+A000007(A005520(n+1))`
-/

namespace A195870.P1777994961536477107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264827 (3 * n + 3) + A000007 (A005520 (n + 1)).toNat

end

end A195870.P1777994961536477107

/-! ## A195870.P13517307131348564780

`or(A090172(A285030(n+1)), A264827(3*(n+1)))`
-/

namespace A195870.P13517307131348564780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090172 (A285030 (n + 1)).toNat) (A264827 (3 * (n + 1)))

end

end A195870.P13517307131348564780

/-! ## A195870.P17292530506631846653

`A264827(3*n+3)%A054566(A352810(n+1))`
-/

namespace A195870.P17292530506631846653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264827 (3 * n + 3)) (A054566 (A352810 (n + 1)).toNat)

end

end A195870.P17292530506631846653

/-! ## A195870.P493838763545414613

`A264827(record[A007953(3*(n+1))])`
-/

namespace A195870.P493838763545414613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A195870.P493838763545414613

/-!
# A195871: a(n) is the smallest prime(m) such that the interval (prime(m)*n, prime(m+1)*n) contains exactly one prime.

The programs for A195871, there is no canonical definition to state claims against.
-/

/-! ## A195871.P10171184271934141088

`A208238(A208202(n)^A208234(n+5))`
-/

namespace A195871.P10171184271934141088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208238 (SequenceMachineLib.roundAway ((A208202 n : ℚ) ^ (A208234 (n + 5) : ℤ))).toNat

end

end A195871.P10171184271934141088

/-!
# A195872: Positive integers a for which there is a (-1/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195872, there is no canonical definition to state claims against.
-/

/-! ## A195872.P8472651179073244369

`A347697(∑[dr(A347695(2*n+1))])`
-/

namespace A195872.P8472651179073244369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A347695 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195872.P8472651179073244369

/-! ## A195872.P4390163624688604702

`A070941((∏[2-n²%3]-1)*round(sqrt(2*n)))`
-/

namespace A195872.P4390163624688604702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 ((∏ j ∈ Finset.range (n + 1), f1 j - 1) * SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A195872.P4390163624688604702

/-! ## A195872.P1890685706511339520

`∑[A294935(A193286(2*(n+2)))]`
-/

namespace A195872.P1890685706511339520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (A193286 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195872.P1890685706511339520

/-! ## A195872.P11369912262792733533

`∑[A051731(A282230(n+5)+A006254(n+1))]`
-/

namespace A195872.P11369912262792733533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A282230 (n + 5) + A006254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195872.P11369912262792733533

/-! ## A195872.P14696930714364129824

`A097688(A263260(n))`
-/

namespace A195872.P14696930714364129824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097688 (A263260 n).toNat

end

end A195872.P14696930714364129824

/-!
# A195878: y-values in the solution to 7*x^2-6 = y^2.

The programs for A195878, the canonical program `A195878.P6216650662839200570` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195878 has offset 1).

The definition of A195878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195878.P6216650662839200570

`Δ[lcm(2, 3*a(n-1))-a(n-2)]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A195878

/-- `Δ[lcm(2, 3*a(n-1))-a(n-2)]` -/
def P6216650662839200570.Spec : Prop :=
  ∀ n, P6216650662839200570.a n = A195878 (n + 1)

theorem P6216650662839200570.correct : P6216650662839200570.Spec := by
  intro n
  simp only [A195878, Nat.add_sub_cancel]

end A195878

/-! ## A195878.P4583778277744569930

`2*A077401(n)+1`
-/

namespace A195878.P4583778277744569930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077401 n + 1

end

end A195878.P4583778277744569930

namespace A195878

/-- `2*A077401(n)+1` -/
def P4583778277744569930.Spec : Prop :=
  ∀ n, P4583778277744569930.a n = A195878 (n + 1)

end A195878

/-! ## A195878.P399199233516742249

`A202638(n+2)-A202638(A028310(n))`
-/

namespace A195878.P399199233516742249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (n + 2) - A202638 (A028310 n).toNat

end

end A195878.P399199233516742249

namespace A195878

/-- `A202638(n+2)-A202638(A028310(n))` -/
def P399199233516742249.Spec : Prop :=
  ∀ n, P399199233516742249.a n = A195878 (n + 1)

end A195878

/-! ## A195878.P273417961478081638

`Δ[A202638(n+1)+A202638(A028310(n))]`
-/

namespace A195878.P273417961478081638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (n + 1) + A202638 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195878.P273417961478081638

namespace A195878

/-- `Δ[A202638(n+1)+A202638(A028310(n))]` -/
def P273417961478081638.Spec : Prop :=
  ∀ n, P273417961478081638.a n = A195878 (n + 1)

end A195878

/-! ## A195878.P12656209517450865649

`A202638(n+2)-A202638(A065033(2*n))`
-/

namespace A195878.P12656209517450865649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (n + 2) - A202638 (A065033 (2 * n)).toNat

end

end A195878.P12656209517450865649

namespace A195878

/-- `A202638(n+2)-A202638(A065033(2*n))` -/
def P12656209517450865649.Spec : Prop :=
  ∀ n, P12656209517450865649.a n = A195878 (n + 1)

end A195878

/-! ## A195878.P8999952121174075147

`A202638(n+4)%A202638(n+2)`
-/

namespace A195878.P8999952121174075147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202638 (n + 4)) (A202638 (n + 2))

end

end A195878.P8999952121174075147

namespace A195878

/-- `A202638(n+4)%A202638(n+2)` -/
def P8999952121174075147.Spec : Prop :=
  ∀ n, P8999952121174075147.a n = A195878 (n + 1)

end A195878

/-!
# A195879: Positive integers a for which there is a (1/2)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195879, there is no canonical definition to state claims against.
-/

/-! ## A195879.P10098614177995955041

`A000194(or(6, p?[A172000(n+1)]))`
-/

namespace A195879.P10098614177995955041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lor 6 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A195879.P10098614177995955041

/-! ## A195879.P8529545312838882040

`A001462(A359908(3*(n+1))-A359908(n+1))`
-/

namespace A195879.P8529545312838882040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A359908 (3 * (n + 1)) - A359908 (n + 1)).toNat

end

end A195879.P8529545312838882040

/-! ## A195879.P8419455671214913248

`A001462(eq[n, A131390(n+1)])`
-/

namespace A195879.P8419455671214913248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195879.P8419455671214913248

/-! ## A195879.P2221085849295168614

`A026819(A333228(3*n+5)-A061775(n+3))`
-/

namespace A195879.P2221085849295168614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A333228 (3 * n + 5) - A061775 (n + 3)).toNat

end

end A195879.P2221085849295168614

/-! ## A195879.P14969298027542094191

`A085423(A064392(n+2))`
-/

namespace A195879.P14969298027542094191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (A064392 (n + 2)).toNat

end

end A195879.P14969298027542094191

/-!
# A195885: Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <=2.

The programs for A195885, there is no canonical definition to state claims against.
-/

/-! ## A195885.P9809356068370599283

`A195892(∑[n+1])`
-/

namespace A195885.P9809356068370599283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195885.P9809356068370599283

/-! ## A195885.P8460991891043541742

`or(1, A195892(A000217(n+1)))`
-/

namespace A195885.P8460991891043541742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195892 (A000217 (n + 1)).toNat)

end

end A195885.P8460991891043541742

/-! ## A195885.P3525128185677397379

`A195892(A025747(n))%A271027(n)`
-/

namespace A195885.P3525128185677397379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195892 (A025747 n).toNat) (A271027 n)

end

end A195885.P3525128185677397379

/-!
# A195886: Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <=8.

The programs for A195886, there is no canonical definition to state claims against.
-/

/-! ## A195886.P12232074706063691855

`A195892(∑[n+2])`
-/

namespace A195886.P12232074706063691855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195886.P12232074706063691855

/-! ## A195886.P9152663247633697536

`A195851(n)*A195892(A101881(2*n+1))`
-/

namespace A195886.P9152663247633697536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 n * A195892 (A101881 (2 * n + 1)).toNat

end

end A195886.P9152663247633697536

/-! ## A195886.P15359974934105869228

`A195852(n)*A195892(A101881(2*n+1))`
-/

namespace A195886.P15359974934105869228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195852 n * A195892 (A101881 (2 * n + 1)).toNat

end

end A195886.P15359974934105869228

/-! ## A195886.P13119841666284151743

`A195892(A101881(2*n+1))%A195894(n+1)`
-/

namespace A195886.P13119841666284151743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195892 (A101881 (2 * n + 1)).toNat) (A195894 (n + 1))

end

end A195886.P13119841666284151743

/-!
# A195887: Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <=18.

The programs for A195887, there is no canonical definition to state claims against.
-/

/-! ## A195887.P4187297845774737738

`A195892(∑[n+3]+1)`
-/

namespace A195887.P4187297845774737738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195887.P4187297845774737738

/-! ## A195887.P394428162230407923

`A195892(A034856(n+2))+A086080(n)`
-/

namespace A195887.P394428162230407923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A034856 (n + 2)).toNat + A086080 n

end

end A195887.P394428162230407923

/-! ## A195887.P15365669167758031255

`A014152(n)*A195892(A034856(n+2))`
-/

namespace A195887.P15365669167758031255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014152 n * A195892 (A034856 (n + 2)).toNat

end

end A195887.P15365669167758031255

/-!
# A195888: Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <=32.

The programs for A195888, there is no canonical definition to state claims against.
-/

/-! ## A195888.P10704170271560286771

`A195892(record[a(n-1)+n])` with `a(0)=8, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A195888.P10704170271560286771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 1, 2, 4, 7] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A195888.P10704170271560286771

/-! ## A195888.P15020946226806358584

`A195892(A141214(n+1))`
-/

namespace A195888.P15020946226806358584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A141214 (n + 1)).toNat

end

end A195888.P15020946226806358584

/-! ## A195888.P955061105216924370

`A195892(A027379(n+2))`
-/

namespace A195888.P955061105216924370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A027379 (n + 2)).toNat

end

end A195888.P955061105216924370

/-!
# A195889: Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <=50.

The programs for A195889, there is no canonical definition to state claims against.
-/

/-! ## A195889.P5446617970284438440

`A195892(Δ[A264443(n)])`
-/

namespace A195889.P5446617970284438440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (f1 (n + 1) - f1 n).toNat

end

end A195889.P5446617970284438440

/-!
# A195890: Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <=72.

The programs for A195890, there is no canonical definition to state claims against.
-/

/-! ## A195890.P7060517896185719750

`A195892(A052905(n+3))`
-/

namespace A195890.P7060517896185719750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A052905 (n + 3)).toNat

end

end A195890.P7060517896185719750

/-!
# A195892: T(n,k) = Number of lower triangles of an n X n integer array with all row and column sums zero and all row and column sums of squares <= 2k^2.

The programs for A195892, there is no canonical definition to state claims against.
-/

/-! ## A195892.P5514986085961152702

`A195522(n+1)%A119714(A003714(n+2))`
-/

namespace A195892.P5514986085961152702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195522 (n + 1)) (A119714 (A003714 (n + 2)).toNat)

end

end A195892.P5514986085961152702

/-! ## A195892.P5404268774690405466

`A195522(n+1)%A217916(A217925(n))`
-/

namespace A195892.P5404268774690405466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195522 (n + 1)) (A217916 (A217925 n).toNat)

end

end A195892.P5404268774690405466

/-!
# A195893: Number of lower triangles of a 5X5 integer array with all row and column sums zero and all row and column sums of squares <= 2n^2.

The programs for A195893, there is no canonical definition to state claims against.
-/

/-! ## A195893.P2759442360911955215

`A195892(A167499(n+3))`
-/

namespace A195893.P2759442360911955215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A167499 (n + 3)).toNat

end

end A195893.P2759442360911955215

/-! ## A195893.P7788956642164444004

`A195892(A155212(n)+13)`
-/

namespace A195893.P7788956642164444004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A155212 n + 13).toNat

end

end A195893.P7788956642164444004

/-!
# A195894: Number of lower triangles of a 6X6 integer array with all row and column sums zero and all row and column sums of squares <= 2n^2.

The programs for A195894, there is no canonical definition to state claims against.
-/

/-! ## A195894.P14977890311955015048

`A195892(A056115(n)+21)`
-/

namespace A195894.P14977890311955015048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (A056115 n + 21).toNat

end

end A195894.P14977890311955015048

/-!
# A195895: E.g.f. satisfies: A(x) = exp(-1) * Sum_{n>=0} exp(x*A(x)^n)/n!.

The programs for A195895, there is no canonical definition to state claims against.
-/

/-! ## A195895.P6108427593201530123

`A028310(A166909(n)-A000435(n+1))`
-/

namespace A195895.P6108427593201530123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A166909 n - A000435 (n + 1)).toNat

end

end A195895.P6108427593201530123

/-! ## A195895.P10409570553791193652

`A098181(A006963(n+1)-A319189(n))`
-/

namespace A195895.P10409570553791193652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A006963 (n + 1) - A319189 n).toNat

end

end A195895.P10409570553791193652

/-!
# A195896: Numbers of the form 2*p-1 or 3*p-1 where p is 1 or a prime.

The programs for A195896, the canonical program `A195896.P14358306679495744766` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195896 has offset 1).

The definition of A195896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195896.P14358306679495744766

`∪[A001747(n+1), A112773(n+1)]-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A195896

/-- `∪[A001747(n+1), A112773(n+1)]-1` -/
def P14358306679495744766.Spec : Prop :=
  ∀ n, P14358306679495744766.a n = A195896 (n + 1)

theorem P14358306679495744766.correct : P14358306679495744766.Spec := by
  intro n
  simp only [A195896, Nat.add_sub_cancel]

end A195896

/-! ## A195896.P3681449376528754649

`lt[a(floor(n/A006530(n+1)))+1, 2]` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A195896.P3681449376528754649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195896.P3681449376528754649

namespace A195896

/-- `lt[a(floor(n/A006530(n+1)))+1, 2]` -/
def P3681449376528754649.Spec : Prop :=
  ∀ n, (P3681449376528754649.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P16590247631359829135

`∩[A047255(n+1), A196127(n+1)]`
-/

namespace A195896.P16590247631359829135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195896.P16590247631359829135

namespace A195896

/-- `∩[A047255(n+1), A196127(n+1)]` -/
def P16590247631359829135.Spec : Prop :=
  ∀ n, (P16590247631359829135.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P15829711760162895656

`eq[1, 37%A068794(n+1)]`
-/

namespace A195896.P15829711760162895656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 37 (A068794 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195896.P15829711760162895656

namespace A195896

/-- `eq[1, 37%A068794(n+1)]` -/
def P15829711760162895656.Spec : Prop :=
  ∀ n, (P15829711760162895656.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P3507338407383293605

`eq[gcd(2, n), A346698(2*(n+1))]`
-/

namespace A195896.P3507338407383293605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195896.P3507338407383293605

namespace A195896

/-- `eq[gcd(2, n), A346698(2*(n+1))]` -/
def P3507338407383293605.Spec : Prop :=
  ∀ n, (P3507338407383293605.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P1832188689694884170

`eq[or(1, n)+1-n, A346698(n+2+n)]`
-/

namespace A195896.P1832188689694884170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (1 - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P1832188689694884170

namespace A195896

/-- `eq[or(1, n)+1-n, A346698(n+2+n)]` -/
def P1832188689694884170.Spec : Prop :=
  ∀ n, (P1832188689694884170.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P8944395036723482016

`eq[A060278(n+1), A232991(n)]`
-/

namespace A195896.P8944395036723482016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P8944395036723482016

namespace A195896

/-- `eq[A060278(n+1), A232991(n)]` -/
def P8944395036723482016.Spec : Prop :=
  ∀ n, (P8944395036723482016.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P17962655288906920233

`eq[A071281(n), A305804(n+1)]`
-/

namespace A195896.P17962655288906920233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P17962655288906920233

namespace A195896

/-- `eq[A071281(n), A305804(n+1)]` -/
def P17962655288906920233.Spec : Prop :=
  ∀ n, (P17962655288906920233.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P14032152029735490845

`eq[A176059(n), A347043(n+1)]`
-/

namespace A195896.P14032152029735490845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P14032152029735490845

namespace A195896

/-- `eq[A176059(n), A347043(n+1)]` -/
def P14032152029735490845.Spec : Prop :=
  ∀ n, (P14032152029735490845.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P6100193186369842666

`eq[A014673(n+1), A133419(n+1)]`
-/

namespace A195896.P6100193186369842666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P6100193186369842666

namespace A195896

/-- `eq[A014673(n+1), A133419(n+1)]` -/
def P6100193186369842666.Spec : Prop :=
  ∀ n, (P6100193186369842666.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P9294046101300437362

`eq[A085392(n+1), A133419(n+1)]`
-/

namespace A195896.P9294046101300437362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P9294046101300437362

namespace A195896

/-- `eq[A085392(n+1), A133419(n+1)]` -/
def P9294046101300437362.Spec : Prop :=
  ∀ n, (P9294046101300437362.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P7443249760631961562

`eq[A101606(n+1), A123565(n+1)]`
-/

namespace A195896.P7443249760631961562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P7443249760631961562

namespace A195896

/-- `eq[A101606(n+1), A123565(n+1)]` -/
def P7443249760631961562.Spec : Prop :=
  ∀ n, (P7443249760631961562.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P2969724093377460151

`eq[A060278(n+1), A167356(n+1)]`
-/

namespace A195896.P2969724093377460151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P2969724093377460151

namespace A195896

/-- `eq[A060278(n+1), A167356(n+1)]` -/
def P2969724093377460151.Spec : Prop :=
  ∀ n, (P2969724093377460151.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P9342166244862529348

`eq[A054576(n+1), A175307(n+1)]`
-/

namespace A195896.P9342166244862529348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P9342166244862529348

namespace A195896

/-- `eq[A054576(n+1), A175307(n+1)]` -/
def P9342166244862529348.Spec : Prop :=
  ∀ n, (P9342166244862529348.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P4507061533560820827

`eq[A063928(n+1), A175307(n+1)]`
-/

namespace A195896.P4507061533560820827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P4507061533560820827

namespace A195896

/-- `eq[A063928(n+1), A175307(n+1)]` -/
def P4507061533560820827.Spec : Prop :=
  ∀ n, (P4507061533560820827.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P14410427065738708237

`eq[A122179(n+1), A123565(n+1)]`
-/

namespace A195896.P14410427065738708237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P14410427065738708237

namespace A195896

/-- `eq[A122179(n+1), A123565(n+1)]` -/
def P14410427065738708237.Spec : Prop :=
  ∀ n, (P14410427065738708237.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P6122325668947111332

`eq[A101606(n+1), A167356(n+1)]`
-/

namespace A195896.P6122325668947111332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P6122325668947111332

namespace A195896

/-- `eq[A101606(n+1), A167356(n+1)]` -/
def P6122325668947111332.Spec : Prop :=
  ∀ n, (P6122325668947111332.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P7086430528849761369

`eq[A101040(n+1), A175307(n+1)]`
-/

namespace A195896.P7086430528849761369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P7086430528849761369

namespace A195896

/-- `eq[A101040(n+1), A175307(n+1)]` -/
def P7086430528849761369.Spec : Prop :=
  ∀ n, (P7086430528849761369.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P15756638559986896868

`eq[A102097(n+1), A175307(n+1)]`
-/

namespace A195896.P15756638559986896868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P15756638559986896868

namespace A195896

/-- `eq[A102097(n+1), A175307(n+1)]` -/
def P15756638559986896868.Spec : Prop :=
  ∀ n, (P15756638559986896868.a n : ℤ) = A195896 (n + 1)

end A195896

/-! ## A195896.P680923055915177446

`eq[A122179(n+1), A167356(n+1)]`
-/

namespace A195896.P680923055915177446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195896.P680923055915177446

namespace A195896

/-- `eq[A122179(n+1), A167356(n+1)]` -/
def P680923055915177446.Spec : Prop :=
  ∀ n, (P680923055915177446.a n : ℤ) = A195896 (n + 1)

end A195896

/-!
# A195899: Number of nXnXn 0..6 triangular arrays with each element x equal to the number its neighbors equal to 2,0,1,0,0,0,0 for x=0,1,2,3,4,5,6.

The programs for A195899, there is no canonical definition to state claims against.
-/

/-! ## A195899.P15619104770646401150

`A074148(n+1)+A047277(A140049(n))`
-/

namespace A195899.P15619104770646401150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (n + 1) + A047277 (A140049 n).toNat

end

end A195899.P15619104770646401150

