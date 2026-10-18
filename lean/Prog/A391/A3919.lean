import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A391900: The total number of prime factors (counted with multiplicity) of the prime factorization exponents of n.

The programs for A391900, the canonical program `A391900.P11135445181283333301` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391900 has offset 1).

The definition of A391900 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391900.P11135445181283333301

`A001222(A005361(n+1))`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A391900

/-- `A001222(A005361(n+1))` -/
def P11135445181283333301.Spec : Prop :=
  ∀ n, P11135445181283333301.a n = A391900 (n + 1)

theorem P11135445181283333301.correct : P11135445181283333301.Spec := by
  intro n
  simp only [A391900, Nat.add_sub_cancel]

end A391900

/-! ## A391900.P9873504970112202389

`∑{e}[∏{e}[n+1, #], #]`
-/

namespace A391900.P9873504970112202389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A391900.P9873504970112202389

namespace A391900

/-- `∑{e}[∏{e}[n+1, #], #]` -/
def P9873504970112202389.Spec : Prop :=
  ∀ n, (P9873504970112202389.a n : ℤ) = A391900 (n + 1)

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

/-! ## A391900.P6336765970714859361

`A072273(A112622(n+1))`
-/

namespace A391900.P6336765970714859361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (A112622 (n + 1)).toNat

end

end A391900.P6336765970714859361

namespace A391900

/-- `A072273(A112622(n+1))` -/
def P6336765970714859361.Spec : Prop :=
  ∀ n, P6336765970714859361.a n = A391900 (n + 1)

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

/-! ## A391901.P9157379203395323115

`gcd(A007913(n+1), A107826(2*(n+2)))`
-/

namespace A391901.P9157379203395323115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A107826 (2 * (n + 2)))

end

end A391901.P9157379203395323115

/-!
# A391902: a(n) = Sum_{k=0..n} binomial(3*k,3*(n-k)).

The programs for A391902, the canonical program `A391902.P12474551055585629767` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391902 has offset 0).

The definition of A391902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391902.P12474551055585629767

`3*a(n-1)+22*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=21, a(4)=86, a(5)=305`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391902

/-- `3*a(n-1)+22*a(n-3)+3*a(n-5)+a(n-6)` -/
def P12474551055585629767.Spec : Prop :=
  ∀ n, (P12474551055585629767.a n : ℤ) = A391902 n

theorem P12474551055585629767.correct : P12474551055585629767.Spec := by
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

The programs for A391909, the canonical program `A391909.P11414189018115501503` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391909 has offset 1).

The definition of A391909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391909.P11414189018115501503

`record[(n+1)*A391747(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
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

/-! ## A391909.P8768018839055536610

`filter[n+1, A391747(#)]`
-/

namespace A391909.P8768018839055536610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391747 (f1 j) = 1) n)

end

end A391909.P8768018839055536610

namespace A391909

/-- `filter[n+1, A391747(#)]` -/
def P8768018839055536610.Spec : Prop :=
  ∀ n, (P8768018839055536610.a n : ℤ) = A391909 (n + 1)

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

The programs for A391917, the canonical program `A391917.P17410970912518672552` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391917 has offset 1).

The definition of A391917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391917.P17410970912518672552

`A290493(n+1)²+1`

The canonical program, it is in `Seq.B001.C010`.
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

/-!
# A391919: Triangle read by rows: T(n, k) is the number of singular meanders with n intersections having k tangential intersections.

The programs for A391919, there is no canonical definition to state claims against.
-/

/-! ## A391919.P7553135398330355845

`A085736(A394216(n))`
-/

namespace A391919.P7553135398330355845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A394216 n).toNat

end

end A391919.P7553135398330355845

/-! ## A391919.P14128672766265924387

`filter[A394216(n), A102609(#)]`
-/

namespace A391919.P14128672766265924387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A391919.P14128672766265924387

/-! ## A391919.P2730749424947565934

`filter[A394216(n), A153490(#)]`
-/

namespace A391919.P2730749424947565934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A153490 (f1 j).toNat = 1) n)

