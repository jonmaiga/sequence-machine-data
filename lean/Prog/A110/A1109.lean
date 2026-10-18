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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
# A110901: Product_{k=1..n} (A013929(k)), the product of the first n positive integers that are each divisible by at least one square >= 4.

The programs for A110901, there is no canonical definition to state claims against.
-/

/-! ## A110901.P13549497536014890631

`∏[lt[1, ∏{e}[n, #]]]`
-/

namespace A110901.P13549497536014890631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110901.P13549497536014890631

/-! ## A110901.P16146311434034977092

`∏[lt[∏{p}[n, #], n]]`
-/

namespace A110901.P16146311434034977092
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110901.P16146311434034977092

/-! ## A110901.P1865855321214627153

`∏[comp[∏{p}[n, #]-1]+1]`
-/

namespace A110901.P1865855321214627153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110901.P1865855321214627153

/-! ## A110901.P581170590710357210

`∏[A013929(n+1)]`
-/

namespace A110901.P581170590710357210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110901.P581170590710357210

/-! ## A110901.P3456622301754081844

`∏[A350137(n+1)]`
-/

namespace A110901.P3456622301754081844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110901.P3456622301754081844

/-!
# A110903: Difference between the factorial of n and the double factorial of n.

The programs for A110903, the canonical program `A110903.P17200263053275712768` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110903 has offset 0).

The definition of A110903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110903.P17200263053275712768

`A000142(n)-A006882(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110903

/-- `A000142(n)-A006882(n)` -/
def P17200263053275712768.Spec : Prop :=
  ∀ n, P17200263053275712768.a n = A110903 n

theorem P17200263053275712768.correct : P17200263053275712768.Spec := by
  intro n
  simp only [A110903]

end A110903

/-! ## A110903.P968546508238678713

`n!-∏[n/a(n-1)]` with `a(0)=1`
-/

namespace A110903.P968546508238678713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A110903.P968546508238678713

namespace A110903

/-- `n!-∏[n/a(n-1)]` -/
def P968546508238678713.Spec : Prop :=
  ∀ n, P968546508238678713.a n = (A110903 n : ℚ)

end A110903

/-! ## A110903.P11118095041919142741

`n!-A230698(∑[n])`
-/

namespace A110903.P11118095041919142741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A230698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110903.P11118095041919142741

namespace A110903

/-- `n!-A230698(∑[n])` -/
def P11118095041919142741.Spec : Prop :=
  ∀ n, P11118095041919142741.a n = A110903 n

end A110903

/-! ## A110903.P13600182998434674080

`n!-(A128882(n)+1)`
-/

namespace A110903.P13600182998434674080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (A128882 n + 1)

end

end A110903.P13600182998434674080

namespace A110903

/-- `n!-(A128882(n)+1)` -/
def P13600182998434674080.Spec : Prop :=
  ∀ n, P13600182998434674080.a n = A110903 n

end A110903

/-! ## A110903.P3039670898692549290

`n!-A248809(∑[n]-n)`
-/

namespace A110903.P3039670898692549290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A248809 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A110903.P3039670898692549290

namespace A110903

/-- `n!-A248809(∑[n]-n)` -/
def P3039670898692549290.Spec : Prop :=
  ∀ n, P3039670898692549290.a n = A110903 n

end A110903

/-! ## A110903.P10536184814936891049

`n!-Δ[A060696(n+2)]/(n+1)`
-/

namespace A110903.P10536184814936891049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060696 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A110903.P10536184814936891049

namespace A110903

/-- `n!-Δ[A060696(n+2)]/(n+1)` -/
def P10536184814936891049.Spec : Prop :=
  ∀ n, P10536184814936891049.a n = (A110903 n : ℚ)

end A110903

/-! ## A110903.P157704044821731023

`n!-Δ[A129981(n+1)]/(n+2)`
-/

namespace A110903.P157704044821731023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) - (f1 (n + 1) - f1 n : ℚ) / (n + 2 : ℚ)

end

end A110903.P157704044821731023

namespace A110903

/-- `n!-Δ[A129981(n+1)]/(n+2)` -/
def P157704044821731023.Spec : Prop :=
  ∀ n, P157704044821731023.a n = (A110903 n : ℚ)

end A110903

/-! ## A110903.P7691217421029094607

`A000142(n)-sqrt(A184877(n))`
-/

namespace A110903.P7691217421029094607
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℝ) - Real.sqrt (A184877 n : ℝ)

end

end A110903.P7691217421029094607

namespace A110903

/-- `A000142(n)-sqrt(A184877(n))` -/
def P7691217421029094607.Spec : Prop :=
  ∀ n, P7691217421029094607.a n = (A110903 n : ℝ)

end A110903

/-! ## A110903.P6120355424546664982

`A236438(n)-(A006882(n)+A000166(n))`
-/

namespace A110903.P6120355424546664982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236438 n - (A006882 n + A000166 n)

end

end A110903.P6120355424546664982

namespace A110903

/-- `A236438(n)-(A006882(n)+A000166(n))` -/
def P6120355424546664982.Spec : Prop :=
  ∀ n, P6120355424546664982.a n = A110903 n

end A110903

/-!
# A110906: Expansion of (1 +34*x +121*x^2)/((1-x)*(x^2 -14*x +1)).

The programs for A110906, the canonical program `A110906.P4134558744485157140` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110906 has offset 0).

The definition of A110906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110906.P4134558744485157140

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=49, a(2)=841`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A110906

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P4134558744485157140.Spec : Prop :=
  ∀ n, P4134558744485157140.a n = A110906 n

theorem P4134558744485157140.correct : P4134558744485157140.Spec := by
  intro n
  simp only [A110906]

end A110906

/-! ## A110906.P17525738206513584532

`Δ[4*a(n-1)-a(n-2)]²` with `a(0)=3, a(1)=4, a(2)=11`
-/

namespace A110906.P17525738206513584532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 11] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A110906.P17525738206513584532

namespace A110906

/-- `Δ[4*a(n-1)-a(n-2)]²` -/
def P17525738206513584532.Spec : Prop :=
  ∀ n, P17525738206513584532.a n = A110906 n

end A110906

/-! ## A110906.P20881258370913011

`(2*A001352(n)-A001834(n))²`
-/

namespace A110906.P20881258370913011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001352 n - A001834 n) ^ 2

end

end A110906.P20881258370913011

namespace A110906

/-- `(2*A001352(n)-A001834(n))²` -/
def P20881258370913011.Spec : Prop :=
  ∀ n, P20881258370913011.a n = A110906 n

end A110906

/-! ## A110906.P389161758314221880

`(2*A231896(n)-A001835(n))²`
-/

namespace A110906.P389161758314221880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A231896 n - A001835 n) ^ 2

end

end A110906.P389161758314221880

namespace A110906

/-- `(2*A231896(n)-A001835(n))²` -/
def P389161758314221880.Spec : Prop :=
  ∀ n, P389161758314221880.a n = A110906 n

end A110906

/-! ## A110906.P684680770995236756

`(A108413(2*n)-Δ[A108413(2*n)])²`
-/

namespace A110906.P684680770995236756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108413 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108413 (2 * n) - (f1 (n + 1) - f1 n)) ^ 2

end

end A110906.P684680770995236756

namespace A110906

/-- `(A108413(2*n)-Δ[A108413(2*n)])²` -/
def P684680770995236756.Spec : Prop :=
  ∀ n, P684680770995236756.a n = A110906 n

end A110906

/-! ## A110906.P14253160049985044845

`(2*A001352(n)-A001834(n))^(2%A008864(n+1))`
-/

namespace A110906.P14253160049985044845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001352 n - A001834 n : ℚ) ^ (Int.tmod 2 (A008864 (n + 1)) : ℤ)

end

end A110906.P14253160049985044845

namespace A110906

/-- `(2*A001352(n)-A001834(n))^(2%A008864(n+1))` -/
def P14253160049985044845.Spec : Prop :=
  ∀ n, P14253160049985044845.a n = (A110906 n : ℚ)

end A110906

/-! ## A110906.P8153822067204532295

`(2*A001352(n)-A001834(n))^A000070(gcd(n, n+1))`
-/

namespace A110906.P8153822067204532295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001352 n - A001834 n : ℚ) ^ (A000070 (Nat.gcd n (n + 1)) : ℤ)

end

end A110906.P8153822067204532295

namespace A110906

/-- `(2*A001352(n)-A001834(n))^A000070(gcd(n, n+1))` -/
def P8153822067204532295.Spec : Prop :=
  ∀ n, P8153822067204532295.a n = (A110906 n : ℚ)

end A110906

/-! ## A110906.P1831087932744884614

`(A003500(A008486(n))%A082841(n))²`
-/

namespace A110906.P1831087932744884614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003500 (A008486 n).toNat) (A082841 n) ^ 2

end

end A110906.P1831087932744884614

namespace A110906

/-- `(A003500(A008486(n))%A082841(n))²` -/
def P1831087932744884614.Spec : Prop :=
  ∀ n, P1831087932744884614.a n = A110906 n

end A110906

/-!
# A110907: Number of points in the standard root system version of the D_3 (or f.c.c.) lattice having L_infinity norm n.

The programs for A110907, the canonical program `A110907.P11630568380073306584` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110907 has offset 0).

