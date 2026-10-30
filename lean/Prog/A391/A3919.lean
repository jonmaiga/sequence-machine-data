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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A391900: The total number of prime factors (counted with multiplicity) of the prime factorization exponents of n.

The programs for A391900, the canonical program `A391900.P11135445181283333301` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391900 has offset 1).

The definition of A391900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391900.P11135445181283333301

`A001222(A005361(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391900

/-- `A001222(A005361(n+1))` -/
def P11135445181283333301.Spec : Prop :=
  ∀ n, P11135445181283333301.a n = A391900 (n + 1)

theorem P11135445181283333301.correct : P11135445181283333301.Spec := by
  intro n
  simp only [A391900, Nat.add_sub_cancel]

end A391900

/-! ## A391900.P3481786488199710921

`∑{e}[∏{e}[1+n, #], #]`
-/

namespace A391900.P3481786488199710921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A391900.P3481786488199710921

namespace A391900

/-- `∑{e}[∏{e}[1+n, #], #]` -/
def P3481786488199710921.Spec : Prop :=
  ∀ n, (P3481786488199710921.a n : ℤ) = A391900 (n + 1)

end A391900

/-! ## A391900.P1811777571962253848

`∑{e}[exp(∑{e}[n+1, log(#)]), #]`
-/

namespace A391900.P1811777571962253848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A391900.P1811777571962253848

namespace A391900

/-- `∑{e}[exp(∑{e}[n+1, log(#)]), #]` -/
def P1811777571962253848.Spec : Prop :=
  ∀ n, (P1811777571962253848.a n : ℤ) = A391900 (n + 1)

end A391900

/-! ## A391900.P17057602550008359390

`∑{e}[2^∑{e}[n+1, log2(#)], #]`
-/

namespace A391900.P17057602550008359390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A391900.P17057602550008359390

namespace A391900

/-- `∑{e}[2^∑{e}[n+1, log2(#)], #]` -/
def P17057602550008359390.Spec : Prop :=
  ∀ n, (P17057602550008359390.a n : ℤ) = A391900 (n + 1)

end A391900

/-! ## A391900.P13624085462012842970

`∑{e}[n+1, A001222(#)]`
-/

namespace A391900.P13624085462012842970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p)

end

end A391900.P13624085462012842970

namespace A391900

/-- `∑{e}[n+1, A001222(#)]` -/
def P13624085462012842970.Spec : Prop :=
  ∀ n, P13624085462012842970.a n = A391900 (n + 1)

end A391900

/-! ## A391900.P4179491682577347909

`∑{e}[A005361(n+1), #]`
-/

namespace A391900.P4179491682577347909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A391900.P4179491682577347909

namespace A391900

/-- `∑{e}[A005361(n+1), #]` -/
def P4179491682577347909.Spec : Prop :=
  ∀ n, (P4179491682577347909.a n : ℤ) = A391900 (n + 1)

end A391900

/-! ## A391900.P9805948213367028163

`∑{e}[n+1, A008481(#)]`
-/

namespace A391900.P9805948213367028163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A008481 (Nat.factorization (f1 n) p)

end

end A391900.P9805948213367028163

namespace A391900

/-- `∑{e}[n+1, A008481(#)]` -/
def P9805948213367028163.Spec : Prop :=
  ∀ n, P9805948213367028163.a n = A391900 (n + 1)

end A391900

/-! ## A391900.P430892540340781673

`∑{e}[A303915(n+1), #]`
-/

namespace A391900.P430892540340781673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A391900.P430892540340781673

namespace A391900

/-- `∑{e}[A303915(n+1), #]` -/
def P430892540340781673.Spec : Prop :=
  ∀ n, (P430892540340781673.a n : ℤ) = A391900 (n + 1)

end A391900

/-! ## A391900.P17020951784151297622

`A058061(A003557(n+1))`
-/

namespace A391900.P17020951784151297622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A003557 (n + 1)).toNat

end

end A391900.P17020951784151297622

namespace A391900

/-- `A058061(A003557(n+1))` -/
def P17020951784151297622.Spec : Prop :=
  ∀ n, P17020951784151297622.a n = A391900 (n + 1)

end A391900

/-! ## A391900.P4155126134620049622

`A362412(A005361(n+1)²)`
-/

namespace A391900.P4155126134620049622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A005361 (n + 1) ^ 2).toNat

end

end A391900.P4155126134620049622

namespace A391900

/-- `A362412(A005361(n+1)²)` -/
def P4155126134620049622.Spec : Prop :=
  ∀ n, P4155126134620049622.a n = A391900 (n + 1)

end A391900

/-! ## A391900.P7536192166268258780

`A035232(A256690(n+1))`
-/

namespace A391900.P7536192166268258780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A256690 (n + 1)).toNat

end

end A391900.P7536192166268258780

namespace A391900

/-- `A035232(A256690(n+1))` -/
def P7536192166268258780.Spec : Prop :=
  ∀ n, P7536192166268258780.a n = A391900 (n + 1)

end A391900

/-! ## A391900.P883489197698116757

`A124010(A325988((n+1)²))`
-/

namespace A391900.P883489197698116757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A325988 ((n + 1) ^ 2)).toNat

end

end A391900.P883489197698116757

namespace A391900

/-- `A124010(A325988((n+1)²))` -/
def P883489197698116757.Spec : Prop :=
  ∀ n, P883489197698116757.a n = A391900 (n + 1)

end A391900

/-!
# A391901: The number of distinct factorials that are unitarily dividing n.

The programs for A391901, there is no canonical definition to state claims against.
-/

/-! ## A391901.P13712699791734712164

`gcd(A052396(n+1), A160400(n+1))`
-/

namespace A391901.P13712699791734712164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052396 (n + 1)) (A160400 (n + 1))

end

end A391901.P13712699791734712164

/-! ## A391901.P12403195033735023088

`gcd(A365162(n+1), A385392(n+1))`
-/

namespace A391901.P12403195033735023088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A365162 (n + 1)) (A385392 (n + 1))

end

end A391901.P12403195033735023088

/-! ## A391901.P17573540829313996717

`gcd(A184407(n+1), A385392(n+1))`
-/

namespace A391901.P17573540829313996717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184407 (n + 1)) (A385392 (n + 1))

end

end A391901.P17573540829313996717

/-! ## A391901.P3026144382668354022

`gcd(A109886(n), A385731(n+1))`
-/

namespace A391901.P3026144382668354022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109886 n) (A385731 (n + 1))

end

end A391901.P3026144382668354022

/-! ## A391901.P8423820834346448937

`A385731((n+1)*A178757(n+1)²)`
-/

namespace A391901.P8423820834346448937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385731 ((n + 1 : ℤ) * A178757 (n + 1) ^ 2).toNat

end

end A391901.P8423820834346448937

/-!
# A391902: a(n) = Sum_{k=0..n} binomial(3*k,3*(n-k)).

The programs for A391902, the canonical program `A391902.P14080592504400997701` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391902 has offset 0).

The definition of A391902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*#, 3*(n-#))]` (program `A391902.P14080592504400997701`, by `A391902.P14080592504400997701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391902.P11931604830436134818

`ogf((1-2x-x^2-7x^3+x^4)/(1-3x-22x^3-3x^5-x^6))`
-/

namespace A391902.P11931604830436134818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, -7, 1] [1, -3, 0, -22, 0, -3, -1] n

end

end A391902.P11931604830436134818

namespace A391902

/-- `ogf((1-2x-x^2-7x^3+x^4)/(1-3x-22x^3-3x^5-x^6))` -/
def P11931604830436134818.Spec : Prop :=
  ∀ n, P11931604830436134818.a n = A391902 n

end A391902

/-! ## A391902.P12474551055585629767

`3*a(n-1)+22*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=21, a(4)=86, a(5)=305`
-/

namespace A391902.P12474551055585629767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 21, 86, 305] fun n a =>
  3 * a (n - 1) + 22 * a (n - 3) + 3 * a (n - 5) + a (n - 6)

end

end A391902.P12474551055585629767

namespace A391902

/-- `3*a(n-1)+22*a(n-3)+3*a(n-5)+a(n-6)` -/
def P12474551055585629767.Spec : Prop :=
  ∀ n, (P12474551055585629767.a n : ℤ) = A391902 n

end A391902

/-! ## A391902.P14080592504400997701

`∑{#}[n, C(3*#, 3*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391902

/-- `∑{#}[n, C(3*#, 3*(n-#))]` -/
def P14080592504400997701.Spec : Prop :=
  ∀ n, (P14080592504400997701.a n : ℤ) = A391902 n

theorem P14080592504400997701.correct : P14080592504400997701.Spec := by
  intro n
  simp only [A391902]

end A391902

/-! ## A391902.P14401110944367231470

`A100134(3*n)`
-/

namespace A391902.P14401110944367231470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (3 * n)

end

end A391902.P14401110944367231470

namespace A391902

/-- `A100134(3*n)` -/
def P14401110944367231470.Spec : Prop :=
  ∀ n, P14401110944367231470.a n = A391902 n

end A391902

/-! ## A391902.P12343869519719377524

`A115055(3*n+2)`
-/

namespace A391902.P12343869519719377524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115055 (3 * n + 2)

end

end A391902.P12343869519719377524

namespace A391902

/-- `A115055(3*n+2)` -/
def P12343869519719377524.Spec : Prop :=
  ∀ n, P12343869519719377524.a n = A391902 n

end A391902

/-!
# A391903: a(n) = Sum_{k=0..floor(n/2)} binomial(3*k,3*(n-2*k)).

The programs for A391903, the canonical program `A391903.P1556664504790633173` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391903 has offset 0).

The definition of A391903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(3*#, 3*(n-2*#))]` (program `A391903.P1556664504790633173`, by `A391903.P1556664504790633173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391903.P3800676994408736046

`ogf((1-2x^2-2x^3+x^4-7x^5+x^6)/(1-3x^2-3x^3+3x^4-21x^5+2x^6-3x^7-3x^8-x^9))`
-/

namespace A391903.P3800676994408736046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -2, 1, -7, 1] [1, 0, -3, -3, 3, -21, 2, -3, -3, -1] n

end

end A391903.P3800676994408736046

namespace A391903

/-- `ogf((1-2x^2-2x^3+x^4-7x^5+x^6)/(1-3x^2-3x^3+3x^4-21x^5+2x^6-3x^7-3x^8-x^9))` -/
def P3800676994408736046.Spec : Prop :=
  ∀ n, P3800676994408736046.a n = A391903 n

end A391903

/-! ## A391903.P1556664504790633173

`∑{#}[floor(n/2), C(3*#, 3*(n-2*#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391903

/-- `∑{#}[floor(n/2), C(3*#, 3*(n-2*#))]` -/
def P1556664504790633173.Spec : Prop :=
  ∀ n, (P1556664504790633173.a n : ℤ) = A391903 n

theorem P1556664504790633173.correct : P1556664504790633173.Spec := by
  intro n
  simp only [A391903]

end A391903

/-!
# A391904: a(n) = Sum_{k=0..floor(n/3)} binomial(3*k,3*(n-3*k)).

The programs for A391904, the canonical program `A391904.P8427246192622959374` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391904 has offset 0).

The definition of A391904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(3*#, 3*(n-3*#))]` (program `A391904.P8427246192622959374`, by `A391904.P8427246192622959374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391904.P17444670236427498222

`ogf((1-2x^3-2x^4+x^6-7x^7+x^8)/(1-3x^3-3x^4+3x^6-21x^7+3x^8-x^9-3x^10-3x^11-x^12))`
-/

namespace A391904.P17444670236427498222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2, -2, 0, 1, -7, 1] [1, 0, 0, -3, -3, 0, 3, -21, 3, -1, -3, -3, -1] n

end

end A391904.P17444670236427498222

namespace A391904

/-- `ogf((1-2x^3-2x^4+x^6-7x^7+x^8)/(1-3x^3-3x^4+3x^6-21x^7+3x^8-x^9-3x^10-3x^11-x^12))` -/
def P17444670236427498222.Spec : Prop :=
  ∀ n, P17444670236427498222.a n = A391904 n

end A391904

/-! ## A391904.P8427246192622959374

`∑{#}[floor(n/3), C(3*#, 3*(n-3*#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391904

/-- `∑{#}[floor(n/3), C(3*#, 3*(n-3*#))]` -/
def P8427246192622959374.Spec : Prop :=
  ∀ n, (P8427246192622959374.a n : ℤ) = A391904 n

theorem P8427246192622959374.correct : P8427246192622959374.Spec := by
  intro n
  simp only [A391904]

end A391904

/-!
# A391906: Numerators of the convergents given by treating A390946 as continued fraction coefficients after the leading 0.

The programs for A391906, there is no canonical definition to state claims against.
-/

/-! ## A391906.P11919652490974347514

`A210357(A391907(n+1))`
-/

namespace A391906.P11919652490974347514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A391907 (n + 1)).toNat

end

end A391906.P11919652490974347514

/-!
# A391907: Denominators of the convergents given by treating A390946 as continued fraction coefficients after the leading 0.

The programs for A391907, there is no canonical definition to state claims against.
-/

/-! ## A391907.P17432992496663554578

`A093873(A176496(n+1))`
-/

namespace A391907.P17432992496663554578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A176496 (n + 1)).toNat

end

end A391907.P17432992496663554578

/-!
# A391909: Numbers k such that -1 <= A195017(k) <= 1.

The programs for A391909, the canonical program `A391909.P11414189018115501503` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391909 has offset 1).

The definition of A391909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391909.P11414189018115501503

`record[(n+1)*A391747(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391909

/-- `record[(n+1)*A391747(n+1)]` -/
def P11414189018115501503.Spec : Prop :=
  ∀ n, P11414189018115501503.a n = A391909 (n + 1)

theorem P11414189018115501503.correct : P11414189018115501503.Spec := by
  intro n
  simp only [A391909, Nat.add_sub_cancel]

end A391909

/-! ## A391909.P16955701941232324342

`filter[A144972(n+1), A391747(#)]`
-/

namespace A391909.P16955701941232324342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A391909.P16955701941232324342

namespace A391909

/-- `filter[A144972(n+1), A391747(#)]` -/
def P16955701941232324342.Spec : Prop :=
  ∀ n, P16955701941232324342.a n = A391909 (n + 1)

end A391909

/-! ## A391909.P10627234876785489280

`filter[A213367(n+1), A391747(#)]`
-/

namespace A391909.P10627234876785489280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A391909.P10627234876785489280

namespace A391909

/-- `filter[A213367(n+1), A391747(#)]` -/
def P10627234876785489280.Spec : Prop :=
  ∀ n, P10627234876785489280.a n = A391909 (n + 1)

end A391909

/-! ## A391909.P8432175753286478285

`filter[A038459(n+1), A391747(#)]`
-/

namespace A391909.P8432175753286478285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A391909.P8432175753286478285

namespace A391909

/-- `filter[A038459(n+1), A391747(#)]` -/
def P8432175753286478285.Spec : Prop :=
  ∀ n, P8432175753286478285.a n = A391909 (n + 1)

end A391909

/-! ## A391909.P16800358915361287630

`filter[A118759(n+1), A391747(#)]`
-/

namespace A391909.P16800358915361287630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A391909.P16800358915361287630

namespace A391909

/-- `filter[A118759(n+1), A391747(#)]` -/
def P16800358915361287630.Spec : Prop :=
  ∀ n, P16800358915361287630.a n = A391909 (n + 1)

end A391909

/-! ## A391909.P10111622684869974521

`filter[A085736(n+1), A391747(#)]`
-/

namespace A391909.P10111622684869974521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j).toNat = 1) n)

end

end A391909.P10111622684869974521

namespace A391909

/-- `filter[A085736(n+1), A391747(#)]` -/
def P10111622684869974521.Spec : Prop :=
  ∀ n, P10111622684869974521.a n = A391909 (n + 1)

end A391909

/-!
# A391911: Dimension of the space of twist-minimal newforms of weight 2 and level n.

The programs for A391911, there is no canonical definition to state claims against.
-/

