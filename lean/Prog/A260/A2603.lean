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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A260300: Bisection of A258409: a(n) = A258409(2n+1).

The programs for A260300, there is no canonical definition to state claims against.
-/

/-! ## A260300.P5522508650067050664

`A258409(2*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260300.P5522508650067050664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258409 (2 * (n + 1) + 1)

end

end A260300.P5522508650067050664

/-! ## A260300.P4998863585190163104

`A258409(2*n+1+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260300.P4998863585190163104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258409 (2 * n + 1 + 2)

end

end A260300.P4998863585190163104

/-! ## A260300.P11051913591265215126

`gcd(2*(n+1), A060685(n+1))`
-/

namespace A260300.P11051913591265215126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A060685 (n + 1))

end

end A260300.P11051913591265215126

/-! ## A260300.P10706845299179256417

`2*gcd(n+1, A195508(n+1))`
-/

namespace A260300.P10706845299179256417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n + 1 : ℤ) (A195508 (n + 1))

end

end A260300.P10706845299179256417

/-! ## A260300.P7980974175412299311

`gcd(n+2+n, A057237(2*n+3))`
-/

namespace A260300.P7980974175412299311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 + n : ℤ) (A057237 (2 * n + 3))

end

end A260300.P7980974175412299311

/-! ## A260300.P5307755033582239537

`gcd(2*n+2, A060681(Δ[(n+1)²]))`
-/

namespace A260300.P5307755033582239537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 2 : ℤ) (A060681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A260300.P5307755033582239537

/-! ## A260300.P2182488622080577004

`gcd(A090368(n+2)-1, Δ[n*(n+1)])`
-/

namespace A260300.P2182488622080577004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090368 (n + 2) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A260300.P2182488622080577004

/-! ## A260300.P6168386596616451822

`gcd(Δ[n²]+1, A020639(Δ[n²]+2)-1)`
-/

namespace A260300.P6168386596616451822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) (A020639 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2).toNat - 1)

end

end A260300.P6168386596616451822

/-! ## A260300.P8810164809319796588

`A344006(A326577(n+2))`
-/

namespace A260300.P8810164809319796588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (A326577 (n + 2)).toNat

end

end A260300.P8810164809319796588

/-! ## A260300.P16866838352500357642

`A083218(A258409(n+3+n))`
-/

namespace A260300.P16866838352500357642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083218 (A258409 (n + 3 + n)).toNat

end

end A260300.P16866838352500357642

/-!
# A260301: Expansion of f(-x^3)^3 * psi(x)^3 / psi(x^3)^2 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A260301, there is no canonical definition to state claims against.
-/

/-! ## A260301.P18130082199776329545

`A266684(3*n)`
-/

namespace A260301.P18130082199776329545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266684 (3 * n)

end

end A260301.P18130082199776329545

/-! ## A260301.P14941130134171612861

`A266684(A008585(n))%(n+2)²`
-/

namespace A260301.P14941130134171612861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266684 (A008585 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A260301.P14941130134171612861

/-! ## A260301.P1364207096878330335

`A266684(A008486(n))+A000038(n)`
-/

namespace A260301.P1364207096878330335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266684 (A008486 n).toNat + A000038 n

end

end A260301.P1364207096878330335

/-! ## A260301.P46481858835419226

`A266684(A005843(n)+n)%A086337(n+1)`
-/

namespace A260301.P46481858835419226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266684 (A005843 n + (n : ℤ)).toNat) (A086337 (n + 1))

end

end A260301.P46481858835419226

/-! ## A260301.P5697193636327921168

`A266684(A008585(n))/A076526(A000040(n+1))`
-/

namespace A260301.P5697193636327921168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 (A008585 n).toNat : ℚ) / (A076526 (A000040 (n + 1)).toNat : ℚ)

end

end A260301.P5697193636327921168

/-!
# A260302: Maximum water retention of a number octagon of order n.

The programs for A260302, the canonical program `A260302.P5652294795697804353` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260302 has offset 1).

The definition of A260302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260302.P5652294795697804353

`C(A057427(A004526(n))*A339623(n+1)+1, 2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260302

/-- `C(A057427(A004526(n))*A339623(n+1)+1, 2)` -/
def P5652294795697804353.Spec : Prop :=
  ∀ n, (P5652294795697804353.a n : ℤ) = A260302 (n + 1)

theorem P5652294795697804353.correct : P5652294795697804353.Spec := by
  intro n
  simp only [A260302, Nat.add_sub_cancel]

end A260302

/-! ## A260302.P197431044845943488

`C(A057427(A319410(n))*A339623(n+1)+1, 2)`
-/

namespace A260302.P197431044845943488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057427 (A319410 n).toNat * A339623 (n + 1) + 1).toNat 2

end

end A260302.P197431044845943488

namespace A260302

/-- `C(A057427(A319410(n))*A339623(n+1)+1, 2)` -/
def P197431044845943488.Spec : Prop :=
  ∀ n, (P197431044845943488.a n : ℤ) = A260302 (n + 1)

end A260302

/-! ## A260302.P3021033126504646028

`C(A057427(C(n, 2))*A339623(n+1)+1, 2)`
-/

namespace A260302.P3021033126504646028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057427 (Nat.choose n 2) * A339623 (n + 1) + 1).toNat 2

end

end A260302.P3021033126504646028

namespace A260302

/-- `C(A057427(C(n, 2))*A339623(n+1)+1, 2)` -/
def P3021033126504646028.Spec : Prop :=
  ∀ n, (P3021033126504646028.a n : ℤ) = A260302 (n + 1)

end A260302

/-! ## A260302.P6646665788834642504

`A000217(floor(atan(n))*A339623(n+1))`
-/

namespace A260302.P6646665788834642504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (⌊Real.arctan (n : ℝ)⌋ * A339623 (n + 1)).toNat

end

end A260302.P6646665788834642504

namespace A260302

/-- `A000217(floor(atan(n))*A339623(n+1))` -/
def P6646665788834642504.Spec : Prop :=
  ∀ n, P6646665788834642504.a n = A260302 (n + 1)

end A260302

/-! ## A260302.P6321863874598669641

`A000217(A339623(n+1))*A157928(n)`
-/

namespace A260302.P6321863874598669641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A339623 (n + 1)).toNat * A157928 n

end

end A260302.P6321863874598669641

namespace A260302

/-- `A000217(A339623(n+1))*A157928(n)` -/
def P6321863874598669641.Spec : Prop :=
  ∀ n, P6321863874598669641.a n = A260302 (n + 1)

end A260302

/-! ## A260302.P11450770391038126728

`A000217(A339623(n+1)%A018213(n))`
-/

namespace A260302.P11450770391038126728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A339623 (n + 1)) (A018213 n)).toNat

end

end A260302.P11450770391038126728

namespace A260302

/-- `A000217(A339623(n+1)%A018213(n))` -/
def P11450770391038126728.Spec : Prop :=
  ∀ n, P11450770391038126728.a n = A260302 (n + 1)

end A260302

/-! ## A260302.P7717724477672804014

`A000217(A339623(n+1))%A209263(n)`
-/

namespace A260302.P7717724477672804014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A339623 (n + 1)).toNat) (A209263 n)

end

end A260302.P7717724477672804014

namespace A260302

/-- `A000217(A339623(n+1))%A209263(n)` -/
def P7717724477672804014.Spec : Prop :=
  ∀ n, P7717724477672804014.a n = A260302 (n + 1)

end A260302

/-! ## A260302.P5956849727039773910

`A000217(A339623(n+1))*A057427(∑{p}[n, #])`
-/

namespace A260302.P5956849727039773910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A339623 (n + 1)).toNat * A057427 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A260302.P5956849727039773910

namespace A260302

/-- `A000217(A339623(n+1))*A057427(∑{p}[n, #])` -/
def P5956849727039773910.Spec : Prop :=
  ∀ n, P5956849727039773910.a n = A260302 (n + 1)

end A260302

/-! ## A260302.P1005515822073319591

`char[A038722(n+2)]*A000217(A339623(n+1))`
-/

namespace A260302.P1005515822073319591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000217 (A339623 (n + 1)).toNat

end

end A260302.P1005515822073319591

namespace A260302

/-- `char[A038722(n+2)]*A000217(A339623(n+1))` -/
def P1005515822073319591.Spec : Prop :=
  ∀ n, P1005515822073319591.a n = A260302 (n + 1)

end A260302

/-!
# A260303: For the Collatz (3x+1) iteration starting at k, the sequence lists the smallest k such that prime(n) belongs to the trajectory of k, or 0 if no such k exists.

The programs for A260303, there is no canonical definition to state claims against.
-/

/-! ## A260303.P5919449494244408404

`A261814(p?[comp[n²]])`
-/

namespace A260303.P5919449494244408404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A260303.P5919449494244408404

/-! ## A260303.P11750223900028140337

`A070167(A100484(n+1))`
-/

namespace A260303.P11750223900028140337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A100484 (n + 1)).toNat

end

end A260303.P11750223900028140337

/-! ## A260303.P6433817852455568266

`A261814(A000040(n+1))`
-/

namespace A260303.P6433817852455568266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A000040 (n + 1)).toNat

end

end A260303.P6433817852455568266

/-! ## A260303.P12796697149759332017

`A070167(A001747(n+2))`
-/

namespace A260303.P12796697149759332017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (A001747 (n + 2)).toNat

end

end A260303.P12796697149759332017

/-! ## A260303.P16651479888328417869

`A261814(A008578(n+2))`
-/

namespace A260303.P16651479888328417869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A008578 (n + 2)).toNat

end

end A260303.P16651479888328417869

/-! ## A260303.P1295429265748980917

`A261814(A182986(n+2))`
-/

namespace A260303.P1295429265748980917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A182986 (n + 2)).toNat

end

end A260303.P1295429265748980917

/-! ## A260303.P4937236541514405152

`A261814(eq[1, A003415(n)])`
-/

namespace A260303.P4937236541514405152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260303.P4937236541514405152

/-! ## A260303.P9634217295175038248

`A261814(record[A006530(n+2)])`
-/

namespace A260303.P9634217295175038248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260303.P9634217295175038248

/-! ## A260303.P7213797513882403637

`A261814(record[A014963(n+2)])`
-/

namespace A260303.P7213797513882403637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260303.P7213797513882403637

/-! ## A260303.P10991045462820984969

`A261814(record[A020639(n+2)])`
-/

namespace A260303.P10991045462820984969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260303.P10991045462820984969

/-! ## A260303.P13001178843979816758

`A070167(2*A000040(n+1))`
-/

namespace A260303.P13001178843979816758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (2 * A000040 (n + 1)).toNat

end

end A260303.P13001178843979816758

/-! ## A260303.P15814118905147259254

`A261814(eq[n+1, A129283(n)])`
-/

namespace A260303.P15814118905147259254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260303.P15814118905147259254

/-! ## A260303.P16353311183888689037

`A261814(eq[1, A168036(n)+n])`
-/

namespace A260303.P16353311183888689037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260303.P16353311183888689037

/-! ## A260303.P7187096280095727558

`A261814(eq[1, A129283(n)-n])`
-/

namespace A260303.P7187096280095727558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260303.P7187096280095727558

/-! ## A260303.P5939443431357322133

`A261814(eq[1-n, A168036(n)])`
-/

namespace A260303.P5939443431357322133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260303.P5939443431357322133

/-! ## A260303.P14967606345708676646

`A070167(record[2*A006530(n+2)])`
-/

namespace A260303.P14967606345708676646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260303.P14967606345708676646

/-! ## A260303.P5763991741387166868

`A070167(record[2*A014963(n+2)])`
-/

namespace A260303.P5763991741387166868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070167 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260303.P5763991741387166868

/-!
# A260304: a(n) = 5*a(n-1) - 5*a(n-2) for n>1, a(0)=2, a(1)=3.

The programs for A260304, the canonical program `A260304.P34385759155988327` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260304 has offset 0).

The definition of A260304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-5*a(n-2)` (program `A260304.P34385759155988327`, by `A260304.P34385759155988327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260304.P34385759155988327

`5*a(n-1)-5*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A260304

/-- `5*a(n-1)-5*a(n-2)` -/
def P34385759155988327.Spec : Prop :=
  ∀ n, P34385759155988327.a n = A260304 n

theorem P34385759155988327.correct : P34385759155988327.Spec := by
  intro n
  simp only [A260304]

end A260304

/-! ## A260304.P4265015041911907210

`5*(a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A260304.P4265015041911907210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A260304.P4265015041911907210

namespace A260304

/-- `5*(a(n-1)-a(n-2))` -/
def P4265015041911907210.Spec : Prop :=
  ∀ n, P4265015041911907210.a n = A260304 n

theorem P4265015041911907210.correct : P4265015041911907210.Spec := by
  intro n
  simp only [A260304, Nat.add_sub_cancel, A260304.P4265015041911907210.a, A260304.P34385759155988327.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A260304

/-! ## A260304.P736816913900288894

`∑[A093129(abs(1-n))]`
-/

namespace A260304.P736816913900288894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260304.P736816913900288894

namespace A260304

/-- `∑[A093129(abs(1-n))]` -/
def P736816913900288894.Spec : Prop :=
  ∀ n, P736816913900288894.a n = A260304 n

end A260304

/-! ## A260304.P2965334540496858796

`∑[round(∑[A093129(n)/5])]+2`
-/

namespace A260304.P2965334540496858796
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093129 n : ℚ) / 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A260304.P2965334540496858796

namespace A260304

/-- `∑[round(∑[A093129(n)/5])]+2` -/
def P2965334540496858796.Spec : Prop :=
  ∀ n, P2965334540496858796.a n = A260304 n

end A260304

/-! ## A260304.P3394693975305624841

`A093129(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A260304.P3394693975305624841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A093129 (n - 1) + a (n - 1)

end

end A260304.P3394693975305624841

namespace A260304

/-- `A093129(n-1)+a(n-1)` -/
def P3394693975305624841.Spec : Prop :=
  ∀ n, P3394693975305624841.a n = A260304 n

end A260304

/-! ## A260304.P5562398602638595408

`A020876(n-2)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A260304.P5562398602638595408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A020876 (n - 2) + a (n - 1)

end

end A260304.P5562398602638595408

namespace A260304

/-- `A020876(n-2)+a(n-1)` -/
def P5562398602638595408.Spec : Prop :=
  ∀ n, P5562398602638595408.a n = A260304 n

end A260304

/-! ## A260304.P18049676390508826720

`∑[A093129(round(sqrt(n²+1))-1)]+1`
-/

namespace A260304.P18049676390508826720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A260304.P18049676390508826720

namespace A260304

/-- `∑[A093129(round(sqrt(n²+1))-1)]+1` -/
def P18049676390508826720.Spec : Prop :=
  ∀ n, P18049676390508826720.a n = A260304 n

end A260304

/-! ## A260304.P12080716746268272998

`A020876(n)-2*A093131(n)`
-/

namespace A260304.P12080716746268272998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - 2 * A093131 n

end

end A260304.P12080716746268272998

namespace A260304

/-- `A020876(n)-2*A093131(n)` -/
def P12080716746268272998.Spec : Prop :=
  ∀ n, P12080716746268272998.a n = A260304 n

end A260304

/-! ## A260304.P14005150298388670516

`2*A093129(n)-A093131(n)`
-/

namespace A260304.P14005150298388670516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093129 n - A093131 n

end

end A260304.P14005150298388670516

namespace A260304

/-- `2*A093129(n)-A093131(n)` -/
def P14005150298388670516.Spec : Prop :=
  ∀ n, P14005150298388670516.a n = A260304 n

end A260304

/-! ## A260304.P13018364839281387864

`A098111(n)+A081567(n)`
-/

namespace A260304.P13018364839281387864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098111 n + A081567 n

end

end A260304.P13018364839281387864

namespace A260304

/-- `A098111(n)+A081567(n)` -/
def P13018364839281387864.Spec : Prop :=
  ∀ n, P13018364839281387864.a n = A260304 n

end A260304

/-! ## A260304.P94277421452964557

`A098111(n)+Δ[A093129(n)]`
-/

namespace A260304.P94277421452964557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098111 n + (f1 (n + 1) - f1 n)

end

end A260304.P94277421452964557

namespace A260304

/-- `A098111(n)+Δ[A093129(n)]` -/
def P94277421452964557.Spec : Prop :=
  ∀ n, P94277421452964557.a n = A260304 n

end A260304

/-! ## A260304.P15895057117365336751

`2*A093129(n+1)-A052936(n+1)`
-/

namespace A260304.P15895057117365336751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093129 (n + 1) - A052936 (n + 1)

end

end A260304.P15895057117365336751

namespace A260304

/-- `2*A093129(n+1)-A052936(n+1)` -/
def P15895057117365336751.Spec : Prop :=
  ∀ n, P15895057117365336751.a n = A260304 n

end A260304

/-! ## A260304.P12531194311559923662

`A020876(n)+A081567(n)-A030191(n)`
-/

namespace A260304.P12531194311559923662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n + (A081567 n - A030191 n)

end

end A260304.P12531194311559923662

namespace A260304

/-- `A020876(n)+A081567(n)-A030191(n)` -/
def P12531194311559923662.Spec : Prop :=
  ∀ n, P12531194311559923662.a n = A260304 n

end A260304

/-! ## A260304.P8036399116828583074

`A020876(n)+A098111(n)-A093129(n)`
-/

namespace A260304.P8036399116828583074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n + (A098111 n - A093129 n)

end

end A260304.P8036399116828583074

namespace A260304

/-- `A020876(n)+A098111(n)-A093129(n)` -/
def P8036399116828583074.Spec : Prop :=
  ∀ n, P8036399116828583074.a n = A260304 n

end A260304

/-! ## A260304.P18049825031907926692

`A093129(n+1)+A081567(n)-A030191(n)`
-/

namespace A260304.P18049825031907926692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) + (A081567 n - A030191 n)

end

end A260304.P18049825031907926692

namespace A260304

/-- `A093129(n+1)+A081567(n)-A030191(n)` -/
def P18049825031907926692.Spec : Prop :=
  ∀ n, P18049825031907926692.a n = A260304 n

end A260304

/-! ## A260304.P4162405325600737673

`A093129(n+1)+A098111(n)-A093129(n)`
-/

namespace A260304.P4162405325600737673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) + (A098111 n - A093129 n)

end

end A260304.P4162405325600737673

namespace A260304

