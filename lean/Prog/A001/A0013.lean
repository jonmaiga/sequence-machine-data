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
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A001300: Number of ways of making change for n cents using coins of 1, 5, 10, 25, 50 cents.

The programs for A001300, the canonical program `A001300.P15797380405414889090` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001300 has offset 0).

The definition of A001300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001300.P15797380405414889090

`A000064(floor(n/5))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001300

/-- `A000064(floor(n/5))` -/
def P15797380405414889090.Spec : Prop :=
  ∀ n, P15797380405414889090.a n = A001300 n

theorem P15797380405414889090.correct : P15797380405414889090.Spec := by
  intro n
  simp only [A001300]

end A001300

/-! ## A001300.P14144351946147769985

`A001343(2*(n-n%5))`
-/

namespace A001300.P14144351946147769985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (2 * ((n : ℤ) - ((n % 5 : ℕ) : ℤ))).toNat

end

end A001300.P14144351946147769985

namespace A001300

/-- `A001343(2*(n-n%5))` -/
def P14144351946147769985.Spec : Prop :=
  ∀ n, P14144351946147769985.a n = A001300 n

end A001300

/-! ## A001300.P1237317651474666315

`A001343(5*A057354(n))`
-/

namespace A001300.P1237317651474666315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (5 * A057354 n).toNat

end

end A001300.P1237317651474666315

namespace A001300

/-- `A001343(5*A057354(n))` -/
def P1237317651474666315.Spec : Prop :=
  ∀ n, P1237317651474666315.a n = A001300 n

end A001300

/-! ## A001300.P3292166230113329737

`A001343(5*A288156(n))`
-/

namespace A001300.P3292166230113329737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (5 * A288156 n).toNat

end

end A001300.P3292166230113329737

namespace A001300

/-- `A001343(5*A288156(n))` -/
def P3292166230113329737.Spec : Prop :=
  ∀ n, P3292166230113329737.a n = A001300 n

end A001300

/-! ## A001300.P16653301949952243615

`A001343(5*A117451(n))`
-/

namespace A001300.P16653301949952243615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (5 * A117451 n).toNat

end

end A001300.P16653301949952243615

namespace A001300

/-- `A001343(5*A117451(n))` -/
def P16653301949952243615.Spec : Prop :=
  ∀ n, P16653301949952243615.a n = A001300 n

end A001300

/-! ## A001300.P7301860406618393274

`A001343(5*A130497(n))`
-/

namespace A001300.P7301860406618393274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (5 * A130497 n).toNat

end

end A001300.P7301860406618393274

namespace A001300

/-- `A001343(5*A130497(n))` -/
def P7301860406618393274.Spec : Prop :=
  ∀ n, P7301860406618393274.a n = A001300 n

end A001300

/-! ## A001300.P2153513933976662553

`A057536(n)+A169718(n)-A245574(n)`
-/

namespace A001300.P2153513933976662553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 n + (A169718 n - A245574 n)

end

end A001300.P2153513933976662553

namespace A001300

/-- `A057536(n)+A169718(n)-A245574(n)` -/
def P2153513933976662553.Spec : Prop :=
  ∀ n, P2153513933976662553.a n = A001300 n

end A001300

/-! ## A001300.P5243548794917290862

`A056926(A169718(n)²)`
-/

namespace A001300.P5243548794917290862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A169718 n ^ 2).toNat

end

end A001300.P5243548794917290862

namespace A001300

/-- `A056926(A169718(n)²)` -/
def P5243548794917290862.Spec : Prop :=
  ∀ n, P5243548794917290862.a n = A001300 n

end A001300

/-! ## A001300.P17463045855642287875

`A169718(A000196(n²+1))`
-/

namespace A001300.P17463045855642287875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A000196 (n ^ 2 + 1)).toNat

end

end A001300.P17463045855642287875

namespace A001300

/-- `A169718(A000196(n²+1))` -/
def P17463045855642287875.Spec : Prop :=
  ∀ n, P17463045855642287875.a n = A001300 n

end A001300

/-! ## A001300.P8386784042296261747

`A169718(A267050((n+1)²)+n)`
-/

namespace A001300.P8386784042296261747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A267050 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A001300.P8386784042296261747

namespace A001300

/-- `A169718(A267050((n+1)²)+n)` -/
def P8386784042296261747.Spec : Prop :=
  ∀ n, P8386784042296261747.a n = A001300 n

end A001300

/-! ## A001300.P10462940327683654323

`A169718(n)%A220087(A001306(n))`
-/

namespace A001300.P10462940327683654323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169718 n) (A220087 (A001306 n).toNat)

end

end A001300.P10462940327683654323

namespace A001300

/-- `A169718(n)%A220087(A001306(n))` -/
def P10462940327683654323.Spec : Prop :=
  ∀ n, P10462940327683654323.a n = A001300 n

end A001300

/-!
# A001301: Number of ways of making change for n cents using coins of 1, 2, 5, 10, 25 cents.

The programs for A001301, the canonical program `A001301.P3059956819678304744` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001301 has offset 0).

The definition of A001301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3821 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001301.P3059956819678304744

`A001299(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001301

/-- `A001299(n)+a(n-2)` -/
def P3059956819678304744.Spec : Prop :=
  ∀ n, P3059956819678304744.a n = A001301 n

theorem P3059956819678304744.correct : P3059956819678304744.Spec := by
  intro n
  simp only [A001301]

end A001301

/-! ## A001301.P13500796834726852526

`∑[A001304(floor(n/5))-a(n-1)]` with `a(0)=1`
-/

namespace A001301.P13500796834726852526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001304 ⌊(n : ℚ) / 5⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001301.P13500796834726852526

namespace A001301

/-- `∑[A001304(floor(n/5))-a(n-1)]` -/
def P13500796834726852526.Spec : Prop :=
  ∀ n, P13500796834726852526.a n = A001301 n

end A001301

/-! ## A001301.P10006494269754073535

`∑[A001299(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A001301.P10006494269754073535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001299 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001301.P10006494269754073535

namespace A001301

/-- `∑[A001299(n)-a(A023443(n))]` -/
def P10006494269754073535.Spec : Prop :=
  ∀ n, P10006494269754073535.a n = A001301 n

end A001301

/-! ## A001301.P9826512433090408167

`A001302(n)-A102683(A306100(n))`
-/

namespace A001301.P9826512433090408167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001302 n - A102683 (A306100 n).toNat

end

end A001301.P9826512433090408167

namespace A001301

/-- `A001302(n)-A102683(A306100(n))` -/
def P9826512433090408167.Spec : Prop :=
  ∀ n, P9826512433090408167.a n = A001301 n

end A001301

/-! ## A001301.P4447574052950385042

`A001302(n)-A185284(A211990(n+1))`
-/

namespace A001301.P4447574052950385042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001302 n - A185284 (A211990 (n + 1)).toNat

end

end A001301.P4447574052950385042

namespace A001301

/-- `A001302(n)-A185284(A211990(n+1))` -/
def P4447574052950385042.Spec : Prop :=
  ∀ n, P4447574052950385042.a n = A001301 n

end A001301

/-! ## A001301.P17780427767691928512

`A001302(n)+A102683(A306100(n))*A260196(n+2)`
-/

namespace A001301.P17780427767691928512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001302 n + A102683 (A306100 n).toNat * A260196 (n + 2)

end

end A001301.P17780427767691928512

namespace A001301

/-- `A001302(n)+A102683(A306100(n))*A260196(n+2)` -/
def P17780427767691928512.Spec : Prop :=
  ∀ n, P17780427767691928512.a n = A001301 n

end A001301

/-! ## A001301.P7504881293599441457

`A000034((2*n)²)*A001302(n)`
-/

namespace A001301.P7504881293599441457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((2 * n) ^ 2) * A001302 n

end

end A001301.P7504881293599441457

namespace A001301

/-- `A000034((2*n)²)*A001302(n)` -/
def P7504881293599441457.Spec : Prop :=
  ∀ n, P7504881293599441457.a n = A001301 n

end A001301

/-! ## A001301.P7317741486548608103

`A001302(n)+A000007((2*n+1)²)`
-/

namespace A001301.P7317741486548608103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001302 n + A000007 ((2 * n + 1) ^ 2)

end

end A001301.P7317741486548608103

namespace A001301

/-- `A001302(n)+A000007((2*n+1)²)` -/
def P7317741486548608103.Spec : Prop :=
  ∀ n, P7317741486548608103.a n = A001301 n

end A001301

/-!
# A001302: Number of ways of making change for n cents using coins of 1, 2, 5, 10, 25, 50 cents.

The programs for A001302, the canonical program `A001302.P14737467050433742912` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001302 has offset 0).

The definition of A001302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001302.P14737467050433742912

`A001300(n)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001302

/-- `A001300(n)+a(n-2)` -/
def P14737467050433742912.Spec : Prop :=
  ∀ n, P14737467050433742912.a n = A001302 n

theorem P14737467050433742912.correct : P14737467050433742912.Spec := by
  intro n
  simp only [A001302]

end A001302

/-! ## A001302.P4952676838012578119

`∑[A001300(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A001302.P4952676838012578119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001300 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001302.P4952676838012578119

namespace A001302

/-- `∑[A001300(n)-a(A023443(n))]` -/
def P4952676838012578119.Spec : Prop :=
  ∀ n, P4952676838012578119.a n = A001302 n

end A001302

/-! ## A001302.P1916507438160730049

`∑[A001300(n)-a(A028310(n)-1)]` with `a(0)=1`
-/

namespace A001302.P1916507438160730049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001300 n - f1 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001302.P1916507438160730049

namespace A001302

/-- `∑[A001300(n)-a(A028310(n)-1)]` -/
def P1916507438160730049.Spec : Prop :=
  ∀ n, P1916507438160730049.a n = A001302 n

end A001302

/-! ## A001302.P1487596896549961072

`A185284(A006257(n))+A001301(n)`
-/

namespace A001302.P1487596896549961072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A006257 n).toNat + A001301 n

end

end A001302.P1487596896549961072

namespace A001302

/-- `A185284(A006257(n))+A001301(n)` -/
def P1487596896549961072.Spec : Prop :=
  ∀ n, P1487596896549961072.a n = A001302 n

end A001302

/-! ## A001302.P10470518994272946668

`A102683(A306100(n))+A001301(n)`
-/

namespace A001302.P10470518994272946668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A306100 n).toNat + A001301 n

end

end A001302.P10470518994272946668

namespace A001302

/-- `A102683(A306100(n))+A001301(n)` -/
def P10470518994272946668.Spec : Prop :=
  ∀ n, P10470518994272946668.a n = A001302 n

end A001302

/-! ## A001302.P2778141852930029088

`A185284(A211990(n+1))+A001301(n)`
-/

namespace A001302.P2778141852930029088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A211990 (n + 1)).toNat + A001301 n

end

end A001302.P2778141852930029088

namespace A001302

/-- `A185284(A211990(n+1))+A001301(n)` -/
def P2778141852930029088.Spec : Prop :=
  ∀ n, P2778141852930029088.a n = A001302 n

end A001302

/-!
# A001303: Stirling numbers of first kind, s(n+3, n), negated.

The programs for A001303, the canonical program `A001303.P6537612790986009647` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001303 has offset 1).

The definition of A001303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001303.P6537612790986009647

`C(n+4, 4)*C(n+4, 2)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001303

/-- `C(n+4, 4)*C(n+4, 2)` -/
def P6537612790986009647.Spec : Prop :=
  ∀ n, (P6537612790986009647.a n : ℤ) = A001303 (n + 1)

theorem P6537612790986009647.correct : P6537612790986009647.Spec := by
  intro n
  simp only [A001303, Nat.add_sub_cancel]

end A001303

/-! ## A001303.P15097345045937308802

`(n+4)²/((n+1)²-1)*a(n-1)` with `a(0)=6`
-/

namespace A001303.P15097345045937308802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  ((n + 4) ^ 2 : ℚ) / (((n + 1) ^ 2 : ℤ) - 1 : ℚ) * a (n - 1)

end

end A001303.P15097345045937308802

namespace A001303

/-- `(n+4)²/((n+1)²-1)*a(n-1)` -/
def P15097345045937308802.Spec : Prop :=
  ∀ n, P15097345045937308802.a n = (A001303 (n + 1) : ℚ)

end A001303

/-! ## A001303.P15179426764757069600

`(n+1)*(n+2)*(n+3)²*(n+4)²/48`
-/

namespace A001303.P15179426764757069600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) ^ 2 * (n + 4) ^ 2 : ℚ) / 48

end

end A001303.P15179426764757069600

namespace A001303

/-- `(n+1)*(n+2)*(n+3)²*(n+4)²/48` -/
def P15179426764757069600.Spec : Prop :=
  ∀ n, P15179426764757069600.a n = (A001303 (n + 1) : ℚ)

theorem P15179426764757069600.correct : P15179426764757069600.Spec := by
  intro n
  simp only [A001303, Nat.add_sub_cancel, A001303.P15179426764757069600.a, A001303.P6537612790986009647.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001303

/-! ## A001303.P2846424200478125924

`∑[(n+3)*A000914(n+1)]`
-/

namespace A001303.P2846424200478125924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A000914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001303.P2846424200478125924

namespace A001303

/-- `∑[(n+3)*A000914(n+1)]` -/
def P2846424200478125924.Spec : Prop :=
  ∀ n, P2846424200478125924.a n = A001303 (n + 1)

end A001303

/-! ## A001303.P11739450723775076362

`(n+3)/2*A027764(n+3)`
-/

namespace A001303.P11739450723775076362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A027764 (n + 3) : ℚ)

end

end A001303.P11739450723775076362

namespace A001303

/-- `(n+3)/2*A027764(n+3)` -/
def P11739450723775076362.Spec : Prop :=
  ∀ n, P11739450723775076362.a n = (A001303 (n + 1) : ℚ)

theorem P11739450723775076362.correct : P11739450723775076362.Spec := by
  intro n
  simp only [A001303, Nat.add_sub_cancel, A001303.P11739450723775076362.a, A001303.P6537612790986009647.a, A027764, A027764.P14325653007751828854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001303

/-! ## A001303.P8476200058725068442

`∑[(n+3)*∑[A006002(n+1)]]`
-/

namespace A001303.P8476200058725068442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001303.P8476200058725068442

namespace A001303

/-- `∑[(n+3)*∑[A006002(n+1)]]` -/
def P8476200058725068442.Spec : Prop :=
  ∀ n, P8476200058725068442.a n = A001303 (n + 1)

end A001303

/-! ## A001303.P988847586582085997

`A027801(n+1)+∑[∑[∑[n+1]]]`
-/

namespace A001303.P988847586582085997
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027801 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A001303.P988847586582085997

namespace A001303

/-- `A027801(n+1)+∑[∑[∑[n+1]]]` -/
def P988847586582085997.Spec : Prop :=
  ∀ n, P988847586582085997.a n = A001303 (n + 1)

end A001303

/-! ## A001303.P5426879507553418904

`∑[∑[∑[(n+1)*A005891(n+1)]]]`
-/

namespace A001303.P5426879507553418904
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001303.P5426879507553418904

namespace A001303

/-- `∑[∑[∑[(n+1)*A005891(n+1)]]]` -/
def P5426879507553418904.Spec : Prop :=
  ∀ n, P5426879507553418904.a n = A001303 (n + 1)

end A001303

/-! ## A001303.P1746989649705876066

`A001249(n+1)-A006542(n+5)`
-/

namespace A001303.P1746989649705876066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (n + 1) - A006542 (n + 5)

end

end A001303.P1746989649705876066

namespace A001303

/-- `A001249(n+1)-A006542(n+5)` -/
def P1746989649705876066.Spec : Prop :=
  ∀ n, P1746989649705876066.a n = A001303 (n + 1)

end A001303

/-! ## A001303.P6609671972936463189

`A027778(n+3)-A027764(n+3)`
-/

namespace A001303.P6609671972936463189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027778 (n + 3) - A027764 (n + 3)

end

end A001303.P6609671972936463189

namespace A001303

/-- `A027778(n+3)-A027764(n+3)` -/
def P6609671972936463189.Spec : Prop :=
  ∀ n, P6609671972936463189.a n = A001303 (n + 1)

theorem P6609671972936463189.correct : P6609671972936463189.Spec := by
  intro n
  simp only [A001303, Nat.add_sub_cancel, A001303.P6609671972936463189.a, A001303.P6537612790986009647.a, A027764, A027764.P14325653007751828854.a, A027778, A027778.P605010904864149133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001303

/-! ## A001303.P1450270782304271555

`A213550(A000124(n))+A027801(n+1)`
-/

namespace A001303.P1450270782304271555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213550 (A000124 n).toNat + A027801 (n + 1)

end

end A001303.P1450270782304271555

namespace A001303

/-- `A213550(A000124(n))+A027801(n+1)` -/
def P1450270782304271555.Spec : Prop :=
  ∀ n, P1450270782304271555.a n = A001303 (n + 1)

end A001303

/-!
# A001304: Expansion of 1/((1-x)^2*(1-x^2)*(1-x^5)).

The programs for A001304, the canonical program `A001304.P3000447044284911168` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001304 has offset 0).

The definition of A001304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^3-x^4-x^5+2x^6-2x^8+x^9))` (program `A001304.P3000447044284911168`, by `A001304.P3000447044284911168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001304.P3000447044284911168