/-! ## A391911.P5954020065567338769

`A127788(n+1)%A378908(n+1)`
-/

namespace A391911.P5954020065567338769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127788 (n + 1)) (A378908 (n + 1))

end

end A391911.P5954020065567338769

/-! ## A391911.P2553494932309910635

`A127788(n+1)%A010960(n)`
-/

namespace A391911.P2553494932309910635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127788 (n + 1)) (A010960 n)

end

end A391911.P2553494932309910635

/-!
# A391912: Number of irredundant sets in the n-triangular honeycomb queen graph.

The programs for A391912, there is no canonical definition to state claims against.
-/

/-! ## A391912.P1172876497215148212

`A003963(A389002(n+3))+∑{d}[n+1, #/gcd(#, 2)]`
-/

namespace A391912.P1172876497215148212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A389002 (n + 3)).toNat : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Nat.gcd d 2 : ℚ)

end

end A391912.P1172876497215148212

/-!
# A391914: Number of irredundant sets in the n-Lucas cube graph.

The programs for A391914, there is no canonical definition to state claims against.
-/

/-! ## A391914.P14178725363081318800

`A342497(A295615(n))`
-/

namespace A391914.P14178725363081318800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 (A295615 n).toNat

end

end A391914.P14178725363081318800

/-!
# A391917: Number of irredundant sets in the n-double cone graph.

The programs for A391917, the canonical program `A391917.P17410970912518672552` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391917 has offset 1).

The definition of A391917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391917.P17410970912518672552

`A290493(n+1)²+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A391917

/-- `A290493(n+1)²+1` -/
def P17410970912518672552.Spec : Prop :=
  ∀ n, P17410970912518672552.a n = A391917 (n + 1)

theorem P17410970912518672552.correct : P17410970912518672552.Spec := by
  intro n
  simp only [A391917, Nat.add_sub_cancel]

end A391917

/-! ## A391917.P18128185423771614677

`A002522(A290493(n+1))`
-/

namespace A391917.P18128185423771614677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A290493 (n + 1)).toNat

end

end A391917.P18128185423771614677

namespace A391917

/-- `A002522(A290493(n+1))` -/
def P18128185423771614677.Spec : Prop :=
  ∀ n, P18128185423771614677.a n = A391917 (n + 1)

end A391917

/-! ## A391917.P6205602231854382406

`A261327(2*A290493(n+1))`
-/

namespace A391917.P6205602231854382406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (2 * A290493 (n + 1)).toNat

end

end A391917.P6205602231854382406

namespace A391917

/-- `A261327(2*A290493(n+1))` -/
def P6205602231854382406.Spec : Prop :=
  ∀ n, P6205602231854382406.a n = A391917 (n + 1)

end A391917

/-! ## A391917.P11666186740270441193

`A396674(A290493(n+1)*A290493(n+1))`
-/

namespace A391917.P11666186740270441193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396674 (A290493 (n + 1) * A290493 (n + 1)).toNat

end

end A391917.P11666186740270441193

namespace A391917

/-- `A396674(A290493(n+1)*A290493(n+1))` -/
def P11666186740270441193.Spec : Prop :=
  ∀ n, P11666186740270441193.a n = A391917 (n + 1)

end A391917

/-!
# A391919: Triangle read by rows: T(n, k) is the number of singular meanders with n intersections having k tangential intersections.

The programs for A391919, there is no canonical definition to state claims against.
-/

/-! ## A391919.P10603463032520321584

`A394216(n)%record[A394210(n+4)]`
-/

namespace A391919.P10603463032520321584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394210 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394216 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A391919.P10603463032520321584

/-! ## A391919.P8196218417327179935

`A394216(n)%A066523(A000041(n))`
-/

namespace A391919.P8196218417327179935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394216 n) (A066523 (A000041 n).toNat)

end

end A391919.P8196218417327179935

/-! ## A391919.P1399060027744629464

`A394216(n)+A185013(A394235(3*(n+1)))`
-/

namespace A391919.P1399060027744629464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394216 n + A185013 (A394235 (3 * (n + 1))).toNat

end

end A391919.P1399060027744629464

/-! ## A391919.P7553135398330355845

`A085736(A394216(n))`
-/

namespace A391919.P7553135398330355845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A394216 n).toNat

end

end A391919.P7553135398330355845

/-! ## A391919.P11228160430792576411

`A394216(n)%A394183(n+3)`
-/

namespace A391919.P11228160430792576411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394216 n) (A394183 (n + 3))

end

end A391919.P11228160430792576411

/-!
# A391921: Powerful numbers that are not cubefree and are divisible by exactly 2 distinct primes.

The programs for A391921, there is no canonical definition to state claims against.
-/

/-! ## A391921.P5035172600492797686

`∩[A355462(n+1), A372404(n+1)]`
-/

namespace A391921.P5035172600492797686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P5035172600492797686

/-! ## A391921.P17005606083983562267

`∩[A320966(n+1), A355462(n+1)]`
-/

namespace A391921.P17005606083983562267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P17005606083983562267

/-! ## A391921.P13511301217772538666

`∩[A355462(n+1), A389528(n+1)]`
-/

namespace A391921.P13511301217772538666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P13511301217772538666

/-! ## A391921.P9498123950480467548

`∩[A059172(n+1), A355462(n+1)]`
-/

namespace A391921.P9498123950480467548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P9498123950480467548

/-! ## A391921.P9449589443520345695

`∩[A355462(n+1), A396852(n+1)]`
-/

namespace A391921.P9449589443520345695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P9449589443520345695

/-! ## A391921.P17543467233347219637

`∩[A320966(n+1), A338539(n+1)]`
-/

namespace A391921.P17543467233347219637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P17543467233347219637

/-! ## A391921.P705352788151613007

`∩[A338539(n+1), A372404(n+1)]`
-/

namespace A391921.P705352788151613007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P705352788151613007

/-! ## A391921.P994246327026867073

`∩[A293243(n+1), A355462(n+1)]`
-/

namespace A391921.P994246327026867073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P994246327026867073

/-! ## A391921.P16218815307892078788

`∩[A212164(n+1), A355462(n+1)]`
-/

namespace A391921.P16218815307892078788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P16218815307892078788

/-! ## A391921.P2081170187668083035

`filter[A355462(n+1), A380439(#)]`
-/

namespace A391921.P2081170187668083035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A391921.P2081170187668083035

/-! ## A391921.P2669021002345015350

`∩[A355462(n+1), A378767(n+1)]`
-/

namespace A391921.P2669021002345015350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P2669021002345015350

/-! ## A391921.P5069133227943577315

`∩[A046099(n+1), A355462(n+1)]`
-/

namespace A391921.P5069133227943577315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P5069133227943577315

/-! ## A391921.P2939890417222434639

`∩[A102562(n+1), A355462(n+1)]`
-/

namespace A391921.P2939890417222434639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P2939890417222434639

/-! ## A391921.P2498087605964703567

`filter[A345382(n+1), A380439(#)]`
-/

namespace A391921.P2498087605964703567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A391921.P2498087605964703567

/-! ## A391921.P13717434634278366585

`∩[A046099(n+1), A345382(n+1)]`
-/

namespace A391921.P13717434634278366585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P13717434634278366585

/-! ## A391921.P9265936838980627858

`∩[A059172(n+1), A345382(n+1)]`
-/

namespace A391921.P9265936838980627858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P9265936838980627858

/-! ## A391921.P616746165534791101

`∩[A102562(n+1), A345382(n+1)]`
-/

namespace A391921.P616746165534791101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P616746165534791101

/-! ## A391921.P2095651903148535529

`∩[A212164(n+1), A345382(n+1)]`
-/

namespace A391921.P2095651903148535529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P2095651903148535529

/-! ## A391921.P9474306213463138935

`∩[A293243(n+1), A345382(n+1)]`
-/

namespace A391921.P9474306213463138935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P9474306213463138935

/-! ## A391921.P16419776386720998629

`∩[A320966(n+1), A345382(n+1)]`
-/

namespace A391921.P16419776386720998629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391921.P16419776386720998629

/-!
# A391922: Numbers that are neither cubefree nor powerful and have exactly 2 distinct prime factors.

The programs for A391922, the canonical program `A391922.P16311952862466852475` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391922 has offset 1).

The definition of A391922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391922.P16311952862466852475

`∩[A212164(n+1), A345381(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A391922

/-- `∩[A212164(n+1), A345381(n+1)]` -/
def P16311952862466852475.Spec : Prop :=
  ∀ n, (P16311952862466852475.a n : ℤ) = A391922 (n + 1)

theorem P16311952862466852475.correct : P16311952862466852475.Spec := by
  intro n
  simp only [A391922, Nat.add_sub_cancel]

end A391922

/-! ## A391922.P8482239448531650527

`∩[A177425(n+1), A381316(n+1)]`
-/

namespace A391922.P8482239448531650527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P8482239448531650527

namespace A391922

/-- `∩[A177425(n+1), A381316(n+1)]` -/
def P8482239448531650527.Spec : Prop :=
  ∀ n, (P8482239448531650527.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P17719163625068517139

`∩[A074451(n+1), A345381(n+1)]`
-/

namespace A391922.P17719163625068517139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P17719163625068517139

namespace A391922

/-- `∩[A074451(n+1), A345381(n+1)]` -/
def P17719163625068517139.Spec : Prop :=
  ∀ n, (P17719163625068517139.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P6091113125113450310

`∩[A046099(n+1), A345381(n+1)]`
-/

namespace A391922.P6091113125113450310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P6091113125113450310

namespace A391922

/-- `∩[A046099(n+1), A345381(n+1)]` -/
def P6091113125113450310.Spec : Prop :=
  ∀ n, (P6091113125113450310.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P17957507928459202133

`∩[A048108(n+1), A345381(n+1)]`
-/

namespace A391922.P17957507928459202133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P17957507928459202133

namespace A391922

/-- `∩[A048108(n+1), A345381(n+1)]` -/
def P17957507928459202133.Spec : Prop :=
  ∀ n, (P17957507928459202133.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P9906336791666054379

`∩[A119251(n+1), A381316(n+1)]`
-/

namespace A391922.P9906336791666054379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P9906336791666054379

namespace A391922

/-- `∩[A119251(n+1), A381316(n+1)]` -/
def P9906336791666054379.Spec : Prop :=
  ∀ n, (P9906336791666054379.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P13103524849030249470

`∩[A062171(n+1), A345381(n+1)]`
-/

namespace A391922.P13103524849030249470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P13103524849030249470

namespace A391922

/-- `∩[A062171(n+1), A345381(n+1)]` -/
def P13103524849030249470.Spec : Prop :=
  ∀ n, (P13103524849030249470.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P2234045059316246100

`∩[A046099(n+1), A084227(n+1)]`
-/

namespace A391922.P2234045059316246100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P2234045059316246100

namespace A391922

/-- `∩[A046099(n+1), A084227(n+1)]` -/
def P2234045059316246100.Spec : Prop :=
  ∀ n, (P2234045059316246100.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P15081248038946387217

`∩[A048108(n+1), A084227(n+1)]`
-/

namespace A391922.P15081248038946387217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P15081248038946387217

namespace A391922

/-- `∩[A048108(n+1), A084227(n+1)]` -/
def P15081248038946387217.Spec : Prop :=
  ∀ n, (P15081248038946387217.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P6272102203205056305

`∩[A062171(n+1), A084227(n+1)]`
-/

namespace A391922.P6272102203205056305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P6272102203205056305

namespace A391922

/-- `∩[A062171(n+1), A084227(n+1)]` -/
def P6272102203205056305.Spec : Prop :=
  ∀ n, (P6272102203205056305.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P3754857022833098290

`∩[A074451(n+1), A084227(n+1)]`
-/

namespace A391922.P3754857022833098290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P3754857022833098290

namespace A391922

/-- `∩[A074451(n+1), A084227(n+1)]` -/
def P3754857022833098290.Spec : Prop :=
  ∀ n, (P3754857022833098290.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P6979364343500104264

`∩[A084227(n+1), A212164(n+1)]`
-/

namespace A391922.P6979364343500104264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P6979364343500104264

namespace A391922

/-- `∩[A084227(n+1), A212164(n+1)]` -/
def P6979364343500104264.Spec : Prop :=
  ∀ n, (P6979364343500104264.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P5608945978027548131

`∩[A084227(n+1), A293243(n+1)]`
-/

namespace A391922.P5608945978027548131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P5608945978027548131

namespace A391922

/-- `∩[A084227(n+1), A293243(n+1)]` -/
def P5608945978027548131.Spec : Prop :=
  ∀ n, (P5608945978027548131.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P16494256182976179951

`∩[A084227(n+1), A335448(n+1)]`
-/

namespace A391922.P16494256182976179951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P16494256182976179951

namespace A391922

/-- `∩[A084227(n+1), A335448(n+1)]` -/
def P16494256182976179951.Spec : Prop :=
  ∀ n, (P16494256182976179951.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P16866397944141483249

`∩[A084227(n+1), A344653(n+1)]`
-/

namespace A391922.P16866397944141483249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P16866397944141483249

namespace A391922

/-- `∩[A084227(n+1), A344653(n+1)]` -/
def P16866397944141483249.Spec : Prop :=
  ∀ n, (P16866397944141483249.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P10712716343360724643

`∩[A084227(n+1), A345171(n+1)]`
-/

namespace A391922.P10712716343360724643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P10712716343360724643

namespace A391922

/-- `∩[A084227(n+1), A345171(n+1)]` -/
def P10712716343360724643.Spec : Prop :=
  ∀ n, (P10712716343360724643.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P11912710490077189914

`∩[A084227(n+1), A361204(n+1)]`
-/

namespace A391922.P11912710490077189914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P11912710490077189914

namespace A391922

/-- `∩[A084227(n+1), A361204(n+1)]` -/
def P11912710490077189914.Spec : Prop :=
  ∀ n, (P11912710490077189914.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P16248450553523766052

`∩[A084227(n+1), A362148(n+1)]`
-/

namespace A391922.P16248450553523766052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P16248450553523766052

namespace A391922

/-- `∩[A084227(n+1), A362148(n+1)]` -/
def P16248450553523766052.Spec : Prop :=
  ∀ n, (P16248450553523766052.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P8277677588888845195

`∩[A084227(n+1), A375145(n+1)]`
-/

namespace A391922.P8277677588888845195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P8277677588888845195

namespace A391922

/-- `∩[A084227(n+1), A375145(n+1)]` -/
def P8277677588888845195.Spec : Prop :=
  ∀ n, (P8277677588888845195.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P13525210329296534754

`∩[A084227(n+1), A376271(n+1)]`
-/

namespace A391922.P13525210329296534754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P13525210329296534754

namespace A391922

/-- `∩[A084227(n+1), A376271(n+1)]` -/
def P13525210329296534754.Spec : Prop :=
  ∀ n, (P13525210329296534754.a n : ℤ) = A391922 (n + 1)

end A391922

/-!
# A391923: Achilles numbers divisible by only 1 cube greater than 1.

The programs for A391923, there is no canonical definition to state claims against.
-/

/-! ## A391923.P15276271291478234810

`∩[A370786(n+1), A391491(n+1)]`
-/

namespace A391923.P15276271291478234810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P15276271291478234810

/-! ## A391923.P16693094683650328429

`∩[A376171(n+1), A391491(n+1)]`
-/

namespace A391923.P16693094683650328429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P16693094683650328429

/-! ## A391923.P17550649312540457505

`∩[A377820(n+1), A391491(n+1)]`
-/

namespace A391923.P17550649312540457505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P17550649312540457505

/-! ## A391923.P14638494632293139536

`∩[A377847(n+1), A390539(n+1)]`
-/

namespace A391923.P14638494632293139536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P14638494632293139536

/-! ## A391923.P13658852213221025631

`∩[A390539(n+1), A391491(n+1)]`
-/

namespace A391923.P13658852213221025631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P13658852213221025631

/-! ## A391923.P10696476919719032625

`∩[A052486(n+1), A377847(n+1)]`
-/

namespace A391923.P10696476919719032625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P10696476919719032625

/-! ## A391923.P10611786586649321661

`∩[A052486(n+1), A391491(n+1)]`
-/

namespace A391923.P10611786586649321661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P10611786586649321661

/-! ## A391923.P17060146084830821835

`∩[A377847(n+1), A389959(n+1)]`
-/

namespace A391923.P17060146084830821835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P17060146084830821835

/-! ## A391923.P7232088825819353943

`∩[A389959(n+1), A391491(n+1)]`
-/

namespace A391923.P7232088825819353943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P7232088825819353943

/-! ## A391923.P2310430970533985418

`∩[A102834(n+1), A391491(n+1)]`
-/

namespace A391923.P2310430970533985418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P2310430970533985418

/-! ## A391923.P1972866636603675213

`∩[A052486(n+1), A377846(n+1)]`
-/

namespace A391923.P1972866636603675213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P1972866636603675213

/-! ## A391923.P13804333659486667942

`∩[A377846(n+1), A389959(n+1)]`
-/

namespace A391923.P13804333659486667942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P13804333659486667942

/-! ## A391923.P14594099755114836365

`∩[A377846(n+1), A390539(n+1)]`
-/

namespace A391923.P14594099755114836365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P14594099755114836365

/-! ## A391923.P722945050508317748

`∩[A069236(n+1), A391491(n+1)]`
-/

namespace A391923.P722945050508317748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P722945050508317748

/-! ## A391923.P834293972902325199

`∩[A317102(n+1), A391491(n+1)]`
-/

namespace A391923.P834293972902325199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P834293972902325199

/-! ## A391923.P7534487245107765560

`∩[A377846(n+1), A389753(n+1)]`
-/

namespace A391923.P7534487245107765560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P7534487245107765560

/-! ## A391923.P8520083160276375320

`∩[A377847(n+1), A389753(n+1)]`
-/

namespace A391923.P8520083160276375320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P8520083160276375320

/-! ## A391923.P16839203540744489698

`∩[A389753(n+1), A391491(n+1)]`
-/

namespace A391923.P16839203540744489698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P16839203540744489698

/-! ## A391923.P14271104652888303218

`∩[A388306(n+1), A391491(n+1)]`
-/

namespace A391923.P14271104652888303218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P14271104652888303218

/-! ## A391923.P11772535696426929473

`∩[A072412(n+1), A377846(n+1)]`
-/

namespace A391923.P11772535696426929473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391923.P11772535696426929473

/-!
# A391925: Square array read by descending antidiagonals: A(n, k) is the k-th natural number i that satisfies i*n = A048720(i,m) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391925, there is no canonical definition to state claims against.
-/

/-! ## A391925.P9331834270743117820

`A046072(A336571(2*n+1))+A025581(n)`
-/

namespace A391925.P9331834270743117820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A336571 (2 * n + 1)).toNat + A025581 n

end

end A391925.P9331834270743117820

/-! ## A391925.P12995473142679202474

`A340599(A121314(3*n+2))+A004736(n+1)`
-/

namespace A391925.P12995473142679202474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A121314 (3 * n + 2)).toNat + A004736 (n + 1)

end

end A391925.P12995473142679202474

/-! ## A391925.P4162829516448836767

`A213742(A296120(2*n+1))+A025581(n)`
-/

namespace A391925.P4162829516448836767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213742 (A296120 (2 * n + 1)).toNat + A025581 n

end

end A391925.P4162829516448836767

/-!
# A391926: Square array read by descending antidiagonals: find the k-th natural number i that satisfies i*n = A048720(i,m) for some m, then A(n, k) = m. Here A048720 is carryless base-2 multiplication.

The programs for A391926, there is no canonical definition to state claims against.
-/

/-! ## A391926.P10927952786497293184

`A185224(A206550(3*n+2))+A002260(n+1)`
-/

namespace A391926.P10927952786497293184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185224 (A206550 (3 * n + 2)).toNat + A002260 (n + 1)

end

end A391926.P10927952786497293184

/-! ## A391926.P13987991422882092629

`A154754(A226444(2*n))*col(n)+1`
-/

namespace A391926.P13987991422882092629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154754 (A226444 (2 * n)).toNat * (SequenceMachineLib.triCol n : ℤ) + 1

end

end A391926.P13987991422882092629

/-! ## A391926.P10697861985635350531

`or(A002260(n+1), A347438(A288578(n)))`
-/

namespace A391926.P10697861985635350531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 1)) (A347438 (A288578 n).toNat)

end

end A391926.P10697861985635350531

/-! ## A391926.P14231369198462608519

`A109009(A060187(n+1))+A002262(n)`
-/

namespace A391926.P14231369198462608519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 (A060187 (n + 1)).toNat + A002262 n

end

end A391926.P14231369198462608519

/-! ## A391926.P15328996248098971605

`A380324(A121420(n))+A189768(n+1)`
-/

namespace A391926.P15328996248098971605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380324 (A121420 n).toNat + A189768 (n + 1)

end

end A391926.P15328996248098971605

/-!
# A391927: Numbers k for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

The programs for A391927, there is no canonical definition to state claims against.
-/

/-! ## A391927.P5320938749559707016

`lt[n, A373842(n+1)]+1`
-/

namespace A391927.P5320938749559707016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391927.P5320938749559707016

/-! ## A391927.P11235707339326484870

`A319801(n+2)+A073424(A069133(3*(n+1)))`
-/

namespace A391927.P11235707339326484870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319801 (n + 2) + A073424 (A069133 (3 * (n + 1))).toNat

end

end A391927.P11235707339326484870

/-!
# A391929: Number of fixed points on row n of triangle A391930.

The programs for A391929, the canonical program `A391929.P9420849167608159605` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391929 has offset 0).

The definition of A391929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391929.P9420849167608159605

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=10, a(4)=10, a(5)=22`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391929

/-- `a(n-1)` -/
def P9420849167608159605.Spec : Prop :=
  ∀ n, (P9420849167608159605.a n : ℤ) = A391929 n

theorem P9420849167608159605.correct : P9420849167608159605.Spec := by
  intro n
  simp only [A391929]

end A391929

/-!
# A391930: Irregular triangle T(n, k) = Sum_{i=1..n} (k mod prime(i))*A002110(i-1), with n >= 0, and 0 <= k < A002110(n), read by rows. Here A002110(n) is the n-th primorial number.

The programs for A391930, there is no canonical definition to state claims against.
-/

/-! ## A391930.P5623790680015573870

`A372576(A391933(n))`
-/

namespace A391930.P5623790680015573870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A391933 n).toNat