/-- `A093129(n+1)+A098111(n)-A093129(n)` -/
def P4162405325600737673.Spec : Prop :=
  ∀ n, P4162405325600737673.a n = A260304 n

end A260304

/-! ## A260304.P12079593748143058419

`A217777(2*n+1)+A098111(n+1)`
-/

namespace A260304.P12079593748143058419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n + 1) + A098111 (n + 1)

end

end A260304.P12079593748143058419

namespace A260304

/-- `A217777(2*n+1)+A098111(n+1)` -/
def P12079593748143058419.Spec : Prop :=
  ∀ n, P12079593748143058419.a n = A260304 n

end A260304

/-! ## A260304.P15685899604165819722

`A020876(n+1)+A081567(n)-A039717(n+2)`
-/

namespace A260304.P15685899604165819722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 (n + 1) + (A081567 n - A039717 (n + 2))

end

end A260304.P15685899604165819722

namespace A260304

/-- `A020876(n+1)+A081567(n)-A039717(n+2)` -/
def P15685899604165819722.Spec : Prop :=
  ∀ n, P15685899604165819722.a n = A260304 n

end A260304

/-!
# A260306: Numerators in Ramanujan's asymptotic expansion of theta(n), defined by Sum_{k=0..n-1} n^k/k! + theta(n)*n^n/n! = exp(n)/2.

The programs for A260306, there is no canonical definition to state claims against.
-/

/-! ## A260306.P3628151955096467987

`3*A000007(n)-A090804(n)`
-/

namespace A260306.P3628151955096467987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000007 n - A090804 n

end

end A260306.P3628151955096467987

/-! ## A260306.P10413620144120061792

`A065973(n)%5-A090804(n)`
-/

namespace A260306.P10413620144120061792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065973 n) 5 - A090804 n

end

end A260306.P10413620144120061792

/-! ## A260306.P15715405873759413890

`3/2*A000038(n)-A090804(n)`
-/

namespace A260306.P15715405873759413890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A000038 n : ℚ) - (A090804 n : ℚ)

end

end A260306.P15715405873759413890

/-! ## A260306.P2854686824194280752

`A055998(A151933(n))-A090804(n)`
-/

namespace A260306.P2854686824194280752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (A151933 n).toNat - A090804 n

end

end A260306.P2854686824194280752

/-! ## A260306.P9903704925356071440

`A090804(n)/A078343(A151934(n))`
-/

namespace A260306.P9903704925356071440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090804 n : ℚ) / (A078343 (A151934 n).toNat : ℚ)

end

end A260306.P9903704925356071440

/-!
# A260307: a(n) = a(n-1) + a(n-2) - a(n-3) + a(n-6) - a(n-7) - a(n-8) + a(n-9) with a(0) - a(8) as shown below.

The programs for A260307, the canonical program `A260307.P1339697567186230125` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260307 has offset 0).

The definition of A260307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260307.P1339697567186230125

`a(n-2)+a(n-6)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=5, a(6)=8, a(7)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A260307

/-- `a(n-2)+a(n-6)-a(n-8)` -/
def P1339697567186230125.Spec : Prop :=
  ∀ n, P1339697567186230125.a n = A260307 n

theorem P1339697567186230125.correct : P1339697567186230125.Spec := by
  intro n
  simp only [A260307]

end A260307

/-! ## A260307.P2125896597094917059

`A260708(n+1)-A260708(n)`
-/

namespace A260307.P2125896597094917059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 (n + 1) - A260708 n

end

end A260307.P2125896597094917059

namespace A260307

/-- `A260708(n+1)-A260708(n)` -/
def P2125896597094917059.Spec : Prop :=
  ∀ n, P2125896597094917059.a n = A260307 n

end A260307

/-! ## A260307.P12012979988317220273

`Δ[floor((n+1)/3*A007494(n))]`
-/

namespace A260307.P12012979988317220273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 3 * (A007494 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260307.P12012979988317220273

namespace A260307

/-- `Δ[floor((n+1)/3*A007494(n))]` -/
def P12012979988317220273.Spec : Prop :=
  ∀ n, P12012979988317220273.a n = A260307 n

end A260307

/-! ## A260307.P13695749122333702003

`A264041(n+1)-∪[A264041(n+1), A014105(n)]`
-/

namespace A260307.P13695749122333702003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A260307.P13695749122333702003

namespace A260307

/-- `A264041(n+1)-∪[A264041(n+1), A014105(n)]` -/
def P13695749122333702003.Spec : Prop :=
  ∀ n, P13695749122333702003.a n = A260307 n

end A260307

/-! ## A260307.P10481468101232671404

`Δ[A260708(n)]`
-/

namespace A260307.P10481468101232671404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260307.P10481468101232671404

namespace A260307

/-- `Δ[A260708(n)]` -/
def P10481468101232671404.Spec : Prop :=
  ∀ n, P10481468101232671404.a n = A260307 n

end A260307

/-! ## A260307.P12865991812912768450

`floor(Δ[A195013(n+1)]/3)+1+n`
-/

namespace A260307.P12865991812912768450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋ + 1 + (n : ℤ)

end

end A260307.P12865991812912768450

namespace A260307

/-- `floor(Δ[A195013(n+1)]/3)+1+n` -/
def P12865991812912768450.Spec : Prop :=
  ∀ n, P12865991812912768450.a n = A260307 n

end A260307

/-! ## A260307.P16350058418705411858

`Δ[A002264(∑[n]%(n+1))]+n+1`
-/

namespace A260307.P16350058418705411858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A260307.P16350058418705411858

namespace A260307

/-- `Δ[A002264(∑[n]%(n+1))]+n+1` -/
def P16350058418705411858.Spec : Prop :=
  ∀ n, P16350058418705411858.a n = A260307 n

end A260307

/-! ## A260307.P3032438849288793882

`Δ[A008620(∑[n+1]%(n+1))]+n+1`
-/

namespace A260307.P3032438849288793882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A260307.P3032438849288793882

namespace A260307

/-- `Δ[A008620(∑[n+1]%(n+1))]+n+1` -/
def P3032438849288793882.Spec : Prop :=
  ∀ n, P3032438849288793882.a n = A260307 n

end A260307

/-! ## A260307.P8547435028749724749

`Δ[A260699(n)+A008615(n)]`
-/

namespace A260307.P8547435028749724749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n + A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260307.P8547435028749724749

namespace A260307

/-- `Δ[A260699(n)+A008615(n)]` -/
def P8547435028749724749.Spec : Prop :=
  ∀ n, P8547435028749724749.a n = A260307 n

end A260307

/-! ## A260307.P16225177324164278800

`Δ[A008620(A080512(n+1)-(n+1))]+n+1`
-/

namespace A260307.P16225177324164278800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A080512 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A260307.P16225177324164278800

namespace A260307

/-- `Δ[A008620(A080512(n+1)-(n+1))]+n+1` -/
def P16225177324164278800.Spec : Prop :=
  ∀ n, P16225177324164278800.a n = A260307 n

end A260307

/-! ## A260307.P16024683760419641248

`Δ[A000982(n+1)-A242112(n)]`
-/

namespace A260307.P16024683760419641248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) - A242112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260307.P16024683760419641248

namespace A260307

/-- `Δ[A000982(n+1)-A242112(n)]` -/
def P16024683760419641248.Spec : Prop :=
  ∀ n, P16024683760419641248.a n = A260307 n

end A260307

/-! ## A260307.P3869710783879630769

`A008620(A113497(n+1)+n)`
-/

namespace A260307.P3869710783879630769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A113497 (n + 1) + (n : ℤ)).toNat

end

end A260307.P3869710783879630769

namespace A260307

/-- `A008620(A113497(n+1)+n)` -/
def P3869710783879630769.Spec : Prop :=
  ∀ n, P3869710783879630769.a n = A260307 n

end A260307

/-!
# A260308: Expansion of psi(x) * phi(x^3) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A260308, there is no canonical definition to state claims against.
-/

/-! ## A260308.P6982977188830686198

`A259668(2*n)`
-/

namespace A260308.P6982977188830686198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259668 (2 * n)

end

end A260308.P6982977188830686198

/-! ## A260308.P13963708273637437991

`A129402(4*n)`
-/

namespace A260308.P13963708273637437991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (4 * n)

end

end A260308.P13963708273637437991

/-! ## A260308.P8944422736094590128

`A134177(4*n)`
-/

namespace A260308.P8944422736094590128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (4 * n)

end

end A260308.P8944422736094590128

/-! ## A260308.P5330843152071008467

`A128580(4*n)`
-/

namespace A260308.P5330843152071008467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (4 * n)

end

end A260308.P5330843152071008467

/-! ## A260308.P15735411786304373758

`A190615(4*n)`
-/

namespace A260308.P15735411786304373758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (4 * n)

end

end A260308.P15735411786304373758

/-! ## A260308.P14849072503415965731

`A115660(8*n+1)`
-/

namespace A260308.P14849072503415965731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (8 * n + 1)

end

end A260308.P14849072503415965731

/-! ## A260308.P10575733530194804716

`A128581(8*n+1)`
-/

namespace A260308.P10575733530194804716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (8 * n + 1)

end

end A260308.P10575733530194804716

/-! ## A260308.P1554636499835406594

`A192013(8*n+1)`
-/

namespace A260308.P1554636499835406594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (8 * n + 1)

end

end A260308.P1554636499835406594

/-! ## A260308.P12392786851245739140

`A261118(2*n)`
-/

namespace A260308.P12392786851245739140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261118 (2 * n)

end

end A260308.P12392786851245739140

/-! ## A260308.P4279686704083376425

`A261118(A005843(n))%A016825(n)`
-/

namespace A260308.P4279686704083376425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261118 (A005843 n).toNat) (A016825 n)

end

end A260308.P4279686704083376425

/-! ## A260308.P17828080910423423247

`A257920(3*n)`
-/

namespace A260308.P17828080910423423247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257920 (3 * n)

end

end A260308.P17828080910423423247

/-! ## A260308.P4273514868843608328

`A257921(6*n)`
-/

namespace A260308.P4273514868843608328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (6 * n)

end

end A260308.P4273514868843608328

/-! ## A260308.P3773251255325180292

`A261119(6*n)`
-/

namespace A260308.P3773251255325180292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261119 (6 * n)

end

end A260308.P3773251255325180292

/-! ## A260308.P14951232686733484226

`A000377(8*n+1)`
-/

namespace A260308.P14951232686733484226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (8 * n + 1)

end

end A260308.P14951232686733484226

/-! ## A260308.P17682203320230805811

`A258590(12*n)`
-/

namespace A260308.P17682203320230805811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258590 (12 * n)

end

end A260308.P17682203320230805811

/-!
# A260309: Expansion of phi(q) * phi(-q^6) in powers of q where phi() is a Ramanujan theta function.

The programs for A260309, there is no canonical definition to state claims against.
-/

/-! ## A260309.P11821036428709641122

`(-1)^floor(n/2)*A046113(n)`
-/

namespace A260309.P11821036428709641122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A046113 n : ℚ)

end

end A260309.P11821036428709641122

/-! ## A260309.P10341876613408757826

`A046113(n)*A057077(n)`
-/

namespace A260309.P10341876613408757826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A057077 n

end

end A260309.P10341876613408757826

/-! ## A260309.P2279126237417664744

`A057079(n)*A229723(n)`
-/

namespace A260309.P2279126237417664744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A229723 n

end

end A260309.P2279126237417664744

/-! ## A260309.P10822819753178660250

`A132954(n)*A229723(n)`
-/

namespace A260309.P10822819753178660250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A229723 n

end

end A260309.P10822819753178660250

/-! ## A260309.P7241115464638246074

`A046113(n)*A062157(A008619(n))`
-/

namespace A260309.P7241115464638246074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A062157 (A008619 n).toNat

end

end A260309.P7241115464638246074

/-! ## A260309.P14560131296106580922

`A046113(n)*A087204(A028242(n)+n)`
-/

namespace A260309.P14560131296106580922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A087204 (A028242 n + (n : ℤ)).toNat

end

end A260309.P14560131296106580922

/-! ## A260309.P5094743967185256287

`(A084101(n+1)-2)*A108563(2*n)`
-/

namespace A260309.P5094743967185256287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084101 (n + 1) - 2) * A108563 (2 * n)

end

end A260309.P5094743967185256287

/-! ## A260309.P13432054068878670243

`A046113(n)*A087204(A028242(3*n))`
-/

namespace A260309.P13432054068878670243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A087204 (A028242 (3 * n)).toNat

end

end A260309.P13432054068878670243

/-! ## A260309.P14636314333865994421

`A010892(A004526(3*n))*A108563(2*n)`
-/

namespace A260309.P14636314333865994421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A004526 (3 * n)).toNat * A108563 (2 * n)

end

end A260309.P14636314333865994421

/-! ## A260309.P926965635350003950

`A046113(n)*A081729(A140091(n))`
-/

namespace A260309.P926965635350003950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A081729 (A140091 n).toNat

end

end A260309.P926965635350003950

/-! ## A260309.P11339034783913570744

`A046113(n)*A133988(A000217(n)-n)`
-/

namespace A260309.P11339034783913570744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A133988 (A000217 n - (n : ℤ)).toNat

end

end A260309.P11339034783913570744

/-! ## A260309.P9149526076819299613

`A046113(n)*A133988(A000217(n+11))`
-/

namespace A260309.P9149526076819299613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n * A133988 (A000217 (n + 11)).toNat

end

end A260309.P9149526076819299613

/-!
# A260311: Difference sequence of A260317.

The programs for A260311, there is no canonical definition to state claims against.
-/

/-! ## A260311.P153504425262338920

`Δ[A260317(n+1)]`
-/

namespace A260311.P153504425262338920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260311.P153504425262338920

/-! ## A260311.P3369203584896826860

`Δ[record[A260317(A126759(n))]]`
-/

namespace A260311.P3369203584896826860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260311.P3369203584896826860

/-! ## A260311.P2654878332181590415

`Δ[record[A260317(A152271(n))]]`
-/

namespace A260311.P2654878332181590415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260311.P2654878332181590415

/-! ## A260311.P16081951671716671756

`abs(Δ[A260317(A005408(n)-n)])`
-/

namespace A260311.P16081951671716671756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260311.P16081951671716671756

/-! ## A260311.P689012594622672239

`A260317(n+2)-A260317(n+1)`
-/

namespace A260311.P689012594622672239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (n + 2) - A260317 (n + 1)

end

end A260311.P689012594622672239

/-! ## A260311.P8001507147450643157

`Δ[A260317(A005408(n)-n)]%A171231(n)`
-/

namespace A260311.P8001507147450643157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A171231 n)

end

end A260311.P8001507147450643157

/-! ## A260311.P1437677490566256760

`Δ[A260317(A005408(n)-n)]^(A036563(n)%2)`
-/

namespace A260311.P1437677490566256760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A036563 n) 2 : ℤ)

end

end A260311.P1437677490566256760

/-!
# A260313: Expansion of phi(x)^2 / psi(x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A260313, there is no canonical definition to state claims against.
-/

/-! ## A260313.P8108799059683148980

`A153172(n)+2*A153174(n)`
-/

namespace A260313.P8108799059683148980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 n + 2 * A153174 n

end

end A260313.P8108799059683148980

/-! ## A260313.P10466148179568043249

`2*A153172(n)-A006306(n)`
-/

namespace A260313.P10466148179568043249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153172 n - A006306 n

end

end A260313.P10466148179568043249

/-! ## A260313.P839347822216789009

`A006306(n)+4*A153174(n)`
-/

namespace A260313.P839347822216789009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006306 n + 4 * A153174 n

end

end A260313.P839347822216789009

/-! ## A260313.P11313861460921067663

`A153172(n)+A153174(n)+A153174(n)%A153176(n)`
-/

namespace A260313.P11313861460921067663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153172 n + (A153174 n + Int.tmod (A153174 n) (A153176 n))

end

end A260313.P11313861460921067663

/-! ## A260313.P12495826430624946824

`(A153172(n)-A006306(n))/2+A153174(n)+A153172(n)`
-/

namespace A260313.P12495826430624946824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153172 n - A006306 n : ℚ) / 2 + (A153174 n + A153172 n : ℚ)

end

end A260313.P12495826430624946824

/-!
# A260314: Expansion of phi(x)^2 / phi(-x^2) in powers of x where phi() is a Ramanujan theta function.

The programs for A260314, there is no canonical definition to state claims against.
-/

/-! ## A260314.P7009955870402976144

`A153176(2*n)`
-/

namespace A260314.P7009955870402976144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153176 (2 * n)

end

end A260314.P7009955870402976144

/-! ## A260314.P14005000815270851585

`record[A153176(and(n, n+1))]`
-/

namespace A260314.P14005000815270851585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153176 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260314.P14005000815270851585

/-! ## A260314.P8024346562442546345

`record[A153176(n)/A000034(n)]`
-/

namespace A260314.P8024346562442546345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260314.P8024346562442546345

/-! ## A260314.P5308791028547236596

`record[A153176(n)/A006519(n+1)]`
-/

namespace A260314.P5308791028547236596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260314.P5308791028547236596

/-! ## A260314.P1591424190736252828

`record[A153176(n)/(A027760(n+1)-1)]`
-/

namespace A260314.P1591424190736252828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153176 n : ℚ) / (A027760 (n + 1) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260314.P1591424190736252828

/-! ## A260314.P1310887004191741839

`A153176(n+n)%A153176(A250040(n+2))`
-/

namespace A260314.P1310887004191741839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153176 (n + n)) (A153176 (A250040 (n + 2)).toNat)

end

end A260314.P1310887004191741839

/-!
# A260316: n/3 if 3 divides n, else n-1.

The programs for A260316, the canonical program `A260316.P16468644166714572972` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260316 has offset 0).

The definition of A260316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260316.P16468644166714572972

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3, a(5)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A260316

/-- `2*a(n-3)-a(n-6)` -/
def P16468644166714572972.Spec : Prop :=
  ∀ n, P16468644166714572972.a n = A260316 n

theorem P16468644166714572972.correct : P16468644166714572972.Spec := by
  intro n
  simp only [A260316]

end A260316

/-! ## A260316.P12287350529265276104

`ceil((n-1)/gcd(3, n))`
-/

namespace A260316.P12287350529265276104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 3 n : ℚ)⌉

end

end A260316.P12287350529265276104

namespace A260316

/-- `ceil((n-1)/gcd(3, n))` -/
def P12287350529265276104.Spec : Prop :=
  ∀ n, P12287350529265276104.a n = A260316 n

end A260316

/-! ## A260316.P13438595017851909336

`lcm(3, n)/3-char[comp[3*n]]`
-/

namespace A260316.P13438595017851909336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n : ℚ) / 3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A260316.P13438595017851909336

namespace A260316

/-- `lcm(3, n)/3-char[comp[3*n]]` -/
def P13438595017851909336.Spec : Prop :=
  ∀ n, P13438595017851909336.a n = (A260316 n : ℚ)

end A260316

/-! ## A260316.P18050812280357878135

`n-gcd(2*n, round(2*n/3))`
-/

namespace A260316.P18050812280357878135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.gcd (2 * n : ℤ) (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) : ℤ)

end

end A260316.P18050812280357878135

namespace A260316

/-- `n-gcd(2*n, round(2*n/3))` -/
def P18050812280357878135.Spec : Prop :=
  ∀ n, P18050812280357878135.a n = A260316 n

end A260316

/-! ## A260316.P3971995719967422314

`n-1-Δ[floor((n-1)/3)²]`
-/

namespace A260316.P3971995719967422314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 3⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (f1 (n + 1) - f1 n)

end

end A260316.P3971995719967422314

namespace A260316

/-- `n-1-Δ[floor((n-1)/3)²]` -/
def P3971995719967422314.Spec : Prop :=
  ∀ n, P3971995719967422314.a n = A260316 n

end A260316

/-! ## A260316.P60290338254331380

`round((n-1)/gcd(n+3, n+3+n))`
-/

namespace A260316.P60290338254331380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / (Nat.gcd (n + 3) (n + 3 + n) : ℚ))

end

end A260316.P60290338254331380

namespace A260316

/-- `round((n-1)/gcd(n+3, n+3+n))` -/
def P60290338254331380.Spec : Prop :=
  ∀ n, P60290338254331380.a n = A260316 n

end A260316

/-! ## A260316.P11611904041943897815

`(3*n/gcd((n+3)², n²))%Δ[n²]`
-/

namespace A260316.P11611904041943897815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 * n : ℚ) / (Nat.gcd ((n + 3) ^ 2) (n ^ 2) : ℚ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A260316.P11611904041943897815

namespace A260316

/-- `(3*n/gcd((n+3)², n²))%Δ[n²]` -/
def P11611904041943897815.Spec : Prop :=
  ∀ n, P11611904041943897815.a n = A260316 n

end A260316

/-! ## A260316.P11665846361892411184

`A130724(n)%Δ[n²]`
-/

namespace A260316.P11665846361892411184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130724 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A260316.P11665846361892411184

namespace A260316

/-- `A130724(n)%Δ[n²]` -/
def P11665846361892411184.Spec : Prop :=
  ∀ n, P11665846361892411184.a n = A260316 n

end A260316

/-! ## A260316.P15551495868981655365

`A004483(n)%A051495(n)`
-/

namespace A260316.P15551495868981655365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004483 n) (A051495 n)

end

end A260316.P15551495868981655365

namespace A260316

/-- `A004483(n)%A051495(n)` -/
def P15551495868981655365.Spec : Prop :=
  ∀ n, P15551495868981655365.a n = A260316 n

end A260316

/-! ## A260316.P9627891254551388743

`A390310(n)%A350667(n)`
-/

namespace A260316.P9627891254551388743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390310 n) (A350667 n)

end

end A260316.P9627891254551388743

namespace A260316

/-- `A390310(n)%A350667(n)` -/
def P9627891254551388743.Spec : Prop :=
  ∀ n, P9627891254551388743.a n = A260316 n

end A260316

/-! ## A260316.P8013043550922738231

`A226107(A006369(n)+1)`
-/

namespace A260316.P8013043550922738231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A006369 n + 1).toNat

end

end A260316.P8013043550922738231

namespace A260316

/-- `A226107(A006369(n)+1)` -/
def P8013043550922738231.Spec : Prop :=
  ∀ n, P8013043550922738231.a n = A260316 n

end A260316

/-! ## A260316.P3212489539542719970

`A226107(A265667(n+1))`
-/

namespace A260316.P3212489539542719970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 (A265667 (n + 1)).toNat

end

end A260316.P3212489539542719970

namespace A260316

/-- `A226107(A265667(n+1))` -/
def P3212489539542719970.Spec : Prop :=
  ∀ n, P3212489539542719970.a n = A260316 n

end A260316

/-! ## A260316.P13131459433064818583

`A214394(2*n)%(n+1)`
-/

namespace A260316.P13131459433064818583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214394 (2 * n)) (n + 1 : ℤ)

end

end A260316.P13131459433064818583

namespace A260316

/-- `A214394(2*n)%(n+1)` -/
def P13131459433064818583.Spec : Prop :=
  ∀ n, P13131459433064818583.a n = A260316 n

end A260316

/-! ## A260316.P2520552342611106905

`A283443(2*n)%(2*n+1)`
-/

namespace A260316.P2520552342611106905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283443 (2 * n)) (2 * n + 1 : ℤ)

end

end A260316.P2520552342611106905

namespace A260316

/-- `A283443(2*n)%(2*n+1)` -/
def P2520552342611106905.Spec : Prop :=
  ∀ n, P2520552342611106905.a n = A260316 n

end A260316

/-! ## A260316.P4542464469011418237

`abs(A135997(2*n+1)-A135997(n+1))`
-/

namespace A260316.P4542464469011418237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135997 (2 * n + 1) - A135997 (n + 1)|

end

end A260316.P4542464469011418237

namespace A260316

/-- `abs(A135997(2*n+1)-A135997(n+1))` -/
def P4542464469011418237.Spec : Prop :=
  ∀ n, P4542464469011418237.a n = A260316 n

end A260316

/-!
# A260317: Numbers not of the form v(m) + v(n), where v = A001950 (upper Wythoff numbers) and 1 <= m <= n - 1, for n >= 2.

The programs for A260317, there is no canonical definition to state claims against.
-/

/-! ## A260317.P12499094664278983736

`∑[A260311(C(2, n)+n)]`
-/

namespace A260317.P12499094664278983736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260317.P12499094664278983736

/-! ## A260317.P4515637114682022941

`∑[A260311(gcd(n, C(2, n)))]`
-/

namespace A260317.P4515637114682022941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (Nat.gcd n (Nat.choose 2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260317.P4515637114682022941

/-! ## A260317.P9111723758365507874

`∑[A260311(ceil(abs(γ-n)))]`
-/

namespace A260317.P9111723758365507874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260317.P9111723758365507874

/-! ## A260317.P7577484276420500991

`A260311(n)+a(n-1)` with `a(0)=1`
-/

namespace A260317.P7577484276420500991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260311 n + a (n - 1)

end

end A260317.P7577484276420500991

/-! ## A260317.P10607681644245137350

`lt[A080844(A289207(n+1)), 2]+1`
-/

namespace A260317.P10607681644245137350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080844 (A289207 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260317.P10607681644245137350

/-! ## A260317.P8562882032066774225

`∑[A260311(n+1)]+1-A260311(n+1)`
-/

namespace A260317.P8562882032066774225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A260311 (n + 1))

end

end A260317.P8562882032066774225

/-! ## A260317.P17134940008781831460

`∑[A260311(n-A102683((4*a(n-1))²))]-1` with `a(0)=2`
-/

namespace A260317.P17134940008781831460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A260311 ((n : ℤ) - A102683 ((4 * f1 (n - 1)) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260317.P17134940008781831460

/-!
# A260318: Number of doubly symmetric characteristic solutions to the n-queens problem.

The programs for A260318, there is no canonical definition to state claims against.
-/

/-! ## A260318.P17172332158053776139

`ceil(A033148(n+1)/2)`
-/

namespace A260318.P17172332158053776139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033148 (n + 1) : ℚ) / 2⌉

end

end A260318.P17172332158053776139

/-! ## A260318.P1415690873534880171

`A033148(n+1)/A186181(n)`
-/

namespace A260318.P1415690873534880171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (A186181 n : ℚ)

end

end A260318.P1415690873534880171

/-! ## A260318.P9241475688520575201

`A033148(n+1)/A329683(n)`
-/

namespace A260318.P9241475688520575201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (A329683 n : ℚ)

end

end A260318.P9241475688520575201

/-! ## A260318.P13536622895957209842

`A033148(n+1)/A036453(n+1)`
-/

namespace A260318.P13536622895957209842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A260318.P13536622895957209842

/-! ## A260318.P7483456452703635756

`A033148(n+1)/A078832(n+1)`
-/

namespace A260318.P7483456452703635756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (A078832 (n + 1) : ℚ)

end

end A260318.P7483456452703635756

/-! ## A260318.P15608077955779587974

`A033148(n+1)/A104435(n+1)`
-/

namespace A260318.P15608077955779587974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (A104435 (n + 1) : ℚ)

end

end A260318.P15608077955779587974

/-! ## A260318.P8427445501224793423

`A033148(n+1)/A358619(n+1)`
-/

namespace A260318.P8427445501224793423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (A358619 (n + 1) : ℚ)

end

end A260318.P8427445501224793423

/-! ## A260318.P14854196559316309632

`A033148(n+1)/gcd(2, A046523(n+1))`
-/

namespace A260318.P14854196559316309632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (n + 1) : ℚ) / (Int.gcd 2 (A046523 (n + 1)) : ℚ)

end

end A260318.P14854196559316309632

/-! ## A260318.P64003555089805277

`round(A033148(n+1)/A020639(4*(n+1)))`
-/

namespace A260318.P64003555089805277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033148 (n + 1) : ℚ) / (A020639 (4 * (n + 1)) : ℚ))

end

end A260318.P64003555089805277

/-!
# A260319: Number of singly symmetric characteristic solutions to the n-queens problem.

The programs for A260319, there is no canonical definition to state claims against.
-/

/-! ## A260319.P6795616159968508220

`(A032522(n+1)-A033148(n+1))/4`
-/

namespace A260319.P6795616159968508220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032522 (n + 1) - A033148 (n + 1) : ℚ) / 4

end

end A260319.P6795616159968508220

/-! ## A260319.P15911385987074163543

`A002562(n+1)-(A260320(n+1)+A260318(n+1))`
-/

namespace A260319.P15911385987074163543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002562 (n + 1) - (A260320 (n + 1) + A260318 (n + 1))

end

end A260319.P15911385987074163543

/-!
# A260320: Number of asymmetric characteristic solutions to the n-queens problem.

The programs for A260320, there is no canonical definition to state claims against.
-/

/-! ## A260320.P5597401046143607092

`A002562(n+1)-(A260319(n+1)+A260318(n+1))`
-/

namespace A260320.P5597401046143607092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002562 (n + 1) - (A260319 (n + 1) + A260318 (n + 1))

end

end A260320.P5597401046143607092

/-! ## A260320.P10564789203158982594

`A279484(A206950(n)+2)`
-/

namespace A260320.P10564789203158982594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 (A206950 n + 2).toNat

end

end A260320.P10564789203158982594

/-! ## A260320.P13105166469825113146

`A051907(∑[A000211(n)+1])`
-/

namespace A260320.P13105166469825113146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051907 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260320.P13105166469825113146

/-! ## A260320.P14585099911139466609

`A048720(n)+∑[A124482(n+1)]`
-/

namespace A260320.P14585099911139466609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260320.P14585099911139466609

/-! ## A260320.P14975724921807032574

`A109042(n)+∑[A124482(n+1)]`
-/

namespace A260320.P14975724921807032574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109042 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260320.P14975724921807032574

/-!
# A260326: Common denominator of coefficients in Nørlund's polynomial D_{2n}(x).

The programs for A260326, there is no canonical definition to state claims against.
-/

/-! ## A260326.P4446223488964416810

`(2*n+1)*A163394(2*n+1)`
-/

namespace A260326.P4446223488964416810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A163394 (2 * n + 1)

end

end A260326.P4446223488964416810

/-! ## A260326.P9588570566652192105

`A290030(2*n)`
-/

namespace A260326.P9588570566652192105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290030 (2 * n)

end

end A260326.P9588570566652192105

/-! ## A260326.P3207910007906532219

`abs(A290030(log2(A000302(n))))`
-/

namespace A260326.P3207910007906532219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290030 (SequenceMachineLib.roundAway (Real.logb 2 (A000302 n : ℝ))).toNat|

end

end A260326.P3207910007906532219

/-! ## A260326.P9641905897934741531

`abs(A290030(record[A237420(n)]))`
-/

namespace A260326.P9641905897934741531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A260326.P9641905897934741531

/-! ## A260326.P15162547124906395287

`abs(A290030(record[A046666(n+2)]))`
-/

namespace A260326.P15162547124906395287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A290030 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A260326.P15162547124906395287

/-! ## A260326.P4629528842036093906

`lcm(A290030(A004277(n)), A290030(n))`
-/

namespace A260326.P4629528842036093906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A290030 (A004277 n).toNat) (A290030 n)

end

end A260326.P4629528842036093906

/-! ## A260326.P1289016522194262202

`A290030(n+n)+A100050(A298026(n+1))`
-/

namespace A260326.P1289016522194262202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290030 (n + n) + A100050 (A298026 (n + 1)).toNat

end

end A260326.P1289016522194262202

/-! ## A260326.P12818275883561462075

`A290030(n+n)+A181587(A152657(A152657(n+1)+1)+1)`
-/

namespace A260326.P12818275883561462075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290030 (n + n) + A181587 (A152657 (A152657 (n + 1) + 1).toNat + 1).toNat

end

end A260326.P12818275883561462075

/-! ## A260326.P5725660437524665385

`A001898(2*n)/A122803(n)²`
-/

namespace A260326.P5725660437524665385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 (2 * n) : ℚ) / (A122803 n ^ 2 : ℚ)

end

end A260326.P5725660437524665385

/-! ## A260326.P3826316628390483229

`A001898(2*n)/A122803(2*n)`
-/

namespace A260326.P3826316628390483229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 (2 * n) : ℚ) / (A122803 (2 * n) : ℚ)

end

end A260326.P3826316628390483229

/-!
# A260328: Numerator of generalized Bernoulli number B_n^{(n-1)}.

The programs for A260328, there is no canonical definition to state claims against.
-/

/-! ## A260328.P17661016195880123392

`A126853(A130284(n+1))`
-/

namespace A260328.P17661016195880123392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126853 (A130284 (n + 1)).toNat

end

end A260328.P17661016195880123392

/-!
# A260330: Bond percolation coefficients S_0 for square lattice.

The programs for A260330, there is no canonical definition to state claims against.
-/

/-! ## A260330.P1307936206919099712

`A126120(n+2)-A184955(A126324(n))`
-/

namespace A260330.P1307936206919099712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) - A184955 (A126324 n).toNat

end

end A260330.P1307936206919099712

/-! ## A260330.P5211186408532209516

`A126120(n+2)-A283315(A097331(n))`
-/

namespace A260330.P5211186408532209516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) - A283315 (A097331 n).toNat

end

end A260330.P5211186408532209516

/-! ## A260330.P14114926215802435099

`A097331(n+3)-A283315(A097331(n))`
-/

namespace A260330.P14114926215802435099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 3) - A283315 (A097331 n).toNat

end

end A260330.P14114926215802435099

/-! ## A260330.P12199353938994280340

`A126120(n+2)-A151755(A276974(3*n+2))`
-/

namespace A260330.P12199353938994280340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (n + 2) - A151755 (A276974 (3 * n + 2)).toNat

end

end A260330.P12199353938994280340

/-!
# A260331: Labelings of n diamond-shaped posets with 4 vertices per diamond where the labels follow the poset relations.

The programs for A260331, the canonical program `A260331.P14129713740941353952` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260331 has offset 0).

The definition of A260331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260331.P14129713740941353952

`(4*n)!/12^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A260331