The definition of A110907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110907.P11630568380073306584

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=12, a(2)=50, a(3)=108, a(4)=194`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A110907

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11630568380073306584.Spec : Prop :=
  ∀ n, P11630568380073306584.a n = A110907 n

theorem P11630568380073306584.correct : P11630568380073306584.Spec := by
  intro n
  simp only [A110907]

end A110907

/-! ## A110907.P11374541807612594878

`round(3/acot(2*n)²-2*and(1, n))`
-/

namespace A110907.P11374541807612594878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2 - (2 * Nat.land 1 n : ℝ))

end

end A110907.P11374541807612594878

namespace A110907

/-- `round(3/acot(2*n)²-2*and(1, n))` -/
def P11374541807612594878.Spec : Prop :=
  ∀ n, P11374541807612594878.a n = A110907 n

end A110907

/-! ## A110907.P17202608027737909710

`A005914(n)-Δ[or(1, n)]`
-/

namespace A110907.P17202608027737909710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A110907.P17202608027737909710

namespace A110907

/-- `A005914(n)-Δ[or(1, n)]` -/
def P17202608027737909710.Spec : Prop :=
  ∀ n, P17202608027737909710.a n = A110907 n

end A110907

/-! ## A110907.P4310493669680917800

`(A319307(n)+1)%2+12*n²+1`
-/

namespace A110907.P4310493669680917800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319307 n + 1) 2 + (12 * n ^ 2 + 1 : ℤ)

end

end A110907.P4310493669680917800

namespace A110907

/-- `(A319307(n)+1)%2+12*n²+1` -/
def P4310493669680917800.Spec : Prop :=
  ∀ n, P4310493669680917800.a n = A110907 n

end A110907

/-! ## A110907.P10194478570985994264

`A195143(n)+A010002(n)`
-/

namespace A110907.P10194478570985994264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 n + A010002 n

end

end A110907.P10194478570985994264

namespace A110907

/-- `A195143(n)+A010002(n)` -/
def P10194478570985994264.Spec : Prop :=
  ∀ n, P10194478570985994264.a n = A110907 n

end A110907

/-! ## A110907.P9451562262926597813

`A005914(n)-A010673(n)`
-/

namespace A110907.P9451562262926597813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - A010673 n

end

end A110907.P9451562262926597813

namespace A110907

/-- `A005914(n)-A010673(n)` -/
def P9451562262926597813.Spec : Prop :=
  ∀ n, P9451562262926597813.a n = A110907 n

end A110907

/-! ## A110907.P15181634299093446037

`A158480(n)-A062157(n)`
-/

namespace A110907.P15181634299093446037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158480 n - A062157 n

end

end A110907.P15181634299093446037

namespace A110907

/-- `A158480(n)-A062157(n)` -/
def P15181634299093446037.Spec : Prop :=
  ∀ n, P15181634299093446037.a n = A110907 n

end A110907

/-! ## A110907.P16109776530402789245

`A010004(n)-A248825(n)`
-/

namespace A110907.P16109776530402789245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010004 n - A248825 n

end

end A110907.P16109776530402789245

namespace A110907

/-- `A010004(n)-A248825(n)` -/
def P16109776530402789245.Spec : Prop :=
  ∀ n, P16109776530402789245.a n = A110907 n

end A110907

/-! ## A110907.P1787695789446477555

`A010005(n)-A397444(n)`
-/

namespace A110907.P1787695789446477555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010005 n - A397444 n

end

end A110907.P1787695789446477555

namespace A110907

/-- `A010005(n)-A397444(n)` -/
def P1787695789446477555.Spec : Prop :=
  ∀ n, P1787695789446477555.a n = A110907 n

end A110907

/-! ## A110907.P553681819581159580

`A126964(n)+A063210(n+1)`
-/

namespace A110907.P553681819581159580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n + A063210 (n + 1)

end

end A110907.P553681819581159580

namespace A110907

/-- `A126964(n)+A063210(n+1)` -/
def P553681819581159580.Spec : Prop :=
  ∀ n, P553681819581159580.a n = A110907 n

end A110907

/-! ## A110907.P5325988240513988645

`A319127(n+1)+A007899(n)`
-/

namespace A110907.P5325988240513988645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319127 (n + 1) + A007899 n

end

end A110907.P5325988240513988645

namespace A110907

/-- `A319127(n+1)+A007899(n)` -/
def P5325988240513988645.Spec : Prop :=
  ∀ n, P5325988240513988645.a n = A110907 n

end A110907

/-! ## A110907.P17837598362592264855

`A188148(n+1)+A168428(n)`
-/

namespace A110907.P17837598362592264855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188148 (n + 1) + A168428 n

end

end A110907.P17837598362592264855

namespace A110907

/-- `A188148(n+1)+A168428(n)` -/
def P17837598362592264855.Spec : Prop :=
  ∀ n, P17837598362592264855.a n = A110907 n

end A110907

/-! ## A110907.P605957364206972343

`A244804(n+1)-A014681(n)`
-/

namespace A110907.P605957364206972343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244804 (n + 1) - A014681 n

end

end A110907.P605957364206972343

namespace A110907

/-- `A244804(n+1)-A014681(n)` -/
def P605957364206972343.Spec : Prop :=
  ∀ n, P605957364206972343.a n = A110907 n

end A110907

/-! ## A110907.P4689760552205704820

`A005914(n)-2*A000035(n)`
-/

namespace A110907.P4689760552205704820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 n - 2 * A000035 n

end

end A110907.P4689760552205704820

namespace A110907

/-- `A005914(n)-2*A000035(n)` -/
def P4689760552205704820.Spec : Prop :=
  ∀ n, P4689760552205704820.a n = A110907 n

end A110907

/-! ## A110907.P5402093273669006426

`∪[A005914(2*n+1)-2, A005914(2*n)]`
-/

namespace A110907.P5402093273669006426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A110907.P5402093273669006426

namespace A110907

/-- `∪[A005914(2*n+1)-2, A005914(2*n)]` -/
def P5402093273669006426.Spec : Prop :=
  ∀ n, (P5402093273669006426.a n : ℤ) = A110907 n

end A110907

/-! ## A110907.P11496882553433345203

`A009945(2*n)-A033581(n)`
-/

namespace A110907.P11496882553433345203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009945 (2 * n) - A033581 n

end

end A110907.P11496882553433345203

namespace A110907

/-- `A009945(2*n)-A033581(n)` -/
def P11496882553433345203.Spec : Prop :=
  ∀ n, P11496882553433345203.a n = A110907 n

end A110907

/-!
# A110910: Configurations in the evolution of a line of n cells in Conway's Game of Life, with 0=infinity. For periodic evolutions, a(n)=(preperiod length)+(period length). For non-periodic evolutions, a(n)=0.

The programs for A110910, there is no canonical definition to state claims against.
-/

/-! ## A110910.P5579191557167806437

`∑[A177886(∑[A195739(n+1)])]`
-/

namespace A110910.P5579191557167806437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177886 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110910.P5579191557167806437

/-! ## A110910.P18266830964818698435

`A177702(A110886(n))+A152389(n)`
-/

namespace A110910.P18266830964818698435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A110886 n).toNat + A152389 n

end

end A110910.P18266830964818698435

/-! ## A110910.P11225791240268312947

`A177702(A325617(n))+A152389(n)`
-/

namespace A110910.P11225791240268312947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177702 (A325617 n).toNat + A152389 n

end

end A110910.P11225791240268312947

/-! ## A110910.P12905769780280465592

`A152389(n)+A087282(A068947(n+1))`
-/

namespace A110910.P12905769780280465592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152389 n + A087282 (A068947 (n + 1)).toNat

end

end A110910.P12905769780280465592

/-! ## A110910.P3709238117622390478

`A300837(A304101(n)+A204504(n+1))`
-/

namespace A110910.P3709238117622390478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300837 (A304101 n + A204504 (n + 1)).toNat

end

end A110910.P3709238117622390478

/-!
# A110911: Positive integers that can be expressed in the form (a*2^a)/(b*2^b) where a and b are positive integers.

The programs for A110911, there is no canonical definition to state claims against.
-/

/-! ## A110911.P9742064067556205634

`lt[A017882(A390568(n)), A358134(n+1)]`
-/

namespace A110911.P9742064067556205634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017882 (A390568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110911.P9742064067556205634

/-!
# A110913: Numbers n such that 23*n^2 - 49 is prime.

The programs for A110913, there is no canonical definition to state claims against.
-/

/-! ## A110913.P3939045626197269466

`lt[A319162(n+1), A234017(A242131(n+3))]`
-/

namespace A110913.P3939045626197269466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (A242131 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110913.P3939045626197269466

/-! ## A110913.P11030674673827631491

`record[and(A007607(n+1), A259801(2*(n+1)))]`
-/

namespace A110913.P11030674673827631491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007607 (n + 1)) (A259801 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110913.P11030674673827631491

/-!
# A110914: "Self-convolution mod 3" of central Delannoy numbers (see comment).

The programs for A110914, the canonical program `A110914.P2878250641217037902` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110914 has offset 0).

The definition of A110914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110914.P986521920668525658

`log2(gcd(2, n))*A120880(floor(n/2))`
-/

namespace A110914.P986521920668525658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A120880 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A110914.P986521920668525658

namespace A110914

/-- `log2(gcd(2, n))*A120880(floor(n/2))` -/
def P986521920668525658.Spec : Prop :=
  ∀ n, P986521920668525658.a n = (A110914 n : ℝ)

end A110914

/-! ## A110914.P14405931949619596631

`char[2*n]*A120880(floor((n+1)/2))`
-/

namespace A110914.P14405931949619596631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A120880 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A110914.P14405931949619596631

namespace A110914

/-- `char[2*n]*A120880(floor((n+1)/2))` -/
def P14405931949619596631.Spec : Prop :=
  ∀ n, P14405931949619596631.a n = A110914 n

end A110914

/-! ## A110914.P2878250641217037902

`A120880(floor((3*n+1)/2))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A110914

/-- `A120880(floor((3*n+1)/2))-a(n-1)` -/
def P2878250641217037902.Spec : Prop :=
  ∀ n, P2878250641217037902.a n = A110914 n

theorem P2878250641217037902.correct : P2878250641217037902.Spec := by
  intro n
  simp only [A110914]

end A110914

/-! ## A110914.P4645120945512696798

`A117946(A032766(n+1))`
-/

namespace A110914.P4645120945512696798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117946 (A032766 (n + 1)).toNat

end

end A110914.P4645120945512696798

namespace A110914

/-- `A117946(A032766(n+1))` -/
def P4645120945512696798.Spec : Prop :=
  ∀ n, P4645120945512696798.a n = A110914 n

end A110914

/-! ## A110914.P9273552105041170191

`A117946(A168198(n+1))`
-/

namespace A110914.P9273552105041170191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117946 (A168198 (n + 1)).toNat

end

end A110914.P9273552105041170191

namespace A110914

/-- `A117946(A168198(n+1))` -/
def P9273552105041170191.Spec : Prop :=
  ∀ n, P9273552105041170191.a n = A110914 n

end A110914

/-! ## A110914.P9987908255675887851

`abs(∑[A117942(A128173(n))])`
-/

namespace A110914.P9987908255675887851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117942 (A128173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A110914.P9987908255675887851

namespace A110914

/-- `abs(∑[A117942(A128173(n))])` -/
def P9987908255675887851.Spec : Prop :=
  ∀ n, P9987908255675887851.a n = A110914 n

end A110914

/-! ## A110914.P14298604884572305095

`∑[A033999(n)*A120880(floor(n/2))]`
-/

namespace A110914.P14298604884572305095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A120880 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110914.P14298604884572305095

namespace A110914

/-- `∑[A033999(n)*A120880(floor(n/2))]` -/
def P14298604884572305095.Spec : Prop :=
  ∀ n, P14298604884572305095.a n = A110914 n

end A110914

/-! ## A110914.P934309694021142351

`xor(2*a(n-1), A120880(A032766(n)))` with `a(0)=1`
-/

namespace A110914.P934309694021142351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A120880 (A032766 n).toNat)

end

end A110914.P934309694021142351

namespace A110914

/-- `xor(2*a(n-1), A120880(A032766(n)))` -/
def P934309694021142351.Spec : Prop :=
  ∀ n, P934309694021142351.a n = A110914 n

end A110914

/-! ## A110914.P12992202240326137159

`lcm(A056594(n), A120880(A004525(n)))`
-/

namespace A110914.P12992202240326137159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A120880 (A004525 n).toNat)

end

end A110914.P12992202240326137159

namespace A110914

/-- `lcm(A056594(n), A120880(A004525(n)))` -/
def P12992202240326137159.Spec : Prop :=
  ∀ n, (P12992202240326137159.a n : ℤ) = A110914 n

end A110914

/-! ## A110914.P310640053209766517

`A117946(A090570(n+2))`
-/

namespace A110914.P310640053209766517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117946 (A090570 (n + 2)).toNat

end

end A110914.P310640053209766517

namespace A110914

/-- `A117946(A090570(n+2))` -/
def P310640053209766517.Spec : Prop :=
  ∀ n, P310640053209766517.a n = A110914 n

end A110914

/-!
# A110916: Number of squares between 10n and 10n+9 (inclusive).

The programs for A110916, the canonical program `A110916.P11752932001123406710` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110916 has offset 0).

The definition of A110916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110916.P11752932001123406710

