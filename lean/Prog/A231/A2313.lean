import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A231300: Number of (n+1)X(6+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231300, there is no canonical definition to state claims against.
-/

/-! ## A231300.P15675532648575612918

`A231302(A374007(n+1))`
-/

namespace A231300.P15675532648575612918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A374007 (n + 1)).toNat

end

end A231300.P15675532648575612918

/-! ## A231300.P13620847647171866919

`A231302(A166136(n+4))`
-/

namespace A231300.P13620847647171866919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A166136 (n + 4)).toNat

end

end A231300.P13620847647171866919

/-! ## A231300.P17894053554794563210

`A231302(A056115(n)+21)`
-/

namespace A231300.P17894053554794563210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A056115 n + 21).toNat

end

end A231300.P17894053554794563210

/-! ## A231300.P8009000322110630599

`A231302(eq[7, A131818(n+1)])`
-/

namespace A231300.P8009000322110630599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231300.P8009000322110630599

/-! ## A231300.P17321094914555549233

`A231302(A052905(n+3))`
-/

namespace A231300.P17321094914555549233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A052905 (n + 3)).toNat

end

end A231300.P17321094914555549233

/-!
# A231301: Number of (n+1)X(7+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231301, there is no canonical definition to state claims against.
-/

/-! ## A231301.P15881515956515216700

`A231302(A374008(n+1))`
-/

namespace A231301.P15881515956515216700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A374008 (n + 1)).toNat

end

end A231301.P15881515956515216700

/-! ## A231301.P17871518375481508278

`A231302(A056119(n)+28)`
-/

namespace A231301.P17871518375481508278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (A056119 n + 28).toNat

end

end A231301.P17871518375481508278

/-! ## A231301.P6306196723151841541

`A231302(eq[11, A066657(n)])`
-/

namespace A231301.P6306196723151841541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231301.P6306196723151841541

/-! ## A231301.P7432314793933288300

`A231302(eq[8, A131818(n+1)])`
-/

namespace A231301.P7432314793933288300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231301.P7432314793933288300

/-! ## A231301.P3129155055834733586