end

end A391919.P2730749424947565934

/-! ## A391919.P12616194616206631337

`filter[A394216(n), A225181(#)]`
-/

namespace A391919.P12616194616206631337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A391919.P12616194616206631337

/-! ## A391919.P1662539019192392430

`filter[A394216(n), A273592(#)]`
-/

namespace A391919.P1662539019192392430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A391919.P1662539019192392430

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

The programs for A391922, the canonical program `A391922.P16311952862466852475` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391922 has offset 1).

The definition of A391922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391922.P16311952862466852475

`∩[A212164(n+1), A345381(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
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

/-! ## A391922.P17516814377447030038

`∩[A084227(n+1), A378767(n+1)]`
-/

namespace A391922.P17516814377447030038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P17516814377447030038

namespace A391922

/-- `∩[A084227(n+1), A378767(n+1)]` -/
def P17516814377447030038.Spec : Prop :=
  ∀ n, (P17516814377447030038.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P11427692385175418354

`∩[A084227(n+1), A378878(n+1)]`
-/

namespace A391922.P11427692385175418354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P11427692385175418354

namespace A391922

/-- `∩[A084227(n+1), A378878(n+1)]` -/
def P11427692385175418354.Spec : Prop :=
  ∀ n, (P11427692385175418354.a n : ℤ) = A391922 (n + 1)

end A391922

/-! ## A391922.P12416747352191357915

`∩[A084227(n+1), A379336(n+1)]`
-/

namespace A391922.P12416747352191357915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391922.P12416747352191357915

namespace A391922

/-- `∩[A084227(n+1), A379336(n+1)]` -/
def P12416747352191357915.Spec : Prop :=
  ∀ n, (P12416747352191357915.a n : ℤ) = A391922 (n + 1)

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

/-! ## A391926.P4302206666884775038

`A002260(n+1)-A256269(A019565(3*n+1))`
-/

namespace A391926.P4302206666884775038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A256269 (A019565 (3 * n + 1)).toNat

end

end A391926.P4302206666884775038

/-! ## A391926.P9881752752397777650

`A254378(A341204(n+7))+A002262(n)`
-/

namespace A391926.P9881752752397777650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254378 (A341204 (n + 7)).toNat + A002262 n

end

end A391926.P9881752752397777650

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

The programs for A391929, the canonical program `A391929.P9420849167608159605` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391929 has offset 0).

The definition of A391929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391929.P9420849167608159605

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=10, a(4)=10, a(5)=22`

The canonical program, it is in `Seq.B000.C036`.
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

/-! ## A391939.P18088394640066714273

`∪[A143824(A227590(2*(n+2))), A005381(n+1)]`
-/

namespace A391939.P18088394640066714273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A227590 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391939.P18088394640066714273

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

/-! ## A391946.P5983864852855370927

`A372576(n+1)%A085987(A384067(n))`
-/

namespace A391946.P5983864852855370927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372576 (n + 1)) (A085987 (A384067 n).toNat)

end

end A391946.P5983864852855370927

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

/-! ## A391955.P16671072401337937793

`A346523(A192664(n+1))`
-/

namespace A391955.P16671072401337937793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346523 (A192664 (n + 1)).toNat

end

end A391955.P16671072401337937793

/-! ## A391955.P7902775978736917454

`A090736(A007846(n)+2)`
-/

namespace A391955.P7902775978736917454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090736 (A007846 n + 2).toNat

end

end A391955.P7902775978736917454

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

The programs for A391958, the canonical program `A391958.P4973106280450321391` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391958 has offset 0).

The definition of A391958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391958.P4973106280450321391

`A187059(n)+A187059(n)+A011371(n)`

The canonical program, it is in `Seq.B004.C003`.
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

The programs for A391960, there is no canonical definition to state claims against.
-/

/-! ## A391960.P16477104231815321753

`A390765(A169942(2*(n+2)))*A390775(n)`
-/

namespace A391960.P16477104231815321753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A169942 (2 * (n + 2))).toNat * A390775 n

end

end A391960.P16477104231815321753