`Δ[ceil(sqrt(10*n))]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A110916

/-- `Δ[ceil(sqrt(10*n))]` -/
def P11752932001123406710.Spec : Prop :=
  ∀ n, P11752932001123406710.a n = A110916 n

theorem P11752932001123406710.correct : P11752932001123406710.Spec := by
  intro n
  simp only [A110916]

end A110916

/-! ## A110916.P5261547660531736341

`Δ[A103128(A008706(n))]²`
-/

namespace A110916.P5261547660531736341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A110916.P5261547660531736341

namespace A110916

/-- `Δ[A103128(A008706(n))]²` -/
def P5261547660531736341.Spec : Prop :=
  ∀ n, P5261547660531736341.a n = A110916 n

end A110916

/-! ## A110916.P265789454221649774

`A000290(Δ[A103128(A008706(n))])`
-/

namespace A110916.P265789454221649774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (n + 1) - f1 n).toNat

end

end A110916.P265789454221649774

namespace A110916

/-- `A000290(Δ[A103128(A008706(n))])` -/
def P265789454221649774.Spec : Prop :=
  ∀ n, P265789454221649774.a n = A110916 n

end A110916

/-! ## A110916.P10462809176171397050

`A103164(Δ[A103128(A008706(n))])`
-/

namespace A110916.P10462809176171397050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 (f1 (n + 1) - f1 n).toNat

end

end A110916.P10462809176171397050

namespace A110916

/-- `A103164(Δ[A103128(A008706(n))])` -/
def P10462809176171397050.Spec : Prop :=
  ∀ n, P10462809176171397050.a n = A110916 n

end A110916

/-! ## A110916.P6210705472960564110

`Δ[A103128(A008706(n))]^A055494(n+1)`
-/

namespace A110916.P6210705472960564110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A008706 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A055494 (n + 1) : ℤ)

end

end A110916.P6210705472960564110

namespace A110916

/-- `Δ[A103128(A008706(n))]^A055494(n+1)` -/
def P6210705472960564110.Spec : Prop :=
  ∀ n, P6210705472960564110.a n = (A110916 n : ℚ)

end A110916

/-! ## A110916.P11536200587563977407

`A111037(n)-A111025(n)`
-/

namespace A110916.P11536200587563977407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111037 n - A111025 n

end

end A110916.P11536200587563977407

namespace A110916

/-- `A111037(n)-A111025(n)` -/
def P11536200587563977407.Spec : Prop :=
  ∀ n, P11536200587563977407.a n = A110916 n

end A110916

/-!
# A110917: Conversion to a regular-simple continued-fraction approximation of the limit value (C0=2.7745963816360040537087...) of the continued fraction (numerator = A110976 and denominator = A110977) based on the sequence of the distances of n from closest primes (A051699).

The programs for A110917, there is no canonical definition to state claims against.
-/

/-! ## A110917.P986875668619254645

`A025871(A255327(n))+A005811(A016116(n))`
-/

namespace A110917.P986875668619254645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (A255327 n).toNat + A005811 (A016116 n).toNat

end

end A110917.P986875668619254645

/-! ## A110917.P11050752588167172946

`A263765(∑[lcm(2, A000217(n+7))])`
-/

namespace A110917.P11050752588167172946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000217 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A110917.P11050752588167172946

/-! ## A110917.P10931069872705259171

`A005679(or(A077896(n), A285068(n)))`
-/

namespace A110917.P10931069872705259171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005679 (Int.lor (A077896 n) (A285068 n)).toNat

end

end A110917.P10931069872705259171

/-! ## A110917.P5882968200106606627

`A028920(or(A077896(n), A285068(n)))`
-/

namespace A110917.P5882968200106606627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (Int.lor (A077896 n) (A285068 n)).toNat

end

end A110917.P5882968200106606627

/-! ## A110917.P9403522144888384232

`A110269(A162567(n+1))`
-/

namespace A110917.P9403522144888384232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110269 (A162567 (n + 1)).toNat

end

end A110917.P9403522144888384232

/-!
# A110919: Number of consecutive 1's in the continued fraction for floor(n*phi)/n where phi = (1+sqrt(5))/2 (A001622).

The programs for A110919, there is no canonical definition to state claims against.
-/

/-! ## A110919.P7392246990834569389

`or(1, A227944(A301762(n+1)))`
-/

namespace A110919.P7392246990834569389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A227944 (A301762 (n + 1)).toNat)

end

end A110919.P7392246990834569389

/-! ## A110919.P16146996843585884403

`A008611(A276604(∑[A038231(n)]))`
-/

namespace A110919.P16146996843585884403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A276604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A110919.P16146996843585884403

/-! ## A110919.P1397341728538979875

`A001227((A005044(n)-A036026(n))²)`
-/

namespace A110919.P1397341728538979875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 ((A005044 n - A036026 n) ^ 2).toNat

end

end A110919.P1397341728538979875

/-! ## A110919.P108430936007431647

`or(A325610(A324756(n)), A339890(n+2))`
-/

namespace A110919.P108430936007431647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A325610 (A324756 n).toNat) (A339890 (n + 2))

end

end A110919.P108430936007431647

/-! ## A110919.P16634849593575052821

`or(1, A324825(A186546(n+1)))`
-/

namespace A110919.P16634849593575052821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A324825 (A186546 (n + 1)).toNat)

end

end A110919.P16634849593575052821

/-!
# A110920: Integers n such that 2*10^n + 81 is a prime number.

The programs for A110920, there is no canonical definition to state claims against.
-/

/-! ## A110920.P9520059477924995332

`eq[A060780(n+1), A276531(A214526(2*n+3))]`
-/

namespace A110920.P9520059477924995332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276531 (A214526 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110920.P9520059477924995332

/-! ## A110920.P9369779241460222640

`eq[A111596(A318284(n+1)), A127322(n)]`
-/

namespace A110920.P9369779241460222640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111596 (A318284 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110920.P9369779241460222640

/-! ## A110920.P16199516143186366543

`eq[A194289(n+1), A254006(A035440(n+1))]`
-/

namespace A110920.P16199516143186366543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (A035440 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110920.P16199516143186366543

/-! ## A110920.P6744270592333488929

`lt[A087099(n+1), A037155(A006254(n+3))]`
-/

namespace A110920.P6744270592333488929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037155 (A006254 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110920.P6744270592333488929

/-! ## A110920.P13799944428206377928

`eq[A081600(n), A154122(n)]`
-/

namespace A110920.P13799944428206377928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110920.P13799944428206377928

/-!
# A110922: Squares of the form 3p + q + 3, where p and q are primes.

The programs for A110922, there is no canonical definition to state claims against.
-/

/-! ## A110922.P8431841173941513426

`record[(6-A060474(n+1))²]`
-/

namespace A110922.P8431841173941513426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A060474 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110922.P8431841173941513426

/-! ## A110922.P10447794146266748415

`record[A023448(A060474(n+1))²]`
-/

namespace A110922.P10447794146266748415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A060474 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110922.P10447794146266748415

/-! ## A110922.P5965381012076576264

`record[A008833(A111026(n+1))]`
-/

namespace A110922.P5965381012076576264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A111026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110922.P5965381012076576264

/-! ## A110922.P16237192797065234818

`filter[A111026(n+1), A010052(#)]`
-/

namespace A110922.P16237192797065234818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A110922.P16237192797065234818

/-! ## A110922.P8666238105282986420

`filter[A111026(n+1), A075439(#)]`
-/

namespace A110922.P8666238105282986420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075439 (f1 j).toNat = 1) n)

end

end A110922.P8666238105282986420

/-!
# A110923: Final two digits of prime(n), with leading zero omitted.

The programs for A110923, the canonical program `A110923.P9641699143134640492` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110923 has offset 1).

The definition of A110923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110923.P9641699143134640492

`A000040(n+1)%(4/(1/5)²)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110923

/-- `A000040(n+1)%(4/(1/5)²)` -/
def P9641699143134640492.Spec : Prop :=
  ∀ n, P9641699143134640492.a n = A110923 (n + 1)

theorem P9641699143134640492.correct : P9641699143134640492.Spec := by
  intro n
  simp only [A110923, Nat.add_sub_cancel]

end A110923

/-! ## A110923.P13481142551242401890

`A000027(A000040(n+1))%(20/2)²`
-/

namespace A110923.P13481142551242401890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A000040 (n + 1)).toNat) (SequenceMachineLib.roundAway (((20 : ℚ) / 2) ^ 2))

end

end A110923.P13481142551242401890

namespace A110923

/-- `A000027(A000040(n+1))%(20/2)²` -/
def P13481142551242401890.Spec : Prop :=
  ∀ n, P13481142551242401890.a n = A110923 (n + 1)

end A110923

/-! ## A110923.P381409034212337479

`Δ[A007504(n)]%A011557(A020639(2*(n+2)))`
-/

namespace A110923.P381409034212337479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A011557 (A020639 (2 * (n + 2))).toNat)

end

end A110923.P381409034212337479

namespace A110923

/-- `Δ[A007504(n)]%A011557(A020639(2*(n+2)))` -/
def P381409034212337479.Spec : Prop :=
  ∀ n, P381409034212337479.a n = A110923 (n + 1)

end A110923

/-! ## A110923.P10056325960605684824

`sqrt(A001248(n+1))%A011557(A020639(2*(n+2)))`
-/

namespace A110923.P10056325960605684824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A011557 (A020639 (2 * (n + 2))).toNat)

end

end A110923.P10056325960605684824

namespace A110923

/-- `sqrt(A001248(n+1))%A011557(A020639(2*(n+2)))` -/
def P10056325960605684824.Spec : Prop :=
  ∀ n, P10056325960605684824.a n = A110923 (n + 1)

end A110923

/-! ## A110923.P9650088692692360380

`∑{d}[n+1, A007444(#)]%A011557(A020639(2*(n+2)))`
-/

namespace A110923.P9650088692692360380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A007444 d) (A011557 (A020639 (2 * (n + 2))).toNat)

end

end A110923.P9650088692692360380

namespace A110923

/-- `∑{d}[n+1, A007444(#)]%A011557(A020639(2*(n+2)))` -/
def P9650088692692360380.Spec : Prop :=
  ∀ n, P9650088692692360380.a n = A110923 (n + 1)

end A110923

/-!
# A110924: a(1) = 1, a(2) = 2; a(n) is smallest positive integer not among earlier terms of the sequence such that gcd(a(n), a(n-1) + a(n-2)) = 1.

The programs for A110924, there is no canonical definition to state claims against.
-/

/-! ## A110924.P15224914934479109148

`lt[a(n-3)+(n+1)%gcd(5, n), 3^(n%2)]` with `a(0)=3, a(1)=0, a(2)=0`
-/

namespace A110924.P15224914934479109148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 0] fun n f1 =>
  f1 (n - 3) + (n + 1) % Nat.gcd 5 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110924.P15224914934479109148

/-! ## A110924.P15769610108261012338

`lt[A337667(n), Δ[A265667(n)]]`
-/

namespace A110924.P15769610108261012338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337667 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110924.P15769610108261012338

/-! ## A110924.P16677370985704139070

`eq[A191419(n+1), A326852(n)]`
-/

namespace A110924.P16677370985704139070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110924.P16677370985704139070

/-! ## A110924.P8233566039536812985

`eq[A191419(n+1), A393715(n)]`
-/

namespace A110924.P8233566039536812985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110924.P8233566039536812985

/-! ## A110924.P3062477391665689310

`A369427(A000079(n))+A186891(n+1)`
-/

namespace A110924.P3062477391665689310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A000079 n).toNat + A186891 (n + 1)

end

end A110924.P3062477391665689310

/-!
# A110925: a(1) = 1; for n>1, a(n) is the smallest positive integer such that the continued fraction [a(1),a(2),a(3),...,a(n)] has numerator divisible by n.

The programs for A110925, there is no canonical definition to state claims against.
-/

/-! ## A110925.P11836372732246112686

`A056472(A000010(n+1)^A002264(n))`
-/

namespace A110925.P11836372732246112686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056472 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) ^ (A002264 n : ℤ))).toNat

end

end A110925.P11836372732246112686

/-!
# A110926: Smaller of the pair of distinct numbers m and n such that sigma_2(m)=sigma_2(n), where sigma_2(n) is the sum of the squares of all divisors of n.

The programs for A110926, there is no canonical definition to state claims against.
-/

/-! ## A110926.P10953450430815529291

`A110928(Δ[n²])`
-/

namespace A110926.P10953450430815529291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A110926.P10953450430815529291

/-! ## A110926.P12791479345153839285

`filter[A110928(2*n+1), A005171(#)]`
-/

namespace A110926.P12791479345153839285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A110926.P12791479345153839285

/-! ## A110926.P8203617559670488812

`filter[A110928(2*n+1), A049240(#)]`
-/

namespace A110926.P8203617559670488812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A110926.P8203617559670488812

/-! ## A110926.P5651405379857040660

`filter[A110928(2*n+1), A066247(#)]`
-/

namespace A110926.P5651405379857040660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A110926.P5651405379857040660

/-! ## A110926.P4450953377091889837

`filter[A110928(2*n+1), A202238(#)]`
-/

namespace A110926.P4450953377091889837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A110926.P4450953377091889837

/-! ## A110926.P12136231206377309935

`A110928(2*n+1)%Δ[A014634(n)]`
-/

namespace A110926.P12136231206377309935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110928 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A110926.P12136231206377309935

/-! ## A110926.P9002530344574417886

`A033999(2*n)*A110928(2*n+1)`
-/

namespace A110926.P9002530344574417886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A110928 (2 * n + 1)

end

end A110926.P9002530344574417886

/-! ## A110926.P11891078747898202105

`A110928(2*n+1)+A000122(3*n+2)`
-/

namespace A110926.P11891078747898202105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1) + A000122 (3 * n + 2)

end

end A110926.P11891078747898202105

/-! ## A110926.P16496132668276695274

`A038500(3*n+4)*A110928(A111701(2*n+1))`
-/

namespace A110926.P16496132668276695274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (3 * n + 4) * A110928 (A111701 (2 * n + 1)).toNat

end

end A110926.P16496132668276695274

/-! ## A110926.P12267442413585341059

`A110928(n+1+n)/A014963(A119973(n+1))`
-/

namespace A110926.P12267442413585341059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110928 (n + 1 + n) : ℚ) / (A014963 (A119973 (n + 1)).toNat : ℚ)

end

end A110926.P12267442413585341059

/-! ## A110926.P1138617822493565295

`filter[A110928(2*n+1), A093521(#)]`
-/

namespace A110926.P1138617822493565295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A110926.P1138617822493565295

/-! ## A110926.P15330753174171155911

`filter[A110928(2*n+1), A174898(#)]`
-/

namespace A110926.P15330753174171155911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A110926.P15330753174171155911