end

end A391930.P5623790680015573870

/-!
# A391933: Irregular triangle T(n, k) = Product_{i=1..n} prime(i)^(k mod prime(i)), with n >= 0, and 0 <= k < A002110(n), read by rows.

The programs for A391933, there is no canonical definition to state claims against.
-/

/-! ## A391933.P10465013791681368367

`A276086(A391930(n))`
-/

namespace A391933.P10465013791681368367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A391930 n).toNat

end

end A391933.P10465013791681368367

/-!
# A391936: a(n) = Sum_{i=1..A328404(n)} (A276086(n) mod prime(i))*A002110(i-1), where A276086 is the primorial base exp-function, and A328404(n) gives the length of A276086(n) in primorial base representation.

The programs for A391936, there is no canonical definition to state claims against.
-/

/-! ## A391936.P10178395136109041373

`∑{#}[A328404(n)-1, A276086(n)%A000040(#+1)*A002110(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391936.P10178395136109041373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Int.tmod (A276086 n) (A000040 (k + 1)) * A002110 k

end

end A391936.P10178395136109041373

/-! ## A391936.P13590314438567745561

`∑{#}[A328404(n)-1, A276086(n)%A000040(#+1)*A002110(#+1-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391936.P13590314438567745561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Int.tmod (A276086 n) (A000040 (k + 1)) * A002110 (k + 1 - 1)

end

end A391936.P13590314438567745561

/-!
# A391937: Numbers k such that A276086(k) = A391936(k).

The programs for A391937, there is no canonical definition to state claims against.
-/

/-! ## A391937.P5211070648097006197

`eq[A276086(n), A391936(n)]`
-/

namespace A391937.P5211070648097006197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391936 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391937.P5211070648097006197

/-!
# A391938: Numbers k not divisible by p^p for any prime p, and for which A373842(k) >= k, where A373842 is the arithmetic derivative of the primorial base log-function.

The programs for A391938, there is no canonical definition to state claims against.
-/

/-! ## A391938.P2233088175507154711

`filter[A391927(n+1), A359550(#)]`
-/

namespace A391938.P2233088175507154711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A391938.P2233088175507154711

/-! ## A391938.P9837876791755648118

`∩[A048103(n+1), A391927(n+1)]`
-/

namespace A391938.P9837876791755648118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391938.P9837876791755648118

/-! ## A391938.P7229708171919060294

`∩[A276078(n+1), A391927(n+1)]`
-/

namespace A391938.P7229708171919060294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391938.P7229708171919060294

/-! ## A391938.P17229078508448628031

`∩[A390361(n+1), A391927(n+1)]`
-/

namespace A391938.P17229078508448628031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391938.P17229078508448628031

/-! ## A391938.P1339011835590631424

`∩[A387181(n+1), A391927(n+1)]`
-/

namespace A391938.P1339011835590631424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391938.P1339011835590631424

/-! ## A391938.P12568979843696415158

`∩[A171948(n+1), A391927(n+1)]`
-/

namespace A391938.P12568979843696415158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391938.P12568979843696415158

/-! ## A391938.P2742099280937011015

`∩[A337037(n+1), A391927(n+1)]`
-/

namespace A391938.P2742099280937011015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391938.P2742099280937011015

/-!
# A391939: Composite numbers k such that A003415(k) <= A276086(k), where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A391939, there is no canonical definition to state claims against.
-/

/-! ## A391939.P4751764950697013130

`lt[A327351(A074206(n)), A074206(n)]`
-/

namespace A391939.P4751764950697013130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327351 (A074206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391939.P4751764950697013130

/-! ## A391939.P17640774571668483284

`lt[A205810(A160974(n)), A003415(n)]`
-/

namespace A391939.P17640774571668483284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205810 (A160974 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391939.P17640774571668483284

/-! ## A391939.P8905200764041911869

`lt[A083582(A058348(n)), A003415(n)]`
-/

namespace A391939.P8905200764041911869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 (A058348 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391939.P8905200764041911869

/-! ## A391939.P8395773310596502257

`lt[A185215(n), A139250(A003415(n))]`
-/

namespace A391939.P8395773310596502257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391939.P8395773310596502257

/-! ## A391939.P11613868553476403651

`A124762(A293724(n))+A002808(n+1)`
-/

namespace A391939.P11613868553476403651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A293724 n).toNat + A002808 (n + 1)

end

end A391939.P11613868553476403651

/-!
# A391944: Number of decimal digits of RSA numbers.

The programs for A391944, there is no canonical definition to state claims against.
-/

/-! ## A391944.P9793649918366633864

`A034887(A391943(n+1))`
-/

namespace A391944.P9793649918366633864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A391943 (n + 1)).toNat

end

end A391944.P9793649918366633864

/-!
# A391946: a(n) = A276085(n) mod 2310, where A276085 is the primorial base log-function.

The programs for A391946, there is no canonical definition to state claims against.
-/

/-! ## A391946.P10395544534051673053

`A276085(A392598(n+1))`
-/

namespace A391946.P10395544534051673053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A392598 (n + 1)).toNat

end

end A391946.P10395544534051673053

/-! ## A391946.P5278926489026228467

`A276085(n+1)%A026284(A202124(2*n+5))`
-/

namespace A391946.P5278926489026228467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A026284 (A202124 (2 * n + 5)).toNat)

end

end A391946.P5278926489026228467

/-! ## A391946.P6060782359939955683

`A015526(A008300(n))*A276085(n+1)`
-/

namespace A391946.P6060782359939955683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015526 (A008300 n).toNat * A276085 (n + 1)

end

end A391946.P6060782359939955683

/-! ## A391946.P1922345259304698324

`A276085(n+1)%A090580(A007774(n+5))`
-/

namespace A391946.P1922345259304698324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A090580 (A007774 (n + 5)).toNat)

end

end A391946.P1922345259304698324

/-! ## A391946.P5008673142770217378

`A276085(n+1)%A141214(2*n+3)`
-/

namespace A391946.P5008673142770217378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276085 (n + 1)) (A141214 (2 * n + 3))

end

end A391946.P5008673142770217378

/-!
# A391947: Numbers k such that A003415(k) == A276085(k) (mod 2310) and A003415(k+1) == A276085(k+1) (mod 2310), where A003415 is the arithmetic derivative and A276085 is the primorial base log-function.

The programs for A391947, there is no canonical definition to state claims against.
-/

/-! ## A391947.P13990200015307872475

`∩[A391864(n+1)-1, A391864(n+1)]`
-/

namespace A391947.P13990200015307872475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391947.P13990200015307872475

/-!
# A391948: Primes p such that f(p) is prime and f(f(p)) = p, where f(k) = 10 * (10^(floor(log_10(k)) + 1) - 1)/9 - k.

The programs for A391948, there is no canonical definition to state claims against.
-/

/-! ## A391948.P3408212127455697416

`∩[A089740(n+1), A206929(n+1)]`
-/

namespace A391948.P3408212127455697416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391948.P3408212127455697416

/-! ## A391948.P12018666117433390489

`∩[A089740(n+1), A277061(n+1)]`
-/

namespace A391948.P12018666117433390489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391948.P12018666117433390489

/-!
# A391955: Number of pairs of Dyck paths of length 2*n touching the axis at the same points.

The programs for A391955, there is no canonical definition to state claims against.
-/

/-! ## A391955.P10800905096591312598

`A095160(A396565(n))`
-/

namespace A391955.P10800905096591312598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095160 (A396565 n).toNat

end

end A391955.P10800905096591312598

/-! ## A391955.P8855937711370566839

`A099741(∑[A099716(n)])`
-/

namespace A391955.P8855937711370566839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391955.P8855937711370566839

/-!
# A391956: a(n) = 1/Product_{i = 1..n} w_i, where w_i is the i-th weight factor for Laguerre-Gauss quadrature of degree n.

The programs for A391956, there is no canonical definition to state claims against.
-/

/-! ## A391956.P3338449465646462048

`A001142(n)²*n!`
-/

namespace A391956.P3338449465646462048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n ^ 2 * (Nat.factorial n : ℤ)

end

end A391956.P3338449465646462048

/-! ## A391956.P602082215172716560

`A001142(n)²*A000142(n)`
-/

namespace A391956.P602082215172716560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001142 n ^ 2 * A000142 n

end

end A391956.P602082215172716560

/-!
# A391958: First column of A391957.

The programs for A391958, the canonical program `A391958.P4973106280450321391` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391958 has offset 0).

The definition of A391958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391958.P4973106280450321391

`A187059(n)+A187059(n)+A011371(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391958

/-- `A187059(n)+A187059(n)+A011371(n)` -/
def P4973106280450321391.Spec : Prop :=
  ∀ n, P4973106280450321391.a n = A391958 n

theorem P4973106280450321391.correct : P4973106280450321391.Spec := by
  intro n
  simp only [A391958]

end A391958

/-! ## A391958.P10855172647194403717

`A187059(2*n)-n`
-/

namespace A391958.P10855172647194403717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 (2 * n) - (n : ℤ)

end

end A391958.P10855172647194403717

namespace A391958

/-- `A187059(2*n)-n` -/
def P10855172647194403717.Spec : Prop :=
  ∀ n, P10855172647194403717.a n = A391958 n

end A391958

/-!
# A391960: a(n) = Sum_{k=0..floor(n/3)} (k+1) * 2^k * 3^(n-3*k) * binomial(k,2*(n-3*k)).

The programs for A391960, the canonical program `A391960.P17236783854700114957` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391960 has offset 0).

The definition of A391960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391960.P17236783854700114957

`ogf((1-4x^3+4x^6+12x^7)/(1-8x^3+24x^6-24x^7-32x^9+96x^10+16x^12-96x^13+144x^14))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391960

