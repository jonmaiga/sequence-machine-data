import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221201: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221201, the canonical program `A221201.P10782050544424429309` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221201 has offset 1).

The definition of A221201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221201.P10782050544424429309

`ogf((9x-53x^2+342x^4-124x^5-448x^6+256x^7)/(1-7x-14x^2+126x^3-504x^5+224x^6+448x^7-256x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221201

/-- `ogf((9x-53x^2+342x^4-124x^5-448x^6+256x^7)/(1-7x-14x^2+126x^3-504x^5+224x^6+448x^7-256x^8))` -/
def P10782050544424429309.Spec : Prop :=
  ∀ n, P10782050544424429309.a n = A221201 (n + 1)

theorem P10782050544424429309.correct : P10782050544424429309.Spec := by
  intro n
  simp only [A221201, Nat.add_sub_cancel]

end A221201

/-! ## A221201.P16060586645049738817

`A221200(∑[n+1]+2)`
-/

namespace A221201.P16060586645049738817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221201.P16060586645049738817

namespace A221201

/-- `A221200(∑[n+1]+2)` -/
def P16060586645049738817.Spec : Prop :=
  ∀ n, P16060586645049738817.a n = A221201 (n + 1)

end A221201

/-! ## A221201.P16569447390145370301

`record[A221200(A133263(∑{e}[n, #]))]`
-/

namespace A221201.P16569447390145370301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221201.P16569447390145370301

namespace A221201

/-- `record[A221200(A133263(∑{e}[n, #]))]` -/
def P16569447390145370301.Spec : Prop :=
  ∀ n, P16569447390145370301.a n = A221201 (n + 1)

end A221201

/-! ## A221201.P1962761769581931005

`record[A221200(n+3)/A051380(n)]`
-/

namespace A221201.P1962761769581931005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221200 (n + 3) : ℚ) / (A051380 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221201.P1962761769581931005

namespace A221201

/-- `record[A221200(n+3)/A051380(n)]` -/
def P1962761769581931005.Spec : Prop :=
  ∀ n, P1962761769581931005.a n = (A221201 (n + 1) : ℚ)

end A221201

/-!
# A221202: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221202, there is no canonical definition to state claims against.
-/

/-! ## A221202.P1032975957511921420

`A221200(∑[n+2]+4)`
-/

namespace A221202.P1032975957511921420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221202.P1032975957511921420

/-!
# A221203: Number of 4 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221203, there is no canonical definition to state claims against.
-/

/-! ## A221203.P950465767266009847

`A221200(A141214(n)+7)`
-/

namespace A221203.P950465767266009847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A141214 n + 7).toNat

end

end A221203.P950465767266009847

/-!
# A221204: Number of 5Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221204, there is no canonical definition to state claims against.
-/

/-! ## A221204.P8108570650852587095

`A221200(A167499(n+3))`
-/

namespace A221204.P8108570650852587095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221200 (A167499 (n + 3)).toNat

end

end A221204.P8108570650852587095

/-!
# A221205: a(n) is the nearest integer to sqrt(pi(10^n)) (see A006880).

The programs for A221205, the canonical program `A221205.P3574255995108441508` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221205 has offset 0).

The definition of A221205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221205.P3574255995108441508

`round(sqrt(A006880(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A221205

/-- `round(sqrt(A006880(n)))` -/
def P3574255995108441508.Spec : Prop :=
  ∀ n, P3574255995108441508.a n = A221205 n

theorem P3574255995108441508.correct : P3574255995108441508.Spec := by
  intro n
  simp only [A221205]

end A221205

/-! ## A221205.P1842652584005601173

`round(sqrt(∑[A006879(n)]))`
-/

namespace A221205.P1842652584005601173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A221205.P1842652584005601173

namespace A221205

/-- `round(sqrt(∑[A006879(n)]))` -/
def P1842652584005601173.Spec : Prop :=
  ∀ n, P1842652584005601173.a n = A221205 n

end A221205

/-! ## A221205.P9024412188038436236

`round(sqrt(A090226(n+1)-1))`
-/

namespace A221205.P9024412188038436236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090226 (n + 1) - 1 : ℝ))

end

end A221205.P9024412188038436236

namespace A221205

/-- `round(sqrt(A090226(n+1)-1))` -/
def P9024412188038436236.Spec : Prop :=
  ∀ n, P9024412188038436236.a n = A221205 n

theorem P9024412188038436236.correct : P9024412188038436236.Spec := by
  intro n
  simp only [A221205, Nat.add_sub_cancel, A221205.P9024412188038436236.a, A221205.P3574255995108441508.a, A006880, A006880.P1375622950831351857.a, A090226, A090226.P1073034422440432756.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A221205

/-! ## A221205.P17089372821139999031

`round(sqrt(A058289(n)-A058290(n)))`
-/

namespace A221205.P17089372821139999031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058289 n - A058290 n : ℝ))

end

end A221205.P17089372821139999031

namespace A221205

/-- `round(sqrt(A058289(n)-A058290(n)))` -/
def P17089372821139999031.Spec : Prop :=
  ∀ n, P17089372821139999031.a n = A221205 n

end A221205

/-! ## A221205.P1766307806217523803

`round(sqrt(A090226(n+1)))%A058289(n)`
-/

namespace A221205.P1766307806217523803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A090226 (n + 1) : ℝ))) (A058289 n)

end

end A221205.P1766307806217523803

namespace A221205

/-- `round(sqrt(A090226(n+1)))%A058289(n)` -/
def P1766307806217523803.Spec : Prop :=
  ∀ n, P1766307806217523803.a n = A221205 n

end A221205

/-!
# A221206: a(n) = nearest integer to sqrt(10^n/log(10^n)).

The programs for A221206, the canonical program `A221206.P13585945770861599822` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221206 has offset 1).

The definition of A221206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221206.P13585945770861599822

`round(sqrt(10^(n+1)/log(10^(n+1))))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221206

/-- `round(sqrt(10^(n+1)/log(10^(n+1))))` -/
def P13585945770861599822.Spec : Prop :=
  ∀ n, P13585945770861599822.a n = A221206 (n + 1)

theorem P13585945770861599822.correct : P13585945770861599822.Spec := by
  intro n
  simp only [A221206, Nat.add_sub_cancel]

end A221206

/-! ## A221206.P11706001169426407003

`row(floor(∑[A228065(n+1)]/2))+1`
-/

namespace A221206.P11706001169426407003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋.toNat + 1

end

end A221206.P11706001169426407003

namespace A221206

/-- `row(floor(∑[A228065(n+1)]/2))+1` -/
def P11706001169426407003.Spec : Prop :=
  ∀ n, (P11706001169426407003.a n : ℤ) = A221206 (n + 1)

end A221206

/-!
# A221212: Rounded area of distinct right triangles appearing in the unit golden spiral.

The programs for A221212, the canonical program `A221212.P12557449265820937602` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221212 has offset 1).

The definition of A221212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221212.P15248075190903158928

`ogf((1+3x+x^2-2x^3-2x^4+2x^6-x^8)/(1-3x^2+x^4))`
-/

namespace A221212.P15248075190903158928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1, -2, -2, 0, 2, 0, -1] [1, 0, -3, 0, 1] n

end

end A221212.P15248075190903158928

namespace A221212

/-- `ogf((1+3x+x^2-2x^3-2x^4+2x^6-x^8)/(1-3x^2+x^4))` -/
def P15248075190903158928.Spec : Prop :=
  ∀ n, P15248075190903158928.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P12557449265820937602

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=9, a(5)=18, a(6)=25, a(7)=47, a(8)=65`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221212

/-- `3*a(n-2)-a(n-4)` -/
def P12557449265820937602.Spec : Prop :=
  ∀ n, P12557449265820937602.a n = A221212 (n + 1)

theorem P12557449265820937602.correct : P12557449265820937602.Spec := by
  intro n
  simp only [A221212, Nat.add_sub_cancel]

end A221212

/-! ## A221212.P10755293034233145046

`round(A002878(n+1)/A109794(n+2))`
-/

namespace A221212.P10755293034233145046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002878 (n + 1) : ℚ) / (A109794 (n + 2) : ℚ))

end

end A221212.P10755293034233145046

namespace A221212

/-- `round(A002878(n+1)/A109794(n+2))` -/
def P10755293034233145046.Spec : Prop :=
  ∀ n, P10755293034233145046.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P4228796232326841534

`round(A005248(n+2)/A178766(n+4))`
-/

namespace A221212.P4228796232326841534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005248 (n + 2) : ℚ) / (A178766 (n + 4) : ℚ))

end

end A221212.P4228796232326841534

namespace A221212

/-- `round(A005248(n+2)/A178766(n+4))` -/
def P4228796232326841534.Spec : Prop :=
  ∀ n, P4228796232326841534.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P7943385298513905276

`round(A109794(2*n+3)/A109794(n+2))`
-/

namespace A221212.P7943385298513905276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109794 (2 * n + 3) : ℚ) / (A109794 (n + 2) : ℚ))

end

end A221212.P7943385298513905276

namespace A221212

/-- `round(A109794(2*n+3)/A109794(n+2))` -/
def P7943385298513905276.Spec : Prop :=
  ∀ n, P7943385298513905276.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P4473202520120080136

`round(A178766(2*n+5)/A178766(n+4))`
-/

namespace A221212.P4473202520120080136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178766 (2 * n + 5) : ℚ) / (A178766 (n + 4) : ℚ))

end

end A221212.P4473202520120080136

namespace A221212

/-- `round(A178766(2*n+5)/A178766(n+4))` -/
def P4473202520120080136.Spec : Prop :=
  ∀ n, P4473202520120080136.a n = A221212 (n + 1)

end A221212

/-! ## A221212.P14830851447116461135

`round(A001254(n+3)/A178766(n+6))`
-/

namespace A221212.P14830851447116461135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001254 (n + 3) : ℚ) / (A178766 (n + 6) : ℚ))

end

end A221212.P14830851447116461135

namespace A221212

/-- `round(A001254(n+3)/A178766(n+6))` -/
def P14830851447116461135.Spec : Prop :=
  ∀ n, P14830851447116461135.a n = A221212 (n + 1)

end A221212

/-!
# A221214: O.g.f.: Sum_{n>=0} (3*n+1)^(3*n+1) * exp(-(3*n+1)^3*x) * x^n / n!.

The programs for A221214, the canonical program `A221214.P7340984134801189700` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221214 has offset 0).

The definition of A221214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221214.P7340984134801189700

`1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*(3*#+1)^(3*n+1)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221214

/-- `1/n!*∑{#}[n, (-1)^(n-#)*C(n, #)*(3*#+1)^(3*n+1)]` -/
def P7340984134801189700.Spec : Prop :=
  ∀ n, P7340984134801189700.a n = (A221214 n : ℚ)

end A221214

/-! ## A221214.P11639186867371883321

`A282629(A051682(n+1))`
-/

namespace A221214.P11639186867371883321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282629 (A051682 (n + 1)).toNat

end

end A221214.P11639186867371883321

namespace A221214

/-- `A282629(A051682(n+1))` -/
def P11639186867371883321.Spec : Prop :=
  ∀ n, P11639186867371883321.a n = A221214 n

end A221214

/-!
# A221215: T(n,k)= ((n+k)^2-2*(n+k)+4-(n+3*k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

The programs for A221215, the canonical program `A221215.P247878274240375798` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221215 has offset 1).