/-! ## A110926.P3675405256130919359

`A348271(A000040(n+1))+A110928(n+1+n)`
-/

namespace A110926.P3675405256130919359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A000040 (n + 1)).toNat + A110928 (n + 1 + n)

end

end A110926.P3675405256130919359

/-! ## A110926.P9222167800897639615

`filter[A110928(2*n+1), A043545(#)]`
-/

namespace A110926.P9222167800897639615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A110926.P9222167800897639615

/-! ## A110926.P7322995421070247672

`filter[A110928(2*n+1), A095792(#)]`
-/

namespace A110926.P7322995421070247672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A110926.P7322995421070247672

/-! ## A110926.P7157064489418411738

`filter[A110928(2*n+1), A132350(#)]`
-/

namespace A110926.P7157064489418411738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A110926.P7157064489418411738

/-! ## A110926.P14736343371642078778

`filter[A110928(2*n+1), A143731(#)]`
-/

namespace A110926.P14736343371642078778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A110926.P14736343371642078778

/-! ## A110926.P12715193844226770788

`A348271(A007510(n+1))+A110928(n+1+n)`
-/

namespace A110926.P12715193844226770788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A007510 (n + 1)).toNat + A110928 (n + 1 + n)

end

end A110926.P12715193844226770788

/-!
# A110927: Larger of the pair of distinct numbers m and n such that sigma_2(m)=sigma_2(n), where sigma_2(n) is the sum of the squares of all divisors of n.

The programs for A110927, there is no canonical definition to state claims against.
-/

/-! ## A110927.P101446061665339891

`A110928(2*(n+1))`
-/

namespace A110927.P101446061665339891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * (n + 1))

end

end A110927.P101446061665339891

/-! ## A110927.P8808178260122886956

`A110928(A103517(n))+A000007(n)`
-/

namespace A110927.P8808178260122886956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (A103517 n).toNat + A000007 n

end

end A110927.P8808178260122886956

/-! ## A110927.P11452902443732783112

`A110928(Δ[A027688(n)])%A110929(n+1)`
-/

namespace A110927.P11452902443732783112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110928 (f1 (n + 1) - f1 n).toNat) (A110929 (n + 1))

end

end A110927.P11452902443732783112

/-!
# A110929: The common value of sigma_2 for square-amicable numbers, sigma_2(m)=sigma_2(n), m

The programs for A110929, there is no canonical definition to state claims against.
-/

/-! ## A110929.P16779044799703507120

`∑{d}[A110926(n+1), #²]`
-/

namespace A110929.P16779044799703507120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A110929.P16779044799703507120

/-! ## A110929.P9304564957394438928

`∑{d}[A110927(n+1), #²]`
-/

namespace A110929.P9304564957394438928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110927 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A110929.P9304564957394438928

/-! ## A110929.P10416563629392341740

`∑{d}[A110928(2*n+1), #²]`
-/

namespace A110929.P10416563629392341740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110928 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A110929.P10416563629392341740

/-! ## A110929.P17190458889056986397

`A001157(A110926(n+1))`
-/

namespace A110929.P17190458889056986397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A110926 (n + 1)).toNat

end

end A110929.P17190458889056986397

/-! ## A110929.P12680255984903910109

`A001157(A110928(Δ[n²]))`
-/

namespace A110929.P12680255984903910109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A110928 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A110929.P12680255984903910109

/-! ## A110929.P3202344176069300141

`A001157(A110927(n+1))`
-/

namespace A110929.P3202344176069300141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A110927 (n + 1)).toNat

end

end A110929.P3202344176069300141

/-!
# A110930: a(1) = 1; a(n) = nextprime(2*a(n-1)) for n > 1.

The programs for A110930, there is no canonical definition to state claims against.
-/

/-! ## A110930.P209634160507482052

`A065545(n*a(A000038(n)))` with `a(0)=1`
-/

namespace A110930.P209634160507482052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065545 ((n : ℤ) * a (A000038 n).toNat).toNat

end

end A110930.P209634160507482052

/-! ## A110930.P14375313503770006420

`A065545(n/a(A000038(n)))` with `a(0)=1`
-/

namespace A110930.P14375313503770006420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065545 (SequenceMachineLib.roundAway ((n : ℚ) / (a (A000038 n).toNat : ℚ))).toNat

end

end A110930.P14375313503770006420

/-! ## A110930.P714376879331318207

`A065545(A028310(n))-A000038(n)`
-/

namespace A110930.P714376879331318207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065545 (A028310 n).toNat - A000038 n

end

end A110930.P714376879331318207

/-! ## A110930.P12607599157215024187

`A065545(A123108(2*n))-A000038(n)`
-/

namespace A110930.P12607599157215024187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065545 (A123108 (2 * n)).toNat - A000038 n

end

end A110930.P12607599157215024187

/-! ## A110930.P931826145474710676

`gcd(A000038(n), A065545(A000038(n)+n))`
-/

namespace A110930.P931826145474710676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A065545 (A000038 n + (n : ℤ)).toNat)

end

end A110930.P931826145474710676

/-! ## A110930.P2199613509384489459

`A065545(gcd(n, A008574(n)))-A000038(n)`
-/

namespace A110930.P2199613509384489459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065545 (Int.gcd (n : ℤ) (A008574 n)) - A000038 n

end

end A110930.P2199613509384489459

/-! ## A110930.P11647727712487473003

`A065545(A028310(n))^A055396(A008458(n))`
-/

namespace A110930.P11647727712487473003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065545 (A028310 n).toNat : ℚ) ^ (A055396 (A008458 n).toNat : ℤ)

end

end A110930.P11647727712487473003

/-! ## A110930.P13600388519024813885

`A065545(A028310(n))%A051960(n)`
-/

namespace A110930.P13600388519024813885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065545 (A028310 n).toNat) (A051960 n)

end

end A110930.P13600388519024813885

/-! ## A110930.P15592724919279691111

`and(A060416(n), A065545(A028310(n)))`
-/

namespace A110930.P15592724919279691111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060416 n) (A065545 (A028310 n).toNat)

end

end A110930.P15592724919279691111

/-!
# A110932: Numbers k such that 2*k^k + 1 is prime.

The programs for A110932, there is no canonical definition to state claims against.
-/

/-! ## A110932.P10836615497849817636

`A182182(or(n*(3^n-(2^n+1)), ∑[n]))`
-/

namespace A110932.P10836615497849817636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (Int.lor ((n : ℤ) * ((3 ^ n : ℤ) - (2 ^ n + 1 : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A110932.P10836615497849817636

/-!
# A110933: Integers k such that 3*10^k + 71 is a prime number.

The programs for A110933, there is no canonical definition to state claims against.
-/

/-! ## A110933.P86857225645359711

`∑[A103279(2^n)]`
-/

namespace A110933.P86857225645359711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103279 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110933.P86857225645359711

/-! ## A110933.P4729700515896193984

`∑{d}[2^n, A103279(#)]`
-/

namespace A110933.P4729700515896193984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A103279 d

end

end A110933.P4729700515896193984

/-!
# A110934: a(n) = A014612(n+2) - A014612(n).

The programs for A110934, the canonical program `A110934.P9568083779091695448` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110934 has offset 1).

The definition of A110934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110934.P9568083779091695448

`A014612(n+3)-A014612(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110934

/-- `A014612(n+3)-A014612(n+1)` -/
def P9568083779091695448.Spec : Prop :=
  ∀ n, P9568083779091695448.a n = A110934 (n + 1)

theorem P9568083779091695448.correct : P9568083779091695448.Spec := by
  intro n
  simp only [A110934, Nat.add_sub_cancel]

end A110934

/-! ## A110934.P166342259805429856

`A114403(n+1)+A114403(n+2)`
-/

namespace A110934.P166342259805429856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114403 (n + 1) + A114403 (n + 2)

end

end A110934.P166342259805429856

namespace A110934

/-- `A114403(n+1)+A114403(n+2)` -/
def P166342259805429856.Spec : Prop :=
  ∀ n, P166342259805429856.a n = A110934 (n + 1)

end A110934

/-! ## A110934.P11125281064154007232

`A014612(n+3)-Δ[A110209(n)]`
-/

namespace A110934.P11125281064154007232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 3) - (f1 (n + 1) - f1 n)

end

end A110934.P11125281064154007232

namespace A110934

/-- `A014612(n+3)-Δ[A110209(n)]` -/
def P11125281064154007232.Spec : Prop :=
  ∀ n, P11125281064154007232.a n = A110934 (n + 1)

end A110934

/-! ## A110934.P8513093544853400859

`Δ[A014612(n+1)+A014612(n+2)]`
-/

namespace A110934.P8513093544853400859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) + A014612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110934.P8513093544853400859

namespace A110934

/-- `Δ[A014612(n+1)+A014612(n+2)]` -/
def P8513093544853400859.Spec : Prop :=
  ∀ n, P8513093544853400859.a n = A110934 (n + 1)

theorem P8513093544853400859.correct : P8513093544853400859.Spec := by
  intro n
  simp only [A110934, Nat.add_sub_cancel, A110934.P8513093544853400859.f1, A110934.P8513093544853400859.a, A110934.P9568083779091695448.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A110934

/-!
# A110935: a(n) = if n mod 2 = 0 then 8*F(n)-n otherwise 8*F(n)-4, where F() = Fibonacci numbers A000045.

The programs for A110935, there is no canonical definition to state claims against.
-/

/-! ## A110935.P15075045553156218071

`A038577(n)-A154955(n+1)`
-/

namespace A110935.P15075045553156218071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A154955 (n + 1)

end

end A110935.P15075045553156218071

/-! ## A110935.P4115047519960384730

`A038577(n)-A008683(A025586(n+1))`
-/

namespace A110935.P4115047519960384730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A008683 (A025586 (n + 1)).toNat

end

end A110935.P4115047519960384730

/-! ## A110935.P6143491534647035405

`A038577(n)-A008683(A023898(n+1))`
-/

namespace A110935.P6143491534647035405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A008683 (A023898 (n + 1)).toNat

end

end A110935.P6143491534647035405

/-! ## A110935.P6431871390405506642

`A038577(n)-A008683(A067945(n+1))`
-/

namespace A110935.P6431871390405506642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A008683 (A067945 (n + 1)).toNat

end

end A110935.P6431871390405506642

/-! ## A110935.P2363072055964520799

`A038577(n)-A008683(A246469(n+1))`
-/

namespace A110935.P2363072055964520799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A008683 (A246469 (n + 1)).toNat

end

end A110935.P2363072055964520799

/-! ## A110935.P8166000161195140247

`A038577(n)-A111113(A139827(n+1))`
-/

namespace A110935.P8166000161195140247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A111113 (A139827 (n + 1)).toNat

end

end A110935.P8166000161195140247

/-! ## A110935.P4443546339702281744

`A038577(n)-A111113(n²+2)`
-/

namespace A110935.P4443546339702281744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A111113 (n ^ 2 + 2)

end

end A110935.P4443546339702281744

/-! ## A110935.P14639517986100879489

`A038577(n)-A008683(A029930(n))`
-/

namespace A110935.P14639517986100879489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A008683 (A029930 n).toNat

end

end A110935.P14639517986100879489

/-! ## A110935.P12114908258276390573

`A038577(n)-A008683(A025613(n+1))`
-/

namespace A110935.P12114908258276390573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038577 n - A008683 (A025613 (n + 1)).toNat

end

end A110935.P12114908258276390573

/-!
# A110936: a(n) = denominator(Bernoulli(prime(n) - 1))/prime(n).

The programs for A110936, there is no canonical definition to state claims against.
-/

/-! ## A110936.P616603135795441191

`A050932(p?[xor(1, n)+1]-1)`
-/

namespace A110936.P616603135795441191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A110936.P616603135795441191

/-! ## A110936.P15805343985738371124

`A050932(p?[n%3+n]-1)`
-/

namespace A110936.P15805343985738371124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A110936.P15805343985738371124

/-! ## A110936.P14468493365620690433

`A050932(∑[A075526(n)])`
-/

namespace A110936.P14468493365620690433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110936.P14468493365620690433

/-! ## A110936.P12773827702085931504

`A166120(Δ[A007504(n)])`
-/

namespace A110936.P12773827702085931504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166120 (f1 (n + 1) - f1 n).toNat

end

end A110936.P12773827702085931504

/-! ## A110936.P10116442429327052212

`A050932(A006093(n+1))`
-/

namespace A110936.P10116442429327052212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (A006093 (n + 1)).toNat

end

end A110936.P10116442429327052212

/-!
# A110947: a(n) = permanent of an n X n matrix M of zeros and ones defined as follows: if we concatenate the rows of M to form a vector v of length n^2, v_i = 1 only if i = 1 or a multiple of 2.

The programs for A110947, there is no canonical definition to state claims against.
-/

/-! ## A110947.P17056372946393718120

`(n/2)²*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A110947.P17056372946393718120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  ((n : ℚ) / 2) ^ 2 * a (n - 2)

end

end A110947.P17056372946393718120

/-! ## A110947.P16053174253378967220

`a(n-2)/(2/n)²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A110947.P16053174253378967220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  a (n - 2) / (2 / (n : ℚ)) ^ 2

end

end A110947.P16053174253378967220

/-! ## A110947.P5392970794617529873

`n*a(n-2)*n/4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A110947.P5392970794617529873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 0] fun n a =>
  (n : ℚ) * a (n - 2) * ((n : ℚ) / 4)

end

end A110947.P5392970794617529873

/-! ## A110947.P16311079480748438521

`(floor(n/2)!*∏{d}[1-n, #%2])²`
-/

namespace A110947.P16311079480748438521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat * (∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2)) ^ 2

end

end A110947.P16311079480748438521

/-! ## A110947.P9515592878814445836

`floor(A010551(n)^(-1)^n)`
-/

namespace A110947.P9515592878814445836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010551 n : ℚ) ^ ((-1) ^ n : ℤ)⌋