`ogf(1/(1-2x+2x^3-x^4-x^5+2x^6-2x^8+x^9))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001304

/-- `ogf(1/(1-2x+2x^3-x^4-x^5+2x^6-2x^8+x^9))` -/
def P3000447044284911168.Spec : Prop :=
  ∀ n, P3000447044284911168.a n = A001304 n

theorem P3000447044284911168.correct : P3000447044284911168.Spec := by
  intro n
  simp only [A001304]

end A001304

/-! ## A001304.P15687345927043035668

`floor((n+8)*(2*n²+11*n+18)/120)`
-/

namespace A001304.P15687345927043035668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 8) * (2 * n ^ 2 + 11 * n + 18) : ℚ) / 120⌋

end

end A001304.P15687345927043035668

namespace A001304

/-- `floor((n+8)*(2*n²+11*n+18)/120)` -/
def P15687345927043035668.Spec : Prop :=
  ∀ n, P15687345927043035668.a n = A001304 n

end A001304

/-! ## A001304.P17307782314111125912

`∑[A000115(n)]`
-/

namespace A001304.P17307782314111125912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P17307782314111125912

namespace A001304

/-- `∑[A000115(n)]` -/
def P17307782314111125912.Spec : Prop :=
  ∀ n, P17307782314111125912.a n = A001304 n

end A001304

/-! ## A001304.P1002454130649494367

`A177239(n+4)`
-/

namespace A001304.P1002454130649494367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177239 (n + 4)

end

end A001304.P1002454130649494367

namespace A001304

/-- `A177239(n+4)` -/
def P1002454130649494367.Spec : Prop :=
  ∀ n, P1002454130649494367.a n = A001304 n

end A001304

/-! ## A001304.P9434825705860450918

`A029013(Δ[n²])`
-/

namespace A001304.P9434825705860450918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001304.P9434825705860450918

namespace A001304

/-- `A029013(Δ[n²])` -/
def P9434825705860450918.Spec : Prop :=
  ∀ n, P9434825705860450918.a n = A001304 n

end A001304

/-! ## A001304.P10819611836563508592

`∑[∑[A008616(n)]]`
-/

namespace A001304.P10819611836563508592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P10819611836563508592

namespace A001304

/-- `∑[∑[A008616(n)]]` -/
def P10819611836563508592.Spec : Prop :=
  ∀ n, P10819611836563508592.a n = A001304 n

end A001304

/-! ## A001304.P9210207812178654587

`ceil(A035107(n)/5)`
-/

namespace A001304.P9210207812178654587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035107 n : ℚ) / 5⌉

end

end A001304.P9210207812178654587

namespace A001304

/-- `ceil(A035107(n)/5)` -/
def P9210207812178654587.Spec : Prop :=
  ∀ n, P9210207812178654587.a n = A001304 n

end A001304

/-! ## A001304.P690394343646504318

`∑[A005868(2*n)]`
-/

namespace A001304.P690394343646504318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005868 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P690394343646504318

namespace A001304

/-- `∑[A005868(2*n)]` -/
def P690394343646504318.Spec : Prop :=
  ∀ n, P690394343646504318.a n = A001304 n

end A001304

/-! ## A001304.P385394344453605320

`∑[A025802(2*n)]`
-/

namespace A001304.P385394344453605320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P385394344453605320

namespace A001304

/-- `∑[A025802(2*n)]` -/
def P385394344453605320.Spec : Prop :=
  ∀ n, P385394344453605320.a n = A001304 n

end A001304

/-! ## A001304.P10197788006359516859

`∑[∑[A165190(2*n)]]`
-/

namespace A001304.P10197788006359516859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P10197788006359516859

namespace A001304

/-- `∑[∑[A165190(2*n)]]` -/
def P10197788006359516859.Spec : Prop :=
  ∀ n, P10197788006359516859.a n = A001304 n

end A001304

/-! ## A001304.P6039073070550076557

`∑[A025778(2*n+1)]`
-/

namespace A001304.P6039073070550076557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025778 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P6039073070550076557

namespace A001304

/-- `∑[A025778(2*n+1)]` -/
def P6039073070550076557.Spec : Prop :=
  ∀ n, P6039073070550076557.a n = A001304 n

end A001304

/-! ## A001304.P3753351123768154442

`A008732(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A001304.P3753351123768154442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008732 n + a (n - 2)

end

end A001304.P3753351123768154442

namespace A001304

/-- `A008732(n)+a(n-2)` -/
def P3753351123768154442.Spec : Prop :=
  ∀ n, P3753351123768154442.a n = A001304 n

end A001304

/-! ## A001304.P813486430890507474

`A122047(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A001304.P813486430890507474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122047 (n + 2) - a (n - 1)

end

end A001304.P813486430890507474

namespace A001304

/-- `A122047(n+2)-a(n-1)` -/
def P813486430890507474.Spec : Prop :=
  ∀ n, P813486430890507474.a n = A001304 n

end A001304

/-! ## A001304.P17983890089090681896

`∑[2*A008720(n)]-A008720(n)`
-/

namespace A001304.P17983890089090681896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008720 n

end

end A001304.P17983890089090681896

namespace A001304

/-- `∑[2*A008720(n)]-A008720(n)` -/
def P17983890089090681896.Spec : Prop :=
  ∀ n, P17983890089090681896.a n = A001304 n

end A001304

/-! ## A001304.P17875774179213483947

`A008669(n)+A008667(2*n+1)`
-/

namespace A001304.P17875774179213483947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 n + A008667 (2 * n + 1)

end

end A001304.P17875774179213483947

namespace A001304

/-- `A008669(n)+A008667(2*n+1)` -/
def P17875774179213483947.Spec : Prop :=
  ∀ n, P17875774179213483947.a n = A001304 n

end A001304

/-! ## A001304.P12092307969208592846

`A029204(2*n+1)+A029014(2*n)`
-/

namespace A001304.P12092307969208592846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (2 * n + 1) + A029014 (2 * n)

end

end A001304.P12092307969208592846

namespace A001304

/-- `A029204(2*n+1)+A029014(2*n)` -/
def P12092307969208592846.Spec : Prop :=
  ∀ n, P12092307969208592846.a n = A001304 n

end A001304

/-! ## A001304.P9063448988932742943

`A008669(2*n+1)-∑[∑[A008615(n+1)]]`
-/

namespace A001304.P9063448988932742943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P9063448988932742943

namespace A001304

/-- `A008669(2*n+1)-∑[∑[A008615(n+1)]]` -/
def P9063448988932742943.Spec : Prop :=
  ∀ n, P9063448988932742943.a n = A001304 n

end A001304

/-! ## A001304.P16364230854724150323

`A008667(2*n+1)+A001400(n+1)-A008667(n+1)`
-/

namespace A001304.P16364230854724150323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n + 1) + (A001400 (n + 1) - A008667 (n + 1))

end

end A001304.P16364230854724150323

namespace A001304

/-- `A008667(2*n+1)+A001400(n+1)-A008667(n+1)` -/
def P16364230854724150323.Spec : Prop :=
  ∀ n, P16364230854724150323.a n = A001304 n

end A001304

/-! ## A001304.P8336054353355882751

`∑[A025835(3*n)]`
-/

namespace A001304.P8336054353355882751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001304.P8336054353355882751

namespace A001304

/-- `∑[A025835(3*n)]` -/
def P8336054353355882751.Spec : Prop :=
  ∀ n, P8336054353355882751.a n = A001304 n

end A001304

/-! ## A001304.P18232772458618739980

`A029146(3*(n+1)+1)`
-/

namespace A001304.P18232772458618739980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029146 (3 * (n + 1) + 1)

end

end A001304.P18232772458618739980

namespace A001304

/-- `A029146(3*(n+1)+1)` -/
def P18232772458618739980.Spec : Prop :=
  ∀ n, P18232772458618739980.a n = A001304 n

end A001304

/-!
# A001305: Expansion of 1/((1-x)^2*(1-x^2)*(1-x^5)*(1-x^10)*(1-x^20)).

The programs for A001305, there is no canonical definition to state claims against.
-/

/-! ## A001305.P10632873988040049262

`A169718(5*n)`
-/

namespace A001305.P10632873988040049262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (5 * n)

end

end A001305.P10632873988040049262

/-! ## A001305.P14121374960173969069

`record[A169718(n)^cos(n%5)]`
-/

namespace A001305.P14121374960173969069
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A169718 n : ℝ) ^ (Real.cos ((n % 5 : ℕ) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P14121374960173969069

/-! ## A001305.P1833737014141506407

`record[A169718(A191558(n+1))]`
-/

namespace A001305.P1833737014141506407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A191558 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P1833737014141506407

/-! ## A001305.P1742399896970421097

`record[A169718(A302032(n+1))]`
-/

namespace A001305.P1742399896970421097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A302032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P1742399896970421097

/-! ## A001305.P8360285492069550287

`record[A169718(A000265(n+1)+1)]`
-/

namespace A001305.P8360285492069550287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P8360285492069550287

/-! ## A001305.P4331051457295814049

`record[gcd(A169718(n), A324179(n+1))]`
-/

namespace A001305.P4331051457295814049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169718 n) (A324179 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P4331051457295814049

/-! ## A001305.P9757469802669343497

`record[A169718(xor(1, n))]`
-/

namespace A001305.P9757469802669343497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P9757469802669343497

/-! ## A001305.P9001759116200719827

`record[A169718(A026741(n))]`
-/

namespace A001305.P9001759116200719827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P9001759116200719827

/-! ## A001305.P7483845010556098228

`record[A169718(A266593(n))]`
-/

namespace A001305.P7483845010556098228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A266593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P7483845010556098228

/-! ## A001305.P13158933306350887575

`record[A169718(A000265(n+1))]`
-/

namespace A001305.P13158933306350887575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P13158933306350887575

/-! ## A001305.P690839127653614908

`record[A169718(A038387(n+1))]`
-/

namespace A001305.P690839127653614908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A038387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P690839127653614908

/-! ## A001305.P138391258008554911

`record[A169718(n)/A220130(n)]`
-/

namespace A001305.P138391258008554911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169718 n : ℚ) / (A220130 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P138391258008554911

/-! ## A001305.P3143968619824360188

`record[A169718(n)/A220131(n)]`
-/

namespace A001305.P3143968619824360188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169718 n : ℚ) / (A220131 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P3143968619824360188

/-! ## A001305.P1652707717762071094

`record[A169718(A242112(n))]`
-/

namespace A001305.P1652707717762071094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A242112 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P1652707717762071094

/-! ## A001305.P16848857489878320469

`record[A169718(gcd(n, A001343(n)))]`
-/

namespace A001305.P16848857489878320469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (Int.gcd (n : ℤ) (A001343 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P16848857489878320469

/-! ## A001305.P17614340575477875629

`record[A169718(A335354(n+1))]`
-/

namespace A001305.P17614340575477875629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A335354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001305.P17614340575477875629

/-!
# A001306: Number of ways of making change for n cents using coins of 1, 5, 10, 20, 50, 100 cents.

The programs for A001306, the canonical program `A001306.P13591141567475542763` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001306 has offset 0).

The definition of A001306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001306.P10917673328686702434

`∑[A001343(n)]`
-/

namespace A001306.P10917673328686702434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001306.P10917673328686702434

namespace A001306

/-- `∑[A001343(n)]` -/
def P10917673328686702434.Spec : Prop :=
  ∀ n, P10917673328686702434.a n = A001306 n

end A001306

/-! ## A001306.P14162900697274141196

`A001307(floor(n/5))`
-/

namespace A001306.P14162900697274141196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001307 ⌊(n : ℚ) / 5⌋.toNat

end

end A001306.P14162900697274141196

namespace A001306

/-- `A001307(floor(n/5))` -/
def P14162900697274141196.Spec : Prop :=
  ∀ n, P14162900697274141196.a n = A001306 n

end A001306

/-! ## A001306.P12382104570970085012

`A001343(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A001306.P12382104570970085012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001343 n + a (A023443 n).toNat

end

end A001306.P12382104570970085012

namespace A001306

/-- `A001343(n)+a(A023443(n))` -/
def P12382104570970085012.Spec : Prop :=
  ∀ n, P12382104570970085012.a n = A001306 n

end A001306

/-! ## A001306.P8992493384392681450

`a(n-1)+A001343(n)%A008778(n)` with `a(0)=1`
-/

namespace A001306.P8992493384392681450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A001343 n) (A008778 n)

end

end A001306.P8992493384392681450

namespace A001306

/-- `a(n-1)+A001343(n)%A008778(n)` -/
def P8992493384392681450.Spec : Prop :=
  ∀ n, P8992493384392681450.a n = A001306 n

end A001306

/-! ## A001306.P13591141567475542763

`∑[A000064(A059995(n))*A079998(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001306

/-- `∑[A000064(A059995(n))*A079998(n)]` -/
def P13591141567475542763.Spec : Prop :=
  ∀ n, P13591141567475542763.a n = A001306 n

theorem P13591141567475542763.correct : P13591141567475542763.Spec := by
  intro n
  simp only [A001306]

end A001306

/-! ## A001306.P5873515594739065424

`a(n-1)+A001343(n)+A008683(A072103(n+1))` with `a(0)=1`
-/

namespace A001306.P5873515594739065424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001343 n + A008683 (A072103 (n + 1)).toNat)

end

end A001306.P5873515594739065424

namespace A001306

/-- `a(n-1)+A001343(n)+A008683(A072103(n+1))` -/
def P5873515594739065424.Spec : Prop :=
  ∀ n, P5873515594739065424.a n = A001306 n

end A001306

/-! ## A001306.P9970576593541192714

`A061579(A061579(a(n-1)))+A001343(n)` with `a(0)=1`
-/

namespace A001306.P9970576593541192714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061579 (A061579 (a (n - 1)).toNat).toNat + A001343 n

end

end A001306.P9970576593541192714

namespace A001306

/-- `A061579(A061579(a(n-1)))+A001343(n)` -/
def P9970576593541192714.Spec : Prop :=
  ∀ n, P9970576593541192714.a n = A001306 n

end A001306

/-!
# A001307: Expansion of 1/(1-x)^2/(1-x^2)/(1-x^4)/(1-x^10)/(1-x^20).

The programs for A001307, the canonical program `A001307.P15031898288533116587` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001307 has offset 0).

The definition of A001307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001307.P15031898288533116587

`∑[A358206(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001307

/-- `∑[A358206(n)]` -/
def P15031898288533116587.Spec : Prop :=
  ∀ n, P15031898288533116587.a n = A001307 n

theorem P15031898288533116587.correct : P15031898288533116587.Spec := by
  intro n
  simp only [A001307]

end A001307

/-! ## A001307.P3131073417721723410

`∑[A001300(∑[gcd(2, n)²]-4)]`
-/

namespace A001307.P3131073417721723410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (∑ j ∈ Finset.range (n + 1), f2 j - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P3131073417721723410

namespace A001307

/-- `∑[A001300(∑[gcd(2, n)²]-4)]` -/
def P3131073417721723410.Spec : Prop :=
  ∀ n, P3131073417721723410.a n = A001307 n

end A001307

/-! ## A001307.P7128427703751289936

`∑[A001300(A110654(n)+A005843(n))]`
-/

namespace A001307.P7128427703751289936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A110654 n + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P7128427703751289936

namespace A001307

/-- `∑[A001300(A110654(n)+A005843(n))]` -/
def P7128427703751289936.Spec : Prop :=
  ∀ n, P7128427703751289936.a n = A001307 n

end A001307

/-! ## A001307.P5039836558993990249

`∑[A001300(∑[gcd(6, n)]-3)]`
-/

namespace A001307.P5039836558993990249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (∑ j ∈ Finset.range (n + 1), f2 j - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P5039836558993990249

namespace A001307

/-- `∑[A001300(∑[gcd(6, n)]-3)]` -/
def P5039836558993990249.Spec : Prop :=
  ∀ n, P5039836558993990249.a n = A001307 n

end A001307

/-! ## A001307.P5297804035016929288

`∑[A001300(A047216(n+1))]`
-/

namespace A001307.P5297804035016929288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A047216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P5297804035016929288

namespace A001307

/-- `∑[A001300(A047216(n+1))]` -/
def P5297804035016929288.Spec : Prop :=
  ∀ n, P5297804035016929288.a n = A001307 n

end A001307

/-! ## A001307.P610923697640562959

`∑[A001300(2*A047201(n+1))]`
-/

namespace A001307.P610923697640562959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (2 * A047201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P610923697640562959

namespace A001307

/-- `∑[A001300(2*A047201(n+1))]` -/
def P610923697640562959.Spec : Prop :=
  ∀ n, P610923697640562959.a n = A001307 n

end A001307

/-! ## A001307.P8160255534271606391

`∑[A001300(A028242(n)+2*n)]`
-/

namespace A001307.P8160255534271606391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A028242 n + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P8160255534271606391

namespace A001307

/-- `∑[A001300(A028242(n)+2*n)]` -/
def P8160255534271606391.Spec : Prop :=
  ∀ n, P8160255534271606391.a n = A001307 n

end A001307

/-! ## A001307.P7892311287092832491

`∑[A001300(A028242(n)+n+n)]`
-/

namespace A001307.P7892311287092832491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A028242 n + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P7892311287092832491

namespace A001307

/-- `∑[A001300(A028242(n)+n+n)]` -/
def P7892311287092832491.Spec : Prop :=
  ∀ n, P7892311287092832491.a n = A001307 n

end A001307

/-! ## A001307.P3129730861882130661

`∑[A001300(A110654(5*n))]`
-/

namespace A001307.P3129730861882130661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A110654 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P3129730861882130661

namespace A001307

/-- `∑[A001300(A110654(5*n))]` -/
def P3129730861882130661.Spec : Prop :=
  ∀ n, P3129730861882130661.a n = A001307 n

end A001307

/-! ## A001307.P11807493014581785763

`∑[A001300(A028242(5*n))]`
-/

namespace A001307.P11807493014581785763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A028242 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P11807493014581785763

namespace A001307

/-- `∑[A001300(A028242(5*n))]` -/
def P11807493014581785763.Spec : Prop :=
  ∀ n, P11807493014581785763.a n = A001307 n

end A001307

/-! ## A001307.P16832326116899058822

`∑[A001343(5*n)]`
-/

namespace A001307.P16832326116899058822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001307.P16832326116899058822

namespace A001307

/-- `∑[A001343(5*n)]` -/
def P16832326116899058822.Spec : Prop :=
  ∀ n, P16832326116899058822.a n = A001307 n

end A001307

/-! ## A001307.P14950417573034529634

`A001306(5*n)`
-/

namespace A001307.P14950417573034529634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001306 (5 * n)

end

end A001307.P14950417573034529634

namespace A001307

/-- `A001306(5*n)` -/
def P14950417573034529634.Spec : Prop :=
  ∀ n, P14950417573034529634.a n = A001307 n

end A001307

/-! ## A001307.P1827835100982970497

`record[A001306(n)/A220130(n)]`
-/

namespace A001307.P1827835100982970497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001306 n : ℚ) / (A220130 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001307.P1827835100982970497

namespace A001307

/-- `record[A001306(n)/A220130(n)]` -/
def P1827835100982970497.Spec : Prop :=
  ∀ n, P1827835100982970497.a n = (A001307 n : ℚ)

end A001307

/-! ## A001307.P12822830648321380897

`record[A001306(n)/A220131(n)]`
-/

namespace A001307.P12822830648321380897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001306 n : ℚ) / (A220131 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001307.P12822830648321380897

namespace A001307

/-- `record[A001306(n)/A220131(n)]` -/
def P12822830648321380897.Spec : Prop :=
  ∀ n, P12822830648321380897.a n = (A001307 n : ℚ)

end A001307

/-! ## A001307.P11722777263040735167

`record[A001306(gcd(n, A001343(n)))]`
-/

namespace A001307.P11722777263040735167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001306 (Int.gcd (n : ℤ) (A001343 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001307.P11722777263040735167

namespace A001307

/-- `record[A001306(gcd(n, A001343(n)))]` -/
def P11722777263040735167.Spec : Prop :=
  ∀ n, P11722777263040735167.a n = A001307 n

end A001307

/-! ## A001307.P15778514518839631583

`record[A001306(n)-A001343(n+1)]`
-/

namespace A001307.P15778514518839631583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001306 n - A001343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001307.P15778514518839631583

namespace A001307

/-- `record[A001306(n)-A001343(n+1)]` -/
def P15778514518839631583.Spec : Prop :=
  ∀ n, P15778514518839631583.a n = A001307 n

end A001307

/-! ## A001307.P5100476807559824544

`record[gcd(A001306(n+1), A001306(n))]`
-/

namespace A001307.P5100476807559824544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001306 (n + 1)) (A001306 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001307.P5100476807559824544

namespace A001307

/-- `record[gcd(A001306(n+1), A001306(n))]` -/
def P5100476807559824544.Spec : Prop :=
  ∀ n, (P5100476807559824544.a n : ℤ) = A001307 n

end A001307

/-!
# A001308: Order of Chevalley group D_n (2).

The programs for A001308, there is no canonical definition to state claims against.
-/

/-! ## A001308.P937522905739589904

`A002884(n+1)/A002884(n)*A003923(n)`
-/

namespace A001308.P937522905739589904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 (n + 1) : ℚ) / (A002884 n : ℚ) * (A003923 n : ℚ)

end

end A001308.P937522905739589904

/-!
# A001309: Order of real Clifford group L_n connected with Barnes-Wall lattices in dimension 2^n.

The programs for A001309, there is no canonical definition to state claims against.
-/

/-! ## A001309.P2973073802830880722

`∑[A014067(n)]*A014115(n)`
-/

namespace A001309.P2973073802830880722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014115 n

end

end A001309.P2973073802830880722

/-! ## A001309.P459093406340914277

`∑[A014071(n)]*A014115(n)`
-/

namespace A001309.P459093406340914277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014115 n

end

end A001309.P459093406340914277

/-! ## A001309.P10169756875402433926

`A014115(n)*A333571(A133263(n))`
-/

namespace A001309.P10169756875402433926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014115 n * A333571 (A133263 n).toNat

end

end A001309.P10169756875402433926

/-! ## A001309.P12133721178860649873

`A020639(A025052(n+1))*A014115(n)`
-/

namespace A001309.P12133721178860649873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025052 (n + 1)).toNat * A014115 n

end

end A001309.P12133721178860649873

/-! ## A001309.P3054937415352353986

`A020639(A033196(n+1))*A014115(n)`
-/

namespace A001309.P3054937415352353986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A033196 (n + 1)).toNat * A014115 n

end

end A001309.P3054937415352353986

/-!
# A001310: Number of ways of making change for n cents using coins of 1, 2, 4, 10, 20, 40, 100 cents.

The programs for A001310, there is no canonical definition to state claims against.
-/

/-! ## A001310.P16641998689282640482

`A169718(∑[A174296(n²)])`
-/

namespace A001310.P16641998689282640482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174296 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001310.P16641998689282640482

/-! ## A001310.P14087939814729642636

`A169718(Δ[A001068(n²)])`
-/

namespace A001310.P14087939814729642636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (f1 (n + 1) - f1 n).toNat

end

end A001310.P14087939814729642636

/-! ## A001310.P4189463532824402723

`A169718(∑[A225821(n²+1)]+n)`
-/

namespace A001310.P4189463532824402723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225821 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A001310.P4189463532824402723

/-! ## A001310.P18306374476784503824

`A001305(A004526(n)%A025362(n+1))`
-/

namespace A001310.P18306374476784503824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001305 (Int.tmod (A004526 n) (A025362 (n + 1))).toNat

end

end A001310.P18306374476784503824

/-! ## A001310.P12399663638517431868

`A001305(A004526(n))%A038552(n+1)`
-/

namespace A001310.P12399663638517431868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001305 (A004526 n).toNat) (A038552 (n + 1))

end

end A001310.P12399663638517431868

/-! ## A001310.P1782481993883394990

`A169718(A323048(n+1)+A001651(n+1))`
-/

namespace A001310.P1782481993883394990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (A323048 (n + 1) + A001651 (n + 1)).toNat

end

end A001310.P1782481993883394990

/-! ## A001310.P16227475244154978011

`A169718(A047219(n+1)%A038552(n+1))`
-/

namespace A001310.P16227475244154978011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (Int.tmod (A047219 (n + 1)) (A038552 (n + 1))).toNat

end

end A001310.P16227475244154978011

/-! ## A001310.P9685666679099349749

`A169718(A008851(n+1)%A102698(n+1))`
-/

namespace A001310.P9685666679099349749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169718 (Int.tmod (A008851 (n + 1)) (A102698 (n + 1))).toNat

end

end A001310.P9685666679099349749

/-!
# A001313: Number of ways of making change for n cents using coins of 1, 2, 5, 10, 20, 50 cents.

The programs for A001313, there is no canonical definition to state claims against.
-/

/-! ## A001313.P16589070753365997219

`∑[A001319(n)]`
-/

namespace A001313.P16589070753365997219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001313.P16589070753365997219

/-! ## A001313.P15685495894135967

`a(n-1)+A001319(n)+A000038(n)` with `a(0)=1`
-/

namespace A001313.P15685495894135967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001319 n + A000038 n)

end

end A001313.P15685495894135967

/-! ## A001313.P7450943369808118773

`A028310(a(n-1))+A001319(n)` with `a(0)=1`
-/

namespace A001313.P7450943369808118773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A001319 n

end

end A001313.P7450943369808118773

/-! ## A001313.P12723265654998678701

`A057537(n)-A008290(A196222(n))`
-/

namespace A001313.P12723265654998678701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 n - A008290 (A196222 n).toNat

end

end A001313.P12723265654998678701

/-! ## A001313.P4207971445413157103

`A057536(n)+A057537(n)-A245574(n)`
-/

namespace A001313.P4207971445413157103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 n + (A057537 n - A245574 n)

end

end A001313.P4207971445413157103

/-! ## A001313.P2747982393412310660

`A057537(A000194(n²))`
-/

namespace A001313.P2747982393412310660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000194 (n ^ 2)).toNat

end

end A001313.P2747982393412310660

/-! ## A001313.P6998008883869369414

`A057537(A000196(∑[2*n]))`
-/

namespace A001313.P6998008883869369414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A001313.P6998008883869369414

/-! ## A001313.P8388829993998860834

`A057537(n)+A055087(n²)`
-/

namespace A001313.P8388829993998860834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 n + A055087 (n ^ 2)

end

end A001313.P8388829993998860834

/-! ## A001313.P10280604570191441554

`A057537(n)+A000038((n+1)²)`
-/

namespace A001313.P10280604570191441554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 n + A000038 ((n + 1) ^ 2)

end

end A001313.P10280604570191441554

/-! ## A001313.P12420333791397445139

`A057537(A000122(n²+2)+n)`
-/

namespace A001313.P12420333791397445139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000122 (n ^ 2 + 2) + (n : ℤ)).toNat

end

end A001313.P12420333791397445139

/-! ## A001313.P2803432614998008164

`A057537(A118759(A118759(n)))`
-/

namespace A001313.P2803432614998008164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A118759 (A118759 n).toNat).toNat

end

end A001313.P2803432614998008164

/-! ## A001313.P15001383869243543724

`A057537(A053186(∑[A005843(n)]))`
-/

namespace A001313.P15001383869243543724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A053186 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A001313.P15001383869243543724

/-! ## A001313.P3529854154733478165

`A057537(n)+A055671(A027691(n))`
-/

namespace A001313.P3529854154733478165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 n + A055671 (A027691 n).toNat

end

end A001313.P3529854154733478165

/-!
# A001314: Number of (unordered) ways of making change for n cents using coins of 2, 5 (two kinds), 10, 20, 50 cents.

The programs for A001314, there is no canonical definition to state claims against.
-/

/-! ## A001314.P10979722520424070387

`A283431(∑[(-1)^(n%5)]^3)`
-/

namespace A001314.P10979722520424070387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3).toNat

end

end A001314.P10979722520424070387

/-! ## A001314.P10138812968034026665

`A257564(A194509(n+1)^3)`
-/

namespace A001314.P10138812968034026665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A194509 (n + 1) ^ 3).toNat

end

end A001314.P10138812968034026665

/-! ## A001314.P9764799656722362392

`A283431(A194509(n+1)^3)`
-/

namespace A001314.P9764799656722362392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A194509 (n + 1) ^ 3).toNat

end

end A001314.P9764799656722362392

/-! ## A001314.P11283518047166597350

`A255270(A194509(n+1)^6)`
-/

namespace A001314.P11283518047166597350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A194509 (n + 1) ^ 6).toNat

end

end A001314.P11283518047166597350

/-! ## A001314.P18343106438333109643

`A244154(A000225(n))%A030307(2*(n+1))`
-/

namespace A001314.P18343106438333109643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244154 (A000225 n).toNat) (A030307 (2 * (n + 1)))

end

end A001314.P18343106438333109643

/-!
# A001315: a(n) = Sum_{k=0..n} 2^binomial(n,k).

The programs for A001315, there is no canonical definition to state claims against.
-/

/-! ## A001315.P4325016814637124898

`A302546(n)+2`
-/

namespace A001315.P4325016814637124898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302546 n + 2

end

end A001315.P4325016814637124898

/-! ## A001315.P5525058501367567895

`A169974(n)+n`
-/

namespace A001315.P5525058501367567895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169974 n + (n : ℤ)

end

end A001315.P5525058501367567895

/-! ## A001315.P5780049294404731433

`A306020(n)+1+n`
-/

namespace A001315.P5780049294404731433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306020 n + 1 + (n : ℤ)

end

end A001315.P5780049294404731433

/-! ## A001315.P17483826082492310814

`A306020(n)+A005496(n)`
-/

namespace A001315.P17483826082492310814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306020 n + A005496 n

end

end A001315.P17483826082492310814

/-! ## A001315.P11806062649752230297

`A348553(n)+A306020(n)`
-/

namespace A001315.P11806062649752230297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n + A306020 n

end

end A001315.P11806062649752230297

/-!
# A001316: Gould's sequence: a(n) = Sum_{k=0..n} (binomial(n,k) mod 2); number of odd entries in row n of Pascal's triangle (A007318); a(n) = 2^A000120(n).

The programs for A001316, the canonical program `A001316.P6850078358198232129` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001316 has offset 0).

The definition of A001316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001316.P5665181392561187663

`A038573(n)+1`
-/

namespace A001316.P5665181392561187663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n + 1

end

end A001316.P5665181392561187663

namespace A001316

/-- `A038573(n)+1` -/
def P5665181392561187663.Spec : Prop :=
  ∀ n, P5665181392561187663.a n = A001316 n

end A001316

/-! ## A001316.P6850078358198232129

`2^A000120(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001316

/-- `2^A000120(n)` -/
def P6850078358198232129.Spec : Prop :=
  ∀ n, P6850078358198232129.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P16212271356991730472

`2*a(n-1)/A006519(n)` with `a(0)=1`
-/

namespace A001316.P16212271356991730472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) / (A006519 n : ℚ)

end

end A001316.P16212271356991730472

namespace A001316

/-- `2*a(n-1)/A006519(n)` -/
def P16212271356991730472.Spec : Prop :=
  ∀ n, P16212271356991730472.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P3809780603310814434

`A061142(A005940(1+n))`
-/

namespace A001316.P3809780603310814434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A005940 (1 + n)).toNat

end

end A001316.P3809780603310814434

namespace A001316

/-- `A061142(A005940(1+n))` -/
def P3809780603310814434.Spec : Prop :=
  ∀ n, P3809780603310814434.a n = A001316 n

end A001316

/-! ## A001316.P5155400340385219618

`lcm(n!, 2^n)/n!`
-/

namespace A001316.P5155400340385219618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (Nat.factorial n) (2 ^ n) : ℚ) / (Nat.factorial n : ℚ)

end

end A001316.P5155400340385219618

namespace A001316

/-- `lcm(n!, 2^n)/n!` -/
def P5155400340385219618.Spec : Prop :=
  ∀ n, P5155400340385219618.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P13907985190481310932

`A000079(n)*A049606(n)/A000142(n)`
-/

namespace A001316.P13907985190481310932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A049606 n : ℚ) / (A000142 n : ℚ)

end

end A001316.P13907985190481310932

namespace A001316

/-- `A000079(n)*A049606(n)/A000142(n)` -/
def P13907985190481310932.Spec : Prop :=
  ∀ n, P13907985190481310932.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P13980080420821198217

`2*a(and(n, n-1))` with `a(0)=1`
-/

namespace A001316.P13980080420821198217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A001316.P13980080420821198217

namespace A001316

/-- `2*a(and(n, n-1))` -/
def P13980080420821198217.Spec : Prop :=
  ∀ n, (P13980080420821198217.a n : ℤ) = A001316 n

end A001316

/-! ## A001316.P3571631172257337661

`2*lcm(n, a(n-1))/n` with `a(0)=1`
-/

namespace A001316.P3571631172257337661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ))

end

end A001316.P3571631172257337661

namespace A001316

/-- `2*lcm(n, a(n-1))/n` -/
def P3571631172257337661.Spec : Prop :=
  ∀ n, P3571631172257337661.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P4452704933114191816

`(n%2+1)*a(floor(n/2))` with `a(0)=1`
-/

namespace A001316.P4452704933114191816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n % 2 + 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A001316.P4452704933114191816

namespace A001316

/-- `(n%2+1)*a(floor(n/2))` -/
def P4452704933114191816.Spec : Prop :=
  ∀ n, (P4452704933114191816.a n : ℤ) = A001316 n

end A001316

/-! ## A001316.P11005610734040443763

`gcd(2, n+1)*a(floor(n/2))` with `a(0)=1`
-/

namespace A001316.P11005610734040443763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 (n + 1) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A001316.P11005610734040443763

namespace A001316

/-- `gcd(2, n+1)*a(floor(n/2))` -/
def P11005610734040443763.Spec : Prop :=
  ∀ n, (P11005610734040443763.a n : ℤ) = A001316 n

end A001316

/-! ## A001316.P4193058430025583863

`2*a(n-gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A001316.P4193058430025583863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - Nat.gcd n (a (n - 1)))

end

end A001316.P4193058430025583863

namespace A001316

/-- `2*a(n-gcd(n, a(n-1)))` -/
def P4193058430025583863.Spec : Prop :=
  ∀ n, (P4193058430025583863.a n : ℤ) = A001316 n

end A001316

/-! ## A001316.P6676596586394059581

`(a(n-1)+floor(a(n-1)))/gcd(a(n-1)+n, floor(a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001316.P6676596586394059581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (⌊a (n - 1)⌋ : ℚ)) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1) + (n : ℚ))) ⌊a (n - 1)⌋ : ℚ)

end

end A001316.P6676596586394059581

namespace A001316

/-- `(a(n-1)+floor(a(n-1)))/gcd(a(n-1)+n, floor(a(n-1)))` -/
def P6676596586394059581.Spec : Prop :=
  ∀ n, P6676596586394059581.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P4877857914078792834

`sqrt(A102376(n))`
-/

namespace A001316.P4877857914078792834
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ)

end

end A001316.P4877857914078792834

namespace A001316

/-- `sqrt(A102376(n))` -/
def P4877857914078792834.Spec : Prop :=
  ∀ n, P4877857914078792834.a n = (A001316 n : ℝ)

end A001316

/-! ## A001316.P18144409138810503838

`Δ[A006046(n)]`
-/

namespace A001316.P18144409138810503838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001316.P18144409138810503838

namespace A001316

/-- `Δ[A006046(n)]` -/
def P18144409138810503838.Spec : Prop :=
  ∀ n, P18144409138810503838.a n = A001316 n

end A001316

/-! ## A001316.P3015799410553833034

`A060632(2*n)`
-/

namespace A001316.P3015799410553833034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n)

end

end A001316.P3015799410553833034

namespace A001316

/-- `A060632(2*n)` -/
def P3015799410553833034.Spec : Prop :=
  ∀ n, P3015799410553833034.a n = A001316 n

end A001316

/-! ## A001316.P14153930658750887794

`A117973(n)/2`
-/

namespace A001316.P14153930658750887794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117973 n : ℚ) / 2

end

end A001316.P14153930658750887794

namespace A001316

/-- `A117973(n)/2` -/
def P14153930658750887794.Spec : Prop :=
  ∀ n, P14153930658750887794.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P10611252591196225705

`A160713(n)/3`
-/

namespace A001316.P10611252591196225705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160713 n : ℚ) / 3

end

end A001316.P10611252591196225705

namespace A001316

/-- `A160713(n)/3` -/
def P10611252591196225705.Spec : Prop :=
  ∀ n, P10611252591196225705.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P2462297287162140116

`A256257(n)/6`
-/

namespace A001316.P2462297287162140116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / 6

end

end A001316.P2462297287162140116

namespace A001316

/-- `A256257(n)/6` -/
def P2462297287162140116.Spec : Prop :=
  ∀ n, P2462297287162140116.a n = (A001316 n : ℚ)

end A001316

/-! ## A001316.P12873005705592310127

`sqrt(Δ[A116520(n)])`
-/

namespace A001316.P12873005705592310127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ)

end

end A001316.P12873005705592310127

namespace A001316

/-- `sqrt(Δ[A116520(n)])` -/
def P12873005705592310127.Spec : Prop :=
  ∀ n, P12873005705592310127.a n = (A001316 n : ℝ)

end A001316

/-! ## A001316.P7297455176809047652

`2^∑[A088705(n)]`
-/

namespace A001316.P7297455176809047652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A001316.P7297455176809047652

namespace A001316

/-- `2^∑[A088705(n)]` -/
def P7297455176809047652.Spec : Prop :=
  ∀ n, P7297455176809047652.a n = (A001316 n : ℚ)

end A001316

/-!
# A001317: Sierpiński's triangle (Pascal's triangle mod 2) converted to decimal.

The programs for A001317, the canonical program `A001317.P8261653114070389448` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001317 has offset 0).

The definition of A001317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001317.P12326633988479653845

`A000225(n+1)-A219843(n)`
-/

namespace A001317.P12326633988479653845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A219843 n

end

end A001317.P12326633988479653845

namespace A001317

/-- `A000225(n+1)-A219843(n)` -/
def P12326633988479653845.Spec : Prop :=
  ∀ n, P12326633988479653845.a n = A001317 n

theorem P12326633988479653845.correct : P12326633988479653845.Spec := by
  intro n
  simp only [A001317, Nat.add_sub_cancel, A001317.P12326633988479653845.a, A001317.P8261653114070389448.a, A000225, A000225.P6535533121115206393.a, A048724, A048724.P638821554898421701.a, A219843, A219843.P18379057056590791838.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001317

/-! ## A001317.P8261653114070389448

`A048724(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001317

/-- `A048724(a(n-1))` -/
def P8261653114070389448.Spec : Prop :=
  ∀ n, P8261653114070389448.a n = A001317 n

theorem P8261653114070389448.correct : P8261653114070389448.Spec := by
  intro n
  simp only [A001317]

end A001317

/-! ## A001317.P16711180703122904279

`A193231(A000079(n))`
-/

namespace A001317.P16711180703122904279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A000079 n).toNat

end

end A001317.P16711180703122904279

namespace A001317

/-- `A193231(A000079(n))` -/
def P16711180703122904279.Spec : Prop :=
  ∀ n, P16711180703122904279.a n = A001317 n