/-- `(4*n)!/12^n` -/
def P14129713740941353952.Spec : Prop :=
  ∀ n, P14129713740941353952.a n = (A260331 n : ℚ)

end A260331

/-! ## A260331.P13889376756064142937

`C(abs(1-4*n), 3)*a(n-1)*2*n` with `a(0)=1`
-/

namespace A260331.P13889376756064142937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose |1 - (4 * n : ℤ)|.toNat 3 * a (n - 1) * (2 * n)

end

end A260331.P13889376756064142937

namespace A260331

/-- `C(abs(1-4*n), 3)*a(n-1)*2*n` -/
def P13889376756064142937.Spec : Prop :=
  ∀ n, (P13889376756064142937.a n : ℤ) = A260331 n

end A260331

/-! ## A260331.P12438887572823125148

`2^n*A014608(n)`
-/

namespace A260331.P12438887572823125148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014608 n

end

end A260331.P12438887572823125148

namespace A260331

/-- `2^n*A014608(n)` -/
def P12438887572823125148.Spec : Prop :=
  ∀ n, P12438887572823125148.a n = A260331 n

end A260331

/-! ## A260331.P5552366422364057995

`(a(n-1)+a(n-1))*A060541(n)` with `a(0)=1`
-/

namespace A260331.P5552366422364057995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - 1)) * A060541 n

end

end A260331.P5552366422364057995

namespace A260331

/-- `(a(n-1)+a(n-1))*A060541(n)` -/
def P5552366422364057995.Spec : Prop :=
  ∀ n, P5552366422364057995.a n = A260331 n

end A260331

/-! ## A260331.P619168303179313821

`A000165(n)*A025036(n)`
-/

namespace A260331.P619168303179313821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 n * A025036 n

end

end A260331.P619168303179313821

namespace A260331

/-- `A000165(n)*A025036(n)` -/
def P619168303179313821.Spec : Prop :=
  ∀ n, P619168303179313821.a n = A260331 n

end A260331

/-!
# A260332: Labelings of n diamond-shaped posets with 4 vertices per diamond where the labels follow the poset relations whose associated reading permutation avoids 231 in the classical sense.

The programs for A260332, there is no canonical definition to state claims against.
-/

/-! ## A260332.P7812068815865701092

`(ceil(n/98)+1)*A243676(n)`
-/

namespace A260332.P7812068815865701092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 98⌉ + 1) * A243676 n

end

end A260332.P7812068815865701092

/-! ## A260332.P4497070638600607020

`record[A336534(∑[n+3]-2)]`
-/

namespace A260332.P4497070638600607020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260332.P4497070638600607020

/-! ## A260332.P10104519053831930921

`A336534(A052905(n+2))`
-/

namespace A260332.P10104519053831930921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A052905 (n + 2)).toNat

end

end A260332.P10104519053831930921