end

end A110947.P9515592878814445836

/-!
# A110949: Integers n such that 4*10^n + 61 is prime.

The programs for A110949, there is no canonical definition to state claims against.
-/

/-! ## A110949.P3874090199630356680

`A030102(A014466(n))%A024975(2*(n+2))`
-/

namespace A110949.P3874090199630356680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030102 (A014466 n).toNat) (A024975 (2 * (n + 2)))

end

end A110949.P3874090199630356680

/-!
# A110950: a(n) = permanent of an n X n matrix M of zeros and ones defined as follows: if we concatenate the rows of M to form a vector v of length n^2, v_i = 0 if i is prime and v_i = 1, otherwise.

The programs for A110950, there is no canonical definition to state claims against.
-/

/-! ## A110950.P12853529131864647225

`A109318(n)+A106683(A074478(n))`
-/

namespace A110950.P12853529131864647225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109318 n + A106683 (A074478 n).toNat

end

end A110950.P12853529131864647225

/-!
# A110951: a(n) = permanent of an n X n matrix M of zeros and ones defined as follows: if we concatenate the rows of M to form a vector v of length n^2, v_i = 0 if i is a Fibonacci number and v_i = 1, otherwise.

The programs for A110951, there is no canonical definition to state claims against.
-/

/-! ## A110951.P14334590342035043047

`A342131(A248338(n)/6)`
-/

namespace A110951.P14334590342035043047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342131 (SequenceMachineLib.roundAway ((A248338 n : ℚ) / 6)).toNat

end

end A110951.P14334590342035043047

/-!
# A110952: Triangle read by rows: T(n,k) = number of permutations of [n] where the first increasing run has length k and the last increasing run has length n-k-1, 0

The programs for A110952, the canonical program `A110952.P12434457606571142706` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110952 has offset 3).

The definition of A110952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110952.P540123989966728986

`A059797(n)-A014430(n)`
-/

namespace A110952.P540123989966728986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059797 n - A014430 n

end

end A110952.P540123989966728986

namespace A110952

/-- `A059797(n)-A014430(n)` -/
def P540123989966728986.Spec : Prop :=
  ∀ n, P540123989966728986.a n = A110952 (n + 3)

end A110952

/-! ## A110952.P1422957402638169769

`A059797(n)+1-A014410(n+2)`
-/

namespace A110952.P1422957402638169769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059797 n + (1 - A014410 (n + 2))

end

end A110952.P1422957402638169769

namespace A110952

/-- `A059797(n)+1-A014410(n+2)` -/
def P1422957402638169769.Spec : Prop :=
  ∀ n, P1422957402638169769.a n = A110952 (n + 3)

end A110952

/-! ## A110952.P12434457606571142706

`A061928(n+1)+1-A144394(n+4)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A110952

/-- `A061928(n+1)+1-A144394(n+4)` -/
def P12434457606571142706.Spec : Prop :=
  ∀ n, P12434457606571142706.a n = A110952 (n + 3)

theorem P12434457606571142706.correct : P12434457606571142706.Spec := by
  intro n
  simp only [A110952, Nat.add_sub_cancel]

end A110952

/-! ## A110952.P13108383702548322710

`A002024(n+1)*A014410(n+2)-A222403(n)-A014430(n)`
-/

namespace A110952.P13108383702548322710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A014410 (n + 2) - A222403 n - A014430 n

end

end A110952.P13108383702548322710

namespace A110952

/-- `A002024(n+1)*A014410(n+2)-A222403(n)-A014430(n)` -/
def P13108383702548322710.Spec : Prop :=
  ∀ n, P13108383702548322710.a n = A110952 (n + 3)

end A110952

/-! ## A110952.P162195773236507903

`A060351(eq[2, A125644(n+1)])`
-/

namespace A110952.P162195773236507903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110952.P162195773236507903

namespace A110952

/-- `A060351(eq[2, A125644(n+1)])` -/
def P162195773236507903.Spec : Prop :=
  ∀ n, P162195773236507903.a n = A110952 (n + 3)

end A110952

/-! ## A110952.P8057220923262895450

`A060351(eq[2, A125644(n)]-1)`
-/

namespace A110952.P8057220923262895450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A110952.P8057220923262895450

namespace A110952

/-- `A060351(eq[2, A125644(n)]-1)` -/
def P8057220923262895450.Spec : Prop :=
  ∀ n, P8057220923262895450.a n = A110952 (n + 3)

end A110952

/-! ## A110952.P17581821831727348613

`A020725(A059797(n))-A014410(n+2)`
-/

namespace A110952.P17581821831727348613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A059797 n).toNat - A014410 (n + 2)

end

end A110952.P17581821831727348613

namespace A110952

/-- `A020725(A059797(n))-A014410(n+2)` -/
def P17581821831727348613.Spec : Prop :=
  ∀ n, P17581821831727348613.a n = A110952 (n + 3)

end A110952

/-! ## A110952.P18019857466306894320

`A060351(eq[2, A140130(n+1)])`
-/

namespace A110952.P18019857466306894320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110952.P18019857466306894320

namespace A110952

/-- `A060351(eq[2, A140130(n+1)])` -/
def P18019857466306894320.Spec : Prop :=
  ∀ n, P18019857466306894320.a n = A110952 (n + 3)

end A110952

/-!
# A110953: Starting a priori with the fraction 1/1, the denominators of fractions built according to the rule: add top and bottom to get the new bottom, add top and 9 times the bottom to get the new top.

The programs for A110953, the canonical program `A110953.P7812547546989050084` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110953 has offset 1).

The definition of A110953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110953.P7812547546989050084

`2*a(n-1)+8*a(n-2)` with `a(0)=2, a(1)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A110953

/-- `2*a(n-1)+8*a(n-2)` -/
def P7812547546989050084.Spec : Prop :=
  ∀ n, (P7812547546989050084.a n : ℤ) = A110953 (n + 1)

theorem P7812547546989050084.correct : P7812547546989050084.Spec := by
  intro n
  simp only [A110953, Nat.add_sub_cancel]

end A110953

/-! ## A110953.P9538480532334843699

`Δ[4^n-round(2^n/3)²]`
-/

namespace A110953.P9538480532334843699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110953.P9538480532334843699

namespace A110953

/-- `Δ[4^n-round(2^n/3)²]` -/
def P9538480532334843699.Spec : Prop :=
  ∀ n, P9538480532334843699.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P13890691252301014019

`4^(n+1)-2*a(n-1)` with `a(0)=2`
-/

namespace A110953.P13890691252301014019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 ^ (n + 1) : ℤ) - 2 * a (n - 1)

end

end A110953.P13890691252301014019

namespace A110953

/-- `4^(n+1)-2*a(n-1)` -/
def P13890691252301014019.Spec : Prop :=
  ∀ n, P13890691252301014019.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P320145365960459483

`2*(2*4^n-a(n-1))` with `a(0)=2`
-/

namespace A110953.P320145365960459483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((2 * 4 ^ n : ℤ) - a (n - 1))

end

end A110953.P320145365960459483

namespace A110953

/-- `2*(2*4^n-a(n-1))` -/
def P320145365960459483.Spec : Prop :=
  ∀ n, P320145365960459483.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P1090752456437668947

`4^(n+1)-(a(n-1)+a(n-1))` with `a(0)=2`
-/

namespace A110953.P1090752456437668947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (4 ^ (n + 1) : ℤ) - (a (n - 1) + a (n - 1))

end

end A110953.P1090752456437668947

namespace A110953

/-- `4^(n+1)-(a(n-1)+a(n-1))` -/
def P1090752456437668947.Spec : Prop :=
  ∀ n, P1090752456437668947.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P13805062307213348135

`A003683(n+2)`
-/

namespace A110953.P13805062307213348135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (n + 2)

end

end A110953.P13805062307213348135

namespace A110953

/-- `A003683(n+2)` -/
def P13805062307213348135.Spec : Prop :=
  ∀ n, P13805062307213348135.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P4965778338933283100

`2*A246036(n)`
-/

namespace A110953.P4965778338933283100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246036 n

end

end A110953.P4965778338933283100

namespace A110953

/-- `2*A246036(n)` -/
def P4965778338933283100.Spec : Prop :=
  ∀ n, P4965778338933283100.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P7748966909649693274

`record[A003683(abs(2-n))]`
-/

namespace A110953.P7748966909649693274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110953.P7748966909649693274

namespace A110953

/-- `record[A003683(abs(2-n))]` -/
def P7748966909649693274.Spec : Prop :=
  ∀ n, P7748966909649693274.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P5237479739404414694

`∑[A003665(n+1)]+1`
-/

namespace A110953.P5237479739404414694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A110953.P5237479739404414694

namespace A110953

/-- `∑[A003665(n+1)]+1` -/
def P5237479739404414694.Spec : Prop :=
  ∀ n, P5237479739404414694.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P9690897785519899111

`2^(n+1)*A283642(n)`
-/

namespace A110953.P9690897785519899111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A283642 n

end

end A110953.P9690897785519899111

namespace A110953

/-- `2^(n+1)*A283642(n)` -/
def P9690897785519899111.Spec : Prop :=
  ∀ n, P9690897785519899111.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P16129665498832003228

`2^n*A014113(n+2)`
-/

namespace A110953.P16129665498832003228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A014113 (n + 2)

end

end A110953.P16129665498832003228

namespace A110953

/-- `2^n*A014113(n+2)` -/
def P16129665498832003228.Spec : Prop :=
  ∀ n, P16129665498832003228.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P8375578282770130360

`2^n*A078008(n+3)`
-/

namespace A110953.P8375578282770130360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A078008 (n + 3)

end

end A110953.P8375578282770130360

namespace A110953

/-- `2^n*A078008(n+3)` -/
def P8375578282770130360.Spec : Prop :=
  ∀ n, P8375578282770130360.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P1543803756327637543

`2*Δ[A015249(n+2)/2]`
-/

namespace A110953.P1543803756327637543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015249 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A110953.P1543803756327637543

namespace A110953

/-- `2*Δ[A015249(n+2)/2]` -/
def P1543803756327637543.Spec : Prop :=
  ∀ n, P1543803756327637543.a n = (A110953 (n + 1) : ℚ)

end A110953

/-! ## A110953.P12800419351053552898

`2^(n+1)*A001045(n+2)`
-/

namespace A110953.P12800419351053552898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A001045 (n + 2)

end

end A110953.P12800419351053552898

namespace A110953

/-- `2^(n+1)*A001045(n+2)` -/
def P12800419351053552898.Spec : Prop :=
  ∀ n, P12800419351053552898.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P17701294602620871011

`2^(n+1)*A152046(n+2)`
-/

namespace A110953.P17701294602620871011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A152046 (n + 2)

end

end A110953.P17701294602620871011

namespace A110953

/-- `2^(n+1)*A152046(n+2)` -/
def P17701294602620871011.Spec : Prop :=
  ∀ n, P17701294602620871011.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P11952521795080282371

`2^(n+1)*A167167(n+2)`
-/

namespace A110953.P11952521795080282371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A167167 (n + 2)