/-- `ogf((1-4x^3+4x^6+12x^7)/(1-8x^3+24x^6-24x^7-32x^9+96x^10+16x^12-96x^13+144x^14))` -/
def P17236783854700114957.Spec : Prop :=
  ∀ n, P17236783854700114957.a n = A391960 n

theorem P17236783854700114957.correct : P17236783854700114957.Spec := by
  intro n
  simp only [A391960]

end A391960

/-! ## A391960.P16418868995171988047

`∑{#}[floor(n/3), (#+1)*2^#*3^(n-3*#)*C(#, 2*(n-3*#))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391960.P16418868995171988047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((k + 1) * 2 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose k (2 * ((n : ℤ) - (3 * k : ℤ))).toNat : ℚ)

end

end A391960.P16418868995171988047

namespace A391960

/-- `∑{#}[floor(n/3), (#+1)*2^#*3^(n-3*#)*C(#, 2*(n-3*#))]` -/
def P16418868995171988047.Spec : Prop :=
  ∀ n, P16418868995171988047.a n = (A391960 n : ℚ)

end A391960

/-! ## A391960.P16477104231815321753

`A390765(A169942(2*(n+2)))*A390775(n)`
-/

namespace A391960.P16477104231815321753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A169942 (2 * (n + 2))).toNat * A390775 n

end

end A391960.P16477104231815321753

namespace A391960

/-- `A390765(A169942(2*(n+2)))*A390775(n)` -/
def P16477104231815321753.Spec : Prop :=
  ∀ n, P16477104231815321753.a n = A391960 n

end A391960

/-! ## A391960.P14683072218069135539

`A390765(A000079(n))*A390775(n)`
-/

namespace A391960.P14683072218069135539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A000079 n).toNat * A390775 n

end

end A391960.P14683072218069135539

namespace A391960

/-- `A390765(A000079(n))*A390775(n)` -/
def P14683072218069135539.Spec : Prop :=
  ∀ n, P14683072218069135539.a n = A391960 n

end A391960

/-! ## A391960.P17683935030747229803

`A390765(A000225(n))*A390775(n)`
-/

namespace A391960.P17683935030747229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A000225 n).toNat * A390775 n

end

end A391960.P17683935030747229803

namespace A391960

/-- `A390765(A000225(n))*A390775(n)` -/
def P17683935030747229803.Spec : Prop :=
  ∀ n, P17683935030747229803.a n = A391960 n

end A391960

/-!
# A391961: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k+6,6) * binomial(k,2*(n-3*k)).

The programs for A391961, the canonical program `A391961.P8303945704842500307` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391961 has offset 0).

The definition of A391961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391961.P8303945704842500307

`∑{#}[floor(n/3), 2^#*3^(n-3*#)*C(#+6, 6)*C(#, 2*(n-3*#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391961

/-- `∑{#}[floor(n/3), 2^#*3^(n-3*#)*C(#+6, 6)*C(#, 2*(n-3*#))]` -/
def P8303945704842500307.Spec : Prop :=
  ∀ n, P8303945704842500307.a n = (A391961 n : ℚ)

end A391961

/-! ## A391961.P2338028942773333800

`A238762(A153243(n))`
-/

namespace A391961.P2338028942773333800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238762 (A153243 n).toNat

end

end A391961.P2338028942773333800

namespace A391961

/-- `A238762(A153243(n))` -/
def P2338028942773333800.Spec : Prop :=
  ∀ n, P2338028942773333800.a n = A391961 n

end A391961

/-! ## A391961.P12196729377789923178

`A028698(A221568(n+1))`
-/

namespace A391961.P12196729377789923178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028698 (A221568 (n + 1)).toNat

end

end A391961.P12196729377789923178

namespace A391961

/-- `A028698(A221568(n+1))` -/
def P12196729377789923178.Spec : Prop :=
  ∀ n, P12196729377789923178.a n = A391961 n

end A391961

/-!
# A391962: a(n) = Sum_{k=0..n} (k+1) * binomial(k,2*(n-k)).

The programs for A391962, the canonical program `A391962.P668040933864315622` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391962 has offset 0).

The definition of A391962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*C(#, 2*(n-#))]` (program `A391962.P668040933864315622`, by `A391962.P668040933864315622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391962.P6130452067181438181

`ogf((1-2x+x^2+x^3)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))`
-/

namespace A391962.P6130452067181438181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, 1] [1, -4, 6, -6, 5, -2, 1] n

end

end A391962.P6130452067181438181

namespace A391962

/-- `ogf((1-2x+x^2+x^3)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))` -/
def P6130452067181438181.Spec : Prop :=
  ∀ n, P6130452067181438181.a n = A391962 n

end A391962

/-! ## A391962.P668040933864315622

`∑{#}[n, (#+1)*C(#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391962

/-- `∑{#}[n, (#+1)*C(#, 2*(n-#))]` -/
def P668040933864315622.Spec : Prop :=
  ∀ n, (P668040933864315622.a n : ℤ) = A391962 n

theorem P668040933864315622.correct : P668040933864315622.Spec := by
  intro n
  simp only [A391962]

end A391962

/-! ## A391962.P2553170299100446233

`A228577(Δ[n²])`
-/

namespace A391962.P2553170299100446233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A391962.P2553170299100446233

namespace A391962

/-- `A228577(Δ[n²])` -/
def P2553170299100446233.Spec : Prop :=
  ∀ n, P2553170299100446233.a n = A391962 n

end A391962

/-! ## A391962.P5827514462609521088

`record[A228577((n+1)/gcd(4, n+1))]`
-/

namespace A391962.P5827514462609521088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 4 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391962.P5827514462609521088

namespace A391962

/-- `record[A228577((n+1)/gcd(4, n+1))]` -/
def P5827514462609521088.Spec : Prop :=
  ∀ n, P5827514462609521088.a n = A391962 n

end A391962

/-! ## A391962.P7818100442953331050

`A118430(n)+A079662(n+1)`
-/

namespace A391962.P7818100442953331050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n + A079662 (n + 1)

end

end A391962.P7818100442953331050

namespace A391962

/-- `A118430(n)+A079662(n+1)` -/
def P7818100442953331050.Spec : Prop :=
  ∀ n, P7818100442953331050.a n = A391962 n

end A391962

/-! ## A391962.P17592218815018736238

`A118430(n)+A118430(n)+A005314(n+1)`
-/

namespace A391962.P17592218815018736238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n + (A118430 n + A005314 (n + 1))

end

end A391962.P17592218815018736238

namespace A391962

/-- `A118430(n)+A118430(n)+A005314(n+1)` -/
def P17592218815018736238.Spec : Prop :=
  ∀ n, P17592218815018736238.a n = A391962 n

end A391962

/-! ## A391962.P9496160207874929881

`A104578(A130883(n+1))`
-/

namespace A391962.P9496160207874929881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A130883 (n + 1)).toNat

end

end A391962.P9496160207874929881

namespace A391962

/-- `A104578(A130883(n+1))` -/
def P9496160207874929881.Spec : Prop :=
  ∀ n, P9496160207874929881.a n = A391962 n

end A391962

/-! ## A391962.P11083086919203484656

`A104578(A002378(n+1)+n²)`
-/

namespace A391962.P11083086919203484656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A002378 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A391962.P11083086919203484656

namespace A391962

/-- `A104578(A002378(n+1)+n²)` -/
def P11083086919203484656.Spec : Prop :=
  ∀ n, P11083086919203484656.a n = A391962 n

end A391962

/-! ## A391962.P14981976035270938453

`A104578(A000217(2*n+1)+1)`
-/

namespace A391962.P14981976035270938453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A000217 (2 * n + 1) + 1).toNat

end

end A391962.P14981976035270938453

namespace A391962

/-- `A104578(A000217(2*n+1)+1)` -/
def P14981976035270938453.Spec : Prop :=
  ∀ n, P14981976035270938453.a n = A391962 n

end A391962

/-! ## A391962.P12127971971199313015

`A104578(A084849(n)+2*n+1)`
-/

namespace A391962.P12127971971199313015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A084849 n + (2 * n + 1 : ℤ)).toNat

end

end A391962.P12127971971199313015

namespace A391962

/-- `A104578(A084849(n)+2*n+1)` -/
def P12127971971199313015.Spec : Prop :=
  ∀ n, P12127971971199313015.a n = A391962 n

end A391962

/-!
# A391963: a(n) = Sum_{k=0..n} binomial(k+2,2) * binomial(k,2*(n-k)).

The programs for A391963, the canonical program `A391963.P1030082150204164774` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391963 has offset 0).

The definition of A391963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+2, 2)*C(#, 2*(n-#))]` (program `A391963.P1030082150204164774`, by `A391963.P1030082150204164774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391963.P8179560390372404628

`ogf((1-3x+3x^2+2x^3-3x^4)/(1-6x+15x^2-23x^3+27x^4-24x^5+16x^6-9x^7+3x^8-x^9))`
-/

namespace A391963.P8179560390372404628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, 2, -3] [1, -6, 15, -23, 27, -24, 16, -9, 3, -1] n

end

end A391963.P8179560390372404628

namespace A391963

/-- `ogf((1-3x+3x^2+2x^3-3x^4)/(1-6x+15x^2-23x^3+27x^4-24x^5+16x^6-9x^7+3x^8-x^9))` -/
def P8179560390372404628.Spec : Prop :=
  ∀ n, P8179560390372404628.a n = A391963 n

end A391963

/-! ## A391963.P1030082150204164774

`∑{#}[n, C(#+2, 2)*C(#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391963

/-- `∑{#}[n, C(#+2, 2)*C(#, 2*(n-#))]` -/
def P1030082150204164774.Spec : Prop :=
  ∀ n, (P1030082150204164774.a n : ℤ) = A391963 n

theorem P1030082150204164774.correct : P1030082150204164774.Spec := by
  intro n
  simp only [A391963]

end A391963

/-! ## A391963.P16971921050983608055

`A104578(A096376(n+1))`
-/

namespace A391963.P16971921050983608055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A096376 (n + 1)).toNat

end

end A391963.P16971921050983608055

namespace A391963

/-- `A104578(A096376(n+1))` -/
def P16971921050983608055.Spec : Prop :=
  ∀ n, P16971921050983608055.a n = A391963 n

end A391963

/-! ## A391963.P18161059325956292581

`A104578(A084849(n+1)+1)`
-/

namespace A391963.P18161059325956292581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A084849 (n + 1) + 1).toNat

end

end A391963.P18161059325956292581

namespace A391963

/-- `A104578(A084849(n+1)+1)` -/
def P18161059325956292581.Spec : Prop :=
  ∀ n, P18161059325956292581.a n = A391963 n

end A391963

/-! ## A391963.P2084160661845745503

`A104578(A104563(2*n+3)-n)`
-/

namespace A391963.P2084160661845745503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A104563 (2 * n + 3) - (n : ℤ)).toNat

end

end A391963.P2084160661845745503

namespace A391963

/-- `A104578(A104563(2*n+3)-n)` -/
def P2084160661845745503.Spec : Prop :=
  ∀ n, P2084160661845745503.a n = A391963 n

end A391963

/-!
# A391964: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(k,2*(n-k)).

The programs for A391964, the canonical program `A391964.P3117474030584771283` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391964 has offset 0).

The definition of A391964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (#+1)*2^#*C(#, 2*(n-#))]` (program `A391964.P3117474030584771283`, by `A391964.P3117474030584771283.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391964.P3117474030584771283

`∑{#}[n, (#+1)*2^#*C(#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391964

/-- `∑{#}[n, (#+1)*2^#*C(#, 2*(n-#))]` -/
def P3117474030584771283.Spec : Prop :=
  ∀ n, (P3117474030584771283.a n : ℤ) = A391964 n

theorem P3117474030584771283.correct : P3117474030584771283.Spec := by
  intro n
  simp only [A391964]

end A391964

/-! ## A391964.P13349510848601045747

`ogf((1-4x+4x^2+4x^3)/(1-8x+24x^2-40x^3+48x^4-32x^5+16x^6))`
-/

namespace A391964.P13349510848601045747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4, 4] [1, -8, 24, -40, 48, -32, 16] n

end

end A391964.P13349510848601045747

namespace A391964

/-- `ogf((1-4x+4x^2+4x^3)/(1-8x+24x^2-40x^3+48x^4-32x^5+16x^6))` -/
def P13349510848601045747.Spec : Prop :=
  ∀ n, P13349510848601045747.a n = A391964 n

end A391964

/-!
# A391965: a(n) = Sum_{k=0..n} 2^k * binomial(k+2,2) * binomial(k,2*(n-k)).

The programs for A391965, the canonical program `A391965.P9998700142305102184` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391965 has offset 0).

The definition of A391965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 2^#*C(#+2, 2)*C(#, 2*(n-#))]` (program `A391965.P9998700142305102184`, by `A391965.P9998700142305102184.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391965.P9998700142305102184

`∑{#}[n, 2^#*C(#+2, 2)*C(#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391965

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(#, 2*(n-#))]` -/
def P9998700142305102184.Spec : Prop :=
  ∀ n, (P9998700142305102184.a n : ℤ) = A391965 n

theorem P9998700142305102184.correct : P9998700142305102184.Spec := by
  intro n
  simp only [A391965]

end A391965

/-!
# A391966: Smallest integer k greater than 1 such that every solution of y^m = y (for all integers m > 1) in the commutative ring of n-adic integers is also a solution of y^k = y.

The programs for A391966, there is no canonical definition to state claims against.
-/

/-! ## A391966.P15253471555315889556

`lcm(2, A173614(n+2))+1`
-/

namespace A391966.P15253471555315889556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A173614 (n + 2)) + 1

end

end A391966.P15253471555315889556

/-! ## A391966.P14095114312721489954

`A173614(3*(n+2))+1`
-/

namespace A391966.P14095114312721489954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173614 (3 * (n + 2)) + 1

end

end A391966.P14095114312721489954

/-!
# A391968: Numbers divisible by at least 2 cubes greater than 1.

The programs for A391968, there is no canonical definition to state claims against.
-/

/-! ## A391968.P5768331732159236912

`A250248(A391506(n+1))`
-/

namespace A391968.P5768331732159236912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A391506 (n + 1)).toNat

end

end A391968.P5768331732159236912

/-! ## A391968.P1839000575317871154

`A000688(A002496(n+1))*A391506(n+1)`
-/

namespace A391968.P1839000575317871154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A002496 (n + 1)).toNat * A391506 (n + 1)

end

end A391968.P1839000575317871154

/-! ## A391968.P14363575576020879504

`A257000(A005234(n+1))*A391506(n+1)`
-/

namespace A391968.P14363575576020879504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A005234 (n + 1)).toNat * A391506 (n + 1)

end

end A391968.P14363575576020879504

/-! ## A391968.P5159859273971895718

`A289748(A349132(n+5))*A391506(n+1)`
-/

namespace A391968.P5159859273971895718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289748 (A349132 (n + 5)).toNat * A391506 (n + 1)

end

end A391968.P5159859273971895718

/-! ## A391968.P4544387603954540957

`A391506(n+1)%A391512(A000045(n+2))`
-/

namespace A391968.P4544387603954540957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391506 (n + 1)) (A391512 (A000045 (n + 2)).toNat)

end

end A391968.P4544387603954540957

/-!
# A391969: Number of quotients of the lattice of alternating sign matrices of size n isomorphic to the lattice of Dyck paths of length 2*n.

The programs for A391969, there is no canonical definition to state claims against.
-/

/-! ## A391969.P7043159126665068814

`A065371(A002359(n))`
-/

namespace A391969.P7043159126665068814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065371 (A002359 n).toNat

end

end A391969.P7043159126665068814

/-! ## A391969.P9725680055447369806

`A325391(∑[A052980(n)])`
-/

namespace A391969.P9725680055447369806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A391969.P9725680055447369806

/-!
# A391970: Numbers m such that the product m*(m+1) has a set of prime divisors, from greatest down to 2, that is missing exactly two prime divisors.