/-! ## A391960.P14683072218069135539

`A390765(A000079(n))*A390775(n)`
-/

namespace A391960.P14683072218069135539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A000079 n).toNat * A390775 n

end

end A391960.P14683072218069135539

/-! ## A391960.P17683935030747229803

`A390765(A000225(n))*A390775(n)`
-/

namespace A391960.P17683935030747229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A000225 n).toNat * A390775 n

end

end A391960.P17683935030747229803

/-! ## A391960.P9957017913366433624

`A390765(A014210(n))*A390775(n)`
-/

namespace A391960.P9957017913366433624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A014210 n).toNat * A390775 n

end

end A391960.P9957017913366433624

/-! ## A391960.P3494376513919620454

`A390765(A011782(n+1))*A390775(n)`
-/

namespace A391960.P3494376513919620454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (A011782 (n + 1)).toNat * A390775 n

end

end A391960.P3494376513919620454

/-!
# A391961: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k+6,6) * binomial(k,2*(n-3*k)).

The programs for A391961, there is no canonical definition to state claims against.
-/

/-! ## A391961.P2338028942773333800

`A238762(A153243(n))`
-/

namespace A391961.P2338028942773333800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238762 (A153243 n).toNat

end

end A391961.P2338028942773333800

/-! ## A391961.P12196729377789923178

`A028698(A221568(n+1))`
-/

namespace A391961.P12196729377789923178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028698 (A221568 (n + 1)).toNat

end

end A391961.P12196729377789923178

/-! ## A391961.P8706558254266844703

`A257651(A150362(n+1))`
-/

namespace A391961.P8706558254266844703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257651 (A150362 (n + 1)).toNat

end

end A391961.P8706558254266844703

/-!
# A391962: a(n) = Sum_{k=0..n} (k+1) * binomial(k,2*(n-k)).

The programs for A391962, the canonical program `A391962.P2553170299100446233` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391962 has offset 0).

The definition of A391962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391962.P2553170299100446233

`A228577(Δ[n²])`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A391962

/-- `A228577(Δ[n²])` -/
def P2553170299100446233.Spec : Prop :=
  ∀ n, P2553170299100446233.a n = A391962 n

theorem P2553170299100446233.correct : P2553170299100446233.Spec := by
  intro n
  simp only [A391962]

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

The programs for A391963, there is no canonical definition to state claims against.
-/

/-! ## A391963.P16971921050983608055

`A104578(A096376(n+1))`
-/

namespace A391963.P16971921050983608055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A096376 (n + 1)).toNat

end

end A391963.P16971921050983608055

/-! ## A391963.P18161059325956292581

`A104578(A084849(n+1)+1)`
-/

namespace A391963.P18161059325956292581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104578 (A084849 (n + 1) + 1).toNat

end

end A391963.P18161059325956292581

/-!
# A391964: a(n) = Sum_{k=0..n} (k+1) * 2^k * binomial(k,2*(n-k)).

The programs for A391964, there is no canonical definition to state claims against.
-/

/-! ## A391964.P5670631003406073803