`A231302(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A231301.P3129155055834733586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231302 (f1 (n + 1) - f1 n + 12).toNat

end

end A231301.P3129155055834733586

/-!
# A231302: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231302, there is no canonical definition to state claims against.
-/

/-! ## A231302.P7391040951097478013

`A231363(n+1)-A133010(A231363(n+1))`
-/

namespace A231302.P7391040951097478013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (n + 1) - A133010 (A231363 (n + 1)).toNat

end

end A231302.P7391040951097478013

/-! ## A231302.P8501541216180330706

`A231363(A187829(n+1))-A124762(A153733(n))`
-/

namespace A231302.P8501541216180330706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A187829 (n + 1)).toNat - A124762 (A153733 n).toNat

end

end A231302.P8501541216180330706

/-! ## A231302.P15035731298980517781

`A231363(A187829(n+1))-A188172(A260194(n+1))`
-/

namespace A231302.P15035731298980517781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A187829 (n + 1)).toNat - A188172 (A260194 (n + 1)).toNat

end

end A231302.P15035731298980517781

/-! ## A231302.P16216447116685842409

`A231363(n+1)+A199918(A018918(n))`
-/

namespace A231302.P16216447116685842409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (n + 1) + A199918 (A018918 n).toNat

end

end A231302.P16216447116685842409

/-! ## A231302.P13064770790969727064

`A231363(n+1)-A304572(A000051(n))`
-/

namespace A231302.P13064770790969727064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (n + 1) - A304572 (A000051 n).toNat

end

end A231302.P13064770790969727064

/-!
# A231303: Recurrence a(n) = a(n-2) + n^M for M=4, starting with a(0)=0, a(1)=1.

The programs for A231303, the canonical program `A231303.P965024635069111883` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231303 has offset 0).

The definition of A231303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231303.P14926067886020056621

`ogf((x+10x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A231303.P14926067886020056621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A231303.P14926067886020056621

namespace A231303

/-- `ogf((x+10x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P14926067886020056621.Spec : Prop :=
  ∀ n, P14926067886020056621.a n = A231303 n

end A231303

/-! ## A231303.P13443410329338544032

`n*(3*n^4+15*n^3+20*n²-8)/30`
-/

namespace A231303.P13443410329338544032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((3 * n ^ 4 + 15 * n ^ 3 + 20 * n ^ 2 : ℤ) - 8) : ℚ) / 30

end

end A231303.P13443410329338544032

namespace A231303

/-- `n*(3*n^4+15*n^3+20*n²-8)/30` -/
def P13443410329338544032.Spec : Prop :=
  ∀ n, P13443410329338544032.a n = (A231303 n : ℚ)

theorem P13443410329338544032.correct : P13443410329338544032.Spec := by
  intro n
  simp only [A231303, Nat.add_sub_cancel, A231303.P13443410329338544032.a, A231303.P965024635069111883.a, A000292, A000292.P18322089543142633594.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A231303

/-! ## A231303.P965024635069111883

`12*A000389(n+3)+A000292(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231303

/-- `12*A000389(n+3)+A000292(n)` -/
def P965024635069111883.Spec : Prop :=
  ∀ n, P965024635069111883.a n = A231303 n

theorem P965024635069111883.correct : P965024635069111883.Spec := by
  intro n
  simp only [A231303]

end A231303

/-! ## A231303.P8717875428940223557

`12*A000579(n+4)+A000332(n+3)-(12*A000579(n+3)+A000332(n+2))`
-/

namespace A231303.P8717875428940223557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000579 (n + 4) + A000332 (n + 3) - (12 * A000579 (n + 3) + A000332 (n + 2))

end

end A231303.P8717875428940223557

namespace A231303

/-- `12*A000579(n+4)+A000332(n+3)-(12*A000579(n+3)+A000332(n+2))` -/
def P8717875428940223557.Spec : Prop :=
  ∀ n, P8717875428940223557.a n = A231303 n

theorem P8717875428940223557.correct : P8717875428940223557.Spec := by
  intro n
  simp only [A231303, Nat.add_sub_cancel, A231303.P8717875428940223557.a, A231303.P965024635069111883.a, A000292, A000292.P18322089543142633594.a, A000332, A000332.P5946310388023661265.a, A000389, A000389.P15450220129395289428.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A231303

/-! ## A231303.P14187777337839368518

`∑{#}[floor(n/2), (n-2*#)^4]`
-/

namespace A231303.P14187777337839368518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (2 * k : ℤ)) ^ 4

end

end A231303.P14187777337839368518

namespace A231303

/-- `∑{#}[floor(n/2), (n-2*#)^4]` -/
def P14187777337839368518.Spec : Prop :=
  ∀ n, P14187777337839368518.a n = A231303 n

end A231303

/-! ## A231303.P14049725823186647860

`∑[C(∑[2*n], 2)]`
-/

namespace A231303.P14049725823186647860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231303.P14049725823186647860

namespace A231303

/-- `∑[C(∑[2*n], 2)]` -/
def P14049725823186647860.Spec : Prop :=
  ∀ n, (P14049725823186647860.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P16773281519956136456

`a(n-2)+n^4` with `a(0)=0, a(1)=1`
-/

namespace A231303.P16773281519956136456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n ^ 4

end

end A231303.P16773281519956136456

namespace A231303

/-- `a(n-2)+n^4` -/
def P16773281519956136456.Spec : Prop :=
  ∀ n, (P16773281519956136456.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P1689292400504504763

`∑[n^4-a(n-1)]` with `a(0)=0`
-/

namespace A231303.P1689292400504504763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 4 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231303.P1689292400504504763

namespace A231303

/-- `∑[n^4-a(n-1)]` -/
def P1689292400504504763.Spec : Prop :=
  ∀ n, P1689292400504504763.a n = A231303 n

end A231303

/-! ## A231303.P16440991152549880296

`∑[n²²]-a(n-1)` with `a(0)=0`
-/

namespace A231303.P16440991152549880296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A231303.P16440991152549880296

namespace A231303

/-- `∑[n²²]-a(n-1)` -/
def P16440991152549880296.Spec : Prop :=
  ∀ n, P16440991152549880296.a n = A231303 n

end A231303

/-! ## A231303.P14560875976300052869

`abs(a(n-2)+n²²)` with `a(0)=0, a(1)=1`
-/

namespace A231303.P14560875976300052869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n ^ 2) ^ 2

end

end A231303.P14560875976300052869

namespace A231303

/-- `abs(a(n-2)+n²²)` -/
def P14560875976300052869.Spec : Prop :=
  ∀ n, (P14560875976300052869.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P14363754060855071912

`floor(a(n-2)+n²²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A231303.P14363754060855071912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n ^ 2) ^ 2

end

end A231303.P14363754060855071912

namespace A231303

/-- `floor(a(n-2)+n²²)` -/
def P14363754060855071912.Spec : Prop :=
  ∀ n, (P14363754060855071912.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P17717958174377371107

`ceil(a(n-2)+n²²)` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A231303.P17717958174377371107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n ^ 2) ^ 2

end

end A231303.P17717958174377371107

namespace A231303

/-- `ceil(a(n-2)+n²²)` -/
def P17717958174377371107.Spec : Prop :=
  ∀ n, (P17717958174377371107.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P1964454513334970606

`round(a(n-2)+n²²)` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A231303.P1964454513334970606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n ^ 2) ^ 2

end

end A231303.P1964454513334970606

namespace A231303

/-- `round(a(n-2)+n²²)` -/
def P1964454513334970606.Spec : Prop :=
  ∀ n, (P1964454513334970606.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P17380136581403570903

`floor(a(n-1))+C(n*(n+1), 2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A231303.P17380136581403570903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (n * (n + 1)) 2

end

end A231303.P17380136581403570903

namespace A231303

/-- `floor(a(n-1))+C(n*(n+1), 2)` -/
def P17380136581403570903.Spec : Prop :=
  ∀ n, (P17380136581403570903.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P11899467891943075744

`∑[A062392(n)]`
-/

namespace A231303.P11899467891943075744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231303.P11899467891943075744

namespace A231303

/-- `∑[A062392(n)]` -/
def P11899467891943075744.Spec : Prop :=
  ∀ n, P11899467891943075744.a n = A231303 n

end A231303

/-! ## A231303.P8409772111392541137

`∑[∑[A007588(n)]]`
-/

namespace A231303.P8409772111392541137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231303.P8409772111392541137

namespace A231303

/-- `∑[∑[A007588(n)]]` -/
def P8409772111392541137.Spec : Prop :=
  ∀ n, P8409772111392541137.a n = A231303 n

end A231303

/-! ## A231303.P3763783772554981290

`2*A024166(n)-A000292(n)`
-/

namespace A231303.P3763783772554981290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024166 n - A000292 n

end

end A231303.P3763783772554981290

namespace A231303

/-- `2*A024166(n)-A000292(n)` -/
def P3763783772554981290.Spec : Prop :=
  ∀ n, P3763783772554981290.a n = A231303 n

theorem P3763783772554981290.correct : P3763783772554981290.Spec := by
  intro n
  simp only [A231303, Nat.add_sub_cancel, A231303.P3763783772554981290.a, A231303.P965024635069111883.a, A000292, A000292.P18322089543142633594.a, A000389, A000389.P15450220129395289428.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A231303

/-! ## A231303.P15845340162093704712

`∪[A002309(n+1), A330151(n)]`
-/

namespace A231303.P15845340162093704712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330151 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231303.P15845340162093704712

namespace A231303

/-- `∪[A002309(n+1), A330151(n)]` -/
def P15845340162093704712.Spec : Prop :=
  ∀ n, (P15845340162093704712.a n : ℤ) = A231303 n

end A231303

/-! ## A231303.P12678821414088415377

`A164938(n+1)-2*A000292(n)`
-/

namespace A231303.P12678821414088415377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164938 (n + 1) - 2 * A000292 n

end

end A231303.P12678821414088415377

namespace A231303

/-- `A164938(n+1)-2*A000292(n)` -/
def P12678821414088415377.Spec : Prop :=
  ∀ n, P12678821414088415377.a n = A231303 n

end A231303

/-! ## A231303.P10457211322663195585

`A086689(n+1)-A236770(n+1)`
-/

namespace A231303.P10457211322663195585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1) - A236770 (n + 1)

end

end A231303.P10457211322663195585

namespace A231303

/-- `A086689(n+1)-A236770(n+1)` -/
def P10457211322663195585.Spec : Prop :=
  ∀ n, P10457211322663195585.a n = A231303 n

end A231303

/-!
# A231304: Recurrence a(n) = a(n-2) + n^M for M=5, starting with a(0)=0, a(1)=1.

The programs for A231304, the canonical program `A231304.P16347726925229330498` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231304 has offset 0).

The definition of A231304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231304.P16347726925229330498

`a(n-2)+n^5` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231304

/-- `a(n-2)+n^5` -/
def P16347726925229330498.Spec : Prop :=
  ∀ n, (P16347726925229330498.a n : ℤ) = A231304 n

theorem P16347726925229330498.correct : P16347726925229330498.Spec := by
  intro n
  simp only [A231304]

end A231304

/-! ## A231304.P9242907826867870881

`ogf((x+26x^2+66x^3+26x^4+x^5)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))`
-/

namespace A231304.P9242907826867870881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 26, 66, 26, 1] [1, -6, 14, -14, 0, 14, -14, 6, -1] n

end

end A231304.P9242907826867870881

namespace A231304

/-- `ogf((x+26x^2+66x^3+26x^4+x^5)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))` -/
def P9242907826867870881.Spec : Prop :=
  ∀ n, P9242907826867870881.a n = A231304 n

end A231304

/-! ## A231304.P5224085398753974031

`∑[n^5-a(n-1)]` with `a(0)=0`
-/

namespace A231304.P5224085398753974031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 5 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231304.P5224085398753974031

namespace A231304

/-- `∑[n^5-a(n-1)]` -/
def P5224085398753974031.Spec : Prop :=
  ∀ n, P5224085398753974031.a n = A231304 n

end A231304

/-! ## A231304.P10902197052758161616

`∑[n*n²²]-a(n-1)` with `a(0)=0`
-/

namespace A231304.P10902197052758161616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A231304.P10902197052758161616

namespace A231304

/-- `∑[n*n²²]-a(n-1)` -/
def P10902197052758161616.Spec : Prop :=
  ∀ n, P10902197052758161616.a n = A231304 n

end A231304

/-! ## A231304.P251832659693742191

`floor(a(n-2)+n*n²²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A231304.P251832659693742191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n * (n ^ 2) ^ 2

end

end A231304.P251832659693742191

namespace A231304

/-- `floor(a(n-2)+n*n²²)` -/
def P251832659693742191.Spec : Prop :=
  ∀ n, (P251832659693742191.a n : ℤ) = A231304 n

theorem P251832659693742191.correct : P251832659693742191.Spec := by
  intro n
  simp only [A231304, Nat.add_sub_cancel, A231304.P251832659693742191.a, A231304.P16347726925229330498.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231304

/-! ## A231304.P16474922689636792757

`∑[A062393(n)]`
-/

namespace A231304.P16474922689636792757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231304.P16474922689636792757

namespace A231304

/-- `∑[A062393(n)]` -/
def P16474922689636792757.Spec : Prop :=
  ∀ n, P16474922689636792757.a n = A231304 n

end A231304

/-! ## A231304.P10175561560701442616

`∪[A002594(n+1), A265021(n)]`
-/

namespace A231304.P10175561560701442616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265021 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231304.P10175561560701442616

namespace A231304

/-- `∪[A002594(n+1), A265021(n)]` -/
def P10175561560701442616.Spec : Prop :=
  ∀ n, (P10175561560701442616.a n : ℤ) = A231304 n

end A231304

/-! ## A231304.P355781634152256065

`∑[∑[A281999(n+1)]-A281999(n+1)]`
-/

namespace A231304.P355781634152256065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281999 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A281999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231304.P355781634152256065

namespace A231304

/-- `∑[∑[A281999(n+1)]-A281999(n+1)]` -/
def P355781634152256065.Spec : Prop :=
  ∀ n, P355781634152256065.a n = A231304 n

end A231304

/-!
# A231305: Recurrence a(n) = a(n-2) + n^M for M=6, starting with a(0)=0, a(1)=1.

The programs for A231305, the canonical program `A231305.P17830712245743144125` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231305 has offset 0).

The definition of A231305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231305.P11496176039692871824

`ogf((x+56x^2+246x^3+56x^4+x^5)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A231305.P11496176039692871824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 56, 246, 56, 1] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A231305.P11496176039692871824

namespace A231305

/-- `ogf((x+56x^2+246x^3+56x^4+x^5)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P11496176039692871824.Spec : Prop :=
  ∀ n, P11496176039692871824.a n = A231305 n

end A231305

/-! ## A231305.P17830712245743144125

`1/42*n*(3*n^6+21*n^5+42*n^4-56*n²+32)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231305

/-- `1/42*n*(3*n^6+21*n^5+42*n^4-56*n²+32)` -/
def P17830712245743144125.Spec : Prop :=
  ∀ n, P17830712245743144125.a n = (A231305 n : ℚ)

end A231305

/-! ## A231305.P11117742505926713000

`a(n-2)+n^6` with `a(0)=0, a(1)=1`
-/

namespace A231305.P11117742505926713000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n ^ 6

end

end A231305.P11117742505926713000

namespace A231305

/-- `a(n-2)+n^6` -/
def P11117742505926713000.Spec : Prop :=
  ∀ n, (P11117742505926713000.a n : ℤ) = A231305 n

end A231305

/-! ## A231305.P5085868796077990507

`∑[n^6-a(n-1)]` with `a(0)=0`
-/

namespace A231305.P5085868796077990507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 6 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231305.P5085868796077990507

namespace A231305

/-- `∑[n^6-a(n-1)]` -/
def P5085868796077990507.Spec : Prop :=
  ∀ n, P5085868796077990507.a n = A231305 n

end A231305

/-! ## A231305.P14612465010374714767

`∑[(n*n²)²]-a(n-1)` with `a(0)=0`
-/

namespace A231305.P14612465010374714767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A231305.P14612465010374714767

namespace A231305

/-- `∑[(n*n²)²]-a(n-1)` -/
def P14612465010374714767.Spec : Prop :=
  ∀ n, P14612465010374714767.a n = A231305 n

end A231305

/-! ## A231305.P9611014100995297205

`floor(a(n-2)+(n*n²)²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A231305.P9611014100995297205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (n * n ^ 2) ^ 2

end

end A231305.P9611014100995297205

namespace A231305

/-- `floor(a(n-2)+(n*n²)²)` -/
def P9611014100995297205.Spec : Prop :=
  ∀ n, (P9611014100995297205.a n : ℤ) = A231305 n

end A231305

/-! ## A231305.P17857209177501902763

`∑[A152725(n)]`
-/

namespace A231305.P17857209177501902763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231305.P17857209177501902763

namespace A231305

/-- `∑[A152725(n)]` -/
def P17857209177501902763.Spec : Prop :=
  ∀ n, P17857209177501902763.a n = A231305 n

end A231305

/-! ## A231305.P13504998041561929964

`∑[A187620(n)-A033999(n)]`
-/

namespace A231305.P13504998041561929964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187620 n - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231305.P13504998041561929964

namespace A231305

/-- `∑[A187620(n)-A033999(n)]` -/
def P13504998041561929964.Spec : Prop :=
  ∀ n, P13504998041561929964.a n = A231305 n

end A231305

/-! ## A231305.P17265185957323493470

`∑[A036486(A004273(∑[n]))]`
-/

namespace A231305.P17265185957323493470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (A004273 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231305.P17265185957323493470

namespace A231305

/-- `∑[A036486(A004273(∑[n]))]` -/
def P17265185957323493470.Spec : Prop :=
  ∀ n, P17265185957323493470.a n = A231305 n

end A231305

/-!
# A231306: Recurrence a(n) = a(n-2) + n^M for M=7, starting with a(0)=0, a(1)=1.

The programs for A231306, the canonical program `A231306.P15497539260650354253` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231306 has offset 0).

The definition of A231306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231306.P15497539260650354253

`a(n-2)+n^7` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231306

/-- `a(n-2)+n^7` -/
def P15497539260650354253.Spec : Prop :=
  ∀ n, (P15497539260650354253.a n : ℤ) = A231306 n

theorem P15497539260650354253.correct : P15497539260650354253.Spec := by
  intro n
  simp only [A231306]

end A231306

/-! ## A231306.P2385219404546109304

`∑[n^7-a(n-1)]` with `a(0)=0`
-/

namespace A231306.P2385219404546109304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 7 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231306.P2385219404546109304

namespace A231306

/-- `∑[n^7-a(n-1)]` -/
def P2385219404546109304.Spec : Prop :=
  ∀ n, P2385219404546109304.a n = A231306 n

end A231306

/-! ## A231306.P3717523709593227396

`∑[A152726(n)]`
-/

namespace A231306.P3717523709593227396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231306.P3717523709593227396

namespace A231306

/-- `∑[A152726(n)]` -/
def P3717523709593227396.Spec : Prop :=
  ∀ n, P3717523709593227396.a n = A231306 n

end A231306

/-! ## A231306.P13237101909802890983

`∑[abs(∑[A038608(n)^7])]`
-/

namespace A231306.P13237101909802890983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231306.P13237101909802890983

namespace A231306

/-- `∑[abs(∑[A038608(n)^7])]` -/
def P13237101909802890983.Spec : Prop :=
  ∀ n, P13237101909802890983.a n = A231306 n

end A231306

/-! ## A231306.P9292547200172501076

`∑[abs(∑[A181983(n)^7])]`
-/

namespace A231306.P9292547200172501076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n ^ 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231306.P9292547200172501076

namespace A231306

/-- `∑[abs(∑[A181983(n)^7])]` -/
def P9292547200172501076.Spec : Prop :=
  ∀ n, P9292547200172501076.a n = A231306 n

end A231306

/-! ## A231306.P6137928071923374305

`A000541(n)-a(n-1)` with `a(0)=0`
-/

namespace A231306.P6137928071923374305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000541 n - a (n - 1)

end

end A231306.P6137928071923374305

namespace A231306

/-- `A000541(n)-a(n-1)` -/
def P6137928071923374305.Spec : Prop :=
  ∀ n, P6137928071923374305.a n = A231306 n

end A231306

/-! ## A231306.P3781035425614862123

`A001015(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A231306.P3781035425614862123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001015 n + a (n - 2)

end

end A231306.P3781035425614862123

namespace A231306

/-- `A001015(n)+a(n-2)` -/
def P3781035425614862123.Spec : Prop :=
  ∀ n, P3781035425614862123.a n = A231306 n

end A231306

/-!
# A231307: Recurrence a(n) = a(n-2) + n^M for M=8, starting with a(0)=0, a(1)=1.

The programs for A231307, the canonical program `A231307.P11717523179788221942` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231307 has offset 0).

The definition of A231307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231307.P11717523179788221942

`a(n-2)+n^8` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231307

/-- `a(n-2)+n^8` -/
def P11717523179788221942.Spec : Prop :=
  ∀ n, (P11717523179788221942.a n : ℤ) = A231307 n

theorem P11717523179788221942.correct : P11717523179788221942.Spec := by
  intro n
  simp only [A231307]

end A231307

/-! ## A231307.P12732509430051254219

`∑[n^8-a(n-1)]` with `a(0)=0`
-/

namespace A231307.P12732509430051254219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 8 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231307.P12732509430051254219

namespace A231307

/-- `∑[n^8-a(n-1)]` -/
def P12732509430051254219.Spec : Prop :=
  ∀ n, P12732509430051254219.a n = A231307 n

end A231307

/-! ## A231307.P12822850354816163868

`∑[n²²²]-a(n-1)` with `a(0)=0`
-/

namespace A231307.P12822850354816163868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A231307.P12822850354816163868

namespace A231307

/-- `∑[n²²²]-a(n-1)` -/
def P12822850354816163868.Spec : Prop :=
  ∀ n, P12822850354816163868.a n = A231307 n

end A231307

/-! ## A231307.P11000794386475302269

`∑[abs(∑[(-1)^n*n^8])]`
-/

namespace A231307.P11000794386475302269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (n ^ 8 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231307.P11000794386475302269

namespace A231307

/-- `∑[abs(∑[(-1)^n*n^8])]` -/
def P11000794386475302269.Spec : Prop :=
  ∀ n, P11000794386475302269.a n = A231307 n

end A231307

/-! ## A231307.P401008000993380663

`floor(a(n-2)+n²²²)` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A231307.P401008000993380663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((n ^ 2) ^ 2) ^ 2

end

end A231307.P401008000993380663

namespace A231307

/-- `floor(a(n-2)+n²²²)` -/
def P401008000993380663.Spec : Prop :=
  ∀ n, (P401008000993380663.a n : ℤ) = A231307 n

theorem P401008000993380663.correct : P401008000993380663.Spec := by
  intro n
  simp only [A231307, Nat.add_sub_cancel, A231307.P401008000993380663.a, A231307.P11717523179788221942.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231307

/-!
# A231308: Recurrence a(n) = a(n-2) + n^M for M=9, starting with a(0)=0, a(1)=1.

The programs for A231308, the canonical program `A231308.P2016054178701647783` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231308 has offset 0).

The definition of A231308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231308.P2016054178701647783

`a(n-2)+n^9` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231308

/-- `a(n-2)+n^9` -/
def P2016054178701647783.Spec : Prop :=
  ∀ n, (P2016054178701647783.a n : ℤ) = A231308 n

theorem P2016054178701647783.correct : P2016054178701647783.Spec := by
  intro n
  simp only [A231308]

end A231308

/-! ## A231308.P3797215956042532345

`∑[n^9-a(n-1)]` with `a(0)=0`
-/

namespace A231308.P3797215956042532345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 9 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231308.P3797215956042532345

namespace A231308

/-- `∑[n^9-a(n-1)]` -/
def P3797215956042532345.Spec : Prop :=
  ∀ n, P3797215956042532345.a n = A231308 n

end A231308

/-! ## A231308.P2080979032634137550

`∑[n*n²²²]-a(n-1)` with `a(0)=0`
-/

namespace A231308.P2080979032634137550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A231308.P2080979032634137550

namespace A231308

/-- `∑[n*n²²²]-a(n-1)` -/
def P2080979032634137550.Spec : Prop :=
  ∀ n, P2080979032634137550.a n = A231308 n

end A231308

/-! ## A231308.P10686745529435874649

`abs(a(n-1)-A007487(n))` with `a(0)=0`
-/

namespace A231308.P10686745529435874649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - A007487 n|

end

end A231308.P10686745529435874649

namespace A231308

/-- `abs(a(n-1)-A007487(n))` -/
def P10686745529435874649.Spec : Prop :=
  ∀ n, P10686745529435874649.a n = A231308 n

end A231308

/-! ## A231308.P16567794405043580023

`∑[∑[n^9/A009001(2*n)]/A009001(2*n)]`
-/

namespace A231308.P16567794405043580023
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 9 : ℚ) / (A009001 (2 * n) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) / (A009001 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231308.P16567794405043580023

namespace A231308

/-- `∑[∑[n^9/A009001(2*n)]/A009001(2*n)]` -/
def P16567794405043580023.Spec : Prop :=
  ∀ n, P16567794405043580023.a n = (A231308 n : ℚ)

end A231308

/-!
# A231309: Recurrence a(n) = a(n-2) + n^M for M=10, starting with a(0)=0, a(1)=1.

The programs for A231309, the canonical program `A231309.P14791289477133500120` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231309 has offset 0).

The definition of A231309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231309.P14791289477133500120

`a(n-2)+n^10` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231309

/-- `a(n-2)+n^10` -/
def P14791289477133500120.Spec : Prop :=
  ∀ n, (P14791289477133500120.a n : ℤ) = A231309 n

theorem P14791289477133500120.correct : P14791289477133500120.Spec := by
  intro n
  simp only [A231309]

end A231309

/-! ## A231309.P11331698742576655602

`∑[n^10-a(n-1)]` with `a(0)=0`
-/

namespace A231309.P11331698742576655602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n ^ 10 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231309.P11331698742576655602

namespace A231309

/-- `∑[n^10-a(n-1)]` -/
def P11331698742576655602.Spec : Prop :=
  ∀ n, P11331698742576655602.a n = A231309 n

end A231309

/-! ## A231309.P9788522670381525802

`A023002(n)-a(n-1)` with `a(0)=0`
-/

namespace A231309.P9788522670381525802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023002 n - a (n - 1)

end

end A231309.P9788522670381525802

namespace A231309

/-- `A023002(n)-a(n-1)` -/
def P9788522670381525802.Spec : Prop :=
  ∀ n, P9788522670381525802.a n = A231309 n

end A231309

/-! ## A231309.P13361167937305469800

`A008454(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A231309.P13361167937305469800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008454 n + a (n - 2)

end

end A231309.P13361167937305469800

namespace A231309

/-- `A008454(n)+a(n-2)` -/
def P13361167937305469800.Spec : Prop :=
  ∀ n, P13361167937305469800.a n = A231309 n

end A231309

/-! ## A231309.P12144563473981879225

`a(n-2)+1-A024008(n)` with `a(0)=0, a(1)=1`
-/

namespace A231309.P12144563473981879225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 1 - A024008 n

end

end A231309.P12144563473981879225

namespace A231309

/-- `a(n-2)+1-A024008(n)` -/
def P12144563473981879225.Spec : Prop :=
  ∀ n, P12144563473981879225.a n = A231309 n

end A231309

/-! ## A231309.P357070058597039254

`abs(a(n-2)+A000584(n)²)` with `a(0)=0, a(1)=1`
-/

namespace A231309.P357070058597039254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 2) + A000584 n ^ 2|

end

end A231309.P357070058597039254

namespace A231309

/-- `abs(a(n-2)+A000584(n)²)` -/
def P357070058597039254.Spec : Prop :=
  ∀ n, P357070058597039254.a n = A231309 n

end A231309

/-! ## A231309.P1985056128321783709

`abs(a(n-2)+A000584(n²))` with `a(0)=0, a(1)=1`
-/

namespace A231309.P1985056128321783709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |a (n - 2) + A000584 (n ^ 2)|

end

end A231309.P1985056128321783709

namespace A231309

/-- `abs(a(n-2)+A000584(n²))` -/
def P1985056128321783709.Spec : Prop :=
  ∀ n, P1985056128321783709.a n = A231309 n

end A231309

/-!
# A231310: Number of (n+1) X (1+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical, diagonal and diagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231310, the canonical program `A231310.P9620466180791140025` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231310 has offset 1).

The definition of A231310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231310.P9620466180791140025

`ogf((9-15x-24x^2-40x^3+16x^4)/(1-8x+2x^2+24x^3+40x^4-16x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231310

/-- `ogf((9-15x-24x^2-40x^3+16x^4)/(1-8x+2x^2+24x^3+40x^4-16x^5))` -/
def P9620466180791140025.Spec : Prop :=
  ∀ n, P9620466180791140025.a n = A231310 (n + 1)

theorem P9620466180791140025.correct : P9620466180791140025.Spec := by
  intro n
  simp only [A231310, Nat.add_sub_cancel]

end A231310

/-! ## A231310.P12510631471369156509

`A231315(∑[n]+1)`
-/

namespace A231310.P12510631471369156509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231310.P12510631471369156509

namespace A231310

/-- `A231315(∑[n]+1)` -/
def P12510631471369156509.Spec : Prop :=
  ∀ n, P12510631471369156509.a n = A231310 (n + 1)

end A231310

/-! ## A231310.P12762360958589185772

`record[A231315(n+1)/A045912(n)]`
-/

namespace A231310.P12762360958589185772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231315 (n + 1) : ℚ) / (A045912 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231310.P12762360958589185772

namespace A231310

/-- `record[A231315(n+1)/A045912(n)]` -/
def P12762360958589185772.Spec : Prop :=
  ∀ n, P12762360958589185772.a n = (A231310 (n + 1) : ℚ)

end A231310

/-! ## A231310.P14816873575270380511

`record[gcd(A002262(n), A231315(n+1))]`
-/

namespace A231310.P14816873575270380511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231315 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231310.P14816873575270380511

namespace A231310

/-- `record[gcd(A002262(n), A231315(n+1))]` -/
def P14816873575270380511.Spec : Prop :=
  ∀ n, (P14816873575270380511.a n : ℤ) = A231310 (n + 1)

end A231310

/-! ## A231310.P4971208933561329817

`record[root(A231315(n+1), A002260(n+1))]`
-/

namespace A231310.P4971208933561329817
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231315 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231310.P4971208933561329817

namespace A231310

/-- `record[root(A231315(n+1), A002260(n+1))]` -/
def P4971208933561329817.Spec : Prop :=
  ∀ n, P4971208933561329817.a n = (A231310 (n + 1) : ℝ)

end A231310

/-!
# A231311: Number of (n+1)X(2+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical, diagonal and diagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231311, there is no canonical definition to state claims against.
-/

/-! ## A231311.P14785915733324560201

`A231315(∑[n+1]+2)`
-/

namespace A231311.P14785915733324560201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231311.P14785915733324560201

/-! ## A231311.P10145869609750262722

`record[gcd(A002262(n), A231315(n+2))]`
-/

namespace A231311.P10145869609750262722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231315 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231311.P10145869609750262722

/-! ## A231311.P16759206047492829802

`A007318(C(n, 2))*A231315(A000096(n)+3)`
-/

namespace A231311.P16759206047492829802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A231315 (A000096 n + 3).toNat

end

end A231311.P16759206047492829802

/-! ## A231311.P12989617441672245247

`A014963(21*(n+1))*A231315(A000096(n)+3)`
-/

namespace A231311.P12989617441672245247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (21 * (n + 1)) * A231315 (A000096 n + 3).toNat

end

end A231311.P12989617441672245247

/-! ## A231311.P10064372682560997052

`((-1)^A020639(n+2))²*A231315(A000096(n)+3)`
-/

namespace A231311.P10064372682560997052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A020639 (n + 2) : ℤ)) ^ 2 * (A231315 (A000096 n + 3).toNat : ℚ)

end

end A231311.P10064372682560997052

/-!
# A231312: Number of (n+1)X(3+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical, diagonal and diagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231312, there is no canonical definition to state claims against.
-/

/-! ## A231312.P8022900936892789512

`A231315(∑[n+2]+4)`
-/

namespace A231312.P8022900936892789512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231312.P8022900936892789512

/-! ## A231312.P625135823627962215

`A231315(A167614(n+1))+A070565(n)`
-/

namespace A231312.P625135823627962215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (A167614 (n + 1)).toNat + A070565 n

end

end A231312.P625135823627962215

/-! ## A231312.P8265203481960544341

`A231315(A167614(n+1))+A185237(n)`
-/

namespace A231312.P8265203481960544341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (A167614 (n + 1)).toNat + A185237 n

end

end A231312.P8265203481960544341

/-! ## A231312.P2677390143487349937

`A231315(A167614(n+1))+A185284(n)`
-/

namespace A231312.P2677390143487349937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (A167614 (n + 1)).toNat + A185284 n

end

end A231312.P2677390143487349937

/-! ## A231312.P4776072456553130591

`A052307(n)*A231315(A167614(n+1))`
-/

namespace A231312.P4776072456553130591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A231315 (A167614 (n + 1)).toNat

end

end A231312.P4776072456553130591

/-!
# A231313: Number of (n+1)X(4+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical, diagonal and diagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231313, there is no canonical definition to state claims against.
-/

/-! ## A231313.P12362658652212094234

`A231315(A167614(n+2)+1)`
-/

namespace A231313.P12362658652212094234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (A167614 (n + 2) + 1).toNat

end

end A231313.P12362658652212094234

/-! ## A231313.P11555852523443673015

`A231315(Δ[A023545(n+1)-n²])`
-/

namespace A231313.P11555852523443673015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (f1 (n + 1) - f1 n).toNat

end

end A231313.P11555852523443673015

/-! ## A231313.P12619709088579108108

`A231315(lt[A010054(n), A010054(n+3)])`
-/

namespace A231313.P12619709088579108108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231313.P12619709088579108108

/-!
# A231314: Number of (n+1) X (5+1) 0..2 arrays with no element equal to a strict majority of its horizontal, vertical, diagonal and diagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231314, there is no canonical definition to state claims against.
-/

/-! ## A231314.P675022704400613742

`A231315(A374005(n+1))`
-/

namespace A231314.P675022704400613742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (A374005 (n + 1)).toNat

end

end A231314.P675022704400613742

/-! ## A231314.P4286789048085618787

`A231315(Δ[A023545(n+1)])`
-/

namespace A231314.P4286789048085618787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231315 (f1 (n + 1) - f1 n).toNat

end

end A231314.P4286789048085618787

/-!
# A231316: Number of (n+1)X(n+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231316, there is no canonical definition to state claims against.
-/

/-! ## A231316.P11719190824324458376

`A231324((n+1)²+n²)`
-/

namespace A231316.P11719190824324458376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 ((n + 1) ^ 2 + n ^ 2)

end

end A231316.P11719190824324458376

/-! ## A231316.P7406238446815875013

`lcm(2, A231324(A001844(n)))`
-/

namespace A231316.P7406238446815875013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231324 (A001844 n).toNat)

end

end A231316.P7406238446815875013

/-! ## A231316.P3271146954072556963

`A231324(A001844(n))+A034522(n+1)`
-/

namespace A231316.P3271146954072556963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A001844 n).toNat + A034522 (n + 1)

end

end A231316.P3271146954072556963

/-!
# A231317: Number of (n+1) X (1+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231317, the canonical program `A231317.P3830008513923167004` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231317 has offset 1).

The definition of A231317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231317.P5174147185444852012

`ogf((6-12x)/(1-6x-12x^2+8x^3))`
-/

namespace A231317.P5174147185444852012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -12] [1, -6, -12, 8] n

end

end A231317.P5174147185444852012

namespace A231317

/-- `ogf((6-12x)/(1-6x-12x^2+8x^3))` -/
def P5174147185444852012.Spec : Prop :=
  ∀ n, P5174147185444852012.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P3830008513923167004

`6*a(n-1)+12*a(n-2)-8*a(n-3)` with `a(0)=6, a(1)=24, a(2)=216`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231317

/-- `6*a(n-1)+12*a(n-2)-8*a(n-3)` -/
def P3830008513923167004.Spec : Prop :=
  ∀ n, P3830008513923167004.a n = A231317 (n + 1)

theorem P3830008513923167004.correct : P3830008513923167004.Spec := by
  intro n
  simp only [A231317, Nat.add_sub_cancel]

end A231317

/-! ## A231317.P12572946995428750946

`6*∑[A026150(n)]²`
-/

namespace A231317.P12572946995428750946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A231317.P12572946995428750946

namespace A231317

/-- `6*∑[A026150(n)]²` -/
def P12572946995428750946.Spec : Prop :=
  ∀ n, P12572946995428750946.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P11648692819463914563

`6*A002605(n+1)²`
-/

namespace A231317.P11648692819463914563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002605 (n + 1) ^ 2

end

end A231317.P11648692819463914563

namespace A231317

/-- `6*A002605(n+1)²` -/
def P11648692819463914563.Spec : Prop :=
  ∀ n, P11648692819463914563.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P15023803738539763368

`A239171(n+1)²/6`
-/

namespace A231317.P15023803738539763368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239171 (n + 1) ^ 2 : ℚ) / 6

end

end A231317.P15023803738539763368

namespace A231317

/-- `A239171(n+1)²/6` -/
def P15023803738539763368.Spec : Prop :=
  ∀ n, P15023803738539763368.a n = (A231317 (n + 1) : ℚ)

end A231317

/-! ## A231317.P10464671182049106306

`A006253(n)*A091629(n+1)`
-/

namespace A231317.P10464671182049106306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 n * A091629 (n + 1)

end

end A231317.P10464671182049106306

namespace A231317

/-- `A006253(n)*A091629(n+1)` -/
def P10464671182049106306.Spec : Prop :=
  ∀ n, P10464671182049106306.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P140302362590895649

`6*A000079(n)*A006253(n)`
-/

namespace A231317.P140302362590895649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000079 n * A006253 n)