end

end A110953.P11952521795080282371

namespace A110953

/-- `2^(n+1)*A167167(n+2)` -/
def P11952521795080282371.Spec : Prop :=
  ∀ n, P11952521795080282371.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P2888053942721751219

`2^(n-1)*A097073(n+3)`
-/

namespace A110953.P2888053942721751219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A097073 (n + 3) : ℚ)

end

end A110953.P2888053942721751219

namespace A110953

/-- `2^(n-1)*A097073(n+3)` -/
def P2888053942721751219.Spec : Prop :=
  ∀ n, P2888053942721751219.a n = (A110953 (n + 1) : ℚ)

end A110953

/-! ## A110953.P9147984675400619346

`A083424(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A110953.P9147984675400619346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A083424 (n + 1) - a (n - 1)

end

end A110953.P9147984675400619346

namespace A110953

/-- `A083424(n+1)-a(n-1)` -/
def P9147984675400619346.Spec : Prop :=
  ∀ n, P9147984675400619346.a n = A110953 (n + 1)

end A110953

/-! ## A110953.P9189740376292238080

`(2*A000975(n)+1)*2^(n+1)`
-/

namespace A110953.P9189740376292238080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000975 n + 1) * (2 ^ (n + 1) : ℤ)

end

end A110953.P9189740376292238080

namespace A110953

/-- `(2*A000975(n)+1)*2^(n+1)` -/
def P9189740376292238080.Spec : Prop :=
  ∀ n, P9189740376292238080.a n = A110953 (n + 1)

end A110953

/-!
# A110954: a(1) = 1; a(n) = nextprime(2.5*a(n-1)) for n > 1.

The programs for A110954, there is no canonical definition to state claims against.
-/

/-! ## A110954.P14224513126411496129

`A151800(floor(5*a(n-1)/2))` with `a(0)=1`
-/

namespace A110954.P14224513126411496129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 ⌊(5 * a (n - 1) : ℚ) / 2⌋.toNat

end

end A110954.P14224513126411496129

/-! ## A110954.P1153937334989499968

`A151800(A047211(a(n-1)))` with `a(0)=1`
-/

namespace A110954.P1153937334989499968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A047211 (a (n - 1)).toNat).toNat

end

end A110954.P1153937334989499968

/-! ## A110954.P11369524492668541993

`A151800(A047215(a(n-1)))` with `a(0)=1`
-/

namespace A110954.P11369524492668541993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A047215 (a (n - 1)).toNat).toNat

end

end A110954.P11369524492668541993

/-! ## A110954.P1266531621653039237

`A151800(A047221(a(n-1)))` with `a(0)=1`
-/

namespace A110954.P1266531621653039237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A047221 (a (n - 1)).toNat).toNat

end

end A110954.P1266531621653039237

/-! ## A110954.P8691872376519876658

`A151800(A168278(a(n-1)))` with `a(0)=1`
-/

namespace A110954.P8691872376519876658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (A168278 (a (n - 1)).toNat).toNat

end

end A110954.P8691872376519876658

/-!
# A110955: Number of minimal signed binary representations for an integer n.

The programs for A110955, there is no canonical definition to state claims against.
-/

/-! ## A110955.P8007130281676371839

`A327804(A004761(n+2))`
-/

namespace A110955.P8007130281676371839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (A004761 (n + 2)).toNat

end

end A110955.P8007130281676371839

/-! ## A110955.P17434936559723582352

`A327804(eq[1, A090996(n)])`
-/

namespace A110955.P17434936559723582352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110955.P17434936559723582352

/-! ## A110955.P15132938986084387600

`A327804(eq[2, A278542(n)])`
-/

namespace A110955.P15132938986084387600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A110955.P15132938986084387600

/-! ## A110955.P18082639069809596508

`A327804(A171757(n+1)/2)`
-/

namespace A110955.P18082639069809596508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (SequenceMachineLib.roundAway ((A171757 (n + 1) : ℚ) / 2)).toNat

end

end A110955.P18082639069809596508

/-! ## A110955.P3941044530333531216

`A327804(∑[A158416(A073137(n))])`
-/

namespace A110955.P3941044530333531216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A073137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110955.P3941044530333531216

/-! ## A110955.P10337223183593456055

`A327804((A035327(n)+A016777(n))/2)`
-/

namespace A110955.P10337223183593456055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (SequenceMachineLib.roundAway ((A035327 n + A016777 n : ℚ) / 2)).toNat

end

end A110955.P10337223183593456055

/-!
# A110956: a(n) = permanent of the n X n matrix M of zeros and ones defined as follows: if we concatenate the rows of M to form a vector v of length n^2, v_i = 0 if i is an entry from the sequence A045506 (inscribe 2 spheres of curvature 2 inside sphere of curvature -1, continue to inscribe spheres where possible; the sequence gives list of curvatures).

The programs for A110956, there is no canonical definition to state claims against.
-/

/-! ## A110956.P1408205859139177352

`lcm(A076051(n+1), A127511(n+1))`
-/

namespace A110956.P1408205859139177352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076051 (n + 1)) (A127511 (n + 1))

end

end A110956.P1408205859139177352

/-!
# A110957: a(n) = (Sum_{k=1..n} 1/c(k))*(Product_{j=1..n} c(j)), where c(j) is the j-th composite.

The programs for A110957, there is no canonical definition to state claims against.
-/

/-! ## A110957.P4767775311011263699

`A000005(A323325(n))*A250133(n+1)`
-/

namespace A110957.P4767775311011263699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A323325 n).toNat * A250133 (n + 1)

end

end A110957.P4767775311011263699

/-!
# A110958: a(n) = floor(e^(n+1) - e^n) - Fibonacci(n).

The programs for A110958, the canonical program `A110958.P1247205546048520944` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110958 has offset 0).

The definition of A110958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A110958.P1247205546048520944

`A248873(n)-A000045(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A110958

/-- `A248873(n)-A000045(n)` -/
def P1247205546048520944.Spec : Prop :=
  ∀ n, P1247205546048520944.a n = A110958 n

theorem P1247205546048520944.correct : P1247205546048520944.Spec := by
  intro n
  simp only [A110958]

end A110958

/-! ## A110958.P2755234765667116270

`A248873(n)-A103609(2*n)`
-/

namespace A110958.P2755234765667116270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248873 n - A103609 (2 * n)

end

end A110958.P2755234765667116270

namespace A110958

/-- `A248873(n)-A103609(2*n)` -/
def P2755234765667116270.Spec : Prop :=
  ∀ n, P2755234765667116270.a n = A110958 n

end A110958

/-! ## A110958.P9355900375712522788

`A248873(n)-(A157729(n)-5)`
-/

namespace A110958.P9355900375712522788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248873 n - (A157729 n - 5)

end

end A110958.P9355900375712522788

namespace A110958

/-- `A248873(n)-(A157729(n)-5)` -/
def P9355900375712522788.Spec : Prop :=
  ∀ n, P9355900375712522788.a n = A110958 n

end A110958

/-!
# A110960: Numbers n such that 23*n^2 + 4 is prime.

The programs for A110960, there is no canonical definition to state claims against.
-/

/-! ## A110960.P8456227369845282595

`∩[A366849(n+1), A231006(n)]`
-/

namespace A110960.P8456227369845282595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110960.P8456227369845282595

/-!
# A110961: Numbers k such that 23*k^2 + 9 is prime.

The programs for A110961, there is no canonical definition to state claims against.
-/

/-! ## A110961.P12059397376458150799

`record[A051176(A340846(n+1)+2)]`
-/

namespace A110961.P12059397376458150799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A340846 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110961.P12059397376458150799

/-! ## A110961.P10350318210114320545

`lt[A277855(2*n+5), Δ[A028920(n)]]`
-/

namespace A110961.P10350318210114320545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277855 (2 * n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A110961.P10350318210114320545

/-! ## A110961.P1862298531326825788

`eq[A120325(A000578(n)), A124010(2*n+2)]`
-/

namespace A110961.P1862298531326825788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120325 (A000578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110961.P1862298531326825788

/-! ## A110961.P9303273757606905006

`∑[A010879(∑[A134383(3*n+5)])]`
-/

namespace A110961.P9303273757606905006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134383 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A110961.P9303273757606905006

/-! ## A110961.P3775124550678244981

`eq[A038548(n+3), A099837(A323525(2*n+1))]`
-/

namespace A110961.P3775124550678244981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A323525 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110961.P3775124550678244981

/-!
# A110962: Fractalization of A025480, zero-based version of Kimberling's paraphrase of the binary number system.

The programs for A110962, the canonical program `A110962.P12597645411815953892` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110962 has offset 0).

The definition of A110962 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A110962.P12597645411815953892

`A110963(1+n)-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A110962

/-- `A110963(1+n)-1` -/
def P12597645411815953892.Spec : Prop :=
  ∀ n, P12597645411815953892.a n = A110962 n

theorem P12597645411815953892.correct : P12597645411815953892.Spec := by
  intro n
  simp only [A110962]

end A110962

/-! ## A110962.P17048523967945531827

`floor(A351565(n+1)/2)`
-/

namespace A110962.P17048523967945531827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351565 (n + 1) : ℚ) / 2⌋

end

end A110962.P17048523967945531827

namespace A110962

/-- `floor(A351565(n+1)/2)` -/
def P17048523967945531827.Spec : Prop :=
  ∀ n, P17048523967945531827.a n = A110962 n

end A110962

/-! ## A110962.P10189270977780157358

`A025480(floor(n/(xor(n, n+1)+1)))`
-/

namespace A110962.P10189270977780157358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A110962.P10189270977780157358

namespace A110962

/-- `A025480(floor(n/(xor(n, n+1)+1)))` -/
def P10189270977780157358.Spec : Prop :=
  ∀ n, P10189270977780157358.a n = A110962 n

end A110962

/-! ## A110962.P704510807779467159

`A025480((n+1)/2^val(n+1, 2))`
-/

namespace A110962.P704510807779467159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A110962.P704510807779467159

namespace A110962

/-- `A025480((n+1)/2^val(n+1, 2))` -/
def P704510807779467159.Spec : Prop :=
  ∀ n, P704510807779467159.a n = A110962 n

end A110962

/-! ## A110962.P2952091961479768518

`A025480((n+1)/(or(n, n+1)-n))`
-/

namespace A110962.P2952091961479768518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A110962.P2952091961479768518

namespace A110962

/-- `A025480((n+1)/(or(n, n+1)-n))` -/
def P2952091961479768518.Spec : Prop :=
  ∀ n, P2952091961479768518.a n = A110962 n

end A110962

/-! ## A110962.P18442842670379770753

`A025480((n+1)/xor(n, or(n, n+1)))`
-/

namespace A110962.P18442842670379770753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat

end

end A110962.P18442842670379770753

namespace A110962

/-- `A025480((n+1)/xor(n, or(n, n+1)))` -/
def P18442842670379770753.Spec : Prop :=
  ∀ n, P18442842670379770753.a n = A110962 n

end A110962

/-! ## A110962.P18259644300485645635

`A025480((n+1)*2^-val(n+1, 2))`
-/

namespace A110962.P18259644300485645635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A110962.P18259644300485645635

namespace A110962

/-- `A025480((n+1)*2^-val(n+1, 2))` -/
def P18259644300485645635.Spec : Prop :=
  ∀ n, P18259644300485645635.a n = A110962 n

end A110962

/-! ## A110962.P12140344700707721635

`A025480(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A110962.P12140344700707721635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A110962.P12140344700707721635

namespace A110962

/-- `A025480(2^(log2(n+1)-val(n+1, 2)))` -/
def P12140344700707721635.Spec : Prop :=
  ∀ n, P12140344700707721635.a n = A110962 n

end A110962

/-! ## A110962.P10890526881270719386

`A025480((n+1)/and(n+1, -(n+1)))`
-/

namespace A110962.P10890526881270719386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A110962.P10890526881270719386

namespace A110962

/-- `A025480((n+1)/and(n+1, -(n+1)))` -/
def P10890526881270719386.Spec : Prop :=
  ∀ n, P10890526881270719386.a n = A110962 n

end A110962

/-! ## A110962.P12188093496374511434

`A025480((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A110962.P12188093496374511434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat

end

end A110962.P12188093496374511434

namespace A110962

/-- `A025480((n+1)/ceil(xor(n, n+1)/2))` -/
def P12188093496374511434.Spec : Prop :=
  ∀ n, P12188093496374511434.a n = A110962 n

end A110962

/-! ## A110962.P5729570967110328150

`A025480((n+1)/round(xor(n, n+1)/2))`
-/

namespace A110962.P5729570967110328150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ))).toNat

end

end A110962.P5729570967110328150

namespace A110962

/-- `A025480((n+1)/round(xor(n, n+1)/2))` -/
def P5729570967110328150.Spec : Prop :=
  ∀ n, P5729570967110328150.a n = A110962 n

end A110962

/-! ## A110962.P2598758007236059027

`A153733((n+1)/2^val(n+1, 2))/2`
-/

namespace A110962.P2598758007236059027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / 2

end

end A110962.P2598758007236059027

namespace A110962

/-- `A153733((n+1)/2^val(n+1, 2))/2` -/
def P2598758007236059027.Spec : Prop :=
  ∀ n, P2598758007236059027.a n = (A110962 n : ℚ)

end A110962

/-! ## A110962.P16196195196909820326

`A025480(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A110962.P16196195196909820326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A110962.P16196195196909820326

namespace A110962

/-- `A025480(2*(n+1)/(xor(n, n+1)+1))` -/
def P16196195196909820326.Spec : Prop :=
  ∀ n, P16196195196909820326.a n = A110962 n

end A110962

/-! ## A110962.P16196696565214925686

`A025480((n+1)/xor(n+1, and(n, n+1)))`
-/

namespace A110962.P16196696565214925686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ))).toNat

end

end A110962.P16196696565214925686

namespace A110962

/-- `A025480((n+1)/xor(n+1, and(n, n+1)))` -/
def P16196696565214925686.Spec : Prop :=
  ∀ n, P16196696565214925686.a n = A110962 n

end A110962

/-! ## A110962.P15328292773981864983

`A025480(or(1, -(n+1)/or(n+1, -(n+1))))`
-/

namespace A110962.P15328292773981864983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.lor 1 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))))).toNat