/-! ## A260332.P4732405348173521479

`A336534(A000217(n+4)+n)`
-/

namespace A260332.P4732405348173521479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A260332.P4732405348173521479

/-!
# A260335: Prime determinants of forms with class number > 2.

The programs for A260335, there is no canonical definition to state claims against.
-/

/-! ## A260335.P1388795999799226015

`record[A072438(A278837(n+1))]`
-/

namespace A260335.P1388795999799226015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A278837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260335.P1388795999799226015

/-! ## A260335.P2583956032941981865

`filter[A278837(n+1), A021913(#)]`
-/

namespace A260335.P2583956032941981865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A260335.P2583956032941981865

/-! ## A260335.P14251232002868833699

`filter[A278837(n+1), A038189(#)]`
-/

namespace A260335.P14251232002868833699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A260335.P14251232002868833699

/-! ## A260335.P12738415409308974920

`filter[A278837(n+1), A079261(#)]`
-/

namespace A260335.P12738415409308974920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079261 (f1 j).toNat = 1) n)

end

end A260335.P12738415409308974920

/-! ## A260335.P14411431201645585804

`filter[A278837(n+1), A089013(#)]`
-/

namespace A260335.P14411431201645585804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A260335.P14411431201645585804

/-!
# A260336: Numerators of Glaisher's J-numbers J_n.

The programs for A260336, there is no canonical definition to state claims against.
-/

/-! ## A260336.P12139073234633867376

`A047788(n+1)+A002112(n+1)*A047789(n+1)`
-/

namespace A260336.P12139073234633867376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047788 (n + 1) + A002112 (n + 1) * A047789 (n + 1)

end

end A260336.P12139073234633867376

/-!
# A260340: Triangle read by rows: T(n,k) = number of sets of linear n-ads in k variables.

The programs for A260340, there is no canonical definition to state claims against.
-/

/-! ## A260340.P10204156462185001197

`A351006(A174544(n))`
-/

namespace A260340.P10204156462185001197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (A174544 n).toNat

end

end A260340.P10204156462185001197

/-!
# A260341: A002107 with the zero terms omitted.

The programs for A260341, there is no canonical definition to state claims against.
-/

/-! ## A260341.P14776152887658806336

`A002107(comp[A213250(n+1)])`
-/

namespace A260341.P14776152887658806336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213250 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260341.P14776152887658806336

/-! ## A260341.P8469243435349919990

`A002107(lt[0, abs(A002107(n))])`
-/

namespace A260341.P8469243435349919990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002107 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260341.P8469243435349919990

/-! ## A260341.P8968965603053606336

`A002107(lt[0, A002107(n)²])`
-/

namespace A260341.P8968965603053606336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A260341.P8968965603053606336

/-! ## A260341.P4445810429729229477

`A002107(lt[0, dr(A002107(n))])`
-/

namespace A260341.P4445810429729229477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002107 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260341.P4445810429729229477

/-! ## A260341.P3414830028069145982

`A002107(comp[eq[0, A002107(n)]])`
-/

namespace A260341.P3414830028069145982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A260341.P3414830028069145982

/-!
# A260342: A002175 omitting the terms where A002107 is zero.

The programs for A260342, there is no canonical definition to state claims against.
-/

/-! ## A260342.P1389831084215908487

`A002175(comp[A213250(n+1)])`
-/

namespace A260342.P1389831084215908487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213250 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002175 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260342.P1389831084215908487

/-! ## A260342.P1697908938985067618

`A002654(∩[A155563(n+1), A017533(n)])`
-/

namespace A260342.P1697908938985067618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A260342.P1697908938985067618

/-! ## A260342.P2749156033683073233

`A035181(∩[A155563(n+1), A017533(n)])`
-/

namespace A260342.P2749156033683073233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A260342.P2749156033683073233

/-! ## A260342.P4038091178001292703

`A113446(∩[A155563(n+1), A017533(n)])`
-/

namespace A260342.P4038091178001292703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A260342.P4038091178001292703

/-! ## A260342.P14240172259726775502

`A121450(∩[A155563(n+1), A017533(n)])`
-/

namespace A260342.P14240172259726775502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A260342.P14240172259726775502

/-!
# A260343: Numbers n such that the base-n number formed by concatenating the base-n numbers 1 2 ... n-1 n n-1 ... 2 1 is prime.

The programs for A260343, there is no canonical definition to state claims against.
-/

/-! ## A260343.P12077213847108789850

`record[gcd(A261171(n+1), A261172(n+1))]`
-/

namespace A260343.P12077213847108789850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261171 (n + 1)) (A261172 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260343.P12077213847108789850

/-! ## A260343.P563603986432483629

`A261171(eq[A261171(n+1), A261172(n+1)]+1)`
-/

namespace A260343.P563603986432483629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261171 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A260343.P563603986432483629

/-!
# A260344: Sum of squared distances from origin to ends of all n-step spiral self-avoiding walks on simple cubic lattice.

The programs for A260344, there is no canonical definition to state claims against.
-/

/-! ## A260344.P13692685941630341127

`∑[6*A159477(A102485(n))]`
-/

namespace A260344.P13692685941630341127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A159477 (A102485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260344.P13692685941630341127

/-!
# A260346: Expansion of x^2*((1 - 12*x + 50*x^2 - 76*x^3 + 42*x^4 - 48*x^5 + 32*x^6)/(1 - 4*x)^4 + 4*x^2/(1 - 4*x)^(5/2)).

The programs for A260346, there is no canonical definition to state claims against.
-/

/-! ## A260346.P18326660930524454551

`A027868(2*A326521(n))`
-/

namespace A260346.P18326660930524454551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (2 * A326521 n).toNat

end

end A260346.P18326660930524454551

/-! ## A260346.P687586076947112941

`A134119(A152329(n+1)-n)`
-/

namespace A260346.P687586076947112941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A152329 (n + 1) - (n : ℤ)).toNat

end

end A260346.P687586076947112941

/-! ## A260346.P9699798836996949416

`A134119(n*A002931(n+1))`
-/

namespace A260346.P9699798836996949416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 ((n : ℤ) * A002931 (n + 1)).toNat

end

end A260346.P9699798836996949416

/-!
# A260350: Define g(k) = min(n: n >= 0, 2^n + k prime). Then a(n) = min(odd k: g(k) = n).

The programs for A260350, there is no canonical definition to state claims against.
-/

/-! ## A260350.P5129050939190834632

`or(A034731(n+1), A072088(C(2*n, 2)))`
-/

namespace A260350.P5129050939190834632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034731 (n + 1)) (A072088 (Nat.choose (2 * n) 2))

end

end A260350.P5129050939190834632

/-! ## A260350.P8369478153196277660

`or(A242170(n+1), A306010(A000079(n)))`
-/

namespace A260350.P8369478153196277660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A242170 (n + 1)) (A306010 (A000079 n).toNat)

end

end A260350.P8369478153196277660

/-! ## A260350.P4712017627479429103

`record[A020639(A110441(n)-A188187(n+1))]`
-/

namespace A260350.P4712017627479429103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A110441 n - A188187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260350.P4712017627479429103

/-!
# A260351: In base n, a(n) is the largest (decimal equivalent) number reached when one sequentially adds to a sum, starting with zero, the largest digit not in that sum.

The programs for A260351, there is no canonical definition to state claims against.
-/

/-! ## A260351.P11935824698498375742

`A260371(n+2)+A023811(n+2)`
-/

namespace A260351.P11935824698498375742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260371 (n + 2) + A023811 (n + 2)

end

end A260351.P11935824698498375742

/-! ## A260351.P15148359543696778753

`A260371(n+2)+record[A277058(n+2)]`
-/

namespace A260351.P15148359543696778753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277058 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260371 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260351.P15148359543696778753

/-!
# A260352: Numbers n such that both 2*n^2+11 and 2*(n+1)^2+11 are prime.

The programs for A260352, there is no canonical definition to state claims against.
-/

/-! ## A260352.P8967965064237943537

`∩[A092968(n+1)-1, A092968(n+1)]`
-/

namespace A260352.P8967965064237943537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092968 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260352.P8967965064237943537

/-! ## A260352.P12547796294215362487

`∩[A092968(n+1), A023443(A092968(n+1))]`
-/

namespace A260352.P12547796294215362487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A092968 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260352.P12547796294215362487

/-!
# A260353: Number of unlabeled rooted trees with n nodes where the outdegrees (branching factors) of adjacent nodes differ by at least one.

The programs for A260353, there is no canonical definition to state claims against.
-/

/-! ## A260353.P12270213954891267291

`A017996(n)-A100196(A018021(n))`
-/

namespace A260353.P12270213954891267291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A100196 (A018021 n).toNat

end

end A260353.P12270213954891267291

/-! ## A260353.P17288905414861079035

`A017996(n)-A100196(A017985(2*n))`
-/

namespace A260353.P17288905414861079035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A100196 (A017985 (2 * n)).toNat

end

end A260353.P17288905414861079035

/-! ## A260353.P3533843723018460906

`A017996(n)-A100196(A017979(4*n))`
-/

namespace A260353.P3533843723018460906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A100196 (A017979 (4 * n)).toNat

end

end A260353.P3533843723018460906

/-! ## A260353.P11503275289406691886

`A017996(n)-A100196(A017987(2*n)-A011655(n))`
-/

namespace A260353.P11503275289406691886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017996 n - A100196 (A017987 (2 * n) - A011655 n).toNat

end

end A260353.P11503275289406691886

/-! ## A260353.P12003284895943420053

`A334966(A063823(n))`
-/

namespace A260353.P12003284895943420053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A063823 n).toNat

end

end A260353.P12003284895943420053

/-!
# A260354: Numbers n such that 2*n^2+11, 2*(n+1)^2+11 and 2*(n+2)^2+11 are prime.

The programs for A260354, there is no canonical definition to state claims against.
-/

/-! ## A260354.P3028062044422449895

`∩[A260352(n+1)-1, A260352(n+1)]`
-/

namespace A260354.P3028062044422449895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260352 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260354.P3028062044422449895

/-! ## A260354.P3153777019465060568

`eq[A201160(n), A288386(A000120(n+2))]`
-/

namespace A260354.P3153777019465060568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201160 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288386 (A000120 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260354.P3153777019465060568

/-!
# A260355: Table T(n,k) read by antidiagonals. T(n,k) is the minimum value of Sum_{i=1..n} Product_{j=1..k} r_j[i] where each r_j is a permutation of {1..n}.

The programs for A260355, there is no canonical definition to state claims against.
-/

/-! ## A260355.P5283719408871728654

`A117707(A062190(n))%11`
-/

namespace A260355.P5283719408871728654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117707 (A062190 n).toNat) 11

end

end A260355.P5283719408871728654

/-! ## A260355.P522092898363445909

`A117707(A330509(n))+A112367(n)`
-/

namespace A260355.P522092898363445909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A330509 n).toNat + A112367 n

end

end A260355.P522092898363445909

/-! ## A260355.P8286192706535486353

`A363808(A088817(n+1))+A080851(n)`
-/

namespace A260355.P8286192706535486353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A088817 (n + 1)).toNat + A080851 n

end

end A260355.P8286192706535486353

/-! ## A260355.P18422879467071510417

`A070939(A029470(n+1)*A135313(n))`
-/

namespace A260355.P18422879467071510417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A029470 (n + 1) * A135313 n).toNat

end

end A260355.P18422879467071510417

/-!
# A260356: a(n) is the minimal value of Sum_{i=1..n} Product_{j=1..5} r_j(i), where each r_j is a permutation of {1,2,...,n}.

The programs for A260356, there is no canonical definition to state claims against.
-/

/-! ## A260356.P2950635135355628311

`A260355(∑[n+5]+6)`
-/

namespace A260356.P2950635135355628311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A260356.P2950635135355628311

/-!
# A260357: a(n) is the minimal value of Sum_{i=1..n} Product_{j=1..6} r_j(i), where each r_j is a permutation of {1,2,...,n}.

The programs for A260357, there is no canonical definition to state claims against.
-/

/-! ## A260357.P4832153434415321958

`A260355(Δ[n²]+∑[n+4]+11)`
-/

namespace A260357.P4832153434415321958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 11 : ℕ) : ℤ)).toNat

end

end A260357.P4832153434415321958

/-!
# A260358: a(n) is the minimal value of Sum_{i=1..n} Product_{j=1..7} r_j(i), where each r_j is a permutation of {1,2,...,n}.

The programs for A260358, there is no canonical definition to state claims against.
-/

/-! ## A260358.P5706162720721138360

`A260355(eq[4, A219347(n)])`
-/

namespace A260358.P5706162720721138360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260358.P5706162720721138360

/-!
# A260359: a(n) is the minimal value of Sum_{i=1..n} Product_{j=1..8} r_j(i), where each r_j is a permutation of {1,2,...,n}.

The programs for A260359, there is no canonical definition to state claims against.
-/

/-! ## A260359.P15601663765058116407

`A260355(eq[5, A219347(n)])`
-/

namespace A260359.P15601663765058116407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260359.P15601663765058116407

/-!
# A260360: The absolute difference between the largest prime factors of prime(n)-1 and prime(n+1)-1.

The programs for A260360, the canonical program `A260360.P4291605050479398527` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260360 has offset 2).

The definition of A260360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260360.P4291605050479398527

`abs(A023503(n+3)-A023503(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A260360

/-- `abs(A023503(n+3)-A023503(n+2))` -/
def P4291605050479398527.Spec : Prop :=
  ∀ n, P4291605050479398527.a n = A260360 (n + 2)

theorem P4291605050479398527.correct : P4291605050479398527.Spec := by
  intro n
  simp only [A260360, Nat.add_sub_cancel]

end A260360

/-! ## A260360.P13651317152373566740

`abs(Δ[A023503(n+2)])`
-/

namespace A260360.P13651317152373566740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P13651317152373566740

namespace A260360

/-- `abs(Δ[A023503(n+2)])` -/
def P13651317152373566740.Spec : Prop :=
  ∀ n, P13651317152373566740.a n = A260360 (n + 2)

theorem P13651317152373566740.correct : P13651317152373566740.Spec := by
  intro n
  simp only [A260360, Nat.add_sub_cancel, A260360.P13651317152373566740.f1, A260360.P13651317152373566740.a, A260360.P4291605050479398527.a, SequenceMachineLib.memo_apply]

end A260360

/-! ## A260360.P5001462589026882158

`abs(Δ[A070820(n+2)])`
-/

namespace A260360.P5001462589026882158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P5001462589026882158

namespace A260360

/-- `abs(Δ[A070820(n+2)])` -/
def P5001462589026882158.Spec : Prop :=
  ∀ n, P5001462589026882158.a n = A260360 (n + 2)

end A260360

/-! ## A260360.P10059579403249932736

`abs(Δ[A006530(A241195(n+2))])`
-/

namespace A260360.P10059579403249932736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A241195 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P10059579403249932736

namespace A260360

/-- `abs(Δ[A006530(A241195(n+2))])` -/
def P10059579403249932736.Spec : Prop :=
  ∀ n, P10059579403249932736.a n = A260360 (n + 2)

end A260360

/-! ## A260360.P2658816472624493345

`abs(Δ[A006530(A006093(n+2))])`
-/

namespace A260360.P2658816472624493345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P2658816472624493345

namespace A260360

/-- `abs(Δ[A006530(A006093(n+2))])` -/
def P2658816472624493345.Spec : Prop :=
  ∀ n, P2658816472624493345.a n = A260360 (n + 2)

end A260360

/-! ## A260360.P16644039297102383408

`abs(Δ[A006530(record[A000010(n+3)])])`
-/

namespace A260360.P16644039297102383408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P16644039297102383408

namespace A260360

/-- `abs(Δ[A006530(record[A000010(n+3)])])` -/
def P16644039297102383408.Spec : Prop :=
  ∀ n, P16644039297102383408.a n = A260360 (n + 2)

end A260360

/-! ## A260360.P15863453939204979764

`abs(Δ[A006530(A000040(n+2)-1)])`
-/

namespace A260360.P15863453939204979764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P15863453939204979764

namespace A260360

/-- `abs(Δ[A006530(A000040(n+2)-1)])` -/
def P15863453939204979764.Spec : Prop :=
  ∀ n, P15863453939204979764.a n = A260360 (n + 2)

end A260360

/-! ## A260360.P18284008153006655151

`abs(Δ[p?[A126289(n+1)]])`
-/

namespace A260360.P18284008153006655151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126289 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P18284008153006655151

namespace A260360

/-- `abs(Δ[p?[A126289(n+1)]])` -/
def P18284008153006655151.Spec : Prop :=
  ∀ n, P18284008153006655151.a n = A260360 (n + 2)

end A260360

/-! ## A260360.P7372449158110471705

`abs(Δ[A006530(A005722(n+2))])`
-/

namespace A260360.P7372449158110471705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260360.P7372449158110471705

namespace A260360

/-- `abs(Δ[A006530(A005722(n+2))])` -/
def P7372449158110471705.Spec : Prop :=
  ∀ n, P7372449158110471705.a n = A260360 (n + 2)

end A260360

/-!
# A260361: G.f.: Sum_{n=-oo..+oo} x^n * (1 + x^n)^n, an even function.

The programs for A260361, there is no canonical definition to state claims against.
-/

/-! ## A260361.P1513994673034260537

`2*A260147(n)`
-/

namespace A260361.P1513994673034260537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260147 n

end

end A260361.P1513994673034260537

/-! ## A260361.P11209414573305834102

`A260147(char[6]+n)+A260147(n)`
-/

namespace A260361.P11209414573305834102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260147 ((if ∃ j, f1 j = n then 1 else 0) + n) + A260147 n

end

end A260361.P11209414573305834102

/-! ## A260361.P11819729095362292481

`A260148(2*n)+A217668(2*n)`
-/

namespace A260361.P11819729095362292481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260148 (2 * n) + A217668 (2 * n)

end

end A260361.P11819729095362292481

/-! ## A260361.P13727592257796215018

`2/(A260147(n)%A290504(n+1))^(-1)`
-/

namespace A260361.P13727592257796215018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Int.tmod (A260147 n) (A290504 (n + 1)) : ℚ) ^ (-1 : ℤ)

end

end A260361.P13727592257796215018

/-! ## A260361.P12047656307017503264

`A000027(A260147(n)+A260147(n))`
-/

namespace A260361.P12047656307017503264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A260147 n + A260147 n).toNat

end

end A260361.P12047656307017503264

/-! ## A260361.P2421550141349745357

`∑{d}[A260147(n), A000010(#)+A000010(#)]`
-/

namespace A260361.P2421550141349745357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000010 d + A000010 d)

end

end A260361.P2421550141349745357

/-! ## A260361.P675890811206423270

`A260147(n)+A260147(n)/A000041(∑[(-1)^n])`
-/

namespace A260361.P675890811206423270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260147 n : ℚ) + (A260147 n : ℚ) / (A000041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A260361.P675890811206423270

/-! ## A260361.P11284101271665099886

`A004277(A260147(n))`
-/

namespace A260361.P11284101271665099886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A260147 n).toNat