end A001317

/-! ## A001317.P2346812354545501786

`a(n-1)+2*a(and(n, n-1))` with `a(0)=1`
-/

namespace A001317.P2346812354545501786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A001317.P2346812354545501786

namespace A001317

/-- `a(n-1)+2*a(and(n, n-1))` -/
def P2346812354545501786.Spec : Prop :=
  ∀ n, (P2346812354545501786.a n : ℤ) = A001317 n

end A001317

/-! ## A001317.P12019410397750084878

`record[A133179(n)]`
-/

namespace A001317.P12019410397750084878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001317.P12019410397750084878

namespace A001317

/-- `record[A133179(n)]` -/
def P12019410397750084878.Spec : Prop :=
  ∀ n, P12019410397750084878.a n = A001317 n

end A001317

/-! ## A001317.P9426699346580270047

`A087745(2*n)`
-/

namespace A001317.P9426699346580270047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (2 * n)

end

end A001317.P9426699346580270047

namespace A001317

/-- `A087745(2*n)` -/
def P9426699346580270047.Spec : Prop :=
  ∀ n, P9426699346580270047.a n = A001317 n

end A001317

/-! ## A001317.P14167550622497388814

`record[A366264(n+2)]`
-/

namespace A001317.P14167550622497388814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001317.P14167550622497388814

namespace A001317

/-- `record[A366264(n+2)]` -/
def P14167550622497388814.Spec : Prop :=
  ∀ n, P14167550622497388814.a n = A001317 n

end A001317

/-! ## A001317.P3908514442175930541

`A133179(A206332(n+1))`
-/

namespace A001317.P3908514442175930541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A206332 (n + 1)).toNat

end

end A001317.P3908514442175930541

namespace A001317

/-- `A133179(A206332(n+1))` -/
def P3908514442175930541.Spec : Prop :=
  ∀ n, P3908514442175930541.a n = A001317 n

end A001317

/-! ## A001317.P5725023813470802561

`A133179(A004760(n+2))`
-/

namespace A001317.P5725023813470802561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A004760 (n + 2)).toNat

end

end A001317.P5725023813470802561

namespace A001317

/-- `A133179(A004760(n+2))` -/
def P5725023813470802561.Spec : Prop :=
  ∀ n, P5725023813470802561.a n = A001317 n

end A001317

/-! ## A001317.P736507322826464365

`A133179(A004755(n+1)-1)`
-/

namespace A001317.P736507322826464365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A004755 (n + 1) - 1).toNat

end

end A001317.P736507322826464365

namespace A001317

/-- `A133179(A004755(n+1)-1)` -/
def P736507322826464365.Spec : Prop :=
  ∀ n, P736507322826464365.a n = A001317 n

end A001317

/-! ## A001317.P7430774380015203698

`A366264(A109763(2*n+1))`
-/

namespace A001317.P7430774380015203698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366264 (A109763 (2 * n + 1)).toNat

end

end A001317.P7430774380015203698

namespace A001317

/-- `A366264(A109763(2*n+1))` -/
def P7430774380015203698.Spec : Prop :=
  ∀ n, P7430774380015203698.a n = A001317 n

end A001317

/-! ## A001317.P2674640910052367816

`A133179(A171757(n+1)-n)`
-/

namespace A001317.P2674640910052367816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A171757 (n + 1) - (n : ℤ)).toNat

end

end A001317.P2674640910052367816

namespace A001317

/-- `A133179(A171757(n+1)-n)` -/
def P2674640910052367816.Spec : Prop :=
  ∀ n, P2674640910052367816.a n = A001317 n

end A001317

/-! ## A001317.P16801391932194592305

`A133179((A346304(n+1)-1)/2)`
-/

namespace A001317.P16801391932194592305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (SequenceMachineLib.roundAway ((A346304 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A001317.P16801391932194592305

namespace A001317

/-- `A133179((A346304(n+1)-1)/2)` -/
def P16801391932194592305.Spec : Prop :=
  ∀ n, P16801391932194592305.a n = A001317 n

end A001317

/-! ## A001317.P17668294307083616318

`xor(2*a(n-1), a(n-1))` with `a(0)=1`
-/

namespace A001317.P17668294307083616318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (a (n - 1))

end

end A001317.P17668294307083616318

namespace A001317

/-- `xor(2*a(n-1), a(n-1))` -/
def P17668294307083616318.Spec : Prop :=
  ∀ n, (P17668294307083616318.a n : ℤ) = A001317 n

end A001317

/-! ## A001317.P2625795711575655898

`xor(lcm(2, a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A001317.P2625795711575655898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.lcm 2 (a (n - 1))) (a (n - 1))

end

end A001317.P2625795711575655898

namespace A001317

/-- `xor(lcm(2, a(n-1)), a(n-1))` -/
def P2625795711575655898.Spec : Prop :=
  ∀ n, (P2625795711575655898.a n : ℤ) = A001317 n

end A001317

/-! ## A001317.P2486506147461375041

`xor(a(n-1)/log2(sqrt(2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A001317.P2486506147461375041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ)))) (a (n - 1))

end

end A001317.P2486506147461375041

namespace A001317

/-- `xor(a(n-1)/log2(sqrt(2)), a(n-1))` -/
def P2486506147461375041.Spec : Prop :=
  ∀ n, P2486506147461375041.a n = A001317 n

end A001317

/-! ## A001317.P16070361831733316107

`xor(floor(a(n-1)+a(n-1)+2/3), a(n-1))` with `a(0)=1`
-/

namespace A001317.P16070361831733316107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) + (2 : ℚ) / 3)⌋ (a (n - 1))

end

end A001317.P16070361831733316107

namespace A001317

/-- `xor(floor(a(n-1)+a(n-1)+2/3), a(n-1))` -/
def P16070361831733316107.Spec : Prop :=
  ∀ n, P16070361831733316107.a n = A001317 n

end A001317

/-! ## A001317.P3527237983938503479

`xor(a(n-1)+(a(n-1)^(1/3))^3, a(n-1))` with `a(0)=1`
-/

namespace A001317.P3527237983938503479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + ((a (n - 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)) ^ 3)) (a (n - 1))

end

end A001317.P3527237983938503479

namespace A001317

/-- `xor(a(n-1)+(a(n-1)^(1/3))^3, a(n-1))` -/
def P3527237983938503479.Spec : Prop :=
  ∀ n, P3527237983938503479.a n = A001317 n

end A001317

/-! ## A001317.P1903382873244706550

`A126646(n)-A219843(n)`
-/

namespace A001317.P1903382873244706550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A219843 n

end

end A001317.P1903382873244706550

namespace A001317

/-- `A126646(n)-A219843(n)` -/
def P1903382873244706550.Spec : Prop :=
  ∀ n, P1903382873244706550.a n = A001317 n

theorem P1903382873244706550.correct : P1903382873244706550.Spec := by
  intro n
  simp only [A001317, Nat.add_sub_cancel, A001317.P1903382873244706550.a, A001317.P8261653114070389448.a, A048724, A048724.P638821554898421701.a, A126646, A126646.P3746310572697910447.a, A219843, A219843.P18379057056590791838.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001317

/-! ## A001317.P13894179976503433745

`∪[A038183(n), A038192(n)]`
-/

namespace A001317.P13894179976503433745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038192 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001317.P13894179976503433745

namespace A001317

/-- `∪[A038183(n), A038192(n)]` -/
def P13894179976503433745.Spec : Prop :=
  ∀ n, (P13894179976503433745.a n : ℤ) = A001317 n

end A001317

/-!
# A001318: Generalized pentagonal numbers: m*(3*m - 1)/2, m = 0, +-1, +-2, +-3, ....

The programs for A001318, the canonical program `A001318.P1703379608458692801` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001318 has offset 0).

The definition of A001318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001318.P1703379608458692801

`2*a(n-2)-a(n-4)+3` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001318

/-- `2*a(n-2)-a(n-4)+3` -/
def P1703379608458692801.Spec : Prop :=
  ∀ n, P1703379608458692801.a n = A001318 n

theorem P1703379608458692801.correct : P1703379608458692801.Spec := by
  intro n
  simp only [A001318]

end A001318

/-! ## A001318.P2510829504364555615

`1/2*ceil(n/2)*ceil((3*n+1)/2)`
-/

namespace A001318.P2510829504364555615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (⌈(n : ℚ) / 2⌉ : ℚ) * (⌈(3 * n + 1 : ℚ) / 2⌉ : ℚ)

end

end A001318.P2510829504364555615

namespace A001318

/-- `1/2*ceil(n/2)*ceil((3*n+1)/2)` -/
def P2510829504364555615.Spec : Prop :=
  ∀ n, P2510829504364555615.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P13749032207061538387

`(3*n²+2*n+n%2*(2*n+1))/8`
-/

namespace A001318.P13749032207061538387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 + 2 * n + n % 2 * (2 * n + 1) : ℕ) : ℚ) / 8

end

end A001318.P13749032207061538387

namespace A001318

/-- `(3*n²+2*n+n%2*(2*n+1))/8` -/
def P13749032207061538387.Spec : Prop :=
  ∀ n, P13749032207061538387.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P11748331210225946995

`(A007310(n+1)²-1)/24`
-/

namespace A001318.P11748331210225946995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007310 (n + 1) ^ 2 - 1 : ℚ) / 24

end

end A001318.P11748331210225946995

namespace A001318

/-- `(A007310(n+1)²-1)/24` -/
def P11748331210225946995.Spec : Prop :=
  ∀ n, P11748331210225946995.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P5989046834830626293

`A002378(n)-A085787(n)`
-/

namespace A001318.P5989046834830626293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A085787 n

end

end A001318.P5989046834830626293

namespace A001318

/-- `A002378(n)-A085787(n)` -/
def P5989046834830626293.Spec : Prop :=
  ∀ n, P5989046834830626293.a n = A001318 n

end A001318

/-! ## A001318.P107569990870540578

`(A008794(n+1)+A000217(n))/2`
-/

namespace A001318.P107569990870540578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008794 (n + 1) + A000217 n : ℚ) / 2

end

end A001318.P107569990870540578

namespace A001318

/-- `(A008794(n+1)+A000217(n))/2` -/
def P107569990870540578.Spec : Prop :=
  ∀ n, P107569990870540578.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P12595729761762056391

`∑[gcd(n, ∑[n])]`
-/

namespace A001318.P12595729761762056391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P12595729761762056391

namespace A001318

/-- `∑[gcd(n, ∑[n])]` -/
def P12595729761762056391.Spec : Prop :=
  ∀ n, (P12595729761762056391.a n : ℤ) = A001318 n

end A001318

/-! ## A001318.P3580841894720919901

`∑[lcm(2, n)/2]`
-/

namespace A001318.P3580841894720919901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P3580841894720919901

namespace A001318

/-- `∑[lcm(2, n)/2]` -/
def P3580841894720919901.Spec : Prop :=
  ∀ n, P3580841894720919901.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P15651469036672467056

`∑[n/(2-n%2)]`
-/

namespace A001318.P15651469036672467056
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P15651469036672467056

namespace A001318

/-- `∑[n/(2-n%2)]` -/
def P15651469036672467056.Spec : Prop :=
  ∀ n, P15651469036672467056.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P3621378845809565643

`∑[n/(2-and(1, n))]`
-/

namespace A001318.P3621378845809565643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P3621378845809565643

namespace A001318

/-- `∑[n/(2-and(1, n))]` -/
def P3621378845809565643.Spec : Prop :=
  ∀ n, P3621378845809565643.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P2173133874479580269

`∑[-(n/or(n, -2))]`
-/

namespace A001318.P2173133874479580269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P2173133874479580269

namespace A001318

/-- `∑[-(n/or(n, -2))]` -/
def P2173133874479580269.Spec : Prop :=
  ∀ n, P2173133874479580269.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P11115612393904773368

`∑[n/(and(1, n+1)+1)]`
-/

namespace A001318.P11115612393904773368
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land 1 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P11115612393904773368

namespace A001318

/-- `∑[n/(and(1, n+1)+1)]` -/
def P11115612393904773368.Spec : Prop :=
  ∀ n, P11115612393904773368.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P14100872396087562199

`∑[n/(or(1, n)-(n-1))]`
-/

namespace A001318.P14100872396087562199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P14100872396087562199

namespace A001318

/-- `∑[n/(or(1, n)-(n-1))]` -/
def P14100872396087562199.Spec : Prop :=
  ∀ n, P14100872396087562199.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P5055859200587426798

`∑[C(n, 2)/a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A001318.P5055859200587426798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (Nat.choose n 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P5055859200587426798

namespace A001318

/-- `∑[C(n, 2)/a(n-1)]` -/
def P5055859200587426798.Spec : Prop :=
  ∀ n, P5055859200587426798.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P9255007048760908314

`∑[n]-C(floor(n/2)+1, 2)`
-/

namespace A001318.P9255007048760908314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (⌊(n : ℚ) / 2⌋ + 1).toNat 2 : ℤ)

end

end A001318.P9255007048760908314

namespace A001318

/-- `∑[n]-C(floor(n/2)+1, 2)` -/
def P9255007048760908314.Spec : Prop :=
  ∀ n, P9255007048760908314.a n = A001318 n

end A001318

/-! ## A001318.P8372064965253713175

`C(floor(3*(n+1)/2), 2)/3`
-/

namespace A001318.P8372064965253713175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌊(3 * (n + 1) : ℚ) / 2⌋.toNat 2 : ℚ) / 3

end

end A001318.P8372064965253713175

namespace A001318

/-- `C(floor(3*(n+1)/2), 2)/3` -/
def P8372064965253713175.Spec : Prop :=
  ∀ n, P8372064965253713175.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P1325599880022387928

`a(n-1)+n/gcd(2, n²)` with `a(0)=0`
-/

namespace A001318.P1325599880022387928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ)

end

end A001318.P1325599880022387928

namespace A001318

/-- `a(n-1)+n/gcd(2, n²)` -/
def P1325599880022387928.Spec : Prop :=
  ∀ n, P1325599880022387928.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P9558953692883438415

`∑[(∑[n]-n)/a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A001318.P9558953692883438415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001318.P9558953692883438415

namespace A001318

/-- `∑[(∑[n]-n)/a(n-1)]` -/
def P9558953692883438415.Spec : Prop :=
  ∀ n, P9558953692883438415.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P13518156310864718605

`a(n-1)+lcm(4, 2*n)/4` with `a(0)=0`
-/

namespace A001318.P13518156310864718605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.lcm 4 (2 * n) : ℚ) / 4

end

end A001318.P13518156310864718605

namespace A001318

/-- `a(n-1)+lcm(4, 2*n)/4` -/
def P13518156310864718605.Spec : Prop :=
  ∀ n, P13518156310864718605.a n = (A001318 n : ℚ)

end A001318

/-! ## A001318.P5377744708593145213

`comp[3*(n+1)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001318.P5377744708593145213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 2)

end

end A001318.P5377744708593145213

namespace A001318

/-- `comp[3*(n+1)]+a(n-2)` -/
def P5377744708593145213.Spec : Prop :=
  ∀ n, (P5377744708593145213.a n : ℤ) = A001318 n

end A001318

/-!
# A001319: Number of (unordered) ways of making change for n cents using coins of 2, 5, 10, 20, 50 cents.

The programs for A001319, there is no canonical definition to state claims against.
-/

/-! ## A001319.P149822166048016087

`A000007(n)+Δ[A057537(A000194((1-n)²))]`
-/

namespace A001319.P149822166048016087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000194 ((1 - (n : ℤ)) ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A001319.P149822166048016087

/-! ## A001319.P17466519312493779541

`A001306(n+1)-Δ[A057537(A000194(n²))]`
-/

namespace A001319.P17466519312493779541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000194 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001306 (n + 1) - (f1 (n + 1) - f1 n)

end

end A001319.P17466519312493779541

/-! ## A001319.P6548964743881227589

`A001306(n+1)-Δ[A057537(n)+A000038((n+1)²)]`
-/

namespace A001319.P6548964743881227589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 n + A000038 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001306 (n + 1) - (f1 (n + 1) - f1 n)

end

end A001319.P6548964743881227589

/-! ## A001319.P13512357415197588103

`A001306(n+1)-Δ[A057537(A000122(n²+2)+n)]`
-/

namespace A001319.P13512357415197588103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057537 (A000122 (n ^ 2 + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001306 (n + 1) - (f1 (n + 1) - f1 n)

end

end A001319.P13512357415197588103

/-! ## A001319.P12731181699268619346

`A089054(A008616(n))+A057428(A073731(n))`
-/

namespace A001319.P12731181699268619346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089054 (A008616 n).toNat + A057428 (A073731 (n + 10)).toNat

end

end A001319.P12731181699268619346

/-! ## A001319.P17388106600580306538

`A089054(A008616(n))-A008836(A073731(n)²)`
-/

namespace A001319.P17388106600580306538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089054 (A008616 n).toNat - A008836 (A073731 (n + 10) ^ 2).toNat

end

end A001319.P17388106600580306538

/-! ## A001319.P2937544595373179628

`A089054(A008616(n))-A351221(A351236(n+1)²)`
-/

namespace A001319.P2937544595373179628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089054 (A008616 n).toNat - A351221 (A351236 (n + 1) ^ 2).toNat

end

end A001319.P2937544595373179628

/-! ## A001319.P14697498249586181108

`A089054(A008616(n))-A000038(A073731(n)+1)-1`
-/

namespace A001319.P14697498249586181108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089054 (A008616 n).toNat - A000038 (A073731 (n + 10) + 1).toNat - 1

end

end A001319.P14697498249586181108

/-! ## A001319.P12465272681687936480

`A089054(A008616(n))-(A004793(A073731(n)+1)%3)!`
-/

namespace A001319.P12465272681687936480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089054 (A008616 n).toNat - (Nat.factorial (Int.tmod (A004793 (A073731 (n + 10) + 1).toNat) 3).toNat : ℤ)

end

end A001319.P12465272681687936480

/-!
# A001320: Number of self-complementary Boolean functions of n variables, up to equivalence under the group (C_2)^n of all 2^n complementations of variables.

The programs for A001320, the canonical program `A001320.P4049574862866626016` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001320 has offset 1).

The definition of A001320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001320.P4049574862866626016

`2^2^n*(2^(n+1)-1)/2^(n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001320

/-- `2^2^n*(2^(n+1)-1)/2^(n+1)` -/
def P4049574862866626016.Spec : Prop :=
  ∀ n, P4049574862866626016.a n = (A001320 (n + 1) : ℚ)

end A001320

/-! ## A001320.P16076802843892610871

`A023758(A006516(n)+n+2)`
-/

namespace A001320.P16076802843892610871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (A006516 n + (n + 2 : ℤ)).toNat

end

end A001320.P16076802843892610871

namespace A001320

/-- `A023758(A006516(n)+n+2)` -/
def P16076802843892610871.Spec : Prop :=
  ∀ n, P16076802843892610871.a n = A001320 (n + 1)

end A001320

/-!
# A001326: 

The programs for A001326, there is no canonical definition to state claims against.
-/

/-! ## A001326.P16168613736714008766

`A343097(A046092(n+2))`
-/

namespace A001326.P16168613736714008766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A046092 (n + 2)).toNat

end

end A001326.P16168613736714008766

/-!
# A001329: Number of nonisomorphic groupoids with n elements.

The programs for A001329, there is no canonical definition to state claims against.
-/

/-! ## A001329.P1706001692124285648

`A079183(A028310(n))+A001425(n)`
-/

namespace A001329.P1706001692124285648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079183 (A028310 n).toNat + A001425 n

end

end A001329.P1706001692124285648

/-! ## A001329.P4939628570529489854

`A079173(A028310(n))+A027851(n)`
-/

namespace A001329.P4939628570529489854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079173 (A028310 n).toNat + A027851 n

end

end A001329.P4939628570529489854

/-! ## A001329.P5082193119950824608

`A079173(A051801(n))+A027851(n)`
-/

namespace A001329.P5082193119950824608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079173 (A051801 n).toNat + A027851 n

end

end A001329.P5082193119950824608

/-!
# A001332: a(n) = Bernoulli(2*n) * (2*n + 1)!.

The programs for A001332, there is no canonical definition to state claims against.
-/

/-! ## A001332.P6636784092748453942

`A129814(2*n)`
-/

namespace A001332.P6636784092748453942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129814 (2 * n)

end

end A001332.P6636784092748453942

/-! ## A001332.P2384496564149952850

`n!*A168136(n)`
-/

namespace A001332.P2384496564149952850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A168136 n

end

end A001332.P2384496564149952850

/-! ## A001332.P17146306555467578185

`A048998(C(Δ[n²], 2))`
-/

namespace A001332.P17146306555467578185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A001332.P17146306555467578185

/-! ## A001332.P4772238485983815360

`A048998(n*Δ[n²])`
-/

namespace A001332.P4772238485983815360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048998 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A001332.P4772238485983815360

/-! ## A001332.P15153448836904901721

`A080779(n*Δ[n²])`
-/

namespace A001332.P15153448836904901721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080779 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A001332.P15153448836904901721

/-!
# A001333: Pell-Lucas numbers: numerators of continued fraction convergents to sqrt(2).

The programs for A001333, the canonical program `A001333.P7655660048620087713` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001333 has offset 0).

The definition of A001333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001333.P7655660048620087713

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001333

/-- `2*a(n-1)+a(n-2)` -/
def P7655660048620087713.Spec : Prop :=
  ∀ n, (P7655660048620087713.a n : ℤ) = A001333 n

theorem P7655660048620087713.correct : P7655660048620087713.Spec := by
  intro n
  simp only [A001333]

end A001333

/-! ## A001333.P17384871083212477289

`a(n-1)+A052542(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A001333.P17384871083212477289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A052542 (n - 1)

end

end A001333.P17384871083212477289

namespace A001333

/-- `a(n-1)+A052542(n-1)` -/
def P17384871083212477289.Spec : Prop :=
  ∀ n, P17384871083212477289.a n = A001333 n

end A001333

/-! ## A001333.P14685023082454035077

`ogf((-1+x)/(-1+2x+x^2))`
-/

namespace A001333.P14685023082454035077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -1] n

end

end A001333.P14685023082454035077

namespace A001333

/-- `ogf((-1+x)/(-1+2x+x^2))` -/
def P14685023082454035077.Spec : Prop :=
  ∀ n, P14685023082454035077.a n = A001333 n

end A001333

/-! ## A001333.P15014418579566686840

`a(n-2)+lcm(2, a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001333.P15014418579566686840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A001333.P15014418579566686840

namespace A001333

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P15014418579566686840.Spec : Prop :=
  ∀ n, (P15014418579566686840.a n : ℤ) = A001333 n

end A001333

/-! ## A001333.P8963628109718320606

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A001333.P8963628109718320606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A001333.P8963628109718320606

namespace A001333

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P8963628109718320606.Spec : Prop :=
  ∀ n, (P8963628109718320606.a n : ℤ) = A001333 n

theorem P8963628109718320606.correct : P8963628109718320606.Spec := by
  intro n
  simp only [A001333, Nat.add_sub_cancel, A001333.P8963628109718320606.a, A001333.P7655660048620087713.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001333

/-! ## A001333.P18364903849486977208

`a(n-2)-a(n-1)/(1/2-1)` with `a(0)=1, a(1)=1`
-/

namespace A001333.P18364903849486977208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A001333.P18364903849486977208

namespace A001333

/-- `a(n-2)-a(n-1)/(1/2-1)` -/
def P18364903849486977208.Spec : Prop :=
  ∀ n, P18364903849486977208.a n = (A001333 n : ℚ)

end A001333

/-! ## A001333.P12039454707763563159

`abs(A123335(n))`
-/

namespace A001333.P12039454707763563159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n|

end

end A001333.P12039454707763563159

namespace A001333

/-- `abs(A123335(n))` -/
def P12039454707763563159.Spec : Prop :=
  ∀ n, P12039454707763563159.a n = A001333 n

end A001333

/-! ## A001333.P12412101964910402707

`A293004(n)+1`
-/

namespace A001333.P12412101964910402707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + 1

end

end A001333.P12412101964910402707

namespace A001333

/-- `A293004(n)+1` -/
def P12412101964910402707.Spec : Prop :=
  ∀ n, P12412101964910402707.a n = A001333 n

end A001333

/-! ## A001333.P12154796423386196063

`A119016(2*n)`
-/

namespace A001333.P12154796423386196063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n)

end

end A001333.P12154796423386196063

namespace A001333

/-- `A119016(2*n)` -/
def P12154796423386196063.Spec : Prop :=
  ∀ n, P12154796423386196063.a n = A001333 n

end A001333

/-! ## A001333.P2019256577140179473

`or(1, A265278(n))`
-/

namespace A001333.P2019256577140179473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265278 n)

end

end A001333.P2019256577140179473

namespace A001333

/-- `or(1, A265278(n))` -/
def P2019256577140179473.Spec : Prop :=
  ∀ n, P2019256577140179473.a n = A001333 n

end A001333

/-! ## A001333.P16439107436230892951

`A002965(Δ[n²])`
-/

namespace A001333.P16439107436230892951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001333.P16439107436230892951

namespace A001333

/-- `A002965(Δ[n²])` -/
def P16439107436230892951.Spec : Prop :=
  ∀ n, P16439107436230892951.a n = A001333 n

end A001333

/-! ## A001333.P516126885710956852

`2*A171842(n)-1`
-/

namespace A001333.P516126885710956852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171842 n - 1

end

end A001333.P516126885710956852

namespace A001333

/-- `2*A171842(n)-1` -/
def P516126885710956852.Spec : Prop :=
  ∀ n, P516126885710956852.a n = A001333 n

end A001333

/-! ## A001333.P5321601976421955896

`A227972(3*n+1)`
-/

namespace A001333.P5321601976421955896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227972 (3 * n + 1)

end

end A001333.P5321601976421955896

namespace A001333

/-- `A227972(3*n+1)` -/
def P5321601976421955896.Spec : Prop :=
  ∀ n, P5321601976421955896.a n = A001333 n

end A001333

/-! ## A001333.P7346808035470794866

`A249576(3*n+1)`
-/

namespace A001333.P7346808035470794866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n + 1)

end

end A001333.P7346808035470794866

namespace A001333

/-- `A249576(3*n+1)` -/
def P7346808035470794866.Spec : Prop :=
  ∀ n, P7346808035470794866.a n = A001333 n

end A001333

/-! ## A001333.P12340003821202730211

`abs(Δ[A215936(n+1)])`
-/

namespace A001333.P12340003821202730211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001333.P12340003821202730211

namespace A001333

/-- `abs(Δ[A215936(n+1)])` -/
def P12340003821202730211.Spec : Prop :=
  ∀ n, P12340003821202730211.a n = A001333 n

end A001333

/-! ## A001333.P12163231971337156219

`or(1, A002965(2*n+1))`
-/

namespace A001333.P12163231971337156219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002965 (2 * n + 1))

end

end A001333.P12163231971337156219

namespace A001333

/-- `or(1, A002965(2*n+1))` -/
def P12163231971337156219.Spec : Prop :=
  ∀ n, P12163231971337156219.a n = A001333 n

end A001333

/-! ## A001333.P9504460926088569373

`A078057((n-1)%(n+1))`
-/

namespace A001333.P9504460926088569373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A001333.P9504460926088569373

namespace A001333

/-- `A078057((n-1)%(n+1))` -/
def P9504460926088569373.Spec : Prop :=
  ∀ n, P9504460926088569373.a n = A001333 n

end A001333

/-! ## A001333.P13389924293331408055

`A163271(n)+a(n-1)` with `a(0)=1`
-/

namespace A001333.P13389924293331408055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163271 n + a (n - 1)

end

end A001333.P13389924293331408055

namespace A001333

/-- `A163271(n)+a(n-1)` -/
def P13389924293331408055.Spec : Prop :=
  ∀ n, P13389924293331408055.a n = A001333 n

end A001333

/-! ## A001333.P10278569979651369335

`A082766(A004277(n))`
-/

namespace A001333.P10278569979651369335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (A004277 n).toNat

end

end A001333.P10278569979651369335

namespace A001333

/-- `A082766(A004277(n))` -/
def P10278569979651369335.Spec : Prop :=
  ∀ n, P10278569979651369335.a n = A001333 n