The programs for A391970, there is no canonical definition to state claims against.
-/

/-! ## A391970.P15808140365479061271

`eq[2, A391449(n+1)]+1`
-/

namespace A391970.P15808140365479061271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A391970.P15808140365479061271

/-!
# A391973: Number of self-dual Catalan triangles of size 2*n+1.

The programs for A391973, there is no canonical definition to state claims against.
-/

/-! ## A391973.P8257407478149200236

`A030108(2^∑{e}[n+1, #]*A174486(n))`
-/

namespace A391973.P8257407478149200236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) * A174486 n).toNat

end

end A391973.P8257407478149200236

/-!
# A391975: Number of irredundant sets in the n-triangular honeycomb bishop graph.

The programs for A391975, there is no canonical definition to state claims against.
-/

/-! ## A391975.P7077810933413026621

`A054886(n)+A051176(A090018(n))`
-/

namespace A391975.P7077810933413026621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 n + A051176 (A090018 n).toNat

end

end A391975.P7077810933413026621

/-!
# A391977: Maximum value computed by any of the 4096 Wolfram 2-state 2-symbol Turing machines when started with n on the tape.

The programs for A391977, there is no canonical definition to state claims against.
-/

/-! ## A391977.P10198291126607175436

`A000203(2^A393376(n+1))`
-/

namespace A391977.P10198291126607175436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A393376 (n + 1) : ℤ))).toNat

end

end A391977.P10198291126607175436

/-! ## A391977.P15982054765448942994

`A393189(A036563(A393376(n+1)))`
-/

namespace A391977.P15982054765448942994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393189 (A036563 (A393376 (n + 1)).toNat).toNat

end

end A391977.P15982054765448942994

/-!
# A391978: a(n) = 2*n*binomial(n, 4).

The programs for A391978, the canonical program `A391978.P13048129619013983909` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391978 has offset 1).

The definition of A391978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*C(n+1, 4)` (program `A391978.P13048129619013983909`, by `A391978.P13048129619013983909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391978.P13048129619013983909

`2*(n+1)*C(n+1, 4)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391978

/-- `2*(n+1)*C(n+1, 4)` -/
def P13048129619013983909.Spec : Prop :=
  ∀ n, (P13048129619013983909.a n : ℤ) = A391978 (n + 1)

theorem P13048129619013983909.correct : P13048129619013983909.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel]

end A391978

/-! ## A391978.P4428817498712492837

`ogf((8x^3+2x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A391978.P4428817498712492837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 8, 2] [1, -6, 15, -20, 15, -6, 1] n

end

end A391978.P4428817498712492837

namespace A391978

/-- `ogf((8x^3+2x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4428817498712492837.Spec : Prop :=
  ∀ n, P4428817498712492837.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P8736973447581651753

`n*(n-1)*(n-2)*(n+1)²/12`
-/

namespace A391978.P8736973447581651753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n + 1) ^ 2 : ℤ) : ℚ) / 12

end

end A391978.P8736973447581651753

namespace A391978

/-- `n*(n-1)*(n-2)*(n+1)²/12` -/
def P8736973447581651753.Spec : Prop :=
  ∀ n, P8736973447581651753.a n = (A391978 (n + 1) : ℚ)

theorem P8736973447581651753.correct : P8736973447581651753.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel, A391978.P8736973447581651753.a, A391978.P13048129619013983909.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391978

/-! ## A391978.P16009011848373870373

`∑[n-1]*∑[C(n, 2)]`
-/

namespace A391978.P16009011848373870373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A391978.P16009011848373870373

namespace A391978

/-- `∑[n-1]*∑[C(n, 2)]` -/
def P16009011848373870373.Spec : Prop :=
  ∀ n, P16009011848373870373.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P17943854456369502010

`(n+1)²*C(n, 3)/2`
-/

namespace A391978.P17943854456369502010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * Nat.choose n 3 : ℚ) / 2

end

end A391978.P17943854456369502010

namespace A391978

/-- `(n+1)²*C(n, 3)/2` -/
def P17943854456369502010.Spec : Prop :=
  ∀ n, P17943854456369502010.a n = (A391978 (n + 1) : ℚ)

theorem P17943854456369502010.correct : P17943854456369502010.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel, A391978.P17943854456369502010.a, A391978.P13048129619013983909.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391978

/-! ## A391978.P6989020233178203289

`2*(n+1)*∑[C(n, 3)]`
-/

namespace A391978.P6989020233178203289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A391978.P6989020233178203289

namespace A391978

/-- `2*(n+1)*∑[C(n, 3)]` -/
def P6989020233178203289.Spec : Prop :=
  ∀ n, (P6989020233178203289.a n : ℤ) = A391978 (n + 1)

end A391978

/-! ## A391978.P10407957926246879217

`∑[a(n-1)+n-1]*∑[n-1]` with `a(0)=0`
-/

namespace A391978.P10407957926246879217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A391978.P10407957926246879217

namespace A391978

/-- `∑[a(n-1)+n-1]*∑[n-1]` -/
def P10407957926246879217.Spec : Prop :=
  ∀ n, P10407957926246879217.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P13328369125494249305

`∑[n-1]*∑[(n-1)²-a(n-1)]` with `a(0)=0`
-/

namespace A391978.P13328369125494249305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ((n : ℤ) - 1) ^ 2 - f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A391978.P13328369125494249305

namespace A391978

/-- `∑[n-1]*∑[(n-1)²-a(n-1)]` -/
def P13328369125494249305.Spec : Prop :=
  ∀ n, P13328369125494249305.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P13013437680094521120

`(n+1)*∑[A007290(n)]`
-/

namespace A391978.P13013437680094521120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391978.P13013437680094521120

namespace A391978

/-- `(n+1)*∑[A007290(n)]` -/
def P13013437680094521120.Spec : Prop :=
  ∀ n, P13013437680094521120.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P9430670394825233326

`A004302(n)-A185355(n+1)`
-/

namespace A391978.P9430670394825233326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 n - A185355 (n + 1)

end

end A391978.P9430670394825233326

namespace A391978

/-- `A004302(n)-A185355(n+1)` -/
def P9430670394825233326.Spec : Prop :=
  ∀ n, P9430670394825233326.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P14887833416790160681

`(A000127(n+1)-A000124(n))*A005843(n+1)`
-/

namespace A391978.P14887833416790160681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000127 (n + 1) - A000124 n) * A005843 (n + 1)

end

end A391978.P14887833416790160681

namespace A391978

/-- `(A000127(n+1)-A000124(n))*A005843(n+1)` -/
def P14887833416790160681.Spec : Prop :=
  ∀ n, P14887833416790160681.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P4341008834928160526

`(n+1)*A034827(n+1)`
-/

namespace A391978.P4341008834928160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034827 (n + 1)

end

end A391978.P4341008834928160526

namespace A391978

/-- `(n+1)*A034827(n+1)` -/
def P4341008834928160526.Spec : Prop :=
  ∀ n, P4341008834928160526.a n = A391978 (n + 1)

theorem P4341008834928160526.correct : P4341008834928160526.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel, A391978.P4341008834928160526.a, A391978.P13048129619013983909.a, A034827, A034827.P5779717595868083396.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391978

/-! ## A391978.P2940343795125461758

`2*(n+1)*A000332(n+1)`
-/

namespace A391978.P2940343795125461758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000332 (n + 1))

end

end A391978.P2940343795125461758

namespace A391978

/-- `2*(n+1)*A000332(n+1)` -/
def P2940343795125461758.Spec : Prop :=
  ∀ n, P2940343795125461758.a n = A391978 (n + 1)

theorem P2940343795125461758.correct : P2940343795125461758.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel, A391978.P2940343795125461758.a, A391978.P13048129619013983909.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391978

/-! ## A391978.P14873587278415417405

`A000332(n+1)*A005843(n+1)`
-/

namespace A391978.P14873587278415417405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A005843 (n + 1)

end

end A391978.P14873587278415417405

namespace A391978

/-- `A000332(n+1)*A005843(n+1)` -/
def P14873587278415417405.Spec : Prop :=
  ∀ n, P14873587278415417405.a n = A391978 (n + 1)

theorem P14873587278415417405.correct : P14873587278415417405.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel, A391978.P14873587278415417405.a, A391978.P13048129619013983909.a, A000332, A000332.P5946310388023661265.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391978

/-! ## A391978.P15966971083876233952

`2*A333320(2*(n+1))`
-/

namespace A391978.P15966971083876233952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333320 (2 * (n + 1))

end

end A391978.P15966971083876233952

namespace A391978

/-- `2*A333320(2*(n+1))` -/
def P15966971083876233952.Spec : Prop :=
  ∀ n, P15966971083876233952.a n = A391978 (n + 1)

end A391978

/-! ## A391978.P18173481228365742765

`2*A333321(2*(n+1))`
-/

namespace A391978.P18173481228365742765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333321 (2 * (n + 1))

end

end A391978.P18173481228365742765

namespace A391978

/-- `2*A333321(2*(n+1))` -/
def P18173481228365742765.Spec : Prop :=
  ∀ n, P18173481228365742765.a n = A391978 (n + 1)

end A391978

/-!
# A391980: Achilles numbers divisible by at least 2 cubes greater than 1.

The programs for A391980, there is no canonical definition to state claims against.
-/

/-! ## A391980.P2406132542839280754

`∩[A052486(n+1), A376936(n+1)]`
-/

namespace A391980.P2406132542839280754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391980.P2406132542839280754

/-! ## A391980.P10811738316117439229

`∩[A376936(n+1), A389753(n+1)]`
-/

namespace A391980.P10811738316117439229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391980.P10811738316117439229

/-! ## A391980.P13714442405411226595

`∩[A052486(n+1), A391968(n+1)]`
-/

namespace A391980.P13714442405411226595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391980.P13714442405411226595

/-! ## A391980.P5337438820791431607

`filter[A376936(n+1), A132350(#)]`
-/

namespace A391980.P5337438820791431607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A391980.P5337438820791431607

/-!
# A391981: Irregular triangle read by rows where row n lists the trimmed zero-based partial alternating sums of the prime indices of n.

The programs for A391981, there is no canonical definition to state claims against.
-/

/-! ## A391981.P6761275328664877575

`A344616(A265110(n+2))`
-/

namespace A391981.P6761275328664877575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A265110 (n + 2)).toNat

end

end A391981.P6761275328664877575

/-! ## A391981.P16455593614687383461

`and(A358136(n+2), A381824(A373961(n+1)))`
-/

namespace A391981.P16455593614687383461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A358136 (n + 2)) (A381824 (A373961 (n + 1)).toNat)

end

end A391981.P16455593614687383461

/-!
# A391982: Irregular triangle read by rows where row n lists the trimmed zero-based partial alternating sums of the reversed prime indices of n.

The programs for A391982, there is no canonical definition to state claims against.
-/

/-! ## A391982.P8427212736183523430

`A316524(A285904(n+2))`
-/

namespace A391982.P8427212736183523430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A285904 (n + 2)).toNat

end

end A391982.P8427212736183523430

/-!
# A391983: Irregular triangle read by rows where row n lists the trimmed zero-based partial alternating sums of the n-th composition in standard order.

The programs for A391983, there is no canonical definition to state claims against.
-/

/-! ## A391983.P2881521625095469019

`A389733(n+1)+A010815(A304079(2*n+3))`
-/

namespace A391983.P2881521625095469019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389733 (n + 1) + A010815 (A304079 (2 * n + 3)).toNat

end

end A391983.P2881521625095469019

/-! ## A391983.P9380529995946243658

`or(A001899(A157149(n)), A389733(n+1))`
-/

namespace A391983.P9380529995946243658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001899 (A157149 n).toNat) (A389733 (n + 1))

end

end A391983.P9380529995946243658

/-! ## A391983.P15726230238550143273

`A389733(n+1)+A115861(A267392(n+1))`
-/

namespace A391983.P15726230238550143273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389733 (n + 1) + A115861 (A267392 (n + 1)).toNat

end

end A391983.P15726230238550143273

/-! ## A391983.P10293712342322826275

`A389733(n+1)+A333248(A351010(3*(n+1)))`
-/

namespace A391983.P10293712342322826275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389733 (n + 1) + A333248 (A351010 (3 * (n + 1))).toNat

end

end A391983.P10293712342322826275

/-! ## A391983.P8871082641477732871

`A389733(n+1)+A374017(A024495(n))`
-/

namespace A391983.P8871082641477732871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389733 (n + 1) + A374017 (A024495 n).toNat

end

end A391983.P8871082641477732871

/-!
# A391985: a(n) = Sum_{k=0..floor(n/4)} (k+1) * 2^k * 3^(n-3*k) * binomial(n-2*k,k) * binomial(n-3*k,k).

The programs for A391985, there is no canonical definition to state claims against.
-/

/-! ## A391985.P9871186152541082756

`A256388(A101163(n))`
-/

namespace A391985.P9871186152541082756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256388 (A101163 n).toNat

end

end A391985.P9871186152541082756

/-! ## A391985.P3102673338169929946

`A334032(A002805(n+1))+A001861(n)`
-/

namespace A391985.P3102673338169929946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A002805 (n + 1)).toNat + A001861 n

end

end A391985.P3102673338169929946

/-!
# A391986: a(n) = Sum_{k=0..floor(n/4)} 2^k * 3^(n-3*k) * binomial(k+2,2) * binomial(n-2*k,k) * binomial(n-3*k,k).

The programs for A391986, there is no canonical definition to state claims against.
-/

/-! ## A391986.P13347613317792776615

`A346969(A154322(n))`
-/

namespace A391986.P13347613317792776615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346969 (A154322 n).toNat

end

end A391986.P13347613317792776615

/-! ## A391986.P8492188469033209957

`∏{p}[A002030(n), A391570(#)]`
-/

namespace A391986.P8492188469033209957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A391570 p

end

end A391986.P8492188469033209957

/-!
# A391987: Decimal expansion of (7*sqrt(5)-5)/22.

The programs for A391987, there is no canonical definition to state claims against.
-/

/-! ## A391987.P13819239994088316525

`9-A396202(n)`
-/

namespace A391987.P13819239994088316525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A396202 n

end

end A391987.P13819239994088316525

/-!
# A391988: The number of exponential divisors of the exponentially squarefree numbers.

The programs for A391988, the canonical program `A391988.P2363059144124611115` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391988 has offset 1).

The definition of A391988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A209061, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391988.P2363059144124611115