end

end A231317.P140302362590895649

namespace A231317

/-- `6*A000079(n)*A006253(n)` -/
def P140302362590895649.Spec : Prop :=
  ∀ n, P140302362590895649.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P5238141119234937963

`A270444(n+1)+A080040(n)²`
-/

namespace A231317.P5238141119234937963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270444 (n + 1) + A080040 n ^ 2

end

end A231317.P5238141119234937963

namespace A231317

/-- `A270444(n+1)+A080040(n)²` -/
def P5238141119234937963.Spec : Prop :=
  ∀ n, P5238141119234937963.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P6778898938787468094

`∑[A080040(n)]*A083337(n+1)`
-/

namespace A231317.P6778898938787468094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A083337 (n + 1)

end

end A231317.P6778898938787468094

namespace A231317

/-- `∑[A080040(n)]*A083337(n+1)` -/
def P6778898938787468094.Spec : Prop :=
  ∀ n, P6778898938787468094.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P11357141634132561896

`Δ[A068156(n+1)]*A006253(n)`
-/

namespace A231317.P11357141634132561896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006253 n

end

end A231317.P11357141634132561896

namespace A231317

/-- `Δ[A068156(n+1)]*A006253(n)` -/
def P11357141634132561896.Spec : Prop :=
  ∀ n, P11357141634132561896.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P1954250291306432944

`∑[A026150(n)*A083337(n+2)]`
-/

namespace A231317.P1954250291306432944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n * A083337 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231317.P1954250291306432944

namespace A231317

/-- `∑[A026150(n)*A083337(n+2)]` -/
def P1954250291306432944.Spec : Prop :=
  ∀ n, P1954250291306432944.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P10242668576129343631

`A083337(n+1)*A152035(n+1)`
-/

namespace A231317.P10242668576129343631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (n + 1) * A152035 (n + 1)

end

end A231317.P10242668576129343631

namespace A231317

/-- `A083337(n+1)*A152035(n+1)` -/
def P10242668576129343631.Spec : Prop :=
  ∀ n, P10242668576129343631.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P7134788832078153976

`A083337(n+1)*A293007(n+2)`
-/

namespace A231317.P7134788832078153976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (n + 1) * A293007 (n + 2)

end

end A231317.P7134788832078153976

namespace A231317

/-- `A083337(n+1)*A293007(n+2)` -/
def P7134788832078153976.Spec : Prop :=
  ∀ n, P7134788832078153976.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P12302219855228880099

`A028860(n+3)*A083337(n+1)`
-/

namespace A231317.P12302219855228880099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 3) * A083337 (n + 1)

end

end A231317.P12302219855228880099

namespace A231317

/-- `A028860(n+3)*A083337(n+1)` -/
def P12302219855228880099.Spec : Prop :=
  ∀ n, P12302219855228880099.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P3508624305866677292

`A080040(2*n+1)+A080040(n)²`
-/

namespace A231317.P3508624305866677292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (2 * n + 1) + A080040 n ^ 2

end

end A231317.P3508624305866677292

namespace A231317

/-- `A080040(2*n+1)+A080040(n)²` -/
def P3508624305866677292.Spec : Prop :=
  ∀ n, P3508624305866677292.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P9760002210468111971

`A270444(n+1)+(2*A026150(n))²`
-/

namespace A231317.P9760002210468111971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270444 (n + 1) + (2 * A026150 n) ^ 2

end

end A231317.P9760002210468111971

namespace A231317

/-- `A270444(n+1)+(2*A026150(n))²` -/
def P9760002210468111971.Spec : Prop :=
  ∀ n, P9760002210468111971.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P1744209757720043096

`xor(record[A090988(n+1)], A090965(n+1))`
-/

namespace A231317.P1744209757720043096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A090965 (n + 1))

end

end A231317.P1744209757720043096

namespace A231317

/-- `xor(record[A090988(n+1)], A090965(n+1))` -/
def P1744209757720043096.Spec : Prop :=
  ∀ n, P1744209757720043096.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P12541097248314575177

`(A108898(n+1)+1)*A083337(n+1)`
-/

namespace A231317.P12541097248314575177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108898 (n + 1) + 1) * A083337 (n + 1)

end

end A231317.P12541097248314575177

namespace A231317

/-- `(A108898(n+1)+1)*A083337(n+1)` -/
def P12541097248314575177.Spec : Prop :=
  ∀ n, P12541097248314575177.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P13936773195836511373

`A026150(2*(n+1))-A122803(n+1)`
-/

namespace A231317.P13936773195836511373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (2 * (n + 1)) - A122803 (n + 1)

end

end A231317.P13936773195836511373

namespace A231317

/-- `A026150(2*(n+1))-A122803(n+1)` -/
def P13936773195836511373.Spec : Prop :=
  ∀ n, P13936773195836511373.a n = A231317 (n + 1)

end A231317

/-! ## A231317.P17343866791867940632

`2*A002605(n+1)*A083337(n+1)`
-/

namespace A231317.P17343866791867940632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002605 (n + 1) * A083337 (n + 1))

end

end A231317.P17343866791867940632

namespace A231317

/-- `2*A002605(n+1)*A083337(n+1)` -/
def P17343866791867940632.Spec : Prop :=
  ∀ n, P17343866791867940632.a n = A231317 (n + 1)

end A231317

/-!
# A231318: Number of (n+1) X (2+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231318, there is no canonical definition to state claims against.
-/

/-! ## A231318.P11303243472838902428

`A231324(∑[n+1]+2)`
-/

namespace A231318.P11303243472838902428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231318.P11303243472838902428

/-! ## A231318.P14954704975919403459

`record[A231324(abs(A201163(n)))]`
-/

namespace A231318.P14954704975919403459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231318.P14954704975919403459

/-! ## A231318.P7091671534117976674

`lcm(2, A231324(A000096(n+1)))`
-/

namespace A231318.P7091671534117976674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231324 (A000096 (n + 1)).toNat)

end

end A231318.P7091671534117976674

/-! ## A231318.P2131804791756128878

`record[A231324(Δ[A003453(n+5)])]`
-/

namespace A231318.P2131804791756128878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231318.P2131804791756128878

/-! ## A231318.P9478644684067431805

`record[A231324(A198453(n+1))]`
-/

namespace A231318.P9478644684067431805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231318.P9478644684067431805

/-!
# A231319: Number of (n+1)X(3+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231319, there is no canonical definition to state claims against.
-/

/-! ## A231319.P7662141293984771958

`6*A231126(n+1)²`
-/

namespace A231319.P7662141293984771958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A231126 (n + 1) ^ 2

end

end A231319.P7662141293984771958

/-! ## A231319.P14320304864149205455

`6*A231131(A167614(n+1))²`
-/

namespace A231319.P14320304864149205455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A231131 (A167614 (n + 1)).toNat ^ 2

end

end A231319.P14320304864149205455

/-! ## A231319.P6268479188197897730

`A231324(∑[n+2]+4)`
-/

namespace A231319.P6268479188197897730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231319.P6268479188197897730

/-! ## A231319.P248443149830245749

`lcm(2, A231324(A167614(n+1)))`
-/

namespace A231319.P248443149830245749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A231324 (A167614 (n + 1)).toNat)

end

end A231319.P248443149830245749

/-! ## A231319.P6745554068259069284

`A231324(A167614(n+1))+A151722(n+1)`
-/

namespace A231319.P6745554068259069284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A167614 (n + 1)).toNat + A151722 (n + 1)

end

end A231319.P6745554068259069284

/-!
# A231320: Number of (n+1)X(4+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231320, there is no canonical definition to state claims against.
-/

/-! ## A231320.P615061911304895942

`A231324(A141214(n)+7)`
-/

namespace A231320.P615061911304895942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A141214 n + 7).toNat

end

end A231320.P615061911304895942

/-! ## A231320.P14917835880585282410

`A231324(A052905(n)+9)`
-/

namespace A231320.P14917835880585282410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A052905 n + 9).toNat

end

end A231320.P14917835880585282410

/-! ## A231320.P4830666544444671292

`A231324(A167614(n+2)+1)`
-/

namespace A231320.P4830666544444671292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A167614 (n + 2) + 1).toNat

end

end A231320.P4830666544444671292

/-! ## A231320.P14788472402732783332

`A231324(eq[5, A131818(n+1)])`
-/

namespace A231320.P14788472402732783332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231320.P14788472402732783332

/-! ## A231320.P964677760643090999

`A231324(A141214(n+1))`
-/

namespace A231320.P964677760643090999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A141214 (n + 1)).toNat

end

end A231320.P964677760643090999

/-!
# A231321: Number of (n+1)X(5+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231321, there is no canonical definition to state claims against.
-/

/-! ## A231321.P16483296412376160951

`6*A231128(n+1)²`
-/

namespace A231321.P16483296412376160951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A231128 (n + 1) ^ 2

end

end A231321.P16483296412376160951

/-! ## A231321.P4189987559779724981

`A231324(A374005(n+1))`
-/

namespace A231321.P4189987559779724981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A374005 (n + 1)).toNat

end

end A231321.P4189987559779724981

/-! ## A231321.P9025656014322657261

`A231324(A167499(n+3))`
-/

namespace A231321.P9025656014322657261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A167499 (n + 3)).toNat

end

end A231321.P9025656014322657261

/-! ## A231321.P10893960778168892086

`A231324(A141214(n+1)+8)`
-/

namespace A231321.P10893960778168892086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (A141214 (n + 1) + 8).toNat

end

end A231321.P10893960778168892086

/-! ## A231321.P8287656250283405906

`A231324(eq[2, A092921(n)])`
-/

namespace A231321.P8287656250283405906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231321.P8287656250283405906

/-!
# A231322: 

The programs for A231322, there is no canonical definition to state claims against.
-/

/-! ## A231322.P15785589252195583888

`A231324(eq[7, A131818(n+1)])`
-/

namespace A231322.P15785589252195583888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231322.P15785589252195583888

/-! ## A231322.P12279082593665430584

`A231324(eq[3, A219347(n)])`
-/

namespace A231322.P12279082593665430584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231322.P12279082593665430584

/-! ## A231322.P12963826521444496513

`A231324(eq[5, A193592(n)])`
-/

namespace A231322.P12963826521444496513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231322.P12963826521444496513

/-! ## A231322.P6923847994102346592

`A231324(eq[6, A200370(n+1)])`
-/

namespace A231322.P6923847994102346592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231322.P6923847994102346592

/-! ## A231322.P12726914993532947865

`A231324(Δ[Δ[A006504(n+1)]])`
-/

namespace A231322.P12726914993532947865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (f1 (n + 1) - f1 n).toNat

end

end A231322.P12726914993532947865

/-!
# A231323: 

The programs for A231323, there is no canonical definition to state claims against.
-/

/-! ## A231323.P15720192785601705364

`6*A231130(n+1)²`
-/

namespace A231323.P15720192785601705364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A231130 (n + 1) ^ 2

end

end A231323.P15720192785601705364

/-! ## A231323.P13565900128496833717

`A231324(eq[4, A219347(n)])`
-/

namespace A231323.P13565900128496833717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231323.P13565900128496833717

/-! ## A231323.P7230263352216524646

`A231324(eq[6, A193592(n)])`
-/

namespace A231323.P7230263352216524646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231323.P7230263352216524646

/-! ## A231323.P15177914329163046181

`A231324(eq[7, A200370(n+1)])`
-/

namespace A231323.P15177914329163046181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231323.P15177914329163046181

/-!
# A231324: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231324, there is no canonical definition to state claims against.
-/

/-! ## A231324.P8233276892415256602

`6*A231131(n+1)*A231137(n+1)`
-/

namespace A231324.P8233276892415256602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A231131 (n + 1) * A231137 (n + 1))

end

end A231324.P8233276892415256602

/-! ## A231324.P5718210925285473191

`A008458(A231131(n+1))*A231137(n+1)`
-/

namespace A231324.P5718210925285473191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A231131 (n + 1)).toNat * A231137 (n + 1)

end

end A231324.P5718210925285473191

/-! ## A231324.P10914821664264347437

`A008588(A231131(n+1)*A231137(n+1))`
-/

namespace A231324.P10914821664264347437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A231131 (n + 1) * A231137 (n + 1)).toNat

end

end A231324.P10914821664264347437

/-! ## A231324.P7833396979447126146

`A008458(A231137(n+1))*A382770(A200713(n+1))`
-/

namespace A231324.P7833396979447126146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A231137 (n + 1)).toNat * A382770 (A200713 (n + 1)).toNat

end

end A231324.P7833396979447126146

/-!
# A231325: Larger of corresponding digits of Pi and e.

The programs for A231325, there is no canonical definition to state claims against.
-/

/-! ## A231325.P10646572597081882839

`A228239(n+1)+A073223(n)`
-/

namespace A231325.P10646572597081882839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) + A073223 n

end

end A231325.P10646572597081882839

/-! ## A231325.P6540340632674697515

`A073212(n)-A228239(n+1)`
-/

namespace A231325.P6540340632674697515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A228239 (n + 1)

end

end A231325.P6540340632674697515

/-! ## A231325.P17040600149891762402

`(A073223(n)+A073212(n))/2`
-/

namespace A231325.P17040600149891762402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073223 n + A073212 n : ℚ) / 2

end

end A231325.P17040600149891762402

/-! ## A231325.P9593286793069166550

`A228239(n+1)+abs(A187747(n))`
-/

namespace A231325.P9593286793069166550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) + |A187747 n|

end

end A231325.P9593286793069166550

/-! ## A231325.P5405083986707583415

`(A073212(n)+abs(A187747(n)))/2`
-/

namespace A231325.P5405083986707583415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073212 n + |A187747 n| : ℚ) / 2

end

end A231325.P5405083986707583415

/-! ## A231325.P969982155686018733

`A004526(A073223(n)+A073212(n))`
-/

namespace A231325.P969982155686018733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073223 n + A073212 n).toNat

end

end A231325.P969982155686018733

/-! ## A231325.P16517872204477943244

`A004526(A073212(n)+abs(A187747(n)))`
-/

namespace A231325.P16517872204477943244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073212 n + |A187747 n|).toNat

end

end A231325.P16517872204477943244

/-! ## A231325.P17768168323975281338

`A004526(A073212(n)+dr(A187747(n)))`
-/

namespace A231325.P17768168323975281338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073212 n + (SequenceMachineLib.digitalRoot (A187747 n) : ℤ)).toNat

end

end A231325.P17768168323975281338

/-! ## A231325.P2216322798228741131

`A000796(n)+A001113(n)-A228239(n+1)`
-/

namespace A231325.P2216322798228741131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (A001113 (n + 1) - A228239 (n + 1))

end

end A231325.P2216322798228741131

/-! ## A231325.P14979427820646551455

`A228239(n+1)+gcd(A000038(n), A187747(n))`
-/

namespace A231325.P14979427820646551455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) + (Int.gcd (A000038 n) (A187747 n) : ℤ)

end

end A231325.P14979427820646551455

/-! ## A231325.P13313949156094791787

`A228239(n+1)+lcm(A033999(n), A187747(n))`
-/

namespace A231325.P13313949156094791787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228239 (n + 1) + (Int.lcm (A033999 n) (A187747 n) : ℤ)

end

end A231325.P13313949156094791787

/-! ## A231325.P18283596558916794383

`A073212(n)-A004526(A073212(n)-A073223(n))`
-/

namespace A231325.P18283596558916794383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A004526 (A073212 n - A073223 n).toNat

end

end A231325.P18283596558916794383

/-!
# A231326: Primes p such that p - 2*k is also prime, where p is k-th prime.

The programs for A231326, there is no canonical definition to state claims against.
-/

/-! ## A231326.P3701058175002998756

`A000040(A174185(n+2))`
-/

namespace A231326.P3701058175002998756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A174185 (n + 2)).toNat

end

end A231326.P3701058175002998756

/-! ## A231326.P17472052198721874977

`p?[A006005(A174185(n+1))]`
-/

namespace A231326.P17472052198721874977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A174185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231326.P17472052198721874977

/-! ## A231326.P3410034021691424308

`A008578(A174185(n+2)+1)`
-/

namespace A231326.P3410034021691424308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A174185 (n + 2) + 1).toNat

end

end A231326.P3410034021691424308

/-! ## A231326.P9635953339094057217

`A175787(A174185(n+2)+1)`
-/

namespace A231326.P9635953339094057217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A174185 (n + 2) + 1).toNat

end

end A231326.P9635953339094057217

/-! ## A231326.P18090291051920064077

`A045344(A174185(n+2)-1)`
-/

namespace A231326.P18090291051920064077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A174185 (n + 2) - 1).toNat

end

end A231326.P18090291051920064077

/-! ## A231326.P8023788982527814386

`A046022(A174185(n+2)+2)`
-/

namespace A231326.P8023788982527814386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A174185 (n + 2) + 2).toNat

end

end A231326.P8023788982527814386

/-! ## A231326.P11114467461648474868

`A065091(A174185(n+2)-1)`
-/

namespace A231326.P11114467461648474868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A174185 (n + 2) - 1).toNat

end

end A231326.P11114467461648474868

/-! ## A231326.P17606963358888174224

`A162753(2*A174185(n+2))`
-/

namespace A231326.P17606963358888174224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A174185 (n + 2)).toNat

end

end A231326.P17606963358888174224

/-! ## A231326.P9569719706914990995

`A207790(2*A174185(n+2))`
-/

namespace A231326.P9569719706914990995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A174185 (n + 2)).toNat

end

end A231326.P9569719706914990995

/-! ## A231326.P14751502294889045515

`A093515(2*A174185(n+2)-2)`
-/

namespace A231326.P14751502294889045515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A174185 (n + 2) - 2).toNat

end

end A231326.P14751502294889045515

/-!
# A231327: Denominator of rational component of zeta(4n)/zeta(2n).

The programs for A231327, there is no canonical definition to state claims against.
-/

/-! ## A231327.P3741766996199233179

`A340471(A008574(n))/A002432(n)`
-/

namespace A231327.P3741766996199233179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340471 (A008574 n).toNat : ℚ) / (A002432 n : ℚ)

end