end A001333

/-! ## A001333.P4151945705543789665

`A116560(A016921(n))`
-/

namespace A001333.P4151945705543789665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A016921 n).toNat

end

end A001333.P4151945705543789665

namespace A001333

/-- `A116560(A016921(n))` -/
def P4151945705543789665.Spec : Prop :=
  ∀ n, P4151945705543789665.a n = A001333 n

end A001333

/-!
# A001334: Number of n-step self-avoiding walks on hexagonal [ =triangular ] lattice.

The programs for A001334, there is no canonical definition to state claims against.
-/

/-! ## A001334.P7508347646326643863

`A177238(n)-A001411(n)`
-/

namespace A001334.P7508347646326643863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177238 n - A001411 n

end

end A001334.P7508347646326643863

/-! ## A001334.P4547613487853691710

`A177238(n)-A046661(A028310(n))*A123932(n)`
-/

namespace A001334.P4547613487853691710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177238 n - A046661 (A028310 n).toNat * A123932 n

end

end A001334.P4547613487853691710

/-! ## A001334.P2898855140378914234

`A177238(n)-A280560(n)²*A046661(A028310(n))`
-/

namespace A001334.P2898855140378914234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177238 n - A280560 n ^ 2 * A046661 (A028310 n).toNat

end

end A001334.P2898855140378914234

/-! ## A001334.P4037576644191405989

`A177238(n)-A046661(A123108(2*n))*A123932(n)`
-/

namespace A001334.P4037576644191405989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177238 n - A046661 (A123108 (2 * n)).toNat * A123932 n

end

end A001334.P4037576644191405989

/-!
# A001335: Number of n-step polygons on hexagonal lattice.

The programs for A001335, there is no canonical definition to state claims against.
-/

/-! ## A001335.P15858020610018508173

`A328081(round(sqrt(n)))*A337638(n)`
-/

namespace A001335.P15858020610018508173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328081 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat * A337638 n

end

end A001335.P15858020610018508173

/-! ## A001335.P4108010911959217784

`A178957(n)*A190427(A001692(n))`
-/

namespace A001335.P4108010911959217784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178957 n * A190427 (A001692 n).toNat

end

end A001335.P4108010911959217784

/-! ## A001335.P17652206789319104270

`A099476(n)%A059362(A088715(n))`
-/

namespace A001335.P17652206789319104270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099476 n) (A059362 (A088715 n).toNat)

end

end A001335.P17652206789319104270

/-!
# A001336: Number of n-step self-avoiding walks on f.c.c. lattice.

The programs for A001336, there is no canonical definition to state claims against.
-/

/-! ## A001336.P1606486631599052227

`A108248(n)*A213453(n+1)`
-/

namespace A001336.P1606486631599052227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108248 n * A213453 (n + 1)

end

end A001336.P1606486631599052227

/-! ## A001336.P8755602168369728344

`lcm(A123932(n), A213453(n+1))`
-/

namespace A001336.P8755602168369728344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123932 n) (A213453 (n + 1))

end

end A001336.P8755602168369728344

/-! ## A001336.P11069585184797606087

`A006530(A000079(n))*A213453(n+1)`
-/

namespace A001336.P11069585184797606087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000079 n).toNat * A213453 (n + 1)

end

end A001336.P11069585184797606087

/-!
# A001338: -1 + Sum (k-1)! C(n,k), k = 1..n for n > 0, a(0) = 1.

The programs for A001338, there is no canonical definition to state claims against.
-/

/-! ## A001338.P12016926509888332792

`abs(∑[(n-1)*a(n-1)+1])` with `a(0)=-1`
-/

namespace A001338.P12016926509888332792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A001338.P12016926509888332792

/-! ## A001338.P13351126670505924131

`abs(∑[1-(1-n)*a(n-1)])` with `a(0)=-1`
-/

namespace A001338.P13351126670505924131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  1 - (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A001338.P13351126670505924131

/-! ## A001338.P1060114618589284651

`∑[(n-1)*a(n-1)+1]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A001338.P1060114618589284651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001338.P1060114618589284651

/-! ## A001338.P10936507843407210486

`∑[1-(1-n)*a(n-1)]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A001338.P10936507843407210486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  1 - (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001338.P10936507843407210486

/-! ## A001338.P13499189165878276756

`∑[lcm(1-a(n-1), n-1)+n]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A001338.P13499189165878276756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  (Int.lcm (1 - f1 (n - 1)) ((n : ℤ) - 1) + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001338.P13499189165878276756

/-! ## A001338.P14985444626534321744

`n*a(n-1)-(n-1)*a(n-2)+1` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A001338.P14985444626534321744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  (n : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2) + 1

end

end A001338.P14985444626534321744

/-! ## A001338.P16592938751222783982

`1-(n*(a(n-2)-a(n-1))-a(n-2))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A001338.P16592938751222783982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  1 - ((n : ℤ) * (a (n - 2) - a (n - 1)) - a (n - 2))

end

end A001338.P16592938751222783982

/-! ## A001338.P12710275451894557524

`abs(1-A002104(n))`
-/

namespace A001338.P12710275451894557524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A002104 n|

end

end A001338.P12710275451894557524

/-! ## A001338.P16599981461530455828

`A134824(n+1)+A002104(n)`
-/

namespace A001338.P16599981461530455828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 1) + A002104 n

end

end A001338.P16599981461530455828

/-! ## A001338.P8927256186490998451

`A000038(n)+A002104(n)-1`
-/

namespace A001338.P8927256186490998451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A002104 n - 1)

end

end A001338.P8927256186490998451

/-!
# A001339: a(n) = Sum_{k=0..n} (k+1)! binomial(n,k).

The programs for A001339, there is no canonical definition to state claims against.
-/

/-! ## A001339.P17415424981437092374

`floor(Δ[e*n!])+1`
-/

namespace A001339.P17415424981437092374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋ + 1

end

end A001339.P17415424981437092374

/-! ## A001339.P15598329389998924285

`or(1, floor(Δ[e*n!]))`
-/

namespace A001339.P15598329389998924285
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊f1 (n + 1) - f1 n⌋

end

end A001339.P15598329389998924285

/-! ## A001339.P16066998650039989252

`xor(1, floor(Δ[e*n!]))`
-/

namespace A001339.P16066998650039989252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊f1 (n + 1) - f1 n⌋

end

end A001339.P16066998650039989252

/-! ## A001339.P9257025644854855637

`n!*∑[∑[1/n!]]`
-/

namespace A001339.P9257025644854855637
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001339.P9257025644854855637

/-! ## A001339.P2601778093543304499

`Δ[n*(a(n-1)+1)]` with `a(0)=0`
-/

namespace A001339.P2601778093543304499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001339.P2601778093543304499

/-! ## A001339.P16959465732753271703

`Δ[lcm(n, a(n-1))+n]` with `a(0)=0`
-/

namespace A001339.P16959465732753271703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lcm n (f1 (n - 1)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A001339.P16959465732753271703

/-! ## A001339.P3719685267253596416

`abs(Δ[n*(a(n-1)-1)])` with `a(0)=0`
-/

namespace A001339.P3719685267253596416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001339.P3719685267253596416

/-! ## A001339.P1473343430044470289

`-Δ[n*(a(n-1)-1)]` with `a(0)=0`
-/

namespace A001339.P1473343430044470289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A001339.P1473343430044470289

/-! ## A001339.P12287086805317289451

`Δ[n*a(n-1)-(n-2)]` with `a(0)=2`
-/

namespace A001339.P12287086805317289451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℤ) * f1 (n - 1) - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001339.P12287086805317289451

/-! ## A001339.P6491591647506112139

`∏[n+2-(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A001339.P6491591647506112139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 2 : ℚ) - ((n : ℤ) - 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001339.P6491591647506112139

/-!
# A001340: E.g.f.: 2*exp(x)/(1-x)^3.

The programs for A001340, the canonical program `A001340.P16599940652130265904` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001340 has offset 0).

The definition of A001340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001340.P16599940652130265904

`2*A082030(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001340

/-- `2*A082030(n)` -/
def P16599940652130265904.Spec : Prop :=
  ∀ n, P16599940652130265904.a n = A001340 n

theorem P16599940652130265904.correct : P16599940652130265904.Spec := by
  intro n
  simp only [A001340]

end A001340

/-! ## A001340.P15863139468998980265

`Δ[Δ[n*(a(n-1)+1)]]` with `a(0)=0`
-/

namespace A001340.P15863139468998980265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  n * (f2 (n - 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P15863139468998980265

namespace A001340

/-- `Δ[Δ[n*(a(n-1)+1)]]` -/
def P15863139468998980265.Spec : Prop :=
  ∀ n, P15863139468998980265.a n = A001340 n

end A001340

/-! ## A001340.P15304923227075666806

`Δ[Δ[lcm(n, a(n-1))+n]]` with `a(0)=0`
-/

namespace A001340.P15304923227075666806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.lcm n (f2 (n - 1)) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P15304923227075666806

namespace A001340

/-- `Δ[Δ[lcm(n, a(n-1))+n]]` -/
def P15304923227075666806.Spec : Prop :=
  ∀ n, P15304923227075666806.a n = A001340 n

end A001340

/-! ## A001340.P12718534285706156792

`Δ[Δ[n*a(n-1)-(n-2)]]` with `a(0)=2`
-/

namespace A001340.P12718534285706156792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) * f2 (n - 1) - ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P12718534285706156792

namespace A001340

/-- `Δ[Δ[n*a(n-1)-(n-2)]]` -/
def P12718534285706156792.Spec : Prop :=
  ∀ n, P12718534285706156792.a n = A001340 n

end A001340

/-! ## A001340.P9848513278385454634

`∏[n+3-(n-1)/a(n-1)]` with `a(0)=2`
-/

namespace A001340.P9848513278385454634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 3 : ℚ) - ((n : ℤ) - 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001340.P9848513278385454634

namespace A001340

/-- `∏[n+3-(n-1)/a(n-1)]` -/
def P9848513278385454634.Spec : Prop :=
  ∀ n, P9848513278385454634.a n = (A001340 n : ℚ)

end A001340

/-! ## A001340.P7260648962148118420

`floor((n+1)*(n+1)!*e)-floor(e*n*n!)`
-/

namespace A001340.P7260648962148118420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * Nat.factorial (n + 1) : ℝ) * Real.exp 1⌋ - ⌊Real.exp 1 * (n * Nat.factorial n : ℝ)⌋

end

end A001340.P7260648962148118420

namespace A001340

/-- `floor((n+1)*(n+1)!*e)-floor(e*n*n!)` -/
def P7260648962148118420.Spec : Prop :=
  ∀ n, P7260648962148118420.a n = A001340 n

end A001340

/-! ## A001340.P4549425891461797160

`Δ[A001339(n)]`
-/

namespace A001340.P4549425891461797160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P4549425891461797160

namespace A001340

/-- `Δ[A001339(n)]` -/
def P4549425891461797160.Spec : Prop :=
  ∀ n, P4549425891461797160.a n = A001340 n

end A001340

/-! ## A001340.P17388840361333152582

`Δ[Δ[A000522(n)]]`
-/

namespace A001340.P17388840361333152582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P17388840361333152582

namespace A001340

/-- `Δ[Δ[A000522(n)]]` -/
def P17388840361333152582.Spec : Prop :=
  ∀ n, P17388840361333152582.a n = A001340 n

end A001340

/-! ## A001340.P11729361581826485971

`Δ[Δ[A007526(n)]]`
-/

namespace A001340.P11729361581826485971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P11729361581826485971

namespace A001340

/-- `Δ[Δ[A007526(n)]]` -/
def P11729361581826485971.Spec : Prop :=
  ∀ n, P11729361581826485971.a n = A001340 n

end A001340

/-! ## A001340.P2151295971051397047

`Δ[Δ[A038154(n)]]`
-/

namespace A001340.P2151295971051397047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001340.P2151295971051397047

namespace A001340

/-- `Δ[Δ[A038154(n)]]` -/
def P2151295971051397047.Spec : Prop :=
  ∀ n, P2151295971051397047.a n = A001340 n

end A001340

/-!
# A001341: Expansion of e.g.f. 6*exp(x)/(1-x)^4.

The programs for A001341, the canonical program `A001341.P10495814968844526569` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001341 has offset 0).

The definition of A001341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001341.P10495814968844526569

`ceil(n!*(n^3+3*n²+5*n+2)*e)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001341

/-- `ceil(n!*(n^3+3*n²+5*n+2)*e)` -/
def P10495814968844526569.Spec : Prop :=
  ∀ n, P10495814968844526569.a n = A001341 n

theorem P10495814968844526569.correct : P10495814968844526569.Spec := by
  intro n
  simp only [A001341]

end A001341

/-! ## A001341.P10459431464872568827

`6*A095000(n)`
-/

namespace A001341.P10459431464872568827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A095000 n

end

end A001341.P10459431464872568827

namespace A001341

/-- `6*A095000(n)` -/
def P10459431464872568827.Spec : Prop :=
  ∀ n, P10459431464872568827.a n = A001341 n

end A001341

/-! ## A001341.P6097939090095847595

`Δ[Δ[floor(Δ[e*n!])]]`
-/

namespace A001341.P6097939090095847595
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f3 (n + 1) - f3 n⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P6097939090095847595

namespace A001341

/-- `Δ[Δ[floor(Δ[e*n!])]]` -/
def P6097939090095847595.Spec : Prop :=
  ∀ n, P6097939090095847595.a n = A001341 n

end A001341

/-! ## A001341.P3278838886057318717

`Δ[Δ[Δ[n*(a(n-1)+1)]]]` with `a(0)=0`
-/

namespace A001341.P3278838886057318717
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f3 =>
  n * (f3 (n - 1) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P3278838886057318717

namespace A001341

/-- `Δ[Δ[Δ[n*(a(n-1)+1)]]]` -/
def P3278838886057318717.Spec : Prop :=
  ∀ n, P3278838886057318717.a n = A001341 n

end A001341

/-! ## A001341.P6537983243595842823

`Δ[A001340(n)]`
-/

namespace A001341.P6537983243595842823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P6537983243595842823

namespace A001341

/-- `Δ[A001340(n)]` -/
def P6537983243595842823.Spec : Prop :=
  ∀ n, P6537983243595842823.a n = A001341 n

end A001341

/-! ## A001341.P14812988043920156610

`Δ[Δ[A001339(n)]]`
-/

namespace A001341.P14812988043920156610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P14812988043920156610

namespace A001341

/-- `Δ[Δ[A001339(n)]]` -/
def P14812988043920156610.Spec : Prop :=
  ∀ n, P14812988043920156610.a n = A001341 n

end A001341

/-! ## A001341.P4560113499574145049

`Δ[2*A082030(n)]`
-/

namespace A001341.P4560113499574145049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P4560113499574145049

namespace A001341

/-- `Δ[2*A082030(n)]` -/
def P4560113499574145049.Spec : Prop :=
  ∀ n, P4560113499574145049.a n = A001341 n

end A001341

/-! ## A001341.P6230055583330479854

`Δ[Δ[Δ[A000522(n)]]]`
-/

namespace A001341.P6230055583330479854
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P6230055583330479854

namespace A001341

/-- `Δ[Δ[Δ[A000522(n)]]]` -/
def P6230055583330479854.Spec : Prop :=
  ∀ n, P6230055583330479854.a n = A001341 n

end A001341

/-! ## A001341.P11563195885237311044

`Δ[Δ[Δ[A007526(n)]]]`
-/

namespace A001341.P11563195885237311044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P11563195885237311044

namespace A001341

/-- `Δ[Δ[Δ[A007526(n)]]]` -/
def P11563195885237311044.Spec : Prop :=
  ∀ n, P11563195885237311044.a n = A001341 n

end A001341

/-! ## A001341.P3822618059024505711

`Δ[Δ[Δ[A073591(n)]]]`
-/

namespace A001341.P3822618059024505711
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001341.P3822618059024505711

namespace A001341

/-- `Δ[Δ[Δ[A073591(n)]]]` -/
def P3822618059024505711.Spec : Prop :=
  ∀ n, P3822618059024505711.a n = A001341 n

end A001341

/-!
# A001342: E.g.f.: 24*exp(x)/(1-x)^5.

The programs for A001342, the canonical program `A001342.P12426315628778309873` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001342 has offset 0).

The definition of A001342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001342.P12426315628778309873

`floor(n!*(n^4+6*n^3+17*n²+20*n+9)*e)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001342

/-- `floor(n!*(n^4+6*n^3+17*n²+20*n+9)*e)` -/
def P12426315628778309873.Spec : Prop :=
  ∀ n, P12426315628778309873.a n = A001342 n

theorem P12426315628778309873.correct : P12426315628778309873.Spec := by
  intro n
  simp only [A001342]

end A001342

/-! ## A001342.P9715148610298880095

`Δ[A001341(n)]`
-/

namespace A001342.P9715148610298880095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001342.P9715148610298880095

namespace A001342

/-- `Δ[A001341(n)]` -/
def P9715148610298880095.Spec : Prop :=
  ∀ n, P9715148610298880095.a n = A001342 n

end A001342

/-! ## A001342.P1594278330218038696

`Δ[Δ[A001340(n)]]`
-/

namespace A001342.P1594278330218038696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001342.P1594278330218038696

namespace A001342

/-- `Δ[Δ[A001340(n)]]` -/
def P1594278330218038696.Spec : Prop :=
  ∀ n, P1594278330218038696.a n = A001342 n

end A001342

/-! ## A001342.P10616534392277067912

`Δ[6*A095000(n)]`
-/

namespace A001342.P10616534392277067912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A095000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001342.P10616534392277067912

namespace A001342

/-- `Δ[6*A095000(n)]` -/
def P10616534392277067912.Spec : Prop :=
  ∀ n, P10616534392277067912.a n = A001342 n

end A001342

/-! ## A001342.P17406821354903949148

`round(e*A001688(n))`
-/

namespace A001342.P17406821354903949148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A001688 n : ℝ))

end

end A001342.P17406821354903949148

namespace A001342

/-- `round(e*A001688(n))` -/
def P17406821354903949148.Spec : Prop :=
  ∀ n, P17406821354903949148.a n = A001342 n

end A001342

/-! ## A001342.P5356035645888048009

`Δ[Δ[Δ[A001339(n)]]]`
-/

namespace A001342.P5356035645888048009
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001342.P5356035645888048009

namespace A001342

/-- `Δ[Δ[Δ[A001339(n)]]]` -/
def P5356035645888048009.Spec : Prop :=
  ∀ n, P5356035645888048009.a n = A001342 n

end A001342

/-! ## A001342.P7120060374287296643

`Δ[Δ[2*A082030(n)]]`
-/

namespace A001342.P7120060374287296643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082030 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001342.P7120060374287296643

namespace A001342

/-- `Δ[Δ[2*A082030(n)]]` -/
def P7120060374287296643.Spec : Prop :=
  ∀ n, P7120060374287296643.a n = A001342 n

end A001342

/-! ## A001342.P6597761066615072485

`A001341(n+1)-A001341(n)`
-/

namespace A001342.P6597761066615072485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001341 (n + 1) - A001341 n

end

end A001342.P6597761066615072485

namespace A001342

/-- `A001341(n+1)-A001341(n)` -/
def P6597761066615072485.Spec : Prop :=
  ∀ n, P6597761066615072485.a n = A001342 n

end A001342

/-!
# A001343: Number of (unordered) ways of making change for n cents using coins of 5, 10, 20, 50, 100 cents.

The programs for A001343, the canonical program `A001343.P6388193166079406196` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001343 has offset 0).

The definition of A001343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4545 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001343.P6388193166079406196

`A001300(A004526(n))*A079998(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001343

/-- `A001300(A004526(n))*A079998(n)` -/
def P6388193166079406196.Spec : Prop :=
  ∀ n, P6388193166079406196.a n = A001343 n

theorem P6388193166079406196.correct : P6388193166079406196.Spec := by
  intro n
  simp only [A001343]

end A001343

/-! ## A001343.P16873015404621831360

`A001300(A008619(n))*A079998(n)`
-/

namespace A001343.P16873015404621831360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A008619 n).toNat * A079998 n

end

end A001343.P16873015404621831360

namespace A001343

/-- `A001300(A008619(n))*A079998(n)` -/
def P16873015404621831360.Spec : Prop :=
  ∀ n, P16873015404621831360.a n = A001343 n

end A001343

/-! ## A001343.P10003894095476987908

`A001300(A028242(n))*A079998(n)`
-/

namespace A001343.P10003894095476987908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A028242 n).toNat * A079998 n

end

end A001343.P10003894095476987908

namespace A001343

/-- `A001300(A028242(n))*A079998(n)` -/
def P10003894095476987908.Spec : Prop :=
  ∀ n, P10003894095476987908.a n = A001343 n

end A001343

/-! ## A001343.P10609622673974974290

`A000064(A059995(n))*A079998(n)`
-/

namespace A001343.P10609622673974974290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 (A059995 n).toNat * A079998 n

end

end A001343.P10609622673974974290

namespace A001343

/-- `A000064(A059995(n))*A079998(n)` -/
def P10609622673974974290.Spec : Prop :=
  ∀ n, P10609622673974974290.a n = A001343 n

end A001343

/-! ## A001343.P10041930489963264007

`A001300(A065033(n))*A079998(n)`
-/

namespace A001343.P10041930489963264007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A065033 n).toNat * A079998 n

end

end A001343.P10041930489963264007

namespace A001343

/-- `A001300(A065033(n))*A079998(n)` -/
def P10041930489963264007.Spec : Prop :=
  ∀ n, P10041930489963264007.a n = A001343 n

end A001343

/-! ## A001343.P153135406582972079

`A001300(A123108(n))*A079998(n)`
-/

namespace A001343.P153135406582972079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 (A123108 n).toNat * A079998 n

end

end A001343.P153135406582972079

namespace A001343

/-- `A001300(A123108(n))*A079998(n)` -/
def P153135406582972079.Spec : Prop :=
  ∀ n, P153135406582972079.a n = A001343 n

end A001343

/-!
# A001344: a(n) = Sum_{k=0..2} (n+k)! * C(2,k).

The programs for A001344, there is no canonical definition to state claims against.
-/

/-! ## A001344.P16492401140819187302

`(n+1)!+(2*n+1)*abs(1-n)!`
-/

namespace A001344.P16492401140819187302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + (2 * n + 1) * Nat.factorial |1 - (n : ℤ)|.toNat

end

end A001344.P16492401140819187302

/-! ## A001344.P8500768068271743100

`A076571(∑[n+1]+2)`
-/

namespace A001344.P8500768068271743100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001344.P8500768068271743100

/-! ## A001344.P3755341213726584565

`(n+1)*a(n-1)-2*A001048(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A001344.P3755341213726584565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - 2 * A001048 (n - 1)

end

end A001344.P3755341213726584565

/-! ## A001344.P12059680481122854623

`A143122(A055998(n))+A000142(n)`
-/

namespace A001344.P12059680481122854623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (A055998 n).toNat + A000142 n

end

end A001344.P12059680481122854623

/-! ## A001344.P18030823689869389522

`A180013(A133263(n))+A059171(n+2)`
-/

namespace A001344.P18030823689869389522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180013 (A133263 n).toNat + A059171 (n + 2)

end

end A001344.P18030823689869389522

/-!
# A001348: Mersenne numbers: 2^p - 1, where p is prime.

The programs for A001348, the canonical program `A001348.P1877427726897930232` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001348 has offset 1).

The definition of A001348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001348.P1877427726897930232