The definition of A221215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221215.P247878274240375798

`(A003057(n+2)²-2*A003057(n+2)+4-(A002260(n+1)+3*A004736(n+1)-2)*(-1)^A003056(n))/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A221215

/-- `(A003057(n+2)²-2*A003057(n+2)+4-(A002260(n+1)+3*A004736(n+1)-2)*(-1)^A003056(n))/2` -/
def P247878274240375798.Spec : Prop :=
  ∀ n, P247878274240375798.a n = (A221215 (n + 1) : ℚ)

end A221215

/-! ## A221215.P4997049706287865009

`A211394(A056011(1+n))`
-/

namespace A221215.P4997049706287865009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A056011 (1 + n)).toNat

end

end A221215.P4997049706287865009

namespace A221215

/-- `A211394(A056011(1+n))` -/
def P4997049706287865009.Spec : Prop :=
  ∀ n, P4997049706287865009.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P8495059389116322631

`A211394(n+1)+A221217(n+1)-A221216(n+1)`
-/

namespace A221215.P8495059389116322631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + (A221217 (n + 1) - A221216 (n + 1))

end

end A221215.P8495059389116322631

namespace A221215

/-- `A211394(n+1)+A221217(n+1)-A221216(n+1)` -/
def P8495059389116322631.Spec : Prop :=
  ∀ n, P8495059389116322631.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P4815103740533546656

`A221216(row(n)-2*col(n)+n+1)`
-/

namespace A221215.P4815103740533546656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + (n + 1 : ℤ)).toNat

end

end A221215.P4815103740533546656

namespace A221215

/-- `A221216(row(n)-2*col(n)+n+1)` -/
def P4815103740533546656.Spec : Prop :=
  ∀ n, P4815103740533546656.a n = A221215 (n + 1)

end A221215

/-! ## A221215.P8036328072384329550

`A221217(A056023(n+1))`
-/

namespace A221215.P8036328072384329550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A056023 (n + 1)).toNat

end

end A221215.P8036328072384329550

namespace A221215

/-- `A221217(A056023(n+1))` -/
def P8036328072384329550.Spec : Prop :=
  ∀ n, P8036328072384329550.a n = A221215 (n + 1)

end A221215

/-!
# A221216: T(n,k) = ((n+k)^2-2*(n+k)+4-(3*n+k-2)*(-1)^(n+k))/2; n , k > 0, read by antidiagonals.

The programs for A221216, the canonical program `A221216.P17978926705714334363` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221216 has offset 1).

The definition of A221216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221216.P17978926705714334363

`(A003057(n+2)²-2*A003057(n+2)+4-(3*A002260(n+1)+A004736(n+1)-2)*(-1)^A003056(n))/2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A221216

/-- `(A003057(n+2)²-2*A003057(n+2)+4-(3*A002260(n+1)+A004736(n+1)-2)*(-1)^A003056(n))/2` -/
def P17978926705714334363.Spec : Prop :=
  ∀ n, P17978926705714334363.a n = (A221216 (n + 1) : ℚ)

end A221216

/-! ## A221216.P14442722052788917352

`A221217(A056011(n+1))`
-/

namespace A221216.P14442722052788917352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221217 (A056011 (n + 1)).toNat

end

end A221216.P14442722052788917352

namespace A221216

/-- `A221217(A056011(n+1))` -/
def P14442722052788917352.Spec : Prop :=
  ∀ n, P14442722052788917352.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P8860115410633589821

`A211394(n+1)+A221217(n+1)-A221215(n+1)`
-/

namespace A221216.P8860115410633589821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + (A221217 (n + 1) - A221215 (n + 1))

end

end A221216.P8860115410633589821

namespace A221216

/-- `A211394(n+1)+A221217(n+1)-A221215(n+1)` -/
def P8860115410633589821.Spec : Prop :=
  ∀ n, P8860115410633589821.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P2782222530500381396

`A221215((row(n)+1)²-n)`
-/

namespace A221216.P2782222530500381396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 ((SequenceMachineLib.triRow n + 1) ^ 2 - n)

end

end A221216.P2782222530500381396

namespace A221216

/-- `A221215((row(n)+1)²-n)` -/
def P2782222530500381396.Spec : Prop :=
  ∀ n, P2782222530500381396.a n = A221216 (n + 1)

end A221216

/-! ## A221216.P8837248938455296055

`A211394(A056023(n+1))`
-/

namespace A221216.P8837248938455296055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A056023 (n + 1)).toNat

end

end A221216.P8837248938455296055

namespace A221216

/-- `A211394(A056023(n+1))` -/
def P8837248938455296055.Spec : Prop :=
  ∀ n, P8837248938455296055.a n = A221216 (n + 1)

end A221216

/-!
# A221217: T(n,k) = ((n+k)^2-2*n+3-(n+k-1)*(1+2*(-1)^(n+k)))/2; n , k > 0, read by antidiagonals.

The programs for A221217, the canonical program `A221217.P1351444912851318689` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221217 has offset 1).

The definition of A221217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221217.P1351444912851318689

`(A003057(n+2)²-2*A002260(n+1)+3-A002024(n+1)*(1+2*(-1)^A003056(n)))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A221217

/-- `(A003057(n+2)²-2*A002260(n+1)+3-A002024(n+1)*(1+2*(-1)^A003056(n)))/2` -/
def P1351444912851318689.Spec : Prop :=
  ∀ n, P1351444912851318689.a n = (A221217 (n + 1) : ℚ)

end A221217

/-! ## A221217.P16599488605836988862

`A211394(n+1)+row(n)-2*col(n)`
-/

namespace A221217.P16599488605836988862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ))

end

end A221217.P16599488605836988862

namespace A221217

/-- `A211394(n+1)+row(n)-2*col(n)` -/
def P16599488605836988862.Spec : Prop :=
  ∀ n, P16599488605836988862.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P16203673833248222028

`A221216(A056011(n+1))`
-/

namespace A221217.P16203673833248222028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221216 (A056011 (n + 1)).toNat

end

end A221217.P16203673833248222028

namespace A221217

/-- `A221216(A056011(n+1))` -/
def P16203673833248222028.Spec : Prop :=
  ∀ n, P16203673833248222028.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P9319195554370161815

`A211394(n+1)+A114327(n)`
-/

namespace A221217.P9319195554370161815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (n + 1) + A114327 n

end

end A221217.P9319195554370161815

namespace A221217

/-- `A211394(n+1)+A114327(n)` -/
def P9319195554370161815.Spec : Prop :=
  ∀ n, P9319195554370161815.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P4151231481102629395

`A002061(or(1, A002024(n+1)))-n`
-/

namespace A221217.P4151231481102629395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Int.lor 1 (A002024 (n + 1))).toNat - (n : ℤ)

end

end A221217.P4151231481102629395

namespace A221217

/-- `A002061(or(1, A002024(n+1)))-n` -/
def P4151231481102629395.Spec : Prop :=
  ∀ n, P4151231481102629395.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P7082820724130078524

`A114327(n)+∑[1-A010816(n)]+1`
-/

namespace A221217.P7082820724130078524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221217.P7082820724130078524

namespace A221217

/-- `A114327(n)+∑[1-A010816(n)]+1` -/
def P7082820724130078524.Spec : Prop :=
  ∀ n, P7082820724130078524.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P17149288981943798372

`A038722(n+1)+A274093(n+1)+1`
-/

namespace A221217.P17149288981943798372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A274093 (n + 1) + 1)

end

end A221217.P17149288981943798372

namespace A221217

/-- `A038722(n+1)+A274093(n+1)+1` -/
def P17149288981943798372.Spec : Prop :=
  ∀ n, P17149288981943798372.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P3025531350332389884

`A038722(n+1)+A211394(n+1)-(n+1)`
-/

namespace A221217.P3025531350332389884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + (A211394 (n + 1) - (n + 1 : ℤ))

end

end A221217.P3025531350332389884

namespace A221217

/-- `A038722(n+1)+A211394(n+1)-(n+1)` -/
def P3025531350332389884.Spec : Prop :=
  ∀ n, P3025531350332389884.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P8590615177844010434

`A004736(n+1)+A211394(n+1)-A002260(n+1)`
-/

namespace A221217.P8590615177844010434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A211394 (n + 1) - A002260 (n + 1))

end

end A221217.P8590615177844010434

namespace A221217

/-- `A004736(n+1)+A211394(n+1)-A002260(n+1)` -/
def P8590615177844010434.Spec : Prop :=
  ∀ n, P8590615177844010434.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P10805290397498728889

`A221215(n+1)+A221216(n+1)-A211394(n+1)`
-/

namespace A221217.P10805290397498728889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (n + 1) + (A221216 (n + 1) - A211394 (n + 1))

end

end A221217.P10805290397498728889

namespace A221217

/-- `A221215(n+1)+A221216(n+1)-A211394(n+1)` -/
def P10805290397498728889.Spec : Prop :=
  ∀ n, P10805290397498728889.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P2846023146996917743

`A211394(A038722(n+1))`
-/

namespace A221217.P2846023146996917743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211394 (A038722 (n + 1)).toNat

end

end A221217.P2846023146996917743

namespace A221217

/-- `A211394(A038722(n+1))` -/
def P2846023146996917743.Spec : Prop :=
  ∀ n, P2846023146996917743.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P12127034717675780491

`A221215(A056023(n+1))`
-/

namespace A221217.P12127034717675780491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221215 (A056023 (n + 1)).toNat

end

end A221217.P12127034717675780491

namespace A221217

/-- `A221215(A056023(n+1))` -/
def P12127034717675780491.Spec : Prop :=
  ∀ n, P12127034717675780491.a n = A221217 (n + 1)

end A221217

/-! ## A221217.P4072491760166822591

`A280682(A280682(n+1)+A024000(n))+A024000(n)`
-/

namespace A221217.P4072491760166822591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280682 (A280682 (n + 1) + A024000 n).toNat + A024000 n

end

end A221217.P4072491760166822591

namespace A221217

/-- `A280682(A280682(n+1)+A024000(n))+A024000(n)` -/
def P4072491760166822591.Spec : Prop :=
  ∀ n, P4072491760166822591.a n = A221217 (n + 1)

end A221217

/-!
# A221220: Numbers with more than one prime factor such that concatenation of its prime factors (without multiplicity) is a prime.

The programs for A221220, there is no canonical definition to state claims against.
-/

/-! ## A221220.P5764655903132665290

`filter[A068998(1+n), A143731(#)]`
-/

namespace A221220.P5764655903132665290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A221220.P5764655903132665290

/-! ## A221220.P16205887464059642073

`∩[A024619(n+1), A068998(n+1)]`
-/

namespace A221220.P16205887464059642073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221220.P16205887464059642073

/-! ## A221220.P14416089245882233900

`∩[A068998(n+1), A361102(n+1)]`
-/

namespace A221220.P14416089245882233900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221220.P14416089245882233900

/-! ## A221220.P1667536688189463504

`filter[A209799(n+1), A143731(#)]`
-/

namespace A221220.P1667536688189463504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A221220.P1667536688189463504

/-! ## A221220.P6003190776211960171

`∩[A024619(n+1), A209799(n+1)]`
-/

namespace A221220.P6003190776211960171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221220.P6003190776211960171

/-!
# A221221: Where powerbacks and powertrains coincide.

The programs for A221221, there is no canonical definition to state claims against.
-/

/-! ## A221221.P6227853028731775472

`eq[A133048(n), A133500(n)]`
-/

namespace A221221.P6227853028731775472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221221.P6227853028731775472

/-! ## A221221.P12127837470453068923

`eq[A133500(A004086(n)), A133500(n)]`
-/

namespace A221221.P12127837470453068923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221221.P12127837470453068923

/-! ## A221221.P13591043375351969985

`lt[A002266(n), A054634(A098564(n+1))]`
-/

namespace A221221.P13591043375351969985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 (A098564 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221221.P13591043375351969985

/-! ## A221221.P2333665837059684525

`lt[A064834(n), A014963(A184392(n+1))]`
-/

namespace A221221.P2333665837059684525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A184392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221221.P2333665837059684525

/-! ## A221221.P18198903262621101160

`lt[A308903(n), A091690(A091690(n+5))]`
-/

namespace A221221.P18198903262621101160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091690 (A091690 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A221221.P18198903262621101160

/-!
# A221222: Threshold for the P(n)-avoidance vertex-coloring game with two colors and fixed tree size restriction, where P(n) denotes the path on n vertices (see the comments and reference for precise definition).

The programs for A221222, there is no canonical definition to state claims against.
-/

/-! ## A221222.P7284272758943271534

`C(xor(n, n+1), A298048(n+3))+(n+1)²`
-/

namespace A221222.P7284272758943271534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor n (n + 1)) (A298048 (n + 3)).toNat + (n + 1) ^ 2

end

end A221222.P7284272758943271534

/-! ## A221222.P10182509787460475300

`A025480(A185284(n+9))+(n+1)²`
-/

namespace A221222.P10182509787460475300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A185284 (n + 9)).toNat + ((n + 1) ^ 2 : ℤ)

end

end A221222.P10182509787460475300

/-! ## A221222.P1363284946651278920

`A280292(A196395(2*(n+1)))+(n+1)²`
-/

namespace A221222.P1363284946651278920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (A196395 (2 * (n + 1))).toNat + ((n + 1) ^ 2 : ℤ)

end

end A221222.P1363284946651278920

/-! ## A221222.P17498786390768889873

`A326582(2*n+1)+A227985(A285865(2*n+1))`
-/

namespace A221222.P17498786390768889873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326582 (2 * n + 1) + A227985 (A285865 (2 * n + 1)).toNat

end

end A221222.P17498786390768889873

/-! ## A221222.P4980143881102779739

`C(A072627(A008864(n+1)), A298048(n+3))+(n+1)²`
-/

namespace A221222.P4980143881102779739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072627 (A008864 (n + 1)).toNat).toNat (A298048 (n + 3)).toNat + (n + 1) ^ 2

end

end A221222.P4980143881102779739

/-!
# A221223: Number of n X 2 arrays of occupancy after each element stays put or moves to some king-move neighbor.

The programs for A221223, there is no canonical definition to state claims against.
-/

/-! ## A221223.P10440846707437653984

`ogf((3-10x+4x^2)/(1-15x+43x^2-10x^3))`
-/

namespace A221223.P10440846707437653984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 4] [1, -15, 43, -10] n