`A189917(a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A391964.P5670631003406073803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A189917 (a (n - 1)).toNat

end

end A391964.P5670631003406073803

/-!
# A391965: a(n) = Sum_{k=0..n} 2^k * binomial(k+2,2) * binomial(k,2*(n-k)).

The programs for A391965, there is no canonical definition to state claims against.
-/

/-! ## A391965.P16716482973750367779

`A358507(A014137(n))`
-/

namespace A391965.P16716482973750367779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358507 (A014137 n).toNat

end

end A391965.P16716482973750367779

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

/-! ## A391968.P5159859273971895718

`A289748(A349132(n+5))*A391506(n+1)`
-/

namespace A391968.P5159859273971895718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289748 (A349132 (n + 5)).toNat * A391506 (n + 1)

end

end A391968.P5159859273971895718

/-! ## A391968.P2397923585217737002

`A391506(n+1)+A010815(A391506(3*n+1))`
-/

namespace A391968.P2397923585217737002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1) + A010815 (A391506 (3 * n + 1)).toNat

end

end A391968.P2397923585217737002

/-! ## A391968.P5407013191143064010

`A391506(n+1)+A010054(A391506(3*n+2))`
-/

namespace A391968.P5407013191143064010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1) + A010054 (A391506 (3 * n + 2)).toNat

end

end A391968.P5407013191143064010

/-! ## A391968.P14740040498615862480

`A391506(n+1)+A007968(A000290(n))`
-/

namespace A391968.P14740040498615862480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391506 (n + 1) + A007968 (A000290 n).toNat

end

end A391968.P14740040498615862480

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
# A391975: Number of irredundant sets in the n-triangular honeycomb bishop graph.

The programs for A391975, there is no canonical definition to state claims against.
-/

/-! ## A391975.P12193782058797031237

`A333093(n)+A080605(A349962(n))`
-/

namespace A391975.P12193782058797031237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333093 n + A080605 (A349962 n).toNat

end

end A391975.P12193782058797031237

/-!
# A391977: Maximum value computed by any of the 4096 Wolfram 2-state 2-symbol Turing machines when started with n on the tape.

The programs for A391977, there is no canonical definition to state claims against.
-/

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

The programs for A391978, the canonical program `A391978.P3035766027264411343` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391978 has offset 1).

The definition of A391978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*C(n+1, 4)` (program `A391978.P3035766027264411343`, by `A391978.P3035766027264411343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391978.P3035766027264411343

`2*(n+1)*C(n+1, 4)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391978

/-- `2*(n+1)*C(n+1, 4)` -/
def P3035766027264411343.Spec : Prop :=
  ∀ n, (P3035766027264411343.a n : ℤ) = A391978 (n + 1)

theorem P3035766027264411343.correct : P3035766027264411343.Spec := by
  intro n
  simp only [A391978, Nat.add_sub_cancel]

end A391978

/-! ## A391978.P14563381175388636611

`n*(n-1)*(n-2)*(n+1)²/12`
-/

namespace A391978.P14563381175388636611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((n : ℤ) - 1) * (((n : ℤ) - 2) * ((n + 1) ^ 2 : ℤ))) : ℚ) / 12

end

end A391978.P14563381175388636611

namespace A391978

/-- `n*(n-1)*(n-2)*(n+1)²/12` -/
def P14563381175388636611.Spec : Prop :=
  ∀ n, P14563381175388636611.a n = (A391978 (n + 1) : ℚ)

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

/-! ## A391978.P4604630950031280786

`(n+1)²/2*C(n, 3)`
-/

namespace A391978.P4604630950031280786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 2 * (Nat.choose n 3 : ℚ)

end

end A391978.P4604630950031280786

namespace A391978

/-- `(n+1)²/2*C(n, 3)` -/
def P4604630950031280786.Spec : Prop :=
  ∀ n, P4604630950031280786.a n = (A391978 (n + 1) : ℚ)

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

/-! ## A391983.P18170497423761985150

`A389733(A219209(n+1))`
-/

namespace A391983.P18170497423761985150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389733 (A219209 (n + 1)).toNat

end

end A391983.P18170497423761985150

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

/-! ## A391986.P15284118764031758093

`∑[∏[A357186(A283477(n))]]`
-/

namespace A391986.P15284118764031758093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A283477 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391986.P15284118764031758093

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
# A391988: 

The programs for A391988, there is no canonical definition to state claims against.
-/

/-! ## A391988.P2363059144124611115

`A049419(A209061(n+1))`
-/

namespace A391988.P2363059144124611115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A209061 (n + 1)).toNat

end

end A391988.P2363059144124611115

/-! ## A391988.P2348611528697325042

`A278908(A209061(2*n+1-n))`
-/

namespace A391988.P2348611528697325042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A209061 (2 * n + 1 - n)).toNat

end

end A391988.P2348611528697325042

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

The programs for A391990, the canonical program `A391990.P7637229657384781661` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391990 has offset 0).

The definition of A391990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391990.P7637229657384781661