`A000225(A000040(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001348

/-- `A000225(A000040(n+1))` -/
def P1877427726897930232.Spec : Prop :=
  ∀ n, P1877427726897930232.a n = A001348 (n + 1)

theorem P1877427726897930232.correct : P1877427726897930232.Spec := by
  intro n
  simp only [A001348, Nat.add_sub_cancel]

end A001348

/-! ## A001348.P2027195277005980043

`2^p?[comp[n²]]-1`
-/

namespace A001348.P2027195277005980043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A001348.P2027195277005980043

namespace A001348

/-- `2^p?[comp[n²]]-1` -/
def P2027195277005980043.Spec : Prop :=
  ∀ n, P2027195277005980043.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P823787025888326105

`record[2^∑{p}[n+2, #]-1]`
-/

namespace A001348.P823787025888326105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001348.P823787025888326105

namespace A001348

/-- `record[2^∑{p}[n+2, #]-1]` -/
def P823787025888326105.Spec : Prop :=
  ∀ n, P823787025888326105.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P14072884285414728836

`record[∏{p}[n+2, 2^#-1]]`
-/

namespace A001348.P14072884285414728836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((2 ^ p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001348.P14072884285414728836

namespace A001348

/-- `record[∏{p}[n+2, 2^#-1]]` -/
def P14072884285414728836.Spec : Prop :=
  ∀ n, P14072884285414728836.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P17731558009873284610

`record[∑{p}[n-2, 2^#-1]]`
-/

namespace A001348.P17731558009873284610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((2 ^ p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001348.P17731558009873284610

namespace A001348

/-- `record[∑{p}[n-2, 2^#-1]]` -/
def P17731558009873284610.Spec : Prop :=
  ∀ n, P17731558009873284610.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P8835728542231143026

`Δ[A076793(n)]-1`
-/

namespace A001348.P8835728542231143026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001348.P8835728542231143026

namespace A001348

/-- `Δ[A076793(n)]-1` -/
def P8835728542231143026.Spec : Prop :=
  ∀ n, P8835728542231143026.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P5348526474361757431

`Δ[A320877(n)]-1`
-/

namespace A001348.P5348526474361757431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A001348.P5348526474361757431

namespace A001348

/-- `Δ[A320877(n)]-1` -/
def P5348526474361757431.Spec : Prop :=
  ∀ n, P5348526474361757431.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P13052949449117388579

`record[A063670(n+1)]`
-/

namespace A001348.P13052949449117388579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001348.P13052949449117388579

namespace A001348

/-- `record[A063670(n+1)]` -/
def P13052949449117388579.Spec : Prop :=
  ∀ n, P13052949449117388579.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P4964390300306653538

`record[A019320(n+2)]`
-/

namespace A001348.P4964390300306653538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001348.P4964390300306653538

namespace A001348

/-- `record[A019320(n+2)]` -/
def P4964390300306653538.Spec : Prop :=
  ∀ n, P4964390300306653538.a n = A001348 (n + 1)

end A001348

/-! ## A001348.P16487280657419115406

`record[A063696(n+2)]`
-/

namespace A001348.P16487280657419115406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063696 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001348.P16487280657419115406

namespace A001348

/-- `record[A063696(n+2)]` -/
def P16487280657419115406.Spec : Prop :=
  ∀ n, P16487280657419115406.a n = A001348 (n + 1)

end A001348

/-!
# A001349: Number of simple connected graphs on n unlabeled nodes.

The programs for A001349, there is no canonical definition to state claims against.
-/

/-! ## A001349.P5054388140887099044

`A304311(∑[n])`
-/

namespace A001349.P5054388140887099044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001349.P5054388140887099044

/-! ## A001349.P14389814148712233256

`A201922(C(n, 2)+1)`
-/

namespace A001349.P14389814148712233256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (Nat.choose n 2 + 1)

end

end A001349.P14389814148712233256

/-! ## A001349.P13354454950337236520

`A201922(∑[abs(1-n)])`
-/

namespace A001349.P13354454950337236520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001349.P13354454950337236520

/-! ## A001349.P5021299016424708880

`A157051(n)+A005142(n)`
-/

namespace A001349.P5021299016424708880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157051 n + A005142 n

end

end A001349.P5021299016424708880

/-! ## A001349.P7362386223275131713

`A000088(n)-A000719(n)`
-/

namespace A001349.P7362386223275131713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n - A000719 n

end

end A001349.P7362386223275131713

/-!
# A001350: Associated Mersenne numbers.

The programs for A001350, the canonical program `A001350.P9806914175357381787` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001350 has offset 0).

The definition of A001350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001350.P9806914175357381787

`a(n-1)+a(n-2)+1-(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001350

/-- `a(n-1)+a(n-2)+1-(-1)^n` -/
def P9806914175357381787.Spec : Prop :=
  ∀ n, P9806914175357381787.a n = A001350 n

theorem P9806914175357381787.correct : P9806914175357381787.Spec := by
  intro n
  simp only [A001350]

end A001350

/-! ## A001350.P11952598961831945718

`A000032(n)-1-(-1)^n`
-/

namespace A001350.P11952598961831945718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - 1 - (-1) ^ n

end

end A001350.P11952598961831945718

namespace A001350

/-- `A000032(n)-1-(-1)^n` -/
def P11952598961831945718.Spec : Prop :=
  ∀ n, P11952598961831945718.a n = A001350 n

end A001350

/-! ## A001350.P15184748276474802758

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A001350.P15184748276474802758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A001350.P15184748276474802758

namespace A001350

/-- `a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P15184748276474802758.Spec : Prop :=
  ∀ n, P15184748276474802758.a n = A001350 n

end A001350

/-! ## A001350.P10357664664342784054

`2*A074331(n)-A000045(n)`
-/

namespace A001350.P10357664664342784054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074331 n - A000045 n

end

end A001350.P10357664664342784054

namespace A001350

/-- `2*A074331(n)-A000045(n)` -/
def P10357664664342784054.Spec : Prop :=
  ∀ n, P10357664664342784054.a n = A001350 n

end A001350

/-! ## A001350.P13400898879354923827

`sqrt(A152152(n))`
-/

namespace A001350.P13400898879354923827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152152 n : ℝ)

end

end A001350.P13400898879354923827

namespace A001350

/-- `sqrt(A152152(n))` -/
def P13400898879354923827.Spec : Prop :=
  ∀ n, P13400898879354923827.a n = (A001350 n : ℝ)

end A001350

/-! ## A001350.P13137967183095898025

`ogf((x+x^3)/(1-x-2x^2+x^3+x^4))`
-/

namespace A001350.P13137967183095898025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -1, -2, 1, 1] n

end

end A001350.P13137967183095898025

namespace A001350

/-- `ogf((x+x^3)/(1-x-2x^2+x^3+x^4))` -/
def P13137967183095898025.Spec : Prop :=
  ∀ n, P13137967183095898025.a n = A001350 n

end A001350

/-! ## A001350.P8497808712479585601

`a(n-3)+2*(a(n-2)+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A001350.P8497808712479585601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + 2 * (a (n - 2) + 1)

end

end A001350.P8497808712479585601

namespace A001350

/-- `a(n-3)+2*(a(n-2)+1)` -/
def P8497808712479585601.Spec : Prop :=
  ∀ n, (P8497808712479585601.a n : ℤ) = A001350 n

end A001350

/-! ## A001350.P2933460607934326970

`a(n-2)+2+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A001350.P2933460607934326970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) + 2 + (a (n - 2) + a (n - 3))

end

end A001350.P2933460607934326970

namespace A001350

/-- `a(n-2)+2+a(n-2)+a(n-3)` -/
def P2933460607934326970.Spec : Prop :=
  ∀ n, (P2933460607934326970.a n : ℤ) = A001350 n

end A001350

/-! ## A001350.P14143969392107027518

`A098600(n)-1`
-/

namespace A001350.P14143969392107027518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098600 n - 1

end

end A001350.P14143969392107027518

namespace A001350

/-- `A098600(n)-1` -/
def P14143969392107027518.Spec : Prop :=
  ∀ n, P14143969392107027518.a n = A001350 n

end A001350

/-! ## A001350.P4058753861629997817

`A020878(n)-2`
-/

namespace A001350.P4058753861629997817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 n - 2

end

end A001350.P4058753861629997817

namespace A001350

/-- `A020878(n)-2` -/
def P4058753861629997817.Spec : Prop :=
  ∀ n, P4058753861629997817.a n = A001350 n

theorem P4058753861629997817.correct : P4058753861629997817.Spec := by
  intro n
  simp only [A001350, Nat.add_sub_cancel, A001350.P4058753861629997817.a, A001350.P9806914175357381787.a, A020878, A020878.P2717610554730428774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001350

/-! ## A001350.P1248635347961924575

`∑{d}[n, A031367(#)]`
-/

namespace A001350.P1248635347961924575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A031367 d

end

end A001350.P1248635347961924575

namespace A001350

/-- `∑{d}[n, A031367(#)]` -/
def P1248635347961924575.Spec : Prop :=
  ∀ n, P1248635347961924575.a n = A001350 n

end A001350

/-! ## A001350.P14332765354339185399

`abs(A355021(n))-1`
-/

namespace A001350.P14332765354339185399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355021 n| - 1

end

end A001350.P14332765354339185399

namespace A001350

/-- `abs(A355021(n))-1` -/
def P14332765354339185399.Spec : Prop :=
  ∀ n, P14332765354339185399.a n = A001350 n

end A001350

/-! ## A001350.P2685229859174893699

`A181716(n+1)-1`
-/

namespace A001350.P2685229859174893699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (n + 1) - 1

end

end A001350.P2685229859174893699

namespace A001350

/-- `A181716(n+1)-1` -/
def P2685229859174893699.Spec : Prop :=
  ∀ n, P2685229859174893699.a n = A001350 n

end A001350

/-! ## A001350.P13371028271798237784

`∑{d}[n, #*A060280(#)]`
-/

namespace A001350.P13371028271798237784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060280 d

end

end A001350.P13371028271798237784

namespace A001350

/-- `∑{d}[n, #*A060280(#)]` -/
def P13371028271798237784.Spec : Prop :=
  ∀ n, P13371028271798237784.a n = A001350 n

end A001350

/-! ## A001350.P4589046133923922596

`A000032(n)-and(2, gcd(2, n))`
-/

namespace A001350.P4589046133923922596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (Nat.land 2 (Nat.gcd 2 n) : ℤ)

end

end A001350.P4589046133923922596

namespace A001350

/-- `A000032(n)-and(2, gcd(2, n))` -/
def P4589046133923922596.Spec : Prop :=
  ∀ n, P4589046133923922596.a n = A001350 n

end A001350

/-! ## A001350.P3936681560069785223

`A000032(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001350.P3936681560069785223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000032 (n - 1) + a (n - 2)

end

end A001350.P3936681560069785223

namespace A001350

/-- `A000032(n-1)+a(n-2)` -/
def P3936681560069785223.Spec : Prop :=
  ∀ n, P3936681560069785223.a n = A001350 n

end A001350

/-! ## A001350.P1179478280864131272

`A014217(n)-A059841(n)`
-/

namespace A001350.P1179478280864131272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n - A059841 n

end

end A001350.P1179478280864131272

namespace A001350

/-- `A014217(n)-A059841(n)` -/
def P1179478280864131272.Spec : Prop :=
  ∀ n, P1179478280864131272.a n = A001350 n

end A001350

/-! ## A001350.P9969931319507051956

`A000211(n)-A105397(n)`
-/

namespace A001350.P9969931319507051956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - A105397 n

end

end A001350.P9969931319507051956

namespace A001350

/-- `A000211(n)-A105397(n)` -/
def P9969931319507051956.Spec : Prop :=
  ∀ n, P9969931319507051956.a n = A001350 n

end A001350

/-! ## A001350.P685649568913235549

`A001612(n)-A176040(n)`
-/

namespace A001350.P685649568913235549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - A176040 n

end

end A001350.P685649568913235549

namespace A001350

/-- `A001612(n)-A176040(n)` -/
def P685649568913235549.Spec : Prop :=
  ∀ n, P685649568913235549.a n = A001350 n

end A001350

/-! ## A001350.P12591927385940326090

`A169986(n)-A040001(n)`
-/

namespace A001350.P12591927385940326090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 n - A040001 n

end

end A001350.P12591927385940326090

namespace A001350

/-- `A169986(n)-A040001(n)` -/
def P12591927385940326090.Spec : Prop :=
  ∀ n, P12591927385940326090.a n = A001350 n

end A001350

/-!
# A001351: Associated Mersenne numbers.

The programs for A001351, the canonical program `A001351.P8568811544619452365` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001351 has offset 0).

The definition of A001351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001351.P8568811544619452365

`a(n-1)-a(n-2)+3*a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1, a(4)=3, a(5)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001351

/-- `a(n-1)-a(n-2)+3*a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P8568811544619452365.Spec : Prop :=
  ∀ n, P8568811544619452365.a n = A001351 n

theorem P8568811544619452365.correct : P8568811544619452365.Spec := by
  intro n
  simp only [A001351]

end A001351

/-!
# A001352: a(0) = 1, a(1) = 6, a(2) = 24; for n>=3, a(n) = 4a(n-1) - a(n-2).

The programs for A001352, the canonical program `A001352.P2806436871008791660` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001352 has offset 0).

The definition of A001352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A001352.P2806436871008791660`, by `A001352.P2806436871008791660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001352.P2806436871008791660

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6, a(2)=24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001352

/-- `4*a(n-1)-a(n-2)` -/
def P2806436871008791660.Spec : Prop :=
  ∀ n, P2806436871008791660.a n = A001352 n

theorem P2806436871008791660.correct : P2806436871008791660.Spec := by
  intro n
  simp only [A001352]

end A001352

/-! ## A001352.P13788490720800038302

`ogf((1+2x+x^2)/(1-4x+x^2))`
-/

namespace A001352.P13788490720800038302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -4, 1] n

end

end A001352.P13788490720800038302

namespace A001352

/-- `ogf((1+2x+x^2)/(1-4x+x^2))` -/
def P13788490720800038302.Spec : Prop :=
  ∀ n, P13788490720800038302.a n = A001352 n

end A001352

/-! ## A001352.P15650432676070217012

`record[lcm(6, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=6`
-/

namespace A001352.P15650432676070217012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001352.P15650432676070217012

namespace A001352

/-- `record[lcm(6, a(n-1))-a(n-2)]` -/
def P15650432676070217012.Spec : Prop :=
  ∀ n, P15650432676070217012.a n = A001352 n

end A001352

/-! ## A001352.P15681570470739963036

`record[Δ[A077238(n)]]`
-/

namespace A001352.P15681570470739963036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001352.P15681570470739963036

namespace A001352

/-- `record[Δ[A077238(n)]]` -/
def P15681570470739963036.Spec : Prop :=
  ∀ n, P15681570470739963036.a n = A001352 n

end A001352

/-! ## A001352.P15738278718243852731

`abs(∑[∑[A294372(n)]])`
-/

namespace A001352.P15738278718243852731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294372 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A001352.P15738278718243852731

namespace A001352

/-- `abs(∑[∑[A294372(n)]])` -/
def P15738278718243852731.Spec : Prop :=
  ∀ n, P15738278718243852731.a n = A001352 n

end A001352

/-! ## A001352.P975527138541879564

`A234272(n)-A052530(n)`
-/

namespace A001352.P975527138541879564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234272 n - A052530 n

end

end A001352.P975527138541879564

namespace A001352

/-- `A234272(n)-A052530(n)` -/
def P975527138541879564.Spec : Prop :=
  ∀ n, P975527138541879564.a n = A001352 n

end A001352

/-! ## A001352.P12366735277539438614

`A000007(n)+2*A005320(n)`
-/

namespace A001352.P12366735277539438614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A005320 n

end

end A001352.P12366735277539438614

namespace A001352

/-- `A000007(n)+2*A005320(n)` -/
def P12366735277539438614.Spec : Prop :=
  ∀ n, P12366735277539438614.a n = A001352 n

end A001352

/-! ## A001352.P8961143942811602829

`A234272(n)+2*A106707(n)`
-/

namespace A001352.P8961143942811602829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234272 n + 2 * A106707 n

end

end A001352.P8961143942811602829

namespace A001352

/-- `A234272(n)+2*A106707(n)` -/
def P8961143942811602829.Spec : Prop :=
  ∀ n, P8961143942811602829.a n = A001352 n

end A001352

/-! ## A001352.P16357227304551482623

`A234272(n)-2*A001353(n)`
-/

namespace A001352.P16357227304551482623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234272 n - 2 * A001353 n

end

end A001352.P16357227304551482623

namespace A001352

/-- `A234272(n)-2*A001353(n)` -/
def P16357227304551482623.Spec : Prop :=
  ∀ n, P16357227304551482623.a n = A001352 n

end A001352

/-! ## A001352.P17904794531554101493

`A234272(n)-A048788(2*n)`
-/

namespace A001352.P17904794531554101493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234272 n - A048788 (2 * n)

end

end A001352.P17904794531554101493

namespace A001352

/-- `A234272(n)-A048788(2*n)` -/
def P17904794531554101493.Spec : Prop :=
  ∀ n, P17904794531554101493.a n = A001352 n

end A001352

/-! ## A001352.P136768079368739941

`record[A077238(n+1)-A077238(n)]`
-/

namespace A001352.P136768079368739941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 (n + 1) - A077238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001352.P136768079368739941

namespace A001352

/-- `record[A077238(n+1)-A077238(n)]` -/
def P136768079368739941.Spec : Prop :=
  ∀ n, P136768079368739941.a n = A001352 n

end A001352

/-! ## A001352.P10735926726053458263

`A143642(A008486(n))+A005320(n)`
-/

namespace A001352.P10735926726053458263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (A008486 n).toNat + A005320 n

end

end A001352.P10735926726053458263

namespace A001352

/-- `A143642(A008486(n))+A005320(n)` -/
def P10735926726053458263.Spec : Prop :=
  ∀ n, P10735926726053458263.a n = A001352 n

end A001352

/-! ## A001352.P3806278155479072883

`A106707(n)+A234272(n)-A001353(n)`
-/

namespace A001352.P3806278155479072883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + (A234272 n - A001353 n)

end

end A001352.P3806278155479072883

namespace A001352

/-- `A106707(n)+A234272(n)-A001353(n)` -/
def P3806278155479072883.Spec : Prop :=
  ∀ n, P3806278155479072883.a n = A001352 n

end A001352

/-! ## A001352.P4437290281675748767

`A001834(n)+A001834(n)%A001075(n)`
-/

namespace A001352.P4437290281675748767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n + Int.tmod (A001834 n) (A001075 n)

end

end A001352.P4437290281675748767

namespace A001352

/-- `A001834(n)+A001834(n)%A001075(n)` -/
def P4437290281675748767.Spec : Prop :=
  ∀ n, P4437290281675748767.a n = A001352 n

end A001352

/-! ## A001352.P6664630735102389545

`(6*A001353(n))^A001222(A008578(n+1))`
-/

namespace A001352.P6664630735102389545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A001353 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A001352.P6664630735102389545

namespace A001352

/-- `(6*A001353(n))^A001222(A008578(n+1))` -/
def P6664630735102389545.Spec : Prop :=
  ∀ n, P6664630735102389545.a n = (A001352 n : ℚ)

end A001352

/-!
# A001353: a(n) = 4*a(n-1) - a(n-2) with a(0) = 0, a(1) = 1.

The programs for A001353, the canonical program `A001353.P13512861713370832559` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001353 has offset 0).

The definition of A001353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A001353.P13512861713370832559`, by `A001353.P13512861713370832559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001353.P13512861713370832559

`4*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001353

/-- `4*a(n-1)-a(n-2)` -/
def P13512861713370832559.Spec : Prop :=
  ∀ n, P13512861713370832559.a n = A001353 n

theorem P13512861713370832559.correct : P13512861713370832559.Spec := by
  intro n
  simp only [A001353]

end A001353

/-! ## A001353.P11730478945450823117

`-A106707(n)`
-/

namespace A001353.P11730478945450823117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106707 n

end

end A001353.P11730478945450823117

namespace A001353

/-- `-A106707(n)` -/
def P11730478945450823117.Spec : Prop :=
  ∀ n, P11730478945450823117.a n = A001353 n

theorem P11730478945450823117.correct : P11730478945450823117.Spec := by
  intro n
  simp only [A001353, Nat.add_sub_cancel, A001353.P11730478945450823117.a, A001353.P13512861713370832559.a, A106707, A106707.P467990136795639028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001353

/-! ## A001353.P1458639128789753587

`((2+sqrt(3))^n-(2-sqrt(3))^n)/(2*sqrt(3))`
-/

namespace A001353.P1458639128789753587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ n - (2 - Real.sqrt (3 : ℝ)) ^ n) / (2 * Real.sqrt (3 : ℝ))

end

end A001353.P1458639128789753587

namespace A001353

/-- `((2+sqrt(3))^n-(2-sqrt(3))^n)/(2*sqrt(3))` -/
def P1458639128789753587.Spec : Prop :=
  ∀ n, P1458639128789753587.a n = (A001353 n : ℝ)

theorem P1458639128789753587.correct : P1458639128789753587.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A001353, Nat.add_sub_cancel, A001353.P1458639128789753587.a, A001353.P13512861713370832559.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A001353, Nat.add_sub_cancel, A001353.P1458639128789753587.a, A001353.P13512861713370832559.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A001353

/-! ## A001353.P4303469656190661344

`sqrt(A098301(n))`
-/

namespace A001353.P4303469656190661344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098301 n : ℝ)

end

end A001353.P4303469656190661344

namespace A001353

/-- `sqrt(A098301(n))` -/
def P4303469656190661344.Spec : Prop :=
  ∀ n, P4303469656190661344.a n = (A001353 n : ℝ)

end A001353

/-! ## A001353.P11071157066540211596

`sqrt((A001075(n)²-1)/3)`
-/

namespace A001353.P11071157066540211596
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001075 n ^ 2 - 1 : ℚ) / 3 : ℝ)

end

end A001353.P11071157066540211596

namespace A001353

/-- `sqrt((A001075(n)²-1)/3)` -/
def P11071157066540211596.Spec : Prop :=
  ∀ n, P11071157066540211596.a n = (A001353 n : ℝ)

end A001353

/-! ## A001353.P13214195231861655449

`ogf(x/(1-4x+x^2))`
-/

namespace A001353.P13214195231861655449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 1] n

end

end A001353.P13214195231861655449

namespace A001353

/-- `ogf(x/(1-4x+x^2))` -/
def P13214195231861655449.Spec : Prop :=
  ∀ n, P13214195231861655449.a n = A001353 n

end A001353

/-! ## A001353.P14412804206703422652

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001353.P14412804206703422652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A001353.P14412804206703422652

namespace A001353

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P14412804206703422652.Spec : Prop :=
  ∀ n, P14412804206703422652.a n = A001353 n

end A001353

/-! ## A001353.P5870635050964053879

`round((sqrt(3)+2)*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001353.P5870635050964053879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ))

end

end A001353.P5870635050964053879

namespace A001353

/-- `round((sqrt(3)+2)*a(n-1))` -/
def P5870635050964053879.Spec : Prop :=
  ∀ n, P5870635050964053879.a n = A001353 n

end A001353

/-! ## A001353.P1124199664982979007

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=0, a(1)=1`
-/

namespace A001353.P1124199664982979007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A001353.P1124199664982979007

namespace A001353

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P1124199664982979007.Spec : Prop :=
  ∀ n, P1124199664982979007.a n = A001353 n

end A001353

/-! ## A001353.P16340362288535077640

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001353.P16340362288535077640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A001353.P16340362288535077640

namespace A001353

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P16340362288535077640.Spec : Prop :=
  ∀ n, P16340362288535077640.a n = (A001353 n : ℚ)

end A001353

/-! ## A001353.P3245201882243479823

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A001353.P3245201882243479823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A001353.P3245201882243479823

namespace A001353

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P3245201882243479823.Spec : Prop :=
  ∀ n, P3245201882243479823.a n = A001353 n

theorem P3245201882243479823.correct : P3245201882243479823.Spec := by
  intro n
  simp only [A001353, Nat.add_sub_cancel, A001353.P3245201882243479823.a, A001353.P13512861713370832559.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001353

/-! ## A001353.P4691275543391478035

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001353.P4691275543391478035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A001353.P4691275543391478035

namespace A001353

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P4691275543391478035.Spec : Prop :=
  ∀ n, P4691275543391478035.a n = A001353 n

theorem P4691275543391478035.correct : P4691275543391478035.Spec := by
  intro n
  simp only [A001353, Nat.add_sub_cancel, A001353.P4691275543391478035.a, A001353.P13512861713370832559.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001353

/-! ## A001353.P7895574949242223619

`Δ[A101879(n)]`
-/

namespace A001353.P7895574949242223619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001353.P7895574949242223619

namespace A001353

/-- `Δ[A101879(n)]` -/
def P7895574949242223619.Spec : Prop :=
  ∀ n, P7895574949242223619.a n = A001353 n

end A001353

/-! ## A001353.P12257223413926633258

`A072110(n)-1`
-/

namespace A001353.P12257223413926633258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072110 n - 1

end

end A001353.P12257223413926633258

namespace A001353

/-- `A072110(n)-1` -/
def P12257223413926633258.Spec : Prop :=
  ∀ n, P12257223413926633258.a n = A001353 n

end A001353

/-! ## A001353.P14245580962239011027

`A002530(2*n)`
-/

namespace A001353.P14245580962239011027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (2 * n)

end

end A001353.P14245580962239011027

namespace A001353

/-- `A002530(2*n)` -/
def P14245580962239011027.Spec : Prop :=
  ∀ n, P14245580962239011027.a n = A001353 n

end A001353

/-! ## A001353.P18080141420281423753

`A249578(3*n)`
-/

namespace A001353.P18080141420281423753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (3 * n)

end

end A001353.P18080141420281423753

namespace A001353

/-- `A249578(3*n)` -/
def P18080141420281423753.Spec : Prop :=
  ∀ n, P18080141420281423753.a n = A001353 n

end A001353

/-! ## A001353.P14135963281448852290

`∑[A001835(n)]-1`
-/

namespace A001353.P14135963281448852290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A001353.P14135963281448852290

namespace A001353

/-- `∑[A001835(n)]-1` -/
def P14135963281448852290.Spec : Prop :=
  ∀ n, P14135963281448852290.a n = A001353 n

end A001353

/-! ## A001353.P12327897997233633301

`A071954(n)/2-1`
-/

namespace A001353.P12327897997233633301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071954 n : ℚ) / 2 - 1

end

end A001353.P12327897997233633301

namespace A001353

/-- `A071954(n)/2-1` -/
def P12327897997233633301.Spec : Prop :=
  ∀ n, P12327897997233633301.a n = (A001353 n : ℚ)

end A001353

/-! ## A001353.P1817409559564107600

`A106707(n)+A052530(n)`
-/

namespace A001353.P1817409559564107600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106707 n + A052530 n

end

end A001353.P1817409559564107600

namespace A001353

/-- `A106707(n)+A052530(n)` -/
def P1817409559564107600.Spec : Prop :=
  ∀ n, P1817409559564107600.a n = A001353 n

end A001353

/-! ## A001353.P855762450756526887

`A001075(n)-A001835(n)`
-/

namespace A001353.P855762450756526887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n - A001835 n

end

end A001353.P855762450756526887

namespace A001353

/-- `A001075(n)-A001835(n)` -/
def P855762450756526887.Spec : Prop :=
  ∀ n, P855762450756526887.a n = A001353 n

end A001353

/-!
# A001354: Coordination sequence for hyperbolic tessellation 3^7 (from triangle group (2,3,7)).

The programs for A001354, the canonical program `A001354.P4891785923179629132` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001354 has offset 0).

The definition of A001354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001354.P1126506820623691267

`ogf((1+4x+x^2)/(1-3x+x^2))`
-/

namespace A001354.P1126506820623691267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, 1] n

end

end A001354.P1126506820623691267

namespace A001354

/-- `ogf((1+4x+x^2)/(1-3x+x^2))` -/
def P1126506820623691267.Spec : Prop :=
  ∀ n, P1126506820623691267.a n = A001354 n

end A001354

/-! ## A001354.P4710988232052386028

`record[(7*A212804(n))^and(1, n)]`
-/

namespace A001354.P4710988232052386028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * A212804 n) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001354.P4710988232052386028

namespace A001354

/-- `record[(7*A212804(n))^and(1, n)]` -/
def P4710988232052386028.Spec : Prop :=
  ∀ n, P4710988232052386028.a n = A001354 n

end A001354

/-! ## A001354.P4810284162363116665

`floor(acot(n))+7*A000045(2*n)`
-/

namespace A001354.P4810284162363116665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 7 * A000045 (2 * n)

end

end A001354.P4810284162363116665

namespace A001354

/-- `floor(acot(n))+7*A000045(2*n)` -/
def P4810284162363116665.Spec : Prop :=
  ∀ n, P4810284162363116665.a n = A001354 n

end A001354

/-! ## A001354.P9464430518749278069

`A099857(n)+A001906(n)`
-/

namespace A001354.P9464430518749278069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n + A001906 n

end

end A001354.P9464430518749278069

namespace A001354

/-- `A099857(n)+A001906(n)` -/
def P9464430518749278069.Spec : Prop :=
  ∀ n, P9464430518749278069.a n = A001354 n

end A001354

/-! ## A001354.P15653788155860211503

`A099857(n)+Δ[A032908(n)]`
-/

namespace A001354.P15653788155860211503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n + (f1 (n + 1) - f1 n)

end

end A001354.P15653788155860211503

namespace A001354

/-- `A099857(n)+Δ[A032908(n)]` -/
def P15653788155860211503.Spec : Prop :=
  ∀ n, P15653788155860211503.a n = A001354 n

end A001354

/-! ## A001354.P8081936098851448016

`record[gcd(A022090(n), A270010(n))]`
-/