`A049419(A209061(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391988

/-- `A049419(A209061(n+1))` -/
def P2363059144124611115.Spec : Prop :=
  ∀ n, P2363059144124611115.a n = A391988 (n + 1)

theorem P2363059144124611115.correct : P2363059144124611115.Spec := by
  intro n
  simp only [A391988, Nat.add_sub_cancel]

end A391988

/-! ## A391988.P13289875295190217579

`A278908(record[A365683(1+n)])`
-/

namespace A391988.P13289875295190217579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365683 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A391988.P13289875295190217579

namespace A391988

/-- `A278908(record[A365683(1+n)])` -/
def P13289875295190217579.Spec : Prop :=
  ∀ n, P13289875295190217579.a n = A391988 (n + 1)

end A391988

/-! ## A391988.P2348611528697325042

`A278908(A209061(2*n+1-n))`
-/

namespace A391988.P2348611528697325042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A209061 (2 * n + 1 - n)).toNat

end

end A391988.P2348611528697325042

namespace A391988

/-- `A278908(A209061(2*n+1-n))` -/
def P2348611528697325042.Spec : Prop :=
  ∀ n, P2348611528697325042.a n = A391988 (n + 1)

end A391988

/-!
# A391989: The difference between the number of exponential divisors and the number of exponential unitary divisors for numbers that are not exponentially squarefree.

The programs for A391989, there is no canonical definition to state claims against.
-/

/-! ## A391989.P6110167778232670407

`A049419(A130897(n+1))-A278908(A130897(n+1))`
-/

namespace A391989.P6110167778232670407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A130897 (n + 1)).toNat - A278908 (A130897 (n + 1)).toNat

end

end A391989.P6110167778232670407

/-! ## A391989.P10629054766119912385

`gcd(A064975(n+1), A177862(n))`
-/

namespace A391989.P10629054766119912385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064975 (n + 1)) (A177862 n)

end

end A391989.P10629054766119912385

/-! ## A391989.P17427558693538082862

`A000002(A003586(2*n+3)*A335489(n+1)+1)`
-/

namespace A391989.P17427558693538082862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A003586 (2 * n + 3) * A335489 (n + 1) + 1).toNat

end

end A391989.P17427558693538082862

/-! ## A391989.P14544049802468640201

`gcd(A040965(n), A083613(n+1))`
-/

namespace A391989.P14544049802468640201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040965 n) (A083613 (n + 1))

end

end A391989.P14544049802468640201

/-! ## A391989.P17131262893997180609

`gcd(A001285(n+3), A286491(A301841(n+3)))`
-/

namespace A391989.P17131262893997180609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001285 (n + 3)) (A286491 (A301841 (n + 3)).toNat)

end

end A391989.P17131262893997180609

/-!
# A391990: a(n) = Sum_{k=0..floor(n/2)} (k+1) * binomial(n,k) * binomial(n-k,k).

The programs for A391990, the canonical program `A391990.P13758990275710216917` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391990 has offset 0).

The definition of A391990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), (#+1)*C(n, #)*C(n-#, #)]` (program `A391990.P13758990275710216917`, by `A391990.P13758990275710216917.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391990.P13758990275710216917

`∑{#}[floor(n/2), (#+1)*C(n, #)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391990

/-- `∑{#}[floor(n/2), (#+1)*C(n, #)*C(n-#, #)]` -/
def P13758990275710216917.Spec : Prop :=
  ∀ n, (P13758990275710216917.a n : ℤ) = A391990 n

theorem P13758990275710216917.correct : P13758990275710216917.Spec := by
  intro n
  simp only [A391990]

end A391990

/-! ## A391990.P7637229657384781661

`A163865(n)-A372342(n)`
-/

namespace A391990.P7637229657384781661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 n - A372342 n

end

end A391990.P7637229657384781661

namespace A391990

/-- `A163865(n)-A372342(n)` -/
def P7637229657384781661.Spec : Prop :=
  ∀ n, P7637229657384781661.a n = A391990 n

end A391990

/-! ## A391990.P13696843478716908294

`A109188(n+1)-A132894(n)`
-/

namespace A391990.P13696843478716908294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109188 (n + 1) - A132894 n

end

end A391990.P13696843478716908294

namespace A391990

/-- `A109188(n+1)-A132894(n)` -/
def P13696843478716908294.Spec : Prop :=
  ∀ n, P13696843478716908294.a n = A391990 n

end A391990

/-!
# A391991: Triangle read by rows: T(n,k) = number of digits in decimal representation of binomial(n,k), 0<=k<=n.

The programs for A391991, the canonical program `A391991.P1337276639088855244` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391991 has offset 0).

The definition of A391991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A391991

/-- `A055642(A007318(n))` -/
def P1337276639088855244.Spec : Prop :=
  ∀ n, P1337276639088855244.a n = A391991 n

theorem P1337276639088855244.correct : P1337276639088855244.Spec := by
  intro n
  simp only [A391991]

end A391991

/-! ## A391991.P9511302162396869527

`∑{digits}[A007318(n), C(#, #)]`
-/

namespace A391991.P9511302162396869527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x x).sum

end

end A391991.P9511302162396869527

namespace A391991

/-- `∑{digits}[A007318(n), C(#, #)]` -/
def P9511302162396869527.Spec : Prop :=
  ∀ n, (P9511302162396869527.a n : ℤ) = A391991 n

end A391991

/-! ## A391991.P9753353049609755789

`∑{digits}[T(n-1,k)-T(n-1,k-1), A055642(#)]` with `a(0)=1`
-/

namespace A391991.P9753353049609755789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n - SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A391991.P9753353049609755789

namespace A391991

/-- `∑{digits}[T(n-1,k)-T(n-1,k-1), A055642(#)]` -/
def P9753353049609755789.Spec : Prop :=
  ∀ n, P9753353049609755789.a n = A391991 n

end A391991

/-! ## A391991.P5414579205952530349

`∑{digits}[A007318(n), A083311(#)]`
-/

namespace A391991.P5414579205952530349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A083311 x).sum

end

end A391991.P5414579205952530349

namespace A391991

/-- `∑{digits}[A007318(n), A083311(#)]` -/
def P5414579205952530349.Spec : Prop :=
  ∀ n, P5414579205952530349.a n = A391991 n

end A391991

/-! ## A391991.P3602483740610664403

`∑{digits}[A007318(n), A114295(#)]`
-/

namespace A391991.P3602483740610664403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A114295 x).sum

end

end A391991.P3602483740610664403

namespace A391991

/-- `∑{digits}[A007318(n), A114295(#)]` -/
def P3602483740610664403.Spec : Prop :=
  ∀ n, P3602483740610664403.a n = A391991 n

end A391991

/-! ## A391991.P14043309093819942152

`∑{digits}[A007318(n), A124389(#)]`
-/

namespace A391991.P14043309093819942152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A124389 x).sum

end

end A391991.P14043309093819942152

namespace A391991

/-- `∑{digits}[A007318(n), A124389(#)]` -/
def P14043309093819942152.Spec : Prop :=
  ∀ n, P14043309093819942152.a n = A391991 n

end A391991

/-! ## A391991.P10509981410747459926

`∑{digits}[A007318(n), A138902(#)]`
-/

namespace A391991.P10509981410747459926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A138902 x).sum

end

end A391991.P10509981410747459926

namespace A391991

/-- `∑{digits}[A007318(n), A138902(#)]` -/
def P10509981410747459926.Spec : Prop :=
  ∀ n, P10509981410747459926.a n = A391991 n

end A391991

/-! ## A391991.P229708172055864215

`∑{digits}[A007318(n), A178788(#)]`
-/

namespace A391991.P229708172055864215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178788 x).sum

end

end A391991.P229708172055864215

namespace A391991

/-- `∑{digits}[A007318(n), A178788(#)]` -/
def P229708172055864215.Spec : Prop :=
  ∀ n, P229708172055864215.a n = A391991 n

end A391991

/-! ## A391991.P62529063773931788

`∑{digits}[A007318(n), A186028(#)]`
-/

namespace A391991.P62529063773931788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186028 x).sum

end

end A391991.P62529063773931788

namespace A391991

/-- `∑{digits}[A007318(n), A186028(#)]` -/
def P62529063773931788.Spec : Prop :=
  ∀ n, P62529063773931788.a n = A391991 n

end A391991

/-! ## A391991.P18324858228516345909

`∑{digits}[A007318(n), A202022(#)]`
-/

namespace A391991.P18324858228516345909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A202022 x).sum

end

end A391991.P18324858228516345909

namespace A391991

/-- `∑{digits}[A007318(n), A202022(#)]` -/
def P18324858228516345909.Spec : Prop :=
  ∀ n, P18324858228516345909.a n = A391991 n

end A391991

/-! ## A391991.P7542136116732555594

`∑{digits}[A130595(n), A227690(#)]`
-/

namespace A391991.P7542136116732555594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A227690 x).sum

end

end A391991.P7542136116732555594

namespace A391991

/-- `∑{digits}[A130595(n), A227690(#)]` -/
def P7542136116732555594.Spec : Prop :=
  ∀ n, P7542136116732555594.a n = A391991 n

end A391991

/-! ## A391991.P7483586301264234429

`A055642(A055894(n))`
-/

namespace A391991.P7483586301264234429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055894 n).toNat

end

end A391991.P7483586301264234429

namespace A391991

/-- `A055642(A055894(n))` -/
def P7483586301264234429.Spec : Prop :=
  ∀ n, P7483586301264234429.a n = A391991 n

end A391991

/-! ## A391991.P14602977898321832445

`A055642(abs(A117440(n)))`
-/

namespace A391991.P14602977898321832445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 |A117440 n|.toNat

end

end A391991.P14602977898321832445

namespace A391991

/-- `A055642(abs(A117440(n)))` -/
def P14602977898321832445.Spec : Prop :=
  ∀ n, P14602977898321832445.a n = A391991 n

end A391991

/-! ## A391991.P2394072362512295603

`A055642(A014473(n)+1)`
-/

namespace A391991.P2394072362512295603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A014473 n + 1).toNat

end

end A391991.P2394072362512295603

namespace A391991

/-- `A055642(A014473(n)+1)` -/
def P2394072362512295603.Spec : Prop :=
  ∀ n, P2394072362512295603.a n = A391991 n

end A391991

/-! ## A391991.P18023120032390642948

`A160093(A007318(n)+1)`
-/

namespace A391991.P18023120032390642948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A007318 n + 1).toNat

end

end A391991.P18023120032390642948

namespace A391991

/-- `A160093(A007318(n)+1)` -/
def P18023120032390642948.Spec : Prop :=
  ∀ n, P18023120032390642948.a n = A391991 n

end A391991

/-! ## A391991.P7748097325350910800

`A055642(A028326(n)/2)`
-/

namespace A391991.P7748097325350910800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A028326 n : ℚ) / 2)).toNat

end

end A391991.P7748097325350910800

namespace A391991

/-- `A055642(A028326(n)/2)` -/
def P7748097325350910800.Spec : Prop :=
  ∀ n, P7748097325350910800.a n = A391991 n

end A391991

/-! ## A391991.P13651666963800980960

`A055642(gcd(A038207(n), A038243(n)))`
-/

namespace A391991.P13651666963800980960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.gcd (A038207 n) (A038243 n))

end

end A391991.P13651666963800980960

namespace A391991

/-- `A055642(gcd(A038207(n), A038243(n)))` -/
def P13651666963800980960.Spec : Prop :=
  ∀ n, P13651666963800980960.a n = A391991 n

end A391991

/-!
# A391992: Number of digits in the decimal expansion of binomial(2*n,n).

The programs for A391992, the canonical program `A391992.P2082228329695318765` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391992 has offset 0).

The definition of A391992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391992.P2082228329695318765

`A391991(C(2*n+1, 2)+n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A391992

/-- `A391991(C(2*n+1, 2)+n)` -/
def P2082228329695318765.Spec : Prop :=
  ∀ n, P2082228329695318765.a n = A391992 n

theorem P2082228329695318765.correct : P2082228329695318765.Spec := by
  intro n
  simp only [A391992]

end A391992

/-! ## A391992.P15770007610762598065

`∑{digits}[A000984(n), A036485(#)]`
-/

namespace A391992.P15770007610762598065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036485 x).sum

end

end A391992.P15770007610762598065

namespace A391992

/-- `∑{digits}[A000984(n), A036485(#)]` -/
def P15770007610762598065.Spec : Prop :=
  ∀ n, P15770007610762598065.a n = A391992 n

end A391992

/-! ## A391992.P6526860946155601673

`∑{digits}[A000984(n), A053632(#)]`
-/

namespace A391992.P6526860946155601673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A053632 x).sum

end

end A391992.P6526860946155601673

namespace A391992

/-- `∑{digits}[A000984(n), A053632(#)]` -/
def P6526860946155601673.Spec : Prop :=
  ∀ n, P6526860946155601673.a n = A391992 n

end A391992

/-! ## A391992.P8143672549398333328

`∑{digits}[A000984(n), A055642(#)]`
-/

namespace A391992.P8143672549398333328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A391992.P8143672549398333328

namespace A391992

/-- `∑{digits}[A000984(n), A055642(#)]` -/
def P8143672549398333328.Spec : Prop :=
  ∀ n, P8143672549398333328.a n = A391992 n

end A391992

/-! ## A391992.P9134371581837609353

`∑{digits}[A000984(n), A125950(#)]`
-/

namespace A391992.P9134371581837609353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A125950 x).sum

end

end A391992.P9134371581837609353

namespace A391992

/-- `∑{digits}[A000984(n), A125950(#)]` -/
def P9134371581837609353.Spec : Prop :=
  ∀ n, P9134371581837609353.a n = A391992 n

end A391992

/-! ## A391992.P15912290919170925966

`∑{digits}[A000984(n), A133880(#)]`
-/

namespace A391992.P15912290919170925966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A133880 x).sum

end

end A391992.P15912290919170925966

namespace A391992

/-- `∑{digits}[A000984(n), A133880(#)]` -/
def P15912290919170925966.Spec : Prop :=
  ∀ n, P15912290919170925966.a n = A391992 n

end A391992

/-! ## A391992.P952649920515178004

`A391991(∑[4*n])`
-/

namespace A391992.P952649920515178004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391992.P952649920515178004

namespace A391992

/-- `A391991(∑[4*n])` -/
def P952649920515178004.Spec : Prop :=
  ∀ n, P952649920515178004.a n = A391992 n

end A391992

/-!
# A391993: Expansion of (2*x*(x - 7))/(x - 1)^3.

The programs for A391993, the canonical program `A391993.P7779664526921795811` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391993 has offset 0).

The definition of A391993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((14x-2x^2)/(1-3x+3x^2-x^3))` (program `A391993.P7779664526921795811`, by `A391993.P7779664526921795811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391993.P4920641651700192990

`n*(6*n+8)`
-/

namespace A391993.P4920641651700192990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n + 8)

end

end A391993.P4920641651700192990

namespace A391993

/-- `n*(6*n+8)` -/
def P4920641651700192990.Spec : Prop :=
  ∀ n, (P4920641651700192990.a n : ℤ) = A391993 n

end A391993

/-! ## A391993.P7779664526921795811