end A231327.P3741766996199233179

/-!
# A231328: Integer areas of the reflection triangles of integer-sided triangles.

The programs for A231328, there is no canonical definition to state claims against.
-/

/-! ## A231328.P6185128947117791508

`3*A009112(n+1)`
-/

namespace A231328.P6185128947117791508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A009112 (n + 1)

end

end A231328.P6185128947117791508

/-! ## A231328.P1232528385404322512

`18*A177887(n+1)`
-/

namespace A231328.P1232528385404322512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A177887 (n + 1)

end

end A231328.P1232528385404322512

/-! ## A231328.P17910858315296463886

`3/2*A118903(n+1)`
-/

namespace A231328.P17910858315296463886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A118903 (n + 1) : ℚ)

end

end A231328.P17910858315296463886

/-! ## A231328.P4193406061516702599

`3/4*A256418(n+1)`
-/

namespace A231328.P4193406061516702599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A256418 (n + 1) : ℚ)

end

end A231328.P4193406061516702599

/-! ## A231328.P1073047437285827106

`3*record[A009111(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A231328.P1073047437285827106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009111 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231328.P1073047437285827106

/-!
# A231331: Number of distinct terms in row n of triangle A230871.

The programs for A231331, there is no canonical definition to state claims against.
-/

/-! ## A231331.P12122693366948292535

`A001405(n)+and(4, A329685(n+1))`
-/

namespace A231331.P12122693366948292535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + Int.land 4 (A329685 (n + 1))

end

end A231331.P12122693366948292535

/-! ## A231331.P10027342951504351544

`A147045(A147029(n+1))+(∏[2*or(1, n)/(n+1)]-2)/2`
-/

namespace A231331.P10027342951504351544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147045 (A147029 (n + 1)).toNat : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2

end

end A231331.P10027342951504351544

/-! ## A231331.P15168847627856691249

`A036852(A081123(n))+A026034(n)`
-/

namespace A231331.P15168847627856691249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036852 (A081123 n).toNat + A026034 n

end

end A231331.P15168847627856691249

/-! ## A231331.P1883331948785268181

`A156776(A081123(n))+A001405(n)`
-/

namespace A231331.P1883331948785268181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156776 (A081123 n).toNat + A001405 n

end

end A231331.P1883331948785268181

/-! ## A231331.P7408899055885602833

`A128622(A148615(n))`
-/

namespace A231331.P7408899055885602833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128622 (A148615 n).toNat

end

end A231331.P7408899055885602833

/-!
# A231332: Primes p = prime(k) such that p - 2k and p + 2k are prime.

The programs for A231332, there is no canonical definition to state claims against.
-/

/-! ## A231332.P17177745809066272529

`∩[A231232(n+1), A231326(n+1)]`
-/

namespace A231332.P17177745809066272529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231332.P17177745809066272529

/-! ## A231332.P8492673945208627048

`∩[A231326(n+1), A364877(n+1)]`
-/

namespace A231332.P8492673945208627048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231332.P8492673945208627048

/-! ## A231332.P8731972789716317304

`A000040(A112529(n+1))`
-/

namespace A231332.P8731972789716317304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112529 (n + 1)).toNat

end

end A231332.P8731972789716317304

/-! ## A231332.P2631490227010139431

`A008578(A112529(n+1)+1)`
-/

namespace A231332.P2631490227010139431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A112529 (n + 1) + 1).toNat

end

end A231332.P2631490227010139431

/-! ## A231332.P1737642885821682599

`A182986(A112529(n+1)+1)`
-/

namespace A231332.P1737642885821682599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A112529 (n + 1) + 1).toNat

end

end A231332.P1737642885821682599

/-! ## A231332.P6588208881017951623

`A045319(A112529(n+1)-1)`
-/

namespace A231332.P6588208881017951623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A112529 (n + 1) - 1).toNat

end

end A231332.P6588208881017951623

/-! ## A231332.P7410372483986999345

`A045344(A112529(n+1)-1)`
-/

namespace A231332.P7410372483986999345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A112529 (n + 1) - 1).toNat

end

end A231332.P7410372483986999345

/-! ## A231332.P6775534209349471411

`A046022(A112529(n+1)+2)`
-/

namespace A231332.P6775534209349471411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A112529 (n + 1) + 2).toNat

end

end A231332.P6775534209349471411

/-! ## A231332.P12853319746555539006

`A065091(A112529(n+1)-1)`
-/

namespace A231332.P12853319746555539006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A112529 (n + 1) - 1).toNat

end

end A231332.P12853319746555539006

/-! ## A231332.P15140058833991626315

`A158611(A112529(n+1)+2)`
-/

namespace A231332.P15140058833991626315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A112529 (n + 1) + 2).toNat

end

end A231332.P15140058833991626315

/-!
# A231333: a(n) = lcm_{p is a prime divisor of n} (n/p - 1).

The programs for A231333, there is no canonical definition to state claims against.
-/

/-! ## A231333.P6937008284963315841

`A140271(A007956(n+1))-A055396(A134865(n+1))`
-/

namespace A231333.P6937008284963315841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (A007956 (n + 1)).toNat - A055396 (A134865 (n + 1)).toNat

end

end A231333.P6937008284963315841

/-! ## A231333.P14989206985945665712

`A361430(A374431(n+1))`
-/

namespace A231333.P14989206985945665712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A374431 (n + 1)).toNat

end

end A231333.P14989206985945665712

/-! ## A231333.P11665182082405737105

`∏{p}[∑[A011557(A243830(n))], (n+1)/#-1]`
-/

namespace A231333.P11665182082405737105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A243830 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 1 : ℚ) / (p : ℚ) - 1)

end

end A231333.P11665182082405737105

/-! ## A231333.P13826208203716814388

`∏{p}[n+1, A335467(A073788((n+1)/#))]`
-/

namespace A231333.P13826208203716814388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A335467 (A073788 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat).toNat

end

end A231333.P13826208203716814388

/-! ## A231333.P526189186119047725

`A102483(A032742(n+1)+A000007(n))`
-/

namespace A231333.P526189186119047725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102483 (A032742 (n + 1) + A000007 n).toNat

end

end A231333.P526189186119047725

/-!
# A231334: Lexicographically earliest sequence of distinct positive integers such that for any distinct i,j, k, the points at positions (i, a(i)), (j, a(j)), (k, a(k)) are not aligned.

The programs for A231334, there is no canonical definition to state claims against.
-/

/-! ## A231334.P6899932948189548017

`A364311(n)+1`
-/

namespace A231334.P6899932948189548017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364311 n + 1

end

end A231334.P6899932948189548017

/-! ## A231334.P1320175504435127984

`A027656(2*A364311(n))`
-/

namespace A231334.P1320175504435127984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A364311 n).toNat

end

end A231334.P1320175504435127984

/-! ## A231334.P17313423566593411629

`A028242(2*A364311(n))`
-/

namespace A231334.P17313423566593411629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A364311 n).toNat

end

end A231334.P17313423566593411629

/-! ## A231334.P2217895436706536750

`A300670(∑[n+1]+2)`
-/

namespace A231334.P2217895436706536750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300670 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231334.P2217895436706536750

/-!
# A231335: Number of distinct Fibonacci numbers in rows of triangle A230871.

The programs for A231335, there is no canonical definition to state claims against.
-/

/-! ## A231335.P3944343674201630208

`A308625(A192954(n))+A308622(n)`
-/

namespace A231335.P3944343674201630208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308625 (A192954 n).toNat + A308622 n

end

end A231335.P3944343674201630208

/-! ## A231335.P979390364884438167

`A308626(A047082(n+1))+A308622(n)`
-/

namespace A231335.P979390364884438167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308626 (A047082 (n + 1)).toNat + A308622 n

end

end A231335.P979390364884438167

/-! ## A231335.P17575422310800740181

`A345935(n+1)+A120891(A026665(n))`
-/

namespace A231335.P17575422310800740181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345935 (n + 1) + A120891 (A026665 n).toNat

end

end A231335.P17575422310800740181

/-!
# A231336: Integers n such that appending some decimal digit to the first n digits of Pi results in a prime.

The programs for A231336, there is no canonical definition to state claims against.
-/

/-! ## A231336.P7497742870015033037

`lt[A028326(A005382(n+1)), A060525(n+3)]`
-/

namespace A231336.P7497742870015033037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A005382 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060525 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231336.P7497742870015033037

/-!
# A231337: Number of (n+1) X (1+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231337, the canonical program `A231337.P8869999464452470283` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231337 has offset 1).

The definition of A231337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231337.P18264159910065704580

`ogf((3-5x-8x^2+8x^3+6x^4)/(1-3x-x^2+7x^3-x^4-3x^5))`
-/

namespace A231337.P18264159910065704580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5, -8, 8, 6] [1, -3, -1, 7, -1, -3] n

end

end A231337.P18264159910065704580

namespace A231337

/-- `ogf((3-5x-8x^2+8x^3+6x^4)/(1-3x-x^2+7x^3-x^4-3x^5))` -/
def P18264159910065704580.Spec : Prop :=
  ∀ n, P18264159910065704580.a n = A231337 (n + 1)

end A231337

/-! ## A231337.P8869999464452470283

`3*a(n-1)+a(n-2)-7*a(n-3)+a(n-4)+3*a(n-5)` with `a(0)=3, a(1)=4, a(2)=7, a(3)=12, a(4)=24`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231337

/-- `3*a(n-1)+a(n-2)-7*a(n-3)+a(n-4)+3*a(n-5)` -/
def P8869999464452470283.Spec : Prop :=
  ∀ n, P8869999464452470283.a n = A231337 (n + 1)

theorem P8869999464452470283.correct : P8869999464452470283.Spec := by
  intro n
  simp only [A231337, Nat.add_sub_cancel]

end A231337

/-! ## A231337.P399692795165168195

`A199142(n+4)+1`
-/

namespace A231337.P399692795165168195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199142 (n + 4) + 1

end

end A231337.P399692795165168195

namespace A231337

/-- `A199142(n+4)+1` -/
def P399692795165168195.Spec : Prop :=
  ∀ n, P399692795165168195.a n = A231337 (n + 1)

end A231337

/-! ## A231337.P12461684387705090985

`A231458(n+1)-A040012(A266123(n))`
-/

namespace A231337.P12461684387705090985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231458 (n + 1) - A040012 (A266123 n).toNat

end

end A231337.P12461684387705090985

namespace A231337

/-- `A231458(n+1)-A040012(A266123(n))` -/
def P12461684387705090985.Spec : Prop :=
  ∀ n, P12461684387705090985.a n = A231337 (n + 1)

end A231337

/-! ## A231337.P4818240933171790791

`A231458(n+1)-A145154(A136548(n+1))`
-/

namespace A231337.P4818240933171790791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231458 (n + 1) - A145154 (A136548 (n + 1)).toNat

end

end A231337.P4818240933171790791

namespace A231337

/-- `A231458(n+1)-A145154(A136548(n+1))` -/
def P4818240933171790791.Spec : Prop :=
  ∀ n, P4818240933171790791.a n = A231337 (n + 1)

end A231337

/-! ## A231337.P5320675162202250932

`A231458(n+1)-A145154(A003274(n)/A069241(n))`
-/

namespace A231337.P5320675162202250932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231458 (n + 1) - A145154 (SequenceMachineLib.roundAway ((A003274 n : ℚ) / (A069241 n : ℚ))).toNat

end

end A231337.P5320675162202250932

namespace A231337

/-- `A231458(n+1)-A145154(A003274(n)/A069241(n))` -/
def P5320675162202250932.Spec : Prop :=
  ∀ n, P5320675162202250932.a n = A231337 (n + 1)

end A231337

/-!
# A231338: Number of (n+1) X (2+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231338, the canonical program `A231338.P2896643505112123228` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231338 has offset 1).

The definition of A231338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231338.P2896643505112123228