`A163865(n)-A372342(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391990

/-- `A163865(n)-A372342(n)` -/
def P7637229657384781661.Spec : Prop :=
  ∀ n, P7637229657384781661.a n = A391990 n

theorem P7637229657384781661.correct : P7637229657384781661.Spec := by
  intro n
  simp only [A391990]

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

The programs for A391991, the canonical program `A391991.P1337276639088855244` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391991 has offset 0).

The definition of A391991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007318, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A391991

/-- `A055642(A007318(n))` -/
def P1337276639088855244.Spec : Prop :=
  ∀ n, P1337276639088855244.a n = A391991 n

theorem P1337276639088855244.correct : P1337276639088855244.Spec := by
  intro n
  simp only [A391991]

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

The programs for A391992, the canonical program `A391992.P8143672549398333328` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391992 has offset 0).

The definition of A391992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A391992

/-- `∑{digits}[A000984(n), A055642(#)]` -/
def P8143672549398333328.Spec : Prop :=
  ∀ n, P8143672549398333328.a n = A391992 n

theorem P8143672549398333328.correct : P8143672549398333328.Spec := by
  intro n
  simp only [A391992]

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

The programs for A391993, the canonical program `A391993.P4920641651700192990` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391993 has offset 0).

The definition of A391993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391993.P4920641651700192990

`n*(6*n+8)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391993

/-- `n*(6*n+8)` -/
def P4920641651700192990.Spec : Prop :=
  ∀ n, (P4920641651700192990.a n : ℤ) = A391993 n

theorem P4920641651700192990.correct : P4920641651700192990.Spec := by
  intro n
  simp only [A391993]

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

/-! ## A391993.P2765215130542985913

`Δ[lcm(n-1+n, n²+n-1)]`
-/

namespace A391993.P2765215130542985913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) ((n ^ 2 : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A391993.P2765215130542985913

namespace A391993

/-- `Δ[lcm(n-1+n, n²+n-1)]` -/
def P2765215130542985913.Spec : Prop :=
  ∀ n, P2765215130542985913.a n = A391993 n

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

/-! ## A391993.P842908168819021498

`A049452(n)+A008591(n)`
-/

namespace A391993.P842908168819021498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n + A008591 n

end

end A391993.P842908168819021498

namespace A391993

/-- `A049452(n)+A008591(n)` -/
def P842908168819021498.Spec : Prop :=
  ∀ n, P842908168819021498.a n = A391993 n

end A391993

/-! ## A391993.P6696359442029432966

`A049453(n)+A008589(n)`
-/

namespace A391993.P6696359442029432966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n + A008589 n

end

end A391993.P6696359442029432966

namespace A391993

/-- `A049453(n)+A008589(n)` -/
def P6696359442029432966.Spec : Prop :=
  ∀ n, P6696359442029432966.a n = A391993 n

end A391993

/-! ## A391993.P16675109699541510116

`A051866(n)+A008595(n)`
-/

namespace A391993.P16675109699541510116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + A008595 n

end

end A391993.P16675109699541510116

namespace A391993

/-- `A051866(n)+A008595(n)` -/
def P16675109699541510116.Spec : Prop :=
  ∀ n, P16675109699541510116.a n = A391993 n

end A391993

/-!
# A391994: Expansion of (x^2*(3*x - 1))/((x - 1)^4*(x + 1)).

The programs for A391994, the canonical program `A391994.P7886539702032281155` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391994 has offset 0).

The definition of A391994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391994.P7886539702032281155

`(3*n%2+n*((n-3)*n-1))/6`

The canonical program, it is in `Seq.B000.C036`.
-/

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

/-! ## A391994.P16431461175179085531

`A000292(n)-A035608(n)`
-/

namespace A391994.P16431461175179085531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A035608 n

end

end A391994.P16431461175179085531

namespace A391994

/-- `A000292(n)-A035608(n)` -/
def P16431461175179085531.Spec : Prop :=
  ∀ n, P16431461175179085531.a n = A391994 n

end A391994

/-!
# A391995: a(n) = (4*n^3 - 18*n^2 - 4*n + 9*(1 - (-1)^n)) / 48.

The programs for A391995, the canonical program `A391995.P15684201075971885915` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391995 has offset 0).

The definition of A391995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391995.P15684201075971885915

`(4*n^3-18*n²-4*n+9*(1-(-1)^n))/48`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391995

/-- `(4*n^3-18*n²-4*n+9*(1-(-1)^n))/48` -/
def P15684201075971885915.Spec : Prop :=
  ∀ n, P15684201075971885915.a n = (A391995 n : ℚ)

end A391995

/-! ## A391995.P10593779532054765576

`floor(∑[a(n-2)-3+n])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A391995.P10593779532054765576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391995.P10593779532054765576

namespace A391995

/-- `floor(∑[a(n-2)-3+n])` -/
def P10593779532054765576.Spec : Prop :=
  ∀ n, P10593779532054765576.a n = A391995 n

end A391995

/-! ## A391995.P3764671243996923935

`floor(∑[a(n-2)-(3-n)])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A391995.P3764671243996923935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - (3 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391995.P3764671243996923935

namespace A391995

/-- `floor(∑[a(n-2)-(3-n)])` -/
def P3764671243996923935.Spec : Prop :=
  ∀ n, P3764671243996923935.a n = A391995 n

end A391995

/-! ## A391995.P6217849755387689635

`a(n-2)+∑[n-3]+5` with `a(0)=0, a(1)=0`
-/

namespace A391995.P6217849755387689635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A391995.P6217849755387689635

namespace A391995

/-- `a(n-2)+∑[n-3]+5` -/
def P6217849755387689635.Spec : Prop :=
  ∀ n, P6217849755387689635.a n = A391995 n

end A391995

/-! ## A391995.P11185749637375774486

`5-(∑[3-n]-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A391995.P11185749637375774486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  5 - (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2))

end

end A391995.P11185749637375774486

namespace A391995

/-- `5-(∑[3-n]-a(n-2))` -/
def P11185749637375774486.Spec : Prop :=
  ∀ n, P11185749637375774486.a n = A391995 n

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

/-! ## A391995.P9678079352841995255

`A361270(n)+A361273(n)-A361272(n+1)`
-/

namespace A391995.P9678079352841995255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361270 n + (A361273 n - A361272 (n + 1))

end

end A391995.P9678079352841995255

namespace A391995

/-- `A361270(n)+A361273(n)-A361272(n+1)` -/
def P9678079352841995255.Spec : Prop :=
  ∀ n, P9678079352841995255.a n = A391995 n

end A391995

/-!
# A391997: a(n) = Sum_{k=0..n} floor((k/2)^2)*n^2. Row sums of A391996.

The programs for A391997, the canonical program `A391997.P8970929140163323982` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391997 has offset 0).

The definition of A391997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391997.P8970929140163323982

`n²*∑[floor((n/2)²)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A391997

/-- `n²*∑[floor((n/2)²)]` -/
def P8970929140163323982.Spec : Prop :=
  ∀ n, P8970929140163323982.a n = A391997 n

theorem P8970929140163323982.correct : P8970929140163323982.Spec := by
  intro n
  simp only [A391997]

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

The programs for A391998, the canonical program `A391998.P12404897570496427759` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391998 has offset 1).

The definition of A391998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391998.P12404897570496427759

`filter[A392001(n+1), A005171(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A391998

/-- `filter[A392001(n+1), A005171(#)]` -/
def P12404897570496427759.Spec : Prop :=
  ∀ n, P12404897570496427759.a n = A391998 (n + 1)

theorem P12404897570496427759.correct : P12404897570496427759.Spec := by
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

/-! ## A391998.P3574439391137473991

`filter[A392001(n+1), A292438(#)]`
-/

namespace A391998.P3574439391137473991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A391998.P3574439391137473991

namespace A391998

/-- `filter[A392001(n+1), A292438(#)]` -/
def P3574439391137473991.Spec : Prop :=
  ∀ n, P3574439391137473991.a n = A391998 (n + 1)

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