namespace A001354.P8081936098851448016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022090 n) (A270010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001354.P8081936098851448016

namespace A001354

/-- `record[gcd(A022090(n), A270010(n))]` -/
def P8081936098851448016.Spec : Prop :=
  ∀ n, (P8081936098851448016.a n : ℤ) = A001354 n

end A001354

/-! ## A001354.P4891785923179629132

`A054888(n)+2*A001906(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001354

/-- `A054888(n)+2*A001906(n)` -/
def P4891785923179629132.Spec : Prop :=
  ∀ n, P4891785923179629132.a n = A001354 n

theorem P4891785923179629132.correct : P4891785923179629132.Spec := by
  intro n
  simp only [A001354]

end A001354

/-! ## A001354.P9035366175494883934

`A099857(n)+A000045(2*n)`
-/

namespace A001354.P9035366175494883934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n + A000045 (2 * n)

end

end A001354.P9035366175494883934

namespace A001354

/-- `A099857(n)+A000045(2*n)` -/
def P9035366175494883934.Spec : Prop :=
  ∀ n, P9035366175494883934.a n = A001354 n

end A001354

/-! ## A001354.P15647859982514817896

`A099857(n)+A005013(2*n)`
-/

namespace A001354.P15647859982514817896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n + A005013 (2 * n)

end

end A001354.P15647859982514817896

namespace A001354

/-- `A099857(n)+A005013(2*n)` -/
def P15647859982514817896.Spec : Prop :=
  ∀ n, P15647859982514817896.a n = A001354 n

end A001354

/-! ## A001354.P15473506742581024474

`A088305(n)+6*A001906(n)`
-/

namespace A001354.P15473506742581024474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n + 6 * A001906 n

end

end A001354.P15473506742581024474

namespace A001354

/-- `A088305(n)+6*A001906(n)` -/
def P15473506742581024474.Spec : Prop :=
  ∀ n, P15473506742581024474.a n = A001354 n

end A001354

/-! ## A001354.P13749758725882006135

`A201157(n+1)+A111282(n+1)`
-/

namespace A001354.P13749758725882006135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A111282 (n + 1)

end

end A001354.P13749758725882006135

namespace A001354

/-- `A201157(n+1)+A111282(n+1)` -/
def P13749758725882006135.Spec : Prop :=
  ∀ n, P13749758725882006135.a n = A001354 n

end A001354

/-! ## A001354.P9908412374697345015

`A212804(2*n+1)+A099857(n)`
-/

namespace A001354.P9908412374697345015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 1) + A099857 n

end

end A001354.P9908412374697345015

namespace A001354

/-- `A212804(2*n+1)+A099857(n)` -/
def P9908412374697345015.Spec : Prop :=
  ∀ n, P9908412374697345015.a n = A001354 n

end A001354

/-! ## A001354.P4811562444377726368

`A097135(2*n)+A022087(2*n)`
-/

namespace A001354.P4811562444377726368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (2 * n) + A022087 (2 * n)

end

end A001354.P4811562444377726368

namespace A001354

/-- `A097135(2*n)+A022087(2*n)` -/
def P4811562444377726368.Spec : Prop :=
  ∀ n, P4811562444377726368.a n = A001354 n

end A001354

/-! ## A001354.P10146273311066407266

`A270010(2*n)+A022090(2*n)`
-/

namespace A001354.P10146273311066407266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270010 (2 * n) + A022090 (2 * n)

end

end A001354.P10146273311066407266

namespace A001354

/-- `A270010(2*n)+A022090(2*n)` -/
def P10146273311066407266.Spec : Prop :=
  ∀ n, P10146273311066407266.a n = A001354 n

end A001354

/-! ## A001354.P15293692857393324487

`A097135(2*n)+2*A062114(2*n)`
-/

namespace A001354.P15293692857393324487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (2 * n) + 2 * A062114 (2 * n)

end

end A001354.P15293692857393324487

namespace A001354

/-- `A097135(2*n)+2*A062114(2*n)` -/
def P15293692857393324487.Spec : Prop :=
  ∀ n, P15293692857393324487.a n = A001354 n

end A001354

/-! ## A001354.P5067355391975006125

`A103609(A008574(n))+A099857(n)`
-/

namespace A001354.P5067355391975006125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A008574 n).toNat + A099857 n

end

end A001354.P5067355391975006125

namespace A001354

/-- `A103609(A008574(n))+A099857(n)` -/
def P5067355391975006125.Spec : Prop :=
  ∀ n, P5067355391975006125.a n = A001354 n

end A001354

/-! ## A001354.P8527660559066565169

`A103609(A016813(n))+A099857(n)`
-/

namespace A001354.P8527660559066565169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A016813 n).toNat + A099857 n

end

end A001354.P8527660559066565169

namespace A001354

/-- `A103609(A016813(n))+A099857(n)` -/
def P8527660559066565169.Spec : Prop :=
  ∀ n, P8527660559066565169.a n = A001354 n

end A001354

/-! ## A001354.P15664914486604862242

`A167375(n)+A006355(A103517(n))`
-/

namespace A001354.P15664914486604862242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167375 n + A006355 (A103517 n).toNat

end

end A001354.P15664914486604862242

namespace A001354

/-- `A167375(n)+A006355(A103517(n))` -/
def P15664914486604862242.Spec : Prop :=
  ∀ n, P15664914486604862242.a n = A001354 n

end A001354

/-!
# A001355: Mix digits of Pi and e.

The programs for A001355, there is no canonical definition to state claims against.
-/

/-! ## A001355.P2858480386265424265

`A078424(A001651(n+1))`
-/

namespace A001355.P2858480386265424265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A001651 (n + 1)).toNat

end

end A001355.P2858480386265424265

/-! ## A001355.P17186235944868472489

`A078424(A032766(n)+1)`
-/

namespace A001355.P17186235944868472489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A032766 n + 1).toNat

end

end A001355.P17186235944868472489

/-! ## A001355.P8798512651774687350

`A073212(A004526(n))-A104691(n+1)`
-/

namespace A001355.P8798512651774687350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 (A004526 n).toNat - A104691 (n + 1)

end

end A001355.P8798512651774687350

/-! ## A001355.P3028147091605433464

`A104691(xor(1, n)+1)`
-/

namespace A001355.P3028147091605433464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (Nat.xor 1 n + 1)

end

end A001355.P3028147091605433464

/-! ## A001355.P5930077597854626437

`A104691(2-xor(1, 1-n))`
-/

namespace A001355.P5930077597854626437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A001355.P5930077597854626437

/-! ## A001355.P13715225510233662421

`A104691(2*or(1, n)-n)`
-/

namespace A001355.P13715225510233662421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (2 * Nat.lor 1 n - n)

end

end A001355.P13715225510233662421

/-! ## A001355.P16411030920698385115

`A104691(lcm(2, or(1, n))-n)`
-/

namespace A001355.P16411030920698385115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (Nat.lcm 2 (Nat.lor 1 n) - n)

end

end A001355.P16411030920698385115

/-! ## A001355.P15774988137788911277

`A104691((-1)^n+n+1)`
-/

namespace A001355.P15774988137788911277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 ((-1) ^ n + (n : ℤ) + 1).toNat

end

end A001355.P15774988137788911277

/-!
# A001356: Dates at fortnightly intervals from Jan 01 in the Julian calendar.

The programs for A001356, there is no canonical definition to state claims against.
-/

/-! ## A001356.P6393165206121948632

`and(1, A063396(n+1))*A008686(2*n+1)`
-/

namespace A001356.P6393165206121948632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A063396 (n + 1)) * A008686 (2 * n + 1)

end

end A001356.P6393165206121948632

/-!
# A001357: Powers of 2 written in base 9.

The programs for A001357, there is no canonical definition to state claims against.
-/

/-! ## A001357.P6302479195326919032

`record[A309908(A346511(n))]`
-/

namespace A001357.P6302479195326919032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309908 (A346511 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001357.P6302479195326919032

/-! ## A001357.P5603191811884362347

`A014682(2*A309908(n))`
-/

namespace A001357.P5603191811884362347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A309908 n).toNat

end

end A001357.P5603191811884362347

/-! ## A001357.P11554814124465115361

`filter[A309908(n), A168185(#)]`
-/

namespace A001357.P11554814124465115361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A001357.P11554814124465115361

/-! ## A001357.P14473781629002039872

`A309908(n)%A072162(n+1)`
-/

namespace A001357.P14473781629002039872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309908 n) (A072162 (n + 1))

end

end A001357.P14473781629002039872

/-! ## A001357.P844122286510462891

`∩[A028838(n+1), A309908(n)]`
-/

namespace A001357.P844122286510462891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309908 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001357.P844122286510462891

/-!
# A001358: Semiprimes (or biprimes): products of two primes.

The programs for A001358, the canonical program `A001358.P632087320844056370` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001358 has offset 1).

The definition of A001358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001358.P632087320844056370

`A088707(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A001358

/-- `A088707(n+1)-1` -/
def P632087320844056370.Spec : Prop :=
  ∀ n, P632087320844056370.a n = A001358 (n + 1)

theorem P632087320844056370.correct : P632087320844056370.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel]

end A001358

/-! ## A001358.P3220952608486347156

`sqrt(A074985(n+1))`
-/

namespace A001358.P3220952608486347156
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

end

end A001358.P3220952608486347156

namespace A001358

/-- `sqrt(A074985(n+1))` -/
def P3220952608486347156.Spec : Prop :=
  ∀ n, P3220952608486347156.a n = (A001358 (n + 1) : ℝ)

end A001358

/-! ## A001358.P14279568066011823944

`A186621(n+1)+1`
-/

namespace A001358.P14279568066011823944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

end

end A001358.P14279568066011823944

namespace A001358

/-- `A186621(n+1)+1` -/
def P14279568066011823944.Spec : Prop :=
  ∀ n, P14279568066011823944.a n = A001358 (n + 1)

theorem P14279568066011823944.correct : P14279568066011823944.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel, A001358.P14279568066011823944.a, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A186621, A186621.P5089299060388261365.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001358

/-! ## A001358.P870859668787785455

`A075818(n+1)/2`
-/

namespace A001358.P870859668787785455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2

end

end A001358.P870859668787785455

namespace A001358

/-- `A075818(n+1)/2` -/
def P870859668787785455.Spec : Prop :=
  ∀ n, P870859668787785455.a n = (A001358 (n + 1) : ℚ)

theorem P870859668787785455.correct : P870859668787785455.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel, A001358.P870859668787785455.a, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001358

/-! ## A001358.P13098257546548915317

`lt[0, A064911(n+1)]+1`
-/

namespace A001358.P13098257546548915317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A001358.P13098257546548915317

namespace A001358

/-- `lt[0, A064911(n+1)]+1` -/
def P13098257546548915317.Spec : Prop :=
  ∀ n, (P13098257546548915317.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P15770872447837015159

`eq[2, A001222(n+1)]+1`
-/

namespace A001358.P15770872447837015159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001358.P15770872447837015159

namespace A001358

/-- `eq[2, A001222(n+1)]+1` -/
def P15770872447837015159.Spec : Prop :=
  ∀ n, (P15770872447837015159.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P7171960539939060279

`eq[2, A008481(n+1)]+1`
-/

namespace A001358.P7171960539939060279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001358.P7171960539939060279

namespace A001358

/-- `eq[2, A008481(n+1)]+1` -/
def P7171960539939060279.Spec : Prop :=
  ∀ n, (P7171960539939060279.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P2079177856845046022

`eq[2, A033273(n+1)]+1`
-/

namespace A001358.P2079177856845046022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001358.P2079177856845046022

namespace A001358

/-- `eq[2, A033273(n+1)]+1` -/
def P2079177856845046022.Spec : Prop :=
  ∀ n, (P2079177856845046022.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P17631251855199181531

`eq[2, A050379(n+1)]+1`
-/

namespace A001358.P17631251855199181531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001358.P17631251855199181531

namespace A001358

/-- `eq[2, A050379(n+1)]+1` -/
def P17631251855199181531.Spec : Prop :=
  ∀ n, (P17631251855199181531.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P17122284967012233891

`eq[2, A342085(n+1)]+1`
-/

namespace A001358.P17122284967012233891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A001358.P17122284967012233891

namespace A001358

/-- `eq[2, A342085(n+1)]+1` -/
def P17122284967012233891.Spec : Prop :=
  ∀ n, (P17122284967012233891.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P8258762178056053439

`A175708(n+1)+1+n`
-/

namespace A001358.P8258762178056053439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

end

end A001358.P8258762178056053439

namespace A001358

/-- `A175708(n+1)+1+n` -/
def P8258762178056053439.Spec : Prop :=
  ∀ n, P8258762178056053439.a n = A001358 (n + 1)

theorem P8258762178056053439.correct : P8258762178056053439.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel, A001358.P8258762178056053439.a, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001358

/-! ## A001358.P5027735081031153321

`A100493(n+1)-(n+1)`
-/

namespace A001358.P5027735081031153321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

end

end A001358.P5027735081031153321

namespace A001358

/-- `A100493(n+1)-(n+1)` -/
def P5027735081031153321.Spec : Prop :=
  ∀ n, P5027735081031153321.a n = A001358 (n + 1)

theorem P5027735081031153321.correct : P5027735081031153321.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel, A001358.P5027735081031153321.a, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A230595, A230595.P9035268919760195541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001358

/-! ## A001358.P6733745627091609156

`A065516(n)+a(n-1)` with `a(0)=4`
-/

namespace A001358.P6733745627091609156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A065516 n + a (n - 1)

end

end A001358.P6733745627091609156

namespace A001358

/-- `A065516(n)+a(n-1)` -/
def P6733745627091609156.Spec : Prop :=
  ∀ n, P6733745627091609156.a n = A001358 (n + 1)

end A001358

/-! ## A001358.P8547266871295191198

`A118717(n)-a(n-1)` with `a(0)=4`
-/

namespace A001358.P8547266871295191198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A118717 n - a (n - 1)

end

end A001358.P8547266871295191198

namespace A001358

/-- `A118717(n)-a(n-1)` -/
def P8547266871295191198.Spec : Prop :=
  ∀ n, P8547266871295191198.a n = A001358 (n + 1)

end A001358

/-! ## A001358.P5382745371144265508

`eq[n, n-a(A001222(n))]` with `a(0)=1, a(1)=2`
-/

namespace A001358.P5382745371144265508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001358.P5382745371144265508

namespace A001358

/-- `eq[n, n-a(A001222(n))]` -/
def P5382745371144265508.Spec : Prop :=
  ∀ n, (P5382745371144265508.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P521746778264395664

`∪[A099980(n), A099981(n)]`
-/

namespace A001358.P521746778264395664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099981 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001358.P521746778264395664

namespace A001358

/-- `∪[A099980(n), A099981(n)]` -/
def P521746778264395664.Spec : Prop :=
  ∀ n, (P521746778264395664.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P12614375381458527930

`∪[A006881(n+1), A033476(n)]`
-/

namespace A001358.P12614375381458527930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001358.P12614375381458527930

namespace A001358

/-- `∪[A006881(n+1), A033476(n)]` -/
def P12614375381458527930.Spec : Prop :=
  ∀ n, (P12614375381458527930.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P14400367087259882712

`∪[A089995(n+1), A033476(n)]`
-/

namespace A001358.P14400367087259882712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001358.P14400367087259882712

namespace A001358

/-- `∪[A089995(n+1), A033476(n)]` -/
def P14400367087259882712.Spec : Prop :=
  ∀ n, (P14400367087259882712.a n : ℤ) = A001358 (n + 1)

end A001358

/-! ## A001358.P12504807926623345839

`A176347(n+1)+A068318(n+1)`
-/

namespace A001358.P12504807926623345839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176347 (n + 1) + A068318 (n + 1)

end

end A001358.P12504807926623345839

namespace A001358

/-- `A176347(n+1)+A068318(n+1)` -/
def P12504807926623345839.Spec : Prop :=
  ∀ n, P12504807926623345839.a n = A001358 (n + 1)

theorem P12504807926623345839.correct : P12504807926623345839.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel, A001358.P12504807926623345839.a, A001358.P632087320844056370.a, A068318, A068318.P11836828238925648689.a, A088707, A088707.P7291141647877559993.a, A176347, A176347.P9883716587743327041.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001358

/-! ## A001358.P2035469368403355445

`A178610(n+1)+A176506(n+1)`
-/

namespace A001358.P2035469368403355445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178610 (n + 1) + A176506 (n + 1)

end

end A001358.P2035469368403355445

namespace A001358

/-- `A178610(n+1)+A176506(n+1)` -/
def P2035469368403355445.Spec : Prop :=
  ∀ n, P2035469368403355445.a n = A001358 (n + 1)

theorem P2035469368403355445.correct : P2035469368403355445.Spec := by
  intro n
  simp only [A001358, Nat.add_sub_cancel, A001358.P2035469368403355445.a, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A176506, A176506.P10839499400759222980.a, A178610, A178610.P3507936517445186257.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A072000, A072000.P3706059858088101648.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A006530, A006530.P13372528560459906635.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A001358

/-!
# A001359: Lesser of twin primes.

The programs for A001359, the canonical program `A001359.P8865495035699438537` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001359 has offset 1).

The definition of A001359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001359.P8865495035699438537

`A077800(2*n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A001359

/-- `A077800(2*n+1)` -/
def P8865495035699438537.Spec : Prop :=
  ∀ n, P8865495035699438537.a n = A001359 (n + 1)

theorem P8865495035699438537.correct : P8865495035699438537.Spec := by
  intro n
  simp only [A001359, Nat.add_sub_cancel]

end A001359

/-! ## A001359.P5725744877352533520

`A144834(n+1)+1`
-/

namespace A001359.P5725744877352533520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 1

end

end A001359.P5725744877352533520

namespace A001359

/-- `A144834(n+1)+1` -/
def P5725744877352533520.Spec : Prop :=
  ∀ n, P5725744877352533520.a n = A001359 (n + 1)

theorem P5725744877352533520.correct : P5725744877352533520.Spec := by
  intro n
  simp only [A001359, Nat.add_sub_cancel, A001359.P5725744877352533520.a, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A144834, A144834.P8121320371945032170.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001359

/-! ## A001359.P5939513553306491934

`A014574(n+1)-1`
-/

namespace A001359.P5939513553306491934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 1

end

end A001359.P5939513553306491934

namespace A001359

/-- `A014574(n+1)-1` -/
def P5939513553306491934.Spec : Prop :=
  ∀ n, P5939513553306491934.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P5429482330893405519

`A006512(n+1)-2`
-/

namespace A001359.P5429482330893405519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

end

end A001359.P5429482330893405519

namespace A001359

/-- `A006512(n+1)-2` -/
def P5429482330893405519.Spec : Prop :=
  ∀ n, P5429482330893405519.a n = A001359 (n + 1)

theorem P5429482330893405519.correct : P5429482330893405519.Spec := by
  intro n
  simp only [A001359, Nat.add_sub_cancel, A001359.P5429482330893405519.a, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001359

/-! ## A001359.P8620806606557200127

`A108605(n+1)/2`
-/

namespace A001359.P8620806606557200127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108605 (n + 1) : ℚ) / 2

end

end A001359.P8620806606557200127

namespace A001359

/-- `A108605(n+1)/2` -/
def P8620806606557200127.Spec : Prop :=
  ∀ n, P8620806606557200127.a n = (A001359 (n + 1) : ℚ)

theorem P8620806606557200127.correct : P8620806606557200127.Spec := by
  intro n
  simp only [A001359, Nat.add_sub_cancel, A001359.P8620806606557200127.a, A001359.P8865495035699438537.a, A077800, A077800.P16009445446139691322.a, A108605, A108605.P8129486271106036592.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001359

/-! ## A001359.P7317660375341321212

`or(1, A111166(n+1))`
-/

namespace A001359.P7317660375341321212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A111166 (n + 1))

end

end A001359.P7317660375341321212

namespace A001359

/-- `or(1, A111166(n+1))` -/
def P7317660375341321212.Spec : Prop :=
  ∀ n, P7317660375341321212.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P14103970900438442633

`floor(sqrt(A037074(n+1)))`
-/

namespace A001359.P14103970900438442633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A037074 (n + 1))

end

end A001359.P14103970900438442633

namespace A001359

/-- `floor(sqrt(A037074(n+1)))` -/
def P14103970900438442633.Spec : Prop :=
  ∀ n, P14103970900438442633.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P18263000136230379299

`floor(sqrt(A120875(n+1)))`
-/

namespace A001359.P18263000136230379299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A120875 (n + 1))

end

end A001359.P18263000136230379299

namespace A001359

/-- `floor(sqrt(A120875(n+1)))` -/
def P18263000136230379299.Spec : Prop :=
  ∀ n, P18263000136230379299.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P12728894855332238419

`sqrt(A075369(n+1))-1`
-/

namespace A001359.P12728894855332238419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A075369 (n + 1) : ℝ) - 1

end

end A001359.P12728894855332238419

namespace A001359

/-- `sqrt(A075369(n+1))-1` -/
def P12728894855332238419.Spec : Prop :=
  ∀ n, P12728894855332238419.a n = (A001359 (n + 1) : ℝ)

end A001359

/-! ## A001359.P14169690339370959550

`2*A040040(n+1)-1`
-/

namespace A001359.P14169690339370959550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - 1

end

end A001359.P14169690339370959550

namespace A001359

/-- `2*A040040(n+1)-1` -/
def P14169690339370959550.Spec : Prop :=
  ∀ n, P14169690339370959550.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P17989335716532235242

`A054735(n+1)/2-1`
-/

namespace A001359.P17989335716532235242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) : ℚ) / 2 - 1

end

end A001359.P17989335716532235242

namespace A001359

/-- `A054735(n+1)/2-1` -/
def P17989335716532235242.Spec : Prop :=
  ∀ n, P17989335716532235242.a n = (A001359 (n + 1) : ℚ)

end A001359

/-! ## A001359.P14240540149553117723

`A053319(n)+a(n-1)` with `a(0)=3`
-/

namespace A001359.P14240540149553117723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A053319 n + a (n - 1)

end

end A001359.P14240540149553117723

namespace A001359

/-- `A053319(n)+a(n-1)` -/
def P14240540149553117723.Spec : Prop :=
  ∀ n, P14240540149553117723.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P3608533656354618435

`A111166(n+1)+A000007(n)`
-/

namespace A001359.P3608533656354618435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1) + A000007 n

end

end A001359.P3608533656354618435

namespace A001359

/-- `A111166(n+1)+A000007(n)` -/
def P3608533656354618435.Spec : Prop :=
  ∀ n, P3608533656354618435.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P15416328251902501341

`A107309(n)%A006512(n+1)`
-/

namespace A001359.P15416328251902501341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107309 n) (A006512 (n + 1))

end

end A001359.P15416328251902501341

namespace A001359

/-- `A107309(n)%A006512(n+1)` -/
def P15416328251902501341.Spec : Prop :=
  ∀ n, P15416328251902501341.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P6714966365382852332

`A088175(n+1)+A084290(n+1)`
-/

namespace A001359.P6714966365382852332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1) + A084290 (n + 1)

end

end A001359.P6714966365382852332

namespace A001359

/-- `A088175(n+1)+A084290(n+1)` -/
def P6714966365382852332.Spec : Prop :=
  ∀ n, P6714966365382852332.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P2558078263684274169

`A169643(n+1)+A029707(n+1)`
-/

namespace A001359.P2558078263684274169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169643 (n + 1) + A029707 (n + 1)

end

end A001359.P2558078263684274169

namespace A001359

/-- `A169643(n+1)+A029707(n+1)` -/
def P2558078263684274169.Spec : Prop :=
  ∀ n, P2558078263684274169.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P8367013853171507494

`A167132(n+1)+A135284(n+1)`
-/

namespace A001359.P8367013853171507494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + A135284 (n + 1)

end

end A001359.P8367013853171507494

namespace A001359

/-- `A167132(n+1)+A135284(n+1)` -/
def P8367013853171507494.Spec : Prop :=
  ∀ n, P8367013853171507494.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P9201001701920629168

`A037074(n+1)/A006512(n+1)`
-/

namespace A001359.P9201001701920629168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 1) : ℚ) / (A006512 (n + 1) : ℚ)

end

end A001359.P9201001701920629168

namespace A001359

/-- `A037074(n+1)/A006512(n+1)` -/
def P9201001701920629168.Spec : Prop :=
  ∀ n, P9201001701920629168.a n = (A001359 (n + 1) : ℚ)

end A001359

/-! ## A001359.P8814546774898710138

`A037074(n+1)%A014574(n+1)`
-/

namespace A001359.P8814546774898710138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037074 (n + 1)) (A014574 (n + 1))

end

end A001359.P8814546774898710138

namespace A001359

/-- `A037074(n+1)%A014574(n+1)` -/
def P8814546774898710138.Spec : Prop :=
  ∀ n, P8814546774898710138.a n = A001359 (n + 1)

end A001359

/-! ## A001359.P17447949314064305212

`A054735(n+1)%A006512(n+1)`
-/

namespace A001359.P17447949314064305212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054735 (n + 1)) (A006512 (n + 1))

end

end A001359.P17447949314064305212

namespace A001359

/-- `A054735(n+1)%A006512(n+1)` -/
def P17447949314064305212.Spec : Prop :=
  ∀ n, P17447949314064305212.a n = A001359 (n + 1)

end A001359

/-!
# A001360: Crystal ball sequence for hyperbolic tessellation 3^7 (from triangle group (2,3,7)).

The programs for A001360, the canonical program `A001360.P6996103815826809280` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001360 has offset 0).

The definition of A001360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001360.P6996103815826809280

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=29`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001360

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P6996103815826809280.Spec : Prop :=
  ∀ n, P6996103815826809280.a n = A001360 n

theorem P6996103815826809280.correct : P6996103815826809280.Spec := by
  intro n
  simp only [A001360]

end A001360

/-! ## A001360.P2311942395589470275

`∑[ogf((1+4x+x^2)/(1-3x+x^2))]`
-/

namespace A001360.P2311942395589470275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001360.P2311942395589470275

namespace A001360

/-- `∑[ogf((1+4x+x^2)/(1-3x+x^2))]` -/
def P2311942395589470275.Spec : Prop :=
  ∀ n, P2311942395589470275.a n = A001360 n

end A001360

/-! ## A001360.P7251499140904631024

`ogf((1+4x+x^2)/(1-4x+4x^2-x^3))`
-/

namespace A001360.P7251499140904631024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -4, 4, -1] n

end

end A001360.P7251499140904631024

namespace A001360

/-- `ogf((1+4x+x^2)/(1-4x+4x^2-x^3))` -/
def P7251499140904631024.Spec : Prop :=
  ∀ n, P7251499140904631024.a n = A001360 n

end A001360

/-! ## A001360.P7593477300428280976

`record[a(n-2)-(a(n-1)+6)]` with `a(0)=1, a(1)=1`
-/

namespace A001360.P7593477300428280976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001360.P7593477300428280976

namespace A001360

/-- `record[a(n-2)-(a(n-1)+6)]` -/
def P7593477300428280976.Spec : Prop :=
  ∀ n, P7593477300428280976.a n = A001360 n

end A001360

/-! ## A001360.P8205500358633111167

`record[a(n-2)-6-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A001360.P8205500358633111167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001360.P8205500358633111167

namespace A001360

/-- `record[a(n-2)-6-a(n-1)]` -/
def P8205500358633111167.Spec : Prop :=
  ∀ n, P8205500358633111167.a n = A001360 n

end A001360

/-! ## A001360.P14550978485273552164

`3*(a(n-1)+2)-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A001360.P14550978485273552164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  3 * (a (n - 1) + 2) - a (n - 2)

end

end A001360.P14550978485273552164

namespace A001360

/-- `3*(a(n-1)+2)-a(n-2)` -/
def P14550978485273552164.Spec : Prop :=
  ∀ n, P14550978485273552164.a n = A001360 n

end A001360

/-! ## A001360.P5704852685683563045

`3*a(n-1)-(a(n-2)-6)` with `a(0)=1, a(1)=8`
-/

namespace A001360.P5704852685683563045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  3 * a (n - 1) - (a (n - 2) - 6)

end

end A001360.P5704852685683563045

namespace A001360

/-- `3*a(n-1)-(a(n-2)-6)` -/
def P5704852685683563045.Spec : Prop :=
  ∀ n, P5704852685683563045.a n = A001360 n

end A001360

/-! ## A001360.P6714780970200194266

`∑[A001354(n)]`
-/

namespace A001360.P6714780970200194266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001360.P6714780970200194266

namespace A001360

/-- `∑[A001354(n)]` -/
def P6714780970200194266.Spec : Prop :=
  ∀ n, P6714780970200194266.a n = A001360 n

end A001360

/-! ## A001360.P3036182500763619117

`∑[A022090(2*n)]+1`
-/

namespace A001360.P3036182500763619117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A001360.P3036182500763619117

namespace A001360

/-- `∑[A022090(2*n)]+1` -/
def P3036182500763619117.Spec : Prop :=
  ∀ n, P3036182500763619117.a n = A001360 n

end A001360

/-! ## A001360.P9462266082916524462

`A022090(2*n+1)-6`
-/

namespace A001360.P9462266082916524462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 (2 * n + 1) - 6

end

end A001360.P9462266082916524462

namespace A001360

/-- `A022090(2*n+1)-6` -/
def P9462266082916524462.Spec : Prop :=
  ∀ n, P9462266082916524462.a n = A001360 n

end A001360

/-! ## A001360.P15699186461283518032

`∑[7*A000045(2*n)]+1`
-/

namespace A001360.P15699186461283518032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A001360.P15699186461283518032

namespace A001360

/-- `∑[7*A000045(2*n)]+1` -/
def P15699186461283518032.Spec : Prop :=
  ∀ n, P15699186461283518032.a n = A001360 n

end A001360

/-! ## A001360.P10929524748659021138

`7*(A001519(n+1)-1)+1`
-/

namespace A001360.P10929524748659021138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A001519 (n + 1) - 1) + 1

end

end A001360.P10929524748659021138

namespace A001360

/-- `7*(A001519(n+1)-1)+1` -/
def P10929524748659021138.Spec : Prop :=
  ∀ n, P10929524748659021138.a n = A001360 n

end A001360

/-! ## A001360.P15502930739658113350

`7*A000071(2*n+1)+1`
-/

namespace A001360.P15502930739658113350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000071 (2 * n + 1) + 1

end

end A001360.P15502930739658113350

namespace A001360

/-- `7*A000071(2*n+1)+1` -/
def P15502930739658113350.Spec : Prop :=
  ∀ n, P15502930739658113350.a n = A001360 n

end A001360

/-! ## A001360.P12014749548407958430

`7*A000045(2*n+1)-6`
-/

namespace A001360.P12014749548407958430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000045 (2 * n + 1) - 6

end

end A001360.P12014749548407958430

namespace A001360

/-- `7*A000045(2*n+1)-6` -/
def P12014749548407958430.Spec : Prop :=
  ∀ n, P12014749548407958430.a n = A001360 n

end A001360

/-! ## A001360.P10519557884708805117

`A131326(2*n)+A131328(2*n)-1`
-/

namespace A001360.P10519557884708805117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 (2 * n) + (A131328 (2 * n) - 1)

end

end A001360.P10519557884708805117

namespace A001360

/-- `A131326(2*n)+A131328(2*n)-1` -/
def P10519557884708805117.Spec : Prop :=
  ∀ n, P10519557884708805117.a n = A001360 n

end A001360

/-! ## A001360.P10037294565326318970

`A111721(2*n+1)-A187892(2*n)`
-/

namespace A001360.P10037294565326318970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 (2 * n + 1) - A187892 (2 * n)

end

end A001360.P10037294565326318970

namespace A001360

/-- `A111721(2*n+1)-A187892(2*n)` -/
def P10037294565326318970.Spec : Prop :=
  ∀ n, P10037294565326318970.a n = A001360 n

end A001360

/-! ## A001360.P7076321205342953757

`A111721(2*n)-A355020(2*n+1)`
-/

namespace A001360.P7076321205342953757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 (2 * n) - A355020 (2 * n + 1)

end

end A001360.P7076321205342953757

namespace A001360

/-- `A111721(2*n)-A355020(2*n+1)` -/
def P7076321205342953757.Spec : Prop :=
  ∀ n, P7076321205342953757.a n = A001360 n

end A001360

/-! ## A001360.P11844444384894393969

`A000032(2*n)+A182415(2*n)-2`
-/

namespace A001360.P11844444384894393969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) + (A182415 (2 * n) - 2)

end

end A001360.P11844444384894393969

namespace A001360

/-- `A000032(2*n)+A182415(2*n)-2` -/
def P11844444384894393969.Spec : Prop :=
  ∀ n, P11844444384894393969.a n = A001360 n

end A001360

/-! ## A001360.P5550163309157849481

`A111721(2*n)+A019274(2*n+1)/2`
-/

namespace A001360.P5550163309157849481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111721 (2 * n) : ℚ) + (A019274 (2 * n + 1) : ℚ) / 2

end

end A001360.P5550163309157849481

namespace A001360

/-- `A111721(2*n)+A019274(2*n+1)/2` -/
def P5550163309157849481.Spec : Prop :=
  ∀ n, P5550163309157849481.a n = (A001360 n : ℚ)

end A001360

/-! ## A001360.P13314303330797142014

`2*A171516(2*n)-A000032(2*n+1)`
-/

namespace A001360.P13314303330797142014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171516 (2 * n) - A000032 (2 * n + 1)

end

end A001360.P13314303330797142014

namespace A001360

/-- `2*A171516(2*n)-A000032(2*n+1)` -/
def P13314303330797142014.Spec : Prop :=
  ∀ n, P13314303330797142014.a n = A001360 n

end A001360

/-!
# A001362: Number of ways of making change for n cents using coins of 1, 2, 4, 10 cents.

The programs for A001362, the canonical program `A001362.P13223363084705303633` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001362 has offset 0).

The definition of A001362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001362.P10475360964592361477

`A029013(or(1, n))`
-/

namespace A001362.P10475360964592361477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (Nat.lor 1 n)

end

end A001362.P10475360964592361477

namespace A001362

/-- `A029013(or(1, n))` -/
def P10475360964592361477.Spec : Prop :=
  ∀ n, P10475360964592361477.a n = A001362 n

end A001362

/-! ## A001362.P13223363084705303633

`A001304(floor(n/2))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001362

/-- `A001304(floor(n/2))` -/
def P13223363084705303633.Spec : Prop :=
  ∀ n, P13223363084705303633.a n = A001362 n

theorem P13223363084705303633.correct : P13223363084705303633.Spec := by
  intro n
  simp only [A001362]

end A001362

/-! ## A001362.P16045559015290336725

`A029013(A109613(n))`
-/

namespace A001362.P16045559015290336725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (A109613 n).toNat

end

end A001362.P16045559015290336725

namespace A001362

/-- `A029013(A109613(n))` -/
def P16045559015290336725.Spec : Prop :=
  ∀ n, P16045559015290336725.a n = A001362 n

end A001362

/-! ## A001362.P12134523395398855435

`A029013(A063196(n+1))`
-/

namespace A001362.P12134523395398855435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029013 (A063196 (n + 1)).toNat

end

end A001362.P12134523395398855435

namespace A001362

/-- `A029013(A063196(n+1))` -/
def P12134523395398855435.Spec : Prop :=
  ∀ n, P12134523395398855435.a n = A001362 n

end A001362

/-! ## A001362.P8936727594906605913

`A001299(floor(n/2)+2*n)`
-/

namespace A001362.P8936727594906605913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001299 (⌊(n : ℚ) / 2⌋ + (2 * n : ℤ)).toNat

end

end A001362.P8936727594906605913

namespace A001362

/-- `A001299(floor(n/2)+2*n)` -/
def P8936727594906605913.Spec : Prop :=
  ∀ n, P8936727594906605913.a n = A001362 n

end A001362

/-! ## A001362.P1351157321097649697

`A029304(3*n)`
-/

namespace A001362.P1351157321097649697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029304 (3 * n)

end

end A001362.P1351157321097649697

namespace A001362

/-- `A029304(3*n)` -/
def P1351157321097649697.Spec : Prop :=
  ∀ n, P1351157321097649697.a n = A001362 n

end A001362

/-!
# A001363: Primes in ternary.

The programs for A001363, the canonical program `A001363.P2082699172038580249` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001363 has offset 1).