`ogf((4-11x+x^2-5x^3+10x^4+2x^5+3x^6)/(1-5x+6x^2-2x^3+8x^4-6x^5+x^6-3x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231338

/-- `ogf((4-11x+x^2-5x^3+10x^4+2x^5+3x^6)/(1-5x+6x^2-2x^3+8x^4-6x^5+x^6-3x^7))` -/
def P2896643505112123228.Spec : Prop :=
  ∀ n, P2896643505112123228.a n = A231338 (n + 1)

theorem P2896643505112123228.correct : P2896643505112123228.Spec := by
  intro n
  simp only [A231338, Nat.add_sub_cancel]

end A231338

/-! ## A231338.P9752146112729002431

`A231343(∑[n+1]+2)`
-/

namespace A231338.P9752146112729002431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231338.P9752146112729002431

namespace A231338

/-- `A231343(∑[n+1]+2)` -/
def P9752146112729002431.Spec : Prop :=
  ∀ n, P9752146112729002431.a n = A231338 (n + 1)

end A231338

/-! ## A231338.P15688952055504821943

`record[A231343(n+2)/A264902(n)]`
-/

namespace A231338.P15688952055504821943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231343 (n + 2) : ℚ) / (A264902 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231338.P15688952055504821943

namespace A231338

/-- `record[A231343(n+2)/A264902(n)]` -/
def P15688952055504821943.Spec : Prop :=
  ∀ n, P15688952055504821943.a n = (A231338 (n + 1) : ℚ)

end A231338

/-! ## A231338.P11284660107518627314

`record[gcd(A002262(n), A231343(n+2))]`
-/

namespace A231338.P11284660107518627314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A231343 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231338.P11284660107518627314

namespace A231338

/-- `record[gcd(A002262(n), A231343(n+2))]` -/
def P11284660107518627314.Spec : Prop :=
  ∀ n, (P11284660107518627314.a n : ℤ) = A231338 (n + 1)

end A231338

/-! ## A231338.P4233965453271579200

`record[A231343(abs(A201163(n)))]`
-/

namespace A231338.P4233965453271579200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231338.P4233965453271579200

namespace A231338

/-- `record[A231343(abs(A201163(n)))]` -/
def P4233965453271579200.Spec : Prop :=
  ∀ n, P4233965453271579200.a n = A231338 (n + 1)

end A231338

/-!
# A231339: Number of (n+1)X(3+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231339, there is no canonical definition to state claims against.
-/

/-! ## A231339.P4760997594471465488

`A231343(∑[n+2]+4)`
-/

namespace A231339.P4760997594471465488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231339.P4760997594471465488

/-! ## A231339.P14415542203875972089

`A231343(A167614(n+1))+A025466(n)`
-/

namespace A231339.P14415542203875972089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A167614 (n + 1)).toNat + A025466 n

end

end A231339.P14415542203875972089

/-! ## A231339.P17593773859209205355

`A231343(A167614(n+1))+A025469(n)`
-/

namespace A231339.P17593773859209205355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A167614 (n + 1)).toNat + A025469 n

end

end A231339.P17593773859209205355

/-! ## A231339.P17002218887008283248

`A231343(A167614(n+1))+A165656(n)`
-/

namespace A231339.P17002218887008283248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A167614 (n + 1)).toNat + A165656 n

end

end A231339.P17002218887008283248

/-! ## A231339.P61087632018667415

`A231343(A167614(n+1))+A184945(n)`
-/

namespace A231339.P61087632018667415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A167614 (n + 1)).toNat + A184945 n

end

end A231339.P61087632018667415

/-!
# A231340: Number of (n+1)X(4+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231340, there is no canonical definition to state claims against.
-/

/-! ## A231340.P10256067815681973572

`A231343(∑[n+3]+7)`
-/

namespace A231340.P10256067815681973572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231340.P10256067815681973572

/-! ## A231340.P15774080800602930380

`A231343(A052905(n)+9)+A025466(n)`
-/

namespace A231340.P15774080800602930380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A052905 n + 9).toNat + A025466 n

end

end A231340.P15774080800602930380

/-! ## A231340.P8681939408703393682

`A231343(A052905(n)+9)*A324160(n)`
-/

namespace A231340.P8681939408703393682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A052905 n + 9).toNat * A324160 n

end

end A231340.P8681939408703393682

/-! ## A231340.P7638529440346989941

`A231343(A052905(n)+9)+A162782(n+1)`
-/

namespace A231340.P7638529440346989941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A052905 n + 9).toNat + A162782 (n + 1)

end

end A231340.P7638529440346989941

/-!
# A231341: Number of (n+1) X (5+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231341, there is no canonical definition to state claims against.
-/

/-! ## A231341.P7004888188747448873

`A231343(A374005(n+1))`
-/

namespace A231341.P7004888188747448873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A374005 (n + 1)).toNat

end

end A231341.P7004888188747448873

/-! ## A231341.P753481884220645389

`A231343(A167499(n+3))`
-/

namespace A231341.P753481884220645389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A167499 (n + 3)).toNat

end

end A231341.P753481884220645389

/-! ## A231341.P8489756833597817199

`A231343(A155212(n)+13)`
-/

namespace A231341.P8489756833597817199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A155212 n + 13).toNat

end

end A231341.P8489756833597817199

/-! ## A231341.P15575192415332814727

`A231343(A056000(n)+15)`
-/

namespace A231341.P15575192415332814727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A056000 n + 15).toNat

end

end A231341.P15575192415332814727

/-! ## A231341.P2447924583022729709

`A231343(eq[7, A066657(n)])`
-/

namespace A231341.P2447924583022729709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231341.P2447924583022729709

/-!
# A231342: Number of (n+1) X (6+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231342, there is no canonical definition to state claims against.
-/

/-! ## A231342.P7140694522064406036

`A231343(A374007(n+1))`
-/

namespace A231342.P7140694522064406036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A374007 (n + 1)).toNat

end

end A231342.P7140694522064406036

/-! ## A231342.P14880372500590687960

`A231343(A166136(n+4))`
-/

namespace A231342.P14880372500590687960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A166136 (n + 4)).toNat

end

end A231342.P14880372500590687960

/-! ## A231342.P14615404221927057731

`A231343(A056115(n)+21)`
-/

namespace A231342.P14615404221927057731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A056115 n + 21).toNat

end

end A231342.P14615404221927057731

/-! ## A231342.P14050466027248322028

`A231343(A167499(n+4)+1)`
-/

namespace A231342.P14050466027248322028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231343 (A167499 (n + 4) + 1).toNat

end

end A231342.P14050466027248322028

/-!
# A231343: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and vertical neighbors, with values 0..3 introduced in row major order.

The programs for A231343, there is no canonical definition to state claims against.
-/

/-! ## A231343.P6817053733745970728

`A231219(n+1)+A162782(∑[n+1])`
-/

namespace A231343.P6817053733745970728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (n + 1) + A162782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231343.P6817053733745970728

/-! ## A231343.P12503706107389348312

`A231219(n+1)+A185284(3*n+2)`
-/

namespace A231343.P12503706107389348312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (n + 1) + A185284 (3 * n + 2)

end

end A231343.P12503706107389348312

/-! ## A231343.P11949778115993015873

`A231219(n+1)+A003982(A005558(n))`
-/

namespace A231343.P11949778115993015873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (n + 1) + A003982 (A005558 n).toNat

end

end A231343.P11949778115993015873

/-! ## A231343.P3587734688807920463

`A231219(n+1)+A025466(A007283(n))`
-/

namespace A231343.P3587734688807920463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (n + 1) + A025466 (A007283 n).toNat

end

end A231343.P3587734688807920463

/-! ## A231343.P1524810673271627293

`A231219(n+1)+A025466(A181936(n))`
-/

namespace A231343.P1524810673271627293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231219 (n + 1) + A025466 (A181936 n).toNat

end

end A231343.P1524810673271627293

/-!
# A231344: Number of morphisms in full subcategories of Set spanned by {{}, {1}, {1, 2}, ..., {1, 2, ..., n}}.

The programs for A231344, there is no canonical definition to state claims against.
-/

/-! ## A231344.P9982508228275988971

`A230980(A306228(n)+n)`
-/

namespace A231344.P9982508228275988971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A306228 n + (n : ℤ)).toNat

end

end A231344.P9982508228275988971

/-! ## A231344.P3854965223048228680

`∑[record[A033099(A033092(n))]]`
-/

namespace A231344.P3854965223048228680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (A033092 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231344.P3854965223048228680

/-!
# A231345: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the odd numbers interleaved with k-1 zeros but T(n,1) = -1 and the first element of column k is in row k(k+1)/2.

The programs for A231345, there is no canonical definition to state claims against.
-/

/-! ## A231345.P11533872296343595314

`-A271344(n+1)`
-/

namespace A231345.P11533872296343595314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A271344 (n + 1)

end

end A231345.P11533872296343595314

/-! ## A231345.P487424394849750397

`Δ[a(n-1)-A271344(n)]` with `a(0)=1`
-/

namespace A231345.P487424394849750397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A271344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231345.P487424394849750397

/-! ## A231345.P5744329373636714462

`A264668(n)-A271344(n+1)`
-/

namespace A231345.P5744329373636714462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A271344 (n + 1)

end

end A231345.P5744329373636714462

/-! ## A231345.P5712609644749231496

`A276689(n²)-A271344(n+1)`
-/

namespace A231345.P5712609644749231496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (n ^ 2) - A271344 (n + 1)

end

end A231345.P5712609644749231496

/-! ## A231345.P9077468281195615111

`char[A221005(n)]-A271344(n+1)`
-/

namespace A231345.P9077468281195615111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221005 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A271344 (n + 1)

end

end A231345.P9077468281195615111

/-! ## A231345.P10266404834978834481

`char[A264182(n)]-A271344(n+1)`
-/

namespace A231345.P10266404834978834481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264182 (n + 20)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A271344 (n + 1)

end

end A231345.P10266404834978834481

/-! ## A231345.P18268644377092078145

`A028310(2-A271344(n+1))-2`
-/

namespace A231345.P18268644377092078145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 - A271344 (n + 1)).toNat - 2

end

end A231345.P18268644377092078145

/-! ## A231345.P334034677773424536

`A000007(n+1)-A271344(n+1)`
-/

namespace A231345.P334034677773424536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A271344 (n + 1)

end

end A231345.P334034677773424536

/-! ## A231345.P6546378955660100836

`A112802(n+1)-A271344(n+1)`
-/

namespace A231345.P6546378955660100836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112802 (n + 1) - A271344 (n + 1)

end

end A231345.P6546378955660100836

/-! ## A231345.P6424164142915430769

`A007814(2*n+1)-A271344(n+1)`
-/

namespace A231345.P6424164142915430769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) - A271344 (n + 1)

end

end A231345.P6424164142915430769

/-!
# A231347: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the odd numbers interleaved with k-1 zeros but T(n,1) = n - 1 and the first element of column k is in row k(k+1)/2.

The programs for A231347, there is no canonical definition to state claims against.
-/

/-! ## A231347.P7850952639710137456

`A196020(n+1)%A262535(n+1)`
-/

namespace A231347.P7850952639710137456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 1)) (A262535 (n + 1))

end

end A231347.P7850952639710137456

/-! ## A231347.P4239881050090228860

`(A196020(n+1)-A271344(n+1))/2`
-/

namespace A231347.P4239881050090228860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196020 (n + 1) - A271344 (n + 1) : ℚ) / 2

end

end A231347.P4239881050090228860

/-! ## A231347.P503789447168738096

`(A272026(n+1)/3)%A328368(n+1)`
-/

namespace A231347.P503789447168738096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A272026 (n + 1) : ℚ) / 3)) (A328368 (n + 1))

end

end A231347.P503789447168738096

/-! ## A231347.P5887730305088399571

`(A239662(n+1)/4)%A328368(n+1)`
-/

namespace A231347.P5887730305088399571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A239662 (n + 1) : ℚ) / 4)) (A328368 (n + 1))

end

end A231347.P5887730305088399571

/-! ## A231347.P13325239048513196715

`A196020(C(n+1, n))%A329255(n+1)`
-/

namespace A231347.P13325239048513196715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (Nat.choose (n + 1) n)) (A329255 (n + 1))

end

end A231347.P13325239048513196715

/-! ## A231347.P7484650702369151124

`A196020(n+1)%A101776(A000788(n))`
-/

namespace A231347.P7484650702369151124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196020 (n + 1)) (A101776 (A000788 n).toNat)

end

end A231347.P7484650702369151124

/-! ## A231347.P12529887824726099641

`A001281(A196020(n+1)-A271344(n+1))`
-/

namespace A231347.P12529887824726099641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A196020 (n + 1) - A271344 (n + 1)).toNat

end

end A231347.P12529887824726099641

/-! ## A231347.P6915947804646991541

`A004525(A196020(n+1)-A271344(n+1))`
-/

namespace A231347.P6915947804646991541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A196020 (n + 1) - A271344 (n + 1)).toNat

end

end A231347.P6915947804646991541

/-! ## A231347.P7673468052988278444

`A004526(A196020(n+1)-A271344(n+1))`
-/

namespace A231347.P7673468052988278444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A196020 (n + 1) - A271344 (n + 1)).toNat

end

end A231347.P7673468052988278444

/-!
# A231348: Number of triangles after n-th stage in a cellular automaton based in isosceles triangles of two sizes (see Comments lines for precise definition).

The programs for A231348, there is no canonical definition to state claims against.
-/

/-! ## A231348.P14866640516705401235

`A231349(n)+a(n-1)` with `a(0)=0`
-/

namespace A231348.P14866640516705401235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A231349 n + a (n - 1)

end

end A231348.P14866640516705401235

/-! ## A231348.P15188171630338736646

`∑[A231349(n^floor(atan(n)))]-1`
-/

namespace A231348.P15188171630338736646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231349 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A231348.P15188171630338736646

/-! ## A231348.P5871414531141723605

`∑[A231349(abs(1-n)+1)]-2`
-/

namespace A231348.P5871414531141723605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231349 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A231348.P5871414531141723605

/-! ## A231348.P6026869677957350035

`abs(1-∑[A231349(A028310(n))])`
-/

namespace A231348.P6026869677957350035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A231348.P6026869677957350035

/-! ## A231348.P12588602514439979094

`∑[A057427(n)*A231349(A028310(n))]`
-/

namespace A231348.P12588602514439979094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A231349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231348.P12588602514439979094

/-! ## A231348.P11951761100052685875

`∑[A178334(n)*A231349(A028310(n))]`
-/

namespace A231348.P11951761100052685875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A231349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231348.P11951761100052685875

/-! ## A231348.P5905096059913799648

`∑[A231349(A028310(n))%A000124(n)]`
-/

namespace A231348.P5905096059913799648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231349 (A028310 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231348.P5905096059913799648

/-! ## A231348.P14340191362402435723

`∑[A057428(n)²*A231349(A028310(n))]`
-/

namespace A231348.P14340191362402435723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A231349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231348.P14340191362402435723

/-! ## A231348.P3946292359605013739

`∑[A000040(n+1)%2*A231349(A028310(n))]`
-/

namespace A231348.P3946292359605013739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A231349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231348.P3946292359605013739

/-! ## A231348.P2081855957749292129

`∑[A014963(n²+2)%2*A231349(A028310(n))]`
-/

namespace A231348.P2081855957749292129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n ^ 2 + 2)) 2 * A231349 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231348.P2081855957749292129

/-!
# A231349: Number of triangles added at n-th stage to the structure of A231348.

The programs for A231349, there is no canonical definition to state claims against.
-/

/-! ## A231349.P16656468290135150550

`Δ[A231348(n)]`
-/

namespace A231349.P16656468290135150550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231349.P16656468290135150550

/-! ## A231349.P1488872389564876422

`A231348(n+1)-A231348(n)`
-/

namespace A231349.P1488872389564876422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (n + 1) - A231348 n

end

end A231349.P1488872389564876422

/-! ## A231349.P11825847146176166353

`A000032(C(2, n+2))*A231351(A028310(n))`
-/

namespace A231349.P11825847146176166353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A231351 (A028310 n).toNat

end

end A231349.P11825847146176166353

/-! ## A231349.P11879289720973057447

`A020639(a(n-1))*A231351(A028310(n))` with `a(0)=1, a(1)=2`
-/

namespace A231349.P11879289720973057447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A231351 (A028310 n).toNat

end

end A231349.P11879289720973057447

/-! ## A231349.P10847260133605627545

`A000032(floor(1/(n+1)))*A231351(A028310(n))`
-/

namespace A231349.P10847260133605627545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A231351 (A028310 n).toNat

end

end A231349.P10847260133605627545

/-! ## A231349.P8423701780054839333

`A014963(A001316(n))*A231351(A028310(n))`
-/

namespace A231349.P8423701780054839333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A231351 (A028310 n).toNat

end

end A231349.P8423701780054839333

/-! ## A231349.P7700220480819762666

`A020639(A004277(n))*A231351(A028310(n))`
-/

namespace A231349.P7700220480819762666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A231351 (A028310 n).toNat

end

end A231349.P7700220480819762666

/-! ## A231349.P2654550454987026248

`A020639(A000040(n+1)-1)*A231351(A028310(n))`
-/

namespace A231349.P2654550454987026248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A231351 (A028310 n).toNat

end

end A231349.P2654550454987026248

/-! ## A231349.P6951812432870264389

`A014963(∏{digits}[n, 2^#])*A231351(A028310(n))`
-/

namespace A231349.P6951812432870264389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod * A231351 (A028310 n).toNat

end

end A231349.P6951812432870264389

/-!
# A231351: a(n) = A231349(n+1)/2.

The programs for A231351, there is no canonical definition to state claims against.
-/

/-! ## A231351.P2513057502819680188

`A231349(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231351.P2513057502819680188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231349 (n + 2) : ℚ) / 2

end

end A231351.P2513057502819680188

/-! ## A231351.P10938120835133714411

`Δ[A231348(n+1)/2]`
-/

namespace A231351.P10938120835133714411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231348 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231351.P10938120835133714411

/-! ## A231351.P14681905782798588871

`A001281(A231349(n+2))`
-/

namespace A231351.P14681905782798588871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A231349 (n + 2)).toNat

end

end A231351.P14681905782798588871

/-! ## A231351.P13423818234571331824

`Δ[A000463(A231348(n+1))]`
-/

namespace A231351.P13423818234571331824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A231348 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A231351.P13423818234571331824

/-! ## A231351.P15603074886462146308

`A001281(Δ[A231348(n+1)])`
-/

namespace A231351.P15603074886462146308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A231351.P15603074886462146308

/-! ## A231351.P4687065530707062588

`A004525(Δ[A231348(n+1)])`
-/

namespace A231351.P4687065530707062588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A231351.P4687065530707062588

/-! ## A231351.P14554210502362036379

`A004526(Δ[A231348(n+1)])`
-/

namespace A231351.P14554210502362036379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A231351.P14554210502362036379

/-! ## A231351.P1789305867790078345

`A025480(Δ[A231348(n+1)])`
-/

namespace A231351.P1789305867790078345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (n + 1) - f1 n).toNat

end

end A231351.P1789305867790078345

/-! ## A231351.P1440646435365465577

`A001057(Δ[A231348(n+1)]-1)`
-/

namespace A231351.P1440646435365465577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n - 1).toNat

end

end A231351.P1440646435365465577

/-!
# A231352: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k - x) / (1 - k*x + x^2).

The programs for A231352, there is no canonical definition to state claims against.
-/

/-! ## A231352.P10442817171237677425

`A033711(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A231352.P10442817171237677425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033711 (a (n - 1)).toNat

end

end A231352.P10442817171237677425

/-! ## A231352.P17386638250547943028

`A059261(comp[2*n+3]!)`
-/

namespace A231352.P17386638250547943028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A231352.P17386638250547943028

/-!
# A231353: Least k>=0 such that n - k^2 is a triangular number, or -1 if no such k exists.

The programs for A231353, there is no canonical definition to state claims against.
-/

/-! ## A231353.P14693676643703686617

`A103438(n)-A056654(A245501(n))`
-/

namespace A231353.P14693676643703686617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 n - A056654 (A245501 n).toNat

end

end A231353.P14693676643703686617

/-! ## A231353.P16214407934592628678

`A216274(n)-A331461(A331461(3*n))`
-/

namespace A231353.P16214407934592628678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 n - A331461 (A331461 (3 * n)).toNat

end

end A231353.P16214407934592628678

/-! ## A231353.P16406826798850926654

`A145111(n)-A124944(A226290(2*n+1))`
-/

namespace A231353.P16406826798850926654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145111 n - A124944 (A226290 (2 * n + 1)).toNat

end

end A231353.P16406826798850926654

/-! ## A231353.P9869114099310177081

`A096651(A185510(n+1)-1)`
-/

namespace A231353.P9869114099310177081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096651 (A185510 (n + 1) - 1).toNat

end

end A231353.P9869114099310177081

/-! ## A231353.P11368599552204670594

`A002262(n)-A160973(A000045(n))`
-/

namespace A231353.P11368599552204670594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A160973 (A000045 n).toNat

end

end A231353.P11368599552204670594

/-!
# A231355: Number of (n+1)X(n+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231355, there is no canonical definition to state claims against.
-/

/-! ## A231355.P15054733211834541233

`A231363(∑[4*n]+1)`
-/

namespace A231355.P15054733211834541233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231355.P15054733211834541233

/-! ## A231355.P6522456520671883533

`∑{digits}[n, A231363(A001844(#))]`
-/

namespace A231355.P6522456520671883533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A231363 (A001844 x).toNat).sum

end

end A231355.P6522456520671883533

/-! ## A231355.P11224782436306679024

`record[A231363(Δ[A235355(n)])]`
-/

namespace A231355.P11224782436306679024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231355.P11224782436306679024

/-! ## A231355.P13498595680250020587

`A231363(A001844(n))+char[9]`
-/

namespace A231355.P13498595680250020587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231355.P13498595680250020587

/-!
# A231356: Number of (n+1) X (1+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231356, the canonical program `A231356.P14182909689907628757` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231356 has offset 1).

The definition of A231356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231356.P14182909689907628757

`ogf((1-x-7x^2-5x^3+11x^4+13x^5+3x^6)/(1-3x-5x^2+5x^3+24x^4+2x^5-15x^6-9x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231356

/-- `ogf((1-x-7x^2-5x^3+11x^4+13x^5+3x^6)/(1-3x-5x^2+5x^3+24x^4+2x^5-15x^6-9x^7))` -/
def P14182909689907628757.Spec : Prop :=
  ∀ n, P14182909689907628757.a n = A231356 (n + 1)

theorem P14182909689907628757.correct : P14182909689907628757.Spec := by
  intro n
  simp only [A231356, Nat.add_sub_cancel]

end A231356

/-! ## A231356.P917652587321393617

`A231363(∑[n]+1)`
-/

namespace A231356.P917652587321393617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231356.P917652587321393617

namespace A231356

/-- `A231363(∑[n]+1)` -/
def P917652587321393617.Spec : Prop :=
  ∀ n, P917652587321393617.a n = A231356 (n + 1)

end A231356

/-! ## A231356.P4643961716563017439

`record[A231363(A249742(n+1))]`
-/

namespace A231356.P4643961716563017439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231356.P4643961716563017439

namespace A231356

/-- `record[A231363(A249742(n+1))]` -/
def P4643961716563017439.Spec : Prop :=
  ∀ n, P4643961716563017439.a n = A231356 (n + 1)

end A231356

/-! ## A231356.P8569546619283529188

`record[A231363(A286234(n+1))]`
-/

namespace A231356.P8569546619283529188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231356.P8569546619283529188

namespace A231356

/-- `record[A231363(A286234(n+1))]` -/
def P8569546619283529188.Spec : Prop :=
  ∀ n, P8569546619283529188.a n = A231356 (n + 1)

end A231356

/-! ## A231356.P17302129965206640945

`record[A231363(A286244(n+1))]`
-/

namespace A231356.P17302129965206640945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231356.P17302129965206640945

namespace A231356

/-- `record[A231363(A286244(n+1))]` -/
def P17302129965206640945.Spec : Prop :=
  ∀ n, P17302129965206640945.a n = A231356 (n + 1)

end A231356

/-!
# A231357: Number of (n+1)X(2+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231357, there is no canonical definition to state claims against.
-/

/-! ## A231357.P14185006191211494102

`A231363(∑[n+1]+2)`
-/

namespace A231357.P14185006191211494102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231357.P14185006191211494102

/-! ## A231357.P12297470135364469643

`record[A231363(A133263(abs(1-n)))]`
-/

namespace A231357.P12297470135364469643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231357.P12297470135364469643

/-! ## A231357.P18146331229899233493

`record[A231363(A286237(n+1)+1)]`
-/

namespace A231357.P18146331229899233493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231357.P18146331229899233493

/-! ## A231357.P18395753568212528129

`record[A010054(n)*A231363(n+2)]`
-/

namespace A231357.P18395753568212528129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A231363 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231357.P18395753568212528129

/-! ## A231357.P8917196940046999918

`record[A231363(n+3)/A207823(n)]`
-/

namespace A231357.P8917196940046999918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231363 (n + 3) : ℚ) / (A207823 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231357.P8917196940046999918

/-!
# A231358: Number of (n+1)X(3+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231358, there is no canonical definition to state claims against.
-/

/-! ## A231358.P3334170217294627454

`A231363(∑[n+2]+4)`
-/

namespace A231358.P3334170217294627454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231358.P3334170217294627454

/-! ## A231358.P16525693488672583071

`A231363(A167614(n+1))+char[19]`
-/

namespace A231358.P16525693488672583071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231358.P16525693488672583071

/-! ## A231358.P18186582714290690146

`A231363(A046691(n)+7)+char[15]`
-/

namespace A231358.P18186582714290690146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231358.P18186582714290690146

/-! ## A231358.P2768822841089457214

`A304572(n+1)+A231363(A167614(n+1))`
-/

namespace A231358.P2768822841089457214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (n + 1) + A231363 (A167614 (n + 1)).toNat

end

end A231358.P2768822841089457214

/-! ## A231358.P1168647003223432901

`A194285(n+1)*A231363(A167614(n+1))`
-/

namespace A231358.P1168647003223432901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (n + 1) * A231363 (A167614 (n + 1)).toNat

end

end A231358.P1168647003223432901

/-!
# A231359: Number of (n+1)X(4+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231359, there is no canonical definition to state claims against.
-/

/-! ## A231359.P11043879354260664190

`A231363(A374004(n+1))`
-/

namespace A231359.P11043879354260664190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A374004 (n + 1)).toNat

end

end A231359.P11043879354260664190

/-! ## A231359.P1878871769803256598

`A231363(A141214(n)+7)`
-/

namespace A231359.P1878871769803256598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A141214 n + 7).toNat

end

end A231359.P1878871769803256598

/-! ## A231359.P12583092487499725368

`A231363(A052905(n)+9)`
-/

namespace A231359.P12583092487499725368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A052905 n + 9).toNat

end

end A231359.P12583092487499725368

/-! ## A231359.P118572766853759669

`A231363(A055999(n)+10)`
-/

namespace A231359.P118572766853759669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A055999 n + 10).toNat

end

end A231359.P118572766853759669

/-! ## A231359.P7456398290198358968

`A231363(eq[5, A066657(n)])`
-/

namespace A231359.P7456398290198358968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231359.P7456398290198358968

/-!
# A231360: Number of (n+1)X(5+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231360, there is no canonical definition to state claims against.
-/

/-! ## A231360.P16279475879749520014

`A231363(A374005(n+1))`
-/

namespace A231360.P16279475879749520014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A374005 (n + 1)).toNat

end

end A231360.P16279475879749520014

/-! ## A231360.P4778456837681693573

`A231363(A167499(n+3))`
-/

namespace A231360.P4778456837681693573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A167499 (n + 3)).toNat

end

end A231360.P4778456837681693573

/-! ## A231360.P15542001741026950291

`A231363(A155212(n)+13)`
-/

namespace A231360.P15542001741026950291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A155212 n + 13).toNat

end

end A231360.P15542001741026950291

/-! ## A231360.P9130644508036562097

`A231363(A056000(n)+15)`
-/

namespace A231360.P9130644508036562097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A056000 n + 15).toNat

end

end A231360.P9130644508036562097

/-! ## A231360.P15815336628236767269

`A231363(eq[7, A066657(n)])`
-/

namespace A231360.P15815336628236767269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231360.P15815336628236767269

/-!
# A231361: Number of (n+1)X(6+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231361, there is no canonical definition to state claims against.
-/

/-! ## A231361.P18205738843527267843

`A231363(∑[n+5]+16)`
-/

namespace A231361.P18205738843527267843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A231361.P18205738843527267843

/-! ## A231361.P18292874312480620928

`A231363(A055999(n+3)+1)+A151795(n)`
-/

namespace A231361.P18292874312480620928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A055999 (n + 3) + 1).toNat + A151795 n

end

end A231361.P18292874312480620928

/-! ## A231361.P2981949803073269872

`A194285(n+1)*A231363(A052905(n+3))`
-/

namespace A231361.P2981949803073269872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (n + 1) * A231363 (A052905 (n + 3)).toNat

end

end A231361.P2981949803073269872

/-! ## A231361.P16593089985158608866

`A035263(2*n+1)*A231363(A052905(n+3))`
-/

namespace A231361.P16593089985158608866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * n + 1) * A231363 (A052905 (n + 3)).toNat

end

end A231361.P16593089985158608866

/-! ## A231361.P8023431799142930402

`A231363(A055999(n+3)+1)%A101686(n+4)`
-/

namespace A231361.P8023431799142930402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231363 (A055999 (n + 3) + 1).toNat) (A101686 (n + 4))

end

end A231361.P8023431799142930402

/-!
# A231362: Number of (n+1)X(7+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231362, there is no canonical definition to state claims against.
-/

/-! ## A231362.P16602581592722445637

`A231363(A374008(n+1))`
-/

namespace A231362.P16602581592722445637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A374008 (n + 1)).toNat

end

end A231362.P16602581592722445637

/-! ## A231362.P3302079355732285561

`A231363(A056119(n)+28)`
-/

namespace A231362.P3302079355732285561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A056119 n + 28).toNat

end

end A231362.P3302079355732285561

/-! ## A231362.P9903025927308569946

`A231363(eq[11, A066657(n)])`
-/

namespace A231362.P9903025927308569946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231362.P9903025927308569946

/-! ## A231362.P2744108027740152567

`A231363(A166136(n+5)+1)`
-/

namespace A231362.P2744108027740152567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A166136 (n + 5) + 1).toNat

end

end A231362.P2744108027740152567

/-! ## A231362.P3821096634961616240

`A231363(A000124(n+6)+6)`
-/

namespace A231362.P3821096634961616240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231363 (A000124 (n + 6) + 6).toNat

end

end A231362.P3821096634961616240

/-!
# A231363: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with no element unequal to a strict majority of its horizontal, vertical and antidiagonal neighbors, with values 0..3 introduced in row major order.

The programs for A231363, there is no canonical definition to state claims against.
-/

/-! ## A231363.P8467220873718876174

`A089870(or(A031346(n), A231302(n+1)))`
-/

namespace A231363.P8467220873718876174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A031346 n) (A231302 (n + 1))).toNat

end

end A231363.P8467220873718876174

/-! ## A231363.P12909792401143524487

`A089870(or(A054899(n), A231302(n+1)))`
-/

namespace A231363.P12909792401143524487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A054899 n) (A231302 (n + 1))).toNat

end

end A231363.P12909792401143524487

/-! ## A231363.P11842382199110333390

`A089870(or(A059995(n), A231302(n+1)))`
-/

namespace A231363.P11842382199110333390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lor (A059995 n) (A231302 (n + 1))).toNat

end

end A231363.P11842382199110333390

/-! ## A231363.P5297444953799954150

`or(A031346(n), A231302(A187829(n+1)))`
-/

namespace A231363.P5297444953799954150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031346 n) (A231302 (A187829 (n + 1)).toNat)

end

end A231363.P5297444953799954150

/-! ## A231363.P11891886709770087909

`or(A054899(n), A231302(A187829(n+1)))`
-/

namespace A231363.P11891886709770087909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054899 n) (A231302 (A187829 (n + 1)).toNat)

end

end A231363.P11891886709770087909

/-!
# A231364: Numbers n such that antisigma(n) = antisigma(k) has solution for distinct numbers n and k.

The programs for A231364, there is no canonical definition to state claims against.
-/

/-! ## A231364.P2332763768311072331

`∪[A067816(n+1), A231545(A147655(n))]`
-/

namespace A231364.P2332763768311072331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231545 (A147655 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A231364.P2332763768311072331

/-! ## A231364.P10766056897797666573

`A028310(∪[A067816(n+1), A231545(n+1)])`
-/

namespace A231364.P10766056897797666573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231545 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A231364.P10766056897797666573

/-!
# A231365: Values taken by the antisigma function (A024816), sorted into ascending order.

The programs for A231365, there is no canonical definition to state claims against.
-/

/-! ## A231365.P16666797966099112850

`A024816(A239086(n+1))%A272013(n)`
-/

namespace A231365.P16666797966099112850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (A239086 (n + 1)).toNat) (A272013 n)

end

end A231365.P16666797966099112850

/-! ## A231365.P18153128719712309455

`A024816(A239086(n+1)%A078871(3*(n+1)))`
-/

namespace A231365.P18153128719712309455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (Int.tmod (A239086 (n + 1)) (A078871 (3 * (n + 1)))).toNat

end

end A231365.P18153128719712309455

/-! ## A231365.P9481126274246081495

`A001222(A180471(n+5))*A024816(A239086(n+1))`
-/

namespace A231365.P9481126274246081495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A180471 (n + 5)).toNat * A024816 (A239086 (n + 1)).toNat

end

end A231365.P9481126274246081495

/-! ## A231365.P15805731341787473284

`A024816(A276444(n+1)%A327811(n+1))`
-/

namespace A231365.P15805731341787473284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (Int.tmod (A276444 (n + 1)) (A327811 (n + 1))).toNat

end

end A231365.P15805731341787473284

/-! ## A231365.P2657409555761703635

`xor(A024816(n+1), A277314(A056467(n+1)))`
-/

namespace A231365.P2657409555761703635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024816 (n + 1)) (A277314 (A056467 (n + 1)).toNat)

end

end A231365.P2657409555761703635

/-!
# A231366: Number of numbers whose sum of non-divisors (A024816) is equal to n.

The programs for A231366, the canonical program `A231366.P6041127010241467102` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231366 has offset 0).

The definition of A231366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231366.P6041127010241467102

`char[n*char[9]]+char[∑[n]-∑{d}[n, #]]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231366

/-- `char[n*char[9]]+char[∑[n]-∑{d}[n, #]]` -/
def P6041127010241467102.Spec : Prop :=
  ∀ n, (P6041127010241467102.a n : ℤ) = A231366 n

theorem P6041127010241467102.correct : P6041127010241467102.Spec := by
  intro n
  simp only [A231366]

end A231366

/-! ## A231366.P16662279101960407199

`A231367(n)+char[n*char[9]]`
-/

namespace A231366.P16662279101960407199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231367 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231366.P16662279101960407199

namespace A231366

/-- `A231367(n)+char[n*char[9]]` -/
def P16662279101960407199.Spec : Prop :=
  ∀ n, P16662279101960407199.a n = A231366 n

end A231366

/-! ## A231366.P1808091952015276614

`char[∑[n]-∑{d}[n, #]]*A078572(n+1)`
-/

namespace A231366.P1808091952015276614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078572 (n + 1)

end

end A231366.P1808091952015276614

namespace A231366

/-- `char[∑[n]-∑{d}[n, #]]*A078572(n+1)` -/
def P1808091952015276614.Spec : Prop :=
  ∀ n, P1808091952015276614.a n = A231366 n

end A231366

/-! ## A231366.P17441826854359064971

`A078572(n+1)*A231367(n)`
-/

namespace A231366.P17441826854359064971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078572 (n + 1) * A231367 n

end

end A231366.P17441826854359064971

namespace A231366

/-- `A078572(n+1)*A231367(n)` -/
def P17441826854359064971.Spec : Prop :=
  ∀ n, P17441826854359064971.a n = A231366 n

end A231366

/-! ## A231366.P15751214053839116559

`char[A024816(n+1)]*A078572(n+1)`
-/

namespace A231366.P15751214053839116559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078572 (n + 1)

end

end A231366.P15751214053839116559

namespace A231366

/-- `char[A024816(n+1)]*A078572(n+1)` -/
def P15751214053839116559.Spec : Prop :=
  ∀ n, P15751214053839116559.a n = A231366 n

end A231366

/-! ## A231366.P11623076247525259301

`char[A231365(n+1)]*A078572(n+1)`
-/

namespace A231366.P11623076247525259301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078572 (n + 1)

end

end A231366.P11623076247525259301

namespace A231366

/-- `char[A231365(n+1)]*A078572(n+1)` -/
def P11623076247525259301.Spec : Prop :=
  ∀ n, P11623076247525259301.a n = A231366 n

end A231366

/-! ## A231366.P13763352240346307255

`char[A231368(n+1)]*A078572(n+1)`
-/

namespace A231366.P13763352240346307255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078572 (n + 1)

end

end A231366.P13763352240346307255

namespace A231366

/-- `char[A231368(n+1)]*A078572(n+1)` -/
def P13763352240346307255.Spec : Prop :=
  ∀ n, P13763352240346307255.a n = A231366 n

end A231366

/-! ## A231366.P17792106502066989683

`char[∑[n+1]-A000203(n+1)]*A078572(n+1)`
-/

namespace A231366.P17792106502066989683
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A000203 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078572 (n + 1)

end

end A231366.P17792106502066989683

namespace A231366

/-- `char[∑[n+1]-A000203(n+1)]*A078572(n+1)` -/
def P17792106502066989683.Spec : Prop :=
  ∀ n, P17792106502066989683.a n = A231366 n

end A231366

/-!
# A231367: a(n) = 1 if A024816(m) = n has a solution for some m, where A024816(m) = sums of non-divisors of m = antisigma(m), otherwise 0.

The programs for A231367, the canonical program `A231367.P1796647954828476227` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231367 has offset 0).

The definition of A231367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231367.P7809996401372331883

`char[∑[n]-∑{d}[n, #]]`
-/

namespace A231367.P7809996401372331883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P7809996401372331883

namespace A231367

/-- `char[∑[n]-∑{d}[n, #]]` -/
def P7809996401372331883.Spec : Prop :=
  ∀ n, (P7809996401372331883.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P5268171231946129638

`char[C(n, 2)+n-∑{d}[n, #]]`
-/

namespace A231367.P5268171231946129638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + ((n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P5268171231946129638

namespace A231367

/-- `char[C(n, 2)+n-∑{d}[n, #]]` -/
def P5268171231946129638.Spec : Prop :=
  ∀ n, (P5268171231946129638.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P16198213754755498100

`char[C(n, 2)-(∑{d}[n, #]-n)]`
-/

namespace A231367.P16198213754755498100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P16198213754755498100

namespace A231367

/-- `char[C(n, 2)-(∑{d}[n, #]-n)]` -/
def P16198213754755498100.Spec : Prop :=
  ∀ n, (P16198213754755498100.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P7917828066045799662

`char[or(1, n)*ceil(n/2)-(∑{d}[n+1, #]-(n+1))]`
-/

namespace A231367.P7917828066045799662
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉ - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P7917828066045799662

namespace A231367

/-- `char[or(1, n)*ceil(n/2)-(∑{d}[n+1, #]-(n+1))]` -/
def P7917828066045799662.Spec : Prop :=
  ∀ n, (P7917828066045799662.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P13638954581529889659

`char[round((2*n+1)²/8)-(∑{d}[n+1, #]-(n+1))]`
-/

namespace A231367.P13638954581529889659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P13638954581529889659

namespace A231367

/-- `char[round((2*n+1)²/8)-(∑{d}[n+1, #]-(n+1))]` -/
def P13638954581529889659.Spec : Prop :=
  ∀ n, (P13638954581529889659.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P1796647954828476227

`floor(sqrt(A231366(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231367

/-- `floor(sqrt(A231366(n)))` -/
def P1796647954828476227.Spec : Prop :=
  ∀ n, P1796647954828476227.a n = A231367 n

theorem P1796647954828476227.correct : P1796647954828476227.Spec := by
  intro n
  simp only [A231367]

end A231367

/-! ## A231367.P7605607086503879459

`char[A024816(n+1)]`
-/

namespace A231367.P7605607086503879459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P7605607086503879459

namespace A231367

/-- `char[A024816(n+1)]` -/
def P7605607086503879459.Spec : Prop :=
  ∀ n, (P7605607086503879459.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P1438137953327095349

`char[A231365(n+1)]`
-/

namespace A231367.P1438137953327095349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P1438137953327095349

namespace A231367

/-- `char[A231365(n+1)]` -/
def P1438137953327095349.Spec : Prop :=
  ∀ n, (P1438137953327095349.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P7047386139204764969

`char[A231368(n+1)]`
-/

namespace A231367.P7047386139204764969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P7047386139204764969

namespace A231367

/-- `char[A231368(n+1)]` -/
def P7047386139204764969.Spec : Prop :=
  ∀ n, (P7047386139204764969.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P15703663212224602793

`char[∑[A163553(n+1)]]`
-/

namespace A231367.P15703663212224602793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P15703663212224602793

namespace A231367

/-- `char[∑[A163553(n+1)]]` -/
def P15703663212224602793.Spec : Prop :=
  ∀ n, (P15703663212224602793.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P15196325138783522217

`char[Δ[A076664(n+1)]]`
-/

namespace A231367.P15196325138783522217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P15196325138783522217

namespace A231367

/-- `char[Δ[A076664(n+1)]]` -/
def P15196325138783522217.Spec : Prop :=
  ∀ n, (P15196325138783522217.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P16954672370351078089

`char[∑[n]-A001065(n+1)]`
-/

namespace A231367.P16954672370351078089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A001065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P16954672370351078089

namespace A231367

/-- `char[∑[n]-A001065(n+1)]` -/
def P16954672370351078089.Spec : Prop :=
  ∀ n, (P16954672370351078089.a n : ℤ) = A231367 n

end A231367

/-! ## A231367.P2060128929326937424

`A231366(n)/A078572(n+1)`
-/

namespace A231367.P2060128929326937424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231366 n : ℚ) / (A078572 (n + 1) : ℚ)

end

end A231367.P2060128929326937424

namespace A231367

/-- `A231366(n)/A078572(n+1)` -/
def P2060128929326937424.Spec : Prop :=
  ∀ n, P2060128929326937424.a n = (A231367 n : ℚ)

end A231367

/-! ## A231367.P1231720542662598354

`char[A338434((n+1)²)]`
-/

namespace A231367.P1231720542662598354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338434 ((n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A231367.P1231720542662598354

namespace A231367

/-- `char[A338434((n+1)²)]` -/
def P1231720542662598354.Spec : Prop :=
  ∀ n, (P1231720542662598354.a n : ℤ) = A231367 n

end A231367

/-!
# A231368: Possible values for sum of non-divisors of n (A024816).

The programs for A231368, there is no canonical definition to state claims against.
-/

/-! ## A231368.P8192429276235837364

`record[A231365(∑[n]%(n+1)+1)]`
-/

namespace A231368.P8192429276235837364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P8192429276235837364

/-! ## A231368.P17485191289400119096

`record[A231365(A344180(n))]`
-/

namespace A231368.P17485191289400119096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P17485191289400119096

/-! ## A231368.P6252544126855955918

`record[A231365(A003602(n+1))]`
-/

namespace A231368.P6252544126855955918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P6252544126855955918

/-! ## A231368.P18095713858579389880

`record[A231365(A064823(n+1))]`
-/

namespace A231368.P18095713858579389880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (A064823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P18095713858579389880

/-! ## A231368.P9071819822779693104

`record[A231365(A069013(n+1))]`
-/

namespace A231368.P9071819822779693104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (A069013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P9071819822779693104

/-! ## A231368.P9348126502737122456

`record[A231365(A026238(n+2))]`
-/

namespace A231368.P9348126502737122456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (A026238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P9348126502737122456

/-! ## A231368.P4701720121031959193

`record[A231365(A289187(n+2))]`
-/

namespace A231368.P4701720121031959193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (A289187 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231368.P4701720121031959193

/-! ## A231368.P18021489304029554589

`A231365(floor(∑[2/A027379(n)]+n))`
-/

namespace A231368.P18021489304029554589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A027379 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋.toNat

end

end A231368.P18021489304029554589

/-! ## A231368.P11415174195108846029

`A231365(floor(2/(n+1)*A027379(n)))`
-/

namespace A231368.P11415174195108846029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 ⌊2 / (n + 1 : ℚ) * (A027379 n : ℚ)⌋.toNat

end

end A231368.P11415174195108846029

/-! ## A231368.P5001143399820075235

`A231365(floor(∑[1/A000045(n+1)]+n))`
-/

namespace A231368.P5001143399820075235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000045 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋.toNat

end

end A231368.P5001143399820075235

/-! ## A231368.P9712004101807054437

`eq[1, A231367(n)]`
-/

namespace A231368.P9712004101807054437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231367 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231368.P9712004101807054437

/-! ## A231368.P8311421666064677412

`filter[A028392(n), A231367(#)]`
-/

namespace A231368.P8311421666064677412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P8311421666064677412

/-! ## A231368.P14980882060561750424

`filter[A156657(n+1), A231367(#)]`
-/

namespace A231368.P14980882060561750424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P14980882060561750424

/-! ## A231368.P14098317035256407388

`filter[A014681(n), A231367(#)]`
-/

namespace A231368.P14098317035256407388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P14098317035256407388

/-! ## A231368.P9161629562628396606

`filter[A057717(n), A231367(#)]`
-/

namespace A231368.P9161629562628396606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P9161629562628396606

/-! ## A231368.P12932530905281963726

`filter[A064206(n), A231367(#)]`
-/

namespace A231368.P12932530905281963726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P12932530905281963726

/-! ## A231368.P17711819404480825913

`filter[A064429(n), A231367(#)]`
-/

namespace A231368.P17711819404480825913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P17711819404480825913

/-! ## A231368.P10295816010034256856

`filter[A080412(n), A231367(#)]`
-/

namespace A231368.P10295816010034256856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P10295816010034256856

/-! ## A231368.P4908710789906240245

`filter[A080413(n), A231367(#)]`
-/

namespace A231368.P4908710789906240245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P4908710789906240245

/-! ## A231368.P8780364006410637738

`filter[A132368(n), A231367(#)]`
-/

namespace A231368.P8780364006410637738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231367 (f1 j).toNat = 1) n)

end

end A231368.P8780364006410637738

/-!
# A231369: Numbers n such that antisigma(x) = n has no solution, where antisigma(m) = A024816(m) = the sum of the nondivisors of m that are between 1 and m.

The programs for A231369, there is no canonical definition to state claims against.
-/

/-! ## A231369.P13686651614788532844

`comp[∑[n]-∑{d}[n, #]]`
-/

namespace A231369.P13686651614788532844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231369.P13686651614788532844

/-! ## A231369.P220957607368669483

`eq[0, char[∑[n]-∑{d}[n, #]]]`
-/

namespace A231369.P220957607368669483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f5 n), d : ℕ) : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231369.P220957607368669483

/-! ## A231369.P17559327725782817523

`comp[C(n, 2)-∑{d}[n, #]+n]`
-/

namespace A231369.P17559327725782817523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231369.P17559327725782817523

/-! ## A231369.P4412499153322118436

`eq[0, A231366(n)]`
-/

namespace A231369.P4412499153322118436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231369.P4412499153322118436

/-! ## A231369.P1741459955064339422

`eq[0, A231367(n)]`
-/

namespace A231369.P1741459955064339422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231367 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231369.P1741459955064339422

/-! ## A231369.P1035682644205120824

`comp[A024816(n+1)]`
-/

namespace A231369.P1035682644205120824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231369.P1035682644205120824

/-! ## A231369.P4214706427906300856

`comp[A231365(n+1)]`
-/

namespace A231369.P4214706427906300856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231369.P4214706427906300856

/-! ## A231369.P14938084434161828979

`comp[A231368(n+1)]`
-/

namespace A231369.P14938084434161828979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231369.P14938084434161828979

/-! ## A231369.P14639442910079775635

`comp[∑[n]-A001065(n+1)]`
-/

namespace A231369.P14639442910079775635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A001065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231369.P14639442910079775635

/-!
# A231370: Squarefree composite numbers k such that 2 is a primitive root for all prime factors of k.

The programs for A231370, there is no canonical definition to state claims against.
-/

/-! ## A231370.P14221649215439942818

`filter[A141231(n+1), A354819(#)]`
-/

namespace A231370.P14221649215439942818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A231370.P14221649215439942818

/-! ## A231370.P3127687363141684410

`filter[A141231(n+1), A380469(#)]`
-/

namespace A231370.P3127687363141684410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A231370.P3127687363141684410

/-! ## A231370.P3688692314427241581

`∩[A141231(n+1), A380470(n+1)]`
-/

namespace A231370.P3688692314427241581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P3688692314427241581

/-! ## A231370.P17167851718998154812

`∩[A024556(n+1), A141231(n+1)]`
-/

namespace A231370.P17167851718998154812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P17167851718998154812

/-! ## A231370.P5673796713303131630

`∩[A087247(n+1), A141231(n+1)]`
-/

namespace A231370.P5673796713303131630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P5673796713303131630

/-! ## A231370.P18149057212509676183

`∩[A141231(n+1), A367018(n+1)]`
-/

namespace A231370.P18149057212509676183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P18149057212509676183

/-! ## A231370.P714710119939264779

`∩[A000469(n+1), A141231(n+1)]`
-/

namespace A231370.P714710119939264779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P714710119939264779

/-! ## A231370.P16378497223195518031

`∩[A120944(n+1), A141231(n+1)]`
-/

namespace A231370.P16378497223195518031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P16378497223195518031

/-! ## A231370.P4846719183929821247

`∩[A141231(n+1), A366413(n+1)]`
-/

namespace A231370.P4846719183929821247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231370.P4846719183929821247

/-! ## A231370.P15462398209908784380

`record[A144907(A141231(n+6))]`
-/

namespace A231370.P15462398209908784380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (A141231 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231370.P15462398209908784380

/-!
# A231371: Squarefree composite numbers k such that 8 is a primitive root for all prime factors of k.

The programs for A231371, there is no canonical definition to state claims against.
-/

/-! ## A231371.P5495776279815707334

`∩[A074243(n+1), A231370(n+1)]`
-/

namespace A231371.P5495776279815707334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231371.P5495776279815707334

/-! ## A231371.P14400126236886323639

`∩[A088232(n+1), A231370(n+1)]`
-/

namespace A231371.P14400126236886323639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231371.P14400126236886323639

/-! ## A231371.P5929817566482094490

`∩[A057760(n+1), A231370(n+1)]`
-/

namespace A231371.P5929817566482094490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231371.P5929817566482094490

/-! ## A231371.P10513301517621287749

`∩[A230780(n+1), A231370(n+1)]`
-/

namespace A231371.P10513301517621287749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231371.P10513301517621287749

/-! ## A231371.P1742699199880020327

`∩[A166104(n+1), A231370(n+1)]`
-/

namespace A231371.P1742699199880020327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231371.P1742699199880020327

/-!
# A231373: G.f. A(x) satisfies: A(x-x^2-x^3) = 1/sqrt(1-2*x-3*x^2), which is the g.f. the central trinomial coefficients (A002426).

The programs for A231373, there is no canonical definition to state claims against.
-/

/-! ## A231373.P8613891187187965332

`A057354(A151009(n))+1`
-/

namespace A231373.P8613891187187965332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A151009 n).toNat + 1

end

end A231373.P8613891187187965332

/-! ## A231373.P17808846593139629430

`2*A138225(2^n)+floor(n/2)+1`
-/

namespace A231373.P17808846593139629430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138225 (2 ^ n) + (⌊(n : ℚ) / 2⌋ + 1)

end

end A231373.P17808846593139629430

/-!
# A231375: Number of n X n 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231375, there is no canonical definition to state claims against.
-/

/-! ## A231375.P1728254255938167032

`A231382(∑[4*n]+1)`
-/

namespace A231375.P1728254255938167032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231375.P1728254255938167032

/-! ## A231375.P18041348461893235069

`record[A003982(n)*A231382(n+1)]`
-/

namespace A231375.P18041348461893235069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231375.P18041348461893235069

/-! ## A231375.P5374110284510882914

`record[A077606(n+1)*A231382(n+1)]`
-/

namespace A231375.P5374110284510882914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A231382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231375.P5374110284510882914

/-! ## A231375.P252403705984394221

`A036225(n)*A231382(A001844(n))`
-/

namespace A231375.P252403705984394221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A231382 (A001844 n).toNat

end

end A231375.P252403705984394221

/-! ## A231375.P12380473881049031481

`A000045(ceil(1/(n+1)))*A231382(A001844(n))`
-/

namespace A231375.P12380473881049031481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈1 / (n + 1 : ℚ)⌉.toNat * A231382 (A001844 n).toNat

end

end A231375.P12380473881049031481

/-!
# A231376: Number of n X 2 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231376, the canonical program `A231376.P17745963782738346719` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231376 has offset 1).

The definition of A231376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231376.P4745203681287408269

`ogf((2+4x-5x^2+x^3-5x^4-2x^5)/(1-3x+2x^2-2x^3+2x^4+x^5))`
-/

namespace A231376.P4745203681287408269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4, -5, 1, -5, -2] [1, -3, 2, -2, 2, 1] n

end

end A231376.P4745203681287408269

namespace A231376

/-- `ogf((2+4x-5x^2+x^3-5x^4-2x^5)/(1-3x+2x^2-2x^3+2x^4+x^5))` -/
def P4745203681287408269.Spec : Prop :=
  ∀ n, P4745203681287408269.a n = A231376 (n + 1)

end A231376

/-! ## A231376.P17745963782738346719

`3*a(n-1)-2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=2, a(1)=10, a(2)=21, a(3)=48, a(4)=113, a(5)=261`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231376

/-- `3*a(n-1)-2*a(n-2)+2*a(n-3)-2*a(n-4)-a(n-5)` -/
def P17745963782738346719.Spec : Prop :=
  ∀ n, P17745963782738346719.a n = A231376 (n + 1)

theorem P17745963782738346719.correct : P17745963782738346719.Spec := by
  intro n
  simp only [A231376, Nat.add_sub_cancel]

end A231376

/-! ## A231376.P6149031502770078853

`A231382(∑[n+1]+2)`
-/

namespace A231376.P6149031502770078853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231376.P6149031502770078853

namespace A231376

/-- `A231382(∑[n+1]+2)` -/
def P6149031502770078853.Spec : Prop :=
  ∀ n, P6149031502770078853.a n = A231376 (n + 1)

end A231376

/-! ## A231376.P17521520781713560703

`record[A231382(A133263(A002262(n)))]`
-/

namespace A231376.P17521520781713560703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A133263 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231376.P17521520781713560703

namespace A231376

/-- `record[A231382(A133263(A002262(n)))]` -/
def P17521520781713560703.Spec : Prop :=
  ∀ n, P17521520781713560703.a n = A231376 (n + 1)

end A231376

/-!
# A231377: Number of n X 3 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231377, the canonical program `A231377.P5430100228306019873` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231377 has offset 1).

The definition of A231377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231377.P5430100228306019873

`ogf((4-3x+11x^2-13x^3-6x^4-12x^5-15x^6+3x^7+13x^8+8x^9+2x^10)/(1-6x+11x^2-16x^3+14x^4+3x^5-8x^6+9x^7+2x^8-6x^9-2x^10))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231377

/-- `ogf((4-3x+11x^2-13x^3-6x^4-12x^5-15x^6+3x^7+13x^8+8x^9+2x^10)/(1-6x+11x^2-16x^3+14x^4+3x^5-8x^6+9x^7+2x^8-6x^9-2x^10))` -/
def P5430100228306019873.Spec : Prop :=
  ∀ n, P5430100228306019873.a n = A231377 (n + 1)

theorem P5430100228306019873.correct : P5430100228306019873.Spec := by
  intro n
  simp only [A231377, Nat.add_sub_cancel]

end A231377

/-! ## A231377.P4299437225975540750

`A231382(∑[n+2]+4)`
-/

namespace A231377.P4299437225975540750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231377.P4299437225975540750

namespace A231377

/-- `A231382(∑[n+2]+4)` -/
def P4299437225975540750.Spec : Prop :=
  ∀ n, P4299437225975540750.a n = A231377 (n + 1)

end A231377

/-! ## A231377.P11103932891829339750

`A036225(n)*A231382(A167614(n+1))`
-/

namespace A231377.P11103932891829339750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A231382 (A167614 (n + 1)).toNat

end

end A231377.P11103932891829339750

namespace A231377

/-- `A036225(n)*A231382(A167614(n+1))` -/
def P11103932891829339750.Spec : Prop :=
  ∀ n, P11103932891829339750.a n = A231377 (n + 1)

end A231377

/-! ## A231377.P4724817441220088

`lcm(A033999(n), A231382(A167614(n+1)))`
-/

namespace A231377.P4724817441220088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231382 (A167614 (n + 1)).toNat)

end

end A231377.P4724817441220088

namespace A231377

/-- `lcm(A033999(n), A231382(A167614(n+1)))` -/
def P4724817441220088.Spec : Prop :=
  ∀ n, (P4724817441220088.a n : ℤ) = A231377 (n + 1)

end A231377

/-! ## A231377.P7669827124543299474

`A231382(A167614(n+1))%A231378(n+1)`
-/

namespace A231377.P7669827124543299474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231382 (A167614 (n + 1)).toNat) (A231378 (n + 1))

end

end A231377.P7669827124543299474

namespace A231377

/-- `A231382(A167614(n+1))%A231378(n+1)` -/
def P7669827124543299474.Spec : Prop :=
  ∀ n, P7669827124543299474.a n = A231377 (n + 1)

end A231377

/-!
# A231378: Number of nX4 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231378, there is no canonical definition to state claims against.
-/

/-! ## A231378.P10601403873981380713

`A231382(A374004(n+1))`
-/

namespace A231378.P10601403873981380713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A374004 (n + 1)).toNat

end

end A231378.P10601403873981380713

/-! ## A231378.P241497921917514099

`A231382(A052905(n)+9)`
-/

namespace A231378.P241497921917514099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A052905 n + 9).toNat

end

end A231378.P241497921917514099

/-! ## A231378.P2661168420681867352

`A231382(A055999(n)+10)`
-/

namespace A231378.P2661168420681867352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A055999 n + 10).toNat

end

end A231378.P2661168420681867352

/-! ## A231378.P8155993096854262827

`A231382(A167614(n+2)+1)`
-/

namespace A231378.P8155993096854262827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A167614 (n + 2) + 1).toNat

end

end A231378.P8155993096854262827

/-! ## A231378.P14295130963480843968

`A231382(Δ[A264443(n)-n²])`
-/

namespace A231378.P14295130963480843968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (f1 (n + 1) - f1 n).toNat

end

end A231378.P14295130963480843968

/-!
# A231379: Number of nX5 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231379, there is no canonical definition to state claims against.
-/

/-! ## A231379.P8285576847158130425

`A231382(A374005(n+1))`
-/

namespace A231379.P8285576847158130425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A374005 (n + 1)).toNat

end

end A231379.P8285576847158130425

/-! ## A231379.P176526262221351457

`A231382(A155212(n)+13)`
-/

namespace A231379.P176526262221351457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A155212 n + 13).toNat

end

end A231379.P176526262221351457

/-! ## A231379.P15487679885711979757

`A231382(A056000(n)+15)`
-/

namespace A231379.P15487679885711979757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A056000 n + 15).toNat

end

end A231379.P15487679885711979757

/-! ## A231379.P7358580556835132861

`A231382(Δ[A264443(n)])`
-/

namespace A231379.P7358580556835132861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (f1 (n + 1) - f1 n).toNat

end

end A231379.P7358580556835132861

/-! ## A231379.P15427558996911740811

`A231382(A046691(n+3))`
-/

namespace A231379.P15427558996911740811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A046691 (n + 3)).toNat

end

end A231379.P15427558996911740811

/-!
# A231380: Number of nX6 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231380, there is no canonical definition to state claims against.
-/

/-! ## A231380.P17737189829129666690

`A231382(A374007(n+1))`
-/

namespace A231380.P17737189829129666690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A374007 (n + 1)).toNat

end

end A231380.P17737189829129666690

/-! ## A231380.P9339608713442469363

`A231382(A000124(n+5)+5)`
-/

namespace A231380.P9339608713442469363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A000124 (n + 5) + 5).toNat

end

end A231380.P9339608713442469363

/-! ## A231380.P11014671623533912654

`A231382(eq[3, A219347(n)])`
-/

namespace A231380.P11014671623533912654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231380.P11014671623533912654

/-! ## A231380.P6487456643316381770

`A231382(eq[5, A193592(n)])`
-/

namespace A231380.P6487456643316381770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231380.P6487456643316381770

/-! ## A231380.P10286023000599723953

`A231382(eq[8, A185782(n+1)])`
-/

namespace A231380.P10286023000599723953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231380.P10286023000599723953

/-!
# A231381: Number of nX7 0..1 arrays with no element less than a strict majority of its horizontal and vertical neighbors.

The programs for A231381, there is no canonical definition to state claims against.
-/

/-! ## A231381.P7214362794694002827

`A231382(A374008(n+1))`
-/

namespace A231381.P7214362794694002827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A374008 (n + 1)).toNat

end

end A231381.P7214362794694002827

/-! ## A231381.P16963456510528119385

`A231382(A056119(n)+28)`
-/

namespace A231381.P16963456510528119385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (A056119 n + 28).toNat

end

end A231381.P16963456510528119385

/-! ## A231381.P14588594532944172445

`A231382(eq[8, A131818(n+1)])`
-/

namespace A231381.P14588594532944172445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231381.P14588594532944172445

/-! ## A231381.P381719577929361325

`A231382(eq[4, A219347(n)])`
-/

namespace A231381.P381719577929361325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231381.P381719577929361325

/-! ## A231381.P4795078795413937819

`A231382(eq[6, A193592(n)])`
-/

namespace A231381.P4795078795413937819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231381.P4795078795413937819

/-!
# A231383: Primes p such that p + 3*k is also prime, where p is k-th prime.

The programs for A231383, the canonical program `A231383.P7583573279337602058` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231383 has offset 1).

The definition of A231383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231383.P7583573279337602058

`A000040(A076298(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231383

/-- `A000040(A076298(n+1))` -/
def P7583573279337602058.Spec : Prop :=
  ∀ n, P7583573279337602058.a n = A231383 (n + 1)

theorem P7583573279337602058.correct : P7583573279337602058.Spec := by
  intro n
  simp only [A231383, Nat.add_sub_cancel]

end A231383

/-! ## A231383.P13033762429185188228

`A008578(A076298(n+1)+1)`
-/

namespace A231383.P13033762429185188228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076298 (n + 1) + 1).toNat

end

end A231383.P13033762429185188228

namespace A231383

/-- `A008578(A076298(n+1)+1)` -/
def P13033762429185188228.Spec : Prop :=
  ∀ n, P13033762429185188228.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P14331080190665802130

`A053878(A053475(n+1))+A006093(A076298(n+1))`
-/

namespace A231383.P14331080190665802130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (A053475 (n + 1)).toNat + A006093 (A076298 (n + 1)).toNat

end

end A231383.P14331080190665802130

namespace A231383

/-- `A053878(A053475(n+1))+A006093(A076298(n+1))` -/
def P14331080190665802130.Spec : Prop :=
  ∀ n, P14331080190665802130.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P2232517513668663935

`A211261(A002476(n+1))+A006093(A076298(n+1))`
-/

namespace A231383.P2232517513668663935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (A002476 (n + 1)).toNat + A006093 (A076298 (n + 1)).toNat

end

end A231383.P2232517513668663935

namespace A231383

/-- `A211261(A002476(n+1))+A006093(A076298(n+1))` -/
def P2232517513668663935.Spec : Prop :=
  ∀ n, P2232517513668663935.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P309152557207427738

`A259936(A000961(n+1))+A006093(A076298(n+1))`
-/

namespace A231383.P309152557207427738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (A000961 (n + 1)).toNat + A006093 (A076298 (n + 1)).toNat

end

end A231383.P309152557207427738

namespace A231383

/-- `A259936(A000961(n+1))+A006093(A076298(n+1))` -/
def P309152557207427738.Spec : Prop :=
  ∀ n, P309152557207427738.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P16946231772001078296

`A033273(A115231(n+1))+A006093(A076298(n+1))`
-/

namespace A231383.P16946231772001078296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A115231 (n + 1)).toNat + A006093 (A076298 (n + 1)).toNat

end

end A231383.P16946231772001078296

namespace A231383

/-- `A033273(A115231(n+1))+A006093(A076298(n+1))` -/
def P16946231772001078296.Spec : Prop :=
  ∀ n, P16946231772001078296.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P15589167450927083006

`A211261(A176870(n+1))+A006093(A076298(n+1))`
-/

namespace A231383.P15589167450927083006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (A176870 (n + 1)).toNat + A006093 (A076298 (n + 1)).toNat

end

end A231383.P15589167450927083006

namespace A231383

/-- `A211261(A176870(n+1))+A006093(A076298(n+1))` -/
def P15589167450927083006.Spec : Prop :=
  ∀ n, P15589167450927083006.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P8919965730133126718

`A219606(2*A076298(n+1))`
-/

namespace A231383.P8919965730133126718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A076298 (n + 1)).toNat

end

end A231383.P8919965730133126718

namespace A231383

/-- `A219606(2*A076298(n+1))` -/
def P8919965730133126718.Spec : Prop :=
  ∀ n, P8919965730133126718.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P14418919663966794226

`A207790(2*A076298(n+1))`
-/

namespace A231383.P14418919663966794226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A076298 (n + 1)).toNat

end

end A231383.P14418919663966794226

namespace A231383

/-- `A207790(2*A076298(n+1))` -/
def P14418919663966794226.Spec : Prop :=
  ∀ n, P14418919663966794226.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P399509868700847649

`A006530(A186102(A076298(n+1))-A076298(n+1))`
-/

namespace A231383.P399509868700847649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A186102 (A076298 (n + 1)).toNat - A076298 (n + 1)).toNat

end

end A231383.P399509868700847649

namespace A231383

/-- `A006530(A186102(A076298(n+1))-A076298(n+1))` -/
def P399509868700847649.Spec : Prop :=
  ∀ n, P399509868700847649.a n = A231383 (n + 1)

end A231383

/-! ## A231383.P11225096595356444791

`A006530(A260416(A076298(n+1))-A076298(n+1))`
-/

namespace A231383.P11225096595356444791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A260416 (A076298 (n + 1)).toNat - A076298 (n + 1)).toNat

end

end A231383.P11225096595356444791

namespace A231383

/-- `A006530(A260416(A076298(n+1))-A076298(n+1))` -/
def P11225096595356444791.Spec : Prop :=
  ∀ n, P11225096595356444791.a n = A231383 (n + 1)

end A231383

/-!
# A231385: Number of permutations of [n] avoiding simultaneously consecutive step patterns UUD, UDU, DUU (U=up, D=down).

The programs for A231385, there is no canonical definition to state claims against.
-/

/-! ## A231385.P10198104508991131896

`A231384(lt[A187262(n+1), 7])`
-/

namespace A231385.P10198104508991131896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187262 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231384 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A231385.P10198104508991131896

/-! ## A231385.P10243213756325473561

`A231384(lt[A063115(n), A107804(3*n+5)])`
-/

namespace A231385.P10243213756325473561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063115 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107804 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231385.P10243213756325473561

/-! ## A231385.P446816476113648981

`A188215(A279565(n))`
-/

namespace A231385.P446816476113648981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188215 (A279565 n).toNat

end

end A231385.P446816476113648981

/-!
# A231386: Number of permutations of [n] with exactly one occurrence of one of the consecutive step patterns UUD, UDU, DUU (U=up, D=down).

The programs for A231386, there is no canonical definition to state claims against.
-/

/-! ## A231386.P8366982100412620719

`A218909(2*n)%A218937(n)²`
-/

namespace A231386.P8366982100412620719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218909 (2 * n)) (A218937 n ^ 2)

end

end A231386.P8366982100412620719

/-! ## A231386.P2401985733548760257

`A141100(A017934(n))-A004524(n)`
-/

namespace A231386.P2401985733548760257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A017934 n).toNat - A004524 n

end

end A231386.P2401985733548760257

/-! ## A231386.P9234570787219342095

`A365382(2*(n+2))+A365382(A002378(n))`
-/

namespace A231386.P9234570787219342095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365382 (2 * (n + 2)) + A365382 (A002378 n).toNat

end

end A231386.P9234570787219342095

/-!
# A231388: Numbers k dividing the Lucas sequence u(k), defined by u(i) = 2*u(i-1) - 3*u(i-2) with initial conditions u(0)=0, u(1)=1.

The programs for A231388, there is no canonical definition to state claims against.
-/

/-! ## A231388.P4525000195644479362

`record[A360329(A325781(n+1))]`
-/

namespace A231388.P4525000195644479362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (A325781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231388.P4525000195644479362

/-! ## A231388.P5906764474766795

`filter[A327478(n+1), A353687(#)]`
-/

namespace A231388.P5906764474766795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A231388.P5906764474766795

/-! ## A231388.P10023271517769714718

`∩[A325781(n+1), A029746(n)]`
-/

namespace A231388.P10023271517769714718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231388.P10023271517769714718

/-! ## A231388.P14710196100561596622

`∩[A325795(n+1), A029746(n)]`
-/

namespace A231388.P14710196100561596622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231388.P14710196100561596622

/-! ## A231388.P3138485940993318511

`∩[A387881(n+1), A029746(n)]`
-/

namespace A231388.P3138485940993318511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231388.P3138485940993318511

/-!
# A231389: Number of (n+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231389, there is no canonical definition to state claims against.
-/

/-! ## A231389.P5218317742995664095

`A231396(∑[4*n]+1)`
-/

namespace A231389.P5218317742995664095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231389.P5218317742995664095

/-! ## A231389.P8802795610339947371

`record[A231396(A330613(n+1))]`
-/

namespace A231389.P8802795610339947371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231389.P8802795610339947371

/-! ## A231389.P9791737214651463477

`A231396(A001844(n))+char[14]`
-/

namespace A231389.P9791737214651463477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231389.P9791737214651463477

/-!
# A231390: Number of (n+1) X (2+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231390, the canonical program `A231390.P974205117332261547` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231390 has offset 1).

The definition of A231390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231390.P91519086474207440

`ogf((7-6x-8x^2-4x^3-8x^4)/(1-2x-x^2+2x^3))`
-/

namespace A231390.P91519086474207440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -6, -8, -4, -8] [1, -2, -1, 2] n

end

end A231390.P91519086474207440

namespace A231390

/-- `ogf((7-6x-8x^2-4x^3-8x^4)/(1-2x-x^2+2x^3))` -/
def P91519086474207440.Spec : Prop :=
  ∀ n, P91519086474207440.a n = A231390 (n + 1)

end A231390

/-! ## A231390.P974205117332261547

`or(4, a(n-2)+2^n)` with `a(0)=7, a(1)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231390

/-- `or(4, a(n-2)+2^n)` -/
def P974205117332261547.Spec : Prop :=
  ∀ n, (P974205117332261547.a n : ℤ) = A231390 (n + 1)

theorem P974205117332261547.correct : P974205117332261547.Spec := by
  intro n
  simp only [A231390, Nat.add_sub_cancel]

end A231390

/-! ## A231390.P5883418252574585730

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=7, a(1)=8, a(2)=15, a(3)=20, a(4)=31`
-/

namespace A231390.P5883418252574585730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 15, 20, 31] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A231390.P5883418252574585730