`ogf((14x-2x^2)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391993

/-- `ogf((14x-2x^2)/(1-3x+3x^2-x^3))` -/
def P7779664526921795811.Spec : Prop :=
  ∀ n, P7779664526921795811.a n = A391993 n

theorem P7779664526921795811.correct : P7779664526921795811.Spec := by
  intro n
  simp only [A391993]

end A391993

/-! ## A391993.P1478613562489925508

`∑[xor(2, 12*n)]-2`
-/

namespace A391993.P1478613562489925508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (12 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A391993.P1478613562489925508

namespace A391993

/-- `∑[xor(2, 12*n)]-2` -/
def P1478613562489925508.Spec : Prop :=
  ∀ n, P1478613562489925508.a n = A391993 n

end A391993

/-! ## A391993.P7742284060202348399

`∑[a(n-1)+12]` with `a(0)=0, a(1)=14`
-/

namespace A391993.P7742284060202348399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 14] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391993.P7742284060202348399

namespace A391993

/-- `∑[a(n-1)+12]` -/
def P7742284060202348399.Spec : Prop :=
  ∀ n, (P7742284060202348399.a n : ℤ) = A391993 n

end A391993

/-! ## A391993.P7718266722724244729

`Δ[lcm(2*n-1, ∑[2*n]-1)]`
-/

namespace A391993.P7718266722724244729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - 1) (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A391993.P7718266722724244729

namespace A391993

/-- `Δ[lcm(2*n-1, ∑[2*n]-1)]` -/
def P7718266722724244729.Spec : Prop :=
  ∀ n, P7718266722724244729.a n = A391993 n

end A391993

/-! ## A391993.P5936430380122182084

`record[n^3-(n+1)²]-(n^3-(n+1)²)`
-/

namespace A391993.P5936430380122182084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n ^ 3 : ℤ) - ((n + 1) ^ 2 : ℤ))

end

end A391993.P5936430380122182084

namespace A391993

/-- `record[n^3-(n+1)²]-(n^3-(n+1)²)` -/
def P5936430380122182084.Spec : Prop :=
  ∀ n, P5936430380122182084.a n = A391993 n

end A391993

/-! ## A391993.P18234891138182541565

`A239325(n)-1`
-/

namespace A391993.P18234891138182541565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 n - 1

end

end A391993.P18234891138182541565

namespace A391993

/-- `A239325(n)-1` -/
def P18234891138182541565.Spec : Prop :=
  ∀ n, P18234891138182541565.a n = A391993 n

end A391993

/-! ## A391993.P18240161800874889271

`∑[A017545(n)]-2`
-/

namespace A391993.P18240161800874889271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A391993.P18240161800874889271

namespace A391993

/-- `∑[A017545(n)]-2` -/
def P18240161800874889271.Spec : Prop :=
  ∀ n, P18240161800874889271.a n = A391993 n

end A391993

/-! ## A391993.P8543288272429312750

`A126587(n+1)-3`
-/

namespace A391993.P8543288272429312750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126587 (n + 1) - 3

end

end A391993.P8543288272429312750

namespace A391993

/-- `A126587(n+1)-3` -/
def P8543288272429312750.Spec : Prop :=
  ∀ n, P8543288272429312750.a n = A391993 n

end A391993

/-! ## A391993.P5774900478501888988

`A049598(n)+2*n`
-/

namespace A391993.P5774900478501888988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n + (2 * n : ℤ)

end

end A391993.P5774900478501888988

namespace A391993

/-- `A049598(n)+2*n` -/
def P5774900478501888988.Spec : Prop :=
  ∀ n, P5774900478501888988.a n = A391993 n

end A391993

/-! ## A391993.P13856329712791635440

`A211014(n)+3*n`
-/

namespace A391993.P13856329712791635440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n + (3 * n : ℤ)

end

end A391993.P13856329712791635440

namespace A391993

/-- `A211014(n)+3*n` -/
def P13856329712791635440.Spec : Prop :=
  ∀ n, P13856329712791635440.a n = A391993 n

end A391993

/-! ## A391993.P3410558844624305464

`3*A014106(n)-n`
-/

namespace A391993.P3410558844624305464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A014106 n - (n : ℤ)

end

end A391993.P3410558844624305464

namespace A391993

/-- `3*A014106(n)-n` -/
def P3410558844624305464.Spec : Prop :=
  ∀ n, P3410558844624305464.a n = A391993 n

end A391993

/-! ## A391993.P2343915074318367624

`A202804(n)+4*n`
-/

namespace A391993.P2343915074318367624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n + (4 * n : ℤ)

end

end A391993.P2343915074318367624

namespace A391993

/-- `A202804(n)+4*n` -/
def P2343915074318367624.Spec : Prop :=
  ∀ n, P2343915074318367624.a n = A391993 n

end A391993

/-! ## A391993.P14431777404965118576

`A277980(n)/2-n`
-/

namespace A391993.P14431777404965118576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277980 n : ℚ) / 2 - (n : ℚ)

end

end A391993.P14431777404965118576

namespace A391993

/-- `A277980(n)/2-n` -/
def P14431777404965118576.Spec : Prop :=
  ∀ n, P14431777404965118576.a n = (A391993 n : ℚ)

end A391993

/-! ## A391993.P16106487755696864503

`A195319(n)+5*n`
-/

namespace A391993.P16106487755696864503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + (5 * n : ℤ)

end

end A391993.P16106487755696864503

namespace A391993

/-- `A195319(n)+5*n` -/
def P16106487755696864503.Spec : Prop :=
  ∀ n, P16106487755696864503.a n = A391993 n

end A391993

/-! ## A391993.P11286151174081794974

`A370912(n)-n^3`
-/

namespace A391993.P11286151174081794974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - (n ^ 3 : ℤ)

end

end A391993.P11286151174081794974

namespace A391993

/-- `A370912(n)-n^3` -/
def P11286151174081794974.Spec : Prop :=
  ∀ n, P11286151174081794974.a n = A391993 n

end A391993

/-! ## A391993.P1675694142365928117

`A033580(n)+A008588(n)`
-/

namespace A391993.P1675694142365928117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + A008588 n

end

end A391993.P1675694142365928117

namespace A391993

/-- `A033580(n)+A008588(n)` -/
def P1675694142365928117.Spec : Prop :=
  ∀ n, P1675694142365928117.a n = A391993 n

end A391993

/-! ## A391993.P6821150006438607560

`A033579(n)+A008592(n)`
-/

namespace A391993.P6821150006438607560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n + A008592 n

end

end A391993.P6821150006438607560

namespace A391993

/-- `A033579(n)+A008592(n)` -/
def P6821150006438607560.Spec : Prop :=
  ∀ n, P6821150006438607560.a n = A391993 n

end A391993

/-! ## A391993.P5682097456215584578

`A033581(n)+A008590(n)`
-/

namespace A391993.P5682097456215584578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A008590 n

end

end A391993.P5682097456215584578

namespace A391993

/-- `A033581(n)+A008590(n)` -/
def P5682097456215584578.Spec : Prop :=
  ∀ n, P5682097456215584578.a n = A391993 n

end A391993

/-! ## A391993.P4909102813312971912

`A033569(n)+A017173(n)`
-/

namespace A391993.P4909102813312971912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033569 n + A017173 n

end

end A391993.P4909102813312971912

namespace A391993

/-- `A033569(n)+A017173(n)` -/
def P4909102813312971912.Spec : Prop :=
  ∀ n, P4909102813312971912.a n = A391993 n

end A391993

/-!
# A391994: Expansion of (x^2*(3*x - 1))/((x - 1)^4*(x + 1)).

The programs for A391994, the canonical program `A391994.P5305675760337210624` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391994 has offset 0).

The definition of A391994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x^2+3x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` (program `A391994.P5305675760337210624`, by `A391994.P5305675760337210624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391994.P5305675760337210624

`ogf((-x^2+3x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391994

/-- `ogf((-x^2+3x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P5305675760337210624.Spec : Prop :=
  ∀ n, P5305675760337210624.a n = A391994 n

theorem P5305675760337210624.correct : P5305675760337210624.Spec := by
  intro n
  simp only [A391994]

end A391994

/-! ## A391994.P7886539702032281155

`(3*n%2+n*((n-3)*n-1))/6`
-/

namespace A391994.P7886539702032281155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n % 2) : ℕ) : ℤ) + (n : ℤ) * (((n : ℤ) - 3) * (n : ℤ) - 1) : ℚ) / 6

end

end A391994.P7886539702032281155

namespace A391994

/-- `(3*n%2+n*((n-3)*n-1))/6` -/
def P7886539702032281155.Spec : Prop :=
  ∀ n, P7886539702032281155.a n = (A391994 n : ℚ)

end A391994

/-! ## A391994.P11878927465090814455

`C(n, 3)-floor(n/2)`
-/

namespace A391994.P11878927465090814455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A391994.P11878927465090814455

namespace A391994

/-- `C(n, 3)-floor(n/2)` -/
def P11878927465090814455.Spec : Prop :=
  ∀ n, P11878927465090814455.a n = A391994 n

end A391994

/-! ## A391994.P2896046690828562826

`ceil(C(n, 3)-n/2)`
-/

namespace A391994.P2896046690828562826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 3 : ℚ) - (n : ℚ) / 2⌉

end

end A391994.P2896046690828562826

namespace A391994

/-- `ceil(C(n, 3)-n/2)` -/
def P2896046690828562826.Spec : Prop :=
  ∀ n, P2896046690828562826.a n = A391994 n

end A391994

/-! ## A391994.P13498946600735193529

`∑[∑[n]-comp[or(2, n)]]`
-/

namespace A391994.P13498946600735193529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P13498946600735193529

namespace A391994

/-- `∑[∑[n]-comp[or(2, n)]]` -/
def P13498946600735193529.Spec : Prop :=
  ∀ n, P13498946600735193529.a n = A391994 n

end A391994

/-! ## A391994.P16748717731235103650

`floor(∑[∑[n-2]+5/2])`
-/

namespace A391994.P16748717731235103650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) + (5 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A391994.P16748717731235103650

namespace A391994

/-- `floor(∑[∑[n-2]+5/2])` -/
def P16748717731235103650.Spec : Prop :=
  ∀ n, P16748717731235103650.a n = A391994 n

end A391994

/-! ## A391994.P4906085420956082628

`∑[and(1, n)+∑[n]-2*n]`
-/

namespace A391994.P4906085420956082628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P4906085420956082628

namespace A391994

/-- `∑[and(1, n)+∑[n]-2*n]` -/
def P4906085420956082628.Spec : Prop :=
  ∀ n, P4906085420956082628.a n = A391994 n

end A391994

/-! ## A391994.P8182207256859831096

`∑[∑[n]-(2*n-and(1, n))]`
-/

namespace A391994.P8182207256859831096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((2 * n : ℤ) - (Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P8182207256859831096

namespace A391994

/-- `∑[∑[n]-(2*n-and(1, n))]` -/
def P8182207256859831096.Spec : Prop :=
  ∀ n, P8182207256859831096.a n = A391994 n

end A391994

/-! ## A391994.P235635525492552855

`∑[∑[a(n-2)+2]]` with `a(0)=0, a(1)=0, a(2)=-1`
-/

namespace A391994.P235635525492552855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, -1] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P235635525492552855

namespace A391994

/-- `∑[∑[a(n-2)+2]]` -/
def P235635525492552855.Spec : Prop :=
  ∀ n, P235635525492552855.a n = A391994 n

end A391994

/-! ## A391994.P5395714880876000788

`∑[3-∑[a(n-2)-2]]` with `a(0)=3, a(1)=0`
-/

namespace A391994.P5395714880876000788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f2 =>
  f2 (n - 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P5395714880876000788

namespace A391994

/-- `∑[3-∑[a(n-2)-2]]` -/
def P5395714880876000788.Spec : Prop :=
  ∀ n, P5395714880876000788.a n = A391994 n

end A391994

/-! ## A391994.P8983656536069230311

`∑[or(3, (n+1)²)-∑[n+3]]`
-/

namespace A391994.P8983656536069230311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 ((n + 1) ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P8983656536069230311

namespace A391994

/-- `∑[or(3, (n+1)²)-∑[n+3]]` -/
def P8983656536069230311.Spec : Prop :=
  ∀ n, P8983656536069230311.a n = A391994 n

end A391994

/-! ## A391994.P10799418225367408921

`(2-n)²+a(n-2)-1` with `a(0)=0, a(1)=0`
-/

namespace A391994.P10799418225367408921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 - (n : ℤ)) ^ 2 + (a (n - 2) - 1)

end

end A391994.P10799418225367408921

namespace A391994

/-- `(2-n)²+a(n-2)-1` -/
def P10799418225367408921.Spec : Prop :=
  ∀ n, P10799418225367408921.a n = A391994 n

end A391994

/-! ## A391994.P16702027079676729152

`(2-n)²-(1-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A391994.P16702027079676729152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (2 - (n : ℤ)) ^ 2 - (1 - a (n - 2))

end

end A391994.P16702027079676729152

namespace A391994

/-- `(2-n)²-(1-a(n-2))` -/
def P16702027079676729152.Spec : Prop :=
  ∀ n, P16702027079676729152.a n = A391994 n

end A391994

/-! ## A391994.P13679916269936569118

`∑[gcd(2, n+1)+∑[n-1]-n]`
-/

namespace A391994.P13679916269936569118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P13679916269936569118

namespace A391994

/-- `∑[gcd(2, n+1)+∑[n-1]-n]` -/
def P13679916269936569118.Spec : Prop :=
  ∀ n, P13679916269936569118.a n = A391994 n

end A391994

/-! ## A391994.P1729891364307063011

`∑[∑[n-1]+and(1, n)-(n-1)]`
-/

namespace A391994.P1729891364307063011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((Nat.land 1 n : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P1729891364307063011

namespace A391994

/-- `∑[∑[n-1]+and(1, n)-(n-1)]` -/
def P1729891364307063011.Spec : Prop :=
  ∀ n, P1729891364307063011.a n = A391994 n

end A391994

/-! ## A391994.P9078548805866341339

`a(n-2)+(1-n)*(3-n)` with `a(0)=0, a(1)=0`
-/

namespace A391994.P9078548805866341339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (1 - (n : ℤ)) * (3 - (n : ℤ))

end

end A391994.P9078548805866341339

namespace A391994

/-- `a(n-2)+(1-n)*(3-n)` -/
def P9078548805866341339.Spec : Prop :=
  ∀ n, P9078548805866341339.a n = A391994 n

end A391994

/-! ## A391994.P5529437826026669452

`∑[∑[n-1]-(n-gcd(n-1, 2*n))]`
-/

namespace A391994.P5529437826026669452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((n : ℤ) - (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391994.P5529437826026669452

namespace A391994

/-- `∑[∑[n-1]-(n-gcd(n-1, 2*n))]` -/
def P5529437826026669452.Spec : Prop :=
  ∀ n, P5529437826026669452.a n = A391994 n

end A391994

/-! ## A391994.P5736016393525588722

`A036486(n)-∑[n²]`
-/

namespace A391994.P5736016393525588722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A391994.P5736016393525588722

namespace A391994

/-- `A036486(n)-∑[n²]` -/
def P5736016393525588722.Spec : Prop :=
  ∀ n, P5736016393525588722.a n = A391994 n

end A391994

/-! ## A391994.P9798436896833135742

`A064843(n+1)-n²`
-/

namespace A391994.P9798436896833135742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064843 (n + 1) - (n ^ 2 : ℤ)

end

end A391994.P9798436896833135742

namespace A391994

/-- `A064843(n+1)-n²` -/
def P9798436896833135742.Spec : Prop :=
  ∀ n, P9798436896833135742.a n = A391994 n

end A391994

/-! ## A391994.P3526663704088176169

`∑[A236453(n)]-(n+1)²`
-/

namespace A391994.P3526663704088176169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A391994.P3526663704088176169

namespace A391994

/-- `∑[A236453(n)]-(n+1)²` -/
def P3526663704088176169.Spec : Prop :=
  ∀ n, P3526663704088176169.a n = A391994 n

end A391994

/-!
# A391995: a(n) = (4*n^3 - 18*n^2 - 4*n + 9*(1 - (-1)^n)) / 48.

The programs for A391995, the canonical program `A391995.P15684201075971885915` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391995 has offset 0).

The definition of A391995 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A391995.anchor (n : ℕ) : (A391995 n : ℚ) = ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℚ) / 48` in `Proof.A391.A391995`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391995.P15684201075971885915

`(4*n^3-18*n²-4*n+9*(1-(-1)^n))/48`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391995

/-- `(4*n^3-18*n²-4*n+9*(1-(-1)^n))/48` -/
def P15684201075971885915.Spec : Prop :=
  ∀ n, P15684201075971885915.a n = (A391995 n : ℚ)

end A391995

/-! ## A391995.P8125664390630370474

`∑[a(n-2)-3+n]` with `a(0)=0, a(1)=0`
-/

namespace A391995.P8125664390630370474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391995.P8125664390630370474

namespace A391995

/-- `∑[a(n-2)-3+n]` -/
def P8125664390630370474.Spec : Prop :=
  ∀ n, P8125664390630370474.a n = A391995 n

end A391995

/-! ## A391995.P3736829895417343062

`∑[a(n-2)-(3-n)]` with `a(0)=0, a(1)=0`
-/

namespace A391995.P3736829895417343062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391995.P3736829895417343062

namespace A391995

/-- `∑[a(n-2)-(3-n)]` -/
def P3736829895417343062.Spec : Prop :=
  ∀ n, P3736829895417343062.a n = A391995 n

end A391995

/-! ## A391995.P12875129378020401826

`a(n-1)-floor(n-(n/2)²)` with `a(0)=0`
-/

namespace A391995.P12875129378020401826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(n : ℚ) - ((n : ℚ) / 2) ^ 2⌋

end

end A391995.P12875129378020401826

namespace A391995

/-- `a(n-1)-floor(n-(n/2)²)` -/
def P12875129378020401826.Spec : Prop :=
  ∀ n, P12875129378020401826.a n = A391995 n

end A391995

/-! ## A391995.P16287707462935598129

`ceil((n/2)²)-(n-a(n-1))` with `a(0)=0`
-/

namespace A391995.P16287707462935598129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈((n : ℚ) / 2) ^ 2⌉ - ((n : ℤ) - a (n - 1))

end

end A391995.P16287707462935598129

namespace A391995

/-- `ceil((n/2)²)-(n-a(n-1))` -/
def P16287707462935598129.Spec : Prop :=
  ∀ n, P16287707462935598129.a n = A391995 n

end A391995

/-! ## A391995.P501132865485818091

`C(n-1, 3)-(a(n-1)+n-1)` with `a(0)=0`
-/

namespace A391995.P501132865485818091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat 3 : ℤ) - (a (n - 1) + ((n : ℤ) - 1))

end

end A391995.P501132865485818091

namespace A391995

/-- `C(n-1, 3)-(a(n-1)+n-1)` -/
def P501132865485818091.Spec : Prop :=
  ∀ n, P501132865485818091.a n = A391995 n

end A391995

/-! ## A391995.P16873928013460749426

`C(n-1, 3)-(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A391995.P16873928013460749426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((n : ℤ) - 1).toNat 3 : ℤ) - ((n : ℤ) - 1) - a (n - 1)

end

end A391995.P16873928013460749426

namespace A391995

/-- `C(n-1, 3)-(n-1)-a(n-1)` -/
def P16873928013460749426.Spec : Prop :=
  ∀ n, P16873928013460749426.a n = A391995 n

end A391995

/-! ## A391995.P3866135757659779170

`∑[A004652(n)-n]`
-/

namespace A391995.P3866135757659779170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391995.P3866135757659779170

namespace A391995

/-- `∑[A004652(n)-n]` -/
def P3866135757659779170.Spec : Prop :=
  ∀ n, P3866135757659779170.a n = A391995 n

end A391995

/-! ## A391995.P4572252308474084473

`A175287(n)-∑[n]`
-/

namespace A391995.P4572252308474084473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A391995.P4572252308474084473

namespace A391995

/-- `A175287(n)-∑[n]` -/
def P4572252308474084473.Spec : Prop :=
  ∀ n, P4572252308474084473.a n = A391995 n

end A391995

/-! ## A391995.P12724573325257873593

`A212247(n)-∑[n²]`
-/

namespace A391995.P12724573325257873593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212247 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A391995.P12724573325257873593

namespace A391995

/-- `A212247(n)-∑[n²]` -/
def P12724573325257873593.Spec : Prop :=
  ∀ n, P12724573325257873593.a n = A391995 n

end A391995

/-! ## A391995.P14053222029198864725

`A005744(n)-A035608(n)`
-/

namespace A391995.P14053222029198864725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n - A035608 n

end

end A391995.P14053222029198864725

namespace A391995

/-- `A005744(n)-A035608(n)` -/
def P14053222029198864725.Spec : Prop :=
  ∀ n, P14053222029198864725.a n = A391995 n

end A391995

/-! ## A391995.P7987646880680389170

`A131941(n)-A005744(n)`
-/

namespace A391995.P7987646880680389170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - A005744 n

end

end A391995.P7987646880680389170

namespace A391995

/-- `A131941(n)-A005744(n)` -/
def P7987646880680389170.Spec : Prop :=
  ∀ n, P7987646880680389170.a n = A391995 n

end A391995

/-! ## A391995.P8375964341918054269

`A173196(n)-A007590(n)`
-/

namespace A391995.P8375964341918054269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - A007590 n

end

end A391995.P8375964341918054269

namespace A391995

/-- `A173196(n)-A007590(n)` -/
def P8375964341918054269.Spec : Prop :=
  ∀ n, P8375964341918054269.a n = A391995 n

end A391995

/-! ## A391995.P6093009015495165537

`A212964(n)-A173196(n)`
-/

namespace A391995.P6093009015495165537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n - A173196 n

end

end A391995.P6093009015495165537

namespace A391995

/-- `A212964(n)-A173196(n)` -/
def P6093009015495165537.Spec : Prop :=
  ∀ n, P6093009015495165537.a n = A391995 n

end A391995

/-! ## A391995.P6932902012043897925

`A370307(n)-A213398(n)`
-/

namespace A391995.P6932902012043897925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370307 n - A213398 n

end

end A391995.P6932902012043897925

namespace A391995

/-- `A370307(n)-A213398(n)` -/
def P6932902012043897925.Spec : Prop :=
  ∀ n, P6932902012043897925.a n = A391995 n

end A391995

/-! ## A391995.P7199205493891525284

`A007518(n+1)-A006503(n)`
-/

namespace A391995.P7199205493891525284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007518 (n + 1) - A006503 n

end

end A391995.P7199205493891525284

namespace A391995

/-- `A007518(n+1)-A006503(n)` -/
def P7199205493891525284.Spec : Prop :=
  ∀ n, P7199205493891525284.a n = A391995 n

end A391995

/-! ## A391995.P5542767792192005807

`A209008(n+1)-A263807(n)`
-/

namespace A391995.P5542767792192005807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209008 (n + 1) - A263807 n

end

end A391995.P5542767792192005807

namespace A391995

/-- `A209008(n+1)-A263807(n)` -/
def P5542767792192005807.Spec : Prop :=
  ∀ n, P5542767792192005807.a n = A391995 n

end A391995

/-! ## A391995.P14372322926597820992

`A361272(n)-A152947(n+1)`
-/

namespace A391995.P14372322926597820992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361272 n - A152947 (n + 1)

end

end A391995.P14372322926597820992

namespace A391995

/-- `A361272(n)-A152947(n+1)` -/
def P14372322926597820992.Spec : Prop :=
  ∀ n, P14372322926597820992.a n = A391995 n

end A391995

/-! ## A391995.P12894676439659207060

`A173196(n)-2*A002620(n)`
-/

namespace A391995.P12894676439659207060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - 2 * A002620 n

end

end A391995.P12894676439659207060

namespace A391995

/-- `A173196(n)-2*A002620(n)` -/
def P12894676439659207060.Spec : Prop :=
  ∀ n, P12894676439659207060.a n = A391995 n

end A391995

/-! ## A391995.P13810854331797590323

`A088795(n+1)-A087811(n+1)`
-/

namespace A391995.P13810854331797590323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088795 (n + 1) - A087811 (n + 1)

end

end A391995.P13810854331797590323

namespace A391995

/-- `A088795(n+1)-A087811(n+1)` -/
def P13810854331797590323.Spec : Prop :=
  ∀ n, P13810854331797590323.a n = A391995 n

end A391995

/-!
# A391996: Table read by rows: T(n, k) = floor((k/2)^2)*n^2.

The programs for A391996, the canonical program `A391996.P12948768374219464651` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391996 has offset 0).

The definition of A391996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((col(n)/2)²)*row(n)²` (program `A391996.P12948768374219464651`, by `A391996.P12948768374219464651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391996.P12948768374219464651

`floor((col(n)/2)²)*row(n)²`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391996

/-- `floor((col(n)/2)²)*row(n)²` -/
def P12948768374219464651.Spec : Prop :=
  ∀ n, P12948768374219464651.a n = A391996 n

theorem P12948768374219464651.correct : P12948768374219464651.Spec := by
  intro n
  simp only [A391996]

end A391996

/-! ## A391996.P12893461248048384556

`A002620(col(n))*row(n)*row(n)`
-/

namespace A391996.P12893461248048384556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n : ℤ) * (SequenceMachineLib.triRow n : ℤ)

end

end A391996.P12893461248048384556

namespace A391996

/-- `A002620(col(n))*row(n)*row(n)` -/
def P12893461248048384556.Spec : Prop :=
  ∀ n, P12893461248048384556.a n = A391996 n

theorem P12893461248048384556.correct : P12893461248048384556.Spec := by
  intro n
  simp only [A391996, Nat.add_sub_cancel, A391996.P12893461248048384556.a, A391996.P12948768374219464651.a, A002620, A002620.P9002536657626793813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391996

/-!
# A391997: a(n) = Sum_{k=0..n} floor((k/2)^2)*n^2. Row sums of A391996.

The programs for A391997, the canonical program `A391997.P4708799289753081998` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391997 has offset 0).

The definition of A391997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, floor((#/2)²)*n²]` (program `A391997.P4708799289753081998`, by `A391997.P4708799289753081998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391997.P10341551691138528101

`(2*n^5+3*n^4-2*n^3-n%2*3*n²)/24`
-/

namespace A391997.P10341551691138528101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 5 + 3 * n ^ 4 : ℤ) - (2 * n ^ 3 : ℤ) - ((n % 2 * 3 * n ^ 2 : ℕ) : ℤ) : ℚ) / 24

end

end A391997.P10341551691138528101

namespace A391997

/-- `(2*n^5+3*n^4-2*n^3-n%2*3*n²)/24` -/
def P10341551691138528101.Spec : Prop :=
  ∀ n, P10341551691138528101.a n = (A391997 n : ℚ)

end A391997

/-! ## A391997.P4708799289753081998

`∑{#}[n, floor((#/2)²)*n²]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391997

/-- `∑{#}[n, floor((#/2)²)*n²]` -/
def P4708799289753081998.Spec : Prop :=
  ∀ n, P4708799289753081998.a n = A391997 n

theorem P4708799289753081998.correct : P4708799289753081998.Spec := by
  intro n
  simp only [A391997]

end A391997

/-! ## A391997.P8970929140163323982

`n²*∑[floor((n/2)²)]`
-/

namespace A391997.P8970929140163323982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391997.P8970929140163323982

namespace A391997

/-- `n²*∑[floor((n/2)²)]` -/
def P8970929140163323982.Spec : Prop :=
  ∀ n, P8970929140163323982.a n = A391997 n

end A391997

/-! ## A391997.P8316500174952208800

`(2*n^5+3*n^4-2*n^3-3*n%2*n²)/24`
-/

namespace A391997.P8316500174952208800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 5 + 3 * n ^ 4 : ℤ) - (2 * n ^ 3 : ℤ) - ((3 * (n % 2) * n ^ 2 : ℕ) : ℤ) : ℚ) / 24

end

end A391997.P8316500174952208800

namespace A391997

/-- `(2*n^5+3*n^4-2*n^3-3*n%2*n²)/24` -/
def P8316500174952208800.Spec : Prop :=
  ∀ n, P8316500174952208800.a n = (A391997 n : ℚ)

end A391997

/-! ## A391997.P15257637555443921669

`floor(A212964(n+1)/2*n²)`
-/

namespace A391997.P15257637555443921669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212964 (n + 1) : ℚ) / 2 * (n ^ 2 : ℚ)⌋

end

end A391997.P15257637555443921669

namespace A391997

/-- `floor(A212964(n+1)/2*n²)` -/
def P15257637555443921669.Spec : Prop :=
  ∀ n, P15257637555443921669.a n = A391997 n

end A391997

/-!
# A391998: Composite numbers k such that k + 1 is not a power of an odd prime and 2*k + 1 is not a prime power.

The programs for A391998, the canonical program `A391998.P14171047269636932981` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391998 has offset 1).

The definition of A391998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391998.P14171047269636932981

`filter[A392001(1+n), A005171(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A391998

/-- `filter[A392001(1+n), A005171(#)]` -/
def P14171047269636932981.Spec : Prop :=
  ∀ n, P14171047269636932981.a n = A391998 (n + 1)

theorem P14171047269636932981.correct : P14171047269636932981.Spec := by
  intro n
  simp only [A391998, Nat.add_sub_cancel]

end A391998

/-! ## A391998.P16807583982763754233

`filter[A392001(n+1), A066247(#)]`
-/

namespace A391998.P16807583982763754233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A391998.P16807583982763754233

namespace A391998

/-- `filter[A392001(n+1), A066247(#)]` -/
def P16807583982763754233.Spec : Prop :=
  ∀ n, P16807583982763754233.a n = A391998 (n + 1)

end A391998

/-! ## A391998.P11919151172720038610

`filter[A392001(1+n), A292438(#)]`
-/

namespace A391998.P11919151172720038610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A391998.P11919151172720038610

namespace A391998

/-- `filter[A392001(1+n), A292438(#)]` -/
def P11919151172720038610.Spec : Prop :=
  ∀ n, P11919151172720038610.a n = A391998 (n + 1)

end A391998

/-! ## A391998.P9296352503560837404

`∩[A002808(n+1), A392001(n+1)]`
-/

namespace A391998.P9296352503560837404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P9296352503560837404

namespace A391998

/-- `∩[A002808(n+1), A392001(n+1)]` -/
def P9296352503560837404.Spec : Prop :=
  ∀ n, (P9296352503560837404.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P15567365816038682921

`∩[A018252(n+1), A392001(n+1)]`
-/

namespace A391998.P15567365816038682921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P15567365816038682921

namespace A391998

/-- `∩[A018252(n+1), A392001(n+1)]` -/
def P15567365816038682921.Spec : Prop :=
  ∀ n, (P15567365816038682921.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P2274475199581860291

`∩[A123608(n+1), A392001(n+1)]`
-/

namespace A391998.P2274475199581860291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P2274475199581860291

namespace A391998

/-- `∩[A123608(n+1), A392001(n+1)]` -/
def P2274475199581860291.Spec : Prop :=
  ∀ n, (P2274475199581860291.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P2341101347629226598

`∩[A141468(n+1), A392001(n+1)]`
-/

namespace A391998.P2341101347629226598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P2341101347629226598

namespace A391998

/-- `∩[A141468(n+1), A392001(n+1)]` -/
def P2341101347629226598.Spec : Prop :=
  ∀ n, (P2341101347629226598.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P18125346677634140277

`∩[A077654(n+1), A392001(n+1)]`
-/

namespace A391998.P18125346677634140277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P18125346677634140277

namespace A391998

/-- `∩[A077654(n+1), A392001(n+1)]` -/
def P18125346677634140277.Spec : Prop :=
  ∀ n, (P18125346677634140277.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P16590921091763749100

`∩[A068780(n+1), A392001(n+1)]`
-/

namespace A391998.P16590921091763749100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P16590921091763749100

namespace A391998

/-- `∩[A068780(n+1), A392001(n+1)]` -/
def P16590921091763749100.Spec : Prop :=
  ∀ n, (P16590921091763749100.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P7682829339672543412

`∩[A164276(n+1), A392001(n+1)]`
-/

namespace A391998.P7682829339672543412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P7682829339672543412

namespace A391998

/-- `∩[A164276(n+1), A392001(n+1)]` -/
def P7682829339672543412.Spec : Prop :=
  ∀ n, (P7682829339672543412.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P11490965990442923362

`∩[A056653(n+1), A392001(n+1)]`
-/

namespace A391998.P11490965990442923362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P11490965990442923362

namespace A391998

/-- `∩[A056653(n+1), A392001(n+1)]` -/
def P11490965990442923362.Spec : Prop :=
  ∀ n, (P11490965990442923362.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P3518025369368544049

`∩[A176423(n+1), A392001(n+1)]`
-/

namespace A391998.P3518025369368544049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P3518025369368544049

namespace A391998

/-- `∩[A176423(n+1), A392001(n+1)]` -/
def P3518025369368544049.Spec : Prop :=
  ∀ n, (P3518025369368544049.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P13183049982238387041

`∩[A065090(n+1), A392001(n+1)]`
-/

namespace A391998.P13183049982238387041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P13183049982238387041

namespace A391998

/-- `∩[A065090(n+1), A392001(n+1)]` -/
def P13183049982238387041.Spec : Prop :=
  ∀ n, (P13183049982238387041.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P3373983629700647557

`∩[A171581(n+1), A392001(n+1)]`
-/

namespace A391998.P3373983629700647557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P3373983629700647557

namespace A391998

/-- `∩[A171581(n+1), A392001(n+1)]` -/
def P3373983629700647557.Spec : Prop :=
  ∀ n, (P3373983629700647557.a n : ℤ) = A391998 (n + 1)

end A391998

/-! ## A391998.P3934038825107934505

`∩[A173905(n+1), A392001(n+1)]`
-/

namespace A391998.P3934038825107934505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391998.P3934038825107934505

namespace A391998

/-- `∩[A173905(n+1), A392001(n+1)]` -/
def P3934038825107934505.Spec : Prop :=
  ∀ n, (P3934038825107934505.a n : ℤ) = A391998 (n + 1)

end A391998