end

end A260361.P11284101271665099886

/-!
# A260362: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260362, there is no canonical definition to state claims against.
-/

/-! ## A260362.P16432745584927232673

`A260370(∑[4*n]+1)`
-/

namespace A260362.P16432745584927232673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260362.P16432745584927232673

/-! ## A260362.P17268165377157604196

`record[A260370(Δ[A079824(n+1)])]`
-/

namespace A260362.P17268165377157604196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260362.P17268165377157604196

/-! ## A260362.P6444393838822821575

`record[A003982(n)*A260370(n+1)]`
-/

namespace A260362.P6444393838822821575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260362.P6444393838822821575

/-! ## A260362.P15087673112848666162

`record[A214505(n)*A260370(n+1)]`
-/

namespace A260362.P15087673112848666162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A260370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260362.P15087673112848666162

/-! ## A260362.P15060750204327050671

`record[gcd(A037012(n), A260370(n+1))]`
-/

namespace A260362.P15060750204327050671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A260370 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260362.P15060750204327050671

/-!
# A260363: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260363, there is no canonical definition to state claims against.
-/

/-! ## A260363.P18258062116650557939

`A260370(∑[n]+1)`
-/

namespace A260363.P18258062116650557939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260363.P18258062116650557939

/-! ## A260363.P12008625819898589651

`lcm(2, A260370(A000124(n)))`
-/

namespace A260363.P12008625819898589651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260370 (A000124 n).toNat)

end

end A260363.P12008625819898589651

/-! ## A260363.P13439137634871503973

`record[A260370(A056536(n+1))]`
-/

namespace A260363.P13439137634871503973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260363.P13439137634871503973

/-! ## A260363.P13753723889975159765

`record[A260370(A114091(n+1))]`
-/

namespace A260363.P13753723889975159765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260363.P13753723889975159765

/-! ## A260363.P15670781542460585407

`record[A260370(n+1)/A007318(n)]`
-/

namespace A260363.P15670781542460585407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260370 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260363.P15670781542460585407

/-!
# A260364: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260364, there is no canonical definition to state claims against.
-/

/-! ## A260364.P7967555368345809523

`A260370(∑[n+1]+2)`
-/

namespace A260364.P7967555368345809523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260364.P7967555368345809523

/-! ## A260364.P13580113478962001350

`record[A260370(A133263(abs(1-n)))]`
-/

namespace A260364.P13580113478962001350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260364.P13580113478962001350

/-! ## A260364.P7903535765868355789

`record[A260370(n+2)/A133819(n+1)]`
-/

namespace A260364.P7903535765868355789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260370 (n + 2) : ℚ) / (A133819 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260364.P7903535765868355789

/-! ## A260364.P9396944555471623010

`A260370(A000096(n+1))+char[46]`
-/

namespace A260364.P9396944555471623010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260364.P9396944555471623010

/-! ## A260364.P11109872731793408293

`A014963(14*(n+1))*A260370(A000096(n+1))`
-/

namespace A260364.P11109872731793408293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (14 * (n + 1)) * A260370 (A000096 (n + 1)).toNat

end

end A260364.P11109872731793408293

/-!
# A260365: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260365, there is no canonical definition to state claims against.
-/

/-! ## A260365.P1569307773117060837

`A260370(∑[n+2]+4)`
-/

namespace A260365.P1569307773117060837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260365.P1569307773117060837

/-! ## A260365.P3587335263057043114

`lcm(2, A260370(A167614(n+1)))`
-/

namespace A260365.P3587335263057043114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260370 (A167614 (n + 1)).toNat)

end

end A260365.P3587335263057043114

/-! ## A260365.P6669787048065038274

`xor(1, A260370(A046691(n)+7)+1)`
-/

namespace A260365.P6669787048065038274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A260370 (A046691 n + 7).toNat + 1)

end

end A260365.P6669787048065038274

/-! ## A260365.P12662056601149177190

`A260370(A000096(n+1)+4)+char[34]`
-/

namespace A260365.P12662056601149177190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260365.P12662056601149177190

/-! ## A260365.P6712243692392001578

`A260370(A167614(n+1))%A260366(n+1)`
-/

namespace A260365.P6712243692392001578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260370 (A167614 (n + 1)).toNat) (A260366 (n + 1))

end

end A260365.P6712243692392001578

/-!
# A260366: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260366, there is no canonical definition to state claims against.
-/

/-! ## A260366.P17210250146509138721

`A260370(∑[n+3]+7)`
-/

namespace A260366.P17210250146509138721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260366.P17210250146509138721

/-! ## A260366.P17606524082637937032

`A007318(C(2, n))*A260370(A167614(n+2)+1)`
-/

namespace A260366.P17606524082637937032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260370 (A167614 (n + 2) + 1).toNat

end

end A260366.P17606524082637937032

/-! ## A260366.P7294620970492053931

`A000265(A048896(n))*A260370(A167614(n+2)+1)`
-/

namespace A260366.P7294620970492053931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048896 n).toNat * A260370 (A167614 (n + 2) + 1).toNat

end

end A260366.P7294620970492053931

/-! ## A260366.P11397558111084545750

`A007318(C(2, n))*A260370(A155212(n)+5)`
-/

namespace A260366.P11397558111084545750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260370 (A155212 n + 5).toNat

end

end A260366.P11397558111084545750

/-! ## A260366.P15824670495131206911

`A000265(A048896(n))*A260370(A155212(n)+5)`
-/

namespace A260366.P15824670495131206911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048896 n).toNat * A260370 (A155212 n + 5).toNat

end

end A260366.P15824670495131206911

/-!
# A260367: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260367, there is no canonical definition to state claims against.
-/

/-! ## A260367.P14253742770571310655

`A260370(A374005(n+1))`
-/

namespace A260367.P14253742770571310655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A374005 (n + 1)).toNat

end

end A260367.P14253742770571310655

/-! ## A260367.P9285845989373716500

`A260370(A155212(n)+13)`
-/

namespace A260367.P9285845989373716500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A155212 n + 13).toNat

end

end A260367.P9285845989373716500

/-! ## A260367.P3375360287400181606

`A260370(A056000(n)+15)`
-/

namespace A260367.P3375360287400181606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A056000 n + 15).toNat

end

end A260367.P3375360287400181606

/-! ## A260367.P16287769961270205961

`A260370(A000124(n+4)+4)`
-/

namespace A260367.P16287769961270205961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A000124 (n + 4) + 4).toNat

end

end A260367.P16287769961270205961

/-! ## A260367.P16194145544168706161

`A260370(A000217(n+4)+5)`
-/

namespace A260367.P16194145544168706161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A000217 (n + 4) + 5).toNat

end

end A260367.P16194145544168706161

/-!
# A260368: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260368, there is no canonical definition to state claims against.
-/

/-! ## A260368.P3437346403328402880

`A260370(C(n+7, 2)-n)`
-/

namespace A260368.P3437346403328402880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (Nat.choose (n + 7) 2 - n)

end

end A260368.P3437346403328402880

/-! ## A260368.P13027894955728409671

`A260370(A374007(n+1))`
-/

namespace A260368.P13027894955728409671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A374007 (n + 1)).toNat

end

end A260368.P13027894955728409671

/-! ## A260368.P16934026538031628328

`A260370(A056115(n)+21)`
-/

namespace A260368.P16934026538031628328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A056115 n + 21).toNat

end

end A260368.P16934026538031628328

/-! ## A260368.P4558448333555245883

`A260370(A167499(n+4)+1)`
-/

namespace A260368.P4558448333555245883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A167499 (n + 4) + 1).toNat

end

end A260368.P4558448333555245883

/-! ## A260368.P270542600025674928

`A260370(A167487(n+4)-1)`
-/

namespace A260368.P270542600025674928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A167487 (n + 4) - 1).toNat

end

end A260368.P270542600025674928

/-!
# A260369: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001111.

The programs for A260369, there is no canonical definition to state claims against.
-/

/-! ## A260369.P5930975006602761522

`A260370(A374008(n+1))`
-/

namespace A260369.P5930975006602761522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A374008 (n + 1)).toNat

end

end A260369.P5930975006602761522

/-! ## A260369.P1868329239757502422

`A260370(A167487(n+5))`
-/

namespace A260369.P1868329239757502422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A167487 (n + 5)).toNat

end

end A260369.P1868329239757502422

/-! ## A260369.P8045686096876377635

`A260370(A167614(n+5)+4)`
-/

namespace A260369.P8045686096876377635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A167614 (n + 5) + 4).toNat

end

end A260369.P8045686096876377635

/-! ## A260369.P1262538206782710394

`A260370(A133263(n+6)+5)`
-/

namespace A260369.P1262538206782710394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A133263 (n + 6) + 5).toNat

end

end A260369.P1262538206782710394

/-! ## A260369.P11393417579464698048

`A260370(A000124(n+6)+6)`
-/

namespace A260369.P11393417579464698048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260370 (A000124 (n + 6) + 6).toNat

end

end A260369.P11393417579464698048

/-!
# A260371: a(n) = A260351(n) - A023811(n), where A260351 is the limit of the orbit of 0 under x -> x + (largest digit not in x) and A023811 is the largest metadrome, both in base n.

The programs for A260371, there is no canonical definition to state claims against.
-/

/-! ## A260371.P3754409872652382632

`A260351(n+2)-A023811(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260371.P3754409872652382632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260351 (n + 2) - A023811 (n + 2)

end

end A260371.P3754409872652382632

/-! ## A260371.P846123985306591698

`A260351(n+2)%A221741(n+1)`
-/

namespace A260371.P846123985306591698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260351 (n + 2)) (A221741 (n + 1))

end

end A260371.P846123985306591698

/-! ## A260371.P10934856479717284068

`A134748(n+1)+A260351(n+2)-A062813(n+1)`
-/

namespace A260371.P10934856479717284068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134748 (n + 1) + (A260351 (n + 2) - A062813 (n + 1))

end

end A260371.P10934856479717284068

/-! ## A260371.P5746484685456977961

`A134748(n+1)+A260351(n+2)-(A189001(n+1)%A031973(n+1)-1)`
-/

namespace A260371.P5746484685456977961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134748 (n + 1) + (A260351 (n + 2) - (Int.tmod (A189001 (n + 1)) (A031973 (n + 1)) - 1))

end

end A260371.P5746484685456977961

/-! ## A260371.P2203421202504927668

`A134748(n+1)+A260351(n+2)-(n*A062805(n+1)-A062808(n+1))`
-/

namespace A260371.P2203421202504927668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134748 (n + 1) + (A260351 (n + 2) - ((n : ℤ) * A062805 (n + 1) - A062808 (n + 1)))

end

end A260371.P2203421202504927668

/-!
# A260372: Number of haystack arrangements with n bales.

The programs for A260372, there is no canonical definition to state claims against.
-/

/-! ## A260372.P44312691824451949

`A001221(A205489(n+1)+A137621(3*n+2))`
-/

namespace A260372.P44312691824451949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A205489 (n + 1) + A137621 (3 * n + 2)).toNat

end

end A260372.P44312691824451949

/-! ## A260372.P5102975179550577299

`A320732(A242419(n+1)*A320732(2*n+1))`
-/

namespace A260372.P5102975179550577299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (A242419 (n + 1) * A320732 (2 * n + 1)).toNat

end

end A260372.P5102975179550577299

/-! ## A260372.P15403957004339216303

`A001221(A011782(n)+∑[A125667(n+1)])`
-/

namespace A260372.P15403957004339216303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A011782 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260372.P15403957004339216303

/-! ## A260372.P4932594852517022487

`A001221(A278957(n)+A002522(n))`
-/

namespace A260372.P4932594852517022487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278957 n + A002522 n).toNat

end

end A260372.P4932594852517022487

/-! ## A260372.P7491026269869155499

`A001221(A271803(n)+A034007(n))`
-/

namespace A260372.P7491026269869155499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A271803 n + A034007 n).toNat

end

end A260372.P7491026269869155499

/-!
# A260373: The nearest perfect square to n!

The programs for A260373, the canonical program `A260373.P8346771822283774754` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260373 has offset 0).

The definition of A260373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260373.P8346771822283774754

`round(sqrt(n!))²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A260373

/-- `round(sqrt(n!))²` -/
def P8346771822283774754.Spec : Prop :=
  ∀ n, P8346771822283774754.a n = A260373 n

theorem P8346771822283774754.correct : P8346771822283774754.Spec := by
  intro n
  simp only [A260373]

end A260373

/-! ## A260373.P2249117709830156523

`A055227(n)²`
-/

namespace A260373.P2249117709830156523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055227 n ^ 2

end

end A260373.P2249117709830156523

namespace A260373

/-- `A055227(n)²` -/
def P2249117709830156523.Spec : Prop :=
  ∀ n, P2249117709830156523.a n = A260373 n

end A260373

/-! ## A260373.P2970522385019018564

`round(sqrt(n!))^2`
-/

namespace A260373.P2970522385019018564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.factorial n : ℝ)) ^ 2

end

end A260373.P2970522385019018564

namespace A260373

/-- `round(sqrt(n!))^2` -/
def P2970522385019018564.Spec : Prop :=
  ∀ n, P2970522385019018564.a n = A260373 n

theorem P2970522385019018564.correct : P2970522385019018564.Spec := by
  intro n
  simp only [A260373, Nat.add_sub_cancel, A260373.P2970522385019018564.a, A260373.P8346771822283774754.a, SequenceMachineLib.memo_apply]

end A260373

/-! ## A260373.P4744394615047061021

`round(n!^(1/2))²`
-/

namespace A260373.P4744394615047061021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A260373.P4744394615047061021

namespace A260373

/-- `round(n!^(1/2))²` -/
def P4744394615047061021.Spec : Prop :=
  ∀ n, P4744394615047061021.a n = A260373 n

end A260373

/-! ## A260373.P20290294185893192

`round(sqrt(∏[C(2, n+2)+n]))²`
-/

namespace A260373.P20290294185893192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) ^ 2

end

end A260373.P20290294185893192

namespace A260373

/-- `round(sqrt(∏[C(2, n+2)+n]))²` -/
def P20290294185893192.Spec : Prop :=
  ∀ n, P20290294185893192.a n = A260373 n

end A260373

/-! ## A260373.P6517780776334272806

`round(sqrt(∏[(2^n)%2+n]))²`
-/

namespace A260373.P6517780776334272806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) ^ 2

end

end A260373.P6517780776334272806

namespace A260373

/-- `round(sqrt(∏[(2^n)%2+n]))²` -/
def P6517780776334272806.Spec : Prop :=
  ∀ n, P6517780776334272806.a n = A260373 n

end A260373

/-! ## A260373.P3264619146208411950

`round(sqrt(A000142(n)))²`
-/

namespace A260373.P3264619146208411950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000142 n : ℝ)) ^ 2

end

end A260373.P3264619146208411950

namespace A260373

/-- `round(sqrt(A000142(n)))²` -/
def P3264619146208411950.Spec : Prop :=
  ∀ n, P3264619146208411950.a n = A260373 n

end A260373

/-! ## A260373.P14722023438003884764

`round(sqrt(A212419(n)))²`
-/

namespace A260373.P14722023438003884764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A212419 n : ℝ)) ^ 2

end

end A260373.P14722023438003884764

namespace A260373

/-- `round(sqrt(A212419(n)))²` -/
def P14722023438003884764.Spec : Prop :=
  ∀ n, P14722023438003884764.a n = A260373 n

end A260373

/-! ## A260373.P3973515896426574168

`round(∏[sqrt(A028310(n))])²`
-/

namespace A260373.P3973515896426574168
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028310 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A260373.P3973515896426574168

namespace A260373

/-- `round(∏[sqrt(A028310(n))])²` -/
def P3973515896426574168.Spec : Prop :=
  ∀ n, P3973515896426574168.a n = A260373 n

end A260373

/-!
# A260374: The distance between n! and the nearest perfect square.

The programs for A260374, there is no canonical definition to state claims against.
-/

/-! ## A260374.P11033707393192935739

`abs(round(sqrt(n!))²-n!)`
-/

namespace A260374.P11033707393192935739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (Nat.factorial n : ℝ)) ^ 2 - (Nat.factorial n : ℤ)|

end

end A260374.P11033707393192935739

/-! ## A260374.P11691029667165819522

`abs(n!-A260373(n))`
-/

namespace A260374.P11691029667165819522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - A260373 n|

end

end A260374.P11691029667165819522

/-! ## A260374.P6449158442824498943

`abs(A000142(n)-A260373(n))`
-/

namespace A260374.P6449158442824498943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n - A260373 n|

end

end A260374.P6449158442824498943

/-! ## A260374.P1482647884668963697

`abs(A000142(n)-A055227(n)²)`
-/

namespace A260374.P1482647884668963697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000142 n - A055227 n ^ 2|

end

end A260374.P1482647884668963697

/-!
# A260376: Values of n such that prime(prime(n)) + n is a prime number.

The programs for A260376, there is no canonical definition to state claims against.
-/

/-! ## A260376.P15929342532448530048

`A000720(A065059(n+1))`
-/

namespace A260376.P15929342532448530048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065059 (n + 1)).toNat

end

end A260376.P15929342532448530048

/-! ## A260376.P11839245474914031386

`A000720(p?[A065042(n+1)])`
-/

namespace A260376.P11839245474914031386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P11839245474914031386

/-! ## A260376.P9557953916741119773

`A003963(p?[A065042(n+1)])`
-/

namespace A260376.P9557953916741119773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P9557953916741119773

/-! ## A260376.P3150706081308090478

`A003963(p?[A065059(n+1)])`
-/

namespace A260376.P3150706081308090478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P3150706081308090478

/-! ## A260376.P4655923665663752708

`A026233(p?[A065042(n+1)])`
-/

namespace A260376.P4655923665663752708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P4655923665663752708

/-! ## A260376.P10562491366553300219