namespace A231390

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P5883418252574585730.Spec : Prop :=
  ∀ n, P5883418252574585730.a n = A231390 (n + 1)

end A231390

/-! ## A231390.P14204308370836972547

`A000975(n)+or(5, a(n-1))` with `a(0)=7`
-/

namespace A231390.P14204308370836972547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A000975 n + Int.lor 5 (a (n - 1))

end

end A231390.P14204308370836972547

namespace A231390

/-- `A000975(n)+or(5, a(n-1))` -/
def P14204308370836972547.Spec : Prop :=
  ∀ n, P14204308370836972547.a n = A231390 (n + 1)

end A231390

/-! ## A231390.P3840479038848272023

`A001045(n+1)+or(4, a(n-1))` with `a(0)=7`
-/

namespace A231390.P3840479038848272023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A001045 (n + 1) + Int.lor 4 (a (n - 1))

end

end A231390.P3840479038848272023

namespace A231390

/-- `A001045(n+1)+or(4, a(n-1))` -/
def P3840479038848272023.Spec : Prop :=
  ∀ n, P3840479038848272023.a n = A231390 (n + 1)

end A231390

/-! ## A231390.P11577926634884457289

`A084639(n)+A065091(4-C(n, n²))`
-/

namespace A231390.P11577926634884457289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n + A065091 (4 - Nat.choose n (n ^ 2))