The definition of A001363 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001363.P2082699172038580249

`A007089(A000040(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001363

/-- `A007089(A000040(n+1))` -/
def P2082699172038580249.Spec : Prop :=
  ∀ n, P2082699172038580249.a n = A001363 (n + 1)

theorem P2082699172038580249.correct : P2082699172038580249.Spec := by
  intro n
  simp only [A001363, Nat.add_sub_cancel]

end A001363

/-! ## A001363.P10647046838202755592

`A007089(∏{p}[p?[xor(1, n)+1], #])`
-/

namespace A001363.P10647046838202755592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A001363.P10647046838202755592

namespace A001363

/-- `A007089(∏{p}[p?[xor(1, n)+1], #])` -/
def P10647046838202755592.Spec : Prop :=
  ∀ n, P10647046838202755592.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P10226673763562514461

`A343810(∏{p}[p?[xor(1, n)+1], #])/4`
-/

namespace A001363.P10226673763562514461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / 4

end

end A001363.P10226673763562514461

namespace A001363

/-- `A343810(∏{p}[p?[xor(1, n)+1], #])/4` -/
def P10226673763562514461.Spec : Prop :=
  ∀ n, P10226673763562514461.a n = (A001363 (n + 1) : ℚ)

end A001363

/-! ## A001363.P15515117234609608574

`A007089(Δ[A007504(n)])`
-/

namespace A001363.P15515117234609608574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (n + 1) - f1 n).toNat

end

end A001363.P15515117234609608574

namespace A001363

/-- `A007089(Δ[A007504(n)])` -/
def P15515117234609608574.Spec : Prop :=
  ∀ n, P15515117234609608574.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P1191530955789674128

`A007089(p?[A014681(n)])`
-/

namespace A001363.P1191530955789674128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A001363.P1191530955789674128

namespace A001363

/-- `A007089(p?[A014681(n)])` -/
def P1191530955789674128.Spec : Prop :=
  ∀ n, P1191530955789674128.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P14652043119092279222

`A007089(A008578(n+2))`
-/

namespace A001363.P14652043119092279222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A008578 (n + 2)).toNat

end

end A001363.P14652043119092279222

namespace A001363

/-- `A007089(A008578(n+2))` -/
def P14652043119092279222.Spec : Prop :=
  ∀ n, P14652043119092279222.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P2887072176802412456

`A007089(A182986(n+2))`
-/

namespace A001363.P2887072176802412456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A182986 (n + 2)).toNat

end

end A001363.P2887072176802412456

namespace A001363

/-- `A007089(A182986(n+2))` -/
def P2887072176802412456.Spec : Prop :=
  ∀ n, P2887072176802412456.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P5101020012038569968

`A007089(eq[1, A302055(n)])`
-/

namespace A001363.P5101020012038569968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001363.P5101020012038569968

namespace A001363

/-- `A007089(eq[1, A302055(n)])` -/
def P5101020012038569968.Spec : Prop :=
  ∀ n, P5101020012038569968.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P1254366938334678752

`A007089(eq[2, A225244(n)])`
-/

namespace A001363.P1254366938334678752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001363.P1254366938334678752

namespace A001363

/-- `A007089(eq[2, A225244(n)])` -/
def P1254366938334678752.Spec : Prop :=
  ∀ n, P1254366938334678752.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P6886520844055160448

`A007089(p?[A003277(n+1)])`
-/

namespace A001363.P6886520844055160448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A001363.P6886520844055160448

namespace A001363

/-- `A007089(p?[A003277(n+1)])` -/
def P6886520844055160448.Spec : Prop :=
  ∀ n, P6886520844055160448.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P4663412026344928671

`A007089(record[A006530(n+2)])`
-/

namespace A001363.P4663412026344928671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001363.P4663412026344928671

namespace A001363

/-- `A007089(record[A006530(n+2)])` -/
def P4663412026344928671.Spec : Prop :=
  ∀ n, P4663412026344928671.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P9072290892024192871

`A007089(record[A014963(n+2)])`
-/

namespace A001363.P9072290892024192871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001363.P9072290892024192871

namespace A001363

/-- `A007089(record[A014963(n+2)])` -/
def P9072290892024192871.Spec : Prop :=
  ∀ n, P9072290892024192871.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P3106535574417325333

`A007089(record[A020639(n+2)])`
-/

namespace A001363.P3106535574417325333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001363.P3106535574417325333

namespace A001363

/-- `A007089(record[A020639(n+2)])` -/
def P3106535574417325333.Spec : Prop :=
  ∀ n, P3106535574417325333.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P13450144068943713451

`A007089(A006093(n+1)+1)`
-/

namespace A001363.P13450144068943713451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A006093 (n + 1) + 1).toNat

end

end A001363.P13450144068943713451

namespace A001363

/-- `A007089(A006093(n+1)+1)` -/
def P13450144068943713451.Spec : Prop :=
  ∀ n, P13450144068943713451.a n = A001363 (n + 1)

theorem P13450144068943713451.correct : P13450144068943713451.Spec := by
  intro n
  simp only [A001363, Nat.add_sub_cancel, A001363.P13450144068943713451.a, A001363.P2082699172038580249.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A007089, A007089.P1807555167867376115.a, A024635, A024635.P13832029080543762616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A001363

/-! ## A001363.P15592026778859234388

`A007089(record[A000010(n+1)+1])`
-/

namespace A001363.P15592026778859234388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001363.P15592026778859234388

namespace A001363

/-- `A007089(record[A000010(n+1)+1])` -/
def P15592026778859234388.Spec : Prop :=
  ∀ n, P15592026778859234388.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P16110342258171673536

`A343810(record[A006530(n+2)])/4`
-/

namespace A001363.P16110342258171673536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 4

end

end A001363.P16110342258171673536

namespace A001363

/-- `A343810(record[A006530(n+2)])/4` -/
def P16110342258171673536.Spec : Prop :=
  ∀ n, P16110342258171673536.a n = (A001363 (n + 1) : ℚ)

end A001363

/-! ## A001363.P9485970275194254477

`A343810(record[A020639(n+2)])/4`
-/

namespace A001363.P9485970275194254477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 4

end

end A001363.P9485970275194254477

namespace A001363

/-- `A343810(record[A020639(n+2)])/4` -/
def P9485970275194254477.Spec : Prop :=
  ∀ n, P9485970275194254477.a n = (A001363 (n + 1) : ℚ)

end A001363

/-! ## A001363.P7431370938565527352

`A007089(eq[1, A001222(n+1)]+1)`
-/

namespace A001363.P7431370938565527352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A001363.P7431370938565527352

namespace A001363

/-- `A007089(eq[1, A001222(n+1)]+1)` -/
def P7431370938565527352.Spec : Prop :=
  ∀ n, P7431370938565527352.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P16078725015219067927

`A007089(eq[n, A000010(n+1)]+1)`
-/

namespace A001363.P16078725015219067927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A001363.P16078725015219067927

namespace A001363

/-- `A007089(eq[n, A000010(n+1)]+1)` -/
def P16078725015219067927.Spec : Prop :=
  ∀ n, P16078725015219067927.a n = A001363 (n + 1)

end A001363

/-! ## A001363.P3291046280021470099

`A007089(lt[n, A000010(n+2)]+2)`
-/

namespace A001363.P3291046280021470099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A001363.P3291046280021470099

namespace A001363

/-- `A007089(lt[n, A000010(n+2)]+2)` -/
def P3291046280021470099.Spec : Prop :=
  ∀ n, P3291046280021470099.a n = A001363 (n + 1)

end A001363

/-!
# A001365: Expansion of 1/(1-x)^2/(1-x^2)/(1-x^6)/(1-x^12)/(1-x^24)/(1-x^48)/(1-x^60).

The programs for A001365, there is no canonical definition to state claims against.
-/

/-! ## A001365.P8994675893203433289

`∑[A278163(A114900(floor(n/2)))]`
-/

namespace A001365.P8994675893203433289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278163 (A114900 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001365.P8994675893203433289

/-! ## A001365.P7959839318610074108

`∑[A349675(n)%A157478(n+1)]`
-/

namespace A001365.P7959839318610074108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349675 n) (A157478 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001365.P7959839318610074108

/-! ## A001365.P15314905558359164196

`∑[A349675(n)]%A094372(3*n+5)`
-/

namespace A001365.P15314905558359164196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A094372 (3 * n + 5))

end

end A001365.P15314905558359164196

/-! ## A001365.P14473878335153361200

`∑[A349675(n)]%A336679(n+1)`
-/

namespace A001365.P14473878335153361200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A336679 (n + 1))

end

end A001365.P14473878335153361200

/-! ## A001365.P8028404840884662026

`A334028(A174616(n))+A090631(n)`
-/

namespace A001365.P8028404840884662026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A174616 n).toNat + A090631 n

end

end A001365.P8028404840884662026

/-!
# A001367: Solution to f(2) = 1, f(n) = sqrt(n) f(sqrt(n)) + n at values n = 2^2^i.

The programs for A001367, the canonical program `A001367.P5853590061337142348` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001367 has offset 0).

The definition of A001367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001367.P5853590061337142348

`2^(2^n-1)*(2*n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001367

/-- `2^(2^n-1)*(2*n+1)` -/
def P5853590061337142348.Spec : Prop :=
  ∀ n, P5853590061337142348.a n = (A001367 n : ℚ)

end A001367

/-! ## A001367.P14019139740331529207

`lcm(2^(2^n-1), Δ[n²])`
-/

namespace A001367.P14019139740331529207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001367.P14019139740331529207

namespace A001367

/-- `lcm(2^(2^n-1), Δ[n²])` -/
def P14019139740331529207.Spec : Prop :=
  ∀ n, (P14019139740331529207.a n : ℤ) = A001367 n

end A001367

/-! ## A001367.P4450629270753072683

`Δ[n²]*A001146(n)/2`
-/

namespace A001367.P4450629270753072683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001146 n : ℚ) / 2

end

end A001367.P4450629270753072683

namespace A001367

/-- `Δ[n²]*A001146(n)/2` -/
def P4450629270753072683.Spec : Prop :=
  ∀ n, P4450629270753072683.a n = (A001367 n : ℚ)

end A001367

/-!
# A001370: Sum of digits of 2^n.

The programs for A001370, the canonical program `A001370.P13283257347180374488` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001370 has offset 0).

The definition of A001370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001370.P13283257347180374488

`A007953(A000079(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001370

/-- `A007953(A000079(n))` -/
def P13283257347180374488.Spec : Prop :=
  ∀ n, P13283257347180374488.a n = A001370 n

theorem P13283257347180374488.correct : P13283257347180374488.Spec := by
  intro n
  simp only [A001370]

end A001370

/-! ## A001370.P6271469897220207437

`A066001(n)-A354618(n)`
-/

namespace A001370.P6271469897220207437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066001 n - A354618 n

end

end A001370.P6271469897220207437

namespace A001370

/-- `A066001(n)-A354618(n)` -/
def P6271469897220207437.Spec : Prop :=
  ∀ n, P6271469897220207437.a n = A001370 n

end A001370

/-! ## A001370.P11066437627186409208

`∑{digits}[A028909(n), #]`
-/

namespace A001370.P11066437627186409208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A001370.P11066437627186409208

namespace A001370

/-- `∑{digits}[A028909(n), #]` -/
def P11066437627186409208.Spec : Prop :=
  ∀ n, (P11066437627186409208.a n : ℤ) = A001370 n

end A001370

/-! ## A001370.P4658199710203934533

`∑{digits}[2^n, #]`
-/

namespace A001370.P4658199710203934533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A001370.P4658199710203934533

namespace A001370

/-- `∑{digits}[2^n, #]` -/
def P4658199710203934533.Spec : Prop :=
  ∀ n, (P4658199710203934533.a n : ℤ) = A001370 n

end A001370

/-! ## A001370.P5273061283097206046

`∑{digits}[A000225(n), #]+1`
-/

namespace A001370.P5273061283097206046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A001370.P5273061283097206046

namespace A001370

/-- `∑{digits}[A000225(n), #]+1` -/
def P5273061283097206046.Spec : Prop :=
  ∀ n, (P5273061283097206046.a n : ℤ) = A001370 n

end A001370

/-! ## A001370.P1896871096030348993

`2-4/2+∑{digits}[A077957(2*n), #]`
-/

namespace A001370.P1896871096030348993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ)

end

end A001370.P1896871096030348993

namespace A001370

/-- `2-4/2+∑{digits}[A077957(2*n), #]` -/
def P1896871096030348993.Spec : Prop :=
  ∀ n, P1896871096030348993.a n = (A001370 n : ℚ)

end A001370

/-! ## A001370.P5182300113926218829

`2-4/2+∑{digits}[A077966(2*n), #]`
-/

namespace A001370.P5182300113926218829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (4 : ℚ) / 2 + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ)

end

end A001370.P5182300113926218829

namespace A001370

/-- `2-4/2+∑{digits}[A077966(2*n), #]` -/
def P5182300113926218829.Spec : Prop :=
  ∀ n, P5182300113926218829.a n = (A001370 n : ℚ)

end A001370

/-! ## A001370.P16669261528901988155

`A023443(∑{digits}[A000051(n), #])`
-/

namespace A001370.P16669261528901988155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A001370.P16669261528901988155

namespace A001370

/-- `A023443(∑{digits}[A000051(n), #])` -/
def P16669261528901988155.Spec : Prop :=
  ∀ n, P16669261528901988155.a n = A001370 n

end A001370

/-! ## A001370.P674845604446940873

`log2(∏{digits}[2^n, 2^#])`
-/

namespace A001370.P674845604446940873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A001370.P674845604446940873

namespace A001370

/-- `log2(∏{digits}[2^n, 2^#])` -/
def P674845604446940873.Spec : Prop :=
  ∀ n, P674845604446940873.a n = (A001370 n : ℝ)

end A001370

/-! ## A001370.P4277282294212989021

`log2(A000079(∑{digits}[A000079(n), #]))`
-/

namespace A001370.P4277282294212989021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000079 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℝ)

end

end A001370.P4277282294212989021

namespace A001370

/-- `log2(A000079(∑{digits}[A000079(n), #]))` -/
def P4277282294212989021.Spec : Prop :=
  ∀ n, P4277282294212989021.a n = (A001370 n : ℝ)

end A001370

/-!
# A001371: Number of n-bead necklaces with beads of 2 colors and primitive period n, when turning over is allowed.

The programs for A001371, there is no canonical definition to state claims against.
-/

/-! ## A001371.P13383717581279159430

`∑{d}[n+1, A054160(#-1)]`
-/

namespace A001371.P13383717581279159430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054160 (d - 1)

end

end A001371.P13383717581279159430

/-! ## A001371.P6900920413849630338

`A000029(n)-A115119(n)`
-/

namespace A001371.P6900920413849630338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n - A115119 n

end

end A001371.P6900920413849630338

/-! ## A001371.P16919601317861914318

`∑{d}[n+1, A008683(#)*A054158((n+1)/#-1)]`
-/

namespace A001371.P16919601317861914318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A054158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A001371.P16919601317861914318

/-! ## A001371.P5486110934356297098

`A000029(n)+A057428(n)*A115119(n)`
-/

namespace A001371.P5486110934356297098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n + A057428 n * A115119 n

end

end A001371.P5486110934356297098

/-! ## A001371.P11762067278600618173

`A029744(n+1)+A059076(n)-A115119(n)`
-/

namespace A001371.P11762067278600618173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1) + (A059076 n - A115119 n)

end

end A001371.P11762067278600618173

/-! ## A001371.P2130826005488338268

`A000031(n)-(A115119(n)+A059076(n))`
-/

namespace A001371.P2130826005488338268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - (A115119 n + A059076 n)

end

end A001371.P2130826005488338268

/-! ## A001371.P15287080709262049330

`A276550(∑[1-char[1]+n])`
-/

namespace A001371.P15287080709262049330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001371.P15287080709262049330

/-!
# A001372: Number of unlabeled mappings (or mapping patterns) from n points to themselves; number of unlabeled endofunctions.

The programs for A001372, there is no canonical definition to state claims against.
-/

/-! ## A001372.P5103217077411365830

`∑[A381123(n)]`
-/

namespace A001372.P5103217077411365830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001372.P5103217077411365830

/-! ## A001372.P13636847839879591669

`A126285(n)-A127911(n)`
-/

namespace A001372.P13636847839879591669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126285 n - A127911 n

end

end A001372.P13636847839879591669

/-! ## A001372.P9963222647350171167

`A126285(n)+A057428(n)*A127911(n)`
-/

namespace A001372.P9963222647350171167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126285 n + A057428 n * A127911 n

end

end A001372.P9963222647350171167

/-! ## A001372.P8005594842889690090

`A254529(n)/n!`
-/

namespace A001372.P8005594842889690090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / (Nat.factorial n : ℚ)

end

end A001372.P8005594842889690090

/-! ## A001372.P5342293973830056038

`A254529(n)/A000142(n)`
-/

namespace A001372.P5342293973830056038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / (A000142 n : ℚ)

end

end A001372.P5342293973830056038

/-! ## A001372.P10848816298865696342

`A254529(n)/∏[A028310(n)]`
-/

namespace A001372.P10848816298865696342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A001372.P10848816298865696342

/-! ## A001372.P1750731930377907808

`A254529(n)/A130850(A000217(n))`
-/

namespace A001372.P1750731930377907808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254529 n : ℚ) / (A130850 (A000217 n).toNat : ℚ)

end

end A001372.P1750731930377907808

/-!
# A001373: Number of functional digraphs (digraphs of functions on n nodes where every node has outdegree 1 and loops of length 1 are forbidden).

The programs for A001373, there is no canonical definition to state claims against.
-/

/-! ## A001373.P7482324070371885899

`A001372(n)-A217896(n)%A217896(n+1)`
-/

namespace A001373.P7482324070371885899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n - Int.tmod (A217896 n) (A217896 (n + 1))

end

end A001373.P7482324070371885899

/-! ## A001373.P18045296384024755848

`A001372(n)-A217896(n)%A127120(n)`
-/

namespace A001373.P18045296384024755848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n - Int.tmod (A217896 n) (A127120 n)

end

end A001373.P18045296384024755848

/-! ## A001373.P17748653829248253014

`A259471(A000124(n))-A217896(n)`
-/

namespace A001373.P17748653829248253014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (A000124 n).toNat - A217896 n

end

end A001373.P17748653829248253014

/-! ## A001373.P618086289078590229

`A362899(∑[n+2]-1)`
-/

namespace A001373.P618086289078590229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362899 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001373.P618086289078590229

/-! ## A001373.P4683075328596650622

`A001372(n)-A217896(A055645(n))`
-/

namespace A001373.P4683075328596650622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001372 n - A217896 (A055645 n).toNat

end

end A001373.P4683075328596650622

/-!
# A001374: Number of relational systems on n nodes. Also number of directed 3-multigraphs with loops on n nodes.

The programs for A001374, there is no canonical definition to state claims against.
-/

/-! ## A001374.P4634027485290782120

`A003086(2*n+3)`
-/

namespace A001374.P4634027485290782120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003086 (2 * n + 3)

end

end A001374.P4634027485290782120

/-!
# A001381: Weight distribution of binary [ 48,24,12 ] quadratic residue code.

The programs for A001381, there is no canonical definition to state claims against.
-/

/-! ## A001381.P2978174386253742404

`A028385(n)+A028384(abs(1-4*n))`
-/

namespace A001381.P2978174386253742404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028385 n + A028384 |1 - (4 * n : ℤ)|.toNat

end

end A001381.P2978174386253742404

/-!
# A001382: Weight distribution of ternary [ 24,12,9 ] quadratic residue code (also of Pless symmetry code).

The programs for A001382, there is no canonical definition to state claims against.
-/

/-! ## A001382.P5736546138311140107

`gcd(A105547(3*n+1), A105547(A061037(n+2)))`
-/

namespace A001382.P5736546138311140107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105547 (3 * n + 1)) (A105547 (A061037 (n + 2)).toNat)

end

end A001382.P5736546138311140107

/-!
# A001383: Number of n-node rooted trees of height at most 3.

The programs for A001383, there is no canonical definition to state claims against.
-/

/-! ## A001383.P5320535773590041597

`A001384(n)-A000299(round(acot(n)+n))`
-/

namespace A001383.P5320535773590041597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n - A000299 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A001383.P5320535773590041597

/-! ## A001383.P11153844901941963500

`A001384(n)-A000299(A028310(n))`
-/

namespace A001383.P11153844901941963500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n - A000299 (A028310 n).toNat

end

end A001383.P11153844901941963500

/-! ## A001383.P11221057017921425657

`A001384(n)-A000299(A233583(n+1))`
-/

namespace A001383.P11221057017921425657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n - A000299 (A233583 (n + 1)).toNat

end

end A001383.P11221057017921425657

/-! ## A001383.P6845805149554521460

`A001384(n)+A000299(A028310(n))*A057428(n)`
-/

namespace A001383.P6845805149554521460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n + A000299 (A028310 n).toNat * A057428 n

end

end A001383.P6845805149554521460

/-! ## A001383.P16422714730516604528

`A001384(n)-A036643(A062399(n))`
-/

namespace A001383.P16422714730516604528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n - A036643 (A062399 n).toNat

end

end A001383.P16422714730516604528

/-!
# A001384: Number of n-node trees of height at most 4.

The programs for A001384, there is no canonical definition to state claims against.
-/

/-! ## A001384.P16454032561721437515

`A001383(n)+A000299(A028310(n))`
-/

namespace A001384.P16454032561721437515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 n + A000299 (A028310 n).toNat

end

end A001384.P16454032561721437515

/-! ## A001384.P6317171734642074027

`A001383(n)+A000299(A233583(n+1))`
-/

namespace A001384.P6317171734642074027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 n + A000299 (A233583 (n + 1)).toNat

end

end A001384.P6317171734642074027

/-! ## A001384.P17964063961273623729

`A001383(n)+A000299(A000007(n)+n)`
-/

namespace A001384.P17964063961273623729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001383 n + A000299 (A000007 n + (n : ℤ)).toNat

end

end A001384.P17964063961273623729

/-! ## A001384.P7169765055929224542

`A001385(n)-A000342(A028310(n))`
-/

namespace A001384.P7169765055929224542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n - A000342 (A028310 n).toNat

end

end A001384.P7169765055929224542

/-! ## A001384.P9472912717446990747

`A001385(n)-A000342(A233583(n+1))`
-/

namespace A001384.P9472912717446990747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n - A000342 (A233583 (n + 1)).toNat

end

end A001384.P9472912717446990747

/-! ## A001384.P14908742548230091315

`A001385(n)-A000342(A000007(n)+n)`
-/

namespace A001384.P14908742548230091315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 n - A000342 (A000007 n + (n : ℤ)).toNat

end

end A001384.P14908742548230091315

/-!
# A001385: Number of n-node trees of height at most 5.

The programs for A001385, there is no canonical definition to state claims against.
-/

/-! ## A001385.P2402140426717515483

`A001384(n)+A000342(floor(acot(n)+n))`
-/

namespace A001385.P2402140426717515483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n + A000342 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A001385.P2402140426717515483

/-! ## A001385.P15822098358120373247

`A001384(n)+A000342(A028310(n))`
-/

namespace A001385.P15822098358120373247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n + A000342 (A028310 n).toNat