`A049084(p?[A065042(n+1)])`
-/

namespace A260376.P10562491366553300219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P10562491366553300219

/-! ## A260376.P7017506620883881680

`A049084(p?[A065059(n+1)])`
-/

namespace A260376.P7017506620883881680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P7017506620883881680

/-! ## A260376.P14139605107163300018

`A056239(p?[A065059(n+1)])`
-/

namespace A260376.P14139605107163300018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P14139605107163300018

/-! ## A260376.P8571195498465967992

`A061395(p?[A065042(n+1)])`
-/

namespace A260376.P8571195498465967992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P8571195498465967992

/-! ## A260376.P17024636692478642709

`A225395(p?[A065042(n+1)])`
-/

namespace A260376.P17024636692478642709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260376.P17024636692478642709

/-!
# A260377: Primes p such that A001221(p-1)^(p-1) == 1 (mod p^2).

The programs for A260377, there is no canonical definition to state claims against.
-/

/-! ## A260377.P10685364526117839321

`A266234(A380115(n))`
-/

namespace A260377.P10685364526117839321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266234 (A380115 n).toNat

end

end A260377.P10685364526117839321

/-!
# A260378: Primes having only {0, 3, 7} as digits.

The programs for A260378, there is no canonical definition to state claims against.
-/

/-! ## A260378.P5112173058690157281

`∩[A386058(n+1), A386062(n+1)]`
-/

namespace A260378.P5112173058690157281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P5112173058690157281

/-! ## A260378.P7760681657669123738

`∩[A386058(n+1), A386065(n+1)]`
-/

namespace A260378.P7760681657669123738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P7760681657669123738

/-! ## A260378.P13052479155000646453

`∩[A386058(n+1), A386067(n+1)]`
-/

namespace A260378.P13052479155000646453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P13052479155000646453

/-! ## A260378.P6109967971246003745

`∩[A386062(n+1), A386065(n+1)]`
-/

namespace A260378.P6109967971246003745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P6109967971246003745

/-! ## A260378.P5702586076809841928

`∩[A386062(n+1), A386067(n+1)]`
-/

namespace A260378.P5702586076809841928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P5702586076809841928

/-! ## A260378.P17196689144292193526

`∩[A386065(n+1), A386067(n+1)]`
-/

namespace A260378.P17196689144292193526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P17196689144292193526

/-! ## A260378.P635650949487207362

`∩[A386058(n+1), A386068(n+1)]`
-/

namespace A260378.P635650949487207362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P635650949487207362

/-! ## A260378.P2059394678358952378

`∩[A386062(n+1), A386068(n+1)]`
-/

namespace A260378.P2059394678358952378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P2059394678358952378

/-! ## A260378.P1571897781518184998

`∩[A386065(n+1), A386068(n+1)]`
-/

namespace A260378.P1571897781518184998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P1571897781518184998

/-! ## A260378.P9982886269270959656

`∩[A386067(n+1), A386068(n+1)]`
-/

namespace A260378.P9982886269270959656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P9982886269270959656

/-! ## A260378.P8502591802553509408

`∩[A386044(n+1), A386058(n+1)]`
-/

namespace A260378.P8502591802553509408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P8502591802553509408

/-! ## A260378.P14847546162243996143

`∩[A386044(n+1), A386062(n+1)]`
-/

namespace A260378.P14847546162243996143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P14847546162243996143

/-! ## A260378.P10274950349865655208

`∩[A386044(n+1), A386065(n+1)]`
-/

namespace A260378.P10274950349865655208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P10274950349865655208

/-! ## A260378.P17484317312242012465

`∩[A386044(n+1), A386067(n+1)]`
-/

namespace A260378.P17484317312242012465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P17484317312242012465

/-! ## A260378.P12556606966394552466

`∩[A386044(n+1), A386068(n+1)]`
-/

namespace A260378.P12556606966394552466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P12556606966394552466

/-! ## A260378.P16378305159420931040

`∩[A386025(n+1), A386044(n+1)]`
-/

namespace A260378.P16378305159420931040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P16378305159420931040

/-! ## A260378.P11213954306337778245

`∩[A386025(n+1), A386058(n+1)]`
-/

namespace A260378.P11213954306337778245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P11213954306337778245

/-! ## A260378.P6233910583979410026

`∩[A386025(n+1), A386062(n+1)]`
-/

namespace A260378.P6233910583979410026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P6233910583979410026

/-! ## A260378.P6164464017090093480

`∩[A386025(n+1), A386065(n+1)]`
-/

namespace A260378.P6164464017090093480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P6164464017090093480

/-! ## A260378.P4948433066648220908

`∩[A386025(n+1), A386067(n+1)]`
-/

namespace A260378.P4948433066648220908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260378.P4948433066648220908

/-!
# A260379: Primes having only {1, 3, 7} as digits.

The programs for A260379, the canonical program `A260379.P15405294900718504998` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260379 has offset 1).

The definition of A260379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260379.P2047607956813258075

`∩[A386117(n+1), A386025(n+1)]`
-/

namespace A260379.P2047607956813258075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P2047607956813258075

namespace A260379

/-- `∩[A386117(n+1), A386025(n+1)]` -/
def P2047607956813258075.Spec : Prop :=
  ∀ n, (P2047607956813258075.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P12629852244989983855

`∩[A386025(n+1), A386088(n+1)]`
-/

namespace A260379.P12629852244989983855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P12629852244989983855

namespace A260379

/-- `∩[A386025(n+1), A386088(n+1)]` -/
def P12629852244989983855.Spec : Prop :=
  ∀ n, (P12629852244989983855.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P5616334583219550825

`∩[A386088(n+1), A386114(n+1)]`
-/

namespace A260379.P5616334583219550825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P5616334583219550825

namespace A260379

/-- `∩[A386088(n+1), A386114(n+1)]` -/
def P5616334583219550825.Spec : Prop :=
  ∀ n, (P5616334583219550825.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P15405294900718504998

`∩[A091633(n+1), A386025(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A260379

/-- `∩[A091633(n+1), A386025(n+1)]` -/
def P15405294900718504998.Spec : Prop :=
  ∀ n, (P15405294900718504998.a n : ℤ) = A260379 (n + 1)

theorem P15405294900718504998.correct : P15405294900718504998.Spec := by
  intro n
  simp only [A260379, Nat.add_sub_cancel]

end A260379

/-! ## A260379.P3255692431607217058

`∩[A091633(n+1), A386088(n+1)]`
-/

namespace A260379.P3255692431607217058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P3255692431607217058

namespace A260379

/-- `∩[A091633(n+1), A386088(n+1)]` -/
def P3255692431607217058.Spec : Prop :=
  ∀ n, (P3255692431607217058.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P3056963803042725547

`∩[A091633(n+1), A386107(n+1)]`
-/

namespace A260379.P3056963803042725547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P3056963803042725547

namespace A260379

/-- `∩[A091633(n+1), A386107(n+1)]` -/
def P3056963803042725547.Spec : Prop :=
  ∀ n, (P3056963803042725547.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P12359831561965592390

`∩[A091633(n+1), A386111(n+1)]`
-/

namespace A260379.P12359831561965592390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P12359831561965592390

namespace A260379

/-- `∩[A091633(n+1), A386111(n+1)]` -/
def P12359831561965592390.Spec : Prop :=
  ∀ n, (P12359831561965592390.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P17996376808206952354

`∩[A091633(n+1), A386114(n+1)]`
-/

namespace A260379.P17996376808206952354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P17996376808206952354

namespace A260379

/-- `∩[A091633(n+1), A386114(n+1)]` -/
def P17996376808206952354.Spec : Prop :=
  ∀ n, (P17996376808206952354.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P15812530649745621538

`∩[A091633(n+1), A386117(n+1)]`
-/

namespace A260379.P15812530649745621538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P15812530649745621538

namespace A260379

/-- `∩[A091633(n+1), A386117(n+1)]` -/
def P15812530649745621538.Spec : Prop :=
  ∀ n, (P15812530649745621538.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P3717820634851911864

`∩[A030096(n+1), A386025(n+1)]`
-/

namespace A260379.P3717820634851911864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P3717820634851911864

namespace A260379

/-- `∩[A030096(n+1), A386025(n+1)]` -/
def P3717820634851911864.Spec : Prop :=
  ∀ n, (P3717820634851911864.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P16506860019077896513

`∩[A030096(n+1), A386088(n+1)]`
-/

namespace A260379.P16506860019077896513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P16506860019077896513

namespace A260379

/-- `∩[A030096(n+1), A386088(n+1)]` -/
def P16506860019077896513.Spec : Prop :=
  ∀ n, (P16506860019077896513.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P14851435806714471835

`∩[A030096(n+1), A386107(n+1)]`
-/

namespace A260379.P14851435806714471835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P14851435806714471835

namespace A260379

/-- `∩[A030096(n+1), A386107(n+1)]` -/
def P14851435806714471835.Spec : Prop :=
  ∀ n, (P14851435806714471835.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P13790093362479207722

`∩[A030096(n+1), A386114(n+1)]`
-/

namespace A260379.P13790093362479207722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P13790093362479207722

namespace A260379

/-- `∩[A030096(n+1), A386114(n+1)]` -/
def P13790093362479207722.Spec : Prop :=
  ∀ n, (P13790093362479207722.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P14298033626522297962

`∩[A030096(n+1), A386117(n+1)]`
-/

namespace A260379.P14298033626522297962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P14298033626522297962

namespace A260379

/-- `∩[A030096(n+1), A386117(n+1)]` -/
def P14298033626522297962.Spec : Prop :=
  ∀ n, (P14298033626522297962.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P6001714579355895044

`∩[A091633(n+1), A190223(n+1)]`
-/

namespace A260379.P6001714579355895044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P6001714579355895044

namespace A260379

/-- `∩[A091633(n+1), A190223(n+1)]` -/
def P6001714579355895044.Spec : Prop :=
  ∀ n, (P6001714579355895044.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P15559276874764098299

`∩[A190223(n+1), A386025(n+1)]`
-/

namespace A260379.P15559276874764098299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P15559276874764098299

namespace A260379

/-- `∩[A190223(n+1), A386025(n+1)]` -/
def P15559276874764098299.Spec : Prop :=
  ∀ n, (P15559276874764098299.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P8840838759442897075

`∩[A190223(n+1), A386107(n+1)]`
-/

namespace A260379.P8840838759442897075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P8840838759442897075

namespace A260379

/-- `∩[A190223(n+1), A386107(n+1)]` -/
def P8840838759442897075.Spec : Prop :=
  ∀ n, (P8840838759442897075.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P6169946497108851521

`∩[A190223(n+1), A386114(n+1)]`
-/

namespace A260379.P6169946497108851521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P6169946497108851521

namespace A260379

/-- `∩[A190223(n+1), A386114(n+1)]` -/
def P6169946497108851521.Spec : Prop :=
  ∀ n, (P6169946497108851521.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P5302152455776707731

`∩[A190223(n+1), A386117(n+1)]`
-/

namespace A260379.P5302152455776707731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P5302152455776707731

namespace A260379

/-- `∩[A190223(n+1), A386117(n+1)]` -/
def P5302152455776707731.Spec : Prop :=
  ∀ n, (P5302152455776707731.a n : ℤ) = A260379 (n + 1)

end A260379

/-! ## A260379.P3186442118552441625

`∩[A091633(n+1), A190222(n+1)]`
-/

namespace A260379.P3186442118552441625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260379.P3186442118552441625

namespace A260379

/-- `∩[A091633(n+1), A190222(n+1)]` -/
def P3186442118552441625.Spec : Prop :=
  ∀ n, (P3186442118552441625.a n : ℤ) = A260379 (n + 1)

end A260379

/-!
# A260380: Primes having only {3, 6, 7} as digits.

The programs for A260380, there is no canonical definition to state claims against.
-/

/-! ## A260380.P8187287794756638464

`∩[A386065(n+1), A386184(n+1)]`
-/

namespace A260380.P8187287794756638464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P8187287794756638464

/-! ## A260380.P16348576213651744114

`∩[A386065(n+1), A386173(n+1)]`
-/

namespace A260380.P16348576213651744114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P16348576213651744114

/-! ## A260380.P704189831559464989

`∩[A386173(n+1), A386184(n+1)]`
-/

namespace A260380.P704189831559464989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P704189831559464989

/-! ## A260380.P4158955350673855716

`∩[A386065(n+1), A386178(n+1)]`
-/

namespace A260380.P4158955350673855716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P4158955350673855716

/-! ## A260380.P1250943899294996083

`∩[A386173(n+1), A386178(n+1)]`
-/

namespace A260380.P1250943899294996083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P1250943899294996083

/-! ## A260380.P12148379675304521508

`∩[A386178(n+1), A386184(n+1)]`
-/

namespace A260380.P12148379675304521508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P12148379675304521508

/-! ## A260380.P3586566099297027950

`∩[A386065(n+1), A386185(n+1)]`
-/

namespace A260380.P3586566099297027950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P3586566099297027950

/-! ## A260380.P13436352620614976281

`∩[A386173(n+1), A386185(n+1)]`
-/

namespace A260380.P13436352620614976281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P13436352620614976281

/-! ## A260380.P11879445657837939007

`∩[A386178(n+1), A386185(n+1)]`
-/

namespace A260380.P11879445657837939007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P11879445657837939007

/-! ## A260380.P15223201208710678111

`∩[A386185(n+1), A386184(n+1)]`
-/

namespace A260380.P15223201208710678111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P15223201208710678111

/-! ## A260380.P377305470743062557

`∩[A386065(n+1), A386114(n+1)]`
-/

namespace A260380.P377305470743062557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P377305470743062557

/-! ## A260380.P1354990277400520587

`∩[A386065(n+1), A386147(n+1)]`
-/

namespace A260380.P1354990277400520587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P1354990277400520587

/-! ## A260380.P2092531236634996558

`∩[A386114(n+1), A386147(n+1)]`
-/

namespace A260380.P2092531236634996558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P2092531236634996558

/-! ## A260380.P7698709059987944848

`∩[A386114(n+1), A386173(n+1)]`
-/

namespace A260380.P7698709059987944848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P7698709059987944848

/-! ## A260380.P14497247238394822879

`∩[A386114(n+1), A386178(n+1)]`
-/

namespace A260380.P14497247238394822879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P14497247238394822879

/-! ## A260380.P15452189294900574328

`∩[A386114(n+1), A386184(n+1)]`
-/

namespace A260380.P15452189294900574328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P15452189294900574328

/-! ## A260380.P10683694161783699422

`∩[A386114(n+1), A386185(n+1)]`
-/

namespace A260380.P10683694161783699422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P10683694161783699422

/-! ## A260380.P3753130175195647047

`∩[A386147(n+1), A386173(n+1)]`
-/

namespace A260380.P3753130175195647047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P3753130175195647047

/-! ## A260380.P7170412241677275398

`∩[A386147(n+1), A386178(n+1)]`
-/

namespace A260380.P7170412241677275398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P7170412241677275398

/-! ## A260380.P11060677991059419890

`∩[A386147(n+1), A386184(n+1)]`
-/

namespace A260380.P11060677991059419890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260380.P11060677991059419890

/-!
# A260381: Primes having only {3, 7, 8} as digits.

The programs for A260381, there is no canonical definition to state claims against.
-/

/-! ## A260381.P11241084210394812256

`∩[A386067(n+1), A386184(n+1)]`
-/

namespace A260381.P11241084210394812256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P11241084210394812256

/-! ## A260381.P17522178521301523668

`∩[A386067(n+1), A386176(n+1)]`
-/

namespace A260381.P17522178521301523668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P17522178521301523668

/-! ## A260381.P12155772886496242893

`∩[A386176(n+1), A386184(n+1)]`
-/

namespace A260381.P12155772886496242893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P12155772886496242893

/-! ## A260381.P460978398274980383

`∩[A386067(n+1), A386181(n+1)]`
-/

namespace A260381.P460978398274980383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P460978398274980383

/-! ## A260381.P18438404282145716702

`∩[A386176(n+1), A386181(n+1)]`
-/

namespace A260381.P18438404282145716702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P18438404282145716702

/-! ## A260381.P14159621680520870940

`∩[A386181(n+1), A386184(n+1)]`
-/

namespace A260381.P14159621680520870940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P14159621680520870940

/-! ## A260381.P10971187716778926628

`∩[A386067(n+1), A386187(n+1)]`
-/

namespace A260381.P10971187716778926628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P10971187716778926628

/-! ## A260381.P16073171356445017161

`∩[A386176(n+1), A386187(n+1)]`
-/

namespace A260381.P16073171356445017161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P16073171356445017161

/-! ## A260381.P12357764672827653304

`∩[A386187(n+1), A386181(n+1)]`
-/

namespace A260381.P12357764672827653304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P12357764672827653304

/-! ## A260381.P9518386688970898464

`∩[A386067(n+1), A386117(n+1)]`
-/

namespace A260381.P9518386688970898464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P9518386688970898464

/-! ## A260381.P7295394217179518574

`∩[A386067(n+1), A386150(n+1)]`
-/

namespace A260381.P7295394217179518574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P7295394217179518574

/-! ## A260381.P15047922583812020239

`∩[A386117(n+1), A386150(n+1)]`
-/

namespace A260381.P15047922583812020239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P15047922583812020239

/-! ## A260381.P17938460555539487834

`∩[A386117(n+1), A386176(n+1)]`
-/

namespace A260381.P17938460555539487834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P17938460555539487834

/-! ## A260381.P16585234406160701812

`∩[A386117(n+1), A386181(n+1)]`
-/

namespace A260381.P16585234406160701812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P16585234406160701812

/-! ## A260381.P8043452016903665098

`∩[A386117(n+1), A386184(n+1)]`
-/

namespace A260381.P8043452016903665098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P8043452016903665098

/-! ## A260381.P3718394194667906130

`∩[A386117(n+1), A386187(n+1)]`
-/

namespace A260381.P3718394194667906130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P3718394194667906130

/-! ## A260381.P18195196103445219312

`∩[A386150(n+1), A386176(n+1)]`
-/

namespace A260381.P18195196103445219312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P18195196103445219312

/-! ## A260381.P2494237130501848537

`∩[A386150(n+1), A386181(n+1)]`
-/

namespace A260381.P2494237130501848537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P2494237130501848537

/-! ## A260381.P8108368603716634910

`∩[A386150(n+1), A386184(n+1)]`
-/

namespace A260381.P8108368603716634910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P8108368603716634910

/-! ## A260381.P12324504819401088086

`∩[A386150(n+1), A386187(n+1)]`
-/

namespace A260381.P12324504819401088086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260381.P12324504819401088086

/-!
# A260382: Primes having only {3, 7, 9} as digits.

The programs for A260382, there is no canonical definition to state claims against.
-/

/-! ## A260382.P12066992037578412101

`∩[A386068(n+1), A386187(n+1)]`
-/

namespace A260382.P12066992037578412101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P12066992037578412101

/-! ## A260382.P8177099025203550810

`∩[A281093(n+1), A386068(n+1)]`
-/

namespace A260382.P8177099025203550810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P8177099025203550810

/-! ## A260382.P1737622446096252985

`∩[A281093(n+1), A386182(n+1)]`
-/

namespace A260382.P1737622446096252985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P1737622446096252985

/-! ## A260382.P13674300456479302628

`∩[A281093(n+1), A386187(n+1)]`
-/

namespace A260382.P13674300456479302628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P13674300456479302628

/-! ## A260382.P17308380457827664292

`∩[A386068(n+1), A386182(n+1)]`
-/

namespace A260382.P17308380457827664292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P17308380457827664292

/-! ## A260382.P3296632161873076238

`∩[A281093(n+1), A386185(n+1)]`
-/

namespace A260382.P3296632161873076238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P3296632161873076238

/-! ## A260382.P3431300652320901654

`∩[A386068(n+1), A386185(n+1)]`
-/

namespace A260382.P3431300652320901654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P3431300652320901654

/-! ## A260382.P14021999412836358151

`∩[A386182(n+1), A386185(n+1)]`
-/

namespace A260382.P14021999412836358151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P14021999412836358151

/-! ## A260382.P3047053369148717788

`∩[A386187(n+1), A386185(n+1)]`
-/

namespace A260382.P3047053369148717788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P3047053369148717788

/-! ## A260382.P6666453749211718671

`∩[A281093(n+1), A386151(n+1)]`
-/

namespace A260382.P6666453749211718671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P6666453749211718671

/-! ## A260382.P136153263533167487

`∩[A386068(n+1), A386151(n+1)]`
-/

namespace A260382.P136153263533167487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P136153263533167487

/-! ## A260382.P10260883662853388746

`∩[A386151(n+1), A386182(n+1)]`
-/

namespace A260382.P10260883662853388746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P10260883662853388746

/-! ## A260382.P6255337852043947986

`∩[A386151(n+1), A386185(n+1)]`
-/

namespace A260382.P6255337852043947986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P6255337852043947986

/-! ## A260382.P4929039993572159197

`∩[A386151(n+1), A386187(n+1)]`
-/

namespace A260382.P4929039993572159197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P4929039993572159197

/-! ## A260382.P8630982808440743306

`∩[A091633(n+1), A281093(n+1)]`
-/

namespace A260382.P8630982808440743306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P8630982808440743306

/-! ## A260382.P13052088388717637282

`∩[A091633(n+1), A386068(n+1)]`
-/

namespace A260382.P13052088388717637282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P13052088388717637282

/-! ## A260382.P10737713315713240526

`∩[A091633(n+1), A386151(n+1)]`
-/

namespace A260382.P10737713315713240526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P10737713315713240526

/-! ## A260382.P6390635429712372664

`∩[A091633(n+1), A386182(n+1)]`
-/

namespace A260382.P6390635429712372664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P6390635429712372664

/-! ## A260382.P10528164445135064603

`∩[A091633(n+1), A386185(n+1)]`
-/

namespace A260382.P10528164445135064603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P10528164445135064603

/-! ## A260382.P12686757094527301384

`∩[A091633(n+1), A386187(n+1)]`
-/

namespace A260382.P12686757094527301384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260382.P12686757094527301384

/-!
# A260384: Maximal gap between successive elements of Pn with n >= 3. Pn : primes p <= A002110(n) such that q=2*A002110(n)-p is prime. (p, q) is a pair of centered primes at n-th primorial.

The programs for A260384, there is no canonical definition to state claims against.
-/

/-! ## A260384.P10536277656075836597

`A168273(n+1)+Δ[A076875(n+2)]`
-/

namespace A260384.P10536277656075836597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076875 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) + (f1 (n + 1) - f1 n)

end

end A260384.P10536277656075836597

/-!
# A260386: Numbers n which divide A260521(n), the concatenation of the positions of the digits 9, 8, ..., 0 in the decimal representation of n, where positions are counted from the right, and 0 if a given digit does not occur.

The programs for A260386, there is no canonical definition to state claims against.
-/

/-! ## A260386.P12007075485785870521

`record[gcd(n, A348783(A082216(n)))]`
-/

namespace A260386.P12007075485785870521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A348783 (A082216 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260386.P12007075485785870521

/-!
# A260389: For the Collatz (3x+1) iteration starting at k, the sequence lists the smallest k such that Fibonacci(n) belongs to the trajectory of k, or 0 if no such k exists.

The programs for A260389, there is no canonical definition to state claims against.
-/

/-! ## A260389.P1961469309744150478

`A261814(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A260389.P1961469309744150478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (f1 (n + 1) - f1 n).toNat

end

end A260389.P1961469309744150478

/-! ## A260389.P4717667860697694654

`A261814(A092565(n²))`
-/

namespace A260389.P4717667860697694654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A092565 (n ^ 2)).toNat

end

end A260389.P4717667860697694654

/-! ## A260389.P2647693502899818563

`A261814(A094441(∑[n]))`
-/

namespace A260389.P2647693502899818563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A094441 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A260389.P2647693502899818563

/-! ## A260389.P3612873626431643273

`A261814(A000045(n+1))`
-/

namespace A260389.P3612873626431643273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A000045 (n + 1)).toNat

end

end A260389.P3612873626431643273

/-! ## A260389.P11210642801850891415

`A261814(A274163(n+1))`
-/

namespace A260389.P11210642801850891415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261814 (A274163 (n + 1)).toNat

end

end A260389.P11210642801850891415

/-!
# A260390: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (1,0) and midword sequence (a(n)); see Comments.

The programs for A260390, there is no canonical definition to state claims against.
-/

/-! ## A260390.P11597289396487023595

`1-A260393(n+1)`
-/

namespace A260390.P11597289396487023595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260393 (n + 1)

end

end A260390.P11597289396487023595

/-! ## A260390.P3730311041497075231

`A035263(A313922(n+1))`
-/

namespace A260390.P3730311041497075231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A313922 (n + 1)).toNat

end

end A260390.P3730311041497075231

/-! ## A260390.P10821808659421740155

`A035263(A301697(n+1))`
-/

namespace A260390.P10821808659421740155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A301697 (n + 1)).toNat