end

end A231390.P11577926634884457289

namespace A231390

/-- `A084639(n)+A065091(4-C(n, n²))` -/
def P11577926634884457289.Spec : Prop :=
  ∀ n, P11577926634884457289.a n = A231390 (n + 1)

end A231390

/-!
# A231391: Number of (n+1) X (3+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231391, there is no canonical definition to state claims against.
-/

/-! ## A231391.P1917954133049878125

`A231396(∑[n+3]+1)`
-/

namespace A231391.P1917954133049878125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231391.P1917954133049878125

/-! ## A231391.P15592522077263895294

`A231396(A052905(n)+3)+A025466(n)`
-/

namespace A231391.P15592522077263895294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A052905 n + 3).toNat + A025466 n

end

end A231391.P15592522077263895294

/-! ## A231391.P17112597958277856041

`A231396(A052905(n)+3)+A185037(n)`
-/

namespace A231391.P17112597958277856041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A052905 n + 3).toNat + A185037 n

end

end A231391.P17112597958277856041

/-! ## A231391.P9474336523612486745

`A231396(A034856(n+2))%A014798(n)`
-/

namespace A231391.P9474336523612486745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231396 (A034856 (n + 2)).toNat) (A014798 n)

end

end A231391.P9474336523612486745

/-! ## A231391.P3389795245045298577