end

end A110962.P15328292773981864983

namespace A110962

/-- `A025480(or(1, -(n+1)/or(n+1, -(n+1))))` -/
def P15328292773981864983.Spec : Prop :=
  ∀ n, P15328292773981864983.a n = A110962 n

end A110962

/-! ## A110962.P13767211398880501306

`A025480(A025480(n))`
-/

namespace A110962.P13767211398880501306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A025480 n).toNat

end

end A110962.P13767211398880501306

namespace A110962

/-- `A025480(A025480(n))` -/
def P13767211398880501306.Spec : Prop :=
  ∀ n, P13767211398880501306.a n = A110962 n

end A110962

/-! ## A110962.P914970002318487152

`A004524(A351565(n+1))`
-/

namespace A110962.P914970002318487152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A351565 (n + 1)).toNat

end

end A110962.P914970002318487152

namespace A110962

/-- `A004524(A351565(n+1))` -/
def P914970002318487152.Spec : Prop :=
  ∀ n, P914970002318487152.a n = A110962 n

end A110962

/-! ## A110962.P8667156655942437763

`A003602(A003602(n+1))-1`
-/

namespace A110962.P8667156655942437763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A003602 (n + 1)).toNat - 1

end

end A110962.P8667156655942437763

namespace A110962

/-- `A003602(A003602(n+1))-1` -/
def P8667156655942437763.Spec : Prop :=
  ∀ n, P8667156655942437763.a n = A110962 n

end A110962

/-! ## A110962.P10439201405871334413

`A103391(A103391(n+2))-2`
-/

namespace A110962.P10439201405871334413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A103391 (n + 2)).toNat - 2

end

end A110962.P10439201405871334413

namespace A110962

/-- `A103391(A103391(n+2))-2` -/
def P10439201405871334413.Spec : Prop :=
  ∀ n, P10439201405871334413.a n = A110962 n

end A110962

/-! ## A110962.P6180295494081731069

`A153733(A000265(n+1))/2`
-/

namespace A110962.P6180295494081731069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (A000265 (n + 1)).toNat : ℚ) / 2

end

end A110962.P6180295494081731069

namespace A110962

/-- `A153733(A000265(n+1))/2` -/
def P6180295494081731069.Spec : Prop :=
  ∀ n, P6180295494081731069.a n = (A110962 n : ℚ)

end A110962

/-!
# A110963: Fractalization of Kimberling's paraphrase of the binary number system beginning with 1.

The programs for A110963, the canonical program `A110963.P3344771894533151408` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110963 has offset 1).

The definition of A110963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110963.P15802449338698112298

`A110962(n)+1`
-/

namespace A110963.P15802449338698112298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 n + 1

end

end A110963.P15802449338698112298

namespace A110963

/-- `A110962(n)+1` -/
def P15802449338698112298.Spec : Prop :=
  ∀ n, P15802449338698112298.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P15648693193599479166

`A003602(A003602(n+1))`
-/

namespace A110963.P15648693193599479166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A003602 (n + 1)).toNat

end

end A110963.P15648693193599479166

namespace A110963

/-- `A003602(A003602(n+1))` -/
def P15648693193599479166.Spec : Prop :=
  ∀ n, P15648693193599479166.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P12223826127055270359

`A353367(4*(n+1))`
-/

namespace A110963.P12223826127055270359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353367 (4 * (n + 1))

end

end A110963.P12223826127055270359

namespace A110963

/-- `A353367(4*(n+1))` -/
def P12223826127055270359.Spec : Prop :=
  ∀ n, P12223826127055270359.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P15535979475173871558

`round(A351565(n+1)/2)`
-/

namespace A110963.P15535979475173871558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A351565 (n + 1) : ℚ) / 2)

end

end A110963.P15535979475173871558

namespace A110963

/-- `round(A351565(n+1)/2)` -/
def P15535979475173871558.Spec : Prop :=
  ∀ n, P15535979475173871558.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P3344771894533151408

`A025480(floor(n/(xor(n, n+1)+1)))+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A110963

/-- `A025480(floor(n/(xor(n, n+1)+1)))+1` -/
def P3344771894533151408.Spec : Prop :=
  ∀ n, P3344771894533151408.a n = A110963 (n + 1)

theorem P3344771894533151408.correct : P3344771894533151408.Spec := by
  intro n
  simp only [A110963, Nat.add_sub_cancel]

end A110963

/-! ## A110963.P16874488541278591321

`A025480((n+1)/and(n+1, -(n+1)))+1`
-/

namespace A110963.P16874488541278591321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + 1

end

end A110963.P16874488541278591321

namespace A110963

/-- `A025480((n+1)/and(n+1, -(n+1)))+1` -/
def P16874488541278591321.Spec : Prop :=
  ∀ n, P16874488541278591321.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P17512046096820961077

`A025480(A025480(n))+1`
-/

namespace A110963.P17512046096820961077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A025480 n).toNat + 1

end

end A110963.P17512046096820961077

namespace A110963

/-- `A025480(A025480(n))+1` -/
def P17512046096820961077.Spec : Prop :=
  ∀ n, P17512046096820961077.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P8046874360050709699

`A000463(A351565(n+1))`
-/

namespace A110963.P8046874360050709699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A351565 (n + 1)).toNat

end

end A110963.P8046874360050709699

namespace A110963

/-- `A000463(A351565(n+1))` -/
def P8046874360050709699.Spec : Prop :=
  ∀ n, P8046874360050709699.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P1953813495105617239

`A101279(A351565(n+1)+2)`
-/

namespace A110963.P1953813495105617239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A351565 (n + 1) + 2).toNat

end

end A110963.P1953813495105617239

namespace A110963

/-- `A101279(A351565(n+1)+2)` -/
def P1953813495105617239.Spec : Prop :=
  ∀ n, P1953813495105617239.a n = A110963 (n + 1)

end A110963

/-! ## A110963.P16656332719269605983

`A103391(A103391(n+2))-1`
-/

namespace A110963.P16656332719269605983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A103391 (n + 2)).toNat - 1

end

end A110963.P16656332719269605983

namespace A110963

/-- `A103391(A103391(n+2))-1` -/
def P16656332719269605983.Spec : Prop :=
  ∀ n, P16656332719269605983.a n = A110963 (n + 1)

end A110963

/-!
# A110965: Numbers k such that 23*k^2 + 25 is prime.

The programs for A110965, there is no canonical definition to state claims against.
-/

/-! ## A110965.P1157815506616318043

`Δ[A023217(p?[A034867(n)])]`
-/

namespace A110965.P1157815506616318043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110965.P1157815506616318043

/-! ## A110965.P4682780632488605535

`Δ[A023217(p?[A200139(n)])]`
-/

namespace A110965.P4682780632488605535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110965.P4682780632488605535

/-! ## A110965.P7489110533859406974

`Δ[A023217(p?[A019565(n)])]`
-/

namespace A110965.P7489110533859406974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110965.P7489110533859406974

/-!
# A110966: Numbers k such that 23*k^2 + 36 is prime.

The programs for A110966, there is no canonical definition to state claims against.
-/

/-! ## A110966.P6721171230020267622

`A270031(A149127(n))+A007775(n+1)`
-/

namespace A110966.P6721171230020267622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270031 (A149127 n).toNat + A007775 (n + 1)

end

end A110966.P6721171230020267622

/-!
# A110967: Numbers k such that 23*k^2 + 49 is prime.

The programs for A110967, there is no canonical definition to state claims against.
-/

/-! ## A110967.P1340100095122292081

`6*A057957(∏[gcd(2*n, 2^n)])`
-/

namespace A110967.P1340100095122292081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A057957 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A110967.P1340100095122292081

/-! ## A110967.P11410102636991867748

`6*A057957(A046161(n))`
-/

namespace A110967.P11410102636991867748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A057957 (A046161 n).toNat

end

end A110967.P11410102636991867748

/-! ## A110967.P7933622550358289487

`6*A003002(A249664(n))`
-/

namespace A110967.P7933622550358289487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003002 (A249664 n).toNat

end

end A110967.P7933622550358289487

/-!
# A110968: a(n) is the starting position of the first run of n ones in A014963.

The programs for A110968, there is no canonical definition to state claims against.
-/

/-! ## A110968.P13757363605442198726

`and(floor(acot(n))-1, A290515(n+2))+1`
-/

namespace A110968.P13757363605442198726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) (A290515 (n + 2)) + 1

end

end A110968.P13757363605442198726

/-! ## A110968.P10379253835999919181

`1-A057428(n)*A290515(n+2)`
-/

namespace A110968.P10379253835999919181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A290515 (n + 2)

end

end A110968.P10379253835999919181

/-! ## A110968.P6932361435362292337

`and(A000007(n)-1, A290515(n+2))+1`
-/

namespace A110968.P6932361435362292337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 n - 1) (A290515 (n + 2)) + 1

end

end A110968.P6932361435362292337

/-! ## A110968.P7931072102144507798

`and(A028310(n)-(n+1), A290515(n+2))+1`
-/

namespace A110968.P7931072102144507798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028310 n - (n + 1 : ℤ)) (A290515 (n + 2)) + 1

end

end A110968.P7931072102144507798

/-! ## A110968.P6446453702236468905

`and(A010051(2*(n+1))-1, A290515(n+2))+1`
-/

namespace A110968.P6446453702236468905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (2 * (n + 1)) - 1) (A290515 (n + 2)) + 1

end

end A110968.P6446453702236468905

/-!
# A110969: Length of the runs of ones in A014963.

The programs for A110969, the canonical program `A110969.P16632424768012697550` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A110969 has offset 1).

The definition of A110969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A110969.P11191429435748819113

`A000720(p?[A008578(A275120(n+1))])`
-/

namespace A110969.P11191429435748819113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A275120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A110969.P11191429435748819113

namespace A110969

/-- `A000720(p?[A008578(A275120(n+1))])` -/
def P11191429435748819113.Spec : Prop :=
  ∀ n, P11191429435748819113.a n = A110969 (n + 1)

end A110969

/-! ## A110969.P7836263892793447267

`A230980(p?[A008578(A275120(n+1))])`
-/

namespace A110969.P7836263892793447267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A275120 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A110969.P7836263892793447267

namespace A110969

/-- `A230980(p?[A008578(A275120(n+1))])` -/
def P7836263892793447267.Spec : Prop :=
  ∀ n, P7836263892793447267.a n = A110969 (n + 1)

end A110969

/-! ## A110969.P16632424768012697550

`Δ[record[A008475(n+1)-A025528(n+1)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A110969

/-- `Δ[record[A008475(n+1)-A025528(n+1)]]` -/
def P16632424768012697550.Spec : Prop :=
  ∀ n, P16632424768012697550.a n = A110969 (n + 1)

theorem P16632424768012697550.correct : P16632424768012697550.Spec := by
  intro n
  simp only [A110969, Nat.add_sub_cancel]

end A110969

/-! ## A110969.P13064289991746127638

`Δ[record[A322841(n+1)+A001221(n+1)]]`
-/

namespace A110969.P13064289991746127638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1) + A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110969.P13064289991746127638

namespace A110969

/-- `Δ[record[A322841(n+1)+A001221(n+1)]]` -/
def P13064289991746127638.Spec : Prop :=
  ∀ n, P13064289991746127638.a n = A110969 (n + 1)

end A110969

/-! ## A110969.P17973819058361297574

`Δ[record[A322841(n+1)+A024361(n+1)]]`
-/

namespace A110969.P17973819058361297574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1) + A024361 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110969.P17973819058361297574