end

end A001385.P15822098358120373247

/-! ## A001385.P12959712473534707554

`A001384(n)+A000342(A233583(n+1))`
-/

namespace A001385.P12959712473534707554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001384 n + A000342 (A233583 (n + 1)).toNat

end

end A001385.P12959712473534707554

/-! ## A001385.P13825839933768358253

`A034823(n)-A000393(A028310(n))`
-/

namespace A001385.P13825839933768358253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034823 n - A000393 (A028310 n).toNat

end

end A001385.P13825839933768358253

/-! ## A001385.P12986502087341605878

`A034823(n)-A000393(A233583(n+1))`
-/

namespace A001385.P12986502087341605878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034823 n - A000393 (A233583 (n + 1)).toNat

end

end A001385.P12986502087341605878

/-!
# A001386: Coordination sequence for 4-dimensional I-centered tetragonal orthogonal lattice.

The programs for A001386, the canonical program `A001386.P3145657325654465222` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001386 has offset 0).

The definition of A001386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001386.P3145657325654465222

`A035471(n)+4*n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001386

/-- `A035471(n)+4*n` -/
def P3145657325654465222.Spec : Prop :=
  ∀ n, P3145657325654465222.a n = A001386 n

theorem P3145657325654465222.correct : P3145657325654465222.Spec := by
  intro n
  simp only [A001386]

end A001386

/-! ## A001386.P9683767660657935083

`A033547(n)+A008531(n)`
-/

namespace A001386.P9683767660657935083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033547 n + A008531 n

end

end A001386.P9683767660657935083

namespace A001386

/-- `A033547(n)+A008531(n)` -/
def P9683767660657935083.Spec : Prop :=
  ∀ n, P9683767660657935083.a n = A001386 n

end A001386

/-! ## A001386.P10021177787117824624

`A035597(n)+A008532(n)`
-/

namespace A001386.P10021177787117824624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n + A008532 n

end

end A001386.P10021177787117824624

namespace A001386

/-- `A035597(n)+A008532(n)` -/
def P10021177787117824624.Spec : Prop :=
  ∀ n, P10021177787117824624.a n = A001386 n

end A001386

/-! ## A001386.P7784846704215074415

`A008529(n)-A035597(n)`
-/

namespace A001386.P7784846704215074415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008529 n - A035597 n

end

end A001386.P7784846704215074415

namespace A001386

/-- `A008529(n)-A035597(n)` -/
def P7784846704215074415.Spec : Prop :=
  ∀ n, P7784846704215074415.a n = A001386 n

end A001386

/-! ## A001386.P16433106523443577436

`A019560(n)-A144965(n)`
-/

namespace A001386.P16433106523443577436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019560 n - A144965 n

end

end A001386.P16433106523443577436

namespace A001386

/-- `A019560(n)-A144965(n)` -/
def P16433106523443577436.Spec : Prop :=
  ∀ n, P16433106523443577436.a n = A001386 n

end A001386

/-! ## A001386.P8244066386451128674

`A152100(n)-A139271(n)`
-/

namespace A001386.P8244066386451128674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152100 n - A139271 n

end

end A001386.P8244066386451128674

namespace A001386

/-- `A152100(n)-A139271(n)` -/
def P8244066386451128674.Spec : Prop :=
  ∀ n, P8244066386451128674.a n = A001386 n

end A001386

/-! ## A001386.P9018703705187301935

`A008531(n)+2*A004006(n)`
-/

namespace A001386.P9018703705187301935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n + 2 * A004006 n

end

end A001386.P9018703705187301935

namespace A001386

/-- `A008531(n)+2*A004006(n)` -/
def P9018703705187301935.Spec : Prop :=
  ∀ n, P9018703705187301935.a n = A001386 n

end A001386

/-! ## A001386.P346839526701630942

`A008412(n)+2*A035597(n)`
-/

namespace A001386.P346839526701630942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + 2 * A035597 n

end

end A001386.P346839526701630942

namespace A001386

/-- `A008412(n)+2*A035597(n)` -/
def P346839526701630942.Spec : Prop :=
  ∀ n, P346839526701630942.a n = A001386 n

end A001386

/-! ## A001386.P5145884207210503561

`2*A008532(n)-A008412(n)`
-/

namespace A001386.P5145884207210503561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008532 n - A008412 n

end

end A001386.P5145884207210503561

namespace A001386

/-- `2*A008532(n)-A008412(n)` -/
def P5145884207210503561.Spec : Prop :=
  ∀ n, P5145884207210503561.a n = A001386 n

end A001386

/-! ## A001386.P6583009396047801187

`2*A008412(n)-A008574(n)`
-/

namespace A001386.P6583009396047801187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008412 n - A008574 n

end

end A001386.P6583009396047801187

namespace A001386

/-- `2*A008412(n)-A008574(n)` -/
def P6583009396047801187.Spec : Prop :=
  ∀ n, P6583009396047801187.a n = A001386 n

end A001386

/-! ## A001386.P18884808325078699

`(A008532(n)+A008529(n))/2`
-/

namespace A001386.P18884808325078699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008532 n + A008529 n : ℚ) / 2

end

end A001386.P18884808325078699

namespace A001386

/-- `(A008532(n)+A008529(n))/2` -/
def P18884808325078699.Spec : Prop :=
  ∀ n, P18884808325078699.a n = (A001386 n : ℚ)

end A001386

/-! ## A001386.P12594065274591330671

`∑[2*A008527(n)]-A008527(n)`
-/

namespace A001386.P12594065274591330671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008527 n

end

end A001386.P12594065274591330671

namespace A001386

/-- `∑[2*A008527(n)]-A008527(n)` -/
def P12594065274591330671.Spec : Prop :=
  ∀ n, P12594065274591330671.a n = A001386 n

end A001386

/-! ## A001386.P5982432240549334852

`A130824(A004273(n))+∑[A113127(n)²]`
-/

namespace A001386.P5982432240549334852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A004273 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001386.P5982432240549334852

namespace A001386

/-- `A130824(A004273(n))+∑[A113127(n)²]` -/
def P5982432240549334852.Spec : Prop :=
  ∀ n, P5982432240549334852.a n = A001386 n

end A001386

/-! ## A001386.P17506464971650708415

`A008458(n)+A005900(2*n)`
-/

namespace A001386.P17506464971650708415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + A005900 (2 * n)

end

end A001386.P17506464971650708415

namespace A001386

/-- `A008458(n)+A005900(2*n)` -/
def P17506464971650708415.Spec : Prop :=
  ∀ n, P17506464971650708415.a n = A001386 n

end A001386

/-! ## A001386.P6823941481638395985

`A008412(n)+A006527(2*n)`
-/

namespace A001386.P6823941481638395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n + A006527 (2 * n)

end

end A001386.P6823941481638395985

namespace A001386

/-- `A008412(n)+A006527(2*n)` -/
def P6823941481638395985.Spec : Prop :=
  ∀ n, P6823941481638395985.a n = A001386 n

end A001386

/-! ## A001386.P5981997835063140978

`record[A115046(n)-A115046(n+1)]`
-/

namespace A001386.P5981997835063140978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115046 n - A115046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001386.P5981997835063140978

namespace A001386

/-- `record[A115046(n)-A115046(n+1)]` -/
def P5981997835063140978.Spec : Prop :=
  ∀ n, P5981997835063140978.a n = A001386 n

end A001386

/-! ## A001386.P2060917234188543781

`A115046(2*n)-A115046(2*n+1)`
-/

namespace A001386.P2060917234188543781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115046 (2 * n) - A115046 (2 * n + 1)

end

end A001386.P2060917234188543781

namespace A001386

/-- `A115046(2*n)-A115046(2*n+1)` -/
def P2060917234188543781.Spec : Prop :=
  ∀ n, P2060917234188543781.a n = A001386 n

end A001386

/-! ## A001386.P14678712614251470760

`A004277(2*n)+2*A006527(2*n)`
-/

namespace A001386.P14678712614251470760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + 2 * A006527 (2 * n)

end

end A001386.P14678712614251470760

namespace A001386

/-- `A004277(2*n)+2*A006527(2*n)` -/
def P14678712614251470760.Spec : Prop :=
  ∀ n, P14678712614251470760.a n = A001386 n

end A001386

/-! ## A001386.P18192744318419156840

`A004277(2*n)+A217873(2*n)/2`
-/

namespace A001386.P18192744318419156840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (2 * n) : ℚ) + (A217873 (2 * n) : ℚ) / 2

end

end A001386.P18192744318419156840

namespace A001386

/-- `A004277(2*n)+A217873(2*n)/2` -/
def P18192744318419156840.Spec : Prop :=
  ∀ n, P18192744318419156840.a n = (A001386 n : ℚ)

end A001386

/-! ## A001386.P10900842201963831248

`A280166(2*n)+A217873(2*n)/2`
-/

namespace A001386.P10900842201963831248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280166 (2 * n) : ℚ) + (A217873 (2 * n) : ℚ) / 2

end

end A001386.P10900842201963831248

namespace A001386

/-- `A280166(2*n)+A217873(2*n)/2` -/
def P10900842201963831248.Spec : Prop :=
  ∀ n, P10900842201963831248.a n = (A001386 n : ℚ)

end A001386

/-!
# A001387: Binary "look and say" sequence.

The programs for A001387, there is no canonical definition to state claims against.
-/

/-! ## A001387.P4270464907345031242

`A007088(A049190(n+1))`
-/

namespace A001387.P4270464907345031242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A049190 (n + 1)).toNat

end

end A001387.P4270464907345031242

/-!
# A001391: To get the 3rd term, for example, note that 2nd term has three (11 in binary!) 1's and one (1) 0, giving 11 1 1 0.

The programs for A001391, there is no canonical definition to state claims against.
-/

/-! ## A001391.P12418293155786332815

`A049064(n+2)`
-/

namespace A001391.P12418293155786332815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049064 (n + 2)

end

end A001391.P12418293155786332815

/-!
# A001392: a(n) = 9*binomial(2n,n-4)/(n+5).

The programs for A001392, the canonical program `A001392.P16594413048904001442` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001392 has offset 4).

The definition of A001392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001392.P16594413048904001442

`9*A004310(n+4)/(n+9)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001392

/-- `9*A004310(n+4)/(n+9)` -/
def P16594413048904001442.Spec : Prop :=
  ∀ n, P16594413048904001442.a n = (A001392 (n + 4) : ℚ)

end A001392

/-! ## A001392.P15449146839675852639

`9*C(2*(n+4), n)/(n+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001392.P15449146839675852639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * Nat.choose (2 * (n + 4)) n : ℚ) / (n + 9 : ℚ)

end

end A001392.P15449146839675852639

namespace A001392

/-- `9*C(2*(n+4), n)/(n+9)` -/
def P15449146839675852639.Spec : Prop :=
  ∀ n, P15449146839675852639.a n = (A001392 (n + 4) : ℚ)

end A001392

/-! ## A001392.P16410395510823087273

`∑[A026015(n+3)]`
-/

namespace A001392.P16410395510823087273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026015 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001392.P16410395510823087273

namespace A001392

/-- `∑[A026015(n+3)]` -/
def P16410395510823087273.Spec : Prop :=
  ∀ n, P16410395510823087273.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P1560932627584533859

`∑[-Δ[A115148(n+8)]]`
-/

namespace A001392.P1560932627584533859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115148 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001392.P1560932627584533859

namespace A001392

/-- `∑[-Δ[A115148(n+8)]]` -/
def P1560932627584533859.Spec : Prop :=
  ∀ n, P1560932627584533859.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P230557832975483978

`A003518(n+4)-(A003518(n+3)+A003517(n+3))`
-/

namespace A001392.P230557832975483978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003518 (n + 4) - (A003518 (n + 3) + A003517 (n + 3))

end

end A001392.P230557832975483978

namespace A001392

/-- `A003518(n+4)-(A003518(n+3)+A003517(n+3))` -/
def P230557832975483978.Spec : Prop :=
  ∀ n, P230557832975483978.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P8516452251649659306

`A026014(n+4)-A003517(n+4)`
-/

namespace A001392.P8516452251649659306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026014 (n + 4) - A003517 (n + 4)

end

end A001392.P8516452251649659306

namespace A001392

/-- `A026014(n+4)-A003517(n+4)` -/
def P8516452251649659306.Spec : Prop :=
  ∀ n, P8516452251649659306.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P11007663718515287989

`2*A004310(n+4)-A030054(n+4)`
-/

namespace A001392.P11007663718515287989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004310 (n + 4) - A030054 (n + 4)

end

end A001392.P11007663718515287989

namespace A001392

/-- `2*A004310(n+4)-A030054(n+4)` -/
def P11007663718515287989.Spec : Prop :=
  ∀ n, P11007663718515287989.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P17962476326967926032

`A026857(n+4)-A026843(n+4)`
-/

namespace A001392.P17962476326967926032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026857 (n + 4) - A026843 (n + 4)

end

end A001392.P17962476326967926032

namespace A001392

/-- `A026857(n+4)-A026843(n+4)` -/
def P17962476326967926032.Spec : Prop :=
  ∀ n, P17962476326967926032.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P638619684677822939

`A050154(A167614(n+2))`
-/

namespace A001392.P638619684677822939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050154 (A167614 (n + 2)).toNat

end

end A001392.P638619684677822939

namespace A001392

/-- `A050154(A167614(n+2))` -/
def P638619684677822939.Spec : Prop :=
  ∀ n, P638619684677822939.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P6296711937662004227

`A050155(A167614(n+2)+1)`
-/

namespace A001392.P6296711937662004227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050155 (A167614 (n + 2) + 1).toNat

end

end A001392.P6296711937662004227

namespace A001392

/-- `A050155(A167614(n+2)+1)` -/
def P6296711937662004227.Spec : Prop :=
  ∀ n, P6296711937662004227.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P4446210240207910243

`A039599(eq[4, A002262(n)])`
-/

namespace A001392.P4446210240207910243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001392.P4446210240207910243

namespace A001392

/-- `A039599(eq[4, A002262(n)])` -/
def P4446210240207910243.Spec : Prop :=
  ∀ n, P4446210240207910243.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P9725648673509003139

`A039599(eq[5, A002260(n+1)])`
-/

namespace A001392.P9725648673509003139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001392.P9725648673509003139

namespace A001392

/-- `A039599(eq[5, A002260(n+1)])` -/
def P9725648673509003139.Spec : Prop :=
  ∀ n, P9725648673509003139.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P9559940621755099823

`A050165(eq[4, A025581(n)])`
-/

namespace A001392.P9559940621755099823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001392.P9559940621755099823

namespace A001392

/-- `A050165(eq[4, A025581(n)])` -/
def P9559940621755099823.Spec : Prop :=
  ∀ n, P9559940621755099823.a n = A001392 (n + 4)

end A001392

/-! ## A001392.P12145591264140828179

`A106566(A000096(n+8)+10)`
-/

namespace A001392.P12145591264140828179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A000096 (n + 8) + 10).toNat

end

end A001392.P12145591264140828179

namespace A001392

/-- `A106566(A000096(n+8)+10)` -/
def P12145591264140828179.Spec : Prop :=
  ∀ n, P12145591264140828179.a n = A001392 (n + 4)

end A001392

/-!
# A001393: High temperature series for spin-1/2 Ising free energy on 3-dimensional simple cubic lattice.

The programs for A001393, there is no canonical definition to state claims against.
-/

/-! ## A001393.P82961422116837199

`A075357(A320804(n)+A213102(n))`
-/

namespace A001393.P82961422116837199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075357 (A320804 n + A213102 n).toNat

end

end A001393.P82961422116837199

/-! ## A001393.P764886197172197647

`A028310(A099021(n))-A104150(n)`
-/

namespace A001393.P764886197172197647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A099021 n).toNat - A104150 n

end

end A001393.P764886197172197647

/-!
# A001395: Number of (2n+1)-step self-avoiding walks on diamond lattice ending at point with x = 1.

The programs for A001395, there is no canonical definition to state claims against.
-/

/-! ## A001395.P6518540185231560011

`A227716(∑[n])`
-/

namespace A001395.P6518540185231560011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227716 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001395.P6518540185231560011

/-! ## A001395.P3429660696381330381

`record[A227716(n)]`
-/

namespace A001395.P3429660696381330381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001395.P3429660696381330381

/-! ## A001395.P8176653828029809675

`or(2, A227716(C(n+1, 2)))`
-/

namespace A001395.P8176653828029809675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A227716 (Nat.choose (n + 1) 2))

end

end A001395.P8176653828029809675

/-! ## A001395.P7194777002421149535

`or(2, A227716((n²+n)/2))`
-/

namespace A001395.P7194777002421149535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A227716 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A001395.P7194777002421149535

/-! ## A001395.P3458721149029401639

`lcm(2, A227716(A000217(n)))`
-/

namespace A001395.P3458721149029401639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A227716 (A000217 n).toNat)

end

end A001395.P3458721149029401639

/-!
# A001396: Number of 2n-step self-avoiding walks on diamond lattice ending at point with x = 0.

The programs for A001396, there is no canonical definition to state claims against.
-/

/-! ## A001396.P10963576126965223538

`A227715(∑[n])`
-/

namespace A001396.P10963576126965223538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001396.P10963576126965223538

/-! ## A001396.P1278208140904589281

`record[A227715(n)]`
-/

namespace A001396.P1278208140904589281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001396.P1278208140904589281

/-! ## A001396.P15493327820346493241

`and(-1, A227715(A000217(n)))`
-/

namespace A001396.P15493327820346493241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A227715 (A000217 n).toNat)

end

end A001396.P15493327820346493241

/-! ## A001396.P12862482777783651805

`A227715(A000217(n))+A184945(n)`
-/

namespace A001396.P12862482777783651805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227715 (A000217 n).toNat + A184945 n

end

end A001396.P12862482777783651805

/-! ## A001396.P2299675250368222702

`A227715(A000217(n))+A185037(n)`
-/

namespace A001396.P2299675250368222702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227715 (A000217 n).toNat + A185037 n

end

end A001396.P2299675250368222702

/-!
# A001397: Number of 2n-step self-avoiding walks on diamond lattice ending at point with x = 2.

The programs for A001397, there is no canonical definition to state claims against.
-/

/-! ## A001397.P6732903971325809736

`record[A227715(comp[∑[n]])]`
-/

namespace A001397.P6732903971325809736
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227715 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001397.P6732903971325809736

/-! ## A001397.P7036567199232116838

`A227715(∑[n+1]+1)`
-/

namespace A001397.P7036567199232116838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227715 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001397.P7036567199232116838

/-! ## A001397.P3731887398043054945

`record[A010054(n)*A227715(n+1)]`
-/

namespace A001397.P3731887398043054945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A227715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001397.P3731887398043054945

/-! ## A001397.P126232417794414667

`record[A023531(n)*A227715(n+2)]`
-/

namespace A001397.P126232417794414667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A227715 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001397.P126232417794414667

/-! ## A001397.P9774270526416454961

`record[A227715(n+2)/A106340(n)]`
-/

namespace A001397.P9774270526416454961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227715 (n + 2) : ℚ) / (A106340 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001397.P9774270526416454961

/-!
# A001398: Number of (2n+1)-step self-avoiding walks on diamond lattice ending at point with x = 3.

The programs for A001398, there is no canonical definition to state claims against.
-/

/-! ## A001398.P10030500307204783001

`record[A227716(comp[∑[n]])]`
-/

namespace A001398.P10030500307204783001
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227716 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001398.P10030500307204783001

/-! ## A001398.P1788345954078906973

`A227716(∑[n+1]+1)`
-/

namespace A001398.P1788345954078906973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227716 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001398.P1788345954078906973

/-! ## A001398.P14835690917217054872

`record[A227716(n+2)%A227716(n+1)]`
-/

namespace A001398.P14835690917217054872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227716 (n + 2)) (A227716 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001398.P14835690917217054872

/-!
# A001399: a(n) is the number of partitions of n into at most 3 parts; also partitions of n+3 in which the greatest part is 3; also number of unlabeled multigraphs with 3 nodes and n edges.

The programs for A001399, the canonical program `A001399.P15968082049530848519` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001399 has offset 0).

The definition of A001399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001399.P15968082049530848519

`round((n+3)²/12)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001399

/-- `round((n+3)²/12)` -/
def P15968082049530848519.Spec : Prop :=
  ∀ n, P15968082049530848519.a n = A001399 n

theorem P15968082049530848519.correct : P15968082049530848519.Spec := by
  intro n
  simp only [A001399]

end A001399

/-! ## A001399.P213714132106066878

`1+a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A001399.P213714132106066878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4] fun n a =>
  1 + a (n - 2) + a (n - 3) - a (n - 5)

end

end A001399.P213714132106066878

namespace A001399

/-- `1+a(n-2)+a(n-3)-a(n-5)` -/
def P213714132106066878.Spec : Prop :=
  ∀ n, P213714132106066878.a n = A001399 n

end A001399

/-! ## A001399.P9871621414994171745

`a(n-2)+A008620(n)` with `a(0)=1, a(1)=1`
-/

namespace A001399.P9871621414994171745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A008620 n

end

end A001399.P9871621414994171745

namespace A001399

/-- `a(n-2)+A008620(n)` -/
def P9871621414994171745.Spec : Prop :=
  ∀ n, P9871621414994171745.a n = A001399 n

end A001399

/-! ## A001399.P18276098678473794869

`a(n-3)+A008619(n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A001399.P18276098678473794869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + A008619 n

end

end A001399.P18276098678473794869

namespace A001399

/-- `a(n-3)+A008619(n)` -/
def P18276098678473794869.Spec : Prop :=
  ∀ n, P18276098678473794869.a n = A001399 n

end A001399

/-! ## A001399.P18082205220057121356

`A001840(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A001399.P18082205220057121356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001840 (n + 1) - a (n - 1)

end

end A001399.P18082205220057121356

namespace A001399

/-- `A001840(n+1)-a(n-1)` -/
def P18082205220057121356.Spec : Prop :=
  ∀ n, P18082205220057121356.a n = A001399 n

end A001399

/-! ## A001399.P9997200581660860823

`a(n-1)+A008615(n+2)` with `a(0)=1`
-/

namespace A001399.P9997200581660860823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008615 (n + 2)

end

end A001399.P9997200581660860823

namespace A001399

/-- `a(n-1)+A008615(n+2)` -/
def P9997200581660860823.Spec : Prop :=
  ∀ n, P9997200581660860823.a n = A001399 n

end A001399

/-! ## A001399.P7360723714279932985

`A002620(n+2)-A001840(n)`
-/

namespace A001399.P7360723714279932985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2) - A001840 n

end

end A001399.P7360723714279932985

namespace A001399

/-- `A002620(n+2)-A001840(n)` -/
def P7360723714279932985.Spec : Prop :=
  ∀ n, P7360723714279932985.a n = A001399 n

end A001399

/-! ## A001399.P13970113943062586796

`A000212(n+3)-A002620(n+3)`
-/

namespace A001399.P13970113943062586796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 3) - A002620 (n + 3)

end

end A001399.P13970113943062586796

namespace A001399

/-- `A000212(n+3)-A002620(n+3)` -/
def P13970113943062586796.Spec : Prop :=
  ∀ n, P13970113943062586796.a n = A001399 n

end A001399

/-! ## A001399.P7963119624936738116

`A005044(2*n+3)`
-/

namespace A001399.P7963119624936738116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n + 3)

end

end A001399.P7963119624936738116

namespace A001399

/-- `A005044(2*n+3)` -/
def P7963119624936738116.Spec : Prop :=
  ∀ n, P7963119624936738116.a n = A001399 n

end A001399

/-! ## A001399.P2314229949773070920

`∑[ceil(xor(1, n)/6)]`
-/

namespace A001399.P2314229949773070920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001399.P2314229949773070920

namespace A001399

/-- `∑[ceil(xor(1, n)/6)]` -/
def P2314229949773070920.Spec : Prop :=
  ∀ n, P2314229949773070920.a n = A001399 n

end A001399

/-! ## A001399.P8194546656439189231

`∑[round(xor(1, n+2)/6)]`
-/

namespace A001399.P8194546656439189231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 2) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001399.P8194546656439189231

namespace A001399

/-- `∑[round(xor(1, n+2)/6)]` -/
def P8194546656439189231.Spec : Prop :=
  ∀ n, P8194546656439189231.a n = A001399 n

end A001399

/-! ## A001399.P13832650521962476843

`∑[∑[round(sin(4)^(n%6))]]`
-/

namespace A001399.P13832650521962476843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (4 : ℝ) ^ (n % 6))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001399.P13832650521962476843

namespace A001399

/-- `∑[∑[round(sin(4)^(n%6))]]` -/
def P13832650521962476843.Spec : Prop :=
  ∀ n, P13832650521962476843.a n = A001399 n

end A001399

/-! ## A001399.P17567475257360317889

`∑[∑[∑[ogf(1/(1+2x+2x^2+x^3))]]]`
-/

namespace A001399.P17567475257360317889
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001399.P17567475257360317889

namespace A001399

/-- `∑[∑[∑[ogf(1/(1+2x+2x^2+x^3))]]]` -/
def P17567475257360317889.Spec : Prop :=
  ∀ n, P17567475257360317889.a n = A001399 n

end A001399

/-! ## A001399.P7532093909910848130

`a(n-1)+ceil(xor(1, n)/6)` with `a(0)=1`
-/

namespace A001399.P7532093909910848130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈(Nat.xor 1 n : ℚ) / 6⌉

end

end A001399.P7532093909910848130

namespace A001399

/-- `a(n-1)+ceil(xor(1, n)/6)` -/
def P7532093909910848130.Spec : Prop :=
  ∀ n, P7532093909910848130.a n = A001399 n

end A001399

/-! ## A001399.P10423121404960250248

`∑[char[3*n]+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A001399.P10423121404960250248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001399.P10423121404960250248

namespace A001399

/-- `∑[char[3*n]+a(n-2)]` -/
def P10423121404960250248.Spec : Prop :=
  ∀ n, (P10423121404960250248.a n : ℤ) = A001399 n

end A001399

/-! ## A001399.P16705498906969840331

`∑[∑[(n+1)%2-∑[n]%3]]`
-/

namespace A001399.P16705498906969840331
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001399.P16705498906969840331

namespace A001399

/-- `∑[∑[(n+1)%2-∑[n]%3]]` -/
def P16705498906969840331.Spec : Prop :=
  ∀ n, P16705498906969840331.a n = A001399 n

end A001399

/-! ## A001399.P8393854181340032534

`floor(∑[a(n-2)+1]/3)` with `a(0)=3, a(1)=1, a(2)=3`
-/

namespace A001399.P8393854181340032534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 3] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A001399.P8393854181340032534

namespace A001399

/-- `floor(∑[a(n-2)+1]/3)` -/
def P8393854181340032534.Spec : Prop :=
  ∀ n, P8393854181340032534.a n = A001399 n

end A001399

/-! ## A001399.P15213189786149294655

`floor(a(n-2)+n/3+1)` with `a(0)=1, a(1)=1`
-/

namespace A001399.P15213189786149294655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 3 + 1)⌋

end

end A001399.P15213189786149294655

namespace A001399

/-- `floor(a(n-2)+n/3+1)` -/
def P15213189786149294655.Spec : Prop :=
  ∀ n, P15213189786149294655.a n = A001399 n

end A001399

/-! ## A001399.P3252647573101912060

`ceil(a(n-2)+(n+1)/3)` with `a(0)=1, a(1)=1`
-/

namespace A001399.P3252647573101912060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 3⌉

end

end A001399.P3252647573101912060

namespace A001399

/-- `ceil(a(n-2)+(n+1)/3)` -/
def P3252647573101912060.Spec : Prop :=
  ∀ n, P3252647573101912060.a n = A001399 n

end A001399

/-! ## A001399.P12291037012435765954

`a(n-2)+round((n+2)/3)` with `a(0)=1, a(1)=1`
-/

namespace A001399.P12291037012435765954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + SequenceMachineLib.roundAway ((n + 2 : ℚ) / 3)

end

end A001399.P12291037012435765954

namespace A001399

/-- `a(n-2)+round((n+2)/3)` -/
def P12291037012435765954.Spec : Prop :=
  ∀ n, P12291037012435765954.a n = A001399 n

end A001399