`A231396(eq[2, A193592(n)])+A025466(n)`
-/

namespace A231391.P3389795245045298577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A025466 n

end

end A231391.P3389795245045298577

/-!
# A231392: Number of (n+1)X(4+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231392, there is no canonical definition to state claims against.
-/

/-! ## A231392.P6942333916462613272

`A231396(∑[n+4]+3)`
-/

namespace A231392.P6942333916462613272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A231392.P6942333916462613272

/-! ## A231392.P1939497434523506386

`A231396(A056000(n)+7)+A105517(n)`
-/

namespace A231392.P1939497434523506386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A056000 n + 7).toNat + A105517 n

end

end A231392.P1939497434523506386

/-! ## A231392.P5714349524503103961

`A231396(eq[3, A193592(n)])+A025466(n)`
-/

namespace A231392.P5714349524503103961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A025466 n

end

end A231392.P5714349524503103961

/-! ## A231392.P12550650204589925831

`A231396(eq[3, A193592(n)])+A185037(n)`
-/

namespace A231392.P12550650204589925831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A185037 n

end

end A231392.P12550650204589925831

/-! ## A231392.P14949893984193957885

`A231396(eq[3, A193592(n)])+A193095(n)`
-/

namespace A231392.P14949893984193957885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A193095 n

end

end A231392.P14949893984193957885

/-!
# A231393: Number of (n+1)X(5+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231393, there is no canonical definition to state claims against.
-/

/-! ## A231393.P1850046232531641665

`A231396(∑[n+5]+6)`
-/

namespace A231393.P1850046232531641665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A231393.P1850046232531641665

/-! ## A231393.P15005049280797006238

`gcd(n+1, n²)*A231396(Δ[A023545(n+1)])`
-/

namespace A231393.P15005049280797006238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n ^ 2) : ℤ) * A231396 (f1 (n + 1) - f1 n).toNat

end

end A231393.P15005049280797006238

/-! ## A231393.P7991615798235299753

`A231396(A046691(n+3))*A369605(n)`
-/

namespace A231393.P7991615798235299753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A046691 (n + 3)).toNat * A369605 n

end

end A231393.P7991615798235299753

/-! ## A231393.P17299451695844714147

`A231396(A046691(n+3))*A369997(n)`
-/

namespace A231393.P17299451695844714147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A046691 (n + 3)).toNat * A369997 n

end

end A231393.P17299451695844714147

/-! ## A231393.P17505729385470756422

`A231396(Δ[A023545(n+1)])*A270061(n)`
-/

namespace A231393.P17505729385470756422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (f1 (n + 1) - f1 n).toNat * A270061 n

end

end A231393.P17505729385470756422

/-!
# A231394: Number of (n+1) X (6+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231394, there is no canonical definition to state claims against.
-/

/-! ## A231394.P11659362462258941044

`A231396(A052905(n+3))`
-/

namespace A231394.P11659362462258941044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A052905 (n + 3)).toNat

end

end A231394.P11659362462258941044

/-! ## A231394.P17081248006763740427

`A231396(A056119(n)+16)`
-/

namespace A231394.P17081248006763740427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A056119 n + 16).toNat

end

end A231394.P17081248006763740427

/-! ## A231394.P5100840624772922197

`A231396(eq[3, A219347(n)])`
-/

namespace A231394.P5100840624772922197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231394.P5100840624772922197

/-! ## A231394.P11443205685885492142

`A231396(eq[5, A193592(n)])`
-/

namespace A231394.P11443205685885492142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231394.P11443205685885492142

/-! ## A231394.P11851962002643549981

`A231396(eq[8, A258709(n)])`
-/

namespace A231394.P11851962002643549981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231394.P11851962002643549981

/-!
# A231395: Number of (n+1)X(7+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231395, there is no canonical definition to state claims against.
-/

/-! ## A231395.P9227083212955932888

`A231396(A055999(n+4))`
-/

namespace A231395.P9227083212955932888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A055999 (n + 4)).toNat

end

end A231395.P9227083212955932888

/-! ## A231395.P3101329148018758005

`A231396(eq[4, A219347(n)])`
-/

namespace A231395.P3101329148018758005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231395.P3101329148018758005

/-! ## A231395.P6555913089011805758

`A231396(eq[5, A332954(n)])`
-/

namespace A231395.P6555913089011805758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231395.P6555913089011805758

/-! ## A231395.P16251505783964510315

`A231396(eq[6, A193592(n)])`
-/

namespace A231395.P16251505783964510315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231395.P16251505783964510315

/-!
# A231396: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231396, there is no canonical definition to state claims against.
-/

/-! ## A231396.P9686415632311087907

`A231463(A187829(n+1))-char[14]`
-/

namespace A231396.P9686415632311087907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (A187829 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231396.P9686415632311087907

/-! ## A231396.P10279418158883044301

`A231463(n+1)+A178798(A027193(n))`
-/

namespace A231396.P10279418158883044301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (n + 1) + A178798 (A027193 n).toNat

end

end A231396.P10279418158883044301

/-! ## A231396.P2169349528830237320

`A231463(n+1)-A025466(A110334(n))`
-/

namespace A231396.P2169349528830237320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (n + 1) - A025466 (A110334 n).toNat

end

end A231396.P2169349528830237320

/-! ## A231396.P5046476242074713845

`A231463(n+1)-A193095(A015066(n))`
-/

namespace A231396.P5046476242074713845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (n + 1) - A193095 (A015066 n).toNat

end

end A231396.P5046476242074713845

/-! ## A231396.P16761118579990408619

`A231463(n+1)-A185037(A078840(n))`
-/

namespace A231396.P16761118579990408619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231463 (n + 1) - A185037 (A078840 n).toNat

end

end A231396.P16761118579990408619

/-!
# A231397: Number of (1+1) X (n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231397, the canonical program `A231397.P6442201860566596966` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231397 has offset 1).

The definition of A231397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231397.P6442201860566596966

`ogf((3-5x-17x^2+18x^3+32x^4-32x^5)/(1-4x-x^2+16x^3-4x^4-24x^5+16x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A231397

/-- `ogf((3-5x-17x^2+18x^3+32x^4-32x^5)/(1-4x-x^2+16x^3-4x^4-24x^5+16x^6))` -/
def P6442201860566596966.Spec : Prop :=
  ∀ n, P6442201860566596966.a n = A231397 (n + 1)

theorem P6442201860566596966.correct : P6442201860566596966.Spec := by
  intro n
  simp only [A231397, Nat.add_sub_cancel]

end A231397

/-! ## A231397.P8809610946748732394

`A231396(∑[n]+1)`
-/

namespace A231397.P8809610946748732394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231397.P8809610946748732394

namespace A231397

/-- `A231396(∑[n]+1)` -/
def P8809610946748732394.Spec : Prop :=
  ∀ n, P8809610946748732394.a n = A231397 (n + 1)

end A231397

/-! ## A231397.P6372242336717120809

`record[A231396(∑[gcd(1-n, floor(n/2))])]`
-/

namespace A231397.P6372242336717120809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231397.P6372242336717120809

namespace A231397

/-- `record[A231396(∑[gcd(1-n, floor(n/2))])]` -/
def P6372242336717120809.Spec : Prop :=
  ∀ n, P6372242336717120809.a n = A231397 (n + 1)

end A231397

/-! ## A231397.P9239058037458463378

`record[A231396(∑[A057979(n)])]`
-/

namespace A231397.P9239058037458463378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231397.P9239058037458463378

namespace A231397

/-- `record[A231396(∑[A057979(n)])]` -/
def P9239058037458463378.Spec : Prop :=
  ∀ n, P9239058037458463378.a n = A231397 (n + 1)

end A231397

/-! ## A231397.P3036520834833249490

`record[A231396(record[A114220(n)])]`
-/

namespace A231397.P3036520834833249490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231397.P3036520834833249490

namespace A231397

/-- `record[A231396(record[A114220(n)])]` -/
def P3036520834833249490.Spec : Prop :=
  ∀ n, P3036520834833249490.a n = A231397 (n + 1)

end A231397

/-!
# A231398: Number of (2+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231398, there is no canonical definition to state claims against.
-/

/-! ## A231398.P6002223594750607140

`A231396(∑[n+1]+2)`
-/

namespace A231398.P6002223594750607140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231398.P6002223594750607140

/-! ## A231398.P6827609099614806650

`record[floor(A231396(n+4)/A060281(n+2))]`
-/

namespace A231398.P6827609099614806650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231396 (n + 4) : ℚ) / (A060281 (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231398.P6827609099614806650

/-! ## A231398.P15585624225997168884

`A231396(A133263(n+1))+A185236(n)`
-/

namespace A231398.P15585624225997168884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A133263 (n + 1)).toNat + A185236 n

end

end A231398.P15585624225997168884

/-! ## A231398.P16748813888352109759

`A231396(A133263(n+1))+A185245(n)`
-/

namespace A231398.P16748813888352109759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A133263 (n + 1)).toNat + A185245 n

end

end A231398.P16748813888352109759

/-! ## A231398.P10925428630722062499

`A231396(A133263(n+1))+A185264(n)`
-/

namespace A231398.P10925428630722062499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A133263 (n + 1)).toNat + A185264 n

end

end A231398.P10925428630722062499

/-!
# A231399: Number of (3+1)X(n+1) 0..2 arrays with no element unequal to a strict majority of its horizontal, diagonal and antidiagonal neighbors, with values 0..2 introduced in row major order.

The programs for A231399, there is no canonical definition to state claims against.
-/

/-! ## A231399.P4942448863058803172

`A231396(∑[n+2]+4)`
-/

namespace A231399.P4942448863058803172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231399.P4942448863058803172

/-! ## A231399.P5566183678539305222

`A231396(A167614(n+1))+char[14]`
-/

namespace A231399.P5566183678539305222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231399.P5566183678539305222

/-! ## A231399.P12865773899333308937

`A231396(A167614(n+1))*A309913(n)`
-/

namespace A231399.P12865773899333308937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231396 (A167614 (n + 1)).toNat * A309913 n

end

end A231399.P12865773899333308937

/-! ## A231399.P4916365368985423814

`gcd(A025466(n), A231396(A167614(n+1)))`
-/

namespace A231399.P4916365368985423814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025466 n) (A231396 (A167614 (n + 1)).toNat)

end

end A231399.P4916365368985423814

/-! ## A231399.P14051579228152695723

`or(A011730(n), A231396(A167614(n+1)))`
-/

namespace A231399.P14051579228152695723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011730 n) (A231396 (A167614 (n + 1)).toNat)

end

end A231399.P14051579228152695723