end

end A260390.P10821808659421740155

/-! ## A260390.P1294405416567752510

`A035263(A310524(n+1))`
-/

namespace A260390.P1294405416567752510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A310524 (n + 1)).toNat

end

end A260390.P1294405416567752510

/-! ## A260390.P13859954933677658601

`and(A035263(n+1), A140298(n))`
-/

namespace A260390.P13859954933677658601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A140298 n)

end

end A260390.P13859954933677658601

/-! ## A260390.P3152306337763225227

`and(A091090(n), A092975(n+1))`
-/

namespace A260390.P3152306337763225227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091090 n) (A092975 (n + 1))

end

end A260390.P3152306337763225227

/-! ## A260390.P1593890626931300355

`and(A035263(n+1), A355324(n))`
-/

namespace A260390.P1593890626931300355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A355324 n)

end

end A260390.P1593890626931300355

/-! ## A260390.P13311017609103634636

`and(A091959(n+1), A355324(n))`
-/

namespace A260390.P13311017609103634636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091959 (n + 1)) (A355324 n)

end

end A260390.P13311017609103634636

/-! ## A260390.P6291017994118699151

`and(A035263(n+1), A295333(n))`
-/

namespace A260390.P6291017994118699151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A295333 n)

end

end A260390.P6291017994118699151

/-! ## A260390.P6738027153366578346

`1-and(A101684(n), A280345(n))`
-/

namespace A260390.P6738027153366578346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A101684 n) (A280345 n)

end

end A260390.P6738027153366578346

/-! ## A260390.P2184073091706663997

`1-and(A005985(n), A101684(n))`
-/

namespace A260390.P2184073091706663997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A005985 n) (A101684 n)

end

end A260390.P2184073091706663997

/-! ## A260390.P270313401881140329

`and(A035263(n+1), A041098(n))`
-/

namespace A260390.P270313401881140329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A041098 n)

end

end A260390.P270313401881140329

/-! ## A260390.P717114220338555580

`and(A035263(n+1), A116845(n+1))`
-/

namespace A260390.P717114220338555580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A116845 (n + 1))

end

end A260390.P717114220338555580

/-! ## A260390.P18409002698643098317

`and(A091959(n+1), A116845(n+1))`
-/

namespace A260390.P18409002698643098317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091959 (n + 1)) (A116845 (n + 1))

end

end A260390.P18409002698643098317

/-! ## A260390.P17713950590520683237

`and(A035263(n+1), A301325(n+1))`
-/

namespace A260390.P17713950590520683237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A301325 (n + 1))

end

end A260390.P17713950590520683237

/-! ## A260390.P1561639039574960996

`and(A035263(n+1), A300634(n+1))`
-/

namespace A260390.P1561639039574960996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A300634 (n + 1))

end

end A260390.P1561639039574960996

/-! ## A260390.P16365450671893258076

`and(A035263(n+1), A041580(n))`
-/

namespace A260390.P16365450671893258076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A041580 n)

end

end A260390.P16365450671893258076

/-! ## A260390.P16641896580163730900

`and(A041580(n), A091959(n+1))`
-/

namespace A260390.P16641896580163730900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041580 n) (A091959 (n + 1))

end

end A260390.P16641896580163730900

/-! ## A260390.P1964474762762085550

`and(A035263(n+1), A041338(n))`
-/

namespace A260390.P1964474762762085550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035263 (n + 1)) (A041338 n)

end

end A260390.P1964474762762085550

/-! ## A260390.P13262348545514929803

`and(A041338(n), A091959(n+1))`
-/

namespace A260390.P13262348545514929803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A041338 n) (A091959 (n + 1))

end

end A260390.P13262348545514929803

/-!
# A260391: Positions of 0 in the infinite palindromic word at A260390.

The programs for A260391, there is no canonical definition to state claims against.
-/

/-! ## A260391.P13367312459382781672

`filter[n+1, A260393(#)]`
-/

namespace A260391.P13367312459382781672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j) = 1) n)

end

end A260391.P13367312459382781672

/-! ## A260391.P10921946725387740060

`eq[A019427(n), A309873(A008576(n))]`
-/

namespace A260391.P10921946725387740060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A008576 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260391.P10921946725387740060

/-! ## A260391.P7797982260620700013

`eq[A019429(n), A309873(A008576(n))]`
-/

namespace A260391.P7797982260620700013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A008576 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260391.P7797982260620700013

/-! ## A260391.P10931783316739909775

`eq[A019432(n), A309873(A008576(n))]`
-/

namespace A260391.P10931783316739909775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A008576 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260391.P10931783316739909775

/-! ## A260391.P16593147251739532588

`2*A092278(A108269(n+1))`
-/

namespace A260391.P16593147251739532588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092278 (A108269 (n + 1)).toNat

end

end A260391.P16593147251739532588

/-! ## A260391.P6925283427880239989

`lt[2-(n-A080427(3*n+1))%2, A020639(n+3)]`
-/

namespace A260391.P6925283427880239989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((n : ℤ) - A080427 (3 * n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260391.P6925283427880239989

/-! ## A260391.P4965597598382370516

`eq[(n-1)%2, A309873(A301298(n))]`
-/

namespace A260391.P4965597598382370516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A301298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260391.P4965597598382370516

/-! ## A260391.P4210337070904591062

`A112689(9*A003159(n+1))`
-/

namespace A260391.P4210337070904591062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (9 * A003159 (n + 1)).toNat

end

end A260391.P4210337070904591062

/-!
# A260392: Positions of 1 in the infinite palindromic word at A260390.

The programs for A260392, there is no canonical definition to state claims against.
-/

/-! ## A260392.P78434713277439903

`a(n-1)+A260393(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A260392.P78434713277439903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A260393 (a (n - 1) + 1).toNat + 1)

end

end A260392.P78434713277439903

/-! ## A260392.P16611888071970586411

`filter[n+1, A260390(#)]`
-/

namespace A260392.P16611888071970586411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j) = 1) n)

end

end A260392.P16611888071970586411

/-! ## A260392.P14968292488462774725

`record[(n+1)*A260390(n+1)]`
-/

namespace A260392.P14968292488462774725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A260390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260392.P14968292488462774725

/-! ## A260392.P3892844905436082867

`record[A260390(n+1)+A091684(n)]`
-/

namespace A260392.P3892844905436082867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (n + 1) + A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260392.P3892844905436082867

/-! ## A260392.P17946006997316493270

`record[A260390(n+1)+A106610(n)]`
-/

namespace A260392.P17946006997316493270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260390 (n + 1) + A106610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260392.P17946006997316493270

/-! ## A260392.P15149808016719838678

`eq[A000035(n), A035263(A314668(n))]`
-/

namespace A260392.P15149808016719838678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A314668 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260392.P15149808016719838678

/-! ## A260392.P11124322776076441032

`eq[A067180(n+1), A067180(or(n, n+1))]+1`
-/

namespace A260392.P11124322776076441032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (Nat.lor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A260392.P11124322776076441032

/-! ## A260392.P16512985669976680787

`record[n+1-and(n, Δ[A108882(n+1)])]`
-/

namespace A260392.P16512985669976680787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260392.P16512985669976680787

/-! ## A260392.P11938278213860065962

`eq[A131718(n²), A285383(n+1)]`
-/

namespace A260392.P11938278213860065962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131718 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260392.P11938278213860065962

/-!
# A260393: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (0,1) and midword sequence (a(n)); see Comments.

The programs for A260393, there is no canonical definition to state claims against.
-/

/-! ## A260393.P7116951232280906295

`1-A260390(n+1)`
-/

namespace A260393.P7116951232280906295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260390 (n + 1)

end

end A260393.P7116951232280906295

/-! ## A260393.P3237837402791727304

`A260456(A260479(n+1)+A260390(n+1))`
-/

namespace A260393.P3237837402791727304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260456 (A260479 (n + 1) + A260390 (n + 1)).toNat

end

end A260393.P3237837402791727304

/-! ## A260393.P11203020515837790496

`A007814(A260390(n+1)+2*n)`
-/

namespace A260393.P11203020515837790496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A260390 (n + 1) + (2 * n : ℤ)).toNat

end

end A260393.P11203020515837790496

/-! ## A260393.P8391548263294027943

`A260446(A260390(n+1)+2*n)`
-/

namespace A260393.P8391548263294027943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260446 (A260390 (n + 1) + (2 * n : ℤ)).toNat

end

end A260393.P8391548263294027943

/-! ## A260393.P17458224647442691947

`A091959(A260390(n+1)+2*n+1)`
-/

namespace A260393.P17458224647442691947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091959 (A260390 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A260393.P17458224647442691947

/-! ## A260393.P10994286393547606322

`A260455(A260480(n+1)+A260390(n+1))`
-/

namespace A260393.P10994286393547606322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260455 (A260480 (n + 1) + A260390 (n + 1)).toNat

end

end A260393.P10994286393547606322

/-! ## A260393.P13583125806002005824

`A260446(A260400(n+1)+A260390(n+1))`
-/

namespace A260393.P13583125806002005824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260446 (A260400 (n + 1) + A260390 (n + 1)).toNat

end

end A260393.P13583125806002005824

/-! ## A260393.P3747671233761700612

`A260445(A260398(n+1)+A260390(n+1))`
-/

namespace A260393.P3747671233761700612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (A260398 (n + 1) + A260390 (n + 1)).toNat

end

end A260393.P3747671233761700612

/-! ## A260393.P12342438777651811618

`A035263(A314668(n+1))-A000035(n+1)`
-/

namespace A260393.P12342438777651811618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A314668 (n + 1)).toNat - A000035 (n + 1)

end

end A260393.P12342438777651811618

/-! ## A260393.P14987762085929062202

`1-A035263(A313922(n+1))`
-/

namespace A260393.P14987762085929062202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (A313922 (n + 1)).toNat

end

end A260393.P14987762085929062202

/-! ## A260393.P8933665016290968793

`A035263(2*A313922(n+1))`
-/

namespace A260393.P8933665016290968793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * A313922 (n + 1)).toNat

end

end A260393.P8933665016290968793

/-! ## A260393.P4186480554665580151

`1-A035263(A301697(n+1))`
-/

namespace A260393.P4186480554665580151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (A301697 (n + 1)).toNat

end

end A260393.P4186480554665580151

/-! ## A260393.P14429023772076364580

`A035263(2*A301697(n+1))`
-/

namespace A260393.P14429023772076364580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * A301697 (n + 1)).toNat

end

end A260393.P14429023772076364580

/-! ## A260393.P9813980669451373772

`1-A035263(A310524(n+1))`
-/

namespace A260393.P9813980669451373772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035263 (A310524 (n + 1)).toNat

end

end A260393.P9813980669451373772

/-! ## A260393.P889563010395345366

`A035263(2*A310524(n+1))`
-/

namespace A260393.P889563010395345366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (2 * A310524 (n + 1)).toNat

end

end A260393.P889563010395345366

/-! ## A260393.P1843900711067310020

`1-and(A035263(n+1), A140298(n))`
-/

namespace A260393.P1843900711067310020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A035263 (n + 1)) (A140298 n)

end

end A260393.P1843900711067310020

/-! ## A260393.P1253245142765441360

`1-and(A091090(n), A092975(n+1))`
-/

namespace A260393.P1253245142765441360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A091090 n) (A092975 (n + 1))

end

end A260393.P1253245142765441360

/-! ## A260393.P5274377517848696613

`1-and(A035263(n+1), A355324(n))`
-/

namespace A260393.P5274377517848696613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A035263 (n + 1)) (A355324 n)

end

end A260393.P5274377517848696613

/-! ## A260393.P9317144283648328399

`1-and(A035263(n+1), A295333(n))`
-/

namespace A260393.P9317144283648328399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A035263 (n + 1)) (A295333 n)

end

end A260393.P9317144283648328399

/-! ## A260393.P2891253450976162728

`and(A101684(n), A280345(n))`
-/

namespace A260393.P2891253450976162728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101684 n) (A280345 n)