namespace A110969

/-- `Δ[record[A322841(n+1)+A024361(n+1)]]` -/
def P17973819058361297574.Spec : Prop :=
  ∀ n, P17973819058361297574.a n = A110969 (n + 1)

end A110969

/-! ## A110969.P3846769617409749130

`A373677(n+1)+1-A373676(n+1)`
-/

namespace A110969.P3846769617409749130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373677 (n + 1) + (1 - A373676 (n + 1))

end

end A110969.P3846769617409749130

namespace A110969

/-- `A373677(n+1)+1-A373676(n+1)` -/
def P3846769617409749130.Spec : Prop :=
  ∀ n, P3846769617409749130.a n = A110969 (n + 1)

end A110969

/-!
# A110970: Squares of the form 2*prime(n) - prime(n+1).

The programs for A110970, there is no canonical definition to state claims against.
-/

/-! ## A110970.P17411049875596340645

`record[A350388(A062234(n+1))]`
-/

namespace A110970.P17411049875596340645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A062234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110970.P17411049875596340645

/-! ## A110970.P10172056611495819196

`record[A000188(A006093(n+1)-A046933(n+1))²]`
-/

namespace A110970.P10172056611495819196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A006093 (n + 1) - A046933 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110970.P10172056611495819196

/-! ## A110970.P15461775132301500294

`record[A000188(A098764(n+1)-A000040(n+1))²]`
-/

namespace A110970.P15461775132301500294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A098764 (n + 1) - A000040 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110970.P15461775132301500294

/-! ## A110970.P16386672039741655054

`record[A000188(A089241(n+1)-A048974(n+1))²]`
-/

namespace A110970.P16386672039741655054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A089241 (n + 1) - A048974 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110970.P16386672039741655054

/-! ## A110970.P8516831344816509878

`record[A000188(A339691(n+1)%A000040(n+1))²]`
-/

namespace A110970.P8516831344816509878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.tmod (A339691 (n + 1)) (A000040 (n + 1))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110970.P8516831344816509878

/-!
# A110971: Triangle T(n,k) (n >= 2, 1 <= k <= n-1) read by rows: row n gives epispectrum of a path P_n (see reference for precise definition).

The programs for A110971, there is no canonical definition to state claims against.
-/

/-! ## A110971.P11781769318565888362

`A319421(∑[char[∑[n]]]²-n)`
-/

namespace A110971.P11781769318565888362
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319421 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A110971.P11781769318565888362

/-! ## A110971.P14149937354604884869

`or(char[1], A319421(A038722(n+1)))`
-/

namespace A110971.P14149937354604884869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319421 (A038722 (n + 1)).toNat)

end

end A110971.P14149937354604884869

/-! ## A110971.P11235629203192788021

`A319421(A038722(n+1))^A178334(n)`
-/

namespace A110971.P11235629203192788021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319421 (A038722 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A110971.P11235629203192788021

/-! ## A110971.P12017045596738171256

`A319421(A038722(n+1))%A017593(n)`
-/

namespace A110971.P12017045596738171256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319421 (A038722 (n + 1)).toNat) (A017593 n)

end

end A110971.P12017045596738171256

/-! ## A110971.P11915275891090771321

`gcd(A000038(n), A319421(A038722(n+1)))`
-/

namespace A110971.P11915275891090771321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319421 (A038722 (n + 1)).toNat)

end

end A110971.P11915275891090771321

/-! ## A110971.P14990387801521370514

`lcm(A020985(n), A319421(A038722(n+1)))`
-/

namespace A110971.P14990387801521370514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A319421 (A038722 (n + 1)).toNat)

end

end A110971.P14990387801521370514

/-! ## A110971.P14543558385984168083

`A319421(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A110971.P14543558385984168083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319421 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A110971.P14543558385984168083

/-! ## A110971.P16718429996789137117

`A319421(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A110971.P16718429996789137117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319421 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A110971.P16718429996789137117

/-!
# A110972: Number of vectors in Barnes-Wall lattice BW_{2^n} with twice the minimal norm.

The programs for A110972, there is no canonical definition to state claims against.
-/

/-! ## A110972.P5840086641061637314

`2^(n+2)*A110973(n+1)`
-/

namespace A110972.P5840086641061637314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) * A110973 (n + 1)

end

end A110972.P5840086641061637314

/-!
# A110973: Number of vectors in Barnes-Wall lattice BW_{2^n} with twice the minimal norm, divided by 2^(n+1).

The programs for A110973, there is no canonical definition to state claims against.
-/

/-! ## A110973.P9427544913539154632

`A110972(n+1)/eq[6, a(and(n, n-1))+1]` with `a(0)=5, a(1)=0, a(2)=0`
-/

namespace A110973.P9427544913539154632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5, 0, 0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110972 (n + 1) : ℚ) / (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ)

end

end A110973.P9427544913539154632

/-!
# A110975: Numbers n such that 2*prime(n) - prime(n+1) is a square.

The programs for A110975, there is no canonical definition to state claims against.
-/

/-! ## A110975.P476248944063027348

`eq[A001223(n+1), A056892(n+1)]+1`
-/

namespace A110975.P476248944063027348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A110975.P476248944063027348

/-! ## A110975.P8970646773721013765

`eq[1, A010052(A062234(n+1))]+1`
-/

namespace A110975.P8970646773721013765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A062234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110975.P8970646773721013765

/-! ## A110975.P16915615114574052487

`eq[1, A003285(A062234(n+1)+1)]+1`
-/

namespace A110975.P16915615114574052487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A062234 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A110975.P16915615114574052487

/-! ## A110975.P10163249933452295757

`eq[A053186(A008578(n+1)), A054541(n+1)]`
-/

namespace A110975.P10163249933452295757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110975.P10163249933452295757

/-! ## A110975.P1665763123862152587

`eq[A053186(A008578(n+1)), A125266(n+1)]`
-/

namespace A110975.P1665763123862152587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110975.P1665763123862152587

/-!
# A110976: Sequence of numerators associated with the continued fraction based on the sequence d(n)= distance of n from closest prime ( A051699).

The programs for A110976, there is no canonical definition to state claims against.
-/

/-! ## A110976.P9300295862903640768

`a(n-2)+a(n-1)*A051699(n)` with `a(0)=2, a(1)=3`
-/

namespace A110976.P9300295862903640768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (n - 1) * A051699 n

end

end A110976.P9300295862903640768

/-!
# A110977: Sequence of denominators associated with the continued fraction based on the sequence d(n)= distance of n from closest prime ( A051699).

The programs for A110977, there is no canonical definition to state claims against.
-/

/-! ## A110977.P11932497216914286167

`a(n-2)+a(n-1)*A051699(n)` with `a(0)=1, a(1)=1`
-/

namespace A110977.P11932497216914286167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A051699 n

end

end A110977.P11932497216914286167

/-!
# A110979: Squares equal to the sum of the first k primes minus 1.

The programs for A110979, there is no canonical definition to state claims against.
-/

/-! ## A110979.P7497368372221499888

`A110997(∑[A054120(n)])`
-/

namespace A110979.P7497368372221499888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110979.P7497368372221499888

/-! ## A110979.P6394098111397294345

`A110997(∑[A109128(n)])`
-/

namespace A110979.P6394098111397294345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A110979.P6394098111397294345

/-! ## A110979.P8068684165003064552

`A110997(A135877(n)+n)`
-/

namespace A110979.P8068684165003064552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110997 (A135877 n + (n : ℤ)).toNat

end

end A110979.P8068684165003064552

/-!
# A110981: a(n) = the number of aperiodic subsets S of the n-th roots of 1 with zero sum (i.e., there is no r different from 1 such that r*S=S).

The programs for A110981, there is no canonical definition to state claims against.
-/

/-! ## A110981.P11556683618535267973

`A001037(n+1)-A107847(n+1)`
-/

namespace A110981.P11556683618535267973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A107847 (n + 1)

end

end A110981.P11556683618535267973

/-! ## A110981.P9191525653149464785

`A001037(n+1)-(2^(n+1)-A103314(n+1))/(n+1)`
-/

namespace A110981.P9191525653149464785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) - ((2 ^ (n + 1) : ℤ) - A103314 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A110981.P9191525653149464785

/-! ## A110981.P10987612542203744820

`Δ[A173270(n)]-A107847(n+1)`
-/

namespace A110981.P10987612542203744820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107847 (n + 1)

end

end A110981.P10987612542203744820

/-! ## A110981.P13459639985905698335

`A164896(n+1)-A066656(n+1)`
-/

namespace A110981.P13459639985905698335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164896 (n + 1) - A066656 (n + 1)

end

end A110981.P13459639985905698335

/-! ## A110981.P2630252578704840350

`A059966(n+1)-A107847(n+1)%A000079(n)`
-/

namespace A110981.P2630252578704840350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - Int.tmod (A107847 (n + 1)) (A000079 n)

end

end A110981.P2630252578704840350

/-! ## A110981.P4107483687730709084

`A001037(n+1)+A164896(n+1)-A000031(n+1)`
-/

namespace A110981.P4107483687730709084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) + (A164896 (n + 1) - A000031 (n + 1))

end

end A110981.P4107483687730709084

/-! ## A110981.P9683957363079113381

`A123223(A000217(n+1))-A107847(n+1)`
-/

namespace A110981.P9683957363079113381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A000217 (n + 1)).toNat - A107847 (n + 1)

end

end A110981.P9683957363079113381

/-!
# A110983: Integers k such that 5*10^k + 51 is prime.

The programs for A110983, there is no canonical definition to state claims against.
-/

/-! ## A110983.P12059917554675943848

`A083760(a(n-1))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A110983.P12059917554675943848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A083760 (a (n - 1)).toNat

end

end A110983.P12059917554675943848

/-!
# A110994: Numbers n such that 23*n^2 - 4 is prime.

The programs for A110994, there is no canonical definition to state claims against.
-/

/-! ## A110994.P16887312509937948779

`record[or(A245879(n+1), A310857(n))]`
-/

namespace A110994.P16887312509937948779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245879 (n + 1)) (A310857 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A110994.P16887312509937948779

/-!
# A110996: Powers equal to (sum of first k primes) plus 1, for some k >= 0.

The programs for A110996, there is no canonical definition to state claims against.
-/

/-! ## A110996.P12070854493279582600

`A007504(A264858(n+1))+1`
-/

namespace A110996.P12070854493279582600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A264858 (n + 1)).toNat + 1

end

end A110996.P12070854493279582600

/-!
# A110997: Powers equal to (sum of first k primes) minus 1.

The programs for A110997, there is no canonical definition to state claims against.
-/

/-! ## A110997.P7307957770002699253

`∩[A001597(n+1), A237589(n+1)]`
-/

namespace A110997.P7307957770002699253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110997.P7307957770002699253

/-! ## A110997.P15705576080477029387

`∩[A075309(n+1), A237589(n+1)]`
-/

namespace A110997.P15705576080477029387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110997.P15705576080477029387

/-! ## A110997.P15204783195203523688

`∩[A090516(n+1), A237589(n+1)]`
-/

namespace A110997.P15204783195203523688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110997.P15204783195203523688

/-! ## A110997.P16408433212101380082

`∩[A001597(n+1), A007504(n)-1]`
-/

namespace A110997.P16408433212101380082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A110997.P16408433212101380082

/-!
# A110999: Numbers n such that 23*n^2 - 16 is prime.

The programs for A110999, there is no canonical definition to state claims against.
-/

/-! ## A110999.P9845717863793288564

`eq[A006337(A181568(n+5)), A057567(3*n+4)]`
-/

namespace A110999.P9845717863793288564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A181568 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A110999.P9845717863793288564