end

end A221223.P10440846707437653984

/-! ## A221223.P17228019585515881605

`15*a(n-1)-43*a(n-2)+10*a(n-3)` with `a(0)=3, a(1)=35, a(2)=400`
-/

namespace A221223.P17228019585515881605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 35, 400] fun n a =>
  15 * a (n - 1) - 43 * a (n - 2) + 10 * a (n - 3)

end

end A221223.P17228019585515881605

/-! ## A221223.P13265862456963750894

`A221225(∑[n+1]+2)`
-/

namespace A221223.P13265862456963750894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221225 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221223.P13265862456963750894

/-! ## A221223.P4092061385097050560

`record[A221179(n)*A221225(n+3)]`
-/

namespace A221223.P4092061385097050560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221179 n * A221225 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221223.P4092061385097050560

/-!
# A221224: Number of n X 3 arrays of occupancy after each element stays put or moves to some king-move neighbor.

The programs for A221224, there is no canonical definition to state claims against.
-/

/-! ## A221224.P7119093794462994433

`A221225(∑[n+2]+4)`
-/

namespace A221224.P7119093794462994433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221225 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221224.P7119093794462994433

/-! ## A221224.P7862357468491690957

`record[gcd(A221200(n+1), A221225(n+4))]`
-/

namespace A221224.P7862357468491690957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221225 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221224.P7862357468491690957

/-!
# A221226: Number of n X 2 arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221226, the canonical program `A221226.P1321115930323012988` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221226 has offset 1).

The definition of A221226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221226.P1321115930323012988