end

end A260393.P2891253450976162728

/-!
# A260394: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (0,1,1) and midword sequence (a(n)); see Comments.

The programs for A260394, there is no canonical definition to state claims against.
-/

/-! ## A260394.P6913924966690233312

`1-A260444(n+1)`
-/

namespace A260394.P6913924966690233312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260444 (n + 1)

end

end A260394.P6913924966690233312

/-! ## A260394.P12483674430040835453

`A260451(n+1)%2`
-/

namespace A260394.P12483674430040835453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260451 (n + 1)) 2

end

end A260394.P12483674430040835453

/-! ## A260394.P16914767473738881976

`A260452(n+1)%2`
-/

namespace A260394.P16914767473738881976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260452 (n + 1)) 2

end

end A260394.P16914767473738881976

/-! ## A260394.P16860005177043247073

`7%A260449(n+1)`
-/

namespace A260394.P16860005177043247073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A260449 (n + 1))

end

end A260394.P16860005177043247073

/-! ## A260394.P12093066036220508435

`19%A260450(n+1)`
-/

namespace A260394.P12093066036220508435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 19 (A260450 (n + 1))

end

end A260394.P12093066036220508435

/-! ## A260394.P11694728036617600835

`A260453(n+1)²%3`
-/

namespace A260394.P11694728036617600835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260453 (n + 1) ^ 2) 3

end

end A260394.P11694728036617600835

/-! ## A260394.P13545237179012480034

`round(1/A260454(n+1))`
-/

namespace A260394.P13545237179012480034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A260454 (n + 1) : ℚ))

end

end A260394.P13545237179012480034

/-! ## A260394.P782545727208551141

`and(A000328(n), A260451(n+1))`
-/

namespace A260394.P782545727208551141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A260451 (n + 1))

end

end A260394.P782545727208551141

/-! ## A260394.P588878828737486836

`and(A000328(n), A260452(n+1))`
-/

namespace A260394.P588878828737486836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A260452 (n + 1))

end

end A260394.P588878828737486836

/-! ## A260394.P12181772406757413400

`and(A001513(n), A260451(n+1))`
-/

namespace A260394.P12181772406757413400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A260451 (n + 1))

end

end A260394.P12181772406757413400

/-! ## A260394.P16698198681470185698

`and(A001513(n), A260452(n+1))`
-/

namespace A260394.P16698198681470185698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A260452 (n + 1))

end

end A260394.P16698198681470185698

/-! ## A260394.P7201064413707515277

`and(A001535(n), A260451(n+1))`
-/

namespace A260394.P7201064413707515277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A260451 (n + 1))

end

end A260394.P7201064413707515277

/-! ## A260394.P3978632890014332167

`and(A001535(n), A260452(n+1))`
-/

namespace A260394.P3978632890014332167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A260452 (n + 1))

end

end A260394.P3978632890014332167

/-! ## A260394.P13353998340550390386

`and(A001546(n), A260451(n+1))`
-/

namespace A260394.P13353998340550390386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A260451 (n + 1))

end

end A260394.P13353998340550390386

/-! ## A260394.P7185139291021154160

`and(A001546(n), A260452(n+1))`
-/

namespace A260394.P7185139291021154160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A260452 (n + 1))

end

end A260394.P7185139291021154160

/-! ## A260394.P9425481776047939983

`and(A001844(n), A260451(n+1))`
-/

namespace A260394.P9425481776047939983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A260451 (n + 1))

end

end A260394.P9425481776047939983

/-! ## A260394.P5603440325954641260

`and(A001844(n), A260452(n+1))`
-/

namespace A260394.P5603440325954641260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A260452 (n + 1))

end

end A260394.P5603440325954641260

/-! ## A260394.P321457600390001838

`and(A001846(n), A260451(n+1))`
-/

namespace A260394.P321457600390001838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A260451 (n + 1))

end

end A260394.P321457600390001838

/-! ## A260394.P16927236188934457987

`and(A001846(n), A260452(n+1))`
-/

namespace A260394.P16927236188934457987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A260452 (n + 1))

end

end A260394.P16927236188934457987

/-! ## A260394.P11609441646480262668

`and(A001848(n), A260451(n+1))`
-/

namespace A260394.P11609441646480262668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A260451 (n + 1))

end

end A260394.P11609441646480262668

/-!
# A260395: Positions of 0 in the infinite palindromic word at A260394.

The programs for A260395, there is no canonical definition to state claims against.
-/

/-! ## A260395.P16628315718464381334

`∩[A260399(n+1), A260401(n+1)]`
-/

namespace A260395.P16628315718464381334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260395.P16628315718464381334

/-! ## A260395.P2658136216446516082

`eq[1, A260449(n+1)]+1`
-/

namespace A260395.P2658136216446516082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260395.P2658136216446516082

/-! ## A260395.P17452127293112430153

`eq[1, A260450(n+1)]+1`
-/

namespace A260395.P17452127293112430153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260395.P17452127293112430153

/-! ## A260395.P16701125801529578604

`lt[A260394(n+1), 1]+1`
-/

namespace A260395.P16701125801529578604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260395.P16701125801529578604

/-! ## A260395.P2318220472886667032

`eq[2, A260451(n+1)]+1`
-/

namespace A260395.P2318220472886667032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260395.P2318220472886667032

/-! ## A260395.P6605985491330170744

`eq[2, A260452(n+1)]+1`
-/

namespace A260395.P6605985491330170744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260395.P6605985491330170744

/-! ## A260395.P6088016788811430188

`lt[2, A260453(n+1)]+1`
-/

namespace A260395.P6088016788811430188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260395.P6088016788811430188

/-! ## A260395.P4263909887672547908

`lt[2, A260454(n+1)]+1`
-/

namespace A260395.P4263909887672547908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260395.P4263909887672547908

/-! ## A260395.P2546352270652291048

`filter[A260399(n+1), A259599(#)]`
-/

namespace A260395.P2546352270652291048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A260395.P2546352270652291048

/-! ## A260395.P8604093216235419096

`filter[A260401(n+1), A260397(#)]`
-/

namespace A260395.P8604093216235419096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j).toNat = 1) n)

end

end A260395.P8604093216235419096

/-! ## A260395.P2267002703876340700

`eq[A040333(n*A123726(n)), A123726(n)]`
-/

namespace A260395.P2267002703876340700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040333 ((n : ℤ) * A123726 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260395.P2267002703876340700

/-!
# A260396: Positions of 1 in the infinite palindromic word at A260394.

The programs for A260396, there is no canonical definition to state claims against.
-/

/-! ## A260396.P11668857233793025510

`∪[A260398(n+1), A260400(n+1)]`
-/

namespace A260396.P11668857233793025510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260396.P11668857233793025510

/-! ## A260396.P16603416812051124443

`filter[n+1, A260394(#)]`
-/

namespace A260396.P16603416812051124443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j) = 1) n)

end

end A260396.P16603416812051124443

/-! ## A260396.P13827839535467831412

`eq[1, A260394(n+1)]+1`
-/

namespace A260396.P13827839535467831412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260396.P13827839535467831412

/-! ## A260396.P4716990681430510361

`lt[1, A260449(n+1)]+1`
-/

namespace A260396.P4716990681430510361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260396.P4716990681430510361

/-! ## A260396.P10470646025210968754

`lt[1, A260450(n+1)]+1`
-/

namespace A260396.P10470646025210968754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260396.P10470646025210968754

/-! ## A260396.P6239587900150117829

`lt[A260453(n+1), 3]+1`
-/

namespace A260396.P6239587900150117829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260396.P6239587900150117829

/-! ## A260396.P5121888265448492674

`lt[A260454(n+1), 3]+1`
-/

namespace A260396.P5121888265448492674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260396.P5121888265448492674

/-! ## A260396.P3981586445195258276

`record[(n+2)*A260394(n+2)]`
-/

namespace A260396.P3981586445195258276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A260394 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260396.P3981586445195258276

/-! ## A260396.P5475750653165650360

`lt[1, A260449(A004277(n)-n)]`
-/

namespace A260396.P5475750653165650360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260396.P5475750653165650360

/-! ## A260396.P10464145679303906615

`eq[1, A260394(gcd(n, A008458(n)))]`
-/

namespace A260396.P10464145679303906615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260396.P10464145679303906615

/-! ## A260396.P3760845262009600088

`eq[1, A260394(A008458(n)+n)]`
-/

namespace A260396.P3760845262009600088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (A008458 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260396.P3760845262009600088

/-!
# A260397: Infinite palindromic word (a(1),a(2),a(3),...) with initial word w(1) = (1,1,0) and midword sequence (a(n)); see Comments.

The programs for A260397, there is no canonical definition to state claims against.
-/

/-! ## A260397.P2723864504428042750

`1-A260445(n+1)`
-/

namespace A260397.P2723864504428042750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A260445 (n + 1)

end

end A260397.P2723864504428042750

/-! ## A260397.P3777609207743301228

`A260450(n+1)%2`
-/

namespace A260397.P3777609207743301228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260450 (n + 1)) 2

end

end A260397.P3777609207743301228

/-! ## A260397.P13884740973285132408

`A260453(n+1)%2`
-/

namespace A260397.P13884740973285132408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260453 (n + 1)) 2

end

end A260397.P13884740973285132408

/-! ## A260397.P6654714116385959752

`7%A260451(n+1)`
-/

namespace A260397.P6654714116385959752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A260451 (n + 1))

end

end A260397.P6654714116385959752

/-! ## A260397.P10592889650139354372

`floor(log2(A260454(n+1)))`
-/

namespace A260397.P10592889650139354372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A260454 (n + 1)).toNat

end

end A260397.P10592889650139354372

/-! ## A260397.P12521282422093589650

`round(1/A260449(n+1))`
-/

namespace A260397.P12521282422093589650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A260449 (n + 1) : ℚ))

end

end A260397.P12521282422093589650

/-! ## A260397.P14460439560571122282

`round(1/A260452(n+1))`
-/

namespace A260397.P14460439560571122282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A260452 (n + 1) : ℚ))

end

end A260397.P14460439560571122282

/-! ## A260397.P11989116012643627388

`A010712(n)%A260454(n+1)`
-/

namespace A260397.P11989116012643627388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010712 n) (A260454 (n + 1))

end

end A260397.P11989116012643627388

/-! ## A260397.P10079189789617055154

`A016792(n)%A260454(n+1)`
-/

namespace A260397.P10079189789617055154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016792 n) (A260454 (n + 1))

end

end A260397.P10079189789617055154

/-! ## A260397.P14371522196409545409

`A016794(n)%A260454(n+1)`
-/

namespace A260397.P14371522196409545409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016794 n) (A260454 (n + 1))

end

end A260397.P14371522196409545409

/-! ## A260397.P5046069838569582093

`A016796(n)%A260454(n+1)`
-/

namespace A260397.P5046069838569582093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016796 n) (A260454 (n + 1))

end

end A260397.P5046069838569582093

/-! ## A260397.P11120140274064057106

`A016972(n)%A260454(n+1)`
-/

namespace A260397.P11120140274064057106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016972 n) (A260454 (n + 1))

end

end A260397.P11120140274064057106

/-! ## A260397.P11713262035675462405

`A017190(n)%A260454(n+1)`
-/

namespace A260397.P11713262035675462405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017190 n) (A260454 (n + 1))

end

end A260397.P11713262035675462405

/-! ## A260397.P13695388585509472522

`A017260(n)%A260454(n+1)`
-/

namespace A260397.P13695388585509472522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017260 n) (A260454 (n + 1))

end

end A260397.P13695388585509472522

/-! ## A260397.P10105791238847709453

`A059139(n)%A260454(n+1)`
-/

namespace A260397.P10105791238847709453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059139 n) (A260454 (n + 1))

end

end A260397.P10105791238847709453

/-! ## A260397.P10645723969835951618

`A103214(n)%A260454(n+1)`
-/

namespace A260397.P10645723969835951618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103214 n) (A260454 (n + 1))

end

end A260397.P10645723969835951618

/-! ## A260397.P18384633866845573122

`and(A000328(n), A260450(n+1))`
-/

namespace A260397.P18384633866845573122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A260450 (n + 1))

end

end A260397.P18384633866845573122

/-! ## A260397.P11169331900924578153

`and(A000328(n), A260453(n+1))`
-/

namespace A260397.P11169331900924578153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A260453 (n + 1))

end

end A260397.P11169331900924578153

/-! ## A260397.P4458278470959401255

`and(A001513(n), A260450(n+1))`
-/

namespace A260397.P4458278470959401255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A260450 (n + 1))

end

end A260397.P4458278470959401255

/-! ## A260397.P1774776052462491792

`and(A001513(n), A260453(n+1))`
-/

namespace A260397.P1774776052462491792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A260453 (n + 1))

end

end A260397.P1774776052462491792

/-!
# A260398: Positions of 0 in the infinite palindromic word at A260397.

The programs for A260398, there is no canonical definition to state claims against.
-/

/-! ## A260398.P16626143374751562341

`filter[A260396(n+1), A035263(#)]`
-/

namespace A260398.P16626143374751562341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A260398.P16626143374751562341

/-! ## A260398.P7072460700937448499

`∩[A003159(n+1), A260396(n+1)]`
-/

namespace A260398.P7072460700937448499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260398.P7072460700937448499

/-! ## A260398.P9752441434865853719

`∩[A260396(n+1), A260401(n+1)]`
-/

namespace A260398.P9752441434865853719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260398.P9752441434865853719

/-! ## A260398.P6385011027742837410

`filter[n+1, A260445(#)]`
-/

namespace A260398.P6385011027742837410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260445 (f1 j) = 1) n)

end

end A260398.P6385011027742837410

/-! ## A260398.P18108646831075452185

`lt[0, A260445(n+1)]+1`
-/

namespace A260398.P18108646831075452185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260398.P18108646831075452185

/-! ## A260398.P4151088740981309138

`eq[1, A260451(n+1)]+1`
-/

namespace A260398.P4151088740981309138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260398.P4151088740981309138

/-! ## A260398.P12544538285149833038

`eq[1, A260454(n+1)]+1`
-/

namespace A260398.P12544538285149833038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260398.P12544538285149833038

/-! ## A260398.P1668664014778702071

`lt[A260397(n+1), 1]+1`
-/

namespace A260398.P1668664014778702071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260398.P1668664014778702071

/-! ## A260398.P13533776427250791

`eq[2, A260450(n+1)]+1`
-/

namespace A260398.P13533776427250791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260398.P13533776427250791

/-! ## A260398.P13056053964884730880

`eq[2, A260453(n+1)]+1`
-/

namespace A260398.P13056053964884730880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260398.P13056053964884730880

/-! ## A260398.P15800226935793577349

`lt[2, A260449(n+1)]+1`
-/

namespace A260398.P15800226935793577349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260398.P15800226935793577349

/-! ## A260398.P2259924326757966071

`lt[2, A260452(n+1)]+1`
-/

namespace A260398.P2259924326757966071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260398.P2259924326757966071

/-! ## A260398.P4527969099911187891

`eq[2, A260453(A028310(n))]`
-/

namespace A260398.P4527969099911187891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260453 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260398.P4527969099911187891

/-! ## A260398.P17494360011720502879

`filter[A003159(n+1), A260394(#)]`
-/

namespace A260398.P17494360011720502879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A260398.P17494360011720502879

/-! ## A260398.P15146186110229845450

`filter[A260396(n+1), A259599(#)]`
-/

namespace A260398.P15146186110229845450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259599 (f1 j).toNat = 1) n)

end

end A260398.P15146186110229845450

/-! ## A260398.P3537526490847445355

`filter[A260401(n+1), A260394(#)]`
-/

namespace A260398.P3537526490847445355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A260398.P3537526490847445355

/-! ## A260398.P983785400165490295

`lt[2, A260449(A004277(n)-n)]`
-/

namespace A260398.P983785400165490295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260398.P983785400165490295

/-! ## A260398.P1518701293961079038

`filter[A036552(2*n+1), A260394(#)]`
-/

namespace A260398.P1518701293961079038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036552 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A260398.P1518701293961079038

/-!
# A260399: Positions of 1 in the infinite palindromic word at A260397.

The programs for A260399, there is no canonical definition to state claims against.
-/

/-! ## A260399.P8773907167633492150

`∪[A036554(n+1), A260395(n+1)]`
-/

namespace A260399.P8773907167633492150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260399.P8773907167633492150

/-! ## A260399.P10506809446348710059

`∪[A260395(n+1), A260400(n+1)]`
-/

namespace A260399.P10506809446348710059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260399.P10506809446348710059

/-! ## A260399.P421028443897368889

`a(n-1)+A260445(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A260399.P421028443897368889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A260445 (a (n - 1) + 1).toNat + 1)

end

end A260399.P421028443897368889

/-! ## A260399.P14336023480068980007

`a(n-1)+2-A260397(a(n-1)+1)` with `a(0)=1`
-/

namespace A260399.P14336023480068980007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 - A260397 (a (n - 1) + 1).toNat

end

end A260399.P14336023480068980007

/-! ## A260399.P11773913210486574874

`filter[n+1, A260397(#)]`
-/

namespace A260399.P11773913210486574874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260397 (f1 j) = 1) n)

end

end A260399.P11773913210486574874

/-! ## A260399.P17148395799020973620

`eq[1, A260397(n+1)]+1`
-/

namespace A260399.P17148395799020973620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260399.P17148395799020973620

/-! ## A260399.P9175328227012727980

`lt[A260445(n+1), 1]+1`
-/

namespace A260399.P9175328227012727980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260399.P9175328227012727980

/-! ## A260399.P5940379142472438525

`lt[1, A260454(n+1)]+1`
-/

namespace A260399.P5940379142472438525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260399.P5940379142472438525

/-! ## A260399.P13083620830982894252

`lt[A260449(n+1), 3]+1`
-/

namespace A260399.P13083620830982894252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260399.P13083620830982894252

/-! ## A260399.P8506183687628017771

`lt[A260452(n+1), 3]+1`
-/

namespace A260399.P8506183687628017771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260452 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260399.P8506183687628017771

/-! ## A260399.P470500938174321074

`eq[1, A260450(n+1)%2]+1`
-/

namespace A260399.P470500938174321074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260450 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260399.P470500938174321074

/-! ## A260399.P12441741589205453163

`lt[A260450(n+1), A060684(2^val(n+1, 2))]+1`
-/

namespace A260399.P12441741589205453163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A260399.P12441741589205453163