`ogf((1+4x-77x^2+204x^3-150x^4+28x^5+8x^6)/(1-15x+71x^2-123x^3+78x^4-14x^5+12x^6-8x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221226

/-- `ogf((1+4x-77x^2+204x^3-150x^4+28x^5+8x^6)/(1-15x+71x^2-123x^3+78x^4-14x^5+12x^6-8x^7))` -/
def P1321115930323012988.Spec : Prop :=
  ∀ n, P1321115930323012988.a n = A221226 (n + 1)

theorem P1321115930323012988.correct : P1321115930323012988.Spec := by
  intro n
  simp only [A221226, Nat.add_sub_cancel]

end A221226

/-! ## A221226.P512400991015847825

`A221229(∑[n+1]+2)`
-/

namespace A221226.P512400991015847825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221226.P512400991015847825

namespace A221226

/-- `A221229(∑[n+1]+2)` -/
def P512400991015847825.Spec : Prop :=
  ∀ n, P512400991015847825.a n = A221226 (n + 1)

end A221226

/-! ## A221226.P3754159589726064782

`A221345(∑[n+1]+2)`
-/

namespace A221226.P3754159589726064782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221226.P3754159589726064782

namespace A221226

/-- `A221345(∑[n+1]+2)` -/
def P3754159589726064782.Spec : Prop :=
  ∀ n, P3754159589726064782.a n = A221226 (n + 1)

end A221226

/-! ## A221226.P5800896764953139224

`record[A221345(A133263(∑{e}[n, #]))]`
-/

namespace A221226.P5800896764953139224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221345 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221226.P5800896764953139224

namespace A221226

/-- `record[A221345(A133263(∑{e}[n, #]))]` -/
def P5800896764953139224.Spec : Prop :=
  ∀ n, P5800896764953139224.a n = A221226 (n + 1)

end A221226

/-! ## A221226.P14640943839143392440

`record[gcd(A098825(n), A221229(n+1))]`
-/

namespace A221226.P14640943839143392440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221229 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221226.P14640943839143392440

namespace A221226

/-- `record[gcd(A098825(n), A221229(n+1))]` -/
def P14640943839143392440.Spec : Prop :=
  ∀ n, (P14640943839143392440.a n : ℤ) = A221226 (n + 1)

end A221226

/-!
# A221227: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221227, there is no canonical definition to state claims against.
-/

/-! ## A221227.P6469847318488163838

`A221229(∑[n+2]+4)`
-/

namespace A221227.P6469847318488163838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221227.P6469847318488163838

/-! ## A221227.P16827422535582587657

`record[gcd(A221200(n+1), A221229(n+4))]`
-/

namespace A221227.P16827422535582587657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221229 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221227.P16827422535582587657

/-!
# A221228: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221228, there is no canonical definition to state claims against.
-/

/-! ## A221228.P2416574464184071579

`A221229(∑[n+3]+7)`
-/

namespace A221228.P2416574464184071579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221228.P2416574464184071579

/-! ## A221228.P2507963665434407517

`record[A221229(A022561(2*n+5)-1)]`
-/

namespace A221228.P2507963665434407517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221229 (A022561 (2 * n + 5) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221228.P2507963665434407517

/-!
# A221229: T(n,k)=Number of nXk arrays of occupancy after each element moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221229, there is no canonical definition to state claims against.
-/

/-! ## A221229.P759298022706388575

`A221602(n+1)-A185037((2-n)²)`
-/

namespace A221229.P759298022706388575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221602 (n + 1) - A185037 ((2 - (n : ℤ)) ^ 2).toNat

end

end A221229.P759298022706388575

/-!
# A221230: Number of nX2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221230, there is no canonical definition to state claims against.
-/

/-! ## A221230.P10084044945559362411

`A221234(∑[1+n]+2)`
-/

namespace A221230.P10084044945559362411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221230.P10084044945559362411

/-! ## A221230.P10783653018689658245

`record[A010054(n)*A221234(n+2)]`
-/

namespace A221230.P10783653018689658245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221234 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P10783653018689658245

/-! ## A221230.P11212630409987639422

`record[gcd(A221234(n+1), A259776(n))]`
-/

namespace A221230.P11212630409987639422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221234 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P11212630409987639422

/-! ## A221230.P2754434854256997057

`record[gcd(A048993(n), A221234(n+2))]`
-/

namespace A221230.P2754434854256997057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A221234 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P2754434854256997057

/-! ## A221230.P9034414908663820629

`record[gcd(A201637(n), A221234(n+3))]`
-/

namespace A221230.P9034414908663820629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A201637 n) (A221234 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221230.P9034414908663820629

/-!
# A221231: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221231, there is no canonical definition to state claims against.
-/

/-! ## A221231.P12666304847801858174

`A221234(∑[n+2]+4)`
-/

namespace A221231.P12666304847801858174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221231.P12666304847801858174

/-! ## A221231.P6417346434860841067

`record[gcd(A221200(n+1), A221234(n+4))]`
-/

namespace A221231.P6417346434860841067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A221234 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221231.P6417346434860841067

/-!
# A221232: Number of nX4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221232, there is no canonical definition to state claims against.
-/

/-! ## A221232.P12408507357562921352

`A221234(∑[n+3]+7)`
-/

namespace A221232.P12408507357562921352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221232.P12408507357562921352

/-!
# A221233: Number of n X 5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221233, there is no canonical definition to state claims against.
-/

/-! ## A221233.P2874463985522607128

`A221234(A374005(n+1))`
-/

namespace A221233.P2874463985522607128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221234 (A374005 (n + 1)).toNat

end

end A221233.P2874463985522607128

/-!
# A221234: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221234, there is no canonical definition to state claims against.
-/

/-! ## A221234.P12252116810142863370

`A268423(n+1)-A000924(A038110(n+1))`
-/

namespace A221234.P12252116810142863370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (n + 1) - A000924 (A038110 (n + 1)).toNat

end

end A221234.P12252116810142863370

/-! ## A221234.P11668161753506155700

`A344838(A047260(n+1)*A203277(n+1))`
-/

namespace A221234.P11668161753506155700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (A047260 (n + 1) * A203277 (n + 1)).toNat

end

end A221234.P11668161753506155700

/-! ## A221234.P17695249928451598419

`A217028(n+1)-A033264(A064078(2*n+1))`
-/

namespace A221234.P17695249928451598419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217028 (n + 1) - A033264 (A064078 (2 * n + 1)).toNat

end

end A221234.P17695249928451598419

/-!
# A221235: Number of nonnegative integer arrays of length n summing to n without adjacent equal values.

The programs for A221235, there is no canonical definition to state claims against.
-/

/-! ## A221235.P11973680296268042918

`A106351(2*A253909(n))`
-/

namespace A221235.P11973680296268042918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (2 * A253909 n).toNat

end

end A221235.P11973680296268042918

/-! ## A221235.P10379022541321263555

`A221321(A056220(n+1))`
-/

namespace A221235.P10379022541321263555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A056220 (n + 1)).toNat

end

end A221235.P10379022541321263555

/-! ## A221235.P18198693909271964989

`A221321(A117625(n))`
-/

namespace A221235.P18198693909271964989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221321 (A117625 n).toNat

end

end A221235.P18198693909271964989

/-!
# A221236: Number of n X 2 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221236, the canonical program `A221236.P15419549683343200407` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221236 has offset 1).

The definition of A221236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221236.P15419549683343200407

`ogf((5x-2x^2-x^3)/(1-11x+23x^2+x^3-10x^4+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221236

/-- `ogf((5x-2x^2-x^3)/(1-11x+23x^2+x^3-10x^4+x^6))` -/
def P15419549683343200407.Spec : Prop :=
  ∀ n, P15419549683343200407.a n = A221236 (n + 1)

theorem P15419549683343200407.correct : P15419549683343200407.Spec := by
  intro n
  simp only [A221236, Nat.add_sub_cancel]

end A221236

/-! ## A221236.P546525284143609834

`record[n%2*A222160(n+1)]`
-/

namespace A221236.P546525284143609834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P546525284143609834

namespace A221236

/-- `record[n%2*A222160(n+1)]` -/
def P546525284143609834.Spec : Prop :=
  ∀ n, P546525284143609834.a n = A221236 (n + 1)

end A221236

/-! ## A221236.P17196984484142724560

`record[A000035(n)*A222160(n+1)]`
-/

namespace A221236.P17196984484142724560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P17196984484142724560

namespace A221236

/-- `record[A000035(n)*A222160(n+1)]` -/
def P17196984484142724560.Spec : Prop :=
  ∀ n, P17196984484142724560.a n = A221236 (n + 1)

end A221236

/-! ## A221236.P14136636207546290922

`record[A088705(n)*A222160(n+1)]`
-/

namespace A221236.P14136636207546290922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P14136636207546290922

namespace A221236

/-- `record[A088705(n)*A222160(n+1)]` -/
def P14136636207546290922.Spec : Prop :=
  ∀ n, P14136636207546290922.a n = A221236 (n + 1)

end A221236

/-! ## A221236.P13430648307491153131

`record[Δ[A004526(n)]*A222160(n+1)]`
-/

namespace A221236.P13430648307491153131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P13430648307491153131

namespace A221236

/-- `record[Δ[A004526(n)]*A222160(n+1)]` -/
def P13430648307491153131.Spec : Prop :=
  ∀ n, P13430648307491153131.a n = A221236 (n + 1)

end A221236

/-! ## A221236.P1065362620538374222

`record[char[A168056(n)]*A222160(n+1)]`
-/

namespace A221236.P1065362620538374222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221236.P1065362620538374222

namespace A221236

/-- `record[char[A168056(n)]*A222160(n+1)]` -/
def P1065362620538374222.Spec : Prop :=
  ∀ n, P1065362620538374222.a n = A221236 (n + 1)

end A221236

/-! ## A221236.P14725131228987893985

`A222160(A004277(n))-A000007(n)`
-/

namespace A221236.P14725131228987893985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222160 (A004277 n).toNat - A000007 n

end

end A221236.P14725131228987893985

namespace A221236

/-- `A222160(A004277(n))-A000007(n)` -/
def P14725131228987893985.Spec : Prop :=
  ∀ n, P14725131228987893985.a n = A221236 (n + 1)

end A221236

/-! ## A221236.P708493379356637035

`A057427(n)*A222160(A233583(2*n+1))`
-/

namespace A221236.P708493379356637035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222160 (A233583 (2 * n + 1)).toNat

end

end A221236.P708493379356637035

namespace A221236

/-- `A057427(n)*A222160(A233583(2*n+1))` -/
def P708493379356637035.Spec : Prop :=
  ∀ n, P708493379356637035.a n = A221236 (n + 1)

end A221236

/-!
# A221237: Number of nX3 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221237, there is no canonical definition to state claims against.
-/

/-! ## A221237.P7286647228387472922

`A221240(∑[n+2]+4)`
-/

namespace A221237.P7286647228387472922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221237.P7286647228387472922

/-! ## A221237.P2717995685460456558

`record[A010054(n)*A221240(n+3)]`
-/

namespace A221237.P2717995685460456558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221240 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221237.P2717995685460456558

/-!
# A221238: Number of n X 4 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221238, there is no canonical definition to state claims against.
-/

/-! ## A221238.P9579078950740439545

`A221240(A374004(n+1))`
-/

namespace A221238.P9579078950740439545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A374004 (n + 1)).toNat

end

end A221238.P9579078950740439545

/-! ## A221238.P11998264404756092322

`A221240(A141214(n+1))`
-/

namespace A221238.P11998264404756092322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A141214 (n + 1)).toNat

end

end A221238.P11998264404756092322

/-!
# A221239: Number of nX5 arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221239, there is no canonical definition to state claims against.
-/

/-! ## A221239.P14915050092686509318

`A221240(A374005(n+1))`
-/

namespace A221239.P14915050092686509318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (A374005 (n + 1)).toNat

end

end A221239.P14915050092686509318

/-! ## A221239.P13292295619181074855

`A221240(Δ[A264443(n)])`
-/

namespace A221239.P13292295619181074855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221240 (f1 (n + 1) - f1 n).toNat

end

end A221239.P13292295619181074855

/-!
# A221240: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, vertical or antidiagonal neighbor, without 2-loops.

The programs for A221240, there is no canonical definition to state claims against.
-/

/-! ## A221240.P5609919480860539337

`A140645(A022175(n))-1`
-/

namespace A221240.P5609919480860539337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140645 (A022175 n).toNat - 1

end

end A221240.P5609919480860539337

/-! ## A221240.P16775009970189777158

`A156023(A116469(n+1)+1)`
-/

namespace A221240.P16775009970189777158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156023 (A116469 (n + 1) + 1).toNat

end

end A221240.P16775009970189777158

/-! ## A221240.P9023513627644938977

`A155493(n)-A276625(A155467(n))`
-/

namespace A221240.P9023513627644938977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155493 n - A276625 (A155467 n).toNat

end

end A221240.P9023513627644938977

/-! ## A221240.P11690871829109084703

`A002264(A309748(n+1)+A156939(n))`
-/

namespace A221240.P11690871829109084703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A309748 (n + 1) + A156939 n).toNat

end

end A221240.P11690871829109084703

/-! ## A221240.P10252765549548595924

`A348029(A166591(A348972(A003959(A387419(n+1)))))`
-/

namespace A221240.P10252765549548595924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (A166591 (A348972 (A003959 (A387419 (n + 1)).toNat).toNat).toNat).toNat

end

end A221240.P10252765549548595924

/-!
# A221241: Number of n X 3 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221241, there is no canonical definition to state claims against.
-/

/-! ## A221241.P14569464006015394322

`ogf((2-10x)/(1-30x+222x^2-540x^3+324x^4))`
-/

namespace A221241.P14569464006015394322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10] [1, -30, 222, -540, 324] n

end

end A221241.P14569464006015394322

/-! ## A221241.P1749727715742114079

`A221245(∑[n+3]+1)`
-/

namespace A221241.P1749727715742114079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221241.P1749727715742114079

/-! ## A221241.P2103311595388958957

`record[A221245(A198464(n+1))]`
-/

namespace A221241.P2103311595388958957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221241.P2103311595388958957

/-! ## A221241.P6812424577023512202

`record[gcd(A113678(n+3), A221245(n+3))]`
-/

namespace A221241.P6812424577023512202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113678 (n + 3)) (A221245 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221241.P6812424577023512202

/-!
# A221242: Number of nX4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221242, there is no canonical definition to state claims against.
-/

/-! ## A221242.P6520866869516918285

`A221245(∑[n+4]+3)`
-/

namespace A221242.P6520866869516918285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221242.P6520866869516918285

/-!
# A221243: Number of n X 5 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221243, there is no canonical definition to state claims against.
-/

/-! ## A221243.P12549079934589052922

`A221245(Δ[A264443(n)])`
-/

namespace A221243.P12549079934589052922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (f1 (n + 1) - f1 n).toNat

end

end A221243.P12549079934589052922

/-!
# A221244: Number of nX6 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221244, there is no canonical definition to state claims against.
-/

/-! ## A221244.P4672380524713599013

`A221245(eq[6, A200370(n+1)])`
-/

namespace A221244.P4672380524713599013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221244.P4672380524713599013

/-!
# A221246: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221246, the canonical program `A221246.P9239531810731227253` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221246 has offset 1).

The definition of A221246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221246.P9239531810731227253

`ogf((9x-31x^2+34x^3-6x^4)/(1-9x+54x^3-36x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221246

/-- `ogf((9x-31x^2+34x^3-6x^4)/(1-9x+54x^3-36x^4))` -/
def P9239531810731227253.Spec : Prop :=
  ∀ n, P9239531810731227253.a n = A221246 (n + 1)

theorem P9239531810731227253.correct : P9239531810731227253.Spec := by
  intro n
  simp only [A221246, Nat.add_sub_cancel]

end A221246

/-! ## A221246.P1049739105350075372

`A221245(∑[n+1]+2)`
-/

namespace A221246.P1049739105350075372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221246.P1049739105350075372

namespace A221246

/-- `A221245(∑[n+1]+2)` -/
def P1049739105350075372.Spec : Prop :=
  ∀ n, P1049739105350075372.a n = A221246 (n + 1)

end A221246

/-! ## A221246.P2527822160646812073

`record[A221245(A133263(∑{e}[n, #]))]`
-/

namespace A221246.P2527822160646812073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221246.P2527822160646812073

namespace A221246

/-- `record[A221245(A133263(∑{e}[n, #]))]` -/
def P2527822160646812073.Spec : Prop :=
  ∀ n, P2527822160646812073.a n = A221246 (n + 1)

end A221246

/-!
# A221247: Number of 3Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221247, there is no canonical definition to state claims against.
-/

/-! ## A221247.P925284269362302982

`A221245(∑[n+2]+4)`
-/

namespace A221247.P925284269362302982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221247.P925284269362302982

/-!
# A221248: Number of 4 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221248, there is no canonical definition to state claims against.
-/

/-! ## A221248.P15719946952358520597

`A221245(A052905(n)+9)`
-/

namespace A221248.P15719946952358520597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A052905 n + 9).toNat

end

end A221248.P15719946952358520597

/-!
# A221249: Number of 5Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221249, there is no canonical definition to state claims against.
-/

/-! ## A221249.P17991291379106742212

`A221245(A167499(n+3))`
-/

namespace A221249.P17991291379106742212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221245 (A167499 (n + 3)).toNat

end

end A221249.P17991291379106742212

/-!
# A221250: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221250, there is no canonical definition to state claims against.
-/

/-! ## A221250.P1290788807551163892

`A221255((n+1)²+n²)`
-/

namespace A221250.P1290788807551163892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 ((n + 1) ^ 2 + n ^ 2)

end

end A221250.P1290788807551163892

/-!
# A221251: Number of nX4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221251, there is no canonical definition to state claims against.
-/

/-! ## A221251.P6103814798080432435

`A221255(A141214(n+1))`
-/

namespace A221251.P6103814798080432435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A141214 (n + 1)).toNat

end

end A221251.P6103814798080432435

/-!
# A221252: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221252, there is no canonical definition to state claims against.
-/

/-! ## A221252.P3293749689929632909

`A221255(Δ[A264443(n)])`
-/

namespace A221252.P3293749689929632909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (f1 (n + 1) - f1 n).toNat

end

end A221252.P3293749689929632909

/-!
# A221253: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221253, there is no canonical definition to state claims against.
-/

/-! ## A221253.P16906138214297414188

`A221255(A052905(n+3))`
-/

namespace A221253.P16906138214297414188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A052905 (n + 3)).toNat

end

end A221253.P16906138214297414188

/-!
# A221254: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221254, there is no canonical definition to state claims against.
-/

/-! ## A221254.P14309122213614445983

`A221255(eq[6, A193592(n)])`
-/

namespace A221254.P14309122213614445983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221254.P14309122213614445983

/-!
# A221256: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221256, the canonical program `A221256.P17562743064362326252` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221256 has offset 1).

The definition of A221256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221256.P17562743064362326252

`ogf((4x-16x^2+9x^3+26x^4-2x^5-6x^6+x^7)/(1-6x-6x^2+42x^3-42x^5+6x^6+6x^7-x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221256

/-- `ogf((4x-16x^2+9x^3+26x^4-2x^5-6x^6+x^7)/(1-6x-6x^2+42x^3-42x^5+6x^6+6x^7-x^8))` -/
def P17562743064362326252.Spec : Prop :=
  ∀ n, P17562743064362326252.a n = A221256 (n + 1)

theorem P17562743064362326252.correct : P17562743064362326252.Spec := by
  intro n
  simp only [A221256, Nat.add_sub_cancel]

end A221256

/-! ## A221256.P1511378859275963089

`A221255(∑[n+1]+2)`
-/

namespace A221256.P1511378859275963089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221256.P1511378859275963089

namespace A221256

/-- `A221255(∑[n+1]+2)` -/
def P1511378859275963089.Spec : Prop :=
  ∀ n, P1511378859275963089.a n = A221256 (n + 1)

end A221256

/-!
# A221257: Number of 3Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221257, there is no canonical definition to state claims against.
-/

/-! ## A221257.P12888483284681920910

`A221255(∑[n+2]+4)`
-/

namespace A221257.P12888483284681920910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221257.P12888483284681920910

/-!
# A221258: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221258, there is no canonical definition to state claims against.
-/

/-! ## A221258.P16269127586349256418

`A221255(A141214(n)+7)`
-/

namespace A221258.P16269127586349256418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A141214 n + 7).toNat

end

end A221258.P16269127586349256418

/-!
# A221259: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221259, there is no canonical definition to state claims against.
-/

/-! ## A221259.P244860107817135192

`A221255(A167499(n+3))`
-/

namespace A221259.P244860107817135192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A167499 (n + 3)).toNat

end

end A221259.P244860107817135192

/-!
# A221260: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221260, there is no canonical definition to state claims against.
-/

/-! ## A221260.P15879782569815757190

`A221255(A056115(n)+21)`
-/

namespace A221260.P15879782569815757190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A056115 n + 21).toNat

end

end A221260.P15879782569815757190

/-!
# A221261: Number of 7Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, with no occupancy greater than 2.

The programs for A221261, there is no canonical definition to state claims against.
-/

/-! ## A221261.P1461225185744279893

`A221255(A056119(n)+28)`
-/

namespace A221261.P1461225185744279893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221255 (A056119 n + 28).toNat

end

end A221261.P1461225185744279893

/-!
# A221264: Numbers having fewer distinct prime factors of form 4*k+1 than of 4*k+3.

The programs for A221264, the canonical program `A221264.P4587067024991218606` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221264 has offset 1).

The definition of A221264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221264.P4587067024991218606

`lt[A005094(1+n), 0]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A221264

/-- `lt[A005094(1+n), 0]+1` -/
def P4587067024991218606.Spec : Prop :=
  ∀ n, (P4587067024991218606.a n : ℤ) = A221264 (n + 1)

theorem P4587067024991218606.correct : P4587067024991218606.Spec := by
  intro n
  simp only [A221264, Nat.add_sub_cancel]

end A221264

/-! ## A221264.P3891320426027344265

`lt[A005094(A028310(n)), 0]`
-/

namespace A221264.P3891320426027344265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P3891320426027344265

namespace A221264

/-- `lt[A005094(A028310(n)), 0]` -/
def P3891320426027344265.Spec : Prop :=
  ∀ n, (P3891320426027344265.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P3721135507054477882

`A020725(lt[A005094(n+1), 0])`
-/

namespace A221264.P3721135507054477882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A221264.P3721135507054477882

namespace A221264

/-- `A020725(lt[A005094(n+1), 0])` -/
def P3721135507054477882.Spec : Prop :=
  ∀ n, P3721135507054477882.a n = A221264 (n + 1)

end A221264

/-! ## A221264.P5108896975984433269

`lt[A005094(A004277(n)), 0]`
-/

namespace A221264.P5108896975984433269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P5108896975984433269

namespace A221264

/-- `lt[A005094(A004277(n)), 0]` -/
def P5108896975984433269.Spec : Prop :=
  ∀ n, (P5108896975984433269.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P5979533602027697958

`lt[A005094(A008574(n)), 0]`
-/

namespace A221264.P5979533602027697958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A008574 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P5979533602027697958

namespace A221264

/-- `lt[A005094(A008574(n)), 0]` -/
def P5979533602027697958.Spec : Prop :=
  ∀ n, (P5979533602027697958.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P16951450601649865861

`lt[A005094(A022144(n)), 0]`
-/

namespace A221264.P16951450601649865861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022144 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P16951450601649865861

namespace A221264

/-- `lt[A005094(A022144(n)), 0]` -/
def P16951450601649865861.Spec : Prop :=
  ∀ n, (P16951450601649865861.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P1397139305966439016

`lt[A005094(A233583(n+1)), 0]`
-/

namespace A221264.P1397139305966439016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221264.P1397139305966439016

namespace A221264

/-- `lt[A005094(A233583(n+1)), 0]` -/
def P1397139305966439016.Spec : Prop :=
  ∀ n, (P1397139305966439016.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P11462697034072825807

`eq[A025435(n²), A293668(n)]`
-/

namespace A221264.P11462697034072825807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221264.P11462697034072825807

namespace A221264

/-- `eq[A025435(n²), A293668(n)]` -/
def P11462697034072825807.Spec : Prop :=
  ∀ n, (P11462697034072825807.a n : ℤ) = A221264 (n + 1)

end A221264

/-! ## A221264.P12095809292408394489

`eq[A014963(A022144(n)), A025435(n²)]`
-/

namespace A221264.P12095809292408394489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221264.P12095809292408394489

namespace A221264

/-- `eq[A014963(A022144(n)), A025435(n²)]` -/
def P12095809292408394489.Spec : Prop :=
  ∀ n, (P12095809292408394489.a n : ℤ) = A221264 (n + 1)

end A221264

/-!
# A221265: Numbers having more distinct prime factors of form 4*k+1 than of 4*k+3.

The programs for A221265, the canonical program `A221265.P1168159169011245061` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221265 has offset 1).

The definition of A221265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221265.P1168159169011245061

`lt[0, A005094(1+n)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A221265

/-- `lt[0, A005094(1+n)]+1` -/
def P1168159169011245061.Spec : Prop :=
  ∀ n, (P1168159169011245061.a n : ℤ) = A221265 (n + 1)

theorem P1168159169011245061.correct : P1168159169011245061.Spec := by
  intro n
  simp only [A221265, Nat.add_sub_cancel]

end A221265

/-! ## A221265.P15908217684869499560

`lt[0, A005094(A028310(n))]`
-/

namespace A221265.P15908217684869499560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P15908217684869499560

namespace A221265

/-- `lt[0, A005094(A028310(n))]` -/
def P15908217684869499560.Spec : Prop :=
  ∀ n, (P15908217684869499560.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P1347086762519604163

`A020725(lt[0, A005094(n+1)])`
-/

namespace A221265.P1347086762519604163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A221265.P1347086762519604163

namespace A221265

/-- `A020725(lt[0, A005094(n+1)])` -/
def P1347086762519604163.Spec : Prop :=
  ∀ n, P1347086762519604163.a n = A221265 (n + 1)

end A221265

/-! ## A221265.P10167912553920056028

`lt[0, A005094(A004277(n))]`
-/

namespace A221265.P10167912553920056028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P10167912553920056028

namespace A221265

/-- `lt[0, A005094(A004277(n))]` -/
def P10167912553920056028.Spec : Prop :=
  ∀ n, (P10167912553920056028.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P1972121708257007745

`lt[0, A005094(A008574(n))]`
-/

namespace A221265.P1972121708257007745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P1972121708257007745

namespace A221265

/-- `lt[0, A005094(A008574(n))]` -/
def P1972121708257007745.Spec : Prop :=
  ∀ n, (P1972121708257007745.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P6914853290632878730

`lt[0, A005094(A022144(n))]`
-/

namespace A221265.P6914853290632878730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P6914853290632878730

namespace A221265

/-- `lt[0, A005094(A022144(n))]` -/
def P6914853290632878730.Spec : Prop :=
  ∀ n, (P6914853290632878730.a n : ℤ) = A221265 (n + 1)

end A221265

/-! ## A221265.P17963329676274856989

`lt[0, A005094(A233583(n+1))]`
-/

namespace A221265.P17963329676274856989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221265.P17963329676274856989

namespace A221265

/-- `lt[0, A005094(A233583(n+1))]` -/
def P17963329676274856989.Spec : Prop :=
  ∀ n, (P17963329676274856989.a n : ℤ) = A221265 (n + 1)

end A221265

/-!
# A221266: Number of n X 2 arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221266, the canonical program `A221266.P9087613591654310939` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221266 has offset 1).

The definition of A221266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221266.P15367956463172402038

`ogf((3-11x+8x^2)/(1-10x+19x^2-8x^3))`
-/

namespace A221266.P15367956463172402038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11, 8] [1, -10, 19, -8] n

end

end A221266.P15367956463172402038

namespace A221266

/-- `ogf((3-11x+8x^2)/(1-10x+19x^2-8x^3))` -/
def P15367956463172402038.Spec : Prop :=
  ∀ n, P15367956463172402038.a n = A221266 (n + 1)

end A221266

/-! ## A221266.P9087613591654310939

`10*a(n-1)-19*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=19, a(2)=141`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221266

/-- `10*a(n-1)-19*a(n-2)+8*a(n-3)` -/
def P9087613591654310939.Spec : Prop :=
  ∀ n, P9087613591654310939.a n = A221266 (n + 1)

theorem P9087613591654310939.correct : P9087613591654310939.Spec := by
  intro n
  simp only [A221266, Nat.add_sub_cancel]

end A221266

/-! ## A221266.P44471371613848948

`A221269(∑[n+1]+2)`
-/

namespace A221266.P44471371613848948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221266.P44471371613848948

namespace A221266

/-- `A221269(∑[n+1]+2)` -/
def P44471371613848948.Spec : Prop :=
  ∀ n, P44471371613848948.a n = A221266 (n + 1)

end A221266

/-! ## A221266.P3800220702331094879

`record[A221269(A106247(n)+1)]`
-/

namespace A221266.P3800220702331094879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221266.P3800220702331094879

namespace A221266

/-- `record[A221269(A106247(n)+1)]` -/
def P3800220702331094879.Spec : Prop :=
  ∀ n, P3800220702331094879.a n = A221266 (n + 1)

end A221266

/-! ## A221266.P5713025954889521881

`record[A221269(n+3)/A221345(n+1)]`
-/

namespace A221266.P5713025954889521881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221269 (n + 3) : ℚ) / (A221345 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221266.P5713025954889521881

namespace A221266

/-- `record[A221269(n+3)/A221345(n+1)]` -/
def P5713025954889521881.Spec : Prop :=
  ∀ n, P5713025954889521881.a n = (A221266 (n + 1) : ℚ)

end A221266

/-!
# A221267: Number of nX3 arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221267, there is no canonical definition to state claims against.
-/

/-! ## A221267.P17791856302044354390

`A221269(∑[n+2]+4)`
-/

namespace A221267.P17791856302044354390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221267.P17791856302044354390

/-! ## A221267.P9998379976799830535

`record[A221269(A106247(n+1)+2)]`
-/

namespace A221267.P9998379976799830535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (A106247 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221267.P9998379976799830535

/-!
# A221268: Number of nX4 arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221268, there is no canonical definition to state claims against.
-/

/-! ## A221268.P71334050696896277

`A221269(∑[n+3]+7)`
-/

namespace A221268.P71334050696896277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221269 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221268.P71334050696896277

/-!
# A221269: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some king-move neighbor, with no occupancy greater than 2.

The programs for A221269, there is no canonical definition to state claims against.
-/

/-! ## A221269.P14971558355516291756

`A130446(A221378(n+1))`
-/

namespace A221269.P14971558355516291756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A221378 (n + 1)).toNat

end

end A221269.P14971558355516291756

/-! ## A221269.P13181200204116471714

`A221378(n+1)+A215702(A099594(n))`
-/

namespace A221269.P13181200204116471714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) + A215702 (A099594 n).toNat

end

end A221269.P13181200204116471714

/-! ## A221269.P15123136426848667309

`A221378(n+1)+A215702(A154867(n))`
-/

namespace A221269.P15123136426848667309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) + A215702 (A154867 n).toNat

end

end A221269.P15123136426848667309

/-! ## A221269.P13555311112483625499

`A221378(n+1)+A215702(A155971(n))`
-/

namespace A221269.P13555311112483625499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221378 (n + 1) + A215702 (A155971 n).toNat

end

end A221269.P13555311112483625499

/-!
# A221270: Number of n X 2 arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221270, the canonical program `A221270.P732512471452507031` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221270 has offset 1).

The definition of A221270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221270.P16925516472523356259

`ogf((6x-20x^2+16x^3-2x^4)/(1-6x+10x^2-4x^3+2x^5))`
-/

namespace A221270.P16925516472523356259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -20, 16, -2] [1, -6, 10, -4, 0, 2] n

end

end A221270.P16925516472523356259

namespace A221270

/-- `ogf((6x-20x^2+16x^3-2x^4)/(1-6x+10x^2-4x^3+2x^5))` -/
def P16925516472523356259.Spec : Prop :=
  ∀ n, P16925516472523356259.a n = A221270 (n + 1)

end A221270

/-! ## A221270.P732512471452507031

`6*a(n-1)-10*a(n-2)+4*a(n-3)-2*a(n-5)` with `a(0)=0, a(1)=6, a(2)=16, a(3)=52, a(4)=174`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221270

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)-2*a(n-5)` -/
def P732512471452507031.Spec : Prop :=
  ∀ n, P732512471452507031.a n = A221270 (n + 1)

theorem P732512471452507031.correct : P732512471452507031.Spec := by
  intro n
  simp only [A221270, Nat.add_sub_cancel]

end A221270

/-! ## A221270.P18418008517544223798

`A221273(∑[n+1]+2)`
-/

namespace A221270.P18418008517544223798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221270.P18418008517544223798

namespace A221270

/-- `A221273(∑[n+1]+2)` -/
def P18418008517544223798.Spec : Prop :=
  ∀ n, P18418008517544223798.a n = A221270 (n + 1)

end A221270

/-! ## A221270.P14010487269069656

`A221728(∑[n+1]+2)`
-/

namespace A221270.P14010487269069656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221270.P14010487269069656

namespace A221270

/-- `A221728(∑[n+1]+2)` -/
def P14010487269069656.Spec : Prop :=
  ∀ n, P14010487269069656.a n = A221270 (n + 1)

end A221270

/-! ## A221270.P13958994288074780548

`record[A221273(A106247(n)+1)]`
-/

namespace A221270.P13958994288074780548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221270.P13958994288074780548

namespace A221270

/-- `record[A221273(A106247(n)+1)]` -/
def P13958994288074780548.Spec : Prop :=
  ∀ n, P13958994288074780548.a n = A221270 (n + 1)

end A221270

/-!
# A221271: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221271, there is no canonical definition to state claims against.
-/

/-! ## A221271.P9551663945663275769

`A221273(∑[n+3]+1)`
-/

namespace A221271.P9551663945663275769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221271.P9551663945663275769

/-!
# A221272: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, with every occupancy equal to zero or two.

The programs for A221272, there is no canonical definition to state claims against.
-/

/-! ## A221272.P10567930727124801453

`A221273(∑[n+3]+7)`
-/

namespace A221272.P10567930727124801453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221273 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221272.P10567930727124801453

/-!
# A221274: Number of n X 4 arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221274, there is no canonical definition to state claims against.
-/

/-! ## A221274.P6877886544854219296

`A221275(∑[n+4]+3)`
-/

namespace A221274.P6877886544854219296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221274.P6877886544854219296

/-!
# A221275: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221275, there is no canonical definition to state claims against.
-/

/-! ## A221275.P13316424282363539117

`A137172(A190490(n+1))%A338870(n+1)`
-/

namespace A221275.P13316424282363539117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137172 (A190490 (n + 1)).toNat) (A338870 (n + 1))

end

end A221275.P13316424282363539117

/-!
# A221276: Number of 2 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221276, the canonical program `A221276.P11604454553884671383` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221276 has offset 1).

The definition of A221276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221276.P18110997149223889855

`ogf((4x-12x^2+9x^3)/(1-4x+12x^3-9x^4))`
-/

namespace A221276.P18110997149223889855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -12, 9] [1, -4, 0, 12, -9] n

end

end A221276.P18110997149223889855

namespace A221276

/-- `ogf((4x-12x^2+9x^3)/(1-4x+12x^3-9x^4))` -/
def P18110997149223889855.Spec : Prop :=
  ∀ n, P18110997149223889855.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P11604454553884671383

`4*a(n-1)-12*a(n-3)+9*a(n-4)` with `a(0)=0, a(1)=4, a(2)=4, a(3)=25`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221276

/-- `4*a(n-1)-12*a(n-3)+9*a(n-4)` -/
def P11604454553884671383.Spec : Prop :=
  ∀ n, P11604454553884671383.a n = A221276 (n + 1)

theorem P11604454553884671383.correct : P11604454553884671383.Spec := by
  intro n
  simp only [A221276, Nat.add_sub_cancel]

end A221276

/-! ## A221276.P1681671232612226741

`Δ[∑[A001998(n)]-A056449(n)]`
-/

namespace A221276.P1681671232612226741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A056449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221276.P1681671232612226741

namespace A221276

/-- `Δ[∑[A001998(n)]-A056449(n)]` -/
def P1681671232612226741.Spec : Prop :=
  ∀ n, P1681671232612226741.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P12877003268451410456

`A107767(n+1)+Δ[A052993(n)]`
-/

namespace A221276.P12877003268451410456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (n + 1) + (f1 (n + 1) - f1 n)

end

end A221276.P12877003268451410456

namespace A221276

/-- `A107767(n+1)+Δ[A052993(n)]` -/
def P12877003268451410456.Spec : Prop :=
  ∀ n, P12877003268451410456.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P3202643534161813710

`A001998(n+1)-Δ[A056449(n)]`
-/

namespace A221276.P3202643534161813710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 (n + 1) - (f1 (n + 1) - f1 n)

end

end A221276.P3202643534161813710

namespace A221276

/-- `A001998(n+1)-Δ[A056449(n)]` -/
def P3202643534161813710.Spec : Prop :=
  ∀ n, P3202643534161813710.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P7761036138772210927

`(A000035(n)+sqrt(A107767(n+1)))²`
-/

namespace A221276.P7761036138772210927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000035 n : ℝ) + Real.sqrt (A107767 (n + 1) : ℝ)) ^ 2

end

end A221276.P7761036138772210927

namespace A221276

/-- `(A000035(n)+sqrt(A107767(n+1)))²` -/
def P7761036138772210927.Spec : Prop :=
  ∀ n, P7761036138772210927.a n = (A221276 (n + 1) : ℝ)

end A221276

/-! ## A221276.P17796673344440181202

`A254006(n+1)+∑[A167993(n+1)]`
-/

namespace A221276.P17796673344440181202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221276.P17796673344440181202

namespace A221276

/-- `A254006(n+1)+∑[A167993(n+1)]` -/
def P17796673344440181202.Spec : Prop :=
  ∀ n, P17796673344440181202.a n = A221276 (n + 1)

end A221276

/-! ## A221276.P16505577366978049050

`A107767(n+1)+A000035(n)*A056449(n)`
-/

namespace A221276.P16505577366978049050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107767 (n + 1) + A000035 n * A056449 n

end

end A221276.P16505577366978049050

namespace A221276

/-- `A107767(n+1)+A000035(n)*A056449(n)` -/
def P16505577366978049050.Spec : Prop :=
  ∀ n, P16505577366978049050.a n = A221276 (n + 1)

end A221276

/-!
# A221277: Number of 3 X n arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221277, there is no canonical definition to state claims against.
-/

/-! ## A221277.P6426753132656738625

`A221275(A167614(n+1)*A179009(n))`
-/

namespace A221277.P6426753132656738625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (A167614 (n + 1) * A179009 n).toNat

end

end A221277.P6426753132656738625

/-!
# A221278: Number of 4Xn arrays of occupancy after each element moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221278, there is no canonical definition to state claims against.
-/

/-! ## A221278.P10684975909055362248

`A221275(∑[n+3]+7)`
-/

namespace A221278.P10684975909055362248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221275 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221278.P10684975909055362248

/-!
# A221279: Smallest tau-value of a special set (in the sense of Heath-Brown) with n elements.

The programs for A221279, there is no canonical definition to state claims against.
-/

/-! ## A221279.P16098867564312145236

`∏[∏{d}[n, A006992(#)]]`
-/

namespace A221279.P16098867564312145236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A006992 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A221279.P16098867564312145236

/-!
# A221280: Numbers m such that lambda(m) = lambda(m+1), where lambda(n) = A008836(n) is the Liouville function.

The programs for A221280, the canonical program `A221280.P2827351552118637345` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221280 has offset 1).

The definition of A221280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221280.P2483920178933979078

`∑[runs[A359770(1+n)]]`
-/

namespace A221280.P2483920178933979078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359770 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221280.P2483920178933979078

namespace A221280

/-- `∑[runs[A359770(1+n)]]` -/
def P2483920178933979078.Spec : Prop :=
  ∀ n, (P2483920178933979078.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P2827351552118637345

`eq[A066829(n+2), A066829(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A221280

/-- `eq[A066829(n+2), A066829(n+1)]+1` -/
def P2827351552118637345.Spec : Prop :=
  ∀ n, (P2827351552118637345.a n : ℤ) = A221280 (n + 1)

theorem P2827351552118637345.correct : P2827351552118637345.Spec := by
  intro n
  simp only [A221280, Nat.add_sub_cancel]

end A221280

/-! ## A221280.P17737420078871970107

`eq[1, A065043(n+1)+A065043(A008706(n))]`
-/

namespace A221280.P17737420078871970107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) + A065043 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221280.P17737420078871970107

namespace A221280

/-- `eq[1, A065043(n+1)+A065043(A008706(n))]` -/
def P17737420078871970107.Spec : Prop :=
  ∀ n, (P17737420078871970107.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P13040100582412216314

`eq[1, A066829(n+1)+A066829(A008706(n))]`
-/

namespace A221280.P13040100582412216314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) + A066829 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A221280.P13040100582412216314

namespace A221280

/-- `eq[1, A066829(n+1)+A066829(A008706(n))]` -/
def P13040100582412216314.Spec : Prop :=
  ∀ n, (P13040100582412216314.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P9591911915840926668

`∑[runs[A008836(A026741(n+1))]]`
-/

namespace A221280.P9591911915840926668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A026741 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221280.P9591911915840926668

namespace A221280

/-- `∑[runs[A008836(A026741(n+1))]]` -/
def P9591911915840926668.Spec : Prop :=
  ∀ n, (P9591911915840926668.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P17050460008733436920

`eq[A007421(n+2), A007421(n+1)]+1`
-/

namespace A221280.P17050460008733436920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P17050460008733436920

namespace A221280

/-- `eq[A007421(n+2), A007421(n+1)]+1` -/
def P17050460008733436920.Spec : Prop :=
  ∀ n, (P17050460008733436920.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P13067217285315605487

`eq[A008836(n+2), A008836(n+1)]+1`
-/

namespace A221280.P13067217285315605487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A221280.P13067217285315605487

namespace A221280

/-- `eq[A008836(n+2), A008836(n+1)]+1` -/
def P13067217285315605487.Spec : Prop :=
  ∀ n, (P13067217285315605487.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P17563476508384370931

`∑[runs[A349229(2*n+1)]]`
-/

namespace A221280.P17563476508384370931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349229 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221280.P17563476508384370931

namespace A221280

/-- `∑[runs[A349229(2*n+1)]]` -/
def P17563476508384370931.Spec : Prop :=
  ∀ n, (P17563476508384370931.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P4581295747848283072

`lt[A162512(n+1)*A162512(A004277(n)), 1]`
-/

namespace A221280.P4581295747848283072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (n + 1) * A162512 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A221280.P4581295747848283072

namespace A221280

/-- `lt[A162512(n+1)*A162512(A004277(n)), 1]` -/
def P4581295747848283072.Spec : Prop :=
  ∀ n, (P4581295747848283072.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P13060694280035427452

`eq[1, ∑{e}[∑[n], #]%2]`
-/

namespace A221280.P13060694280035427452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221280.P13060694280035427452

namespace A221280

/-- `eq[1, ∑{e}[∑[n], #]%2]` -/
def P13060694280035427452.Spec : Prop :=
  ∀ n, (P13060694280035427452.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P1809680866413675646

`eq[1, gcd(2, ∑{e}[∑[n], #])]`
-/

namespace A221280.P1809680866413675646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221280.P1809680866413675646

namespace A221280

/-- `eq[1, gcd(2, ∑{e}[∑[n], #])]` -/
def P1809680866413675646.Spec : Prop :=
  ∀ n, (P1809680866413675646.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P577089401087926572

`eq[1, and(1, ∑{e}[∑[n], #])]`
-/

namespace A221280.P577089401087926572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221280.P577089401087926572

namespace A221280

/-- `eq[1, and(1, ∑{e}[∑[n], #])]` -/
def P577089401087926572.Spec : Prop :=
  ∀ n, (P577089401087926572.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P16406415128931695711

`lt[1, A083594(∑{e}[∑[n], #])]`
-/

namespace A221280.P16406415128931695711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083594 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221280.P16406415128931695711

namespace A221280

/-- `lt[1, A083594(∑{e}[∑[n], #])]` -/
def P16406415128931695711.Spec : Prop :=
  ∀ n, (P16406415128931695711.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P12768211256376307018

`lt[2, A014963(∑{e}[∑[n], #]+2)]`
-/

namespace A221280.P12768211256376307018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221280.P12768211256376307018

namespace A221280

/-- `lt[2, A014963(∑{e}[∑[n], #]+2)]` -/
def P12768211256376307018.Spec : Prop :=
  ∀ n, (P12768211256376307018.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P5221459507295808191

`lt[1, A319307(∑{e}[n²+n, #])]`
-/

namespace A221280.P5221459507295808191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319307 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221280.P5221459507295808191

namespace A221280

/-- `lt[1, A319307(∑{e}[n²+n, #])]` -/
def P5221459507295808191.Spec : Prop :=
  ∀ n, (P5221459507295808191.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P14398094916868462361

`lt[4, A319308(A001222(∑[n+1])+1)]+1`
-/

namespace A221280.P14398094916868462361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (A001222 (∑ j ∈ Finset.range (n + 1), f3 j) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A221280.P14398094916868462361

namespace A221280

/-- `lt[4, A319308(A001222(∑[n+1])+1)]+1` -/
def P14398094916868462361.Spec : Prop :=
  ∀ n, (P14398094916868462361.a n : ℤ) = A221280 (n + 1)

end A221280

/-! ## A221280.P2772191341466484911

`lt[1, A055396(A001222((n+1)*(n+2))+1)]+1`
-/

namespace A221280.P2772191341466484911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A001222 ((n + 1) * (n + 2)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A221280.P2772191341466484911

namespace A221280

/-- `lt[1, A055396(A001222((n+1)*(n+2))+1)]+1` -/
def P2772191341466484911.Spec : Prop :=
  ∀ n, (P2772191341466484911.a n : ℤ) = A221280 (n + 1)

end A221280

/-!
# A221281: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2), where lambda(n) = A008836(n) is the Liouville function.

The programs for A221281, the canonical program `A221281.P3838035016409436131` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221281 has offset 1).

The definition of A221281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5059 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221281.P2859792958376360068

`∩[A221280(n+1)-1, A221280(n+1)]`
-/

namespace A221281.P2859792958376360068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221281.P2859792958376360068

namespace A221281

/-- `∩[A221280(n+1)-1, A221280(n+1)]` -/
def P2859792958376360068.Spec : Prop :=
  ∀ n, (P2859792958376360068.a n : ℤ) = A221281 (n + 1)

end A221281

/-! ## A221281.P3838035016409436131

`A221280(eq[1, A221280(n+2)-A221280(n+1)]+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A221281

/-- `A221280(eq[1, A221280(n+2)-A221280(n+1)]+1)` -/
def P3838035016409436131.Spec : Prop :=
  ∀ n, P3838035016409436131.a n = A221281 (n + 1)

theorem P3838035016409436131.correct : P3838035016409436131.Spec := by
  intro n
  simp only [A221281, Nat.add_sub_cancel]

end A221281

/-! ## A221281.P7485407723383007115

`eq[0, Δ[4*Δ[A001222(n+1)%2]]]+1`
-/

namespace A221281.P7485407723383007115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f4 (n + 1) - f4 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A221281.P7485407723383007115

namespace A221281

/-- `eq[0, Δ[4*Δ[A001222(n+1)%2]]]+1` -/
def P7485407723383007115.Spec : Prop :=
  ∀ n, (P7485407723383007115.a n : ℤ) = A221281 (n + 1)

end A221281

/-! ## A221281.P13738630863743851870

`∩[A221280(n+1), A259361(A221280(n+1)²)]`
-/

namespace A221281.P13738630863743851870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A221280 (n + 1) ^ 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221281.P13738630863743851870

namespace A221281

/-- `∩[A221280(n+1), A259361(A221280(n+1)²)]` -/
def P13738630863743851870.Spec : Prop :=
  ∀ n, (P13738630863743851870.a n : ℤ) = A221281 (n + 1)

end A221281

/-!
# A221282: Numbers n such that lambda(n) = lambda(n+1) = lambda(n+2) = lambda(n+3), where lambda(n) = A008836(n) is the Liouville function.

The programs for A221282, the canonical program `A221282.P15751226315535615797` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221282 has offset 1).

The definition of A221282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221282.P9172663215990894231

`∩[A221281(n+1)-1, A221281(n+1)]`
-/

namespace A221282.P9172663215990894231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221282.P9172663215990894231

namespace A221282

/-- `∩[A221281(n+1)-1, A221281(n+1)]` -/
def P9172663215990894231.Spec : Prop :=
  ∀ n, (P9172663215990894231.a n : ℤ) = A221282 (n + 1)

end A221282

/-! ## A221282.P15751226315535615797

`A221281(eq[1, A221281(n+2)-A221281(n+1)]+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A221282

/-- `A221281(eq[1, A221281(n+2)-A221281(n+1)]+1)` -/
def P15751226315535615797.Spec : Prop :=
  ∀ n, P15751226315535615797.a n = A221282 (n + 1)

theorem P15751226315535615797.correct : P15751226315535615797.Spec := by
  intro n
  simp only [A221282, Nat.add_sub_cancel]

end A221282

/-!
# A221283: Number of totients up to 10^n.

The programs for A221283, the canonical program `A221283.P16155625490231982154` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221283 has offset 0).

The definition of A221283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A264810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A221283.P16155625490231982154

`A264810(10^n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A221283

/-- `A264810(10^n)` -/
def P16155625490231982154.Spec : Prop :=
  ∀ n, P16155625490231982154.a n = A221283 n

theorem P16155625490231982154.correct : P16155625490231982154.Spec := by
  intro n
  simp only [A221283]

end A221283

/-!
# A221284: Numbers n such that phi(m) = n^2 for some m.

The programs for A221284, there is no canonical definition to state claims against.
-/

/-! ## A221284.P14621309528542678920

`sqrt(A221285(n+1))`
-/

namespace A221284.P14621309528542678920
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A221285 (n + 1) : ℝ)

end

end A221284.P14621309528542678920

/-! ## A221284.P10179953334886043145

`root(A221285(1+n), 2)`
-/

namespace A221284.P10179953334886043145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221285 (1 + n) : ℝ) ^ (1 / (2 : ℝ))

end

end A221284.P10179953334886043145

/-! ## A221284.P9094346084184154847

`A221285(n+1)^(A057427(n)/2)`
-/

namespace A221284.P9094346084184154847
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221285 (n + 1) : ℝ) ^ ((A057427 n : ℚ) / 2 : ℝ)

end

end A221284.P9094346084184154847

/-! ## A221284.P14440685796514352923

`A221285(n+1)^(A040000(n)/4)`
-/

namespace A221284.P14440685796514352923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221285 (n + 1) : ℝ) ^ ((A040000 n : ℚ) / 4 : ℝ)

end

end A221284.P14440685796514352923

/-! ## A221284.P12132064306377067427

`A262689(lcm(2, A221285(n+1)))`
-/

namespace A221284.P12132064306377067427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lcm 2 (A221285 (n + 1)))

end

end A221284.P12132064306377067427

/-!
# A221285: Square values taken by totient function phi(m) = A000010(m).

The programs for A221285, there is no canonical definition to state claims against.
-/

/-! ## A221285.P10904733028467556905

`A221284(n+1)²`
-/

namespace A221285.P10904733028467556905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (n + 1) ^ 2

end

end A221285.P10904733028467556905

/-! ## A221285.P12341594866961900477

`A221284(A000027(n+1))*A221284(n+1)`
-/

namespace A221285.P12341594866961900477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (A000027 (n + 1)).toNat * A221284 (n + 1)

end

end A221285.P12341594866961900477

/-! ## A221285.P11790526197670054423

`A221284(n+1)^A326196(A027748(n+1))`
-/

namespace A221285.P11790526197670054423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A326196 (A027748 (n + 1)).toNat : ℤ)

end

end A221285.P11790526197670054423

/-! ## A221285.P6416283182983132196

`A221284(n+1)^A326196(A244080(n+1))`
-/

namespace A221285.P6416283182983132196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221284 (n + 1) : ℚ) ^ (A326196 (A244080 (n + 1)).toNat : ℤ)

end

end A221285.P6416283182983132196

/-! ## A221285.P3495740767832691395

`A221284(A008619(2*n+1))*A221284(n+1)`
-/

namespace A221285.P3495740767832691395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221284 (A008619 (2 * n + 1)).toNat * A221284 (n + 1)

end

end A221285.P3495740767832691395

/-! ## A221285.P1129704122057124158

`A000290(A221284(A000290(n+1)/(n+1)))`
-/

namespace A221285.P1129704122057124158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A221284 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A221285.P1129704122057124158

/-! ## A221285.P8911596428418749146

`A067998(A221284(n+1)+1)+1`
-/

namespace A221285.P8911596428418749146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A221284 (n + 1) + 1).toNat + 1

end

end A221285.P8911596428418749146

/-! ## A221285.P6013446779809324674

`A002620(2*A221284(n+1))`
-/

namespace A221285.P6013446779809324674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A221284 (n + 1)).toNat

end

end A221285.P6013446779809324674

/-! ## A221285.P13647897762762013078

`A000463(A221284(n+1)+A221284(n+1))`
-/

namespace A221285.P13647897762762013078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A221284 (n + 1) + A221284 (n + 1)).toNat

end

end A221285.P13647897762762013078

/-! ## A221285.P3377449879049816375

`A221284(n+1)%A240927(n+1)*A221284(n+1)`
-/

namespace A221285.P3377449879049816375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221284 (n + 1)) (A240927 (n + 1)) * A221284 (n + 1)

end

end A221285.P3377449879049816375

/-!
# A221287: Equals two maps: number of n X n binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 n X n array.

The programs for A221287, there is no canonical definition to state claims against.
-/

/-! ## A221287.P9473747386847124338

`A221290(∑[4*n]+1)`
-/

namespace A221287.P9473747386847124338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221287.P9473747386847124338

/-!
# A221288: Equals two maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A221288, there is no canonical definition to state claims against.
-/

/-! ## A221288.P5483776595592457191

`A221290(∑[n+5]+6)`
-/

namespace A221288.P5483776595592457191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221288.P5483776595592457191

/-!
# A221289: Equals two maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A221289, there is no canonical definition to state claims against.
-/

/-! ## A221289.P15721026985686513791

`A221290(A052905(n+3))`
-/

namespace A221289.P15721026985686513791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A052905 (n + 3)).toNat

end

end A221289.P15721026985686513791

/-!
# A221290: T(n,k) = Equals two maps: number of n X k binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 n X k array.

The programs for A221290, there is no canonical definition to state claims against.
-/

/-! ## A221290.P2254390973111881671

`A194967(A220328(n+1))`
-/

namespace A221290.P2254390973111881671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194967 (A220328 (n + 1)).toNat

end

end A221290.P2254390973111881671

/-!
# A221291: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A221291, there is no canonical definition to state claims against.
-/

/-! ## A221291.P17452511707594949858

`A221290(∑[n+2]+4)`
-/

namespace A221291.P17452511707594949858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221291.P17452511707594949858

/-!
# A221292: Equals two maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A221292, there is no canonical definition to state claims against.
-/

/-! ## A221292.P3997119212657090989

`A221290(A141214(n)+7)`
-/

namespace A221292.P3997119212657090989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A141214 n + 7).toNat

end

end A221292.P3997119212657090989

/-!
# A221293: Equals two maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 5Xn array.

The programs for A221293, there is no canonical definition to state claims against.
-/

/-! ## A221293.P16814754296674936553

`A221290(A167499(n+3))`
-/

namespace A221293.P16814754296674936553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167499 (n + 3)).toNat

end

end A221293.P16814754296674936553

/-!
# A221294: Equals two maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 6Xn array.

The programs for A221294, there is no canonical definition to state claims against.
-/

/-! ## A221294.P17679094200825913222

`A221290(A166136(n+4))`
-/

namespace A221294.P17679094200825913222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A166136 (n + 4)).toNat

end

end A221294.P17679094200825913222

/-!
# A221295: Equals two maps: number of 7Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal and antidiagonal neighbors in a random 0..3 7Xn array.

The programs for A221295, there is no canonical definition to state claims against.
-/

/-! ## A221295.P4615698438431462525

`A221290(A167487(n+5))`
-/

namespace A221295.P4615698438431462525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221290 (A167487 (n + 5)).toNat

end

end A221295.P4615698438431462525

/-!
# A221296: Number of n X n arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221296, there is no canonical definition to state claims against.
-/

/-! ## A221296.P5219455642588791775

`A221303(∑[4*n]+1)`
-/

namespace A221296.P5219455642588791775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221296.P5219455642588791775

/-!
# A221297: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221297, the canonical program `A221297.P6417075549345057531` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221297 has offset 1).

The definition of A221297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221297.P6417075549345057531

`ogf((3-14x+9x^2+10x^3-12x^4-4x^5+2x^6)/(1-11x+27x^2+x^3-8x^4+16x^5+6x^6-2x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A221297

/-- `ogf((3-14x+9x^2+10x^3-12x^4-4x^5+2x^6)/(1-11x+27x^2+x^3-8x^4+16x^5+6x^6-2x^7))` -/
def P6417075549345057531.Spec : Prop :=
  ∀ n, P6417075549345057531.a n = A221297 (n + 1)

theorem P6417075549345057531.correct : P6417075549345057531.Spec := by
  intro n
  simp only [A221297, Nat.add_sub_cancel]

end A221297

/-! ## A221297.P2246064342819918846

`A221303(∑[n+1]+2)`
-/

namespace A221297.P2246064342819918846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221297.P2246064342819918846

namespace A221297

/-- `A221303(∑[n+1]+2)` -/
def P2246064342819918846.Spec : Prop :=
  ∀ n, P2246064342819918846.a n = A221297 (n + 1)

end A221297

/-! ## A221297.P5742898313829055741

`record[A221303(A106247(n)+1)]`
-/

namespace A221297.P5742898313829055741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A106247 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P5742898313829055741

namespace A221297

/-- `record[A221303(A106247(n)+1)]` -/
def P5742898313829055741.Spec : Prop :=
  ∀ n, P5742898313829055741.a n = A221297 (n + 1)

end A221297

/-! ## A221297.P10595851321820495183

`record[root(A221303(n+2), A193722(n))]`
-/

namespace A221297.P10595851321820495183
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221303 (n + 2) : ℝ) ^ (1 / (A193722 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P10595851321820495183

namespace A221297

/-- `record[root(A221303(n+2), A193722(n))]` -/
def P10595851321820495183.Spec : Prop :=
  ∀ n, P10595851321820495183.a n = (A221297 (n + 1) : ℝ)

end A221297

/-! ## A221297.P13096645753026344078

`record[root(A221303(n+2), A261867(n+1))]`
-/

namespace A221297.P13096645753026344078
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221303 (n + 2) : ℝ) ^ (1 / (A261867 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221297.P13096645753026344078

namespace A221297

/-- `record[root(A221303(n+2), A261867(n+1))]` -/
def P13096645753026344078.Spec : Prop :=
  ∀ n, P13096645753026344078.a n = (A221297 (n + 1) : ℝ)

end A221297

/-!
# A221298: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221298, there is no canonical definition to state claims against.
-/

/-! ## A221298.P1234448749716223615

`A221303(∑[n+2]+4)`
-/

namespace A221298.P1234448749716223615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221298.P1234448749716223615

/-!
# A221299: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, with no occupancy greater than 2.

The programs for A221299, there is no canonical definition to state claims against.
-/

/-! ## A221299.P8050745046014715762

`A221303(A374004(n+1))`
-/

namespace A221299.P8050745046014715762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A374004 (n + 1)).toNat

end

end A221299.P8050745046014715762

/-! ## A221299.P234390843243218955

`A221303(A141214(n+1))`
-/

namespace A221299.P234390843243218955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221303 (A141214 (n + 1)).toNat

end

end A221299.P234390843243218955

