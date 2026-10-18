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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B013.C000
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
# A060001: a(n) = Fibonacci(n)!.

The programs for A060001, the canonical program `A060001.P2343612909125798087` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060001 has offset 1).

The definition of A060001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060001.P2343612909125798087

`A000142(A000045(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060001

/-- `A000142(A000045(n+1))` -/
def P2343612909125798087.Spec : Prop :=
  ∀ n, P2343612909125798087.a n = A060001 (n + 1)

theorem P2343612909125798087.correct : P2343612909125798087.Spec := by
  intro n
  simp only [A060001, Nat.add_sub_cancel]

end A060001

/-! ## A060001.P12221131819702283462

`A005181(n)!`
-/

namespace A060001.P12221131819702283462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A005181 n).toNat

end

end A060001.P12221131819702283462

namespace A060001

/-- `A005181(n)!` -/
def P12221131819702283462.Spec : Prop :=
  ∀ n, (P12221131819702283462.a n : ℤ) = A060001 (n + 1)

end A060001

/-! ## A060001.P10419228267410370749

`A042581(n)!`
-/

namespace A060001.P10419228267410370749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A042581 n).toNat

end

end A060001.P10419228267410370749

namespace A060001

/-- `A042581(n)!` -/
def P10419228267410370749.Spec : Prop :=
  ∀ n, (P10419228267410370749.a n : ℤ) = A060001 (n + 1)

end A060001

/-! ## A060001.P11643861824895449190

`A096275(n)!`
-/

namespace A060001.P11643861824895449190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A096275 n).toNat

end

end A060001.P11643861824895449190

namespace A060001

/-- `A096275(n)!` -/
def P11643861824895449190.Spec : Prop :=
  ∀ n, (P11643861824895449190.a n : ℤ) = A060001 (n + 1)

end A060001

/-! ## A060001.P5388921155380115063

`A109609(n)!`
-/

namespace A060001.P5388921155380115063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A109609 n).toNat

end

end A060001.P5388921155380115063

namespace A060001

/-- `A109609(n)!` -/
def P5388921155380115063.Spec : Prop :=
  ∀ n, (P5388921155380115063.a n : ℤ) = A060001 (n + 1)

end A060001

/-!
# A060002: Digitized partition numbers: numbers with (weakly) increasing digits ordered by sum of their digits then by the numbers themselves.

The programs for A060002, there is no canonical definition to state claims against.
-/

/-! ## A060002.P5206108648550707997

`C(A087712(A185974(n)), A151934(n)+1)`
-/

namespace A060002.P5206108648550707997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087712 (A185974 n).toNat).toNat (A151934 n + 1).toNat

end

end A060002.P5206108648550707997

/-! ## A060002.P6960956528234754775

`A087712(A185974(A151934(n)+n))%((3*n+1)^3)`
-/

namespace A060002.P6960956528234754775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (A185974 (A151934 n + (n : ℤ)).toNat).toNat) ((3 * n + 1) ^ 3 : ℤ)

end

end A060002.P6960956528234754775

/-! ## A060002.P14223280316257508272

`A087712(A185974(n))-A000030(A151934(n))`
-/

namespace A060002.P14223280316257508272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 n).toNat - A000030 (A151934 n).toNat

end

end A060002.P14223280316257508272

/-! ## A060002.P5776972427288858452

`A087712(A185974(n))-A069011(A151934(n)²)`
-/

namespace A060002.P5776972427288858452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 n).toNat - A069011 (A151934 n ^ 2).toNat

end

end A060002.P5776972427288858452

/-! ## A060002.P15220899484055569095

`A087712(A185974(n))-A095076(A151934(n)²)`
-/

namespace A060002.P15220899484055569095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 n).toNat - A095076 (A151934 n ^ 2).toNat

end

end A060002.P15220899484055569095

/-! ## A060002.P2726588083836729745

`A087712(A185974(n))-A240867(A151934(n)²)`
-/

namespace A060002.P2726588083836729745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 n).toNat - A240867 (A151934 n ^ 2).toNat

end

end A060002.P2726588083836729745

/-! ## A060002.P15284435198128535760

`A000007(A151934(n)²)*A087712(A185974(n))`
-/

namespace A060002.P15284435198128535760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A151934 n ^ 2).toNat * A087712 (A185974 n).toNat

end

end A060002.P15284435198128535760

/-! ## A060002.P14001782217070558965

`A087712(A185974(n))*A151934(A151934(n)²)`
-/

namespace A060002.P14001782217070558965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 n).toNat * A151934 (A151934 n ^ 2).toNat

end

end A060002.P14001782217070558965

/-! ## A060002.P1143110721292635026

`A087712(A185974(A151934(n)+n))-A000007(n)`
-/

namespace A060002.P1143110721292635026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 (A151934 n + (n : ℤ)).toNat).toNat - A000007 n

end

end A060002.P1143110721292635026

/-! ## A060002.P17991378631564211729

`A087712(A185974(n))-A160696(A151934(n)+1)+1`
-/

namespace A060002.P17991378631564211729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A185974 n).toNat - A160696 (A151934 n + 1).toNat + 1

end

end A060002.P17991378631564211729

/-!
# A060003: Odd numbers not of the form p + 2*k^2, k>0, p prime.

The programs for A060003, there is no canonical definition to state claims against.
-/

/-! ## A060003.P4596992957117310660

`record[A093178(A347567(n+1))]`
-/

namespace A060003.P4596992957117310660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A347567 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060003.P4596992957117310660

/-! ## A060003.P5070605019769859937

`A005408(eq[0, A143539(n+1)])`
-/

namespace A060003.P5070605019769859937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060003.P5070605019769859937

/-! ## A060003.P16830234505266642862

`filter[A347567(n+1), A000035(#)]`
-/

namespace A060003.P16830234505266642862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A060003.P16830234505266642862

/-! ## A060003.P5436875523535613489

`filter[A347567(n+1), A260390(#)]`
-/

namespace A060003.P5436875523535613489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260390 (f1 j).toNat = 1) n)

end

end A060003.P5436875523535613489

/-! ## A060003.P2709118211325266768

`filter[A347567(n+1), A297086(#)]`
-/

namespace A060003.P2709118211325266768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A060003.P2709118211325266768

/-!
# A060005: Number of ways of partitioning the integers {1,2,..,4n} into two (unordered) sets such that the sums of parts are equal in both sets (parts in either set will add up to (4n)*(4n+1)/4). Number of solutions to {1 +- 2 +- 3 +- ... +- 4n=0}.

The programs for A060005, there is no canonical definition to state claims against.
-/

/-! ## A060005.P17567157273768932185

`ceil(A060468(n)/2)`
-/

namespace A060005.P17567157273768932185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060468 n : ℚ) / 2⌉

end

end A060005.P17567157273768932185

/-! ## A060005.P819595272483213516

`A060468(round(sqrt(n²+1)))/2`
-/

namespace A060005.P819595272483213516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060468 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A060005.P819595272483213516

/-! ## A060005.P12156636263192356261

`A058377(4*round(sqrt(n²+1)))`
-/

namespace A060005.P12156636263192356261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (4 * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A060005.P12156636263192356261

/-! ## A060005.P10669234068273943624

`A069918(4*round(sqrt(n²+1)))`
-/

namespace A060005.P10669234068273943624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069918 (4 * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A060005.P10669234068273943624

/-! ## A060005.P6217492463719128232

`A063865(4*n)-record[A058377(2*(n+1))]`
-/

namespace A060005.P6217492463719128232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058377 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (4 * n) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060005.P6217492463719128232

/-! ## A060005.P6445196951495227734

`A025591(4*n)/A020639(A004277(n))`
-/

namespace A060005.P6445196951495227734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (4 * n) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A060005.P6445196951495227734

/-!
# A060008: a(n) = 9*binomial(n,4) = 3*n*(n-1)*(n-2)*(n-3)/8.

The programs for A060008, the canonical program `A060008.P5269451932416479602` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060008 has offset 0).

The definition of A060008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n, 4)` (program `A060008.P5269451932416479602`, by `A060008.P5269451932416479602.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060008.P5269451932416479602

`9*C(n, 4)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060008

/-- `9*C(n, 4)` -/
def P5269451932416479602.Spec : Prop :=
  ∀ n, (P5269451932416479602.a n : ℤ) = A060008 n

theorem P5269451932416479602.correct : P5269451932416479602.Spec := by
  intro n
  simp only [A060008]

end A060008

/-! ## A060008.P6535736048444797882

`3*n*(n-1)*(n-2)*(n-3)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060008.P6535736048444797882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) / 8))))

end

end A060008.P6535736048444797882

namespace A060008

/-- `3*n*(n-1)*(n-2)*(n-3)/8` -/
def P6535736048444797882.Spec : Prop :=
  ∀ n, P6535736048444797882.a n = (A060008 n : ℚ)

end A060008

/-! ## A060008.P15101832159662855516

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=9`
-/

namespace A060008.P15101832159662855516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 9] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A060008.P15101832159662855516

namespace A060008

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15101832159662855516.Spec : Prop :=
  ∀ n, P15101832159662855516.a n = A060008 n

end A060008

/-! ## A060008.P274542039427038243

`C(n, 4)/(1/3)²`
-/

namespace A060008.P274542039427038243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 4 : ℚ) / ((1 : ℚ) / 3) ^ 2

end

end A060008.P274542039427038243

namespace A060008

/-- `C(n, 4)/(1/3)²` -/
def P274542039427038243.Spec : Prop :=
  ∀ n, P274542039427038243.a n = (A060008 n : ℚ)

theorem P274542039427038243.correct : P274542039427038243.Spec := by
  intro n
  simp only [A060008, Nat.add_sub_cancel, A060008.P274542039427038243.a, A060008.P5269451932416479602.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060008

/-! ## A060008.P2669035498708410924

`A160750(n)-A294433(n)`
-/

namespace A060008.P2669035498708410924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160750 n - A294433 n

end

end A060008.P2669035498708410924

namespace A060008

/-- `A160750(n)-A294433(n)` -/
def P2669035498708410924.Spec : Prop :=
  ∀ n, P2669035498708410924.a n = A060008 n

end A060008

/-! ## A060008.P7303831451804276137

`A052762(n)-A266395(n+1)`
-/

namespace A060008.P7303831451804276137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n - A266395 (n + 1)

end

end A060008.P7303831451804276137

namespace A060008

/-- `A052762(n)-A266395(n+1)` -/
def P7303831451804276137.Spec : Prop :=
  ∀ n, P7303831451804276137.a n = A060008 n

end A060008

/-! ## A060008.P15771789640768723761

`A062026(n)+A341703(n)-A004255(n+1)`
-/

namespace A060008.P15771789640768723761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062026 n + (A341703 n - A004255 (n + 1))

end

end A060008.P15771789640768723761

namespace A060008

/-- `A062026(n)+A341703(n)-A004255(n+1)` -/
def P15771789640768723761.Spec : Prop :=
  ∀ n, P15771789640768723761.a n = A060008 n

end A060008

/-! ## A060008.P11818529911750100359

`A062026(n)+A341703(n)-A101357(n+1)`
-/

namespace A060008.P11818529911750100359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062026 n + (A341703 n - A101357 (n + 1))

end

end A060008.P11818529911750100359

namespace A060008

/-- `A062026(n)+A341703(n)-A101357(n+1)` -/
def P11818529911750100359.Spec : Prop :=
  ∀ n, P11818529911750100359.a n = A060008 n

end A060008

/-! ## A060008.P3142768344347018988

`Δ[9*A000389(n)]`
-/

namespace A060008.P3142768344347018988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060008.P3142768344347018988

namespace A060008

/-- `Δ[9*A000389(n)]` -/
def P3142768344347018988.Spec : Prop :=
  ∀ n, P3142768344347018988.a n = A060008 n

end A060008

/-! ## A060008.P1346293369893482596

`A101357(n)+A341703(n)-A060354(n+1)`
-/

namespace A060008.P1346293369893482596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 n + (A341703 n - A060354 (n + 1))

end

end A060008.P1346293369893482596

namespace A060008

/-- `A101357(n)+A341703(n)-A060354(n+1)` -/
def P1346293369893482596.Spec : Prop :=
  ∀ n, P1346293369893482596.a n = A060008 n

end A060008

/-! ## A060008.P18182414599093983646

`Δ[Δ[9*A000579(n)]]`
-/

namespace A060008.P18182414599093983646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060008.P18182414599093983646

namespace A060008

/-- `Δ[Δ[9*A000579(n)]]` -/
def P18182414599093983646.Spec : Prop :=
  ∀ n, P18182414599093983646.a n = A060008 n

end A060008

/-! ## A060008.P16935806854936944633

`A211538((2-n)²+n-1)`
-/

namespace A060008.P16935806854936944633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 ((2 - (n : ℤ)) ^ 2 + ((n : ℤ) - 1)).toNat

end

end A060008.P16935806854936944633

namespace A060008

/-- `A211538((2-n)²+n-1)` -/
def P16935806854936944633.Spec : Prop :=
  ∀ n, P16935806854936944633.a n = A060008 n

end A060008

/-! ## A060008.P2156037638267445270

`A131355((n-1)*(n-2))-1`
-/

namespace A060008.P2156037638267445270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131355 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat - 1

end

end A060008.P2156037638267445270

namespace A060008

/-- `A131355((n-1)*(n-2))-1` -/
def P2156037638267445270.Spec : Prop :=
  ∀ n, P2156037638267445270.a n = A060008 n

end A060008

/-!
# A060009: Ulam numbers starting with the numbers 1 and 9.

The programs for A060009, there is no canonical definition to state claims against.
-/

/-! ## A060009.P11437120223175684111

`lt[A220487(n+1), A059626(A060587(n))]`
-/

namespace A060009.P11437120223175684111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A060587 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060009.P11437120223175684111

/-!
# A060011: Schizophrenic sequence: these are the repeating digits in the decimal expansion of sqrt(f(2n+1)), where f(m) = A014824(m).

The programs for A060011, the canonical program `A060011.P16813881645005587022` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060011 has offset 0).

The definition of A060011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060011.P7306823383843708556

`A130856(3*n)`
-/

namespace A060011.P7306823383843708556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130856 (3 * n)

end

end A060011.P7306823383843708556

namespace A060011

/-- `A130856(3*n)` -/
def P7306823383843708556.Spec : Prop :=
  ∀ n, P7306823383843708556.a n = A060011 n

end A060011

/-! ## A060011.P16813881645005587022

`dr(A004095(3*n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060011

/-- `dr(A004095(3*n))` -/
def P16813881645005587022.Spec : Prop :=
  ∀ n, (P16813881645005587022.a n : ℤ) = A060011 n

theorem P16813881645005587022.correct : P16813881645005587022.Spec := by
  intro n
  simp only [A060011]

end A060011

/-! ## A060011.P16954181315385758109

`dr(A130856(n+1+n+n))`
-/

namespace A060011.P16954181315385758109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130856 (n + 1 + n + n))

end

end A060011.P16954181315385758109

namespace A060011

/-- `dr(A130856(n+1+n+n))` -/
def P16954181315385758109.Spec : Prop :=
  ∀ n, (P16954181315385758109.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P5545381502567174728

`A130856(A008585(n))%10`
-/

namespace A060011.P5545381502567174728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130856 (A008585 n).toNat) 10

end

end A060011.P5545381502567174728

namespace A060011

/-- `A130856(A008585(n))%10` -/
def P5545381502567174728.Spec : Prop :=
  ∀ n, P5545381502567174728.a n = A060011 n

end A060011

/-! ## A060011.P13101908313914894506

`A130856(A016777(n))%10`
-/

namespace A060011.P13101908313914894506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130856 (A016777 n).toNat) 10

end

end A060011.P13101908313914894506

namespace A060011

/-- `A130856(A016777(n))%10` -/
def P13101908313914894506.Spec : Prop :=
  ∀ n, P13101908313914894506.a n = A060011 n

end A060011

/-! ## A060011.P17395362103653967735

`dr(A182185(2*n))`
-/

namespace A060011.P17395362103653967735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A182185 (2 * n))

end

end A060011.P17395362103653967735

namespace A060011

/-- `dr(A182185(2*n))` -/
def P17395362103653967735.Spec : Prop :=
  ∀ n, (P17395362103653967735.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P776766368755116719

`dr(∑[dr(A028283(n))])`
-/

namespace A060011.P776766368755116719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028283 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A060011.P776766368755116719

namespace A060011

/-- `dr(∑[dr(A028283(n))])` -/
def P776766368755116719.Spec : Prop :=
  ∀ n, (P776766368755116719.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P12895148212872112203

`dr(∑[A028283(n)])`
-/

namespace A060011.P12895148212872112203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060011.P12895148212872112203

namespace A060011

/-- `dr(∑[A028283(n)])` -/
def P12895148212872112203.Spec : Prop :=
  ∀ n, (P12895148212872112203.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P3792411067745732834

`dr(Δ[A289719(n)])`
-/

namespace A060011.P3792411067745732834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289719 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A060011.P3792411067745732834

namespace A060011

/-- `dr(Δ[A289719(n)])` -/
def P3792411067745732834.Spec : Prop :=
  ∀ n, (P3792411067745732834.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P14678947207710916821

`dr(A289719(n+1)-A289719(n))`
-/

namespace A060011.P14678947207710916821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A289719 (n + 1) - A289719 n)

end

end A060011.P14678947207710916821

namespace A060011

/-- `dr(A289719(n+1)-A289719(n))` -/
def P14678947207710916821.Spec : Prop :=
  ∀ n, (P14678947207710916821.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P8461739271463542380

`dr(A084771(n))`
-/

namespace A060011.P8461739271463542380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A084771 n)

end

end A060011.P8461739271463542380

namespace A060011

/-- `dr(A084771(n))` -/
def P8461739271463542380.Spec : Prop :=
  ∀ n, (P8461739271463542380.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P13734874703936435136

`dr(∑[A085363(n)])`
-/

namespace A060011.P13734874703936435136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085363 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060011.P13734874703936435136

namespace A060011

/-- `dr(∑[A085363(n)])` -/
def P13734874703936435136.Spec : Prop :=
  ∀ n, (P13734874703936435136.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P12798773498434643589

`dr(A383946(n))`
-/

namespace A060011.P12798773498434643589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A383946 n)

end

end A060011.P12798773498434643589

namespace A060011

/-- `dr(A383946(n))` -/
def P12798773498434643589.Spec : Prop :=
  ∀ n, (P12798773498434643589.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P1032411290780822667

`dr(∑[A387208(n)])`
-/

namespace A060011.P1032411290780822667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387208 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060011.P1032411290780822667

namespace A060011

/-- `dr(∑[A387208(n)])` -/
def P1032411290780822667.Spec : Prop :=
  ∀ n, (P1032411290780822667.a n : ℤ) = A060011 n

end A060011

/-! ## A060011.P16882751594784800114

`dr(∑[A387229(n)])`
-/

namespace A060011.P16882751594784800114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387229 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060011.P16882751594784800114

namespace A060011

/-- `dr(∑[A387229(n)])` -/
def P16882751594784800114.Spec : Prop :=
  ∀ n, (P16882751594784800114.a n : ℤ) = A060011 n

end A060011

/-!
# A060012: Lesser of irregular twin primes.

The programs for A060012, there is no canonical definition to state claims against.
-/

/-! ## A060012.P7132780978625721219

`∩[A000928(n+1)-2, A000928(n+1)]`
-/

namespace A060012.P7132780978625721219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060012.P7132780978625721219

/-! ## A060012.P14468413882453127422

`∩[A000928(n+1), A065164(A000928(n+1))]`
-/

namespace A060012.P14468413882453127422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A000928 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060012.P14468413882453127422

/-! ## A060012.P7447265079279970944

`∩[A000928(n+1), A082493(A000928(n+3))]`
-/

namespace A060012.P7447265079279970944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082493 (A000928 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060012.P7447265079279970944

/-! ## A060012.P2466551500938410305

`∩[A000928(n+2), A289207(A000928(n+2))]`
-/

namespace A060012.P2466551500938410305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000928 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060012.P2466551500938410305

/-! ## A060012.P12515050106426442169

`∩[A000928(n+1), A058026(A000928(n+4))]`
-/

namespace A060012.P12515050106426442169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058026 (A000928 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060012.P12515050106426442169

/-!
# A060013: New record highs reached in A060000.

The programs for A060013, the canonical program `A060013.P725709507848358002` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060013 has offset 1).

The definition of A060013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060013.P725709507848358002

`2*a(n-1)-3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060013

/-- `2*a(n-1)-3` -/
def P725709507848358002.Spec : Prop :=
  ∀ n, P725709507848358002.a n = A060013 (n + 1)

theorem P725709507848358002.correct : P725709507848358002.Spec := by
  intro n
  simp only [A060013, Nat.add_sub_cancel]

end A060013

/-! ## A060013.P2773581795571781140

`a(n-1)+a(n-1)-3` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`
-/

namespace A060013.P2773581795571781140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 9] fun n a =>
  a (n - 1) + (a (n - 1) - 3)

end

end A060013.P2773581795571781140

namespace A060013

/-- `a(n-1)+a(n-1)-3` -/
def P2773581795571781140.Spec : Prop :=
  ∀ n, P2773581795571781140.a n = A060013 (n + 1)

theorem P2773581795571781140.correct : P2773581795571781140.Spec := by
  intro n
  simp only [A060013, Nat.add_sub_cancel, A060013.P2773581795571781140.a, A060013.P725709507848358002.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060013

/-! ## A060013.P5913727640283035359

`a(n-1)-(3-a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9`
-/

namespace A060013.P5913727640283035359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 9] fun n a =>
  a (n - 1) - (3 - a (n - 1))

end

end A060013.P5913727640283035359

namespace A060013

/-- `a(n-1)-(3-a(n-1))` -/
def P5913727640283035359.Spec : Prop :=
  ∀ n, P5913727640283035359.a n = A060013 (n + 1)

theorem P5913727640283035359.correct : P5913727640283035359.Spec := by
  intro n
  simp only [A060013, Nat.add_sub_cancel, A060013.P5913727640283035359.a, A060013.P725709507848358002.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A060013

/-! ## A060013.P3051041021845734463

`record[A094373(n)%A209722(n+1)]`
-/

namespace A060013.P3051041021845734463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094373 n) (A209722 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060013.P3051041021845734463

namespace A060013

/-- `record[A094373(n)%A209722(n+1)]` -/
def P3051041021845734463.Spec : Prop :=
  ∀ n, P3051041021845734463.a n = A060013 (n + 1)

end A060013

/-!
# A060014: Sum of orders of all permutations of n letters.

The programs for A060014, there is no canonical definition to state claims against.
-/

/-! ## A060014.P5884483732677736122

`A226512(n!)`
-/

namespace A060014.P5884483732677736122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226512 (Nat.factorial n)

end

end A060014.P5884483732677736122

/-! ## A060014.P15562652839502735935

`∏{p}[A182666(n)², #]`
-/

namespace A060014.P15562652839502735935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182666 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A060014.P15562652839502735935

/-!
# A060015: Sum of orders of all even permutations of n letters.

The programs for A060015, there is no canonical definition to state claims against.
-/

/-! ## A060015.P5939268514812501907

`A060178(n+1)-A096596(n+1)`
-/

namespace A060015.P5939268514812501907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060178 (n + 1) - A096596 (n + 1)

end

end A060015.P5939268514812501907

/-! ## A060015.P1829800781622606834

`A060014(n+1)-A060178(n+1)`
-/

namespace A060015.P1829800781622606834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060014 (n + 1) - A060178 (n + 1)

end

end A060015.P1829800781622606834

/-!
# A060016: Triangle T(n,k) = number of partitions of n into k distinct parts, 1 <= k <= n.

The programs for A060016, there is no canonical definition to state claims against.
-/

/-! ## A060016.P12455825723874149521

`A072705(n+1)/A004070(n)`
-/

namespace A060016.P12455825723874149521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A004070 n : ℚ)

end

end A060016.P12455825723874149521

/-! ## A060016.P3177875499632507745

`A072705(n+1)/A059268(n)`
-/

namespace A060016.P3177875499632507745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A060016.P3177875499632507745

/-! ## A060016.P11571775114986302984

`A072705(n+1)/A144464(n)`
-/

namespace A060016.P11571775114986302984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A144464 n : ℚ)

end

end A060016.P11571775114986302984

/-! ## A060016.P4902243136907060919

`A072705(n+1)/A145111(n)`
-/

namespace A060016.P4902243136907060919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A145111 n : ℚ)

end

end A060016.P4902243136907060919

/-! ## A060016.P10523864093670574262

`A072705(n+1)/A216274(n)`
-/

namespace A060016.P10523864093670574262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A216274 n : ℚ)

end

end A060016.P10523864093670574262

/-! ## A060016.P17856235808200624380

`A072705(n+1)/A048887(n+1)`
-/

namespace A060016.P17856235808200624380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A048887 (n + 1) : ℚ)

end

end A060016.P17856235808200624380

/-! ## A060016.P6272480853169144859

`A072705(n+1)/A059250(n+1)`
-/

namespace A060016.P6272480853169144859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A059250 (n + 1) : ℚ)

end

end A060016.P6272480853169144859

/-! ## A060016.P9694419869843477701

`A072705(n+1)/A209435(n)`
-/

namespace A060016.P9694419869843477701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A209435 n : ℚ)

end

end A060016.P9694419869843477701

/-! ## A060016.P1389509265613274515

`A072574(n+1)/A226441(n+1)`
-/

namespace A060016.P1389509265613274515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072574 (n + 1) : ℚ) / (A226441 (n + 1) : ℚ)

end

end A060016.P1389509265613274515

/-! ## A060016.P12432558981281325252

`A072574(n+1)/A166350(n+1)`
-/

namespace A060016.P12432558981281325252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072574 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A060016.P12432558981281325252

/-! ## A060016.P10433213072354935773

`A072705(n+1)/A171840(n+1)`
-/

namespace A060016.P10433213072354935773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A171840 (n + 1) : ℚ)

end

end A060016.P10433213072354935773

/-! ## A060016.P15188643006067974494

`A072705(n+1)/A233308(n)`
-/

namespace A060016.P15188643006067974494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072705 (n + 1) : ℚ) / (A233308 n : ℚ)

end

end A060016.P15188643006067974494

/-!
# A060017: Number of n-feedback edge set obstructions.

The programs for A060017, there is no canonical definition to state claims against.
-/

/-! ## A060017.P9541794592385800295

`xor(n, A204908(A000420(n)))`
-/

namespace A060017.P9541794592385800295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A204908 (A000420 n).toNat)

end

end A060017.P9541794592385800295

/-!
# A060018: a(n) = floor(2*sqrt(n-2)).

The programs for A060018, the canonical program `A060018.P147541553989783833` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060018 has offset 2).

The definition of A060018 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*sqrt(n))` (program `A060018.P147541553989783833`, by `A060018.P147541553989783833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060018.P147541553989783833

`floor(2*sqrt(n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060018

/-- `floor(2*sqrt(n))` -/
def P147541553989783833.Spec : Prop :=
  ∀ n, P147541553989783833.a n = A060018 (n + 2)

theorem P147541553989783833.correct : P147541553989783833.Spec := by
  intro n
  simp only [A060018, Nat.add_sub_cancel]

end A060018

/-! ## A060018.P18369861204249416899

`A000194(n)+A000196(n)`
-/

namespace A060018.P18369861204249416899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n + A000196 n

end

end A060018.P18369861204249416899

namespace A060018

/-- `A000194(n)+A000196(n)` -/
def P18369861204249416899.Spec : Prop :=
  ∀ n, P18369861204249416899.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P17161955191341361132

`ceil(sqrt(Δ[C(2*n, 2)]))-1`
-/

namespace A060018.P17161955191341361132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ - 1

end

end A060018.P17161955191341361132

namespace A060018

/-- `ceil(sqrt(Δ[C(2*n, 2)]))-1` -/
def P17161955191341361132.Spec : Prop :=
  ∀ n, P17161955191341361132.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P1781258933848227387

`a(n-a(n-1))+2` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A060018.P1781258933848227387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 3] fun n a =>
  a (n - a (n - 1)) + 2

end

end A060018.P1781258933848227387

namespace A060018

/-- `a(n-a(n-1))+2` -/
def P1781258933848227387.Spec : Prop :=
  ∀ n, (P1781258933848227387.a n : ℤ) = A060018 (n + 2)

end A060018

/-! ## A060018.P8934929716611547993

`A172471(2*n)`
-/

namespace A060018.P8934929716611547993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (2 * n)

end

end A060018.P8934929716611547993

namespace A060018

/-- `A172471(2*n)` -/
def P8934929716611547993.Spec : Prop :=
  ∀ n, P8934929716611547993.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P10441833810859399937

`comp[A179272(n)]-n`
-/

namespace A060018.P10441833810859399937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179272 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A060018.P10441833810859399937

namespace A060018

/-- `comp[A179272(n)]-n` -/
def P10441833810859399937.Spec : Prop :=
  ∀ n, P10441833810859399937.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P5046038358300765189

`ceil(sqrt(A016813(n)))-1`
-/

namespace A060018.P5046038358300765189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016813 n : ℝ)⌉ - 1

end

end A060018.P5046038358300765189

namespace A060018

/-- `ceil(sqrt(A016813(n)))-1` -/
def P5046038358300765189.Spec : Prop :=
  ∀ n, P5046038358300765189.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P13730939894425459076

`comp[A038715(n)]-(n+1)`
-/

namespace A060018.P13730939894425459076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A060018.P13730939894425459076

namespace A060018

/-- `comp[A038715(n)]-(n+1)` -/
def P13730939894425459076.Spec : Prop :=
  ∀ n, P13730939894425459076.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P13980506738329806320

`comp[A038716(n)]-(n+1)`
-/

namespace A060018.P13980506738329806320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038716 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A060018.P13980506738329806320

namespace A060018

/-- `comp[A038716(n)]-(n+1)` -/
def P13980506738329806320.Spec : Prop :=
  ∀ n, P13980506738329806320.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P13305886539470507733

`comp[A184676(n+1)]-n`
-/

namespace A060018.P13305886539470507733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A060018.P13305886539470507733

namespace A060018

/-- `comp[A184676(n+1)]-n` -/
def P13305886539470507733.Spec : Prop :=
  ∀ n, P13305886539470507733.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P6688651437270824782

`A183866(n+1)-(n+1)`
-/

namespace A060018.P6688651437270824782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183866 (n + 1) - (n + 1 : ℤ)

end

end A060018.P6688651437270824782

namespace A060018

/-- `A183866(n+1)-(n+1)` -/
def P6688651437270824782.Spec : Prop :=
  ∀ n, P6688651437270824782.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P3089801329391172440

`comp[A198442(n+1)]-(n+1)`
-/

namespace A060018.P3089801329391172440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A060018.P3089801329391172440

namespace A060018

/-- `comp[A198442(n+1)]-(n+1)` -/
def P3089801329391172440.Spec : Prop :=
  ∀ n, P3089801329391172440.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P2921115063316218437

`ceil(sqrt(A000265(4*n+1)))-1`
-/

namespace A060018.P2921115063316218437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000265 (4 * n + 1) : ℝ)⌉ - 1

end

end A060018.P2921115063316218437

namespace A060018

/-- `ceil(sqrt(A000265(4*n+1)))-1` -/
def P2921115063316218437.Spec : Prop :=
  ∀ n, P2921115063316218437.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P1982084951779910220

`A000027(ceil(sqrt(2*n+2*n+1)))-1`
-/

namespace A060018.P1982084951779910220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈Real.sqrt (2 * n + (2 * n + 1) : ℝ)⌉.toNat - 1

end

end A060018.P1982084951779910220

namespace A060018

/-- `A000027(ceil(sqrt(2*n+2*n+1)))-1` -/
def P1982084951779910220.Spec : Prop :=
  ∀ n, P1982084951779910220.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P10568908521651785436

`A293137(n)+A057427(n)`
-/

namespace A060018.P10568908521651785436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 n + A057427 n

end

end A060018.P10568908521651785436

namespace A060018

/-- `A293137(n)+A057427(n)` -/
def P10568908521651785436.Spec : Prop :=
  ∀ n, P10568908521651785436.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P1261413484833966012

`A000267(n)-A005369(n)`
-/

namespace A060018.P1261413484833966012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n - A005369 n

end

end A060018.P1261413484833966012

namespace A060018

/-- `A000267(n)-A005369(n)` -/
def P1261413484833966012.Spec : Prop :=
  ∀ n, P1261413484833966012.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P15970088990278083897

`A028392(n)-A056847(n)`
-/

namespace A060018.P15970088990278083897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n - A056847 n

end

end A060018.P15970088990278083897

namespace A060018

/-- `A028392(n)-A056847(n)` -/
def P15970088990278083897.Spec : Prop :=
  ∀ n, P15970088990278083897.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P17604216851860990347

`A293137(n)-A057428(n)`
-/

namespace A060018.P17604216851860990347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 n - A057428 n

end

end A060018.P17604216851860990347

namespace A060018

/-- `A293137(n)-A057428(n)` -/
def P17604216851860990347.Spec : Prop :=
  ∀ n, P17604216851860990347.a n = A060018 (n + 2)

end A060018

/-! ## A060018.P17675784443029093490

`A284359(n)-A118175(n)`
-/

namespace A060018.P17675784443029093490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 n - A118175 n

end

end A060018.P17675784443029093490

namespace A060018

/-- `A284359(n)-A118175(n)` -/
def P17675784443029093490.Spec : Prop :=
  ∀ n, P17675784443029093490.a n = A060018 (n + 2)

end A060018

/-!
# A060019: a(n) = floor(2*sqrt(prime(n)-2)) where prime(n) = n-th prime.

The programs for A060019, the canonical program `A060019.P11572960328212097102` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060019 has offset 1).

The definition of A060019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060019.P7767220233846784759

`floor(2*sqrt(A040976(n+1)))`
-/

namespace A060019.P7767220233846784759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A040976 (n + 1) : ℝ)⌋

end

end A060019.P7767220233846784759

namespace A060019

/-- `floor(2*sqrt(A040976(n+1)))` -/
def P7767220233846784759.Spec : Prop :=
  ∀ n, P7767220233846784759.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P11572960328212097102

`floor(sqrt(A001749(n+1)-8))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060019

/-- `floor(sqrt(A001749(n+1)-8))` -/
def P11572960328212097102.Spec : Prop :=
  ∀ n, P11572960328212097102.a n = A060019 (n + 1)

theorem P11572960328212097102.correct : P11572960328212097102.Spec := by
  intro n
  simp only [A060019, Nat.add_sub_cancel]

end A060019

/-! ## A060019.P17561843729885409632

`floor(2*sqrt(A006093(n+1)-1))`
-/

namespace A060019.P17561843729885409632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A006093 (n + 1) - 1 : ℝ)⌋

end

end A060019.P17561843729885409632

namespace A060019

/-- `floor(2*sqrt(A006093(n+1)-1))` -/
def P17561843729885409632.Spec : Prop :=
  ∀ n, P17561843729885409632.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P6120877107965248922

`floor(2*sqrt(A000040(n+1)-2))`
-/

namespace A060019.P6120877107965248922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A000040 (n + 1) - 2 : ℝ)⌋

end

end A060019.P6120877107965248922

namespace A060019

/-- `floor(2*sqrt(A000040(n+1)-2))` -/
def P6120877107965248922.Spec : Prop :=
  ∀ n, P6120877107965248922.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P17491883548941775705

`floor(2*sqrt(lt[3*n+1-2*n, A006530(n+2)]))`
-/

namespace A060019.P17491883548941775705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℝ)⌋

end

end A060019.P17491883548941775705

namespace A060019

/-- `floor(2*sqrt(lt[3*n+1-2*n, A006530(n+2)]))` -/
def P17491883548941775705.Spec : Prop :=
  ∀ n, P17491883548941775705.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P17860593519261170609

`floor(2*sqrt(lt[n, A014963(n+2)]))`
-/

namespace A060019.P17860593519261170609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℝ)⌋

end

end A060019.P17860593519261170609

namespace A060019

/-- `floor(2*sqrt(lt[n, A014963(n+2)]))` -/
def P17860593519261170609.Spec : Prop :=
  ∀ n, P17860593519261170609.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P15667267504230320509

`A060018(A000040(n+1))`
-/

namespace A060019.P15667267504230320509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A000040 (n + 1)).toNat

end

end A060019.P15667267504230320509

namespace A060019

/-- `A060018(A000040(n+1))` -/
def P15667267504230320509.Spec : Prop :=
  ∀ n, P15667267504230320509.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P7052580755243113869

`A172471(A140777(n+1))`
-/

namespace A060019.P7052580755243113869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A140777 (n + 1)).toNat

end

end A060019.P7052580755243113869

namespace A060019

/-- `A172471(A140777(n+1))` -/
def P7052580755243113869.Spec : Prop :=
  ∀ n, P7052580755243113869.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P1538442262168644978

`A060018(A008578(n+2))`
-/

namespace A060019.P1538442262168644978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A008578 (n + 2)).toNat

end

end A060019.P1538442262168644978

namespace A060019

/-- `A060018(A008578(n+2))` -/
def P1538442262168644978.Spec : Prop :=
  ∀ n, P1538442262168644978.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P17283669042466858602

`A060018(A182986(n+2))`
-/

namespace A060019.P17283669042466858602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A182986 (n + 2)).toNat

end

end A060019.P17283669042466858602

namespace A060019

/-- `A060018(A182986(n+2))` -/
def P17283669042466858602.Spec : Prop :=
  ∀ n, P17283669042466858602.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P4543118572642396822

`A060018(record[A006530(n+2)])`
-/

namespace A060019.P4543118572642396822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060019.P4543118572642396822

namespace A060019

/-- `A060018(record[A006530(n+2)])` -/
def P4543118572642396822.Spec : Prop :=
  ∀ n, P4543118572642396822.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P13741992454380908105

`A060018(record[A014963(n+2)])`
-/

namespace A060019.P13741992454380908105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060019.P13741992454380908105

namespace A060019

/-- `A060018(record[A014963(n+2)])` -/
def P13741992454380908105.Spec : Prop :=
  ∀ n, P13741992454380908105.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P9218885554334806678

`A060018(record[A020639(n+2)])`
-/

namespace A060019.P9218885554334806678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060019.P9218885554334806678

namespace A060019

/-- `A060018(record[A020639(n+2)])` -/
def P9218885554334806678.Spec : Prop :=
  ∀ n, P9218885554334806678.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P12408724429207203013

`A060018(A008864(n+1)-1)`
-/

namespace A060019.P12408724429207203013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A008864 (n + 1) - 1).toNat

end

end A060019.P12408724429207203013

namespace A060019

/-- `A060018(A008864(n+1)-1)` -/
def P12408724429207203013.Spec : Prop :=
  ∀ n, P12408724429207203013.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P11983899395892401868

`A172471(2*(A006093(n+1)-1))`
-/

namespace A060019.P11983899395892401868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (2 * (A006093 (n + 1) - 1)).toNat

end

end A060019.P11983899395892401868

namespace A060019

/-- `A172471(2*(A006093(n+1)-1))` -/
def P11983899395892401868.Spec : Prop :=
  ∀ n, P11983899395892401868.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P14765839737413468399

`A172471(2*(A000040(n+1)-2))`
-/

namespace A060019.P14765839737413468399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (2 * (A000040 (n + 1) - 2)).toNat

end

end A060019.P14765839737413468399

namespace A060019

/-- `A172471(2*(A000040(n+1)-2))` -/
def P14765839737413468399.Spec : Prop :=
  ∀ n, P14765839737413468399.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P4808893059369114242

`A000267(A000040(n+1)-2)%(2*n+1)`
-/

namespace A060019.P4808893059369114242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000267 (A000040 (n + 1) - 2).toNat) (2 * n + 1 : ℤ)

end

end A060019.P4808893059369114242

namespace A060019

/-- `A000267(A000040(n+1)-2)%(2*n+1)` -/
def P4808893059369114242.Spec : Prop :=
  ∀ n, P4808893059369114242.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P9923404702120925971

`A172471(A006093(n+1)+A006093(n+1)-2)`
-/

namespace A060019.P9923404702120925971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A006093 (n + 1) + (A006093 (n + 1) - 2)).toNat

end

end A060019.P9923404702120925971

namespace A060019

/-- `A172471(A006093(n+1)+A006093(n+1)-2)` -/
def P9923404702120925971.Spec : Prop :=
  ∀ n, P9923404702120925971.a n = A060019 (n + 1)

end A060019

/-! ## A060019.P4262453500858022506

`A227568(A132227(n+1)-1)`
-/

namespace A060019.P4262453500858022506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A132227 (n + 1) - 1).toNat

end

end A060019.P4262453500858022506

namespace A060019

/-- `A227568(A132227(n+1)-1)` -/
def P4262453500858022506.Spec : Prop :=
  ∀ n, P4262453500858022506.a n = A060019 (n + 1)

end A060019

/-!
# A060020: Maximal size of a nonspanning subset of any Abelian group of order n.

The programs for A060020, there is no canonical definition to state claims against.
-/

/-! ## A060020.P17175989014728364012

`A060021(n+2)+ceil(abs(sin(n)))`
-/

namespace A060020.P17175989014728364012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060021 (n + 2) + ⌈|Real.sin (n : ℝ)|⌉

end

end A060020.P17175989014728364012

/-! ## A060020.P16680669974115409096

`A060021(n+2)+A057427(n)`
-/

namespace A060020.P16680669974115409096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060021 (n + 2) + A057427 n

end

end A060020.P16680669974115409096

/-! ## A060020.P10393541082721520101

`A178334(n)+A060021(n+2)`
-/

namespace A060020.P10393541082721520101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A060021 (n + 2)

end

end A060020.P10393541082721520101

/-! ## A060020.P4403128571123834974

`A178489(n)+A060021(n+2)`
-/

namespace A060020.P4403128571123834974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A060021 (n + 2)

end

end A060020.P4403128571123834974

/-! ## A060020.P18037236804716809858

`A060021(n+2)-A057428(n)`
-/

namespace A060020.P18037236804716809858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060021 (n + 2) - A057428 n

end

end A060020.P18037236804716809858

/-!
# A060021: Maximal size of a subset of any Abelian group of order n that does not contain 0 and fails to span the group nontrivially.

The programs for A060021, there is no canonical definition to state claims against.
-/

/-! ## A060021.P16575010523955088756

`A060020(n+2)-ceil(abs(sin(n)))`
-/

namespace A060021.P16575010523955088756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060020 (n + 2) - ⌈|Real.sin (n : ℝ)|⌉

end

end A060021.P16575010523955088756

/-! ## A060021.P12475110619953593236

`A369062(A060020(n+2))`
-/

namespace A060021.P12475110619953593236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369062 (A060020 (n + 2)).toNat

end

end A060021.P12475110619953593236

/-! ## A060021.P4897702621000115957

`A028310(A060020(n+2)-1)`
-/

namespace A060021.P4897702621000115957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060020 (n + 2) - 1).toNat

end

end A060021.P4897702621000115957

/-! ## A060021.P15313246950334882977

`A060020(n+2)+A057428(n)`
-/

namespace A060021.P15313246950334882977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060020 (n + 2) + A057428 n

end

end A060021.P15313246950334882977

/-! ## A060021.P911847794650152274

`A060020(n+2)-A057427(n)`
-/

namespace A060021.P911847794650152274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060020 (n + 2) - A057427 n

end

end A060021.P911847794650152274

/-!
# A060022: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 3.

The programs for A060022, the canonical program `A060022.P13619616995000884053` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060022 has offset 0).

The definition of A060022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060022.P13619616995000884053

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0, a(5)=-1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060022

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P13619616995000884053.Spec : Prop :=
  ∀ n, P13619616995000884053.a n = A060022 n

theorem P13619616995000884053.correct : P13619616995000884053.Spec := by
  intro n
  simp only [A060022]

end A060022

/-! ## A060022.P12353775119027053062

`A004526(n+2)-A069905(n+2)`
-/

namespace A060022.P12353775119027053062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 2) - A069905 (n + 2)

end

end A060022.P12353775119027053062

namespace A060022

/-- `A004526(n+2)-A069905(n+2)` -/
def P12353775119027053062.Spec : Prop :=
  ∀ n, P12353775119027053062.a n = A060022 n

end A060022

/-! ## A060022.P14495602697973420088

`ceil(xor(1, n)/6)-round(n²/12)`
-/

namespace A060022.P14495602697973420088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 6⌉ - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A060022.P14495602697973420088

namespace A060022

/-- `ceil(xor(1, n)/6)-round(n²/12)` -/
def P14495602697973420088.Spec : Prop :=
  ∀ n, P14495602697973420088.a n = A060022 n

end A060022

/-! ## A060022.P11130923543072535441

`floor(∑[a(n-2)-1]/3)` with `a(0)=3, a(1)=-2`
-/

namespace A060022.P11130923543072535441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -2] fun n f1 =>
  f1 (n - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A060022.P11130923543072535441

namespace A060022

/-- `floor(∑[a(n-2)-1]/3)` -/
def P11130923543072535441.Spec : Prop :=
  ∀ n, P11130923543072535441.a n = A060022 n

end A060022

/-! ## A060022.P6199721536952089263

`floor(a(n-2)+1-n/3)` with `a(0)=1, a(1)=0`
-/

namespace A060022.P6199721536952089263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + (1 - (n : ℚ) / 3)⌋

end

end A060022.P6199721536952089263

namespace A060022

/-- `floor(a(n-2)+1-n/3)` -/
def P6199721536952089263.Spec : Prop :=
  ∀ n, P6199721536952089263.a n = A060022 n

end A060022

/-! ## A060022.P6348889498091406435

`a(n-2)-floor((n-1)/3)` with `a(0)=1, a(1)=0`
-/

namespace A060022.P6348889498091406435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - ⌊((n : ℤ) - 1 : ℚ) / 3⌋

end

end A060022.P6348889498091406435

namespace A060022

/-- `a(n-2)-floor((n-1)/3)` -/
def P6348889498091406435.Spec : Prop :=
  ∀ n, P6348889498091406435.a n = A060022 n

end A060022

/-! ## A060022.P18069417700885138473

`ceil(a(n-2)-(n-1)/3)` with `a(0)=1, a(1)=0`
-/

namespace A060022.P18069417700885138473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌈(a (n - 2) : ℚ) - ((n : ℤ) - 1 : ℚ) / 3⌉

end

end A060022.P18069417700885138473

namespace A060022

/-- `ceil(a(n-2)-(n-1)/3)` -/
def P18069417700885138473.Spec : Prop :=
  ∀ n, P18069417700885138473.a n = A060022 n

end A060022

/-! ## A060022.P15044530719707945308

`round(a(n-2)-(n-2)/3)` with `a(0)=1, a(1)=0`
-/

namespace A060022.P15044530719707945308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) - ((n : ℤ) - 2 : ℚ) / 3)

end

end A060022.P15044530719707945308

namespace A060022

/-- `round(a(n-2)-(n-2)/3)` -/
def P15044530719707945308.Spec : Prop :=
  ∀ n, P15044530719707945308.a n = A060022 n

end A060022

/-! ## A060022.P268075083823439936

`∑[a(n-3)²]+a(n-2)-n` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A060022.P268075083823439936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 2) - (n : ℤ))

end

end A060022.P268075083823439936

namespace A060022

/-- `∑[a(n-3)²]+a(n-2)-n` -/
def P268075083823439936.Spec : Prop :=
  ∀ n, P268075083823439936.a n = A060022 n

end A060022

/-! ## A060022.P16224672325882023529

`∑[a(n-3)²]-(n-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A060022.P16224672325882023529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 2))

end

end A060022.P16224672325882023529

namespace A060022

/-- `∑[a(n-3)²]-(n-a(n-2))` -/
def P16224672325882023529.Spec : Prop :=
  ∀ n, P16224672325882023529.a n = A060022 n

end A060022

/-! ## A060022.P13873830498890423136

`∑[floor(a(n-3))]+a(n-2)-n` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060022.P13873830498890423136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 2) - (n : ℤ))

end

end A060022.P13873830498890423136

namespace A060022

/-- `∑[floor(a(n-3))]+a(n-2)-n` -/
def P13873830498890423136.Spec : Prop :=
  ∀ n, P13873830498890423136.a n = A060022 n

end A060022

/-! ## A060022.P10718861990942380829

`∑[floor(a(n-3))]-(n-a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A060022.P10718861990942380829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - a (n - 2))

end

end A060022.P10718861990942380829

namespace A060022

/-- `∑[floor(a(n-3))]-(n-a(n-2))` -/
def P10718861990942380829.Spec : Prop :=
  ∀ n, P10718861990942380829.a n = A060022 n

end A060022

/-! ## A060022.P3010472748163322775

`∑[a(n-1)-∑[n]%3]-a(n-1)` with `a(0)=1`
-/

namespace A060022.P3010472748163322775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A060022.P3010472748163322775

namespace A060022

/-- `∑[a(n-1)-∑[n]%3]-a(n-1)` -/
def P3010472748163322775.Spec : Prop :=
  ∀ n, P3010472748163322775.a n = A060022 n

end A060022

/-! ## A060022.P9352581060725072459

`∑[∑[a(n-1)*a(n-2)]-a(n-3)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A060022.P9352581060725072459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f2 =>
  f2 (n - 1) * f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060022.P9352581060725072459

namespace A060022

/-- `∑[∑[a(n-1)*a(n-2)]-a(n-3)]` -/
def P9352581060725072459.Spec : Prop :=
  ∀ n, P9352581060725072459.a n = A060022 n

end A060022

/-! ## A060022.P1901505102887363132

`∑[∑[a(n-1)/a(n-2)]-a(n-3)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A060022.P1901505102887363132
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1] fun n f2 =>
  f2 (n - 1) / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060022.P1901505102887363132

namespace A060022

/-- `∑[∑[a(n-1)/a(n-2)]-a(n-3)]` -/
def P1901505102887363132.Spec : Prop :=
  ∀ n, P1901505102887363132.a n = (A060022 n : ℚ)

end A060022

/-! ## A060022.P11631280736070289129

`A008748(n)-A004652(n)`
-/

namespace A060022.P11631280736070289129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A004652 n

end

end A060022.P11631280736070289129

namespace A060022

/-- `A008748(n)-A004652(n)` -/
def P11631280736070289129.Spec : Prop :=
  ∀ n, P11631280736070289129.a n = A060022 n

end A060022

/-! ## A060022.P18082173639013975799

`A103221(n)-A069905(n)`
-/

namespace A060022.P18082173639013975799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A069905 n

end

end A060022.P18082173639013975799

namespace A060022

/-- `A103221(n)-A069905(n)` -/
def P18082173639013975799.Spec : Prop :=
  ∀ n, P18082173639013975799.a n = A060022 n

end A060022

/-! ## A060022.P6205807036892202429

`∑[A115360(n)]-A069905(n)`
-/

namespace A060022.P6205807036892202429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A069905 n

end

end A060022.P6205807036892202429

namespace A060022

/-- `∑[A115360(n)]-A069905(n)` -/
def P6205807036892202429.Spec : Prop :=
  ∀ n, P6205807036892202429.a n = A060022 n

end A060022

/-! ## A060022.P15613692289773253045

`A051275(n)-A069905(n+1)`
-/

namespace A060022.P15613692289773253045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n - A069905 (n + 1)

end

end A060022.P15613692289773253045

namespace A060022

/-- `A051275(n)-A069905(n+1)` -/
def P15613692289773253045.Spec : Prop :=
  ∀ n, P15613692289773253045.a n = A060022 n

end A060022

/-! ## A060022.P9501253362777488693

`A156040(n)-A002620(n+1)`
-/

namespace A060022.P9501253362777488693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n - A002620 (n + 1)

end

end A060022.P9501253362777488693

namespace A060022

/-- `A156040(n)-A002620(n+1)` -/
def P9501253362777488693.Spec : Prop :=
  ∀ n, P9501253362777488693.a n = A060022 n

end A060022

/-!
# A060023: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 4.

The programs for A060023, the canonical program `A060023.P8062102641102421035` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060023 has offset 0).

The definition of A060023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060023.P8062102641102421035

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=0, a(6)=1, a(7)=-1, a(8)=-1, a(9)=-3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060023

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P8062102641102421035.Spec : Prop :=
  ∀ n, P8062102641102421035.a n = A060023 n

theorem P8062102641102421035.correct : P8062102641102421035.Spec := by
  intro n
  simp only [A060023]

end A060023

/-! ## A060023.P3419186132121289421

`A069905(n+3)-A026810(n+3)`
-/

namespace A060023.P3419186132121289421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 3) - A026810 (n + 3)

end

end A060023.P3419186132121289421

namespace A060023

/-- `A069905(n+3)-A026810(n+3)` -/
def P3419186132121289421.Spec : Prop :=
  ∀ n, P3419186132121289421.a n = A060023 n

end A060023

/-! ## A060023.P17373112668452814123

`A266755(n)-A026810(n)`
-/

namespace A060023.P17373112668452814123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A026810 n

end

end A060023.P17373112668452814123

namespace A060023

/-- `A266755(n)-A026810(n)` -/
def P17373112668452814123.Spec : Prop :=
  ∀ n, P17373112668452814123.a n = A060023 n

end A060023

/-! ## A060023.P17622035923052421696

`A001399(n)+A266755(n)-A001400(n)`
-/

namespace A060023.P17622035923052421696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A266755 n - A001400 n)

end

end A060023.P17622035923052421696

namespace A060023

/-- `A001399(n)+A266755(n)-A001400(n)` -/
def P17622035923052421696.Spec : Prop :=
  ∀ n, P17622035923052421696.a n = A060023 n

end A060023

/-! ## A060023.P3146074383387474991

`A254708(n)-(A254707(n)+A026810(n))`
-/

namespace A060023.P3146074383387474991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - (A254707 n + A026810 n)

end

end A060023.P3146074383387474991

namespace A060023

/-- `A254708(n)-(A254707(n)+A026810(n))` -/
def P3146074383387474991.Spec : Prop :=
  ∀ n, P3146074383387474991.a n = A060023 n

end A060023

/-! ## A060023.P8003543812536572609

`round((n+3)²/12)-∑[A005044(n+2)]`
-/

namespace A060023.P8003543812536572609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060023.P8003543812536572609

namespace A060023

/-- `round((n+3)²/12)-∑[A005044(n+2)]` -/
def P8003543812536572609.Spec : Prop :=
  ∀ n, P8003543812536572609.a n = A060023 n

end A060023

/-! ## A060023.P12643938472426493678

`A025767(n+1)+A001399(n)-A001400(n+1)`
-/

namespace A060023.P12643938472426493678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (n + 1) + (A001399 n - A001400 (n + 1))

end

end A060023.P12643938472426493678

namespace A060023

/-- `A025767(n+1)+A001399(n)-A001400(n+1)` -/
def P12643938472426493678.Spec : Prop :=
  ∀ n, P12643938472426493678.a n = A060023 n

end A060023

/-! ## A060023.P1310717791044079851

`A001399(n)-A026810(n+3)`
-/

namespace A060023.P1310717791044079851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A026810 (n + 3)

end

end A060023.P1310717791044079851

namespace A060023

/-- `A001399(n)-A026810(n+3)` -/
def P1310717791044079851.Spec : Prop :=
  ∀ n, P1310717791044079851.a n = A060023 n

end A060023

/-! ## A060023.P10241421219209460545

`A005044(n+3)-A026810(n)`
-/

namespace A060023.P10241421219209460545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) - A026810 n

end

end A060023.P10241421219209460545

namespace A060023

/-- `A005044(n+3)-A026810(n)` -/
def P10241421219209460545.Spec : Prop :=
  ∀ n, P10241421219209460545.a n = A060023 n

end A060023

/-! ## A060023.P7107373606011115752

`Δ[A026810(n+3)]-A026810(n)`
-/

namespace A060023.P7107373606011115752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026810 n

end

end A060023.P7107373606011115752

namespace A060023

/-- `Δ[A026810(n+3)]-A026810(n)` -/
def P7107373606011115752.Spec : Prop :=
  ∀ n, P7107373606011115752.a n = A060023 n

end A060023

/-! ## A060023.P13534837669391371033

`A001399(n)-A029138(2*n+1)`
-/

namespace A060023.P13534837669391371033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A029138 (2 * n + 1)

end

end A060023.P13534837669391371033

namespace A060023

/-- `A001399(n)-A029138(2*n+1)` -/
def P13534837669391371033.Spec : Prop :=
  ∀ n, P13534837669391371033.a n = A060023 n

end A060023

/-! ## A060023.P14878194138464831002

`A025830(4*n)-∑[A025830(2*n+1)]`
-/

namespace A060023.P14878194138464831002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (4 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060023.P14878194138464831002

namespace A060023

/-- `A025830(4*n)-∑[A025830(2*n+1)]` -/
def P14878194138464831002.Spec : Prop :=
  ∀ n, P14878194138464831002.a n = A060023 n

end A060023

/-!
# A060024: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 5.

The programs for A060024, the canonical program `A060024.P6216530268530384553` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060024 has offset 0).

The definition of A060024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060024.P6216530268530384553

`A026810(n+4)-A026811(n+4)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060024

/-- `A026810(n+4)-A026811(n+4)` -/
def P6216530268530384553.Spec : Prop :=
  ∀ n, P6216530268530384553.a n = A060024 n

theorem P6216530268530384553.correct : P6216530268530384553.Spec := by
  intro n
  simp only [A060024]

end A060024

/-! ## A060024.P18269308172083581193

`A008667(n)-A026811(n)`
-/

namespace A060024.P18269308172083581193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A026811 n

end

end A060024.P18269308172083581193

namespace A060024

/-- `A008667(n)-A026811(n)` -/
def P18269308172083581193.Spec : Prop :=
  ∀ n, P18269308172083581193.a n = A060024 n

end A060024

/-! ## A060024.P787306425487844386

`A001400(n)+A008667(n)-A001401(n)`
-/

namespace A060024.P787306425487844386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A008667 n - A001401 n)

end

end A060024.P787306425487844386

namespace A060024

/-- `A001400(n)+A008667(n)-A001401(n)` -/
def P787306425487844386.Spec : Prop :=
  ∀ n, P787306425487844386.a n = A060024 n

end A060024

/-! ## A060024.P4518497751504301774

`A008667(n)+∑[A266755(n)-A008667(n)]`
-/

namespace A060024.P4518497751504301774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060024.P4518497751504301774

namespace A060024

/-- `A008667(n)+∑[A266755(n)-A008667(n)]` -/
def P4518497751504301774.Spec : Prop :=
  ∀ n, P4518497751504301774.a n = A060024 n

end A060024

/-! ## A060024.P16524756278094235163

`A025795(n)+Δ[A026811(n)]-A026811(n)`
-/

namespace A060024.P16524756278094235163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n + (f1 (n + 1) - f1 n - A026811 n)

end

end A060024.P16524756278094235163

namespace A060024

/-- `A025795(n)+Δ[A026811(n)]-A026811(n)` -/
def P16524756278094235163.Spec : Prop :=
  ∀ n, P16524756278094235163.a n = A060024 n

end A060024

/-! ## A060024.P784150475864770326

`A029032(n+1)-(A266755(n+1)+A026811(n+1))`
-/

namespace A060024.P784150475864770326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029032 (n + 1) - (A266755 (n + 1) + A026811 (n + 1))

end

end A060024.P784150475864770326

namespace A060024

/-- `A029032(n+1)-(A266755(n+1)+A026811(n+1))` -/
def P784150475864770326.Spec : Prop :=
  ∀ n, P784150475864770326.a n = A060024 n

end A060024

/-! ## A060024.P9325849551216062165

`A001400(n)-A026811(n+4)`
-/

namespace A060024.P9325849551216062165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A026811 (n + 4)

end

end A060024.P9325849551216062165

namespace A060024

/-- `A001400(n)-A026811(n+4)` -/
def P9325849551216062165.Spec : Prop :=
  ∀ n, P9325849551216062165.a n = A060024 n

end A060024

/-! ## A060024.P10331393003337643714

`Δ[A026811(n+4)]-A026811(n)`
-/

namespace A060024.P10331393003337643714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026811 n

end

end A060024.P10331393003337643714

namespace A060024

/-- `Δ[A026811(n+4)]-A026811(n)` -/
def P10331393003337643714.Spec : Prop :=
  ∀ n, P10331393003337643714.a n = A060024 n

end A060024

/-! ## A060024.P7089136070842798704

`A029327(2*n)-A026811(n)`
-/

namespace A060024.P7089136070842798704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (2 * n) - A026811 n

end

end A060024.P7089136070842798704

namespace A060024

/-- `A029327(2*n)-A026811(n)` -/
def P7089136070842798704.Spec : Prop :=
  ∀ n, P7089136070842798704.a n = A060024 n

end A060024

/-! ## A060024.P16584589682175240685

`A001400(n)-A266768(2*n+3)`
-/

namespace A060024.P16584589682175240685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A266768 (2 * n + 3)

end

end A060024.P16584589682175240685

namespace A060024

/-- `A001400(n)-A266768(2*n+3)` -/
def P16584589682175240685.Spec : Prop :=
  ∀ n, P16584589682175240685.a n = A060024 n

end A060024

/-!
# A060025: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 6.

The programs for A060025, the canonical program `A060025.P9020648666092478282` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060025 has offset 0).

The definition of A060025 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, A026812, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060025.P9020648666092478282

`A026811(n+5)-A026812(n+5)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060025

/-- `A026811(n+5)-A026812(n+5)` -/
def P9020648666092478282.Spec : Prop :=
  ∀ n, P9020648666092478282.a n = A060025 n

theorem P9020648666092478282.correct : P9020648666092478282.Spec := by
  intro n
  simp only [A060025]

end A060025

/-! ## A060025.P7865015195115884490

`A037145(n)-A026812(n)`
-/

namespace A060025.P7865015195115884490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A026812 n

end

end A060025.P7865015195115884490

namespace A060025

/-- `A037145(n)-A026812(n)` -/
def P7865015195115884490.Spec : Prop :=
  ∀ n, P7865015195115884490.a n = A060025 n

end A060025

/-! ## A060025.P10281735514707983830

`A008667(n)-A026812(abs(1-n))`
-/

namespace A060025.P10281735514707983830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A026812 |1 - (n : ℤ)|.toNat

end

end A060025.P10281735514707983830

namespace A060025

/-- `A008667(n)-A026812(abs(1-n))` -/
def P10281735514707983830.Spec : Prop :=
  ∀ n, P10281735514707983830.a n = A060025 n

end A060025

/-! ## A060025.P8376245083470197506

`A001401(n)+A037145(n)-A001402(n)`
-/

namespace A060025.P8376245083470197506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A037145 n - A001402 n)

end

end A060025.P8376245083470197506

namespace A060025

/-- `A001401(n)+A037145(n)-A001402(n)` -/
def P8376245083470197506.Spec : Prop :=
  ∀ n, P8376245083470197506.a n = A060025 n

end A060025

/-! ## A060025.P7675768471417979302

`A037145(n)+∑[A008667(n)-A037145(n)]`
-/

namespace A060025.P7675768471417979302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060025.P7675768471417979302

namespace A060025

/-- `A037145(n)+∑[A008667(n)-A037145(n)]` -/
def P7675768471417979302.Spec : Prop :=
  ∀ n, P7675768471417979302.a n = A060025 n

end A060025

/-! ## A060025.P9305338559353412528

`A001401(n)-A026812(n+5)`
-/

namespace A060025.P9305338559353412528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026812 (n + 5)

end

end A060025.P9305338559353412528

namespace A060025

/-- `A001401(n)-A026812(n+5)` -/
def P9305338559353412528.Spec : Prop :=
  ∀ n, P9305338559353412528.a n = A060025 n

end A060025

/-! ## A060025.P5309419296581198440

`Δ[A026812(n+5)]-A026812(n)`
-/

namespace A060025.P5309419296581198440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026812 n

end

end A060025.P5309419296581198440

namespace A060025

/-- `Δ[A026812(n+5)]-A026812(n)` -/
def P5309419296581198440.Spec : Prop :=
  ∀ n, P5309419296581198440.a n = A060025 n

end A060025

/-! ## A060025.P8383887614904234444

`A026812(n+6)-(A026812(n+5)+A026812(n))`
-/

namespace A060025.P8383887614904234444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 6) - (A026812 (n + 5) + A026812 n)

end

end A060025.P8383887614904234444

namespace A060025

/-- `A026812(n+6)-(A026812(n+5)+A026812(n))` -/
def P8383887614904234444.Spec : Prop :=
  ∀ n, P8383887614904234444.a n = A060025 n

end A060025

/-! ## A060025.P13640908619629542424

`A266768(2*n)-A026812(n+5)`
-/

namespace A060025.P13640908619629542424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266768 (2 * n) - A026812 (n + 5)

end

end A060025.P13640908619629542424

namespace A060025

/-- `A266768(2*n)-A026812(n+5)` -/
def P13640908619629542424.Spec : Prop :=
  ∀ n, P13640908619629542424.a n = A060025 n

end A060025

/-! ## A060025.P14346513994670235925

`A001401(n)-A152146(A167614(n+1))`
-/

namespace A060025.P14346513994670235925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A152146 (A167614 (n + 1)).toNat

end

end A060025.P14346513994670235925

namespace A060025

/-- `A001401(n)-A152146(A167614(n+1))` -/
def P14346513994670235925.Spec : Prop :=
  ∀ n, P14346513994670235925.a n = A060025 n

end A060025

/-!
# A060026: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 7.

The programs for A060026, there is no canonical definition to state claims against.
-/

/-! ## A060026.P14387817823253568183

`A026812(n+6)-A026813(n+6)`
-/

namespace A060026.P14387817823253568183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 6) - A026813 (n + 6)

end

end A060026.P14387817823253568183

/-! ## A060026.P13409682119201187468

`A037145(n)-A026813(abs(1-n))`
-/

namespace A060026.P13409682119201187468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A026813 |1 - (n : ℤ)|.toNat

end

end A060026.P13409682119201187468

/-! ## A060026.P11926344943046657600

`A001402(n)-A026813(n+6)`
-/

namespace A060026.P11926344943046657600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A026813 (n + 6)

end

end A060026.P11926344943046657600

/-! ## A060026.P8526353251393053206

`Δ[A026813(n+6)]-A026813(n)`
-/

namespace A060026.P8526353251393053206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026813 n

end

end A060026.P8526353251393053206

/-! ## A060026.P8450173713433282183

`A026813(n+7)-(A026813(n+6)+A026813(n))`
-/

namespace A060026.P8450173713433282183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 7) - (A026813 (n + 6) + A026813 n)

end

end A060026.P8450173713433282183

/-! ## A060026.P4126412857914022678

`A001402(n)-A266770(A020735(n+1))`
-/

namespace A060026.P4126412857914022678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A266770 (A020735 (n + 1)).toNat

end

end A060026.P4126412857914022678

/-! ## A060026.P4286653837347547936

`A001996(n)-A026813(n)`
-/

namespace A060026.P4286653837347547936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - A026813 n

end

end A060026.P4286653837347547936

/-! ## A060026.P768339093041646740

`A001402(n)+A001996(n)-A008636(n)`
-/

namespace A060026.P768339093041646740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n + (A001996 n - A008636 n)

end

end A060026.P768339093041646740

/-! ## A060026.P8367216875158910145

`A001996(n)+∑[A037145(n)-A001996(n)]`
-/

namespace A060026.P8367216875158910145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060026.P8367216875158910145

/-!
# A060027: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 8.

The programs for A060027, there is no canonical definition to state claims against.
-/

/-! ## A060027.P3070951226284266217

`A026813(n+7)-A026814(n+7)`
-/

namespace A060027.P3070951226284266217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 7) - A026814 (n + 7)

end

end A060027.P3070951226284266217

/-! ## A060027.P5818074122569116263

`A266776(n)-A026814(n)`
-/

namespace A060027.P5818074122569116263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n - A026814 n

end

end A060027.P5818074122569116263

/-! ## A060027.P15353643989092714858

`Δ[A026814(n+7)]-A026814(n)`
-/

namespace A060027.P15353643989092714858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026814 n

end

end A060027.P15353643989092714858

/-! ## A060027.P12650793576877596215

`A008636(n)-A026814(n+7)`
-/

namespace A060027.P12650793576877596215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A026814 (n + 7)

end

end A060027.P12650793576877596215

/-! ## A060027.P6547522872732409668

`A008636(n)+A266776(n)-A008637(n)`
-/

namespace A060027.P6547522872732409668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n + (A266776 n - A008637 n)

end

end A060027.P6547522872732409668

/-! ## A060027.P11362330960503036809

`A266776(n)+∑[A001996(n)-A266776(n)]`
-/

namespace A060027.P11362330960503036809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060027.P11362330960503036809

/-! ## A060027.P3639002522666675351

`A001996(n)-A026814(log2(A011782(n)))`
-/

namespace A060027.P3639002522666675351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n - A026814 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A060027.P3639002522666675351

/-!
# A060028: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 9.

The programs for A060028, there is no canonical definition to state claims against.
-/

/-! ## A060028.P13307616141066522348

`A026814(n+8)-A026815(n+8)`
-/

namespace A060028.P13307616141066522348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 8) - A026815 (n + 8)

end

end A060028.P13307616141066522348

/-! ## A060028.P11317536178642300630

`A266777(n)-A026815(n)`
-/

namespace A060028.P11317536178642300630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n - A026815 n

end

end A060028.P11317536178642300630

/-! ## A060028.P12484675684126466426

`A266777(n)+∑[A266776(n)-A266777(n)]`
-/

namespace A060028.P12484675684126466426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n - A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060028.P12484675684126466426

/-! ## A060028.P10178153934767829792

`Δ[A026815(n+8)]-A026815(n)`
-/

namespace A060028.P10178153934767829792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026815 n

end

end A060028.P10178153934767829792

/-! ## A060028.P16574258203433102367

`Δ[A266772(A020742(n))]-A026815(n)`
-/

namespace A060028.P16574258203433102367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026815 n

end

end A060028.P16574258203433102367

/-! ## A060028.P16385191277355308892

`A008637(n)-A026815(n+8)`
-/

namespace A060028.P16385191277355308892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A026815 (n + 8)

end

end A060028.P16385191277355308892

/-! ## A060028.P11159297539000954420

`A008637(n)-A266772(A020742(n))`
-/

namespace A060028.P11159297539000954420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A266772 (A020742 n).toNat

end

end A060028.P11159297539000954420

/-! ## A060028.P13825625989561827076

`A008637(n)-A266772(A004273(n+4))`
-/

namespace A060028.P13825625989561827076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A266772 (A004273 (n + 4)).toNat

end

end A060028.P13825625989561827076

/-! ## A060028.P4214416837205916493

`A008637(n)+A266777(n)-A008638(n)`
-/

namespace A060028.P4214416837205916493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n + (A266777 n - A008638 n)

end

end A060028.P4214416837205916493

/-!
# A060029: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 10.

The programs for A060029, there is no canonical definition to state claims against.
-/

/-! ## A060029.P6022772038856067451

`A026815(n+9)-A026816(n+9)`
-/

namespace A060029.P6022772038856067451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 9) - A026816 (n + 9)

end

end A060029.P6022772038856067451

/-! ## A060029.P17129111508471049736

`A266778(n)-A026816(n)`
-/

namespace A060029.P17129111508471049736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n - A026816 n

end

end A060029.P17129111508471049736

/-! ## A060029.P229954365946537407

`a(n-1)-(A266778(n-1)-A266777(n))` with `a(0)=1`
-/

namespace A060029.P229954365946537407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A266778 (n - 1) - A266777 n)

end

end A060029.P229954365946537407

/-! ## A060029.P13667633250856489325

`A266777(n)-A026816(abs(A023443(n)))`
-/

namespace A060029.P13667633250856489325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n - A026816 |A023443 n|.toNat

end

end A060029.P13667633250856489325

/-! ## A060029.P1080160675917787396

`A266778(n)+∑[A266777(n)-A266778(n)]`
-/

namespace A060029.P1080160675917787396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n - A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060029.P1080160675917787396

/-! ## A060029.P6088868461113417730

`Δ[A026816(n+9)]-A026816(n)`
-/

namespace A060029.P6088868461113417730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A026816 n

end

end A060029.P6088868461113417730

/-! ## A060029.P3999718540550251284

`A008638(n)-A026816(n+9)`
-/

namespace A060029.P3999718540550251284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A026816 (n + 9)

end

end A060029.P3999718540550251284

/-! ## A060029.P16052726285832378432

`A008638(n)+A266778(n)-A008639(n)`
-/

namespace A060029.P16052726285832378432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n + (A266778 n - A008639 n)

end

end A060029.P16052726285832378432

/-!
# A060034: Number of partitions of n such that all parts are neither relatively prime (cf. A000837) nor are they periodic with each part occurring the same number of times (cf. A024994).

The programs for A060034, there is no canonical definition to state claims against.
-/

/-! ## A060034.P12448474446519244149

`A000041(n+1)-(A000837(n+1)+A024994(n+1))`
-/

namespace A060034.P12448474446519244149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A000837 (n + 1) + A024994 (n + 1))

end

end A060034.P12448474446519244149

/-! ## A060034.P17627019716061763563

`A018783(n+1)-A024994(n+1)`
-/

namespace A060034.P17627019716061763563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - A024994 (n + 1)

end

end A060034.P17627019716061763563

/-! ## A060034.P7912540072532321764

`A018783(n+1)-∑{d}[n+1, A303280(#)]`
-/

namespace A060034.P7912540072532321764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A303280 d

end

end A060034.P7912540072532321764

/-! ## A060034.P11406545237082137259

`A000009(n+1)+A018783(n+1)-A047966(n+1)`
-/

namespace A060034.P11406545237082137259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) + (A018783 (n + 1) - A047966 (n + 1))

end

end A060034.P11406545237082137259

/-! ## A060034.P2408186768906167324

`A018783(n+1)-(∑{d}[n+1, A000009(#)]-A000009(n+1))`
-/

namespace A060034.P2408186768906167324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - (∑ d ∈ Nat.divisors (f1 n), A000009 d - A000009 (n + 1))

end

end A060034.P2408186768906167324

/-! ## A060034.P16486909760481039401

`abs(∑{d}[n+1, A047966(#)*A157658((n+1)/#)]-A018783(n+1))`
-/

namespace A060034.P16486909760481039401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A047966 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A018783 (n + 1)|

end

end A060034.P16486909760481039401

/-! ## A060034.P856165991166094587

`A018783(A000027(n+1))+A001489(A024994(n+1))`
-/

namespace A060034.P856165991166094587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A000027 (n + 1)).toNat + A001489 (A024994 (n + 1)).toNat

end

end A060034.P856165991166094587

/-!
# A060036: Triangular array T read by rows: T(n,k) = k^2 mod n, for k = 1,2,...,n-1, n = 2,3,...

The programs for A060036, the canonical program `A060036.P2831409132372639337` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060036 has offset 2).

The definition of A060036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060036.P8538136096389989397

`A193592(n)²%(comp[∑[n]]-n)`
-/

namespace A060036.P8538136096389989397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193592 n ^ 2) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A060036.P8538136096389989397

namespace A060036

/-- `A193592(n)²%(comp[∑[n]]-n)` -/
def P8538136096389989397.Spec : Prop :=
  ∀ n, P8538136096389989397.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P5412676885291941388

`A002260(n+1)²%(comp[∑[n]]-n)`
-/

namespace A060036.P5412676885291941388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1) ^ 2) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A060036.P5412676885291941388

namespace A060036

/-- `A002260(n+1)²%(comp[∑[n]]-n)` -/
def P5412676885291941388.Spec : Prop :=
  ∀ n, P5412676885291941388.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P14463544058963492600

`(A002262(n)+1)²%(comp[∑[n]]-n)`
-/

namespace A060036.P14463544058963492600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A002262 n + 1) ^ 2) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A060036.P14463544058963492600

namespace A060036

/-- `(A002262(n)+1)²%(comp[∑[n]]-n)` -/
def P14463544058963492600.Spec : Prop :=
  ∀ n, P14463544058963492600.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P17544547086193115858

`A003983(n+1)²%(comp[∑[n]]-n)`
-/

namespace A060036.P17544547086193115858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003983 (n + 1) ^ 2) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A060036.P17544547086193115858

namespace A060036

/-- `A003983(n+1)²%(comp[∑[n]]-n)` -/
def P17544547086193115858.Spec : Prop :=
  ∀ n, P17544547086193115858.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P17142546480381034126

`A004736(n+1)²%(comp[∑[n]]-n)`
-/

namespace A060036.P17142546480381034126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (n + 1) ^ 2) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A060036.P17142546480381034126

namespace A060036

/-- `A004736(n+1)²%(comp[∑[n]]-n)` -/
def P17142546480381034126.Spec : Prop :=
  ∀ n, P17142546480381034126.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P13110225351258310218

`(C(comp[∑[n]]-n, 2)-n)²%A003057(n+2)`
-/

namespace A060036.P13110225351258310218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2) (A003057 (n + 2))

end

end A060036.P13110225351258310218

namespace A060036

/-- `(C(comp[∑[n]]-n, 2)-n)²%A003057(n+2)` -/
def P13110225351258310218.Spec : Prop :=
  ∀ n, P13110225351258310218.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P4125813351662509996

`A133819(n+1)%A332026(n+1)`
-/

namespace A060036.P4125813351662509996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133819 (n + 1)) (A332026 (n + 1))

end

end A060036.P4125813351662509996

namespace A060036

/-- `A133819(n+1)%A332026(n+1)` -/
def P4125813351662509996.Spec : Prop :=
  ∀ n, P4125813351662509996.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P2831409132372639337

`A055461(n+1)%A003057(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060036

/-- `A055461(n+1)%A003057(n+2)` -/
def P2831409132372639337.Spec : Prop :=
  ∀ n, P2831409132372639337.a n = A060036 (n + 2)

theorem P2831409132372639337.correct : P2831409132372639337.Spec := by
  intro n
  simp only [A060036, Nat.add_sub_cancel]

end A060036

/-! ## A060036.P16375018826278653258

`A063930(n+1)%A003057(n+2)`
-/

namespace A060036.P16375018826278653258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063930 (n + 1)) (A003057 (n + 2))

end

end A060036.P16375018826278653258

namespace A060036

/-- `A063930(n+1)%A003057(n+2)` -/
def P16375018826278653258.Spec : Prop :=
  ∀ n, P16375018826278653258.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P8973763626553579961

`A106314(n+1)%A003057(n+2)`
-/

namespace A060036.P8973763626553579961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106314 (n + 1)) (A003057 (n + 2))

end

end A060036.P8973763626553579961

namespace A060036

/-- `A106314(n+1)%A003057(n+2)` -/
def P8973763626553579961.Spec : Prop :=
  ∀ n, P8973763626553579961.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P11655481740281280061

`A055096(n+2)%A003057(n+2)`
-/

namespace A060036.P11655481740281280061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055096 (n + 2)) (A003057 (n + 2))

end

end A060036.P11655481740281280061

namespace A060036

/-- `A055096(n+2)%A003057(n+2)` -/
def P11655481740281280061.Spec : Prop :=
  ∀ n, P11655481740281280061.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P13711796010128166330

`A048152(comp[∑[n]])`
-/

namespace A060036.P13711796010128166330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060036.P13711796010128166330

namespace A060036

/-- `A048152(comp[∑[n]])` -/
def P13711796010128166330.Spec : Prop :=
  ∀ n, P13711796010128166330.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P2365409916870699818

`A176282(n)%A332026(n+1)`
-/

namespace A060036.P2365409916870699818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176282 n) (A332026 (n + 1))

end

end A060036.P2365409916870699818

namespace A060036

/-- `A176282(n)%A332026(n+1)` -/
def P2365409916870699818.Spec : Prop :=
  ∀ n, P2365409916870699818.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P3919733418724993013

`A336302(A063657(n+1))`
-/

namespace A060036.P3919733418724993013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A063657 (n + 1)).toNat

end

end A060036.P3919733418724993013

namespace A060036

/-- `A336302(A063657(n+1))` -/
def P3919733418724993013.Spec : Prop :=
  ∀ n, P3919733418724993013.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P14925748748282740740

`A336302(A217575(n+1)+1)`
-/

namespace A060036.P14925748748282740740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A217575 (n + 1) + 1).toNat

end

end A060036.P14925748748282740740

namespace A060036

/-- `A336302(A217575(n+1)+1)` -/
def P14925748748282740740.Spec : Prop :=
  ∀ n, P14925748748282740740.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P3570881709812546712

`A350037(A189151(n+1))`
-/

namespace A060036.P3570881709812546712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350037 (A189151 (n + 1)).toNat

end

end A060036.P3570881709812546712

namespace A060036

/-- `A350037(A189151(n+1))` -/
def P3570881709812546712.Spec : Prop :=
  ∀ n, P3570881709812546712.a n = A060036 (n + 2)

end A060036

/-! ## A060036.P502325607897304186

`A343720(A080036(n+1))`
-/

namespace A060036.P502325607897304186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A080036 (n + 1)).toNat

end

end A060036.P502325607897304186

namespace A060036

/-- `A343720(A080036(n+1))` -/
def P502325607897304186.Spec : Prop :=
  ∀ n, P502325607897304186.a n = A060036 (n + 2)

end A060036

/-!
# A060037: Triangular array T read by rows: T(n,k)=k^2 mod n, for k=1,2,...,[n/2], n=2,3,...

The programs for A060037, the canonical program `A060037.P5636579364470323384` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060037 has offset 2).

The definition of A060037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060037.P14873853352920575300

`A126114(n+1)%A027434(n+1)`
-/

namespace A060037.P14873853352920575300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126114 (n + 1)) (A027434 (n + 1))

end

end A060037.P14873853352920575300

namespace A060037

/-- `A126114(n+1)%A027434(n+1)` -/
def P14873853352920575300.Spec : Prop :=
  ∀ n, P14873853352920575300.a n = A060037 (n + 2)

end A060037

/-! ## A060037.P5636579364470323384

`A007606(n+1)²%A027434(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060037

/-- `A007606(n+1)²%A027434(n+1)` -/
def P5636579364470323384.Spec : Prop :=
  ∀ n, P5636579364470323384.a n = A060037 (n + 2)

theorem P5636579364470323384.correct : P5636579364470323384.Spec := by
  intro n
  simp only [A060037, Nat.add_sub_cancel]

end A060037

/-! ## A060037.P3520933516486264218

`A122197(n+1)²%A027434(n+1)`
-/

namespace A060037.P3520933516486264218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122197 (n + 1) ^ 2) (A027434 (n + 1))

end

end A060037.P3520933516486264218

namespace A060037

/-- `A122197(n+1)²%A027434(n+1)` -/
def P3520933516486264218.Spec : Prop :=
  ∀ n, P3520933516486264218.a n = A060037 (n + 2)

end A060037

/-! ## A060037.P14519978368475784021

`A093995(A056536(n+1))%A027434(n+1)`
-/

namespace A060037.P14519978368475784021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093995 (A056536 (n + 1)).toNat) (A027434 (n + 1))

end

end A060037.P14519978368475784021

namespace A060037

/-- `A093995(A056536(n+1))%A027434(n+1)` -/
def P14519978368475784021.Spec : Prop :=
  ∀ n, P14519978368475784021.a n = A060037 (n + 2)

end A060037

/-! ## A060037.P12673434586004535682

`A048152(record[A028242(A217575(n+1))])`
-/

namespace A060037.P12673434586004535682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A217575 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060037.P12673434586004535682

namespace A060037

/-- `A048152(record[A028242(A217575(n+1))])` -/
def P12673434586004535682.Spec : Prop :=
  ∀ n, P12673434586004535682.a n = A060037 (n + 2)

end A060037

/-! ## A060037.P964720495767293999

`A048152(record[A131732(A217575(n+1))])`
-/

namespace A060037.P964720495767293999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A217575 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060037.P964720495767293999

namespace A060037

/-- `A048152(record[A131732(A217575(n+1))])` -/
def P964720495767293999.Spec : Prop :=
  ∀ n, P964720495767293999.a n = A060037 (n + 2)

end A060037

/-! ## A060037.P17250068867254115423

`A063657(A274427(n+1))²%A027434(n+1)`
-/

namespace A060037.P17250068867254115423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063657 (A274427 (n + 1)).toNat ^ 2) (A027434 (n + 1))

end

end A060037.P17250068867254115423

namespace A060037

/-- `A063657(A274427(n+1))²%A027434(n+1)` -/
def P17250068867254115423.Spec : Prop :=
  ∀ n, P17250068867254115423.a n = A060037 (n + 2)

end A060037

/-! ## A060037.P3593581458267594535

`A343720(A274430(n+1))`
-/

namespace A060037.P3593581458267594535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A274430 (n + 1)).toNat

end

end A060037.P3593581458267594535

namespace A060037

/-- `A343720(A274430(n+1))` -/
def P3593581458267594535.Spec : Prop :=
  ∀ n, P3593581458267594535.a n = A060037 (n + 2)

end A060037

/-!
# A060038: Triangle T(n,k) = 0 if k-th prime is a square mod the n-th prime, otherwise 1, for 1<=k

The programs for A060038, there is no canonical definition to state claims against.
-/

/-! ## A060038.P7205086538720556486

`1-A060039(n+2)`
-/

namespace A060038.P7205086538720556486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060039 (n + 2)

end

end A060038.P7205086538720556486

/-! ## A060038.P13329282951228970134

`A000007(n*A060039(n+2))`
-/

namespace A060038.P13329282951228970134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A060039 (n + 2)).toNat

end

end A060038.P13329282951228970134

/-! ## A060038.P4291790766524850195

`xor(char[A004442(n)], A060039(n+2))`
-/

namespace A060038.P4291790766524850195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A060039 (n + 2))

end

end A060038.P4291790766524850195

/-! ## A060038.P686443433890470750

`A000038(n*A060039(n+2))/2`
-/

namespace A060038.P686443433890470750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 ((n : ℤ) * A060039 (n + 2)).toNat : ℚ) / 2

end

end A060038.P686443433890470750

/-! ## A060038.P11715107088000340277

`A000045(C(2, n*A060039(n+2)))`
-/

namespace A060038.P11715107088000340277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 ((n : ℤ) * A060039 (n + 2)).toNat)

end

end A060038.P11715107088000340277

/-! ## A060038.P5403739073132242222

`A000045(C(n, A060039(n+2)+n))`
-/

namespace A060038.P5403739073132242222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (A060039 (n + 2) + (n : ℤ)).toNat)

end

end A060038.P5403739073132242222

/-! ## A060038.P11916699701544121838

`∏{d}[n*A060039(n+2), A001221(#)]`
-/

namespace A060038.P11916699701544121838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A060038.P11916699701544121838

/-! ## A060038.P18302833189551883758

`∏{d}[n*A060039(n+2), A001222(#)]`
-/

namespace A060038.P18302833189551883758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A060038.P18302833189551883758

/-! ## A060038.P16279151010088498377

`C(2, A000040(n+1)*A060039(n+2))`
-/

namespace A060038.P16279151010088498377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000040 (n + 1) * A060039 (n + 2)).toNat

end

end A060038.P16279151010088498377

/-! ## A060038.P15006648605980857624

`C(A001222(n+1), n*A060039(n+2))`
-/

namespace A060038.P15006648605980857624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1)).toNat ((n : ℤ) * A060039 (n + 2)).toNat

end

end A060038.P15006648605980857624

/-! ## A060038.P7449380980753996071

`floor(acot(A000005(n+1)*A060039(n+2)))`
-/

namespace A060038.P7449380980753996071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A000005 (n + 1) * A060039 (n + 2) : ℝ)⌋

end

end A060038.P7449380980753996071

/-! ## A060038.P74253999823145692

`floor(acot(A018252(n+1)*A060039(n+2)))`
-/

namespace A060038.P74253999823145692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A018252 (n + 1) * A060039 (n + 2) : ℝ)⌋

end

end A060038.P74253999823145692

/-! ## A060038.P14768850819167163373

`floor(1/A000203(n*A060039(n+2)+1))`
-/

namespace A060038.P14768850819167163373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A000203 ((n : ℤ) * A060039 (n + 2) + 1).toNat : ℚ)⌋

end

end A060038.P14768850819167163373

/-! ## A060038.P9781782182939891462

`floor(A000203(n+1)/(A060039(n+2)+A000203(n+1)))`
-/

namespace A060038.P9781782182939891462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000203 (n + 1) : ℚ) / (A060039 (n + 2) + A000203 (n + 1) : ℚ)⌋

end

end A060038.P9781782182939891462

/-! ## A060038.P10757138146468920666

`A001222(gcd(n*A060039(n+2), A000040(n+1)))`
-/

namespace A060038.P10757138146468920666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd ((n : ℤ) * A060039 (n + 2)) (A000040 (n + 1)))

end

end A060038.P10757138146468920666

/-!
# A060039: Triangle T(n,k) = 1 if k-th prime is a square mod the n-th prime, otherwise 0, for 1<=k

The programs for A060039, there is no canonical definition to state claims against.
-/

/-! ## A060039.P11119481706135525819

`1-A060038(n+2)`
-/

namespace A060039.P11119481706135525819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060038 (n + 2)

end

end A060039.P11119481706135525819

/-! ## A060039.P9089870949742780130

`xor(1, A060038(n%(n+1)+2))^6`
-/

namespace A060039.P9089870949742780130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A060038 (n % (n + 1) + 2)) ^ 6

end

end A060039.P9089870949742780130

/-! ## A060039.P18167385219613740293

`char[eq[A000038(n), A060038(n+2)]]`
-/

namespace A060039.P18167385219613740293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060038 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A060039.P18167385219613740293

/-! ## A060039.P10634089350282709145

`xor(A000041(C(2, n+2)), A060038(n+2))`
-/

namespace A060039.P10634089350282709145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.choose 2 (n + 2))) (A060038 (n + 2))

end

end A060039.P10634089350282709145

/-! ## A060039.P6605671568385872585

`xor(A000108(C(2, n+2)), A060038(n+2))`
-/

namespace A060039.P6605671568385872585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000108 (Nat.choose 2 (n + 2))) (A060038 (n + 2))

end

end A060039.P6605671568385872585

/-! ## A060039.P14383763941466419449

`(n+1)%A006530(A060038(n+2)+n)`
-/

namespace A060039.P14383763941466419449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (A060038 (n + 2) + (n : ℤ)).toNat)

end

end A060039.P14383763941466419449

/-! ## A060039.P9323201507625129500

`xor(A008683(n+1)²!, A060038(n+2))`
-/

namespace A060039.P9323201507625129500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) (A060038 (n + 2))

end

end A060039.P9323201507625129500

/-! ## A060039.P13209669549455804593

`xor(log2(A020639(2*(n+1))), A060038(n+2))`
-/

namespace A060039.P13209669549455804593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A020639 (2 * (n + 1)) : ℝ))) (A060038 (n + 2))

end

end A060039.P13209669549455804593

/-! ## A060039.P2389766188037363772

`A000045(xor(ceil(1/(n+1)), A060038(n+2)))`
-/

namespace A060039.P2389766188037363772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor ⌈1 / (n + 1 : ℚ)⌉ (A060038 (n + 2))).toNat

end

end A060039.P2389766188037363772

/-! ## A060039.P4366162363490500928

`xor(A014963(ceil(1/(n+1))), A060038(n+2))`
-/

namespace A060039.P4366162363490500928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 ⌈1 / (n + 1 : ℚ)⌉.toNat) (A060038 (n + 2))

end

end A060039.P4366162363490500928

/-! ## A060039.P11614695099260388797

`and(A060038(n+2)+1, record[A006530(n+2)²])`
-/

namespace A060039.P11614695099260388797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060038 (n + 2) + 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A060039.P11614695099260388797

/-! ## A060039.P13829499956929608145

`C(A000041(n), A060038(n+2)+A000041(n))`
-/

namespace A060039.P13829499956929608145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000041 n).toNat (A060038 (n + 2) + A000041 n).toNat

end

end A060039.P13829499956929608145

/-! ## A060039.P985630131920311831

`A008683(16*n+4)^(A060038(n+2)/2)`
-/

namespace A060039.P985630131920311831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (16 * n + 4) : ℝ) ^ ((A060038 (n + 2) : ℚ) / 2 : ℝ)

end

end A060039.P985630131920311831

/-! ## A060039.P16258952222077005011

`A073423(A016921(n)*A060038(n+2)+1)`
-/

namespace A060039.P16258952222077005011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (A016921 n * A060038 (n + 2) + 1).toNat

end

end A060039.P16258952222077005011

/-! ## A060039.P16043475621710022971

`C(A000108(n), A060038(n+2)+A000108(n))`
-/

namespace A060039.P16043475621710022971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n).toNat (A060038 (n + 2) + A000108 n).toNat

end

end A060039.P16043475621710022971

/-!
# A060040: Square array T(n,k) (n >= 2, k >= 1) giving smallest positive integer m such that any set of m points in general position in R^n contains k points in convex position, read by antidiagonals.

The programs for A060040, there is no canonical definition to state claims against.
-/

/-! ## A060040.P15679103887873925536

`floor(root(A217954(n+1), π))`
-/

namespace A060040.P15679103887873925536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217954 (n + 1) : ℝ) ^ (1 / Real.pi)⌋

end

end A060040.P15679103887873925536

/-! ## A060040.P3129041890883058986

`round(sqrt(A217883(n+1)/3))`
-/

namespace A060040.P3129041890883058986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A217883 (n + 1) : ℚ) / 3 : ℝ))

end

end A060040.P3129041890883058986

/-! ## A060040.P4567597104737621365

`floor((A217839(n+1)+1)/4)+1`
-/

namespace A060040.P4567597104737621365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217839 (n + 1) + 1 : ℚ) / 4⌋ + 1

end

end A060040.P4567597104737621365

/-! ## A060040.P14411546812497928894

`A091374(A385111(n))`
-/

namespace A060040.P14411546812497928894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091374 (A385111 n).toNat

end

end A060040.P14411546812497928894

/-! ## A060040.P9839076257588791874

`A039708(A136311(n+1))`
-/

namespace A060040.P9839076257588791874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A136311 (n + 1)).toNat

end

end A060040.P9839076257588791874

/-!
# A060042: G.f.: V(x)^(1/4), where V(x) = Sum_{n >= 0} A065409(n)*x^n.

The programs for A060042, there is no canonical definition to state claims against.
-/

/-! ## A060042.P546115526882603529

`3*A313482(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A060042.P546115526882603529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * A313482 (a (n - 1)).toNat

end

end A060042.P546115526882603529

/-!
# A060045: Generalized sum of divisors function: third diagonal of A060044.

The programs for A060045, there is no canonical definition to state claims against.
-/

/-! ## A060045.P9418052665829800274

`A060044(A006463(n+7)-2)`
-/

namespace A060045.P9418052665829800274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060044 (A006463 (n + 7) - 2).toNat

end

end A060045.P9418052665829800274

/-!
# A060046: Generalized sum of divisors function: third diagonal of A060047.

The programs for A060046, there is no canonical definition to state claims against.
-/

/-! ## A060046.P22396841231653746

`A325123(A014126(n))+1`
-/

namespace A060046.P22396841231653746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325123 (A014126 n).toNat + 1

end

end A060046.P22396841231653746

/-! ## A060046.P18004132289239165469

`∑[∑[A353846(A127435(n+1))]]`
-/

namespace A060046.P18004132289239165469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A127435 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060046.P18004132289239165469

/-! ## A060046.P16843287659995086961

`record[and(A018314(n+1), A079721(n+1))]`
-/

namespace A060046.P16843287659995086961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018314 (n + 1)) (A079721 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060046.P16843287659995086961

/-! ## A060046.P6983159895525478662

`record[and(A179000(n+1), A317160(n+1))]`
-/

namespace A060046.P6983159895525478662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179000 (n + 1)) (A317160 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060046.P6983159895525478662

/-!
# A060048: a(1) = 1 and for n>1 a(n) = Max { q prime | q# < prime(n)# / q# } where prime(i) = A000040(i) and p(i)# = A002110(i), primorial.

The programs for A060048, there is no canonical definition to state claims against.
-/

/-! ## A060048.P3433164996196406184

`A008578(A076370(n+1))`
-/

namespace A060048.P3433164996196406184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076370 (n + 1)).toNat

end

end A060048.P3433164996196406184

/-! ## A060048.P17142099248883332031

`A158611(A076370(n+1)+1)`
-/

namespace A060048.P17142099248883332031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A076370 (n + 1) + 1).toNat

end

end A060048.P17142099248883332031

/-! ## A060048.P4508796816166019875

`∑{d}[A076370(n+1), A030013(#)]`
-/

namespace A060048.P4508796816166019875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A030013 d

end

end A060048.P4508796816166019875

/-! ## A060048.P16570110942043281611

`A369031(A204166(n+1)^A062299(2*n+1))`
-/

namespace A060048.P16570110942043281611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369031 (SequenceMachineLib.roundAway ((A204166 (n + 1) : ℚ) ^ (A062299 (2 * n + 1) : ℤ))).toNat

end

end A060048.P16570110942043281611

/-!
# A060049: Triangulations of an n-gon such that each internal vertex has valence at least 6, i.e., nonpositively curved triangulations.

The programs for A060049, there is no canonical definition to state claims against.
-/

/-! ## A060049.P7612005863587580821

`A352129(floor(log2(A300532(n+1))))`
-/

namespace A060049.P7612005863587580821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352129 (Nat.log 2 (A300532 (n + 1)).toNat)

end

end A060049.P7612005863587580821

/-! ## A060049.P10024574816851249268

`A033183(n²)+A033183(A088218(n))`
-/

namespace A060049.P10024574816851249268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (n ^ 2) + A033183 (A088218 n).toNat

end

end A060049.P10024574816851249268

/-! ## A060049.P15752635035613729230

`A026729(n)+A008618(A050383(n+1))`
-/

namespace A060049.P15752635035613729230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n + A008618 (A050383 (n + 1)).toNat

end

end A060049.P15752635035613729230

/-!
# A060050: Number of irreducible nonpositively curved triangulations of an n-gon: All internal vertices have at valence at least 6 and no diagonals of the n-gon are allowed.

The programs for A060050, there is no canonical definition to state claims against.
-/

/-! ## A060050.P12252158931635474200

`A330993(a(n-1)-(a(n-5)-a(n-3))+3)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A060050.P12252158931635474200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 0, 1, 1] fun n a =>
  A330993 (a (n - 1) - (a (n - 5) - a (n - 3)) + 3).toNat

end

end A060050.P12252158931635474200

/-! ## A060050.P14714455033084473513

`A109708(record[A000005((n+1)*(n+3)²)])`
-/

namespace A060050.P14714455033084473513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (n + 3) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060050.P14714455033084473513

/-! ## A060050.P17567419585549453322

`A134583(A224917(n))-A060576(n)`
-/

namespace A060050.P17567419585549453322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (A224917 n).toNat - A060576 n

end

end A060050.P17567419585549453322

/-! ## A060050.P2552544915827763336

`A232442(A335441(n)+A137328(n+1))`
-/

namespace A060050.P2552544915827763336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232442 (A335441 n + A137328 (n + 1)).toNat

end

end A060050.P2552544915827763336

/-! ## A060050.P693886517784103391

`A055086(A078919(n+1))-A057979(n)`
-/

namespace A060050.P693886517784103391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A078919 (n + 1)).toNat - A057979 n

end

end A060050.P693886517784103391

/-!
# A060053: Number of r-bicoverings (or restricted proper 2-covers) of an n-set.

The programs for A060053, there is no canonical definition to state claims against.
-/

/-! ## A060053.P2473571848910681445

`A331039(∑[n+2]+3)`
-/

namespace A060053.P2473571848910681445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A060053.P2473571848910681445

/-! ## A060053.P11011255377512260831

`lcm(A097807(n), A331039(A340266(n+1)))`
-/

namespace A060053.P11011255377512260831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A331039 (A340266 (n + 1)).toNat)

end

end A060053.P11011255377512260831

/-! ## A060053.P6990037871364996873

`or(A000007(n), A331039(A340266(n+1)))`
-/

namespace A060053.P6990037871364996873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331039 (A340266 (n + 1)).toNat)

end

end A060053.P6990037871364996873

/-! ## A060053.P9083958982274958159

`or(A055641(n), A331039(A340266(n+1)))`
-/

namespace A060053.P9083958982274958159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A331039 (A340266 (n + 1)).toNat)

end

end A060053.P9083958982274958159

/-! ## A060053.P7632143319502730179

`or(A279329(2*(n+2)), A331039(A340266(n+1)))`
-/

namespace A060053.P7632143319502730179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279329 (2 * (n + 2))) (A331039 (A340266 (n + 1)).toNat)

end

end A060053.P7632143319502730179

/-!
# A060054: Numerators of numbers appearing in the Euler-Maclaurin summation formula.

The programs for A060054, there is no canonical definition to state claims against.
-/

/-! ## A060054.P7574405433157518773

`A033999(n+1)*A358625(n+1)`
-/

namespace A060054.P7574405433157518773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A358625 (n + 1)

end

end A060054.P7574405433157518773

/-! ## A060054.P14161231103224759306

`A027641(n+1)/A300330(n+1)`
-/

namespace A060054.P14161231103224759306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 (n + 1) : ℚ) / (A300330 (n + 1) : ℚ)

end

end A060054.P14161231103224759306

/-! ## A060054.P7991322712349991946

`A120080(n+1)+A358625(n+1)-A120082(n+1)`
-/

namespace A060054.P7991322712349991946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120080 (n + 1) + (A358625 (n + 1) - A120082 (n + 1))

end

end A060054.P7991322712349991946

/-! ## A060054.P15002078593171864814

`A027641(n+1)/A336898(n+1)`
-/

namespace A060054.P15002078593171864814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 (n + 1) : ℚ) / (A336898 (n + 1) : ℚ)

end

end A060054.P15002078593171864814

/-! ## A060054.P1390277171929633857

`A120082(A222258(n+1))`
-/

namespace A060054.P1390277171929633857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A222258 (n + 1)).toNat

end

end A060054.P1390277171929633857

/-! ## A060054.P16149345261604510986

`A120082(A325805(n+1))`
-/

namespace A060054.P16149345261604510986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A325805 (n + 1)).toNat

end

end A060054.P16149345261604510986

/-! ## A060054.P9190762896485736748

`A120082(A114752(n+1))`
-/

namespace A060054.P9190762896485736748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A114752 (n + 1)).toNat

end

end A060054.P9190762896485736748

/-! ## A060054.P16660684589751314896

`A120082(A227906(n+1))`
-/

namespace A060054.P16660684589751314896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A227906 (n + 1)).toNat

end

end A060054.P16660684589751314896

/-! ## A060054.P18228135206574160666

`A120082(A093178(n+1)+n)`
-/

namespace A060054.P18228135206574160666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A093178 (n + 1) + (n : ℤ)).toNat

end

end A060054.P18228135206574160666

/-! ## A060054.P7854462354348337870

`A164555(2*n+1)+A120086(n+1)`
-/

namespace A060054.P7854462354348337870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (2 * n + 1) + A120086 (n + 1)

end

end A060054.P7854462354348337870

/-!
# A060055: Denominators of nonzero numbers appearing in the Euler-Maclaurin summation formula. (See A060054 for the definition of these numbers.)

The programs for A060055, there is no canonical definition to state claims against.
-/

/-! ## A060055.P1010730095901633414

`lcm(2, A227830(2*n))`
-/

namespace A060055.P1010730095901633414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A227830 (2 * n))

end

end A060055.P1010730095901633414

/-! ## A060055.P9022211702078456340

`A227830(round(sqrt(n²+1))+n)`
-/

namespace A060055.P9022211702078456340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227830 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + (n : ℤ)).toNat

end

end A060055.P9022211702078456340

/-! ## A060055.P3801483772864412377

`A227830(2*n)+A000007(n)`
-/

namespace A060055.P3801483772864412377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227830 (2 * n) + A000007 n

end

end A060055.P3801483772864412377

/-! ## A060055.P15838482154663747174

`lcm(2*A000165(n), A002432(n))`
-/

namespace A060055.P15838482154663747174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * A000165 n) (A002432 n)

end

end A060055.P15838482154663747174

/-! ## A060055.P5536251085974351966

`A075180(2*n)*A227830(2*n)`
-/

namespace A060055.P5536251085974351966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (2 * n) * A227830 (2 * n)

end

end A060055.P5536251085974351966

/-!
# A060056: Nonzero numbers in expansion of ((tan(x))^4)/4! in (x^n)/n!.

The programs for A060056, there is no canonical definition to state claims against.
-/

/-! ## A060056.P13071098275597306896

`A008308((n+2)²+2)`
-/

namespace A060056.P13071098275597306896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008308 ((n + 2) ^ 2 + 2)

end

end A060056.P13071098275597306896

/-! ## A060056.P2301952381335287114

`record[A059419(A167614(n+2)+1)]`
-/

namespace A060056.P2301952381335287114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060056.P2301952381335287114

/-! ## A060056.P16415153834158879944

`A059419(A167614(2*(n+1))+1)`
-/

namespace A060056.P16415153834158879944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A167614 (2 * (n + 1)) + 1).toNat

end

end A060056.P16415153834158879944

/-! ## A060056.P4714606543068829954

`A008308(A102305(n+1))/A007318(∑[n])`
-/

namespace A060056.P4714606543068829954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008308 (A102305 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A060056.P4714606543068829954

/-! ## A060056.P8011334012248744668

`A008308(A102305(n+1))^(record[A000010(n+1)+3]%2)`
-/

namespace A060056.P8011334012248744668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008308 (A102305 (n + 1)).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A060056.P8011334012248744668

/-!
# A060057: Nonzero numbers in expansion of ((tan(x))^5)/5! in (x^n)/n!.

The programs for A060057, there is no canonical definition to state claims against.
-/

/-! ## A060057.P12715422631361578441

`A008308((n+3)²-n)`
-/

namespace A060057.P12715422631361578441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008308 ((n + 3) ^ 2 - n)

end

end A060057.P12715422631361578441

/-! ## A060057.P4572908428884791328

`record[A059419(A155212(n)+13)]`
-/

namespace A060057.P4572908428884791328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A155212 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060057.P4572908428884791328

/-! ## A060057.P5509412641918078861

`A059419(A000217(2*(n+2))+5)`
-/

namespace A060057.P5509412641918078861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A000217 (2 * (n + 2)) + 5).toNat

end

end A060057.P5509412641918078861

/-! ## A060057.P14965109416863620250

`A059419(A052905(2*n+1)+10)`
-/

namespace A060057.P14965109416863620250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A052905 (2 * n + 1) + 10).toNat

end

end A060057.P14965109416863620250

/-! ## A060057.P1486846752136846290

`A059419(A005563(n+3)+A002378(n))`
-/

namespace A060057.P1486846752136846290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A005563 (n + 3) + A002378 n).toNat

end

end A060057.P1486846752136846290

/-!
# A060058: Triangle of numbers related to A000330 (sum of squares) and A000364 (Euler numbers).

The programs for A060058, there is no canonical definition to state claims against.
-/

/-! ## A060058.P17268371842372801760

`A060074(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A060058.P17268371842372801760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A060058.P17268371842372801760

/-! ## A060058.P16689422037513695769

`A060074(A061579(n%A113025(n)))`
-/

namespace A060058.P16689422037513695769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A061579 (Int.tmod (n : ℤ) (A113025 n)).toNat).toNat

end

end A060058.P16689422037513695769

/-! ## A060058.P10949578625212552855

`A060074(A061579(gcd(n, A198954(n))))`
-/

namespace A060058.P10949578625212552855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A061579 (Int.gcd (n : ℤ) (A198954 n))).toNat

end

end A060058.P10949578625212552855

/-! ## A060058.P17438631747670942970

`A060074(char[A014132(n+1)]*A061579(n))`
-/

namespace A060058.P17438631747670942970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A061579 n).toNat

end

end A060058.P17438631747670942970

/-! ## A060058.P5501009203783127663

`A060074(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060058.P5501009203783127663
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060058.P5501009203783127663

/-!
# A060059: Row sums of triangle A060058.

The programs for A060059, there is no canonical definition to state claims against.
-/

/-! ## A060059.P11228423738443971933

`A004201(A144905(n))-n`
-/

namespace A060059.P11228423738443971933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (A144905 n).toNat - (n : ℤ)

end

end A060059.P11228423738443971933

/-!
# A060060: Third column of triangle A060058.

The programs for A060060, the canonical program `A060060.P4028718025461064271` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060060 has offset 0).

The definition of A060060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060060.P4028718025461064271

`∑[(∑[(n+2)²]+1)*(n+1)²]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060060

/-- `∑[(∑[(n+2)²]+1)*(n+1)²]` -/
def P4028718025461064271.Spec : Prop :=
  ∀ n, (P4028718025461064271.a n : ℤ) = A060060 n

theorem P4028718025461064271.correct : P4028718025461064271.Spec := by
  intro n
  simp only [A060060]

end A060060

/-! ## A060060.P15391698113293396430

`A071953(n+3)+A034263(n)`
-/

namespace A060060.P15391698113293396430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071953 (n + 3) + A034263 n

end

end A060060.P15391698113293396430

namespace A060060

/-- `A071953(n+3)+A034263(n)` -/
def P15391698113293396430.Spec : Prop :=
  ∀ n, P15391698113293396430.a n = A060060 n

end A060060

/-! ## A060060.P5906937596368439180

`A071953(n+3)+∑[A002417(n+1)]`
-/

namespace A060060.P5906937596368439180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071953 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060060.P5906937596368439180

namespace A060060

/-- `A071953(n+3)+∑[A002417(n+1)]` -/
def P5906937596368439180.Spec : Prop :=
  ∀ n, P5906937596368439180.a n = A060060 n

end A060060

/-! ## A060060.P4494796656808647923

`A071953(n+3)+A051879(n)-A174002(n)`
-/

namespace A060060.P4494796656808647923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071953 (n + 3) + (A051879 n - A174002 n)

end

end A060060.P4494796656808647923

namespace A060060

/-- `A071953(n+3)+A051879(n)-A174002(n)` -/
def P4494796656808647923.Spec : Prop :=
  ∀ n, P4494796656808647923.a n = A060060 n

end A060060

/-! ## A060060.P2481405213132283006

`A071953(n+3)+A244864(n)-A024166(n)`
-/

namespace A060060.P2481405213132283006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071953 (n + 3) + (A244864 n - A024166 n)

end

end A060060.P2481405213132283006

namespace A060060

/-- `A071953(n+3)+A244864(n)-A024166(n)` -/
def P2481405213132283006.Spec : Prop :=
  ∀ n, P2481405213132283006.a n = A060060 n

end A060060

/-! ## A060060.P8662685253224220080

`A005585(n+1)+A277935(n+1)+A071953(n+3)`
-/

namespace A060060.P8662685253224220080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A277935 (n + 1) + A071953 (n + 3))

end

end A060060.P8662685253224220080

namespace A060060

/-- `A005585(n+1)+A277935(n+1)+A071953(n+3)` -/
def P8662685253224220080.Spec : Prop :=
  ∀ n, P8662685253224220080.a n = A060060 n

end A060060

/-!
# A060061: Fourth column of triangle A060058.

The programs for A060061, the canonical program `A060061.P6398792366015292347` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060061 has offset 0).

The definition of A060061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060061.P6398792366015292347

`∑[(n+1)²*A060060(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060061

/-- `∑[(n+1)²*A060060(n+1)]` -/
def P6398792366015292347.Spec : Prop :=
  ∀ n, P6398792366015292347.a n = A060061 n

theorem P6398792366015292347.correct : P6398792366015292347.Spec := by
  intro n
  simp only [A060061]

end A060061

/-! ## A060061.P11763115536457998

`∑[A060060(n+1)*A209297(∑[n+1])]`
-/

namespace A060061.P11763115536457998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060060 (n + 1) * A209297 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060061.P11763115536457998

namespace A060061

/-- `∑[A060060(n+1)*A209297(∑[n+1])]` -/
def P11763115536457998.Spec : Prop :=
  ∀ n, P11763115536457998.a n = A060061 n

end A060061

/-! ## A060061.P7151040769625716265

`A060058(A167614(n+2))`
-/

namespace A060061.P7151040769625716265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A167614 (n + 2)).toNat

end

end A060061.P7151040769625716265

namespace A060061

/-- `A060058(A167614(n+2))` -/
def P7151040769625716265.Spec : Prop :=
  ∀ n, P7151040769625716265.a n = A060061 n

end A060061

/-! ## A060061.P11391408801940083904

`A060058(A340266(n+2)+1)`
-/

namespace A060061.P11391408801940083904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A340266 (n + 2) + 1).toNat

end

end A060061.P11391408801940083904

namespace A060061

/-- `A060058(A340266(n+2)+1)` -/
def P11391408801940083904.Spec : Prop :=
  ∀ n, P11391408801940083904.a n = A060061 n

end A060061

/-! ## A060061.P4940430580904202284

`A060074(A052905(n+1)+1)`
-/

namespace A060061.P4940430580904202284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A052905 (n + 1) + 1).toNat

end

end A060061.P4940430580904202284

namespace A060061

/-- `A060074(A052905(n+1)+1)` -/
def P4940430580904202284.Spec : Prop :=
  ∀ n, P4940430580904202284.a n = A060061 n

end A060061

/-!
# A060062: Fifth column of triangle A060058.

The programs for A060062, the canonical program `A060062.P9908052312092922423` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060062 has offset 0).

The definition of A060062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060062.P9908052312092922423

`∑[(n+1)²*A060061(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060062

/-- `∑[(n+1)²*A060061(n+1)]` -/
def P9908052312092922423.Spec : Prop :=
  ∀ n, P9908052312092922423.a n = A060062 n

theorem P9908052312092922423.correct : P9908052312092922423.Spec := by
  intro n
  simp only [A060062]

end A060062

/-! ## A060062.P13874100827798755793

`∑[A060061(n+1)*A130481((n+1)*(n+1))]`
-/

namespace A060062.P13874100827798755793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060061 (n + 1) * A130481 ((n + 1) * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060062.P13874100827798755793

namespace A060062

/-- `∑[A060061(n+1)*A130481((n+1)*(n+1))]` -/
def P13874100827798755793.Spec : Prop :=
  ∀ n, P13874100827798755793.a n = A060062 n

end A060062

/-! ## A060062.P16309171822683334642

`A060058(eq[4, A002262(n)])`
-/

namespace A060062.P16309171822683334642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060062.P16309171822683334642

namespace A060062

/-- `A060058(eq[4, A002262(n)])` -/
def P16309171822683334642.Spec : Prop :=
  ∀ n, P16309171822683334642.a n = A060062 n

end A060062

/-! ## A060062.P9750331772275589238

`A060058(A016825(n+3)+A000217(n))`
-/

namespace A060062.P9750331772275589238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A016825 (n + 3) + A000217 n).toNat

end

end A060062.P9750331772275589238

namespace A060062

/-- `A060058(A016825(n+3)+A000217(n))` -/
def P9750331772275589238.Spec : Prop :=
  ∀ n, P9750331772275589238.a n = A060062 n

end A060062

/-! ## A060062.P6154591115477978904

`A060074(A052905(n+2))`
-/

namespace A060062.P6154591115477978904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A052905 (n + 2)).toNat

end

end A060062.P6154591115477978904

namespace A060062

/-- `A060074(A052905(n+2))` -/
def P6154591115477978904.Spec : Prop :=
  ∀ n, P6154591115477978904.a n = A060062 n

end A060062

/-!
# A060064: First subsequent, disjoint occurrence of n consecutive nonprimes.

The programs for A060064, there is no canonical definition to state claims against.
-/

/-! ## A060064.P15284671260761526619

`A060299(∑[n]+1)`
-/

namespace A060064.P15284671260761526619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A060064.P15284671260761526619

/-! ## A060064.P16555389698376733220

`lcm(2, A060299(A000124(n)))`
-/

namespace A060064.P16555389698376733220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A060299 (A000124 n).toNat)

end

end A060064.P16555389698376733220

/-! ## A060064.P11992352662390944440

`A060299(A000124(n))%A038451(n+1)`
-/

namespace A060064.P11992352662390944440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060299 (A000124 n).toNat) (A038451 (n + 1))

end

end A060064.P11992352662390944440

/-! ## A060064.P5284030671975251235

`A060299(A000124(n))-A162642((n+1)²)`
-/

namespace A060064.P5284030671975251235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (A000124 n).toNat - A162642 ((n + 1) ^ 2)

end

end A060064.P5284030671975251235

/-! ## A060064.P16041895991139274820

`A000027(n+1)+A060299(A000124(n))-(n+1)`
-/

namespace A060064.P16041895991139274820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A060299 (A000124 n).toNat - (n + 1 : ℤ))

end

end A060064.P16041895991139274820

/-! ## A060064.P6003343326653036412

`A060299(A000124(n))+A010052(A094407(n+1))`
-/

namespace A060064.P6003343326653036412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (A000124 n).toNat + A010052 (A094407 (n + 1)).toNat

end

end A060064.P6003343326653036412

/-! ## A060064.P8750343843314021285

`A060299(A000124(n))*A124428(A048761(n+1))`
-/

namespace A060064.P8750343843314021285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (A000124 n).toNat * A124428 (A048761 (n + 1)).toNat

end

end A060064.P8750343843314021285

/-! ## A060064.P5814549085407653721

`A060299(A000124(n))+A010052(A006530(2*n+3))`
-/

namespace A060064.P5814549085407653721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (A000124 n).toNat + A010052 (A006530 (2 * n + 3)).toNat

end

end A060064.P5814549085407653721

/-! ## A060064.P2772404199418280178

`A060299(A000124(n))+A010052(A008578(3*n+4))`
-/

namespace A060064.P2772404199418280178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (A000124 n).toNat + A010052 (A008578 (3 * n + 4)).toNat

end

end A060064.P2772404199418280178

/-! ## A060064.P13293233196817766661

`∩[A060299(n+1), A028815(n)]`
-/

namespace A060064.P13293233196817766661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060064.P13293233196817766661

/-!
# A060065: Smallest mode of the sequence { C(n-k,k), k=0..n/2 }.

The programs for A060065, there is no canonical definition to state claims against.
-/

/-! ## A060065.P1431391547077374539

`A152467(lt[lcm(10, n), 6*n])%A325368(n+1)`
-/

namespace A060065.P1431391547077374539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152467 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) (A325368 (n + 1))

end

end A060065.P1431391547077374539

/-! ## A060065.P11289271052510388697

`floor((A227394(n+2)-1)/3)`
-/

namespace A060065.P11289271052510388697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227394 (n + 2) - 1 : ℚ) / 3⌋

end

end A060065.P11289271052510388697

/-! ## A060065.P12605365688098362149

`A002264(A227394(n+2)-1)`
-/

namespace A060065.P12605365688098362149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A227394 (n + 2) - 1).toNat

end

end A060065.P12605365688098362149

/-! ## A060065.P13347703303076635064

`A002264(A147534(A227394(n+2)))`
-/

namespace A060065.P13347703303076635064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A147534 (A227394 (n + 2)).toNat).toNat

end

end A060065.P13347703303076635064

/-! ## A060065.P11366247792084866745

`round(A114891(n+1)/12)`
-/

namespace A060065.P11366247792084866745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A114891 (n + 1) : ℚ) / 12)

end

end A060065.P11366247792084866745

/-! ## A060065.P7686159276548319096

`A152467(lt[A280317(n+3), A055102(n)])`
-/

namespace A060065.P7686159276548319096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060065.P7686159276548319096

/-! ## A060065.P13448826811677885229

`round(A113804(A056107(n))/A204769(n+1))`
-/

namespace A060065.P13448826811677885229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A113804 (A056107 n).toNat : ℚ) / (A204769 (n + 1) : ℚ))

end

end A060065.P13448826811677885229

/-! ## A060065.P2630251557838271170

`A121902(A375996(n+2))`
-/

namespace A060065.P2630251557838271170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A375996 (n + 2)).toNat

end

end A060065.P2630251557838271170

/-!
# A060066: Number of tame meanders with 2n crossings.

The programs for A060066, there is no canonical definition to state claims against.
-/

/-! ## A060066.P13078851665294105361

`A206177(n)-A000290(A051118(n))`
-/

namespace A060066.P13078851665294105361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206177 n - A000290 (A051118 n).toNat

end

end A060066.P13078851665294105361

/-! ## A060066.P4251636936614746683

`A206177(n)-A033103(A060115(n))`
-/

namespace A060066.P4251636936614746683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206177 n - A033103 (A060115 n).toNat

end

end A060066.P4251636936614746683

/-!
# A060067: Largest power of n which divides n!.

The programs for A060067, there is no canonical definition to state claims against.
-/

/-! ## A060067.P6763560750566861549

`(n+1)^A011776(n+1)`
-/

namespace A060067.P6763560750566861549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A011776 (n + 1) : ℤ)

end

end A060067.P6763560750566861549

/-! ## A060067.P10539856147775728732

`A000142(n+1)/A060068(n+1)`
-/

namespace A060067.P10539856147775728732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A060068 (n + 1) : ℚ)

end

end A060067.P10539856147775728732

/-! ## A060067.P18033939805003811200

`root(n+1, A000038(n)!/A011776(n+1))`
-/

namespace A060067.P18033939805003811200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / ((Nat.factorial (A000038 n).toNat : ℚ) / (A011776 (n + 1) : ℚ) : ℝ))

end

end A060067.P18033939805003811200

/-! ## A060067.P12030693977280227042

`(n+1)^A090622(A051890(n))`
-/

namespace A060067.P12030693977280227042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A090622 (A051890 n).toNat : ℤ)

end

end A060067.P12030693977280227042

/-! ## A060067.P16627939234067675141

`(n+1)^A090622(A245766(n))`
-/

namespace A060067.P16627939234067675141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A090622 (A245766 n).toNat : ℤ)

end

end A060067.P16627939234067675141

/-! ## A060067.P18272781951583425128

`(n+1)^val((n+1)!, lcm(2, n+1))`
-/

namespace A060067.P18272781951583425128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ SequenceMachineLib.valuation (Nat.factorial (n + 1)) (Nat.lcm 2 (n + 1))

end

end A060067.P18272781951583425128

/-!
# A060068: Divide n! by largest power of n which will leave the result an integer.

The programs for A060068, there is no canonical definition to state claims against.
-/

/-! ## A060068.P4934703429924954370

`(n+1)!/(n+1)^A011776(n+1)`
-/

namespace A060068.P4934703429924954370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A011776 (n + 1) : ℤ)

end

end A060068.P4934703429924954370

/-! ## A060068.P16333096159744580184

`A000142(n+1)/A060067(n+1)`
-/

namespace A060068.P16333096159744580184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A060067 (n + 1) : ℚ)

end

end A060068.P16333096159744580184

/-! ## A060068.P17659095346453316754

`record[A047920(n)]/A060067(n+1)`
-/

namespace A060068.P17659095346453316754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060067 (n + 1) : ℚ)

end

end A060068.P17659095346453316754

/-! ## A060068.P17979519475662163200

`record[A047922(n)]/A060067(n+1)`
-/

namespace A060068.P17979519475662163200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060067 (n + 1) : ℚ)

end

end A060068.P17979519475662163200

/-! ## A060068.P3719478941463343281

`record[A094587(n)]/A060067(n+1)`
-/

namespace A060068.P3719478941463343281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060067 (n + 1) : ℚ)

end

end A060068.P3719478941463343281

/-! ## A060068.P10813999283830284587

`record[A098361(n)]/A060067(n+1)`
-/

namespace A060068.P10813999283830284587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A060067 (n + 1) : ℚ)

end

end A060068.P10813999283830284587

/-!
# A060069: Number of n-block T_0-tricoverings.

The programs for A060069, there is no canonical definition to state claims against.
-/

/-! ## A060069.P5168472079945396324

`and(A007018(n), A007056(A007035(2*n+1)))`
-/

namespace A060069.P5168472079945396324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007018 n) (A007056 (A007035 (2 * n + 1)).toNat)

end

end A060069.P5168472079945396324

/-!
# A060070: Number of T_0-tricoverings of an n-set.

The programs for A060070, there is no canonical definition to state claims against.
-/

/-! ## A060070.P16111786388658738009

`A331039(A167614(n+2))`
-/

namespace A060070.P16111786388658738009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A167614 (n + 2)).toNat

end

end A060070.P16111786388658738009

/-! ## A060070.P5057742310843434408

`A331039(A141214(n)+6)`
-/

namespace A060070.P5057742310843434408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A141214 n + 6).toNat

end

end A060070.P5057742310843434408

/-! ## A060070.P14866338617581845966

`A331039(eq[3, A002262(n)])`
-/

namespace A060070.P14866338617581845966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060070.P14866338617581845966

/-! ## A060070.P10994438275886931477

`A331039(eq[3, A191532(n)])`
-/

namespace A060070.P10994438275886931477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060070.P10994438275886931477

/-! ## A060070.P7223204931905987581

`A331039(A340266(n+2)+1)`
-/

namespace A060070.P7223204931905987581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A340266 (n + 2) + 1).toNat

end

end A060070.P7223204931905987581

/-!
# A060072: a(n) = (n^(n-1) - 1)/(n-1) for n>1, a(1) = 0.

The programs for A060072, there is no canonical definition to state claims against.
-/

/-! ## A060072.P10046695239236650142

`A023037(n+1)-A000169(n+1)`
-/

namespace A060072.P10046695239236650142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023037 (n + 1) - A000169 (n + 1)

end

end A060072.P10046695239236650142

/-! ## A060072.P11378673390840672513

`n/2*A093462(n+1)`
-/

namespace A060072.P11378673390840672513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A093462 (n + 1) : ℚ)

end

end A060072.P11378673390840672513

/-! ## A060072.P1704409269356664091

`n/(n+1)*A058128(n+1)`
-/

namespace A060072.P1704409269356664091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A058128 (n + 1) : ℚ)

end

end A060072.P1704409269356664091

/-! ## A060072.P2159108789727490596

`n*A060073(A028310(n)+1)`
-/

namespace A060072.P2159108789727490596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060073 (A028310 n + 1).toNat

end

end A060072.P2159108789727490596

/-! ## A060072.P8118385781031864967

`n*A060073(A133263(n+1)-A133263(n))`
-/

namespace A060072.P8118385781031864967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A060073 (A133263 (n + 1) - A133263 n).toNat

end

end A060072.P8118385781031864967

/-! ## A060072.P18099298377059323157

`((n+1)^n-1)/(abs(1-n)+1)`
-/

namespace A060072.P18099298377059323157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℤ) - 1 : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ)

end

end A060072.P18099298377059323157

/-! ## A060072.P11272510077495821121

`ceil(A037205(n)/round(sqrt(n²+1)))`
-/

namespace A060072.P11272510077495821121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037205 n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)⌉

end

end A060072.P11272510077495821121

/-! ## A060072.P602070300294178242

`A077386(n+1)-A023037(n+1)`
-/

namespace A060072.P602070300294178242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077386 (n + 1) - A023037 (n + 1)

end

end A060072.P602070300294178242

/-! ## A060072.P9789592258661355253

`n*A058128(n+1)-A037205(n)`
-/

namespace A060072.P9789592258661355253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058128 (n + 1) - A037205 n

end

end A060072.P9789592258661355253

/-!
# A060073: a(n) = (n^(n-1)-1)/(n-1)^2.

The programs for A060073, the canonical program `A060073.P7501055881308686695` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060073 has offset 2).

The definition of A060073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060073.P10231420187646078306

`A060072(n+2)/(n+1)`
-/

namespace A060073.P10231420187646078306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060072 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A060073.P10231420187646078306

namespace A060073

/-- `A060072(n+2)/(n+1)` -/
def P10231420187646078306.Spec : Prop :=
  ∀ n, P10231420187646078306.a n = (A060073 (n + 2) : ℚ)

end A060073

/-! ## A060073.P5120623729999104657

`A058128(n+2)/(n+2)`
-/

namespace A060073.P5120623729999104657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058128 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A060073.P5120623729999104657

namespace A060073

/-- `A058128(n+2)/(n+2)` -/
def P5120623729999104657.Spec : Prop :=
  ∀ n, P5120623729999104657.a n = (A060073 (n + 2) : ℚ)

end A060073

/-! ## A060073.P7501055881308686695

`((n+2)^(n+1)-1)/(n+1)²`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060073

/-- `((n+2)^(n+1)-1)/(n+1)²` -/
def P7501055881308686695.Spec : Prop :=
  ∀ n, P7501055881308686695.a n = (A060073 (n + 2) : ℚ)

end A060073

/-! ## A060073.P9880679923553089507

`ceil(A023811(n+2)/(n+2))`
-/

namespace A060073.P9880679923553089507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023811 (n + 2) : ℚ) / (n + 2 : ℚ)⌉

end

end A060073.P9880679923553089507

namespace A060073

/-- `ceil(A023811(n+2)/(n+2))` -/
def P9880679923553089507.Spec : Prop :=
  ∀ n, P9880679923553089507.a n = A060073 (n + 2)

end A060073

/-! ## A060073.P11763120948459919763

`A058128(n+2)-A060072(n+2)`
-/

namespace A060073.P11763120948459919763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058128 (n + 2) - A060072 (n + 2)

end

end A060073.P11763120948459919763

namespace A060073

/-- `A058128(n+2)-A060072(n+2)` -/
def P11763120948459919763.Spec : Prop :=
  ∀ n, P11763120948459919763.a n = A060073 (n + 2)

end A060073

/-! ## A060073.P18289896084674723680

`gcd(A037205(n+1), A058128(n+2))`
-/

namespace A060073.P18289896084674723680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037205 (n + 1)) (A058128 (n + 2))

end

end A060073.P18289896084674723680

namespace A060073

/-- `gcd(A037205(n+1), A058128(n+2))` -/
def P18289896084674723680.Spec : Prop :=
  ∀ n, (P18289896084674723680.a n : ℤ) = A060073 (n + 2)

end A060073

/-!
# A060074: Triangle A060058 by diagonals.

The programs for A060074, there is no canonical definition to state claims against.
-/

/-! ## A060074.P2053153273145780609

`A060058(∑[2*n]%comp[∑[n]])`
-/

namespace A060074.P2053153273145780609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A060074.P2053153273145780609

/-! ## A060074.P3993622793552210370

`A060058(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060074.P3993622793552210370
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060074.P3993622793552210370

/-! ## A060074.P9939492706712836329

`A060058(A061579(n))^(1-char[1])`
-/

namespace A060074.P9939492706712836329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060058 (A061579 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A060074.P9939492706712836329

/-! ## A060074.P16963241375478212679

`gcd(A000038(n), A060058(A061579(n)))`
-/

namespace A060074.P16963241375478212679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060058 (A061579 n).toNat)

end

end A060074.P16963241375478212679

/-! ## A060074.P17256574783873617411

`A060058(A061579(n))%A010912(n)`
-/

namespace A060074.P17256574783873617411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060058 (A061579 n).toNat) (A010912 n)

end

end A060074.P17256574783873617411

/-!
# A060075: Third column of triangle A060074.

The programs for A060075, there is no canonical definition to state claims against.
-/

/-! ## A060075.P11508335324971851804

`A060058(∑[n+3])`
-/

namespace A060075.P11508335324971851804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060075.P11508335324971851804

/-! ## A060075.P2288493309076307416

`Δ[record[A241209(n)/4]]`
-/

namespace A060075.P2288493309076307416
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241209 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060075.P2288493309076307416

/-! ## A060075.P15377538582670670589

`Δ[record[A346838(n)/4]]`
-/

namespace A060075.P15377538582670670589
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346838 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060075.P15377538582670670589

/-! ## A060075.P13836147225580963948

`Δ[A000364(n+1)/4]`
-/

namespace A060075.P13836147225580963948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000364 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060075.P13836147225580963948

/-! ## A060075.P18111749750343077549

`A002435(2*(n+1))/2`
-/

namespace A060075.P18111749750343077549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002435 (2 * (n + 1)) : ℚ) / 2

end

end A060075.P18111749750343077549

/-!
# A060076: Fourth column of triangle A060074.

The programs for A060076, there is no canonical definition to state claims against.
-/

/-! ## A060076.P6372181433064217261

`A002435(2*n+3)/6`
-/

namespace A060076.P6372181433064217261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002435 (2 * n + 3) : ℚ) / 6

end

end A060076.P6372181433064217261

/-! ## A060076.P8872956788656162857

`A060074(A167614(n+2))`
-/

namespace A060076.P8872956788656162857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A167614 (n + 2)).toNat

end

end A060076.P8872956788656162857

/-! ## A060076.P6875076079864815391

`A060058(A052905(n+1)+1)`
-/

namespace A060076.P6875076079864815391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A052905 (n + 1) + 1).toNat

end

end A060076.P6875076079864815391

/-! ## A060076.P297972482427871150

`A060058(A167614(n+1)+2*n)`
-/

namespace A060076.P297972482427871150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A167614 (n + 1) + (2 * n : ℤ)).toNat

end

end A060076.P297972482427871150

/-! ## A060076.P946161067507015226

`A060058(A167614(n+2)-3+n)`
-/

namespace A060076.P946161067507015226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A167614 (n + 2) - 3 + (n : ℤ)).toNat

end

end A060076.P946161067507015226

/-!
# A060077: Fifth column of triangle A060074.

The programs for A060077, there is no canonical definition to state claims against.
-/

/-! ## A060077.P12819012333454483835

`A060058(∑[n+5]+5)`
-/

namespace A060077.P12819012333454483835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A060077.P12819012333454483835

/-! ## A060077.P3323526909856302484

`A060074(A167499(n+3)-1)`
-/

namespace A060077.P3323526909856302484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A167499 (n + 3) - 1).toNat

end

end A060077.P3323526909856302484

/-! ## A060077.P15768318598468111270

`A060074(A000217(n+4)+4)`
-/

namespace A060077.P15768318598468111270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A000217 (n + 4) + 4).toNat

end

end A060077.P15768318598468111270

/-! ## A060077.P2890370726884403863

`A060074(A055999(n+1)+10)`
-/

namespace A060077.P2890370726884403863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A055999 (n + 1) + 10).toNat

end

end A060077.P2890370726884403863

/-! ## A060077.P17556636647993275894

`and(-1, A060058(A052905(n+2)))`
-/

namespace A060077.P17556636647993275894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A060058 (A052905 (n + 2)).toNat)

end

end A060077.P17556636647993275894

/-!
# A060078: Sixth column of triangle A060074.

The programs for A060078, there is no canonical definition to state claims against.
-/

/-! ## A060078.P10705422299220155518

`A060058(A056119(n)+15)`
-/

namespace A060078.P10705422299220155518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (A056119 n + 15).toNat

end

end A060078.P10705422299220155518

/-! ## A060078.P7572712900812620950

`A060058(eq[5, A025581(n)])`
-/

namespace A060078.P7572712900812620950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060078.P7572712900812620950

/-! ## A060078.P11641658316668278716

`A060058(eq[11, A099375(n)])`
-/

namespace A060078.P11641658316668278716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060078.P11641658316668278716

/-! ## A060078.P13956027225682127898

`A060074(A056115(n)+20)`
-/

namespace A060078.P13956027225682127898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A056115 n + 20).toNat

end

end A060078.P13956027225682127898

/-! ## A060078.P4470284936029447368

`A060074(A008587(n+4)+A000217(n))`
-/

namespace A060078.P4470284936029447368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (A008587 (n + 4) + A000217 n).toNat

end

end A060078.P4470284936029447368

/-!
# A060080: Scaled sums of squares.

The programs for A060080, the canonical program `A060080.P2889459714734994594` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060080 has offset 1).

The definition of A060080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060080.P11049488498365146231

`(n+2)!*n!*(2*(n+1)+1)/6`
-/

namespace A060080.P11049488498365146231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) * Nat.factorial n : ℚ) * ((2 * (n + 1) + 1 : ℚ) / 6)

end

end A060080.P11049488498365146231

namespace A060080

/-- `(n+2)!*n!*(2*(n+1)+1)/6` -/
def P11049488498365146231.Spec : Prop :=
  ∀ n, P11049488498365146231.a n = (A060080 (n + 1) : ℚ)

end A060080

/-! ## A060080.P2889459714734994594

`A000330(n+1)*A001044(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060080

/-- `A000330(n+1)*A001044(n)` -/
def P2889459714734994594.Spec : Prop :=
  ∀ n, P2889459714734994594.a n = A060080 (n + 1)

theorem P2889459714734994594.correct : P2889459714734994594.Spec := by
  intro n
  simp only [A060080, Nat.add_sub_cancel]

end A060080

/-! ## A060080.P12613366656280209874

`n!²*∑[(n+1)²]`
-/

namespace A060080.P12613366656280209874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060080.P12613366656280209874

namespace A060080

/-- `n!²*∑[(n+1)²]` -/
def P12613366656280209874.Spec : Prop :=
  ∀ n, (P12613366656280209874.a n : ℤ) = A060080 (n + 1)

end A060080

/-! ## A060080.P2948634731830037454

`A000142(n)²*∑[(n+1)²]`
-/

namespace A060080.P2948634731830037454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A060080.P2948634731830037454

namespace A060080

/-- `A000142(n)²*∑[(n+1)²]` -/
def P2948634731830037454.Spec : Prop :=
  ∀ n, P2948634731830037454.a n = A060080 (n + 1)

end A060080

/-! ## A060080.P10025652528881903336

`A000142(n)*A006157(n+2)`
-/

namespace A060080.P10025652528881903336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006157 (n + 2)

end

end A060080.P10025652528881903336

namespace A060080

/-- `A000142(n)*A006157(n+2)` -/
def P10025652528881903336.Spec : Prop :=
  ∀ n, P10025652528881903336.a n = A060080 (n + 1)

end A060080

/-!
# A060081: Exponential Riordan array (sech(x), tanh(x)).

The programs for A060081, there is no canonical definition to state claims against.
-/

/-! ## A060081.P3531567058618568155

`A199916(n+1)+A184955(A003188(n))`
-/

namespace A060081.P3531567058618568155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199916 (n + 1) + A184955 (A003188 n).toNat

end

end A060081.P3531567058618568155

/-! ## A060081.P630764207180599716

`or(A156663(n), A199916(A187829(n+1)))`
-/

namespace A060081.P630764207180599716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156663 n) (A199916 (A187829 (n + 1)).toNat)

end

end A060081.P630764207180599716

/-! ## A060081.P6742671968256989720

`A033273(A350202(n+1))*A199916(n+1)`
-/

namespace A060081.P6742671968256989720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A350202 (n + 1)).toNat * A199916 (n + 1)

end

end A060081.P6742671968256989720

/-! ## A060081.P7598720442792649172

`gcd(A028859(n), A199921(n+1))*A199916(n+1)`
-/

namespace A060081.P7598720442792649172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A028859 n) (A199921 (n + 1)) : ℤ) * A199916 (n + 1)

end

end A060081.P7598720442792649172

/-!
# A060082: Coefficients of even-indexed Euler polynomials (falling powers without zeros).

The programs for A060082, there is no canonical definition to state claims against.
-/

/-! ## A060082.P13712559875127028697

`A004173(record[n-A068527(n)])`
-/

namespace A060082.P13712559875127028697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A068527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060082.P13712559875127028697

/-! ## A060082.P15221692660520736241

`A004173(2*n-A123578(n))`
-/

namespace A060082.P15221692660520736241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 ((2 * n : ℤ) - A123578 n).toNat

end

end A060082.P15221692660520736241

/-! ## A060082.P15572446883791049753

`A004173(n-A123578(n)+n)`
-/

namespace A060082.P15572446883791049753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 ((n : ℤ) - A123578 n + (n : ℤ)).toNat

end

end A060082.P15572446883791049753

/-! ## A060082.P16212029478994028168

`A004173(n-(A123578(n)-n))`
-/

namespace A060082.P16212029478994028168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 ((n : ℤ) - (A123578 n - (n : ℤ))).toNat

end

end A060082.P16212029478994028168

/-! ## A060082.P15294302833452512637

`A004173(record[A033292(n+1)-A007401(n+1)])`
-/

namespace A060082.P15294302833452512637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033292 (n + 1) - A007401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060082.P15294302833452512637

/-! ## A060082.P10674630246595898059

`A060083(A061579(n))`
-/

namespace A060082.P10674630246595898059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060083 (A061579 n).toNat

end

end A060082.P10674630246595898059

/-!
# A060083: Coefficients of even-indexed Euler polynomials (rising powers without zeros).

The programs for A060083, there is no canonical definition to state claims against.
-/

/-! ## A060083.P16576105868497607810

`A004172(2*n-A052146(n+1))`
-/

namespace A060083.P16576105868497607810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004172 ((2 * n : ℤ) - A052146 (n + 1)).toNat

end

end A060083.P16576105868497607810

/-! ## A060083.P8749557746723946754

`A004172(n-A052146(n+1)+n)`
-/

namespace A060083.P8749557746723946754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004172 ((n : ℤ) - A052146 (n + 1) + (n : ℤ)).toNat

end

end A060083.P8749557746723946754

/-! ## A060083.P17829753613553169015

`A060082(∑[2*n]%comp[∑[n]])`
-/

namespace A060083.P17829753613553169015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A060083.P17829753613553169015

/-! ## A060083.P8679994048125746076

`A060082(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060083.P8679994048125746076
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060083.P8679994048125746076

/-! ## A060083.P13901841799115924052

`A060082(A114327(n)+n)^(n²%(n+1))`
-/

namespace A060083.P13901841799115924052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 (A114327 n + (n : ℤ)).toNat ^ (n ^ 2 % (n + 1))

end

end A060083.P13901841799115924052

/-!
# A060084: a(n) is the least prime not a primitive root of n-th prime.

The programs for A060084, there is no canonical definition to state claims against.
-/

/-! ## A060084.P4375997809116905111

`p?[gcd(A017827(n), A293230(n))]`
-/

namespace A060084.P4375997809116905111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017827 n) (A293230 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A060084.P4375997809116905111

/-! ## A060084.P9595647224777075072

`A374155(A151766(n+1))`
-/

namespace A060084.P9595647224777075072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374155 (A151766 (n + 1)).toNat

end

end A060084.P9595647224777075072

/-! ## A060084.P13382703739879413451

`p?[gcd(A020695(n), A293520(n))]`
-/

namespace A060084.P13382703739879413451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020695 n) (A293520 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A060084.P13382703739879413451

/-! ## A060084.P1096624284914826369

`p?[A330404(p?[A325760(n+1)])]`
-/

namespace A060084.P1096624284914826369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325760 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330404 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060084.P1096624284914826369

/-! ## A060084.P11719765458881013668

`A374155(A043318(n+1))`
-/

namespace A060084.P11719765458881013668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374155 (A043318 (n + 1)).toNat

end

end A060084.P11719765458881013668

/-!
# A060085: a(n) gives least prime for which the n-th prime is the least prime which is not a primitive root of a(n) (see A060084), or 0 if the n-th prime never occurs in A060084.

The programs for A060085, there is no canonical definition to state claims against.
-/

/-! ## A060085.P14024819363565709793

`filter[A096148(n+1), A131219(#)]`
-/

namespace A060085.P14024819363565709793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131219 (f1 j).toNat = 1) n)

end

end A060085.P14024819363565709793

/-!
# A060086: Convolution triangle A059594 with extra first column.

The programs for A060086, there is no canonical definition to state claims against.
-/

/-! ## A060086.P15586420968612027163

`A308680(n)-A016389(A213275(n))`
-/

namespace A060086.P15586420968612027163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 n - A016389 (A213275 n).toNat

end

end A060086.P15586420968612027163

/-! ## A060086.P17112871780235707001

`A308680(n)-A185284(A166065(n))`
-/

namespace A060086.P17112871780235707001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 n - A185284 (A166065 n).toNat

end

end A060086.P17112871780235707001

/-! ## A060086.P9529695201830115065

`A308680(n)-A185044(A191347(n))`
-/

namespace A060086.P9529695201830115065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 n - A185044 (A191347 n).toNat

end

end A060086.P9529695201830115065

/-!
# A060088: 

The programs for A060088, there is no canonical definition to state claims against.
-/

/-! ## A060088.P18136631325469027826

`A060087(n+1)²`
-/

namespace A060088.P18136631325469027826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060087 (n + 1) ^ 2

end

end A060088.P18136631325469027826

/-! ## A060088.P14941344492154520503

`A060087(n+1)^A073610(A060064(n+1)+1)`
-/

namespace A060088.P14941344492154520503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060087 (n + 1) : ℚ) ^ (A073610 (A060064 (n + 1) + 1).toNat : ℤ)

end

end A060088.P14941344492154520503

/-!
# A060089: Dimensions of graded algebra associated with meanders (subalgebra version).

The programs for A060089, there is no canonical definition to state claims against.
-/

/-! ## A060089.P11812647830672602295

`or(A008616(A289173(n+1)), A304706(n))`
-/

namespace A060089.P11812647830672602295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008616 (A289173 (n + 1)).toNat) (A304706 n)

end

end A060089.P11812647830672602295

/-! ## A060089.P1482484567371129431

`or(A008616(A289173(n+1)), A322900(n))`
-/

namespace A060089.P1482484567371129431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008616 (A289173 (n + 1)).toNat) (A322900 n)

end

end A060089.P1482484567371129431

/-! ## A060089.P10616862587283409873

`or(A008616(A289173(n+1)), A322937(n+1))`
-/

namespace A060089.P10616862587283409873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008616 (A289173 (n + 1)).toNat) (A322937 (n + 1))

end

end A060089.P10616862587283409873

/-! ## A060089.P9576705455330758025

`or(A008616(A289173(n+1)), A289187(n+2))`
-/

namespace A060089.P9576705455330758025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008616 (A289173 (n + 1)).toNat) (A289187 (n + 2))

end

end A060089.P9576705455330758025

/-!
# A060090: Number of ordered bicoverings of an unlabeled n-set.

The programs for A060090, there is no canonical definition to state claims against.
-/

/-! ## A060090.P18048241515040381098

`A331571(∑[n+2]+3)`
-/

namespace A060090.P18048241515040381098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A060090.P18048241515040381098

/-! ## A060090.P9763679406925770058

`lcm(A097807(n), A331571(A133263(n+2)))`
-/

namespace A060090.P9763679406925770058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A331571 (A133263 (n + 2)).toNat)

end

end A060090.P9763679406925770058

/-! ## A060090.P10214453286924922577

`or(A000007(n), A331571(A340266(n+1)))`
-/

namespace A060090.P10214453286924922577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331571 (A340266 (n + 1)).toNat)

end

end A060090.P10214453286924922577

/-! ## A060090.P7289934357845800485

`or(A000007(n), A331571(A133263(n+2)))`
-/

namespace A060090.P7289934357845800485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A331571 (A133263 (n + 2)).toNat)

end

end A060090.P7289934357845800485

/-! ## A060090.P17488090269296349083

`A331571(A340266(n+1))-A000007(n+1)`
-/

namespace A060090.P17488090269296349083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331571 (A340266 (n + 1)).toNat - A000007 (n + 1)

end

end A060090.P17488090269296349083

/-!
# A060091: Number of 4-block ordered bicoverings of an unlabeled n-set.

The programs for A060091, there is no canonical definition to state claims against.
-/

/-! ## A060091.P15666635173237199906

`A290776(A152950(n+1)-char[1])`
-/

namespace A060091.P15666635173237199906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (A152950 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A060091.P15666635173237199906

/-! ## A060091.P12443427346718854817

`A290776(A157928(n)+A133263(n))`
-/

namespace A060091.P12443427346718854817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (A157928 n + A133263 n).toNat

end

end A060091.P12443427346718854817

/-! ## A060091.P7778994194517899459

`A290776(A034856(n+1)-A004275(n))`
-/

namespace A060091.P7778994194517899459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (A034856 (n + 1) - A004275 n).toNat

end

end A060091.P7778994194517899459

/-! ## A060091.P16808606734907018746

`A290776(A161680(n+2)-A289207(n))`
-/

namespace A060091.P16808606734907018746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (A161680 (n + 2) - A289207 n).toNat

end

end A060091.P16808606734907018746

/-! ## A060091.P8165297377147738715

`A290776(A152950(n+1)%A062737(n+1))`
-/

namespace A060091.P8165297377147738715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (Int.tmod (A152950 (n + 1)) (A062737 (n + 1))).toNat

end

end A060091.P8165297377147738715

/-!
# A060093: Number of 5-block ordered bicoverings of an unlabeled n-set.

The programs for A060093, there is no canonical definition to state claims against.
-/

/-! ## A060093.P2200916911788250795

`A290776(A077169(n+1)-1)`
-/

namespace A060093.P2200916911788250795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (A077169 (n + 1) - 1).toNat

end

end A060093.P2200916911788250795

/-! ## A060093.P7452304951355485493

`A290776(A034856(n+1)-A004274(n))`
-/

namespace A060093.P7452304951355485493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 (A034856 (n + 1) - A004274 n).toNat

end

end A060093.P7452304951355485493

/-! ## A060093.P11971308151839927440

`char[A117905(n)+2]*A290776(A145018(n+1))`
-/

namespace A060093.P11971308151839927440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290776 (A145018 (n + 1)).toNat

end

end A060093.P11971308151839927440

/-! ## A060093.P43686986223803629

`char[A037213(n)+4]*A290776(A145018(n+1))`
-/

namespace A060093.P43686986223803629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290776 (A145018 (n + 1)).toNat

end

end A060093.P43686986223803629

/-! ## A060093.P12029660100706571614

`char[A054429(n+1)+2]*A290776(A145018(n+1))`
-/

namespace A060093.P12029660100706571614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290776 (A145018 (n + 1)).toNat

end

end A060093.P12029660100706571614

/-! ## A060093.P11970103989987448835

`char[A110119(n+1)+2]*A290776(A145018(n+1))`
-/

namespace A060093.P11970103989987448835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110119 (n + 1) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290776 (A145018 (n + 1)).toNat

end

end A060093.P11970103989987448835

/-!
# A060094: Number of 6-block ordered bicoverings of an unlabeled n-set.

The programs for A060094, there is no canonical definition to state claims against.
-/

/-! ## A060094.P6836232995402128463

`A060278(lcm(n, (n-1)^n)+1)`
-/

namespace A060094.P6836232995402128463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060278 (Int.lcm (n : ℤ) (((n : ℤ) - 1) ^ n) + 1)

end

end A060094.P6836232995402128463

/-! ## A060094.P1427923143318184467

`A284784(A049963(n+1))`
-/

namespace A060094.P1427923143318184467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284784 (A049963 (n + 1)).toNat

end

end A060094.P1427923143318184467

/-!
# A060096: Numerator of coefficients of Euler polynomials (rising powers).

The programs for A060096, there is no canonical definition to state claims against.
-/

/-! ## A060096.P5308985238003026835

`A059341(A061579(n))`
-/

namespace A060096.P5308985238003026835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A061579 n).toNat

end

end A060096.P5308985238003026835

/-! ## A060096.P10991488134346150100

`A059341(A114327(n)+n)`
-/

namespace A060096.P10991488134346150100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A114327 n + (n : ℤ)).toNat

end

end A060096.P10991488134346150100

/-! ## A060096.P1715921237711738882

`A059341(A038722(n+1)-1)`
-/

namespace A060096.P1715921237711738882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A038722 (n + 1) - 1).toNat

end

end A060096.P1715921237711738882

/-! ## A060096.P9422738601204318105

`A059341(A093995(n+1)-(n+1))`
-/

namespace A060096.P9422738601204318105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A060096.P9422738601204318105

/-! ## A060096.P5049892741195379466

`A059341(A002024(n+1)²-(n+1))`
-/

namespace A060096.P5049892741195379466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A060096.P5049892741195379466

/-! ## A060096.P14162931525301588638

`A059341((A007401(n+1)-n)²-(n+1))`
-/

namespace A060096.P14162931525301588638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 ((A007401 (n + 1) - (n : ℤ)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A060096.P14162931525301588638

/-! ## A060096.P18215591874921627374

`A059341(A038722(n+2))`
-/

namespace A060096.P18215591874921627374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A038722 (n + 2)).toNat

end

end A060096.P18215591874921627374

/-! ## A060096.P6253532035371750359

`A081733(n)/gcd(A081733(n), A130321(n))`
-/

namespace A060096.P6253532035371750359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081733 n : ℚ) / (Int.gcd (A081733 n) (A130321 n) : ℚ)

end

end A060096.P6253532035371750359

/-!
# A060097: Denominator of coefficients of Euler polynomials (rising powers).

The programs for A060097, the canonical program `A060097.P1955645356064434113` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060097 has offset 0).

The definition of A060097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060097.P6853379703753315981

`A006519(A159335(comp[∑[n-1]]))`
-/

namespace A060097.P6853379703753315981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A159335 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A060097.P6853379703753315981

namespace A060097

/-- `A006519(A159335(comp[∑[n-1]]))` -/
def P6853379703753315981.Spec : Prop :=
  ∀ n, P6853379703753315981.a n = A060097 n

end A060097

/-! ## A060097.P1955645356064434113

`gcd(A137688(n), A159335(A014132(n+1)-1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A060097

/-- `gcd(A137688(n), A159335(A014132(n+1)-1))` -/
def P1955645356064434113.Spec : Prop :=
  ∀ n, (P1955645356064434113.a n : ℤ) = A060097 n

theorem P1955645356064434113.correct : P1955645356064434113.Spec := by
  intro n
  simp only [A060097]

end A060097

/-! ## A060097.P5838874878094090559

`A059342(∑[2*n]%comp[∑[n]])`
-/

namespace A060097.P5838874878094090559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059342 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A060097.P5838874878094090559

namespace A060097

/-- `A059342(∑[2*n]%comp[∑[n]])` -/
def P5838874878094090559.Spec : Prop :=
  ∀ n, P5838874878094090559.a n = A060097 n

end A060097

/-! ## A060097.P9207210123051195424

`A059342(∑[char[∑[n]]]²-(n+1))`
-/

namespace A060097.P9207210123051195424
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059342 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A060097.P9207210123051195424

namespace A060097

/-- `A059342(∑[char[∑[n]]]²-(n+1))` -/
def P9207210123051195424.Spec : Prop :=
  ∀ n, P9207210123051195424.a n = A060097 n

end A060097

/-! ## A060097.P14996108094744419861

`A059342(A061579(n))^A059342(n)`
-/

namespace A060097.P14996108094744419861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059342 (A061579 n).toNat : ℚ) ^ (A059342 n : ℤ)

end

end A060097.P14996108094744419861

namespace A060097

/-- `A059342(A061579(n))^A059342(n)` -/
def P14996108094744419861.Spec : Prop :=
  ∀ n, P14996108094744419861.a n = (A060097 n : ℚ)

end A060097

/-! ## A060097.P11336084806046755719

`A130321(n)/gcd(A081733(n), A130321(n))`
-/

namespace A060097.P11336084806046755719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130321 n : ℚ) / (Int.gcd (A081733 n) (A130321 n) : ℚ)

end

end A060097.P11336084806046755719

namespace A060097

/-- `A130321(n)/gcd(A081733(n), A130321(n))` -/
def P11336084806046755719.Spec : Prop :=
  ∀ n, P11336084806046755719.a n = (A060097 n : ℚ)

end A060097

/-! ## A060097.P10059872323024104390

`A004736(n+1)/gcd(A004736(n+1), A085881(n))`
-/

namespace A060097.P10059872323024104390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (Int.gcd (A004736 (n + 1)) (A085881 n) : ℚ)

end

end A060097.P10059872323024104390

namespace A060097

/-- `A004736(n+1)/gcd(A004736(n+1), A085881(n))` -/
def P10059872323024104390.Spec : Prop :=
  ∀ n, P10059872323024104390.a n = (A060097 n : ℚ)

end A060097

/-! ## A060097.P6809439101402749948

`gcd(8, A178340(n))`
-/

namespace A060097.P6809439101402749948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A178340 n)

end

end A060097.P6809439101402749948

namespace A060097

/-- `gcd(8, A178340(n))` -/
def P6809439101402749948.Spec : Prop :=
  ∀ n, (P6809439101402749948.a n : ℤ) = A060097 n

end A060097

/-! ## A060097.P11871308023548039847

`A003484(A178340(n))`
-/

namespace A060097.P11871308023548039847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A178340 n).toNat

end

end A060097.P11871308023548039847

namespace A060097

/-- `A003484(A178340(n))` -/
def P11871308023548039847.Spec : Prop :=
  ∀ n, P11871308023548039847.a n = A060097 n

end A060097

/-!
# A060098: Triangle of partial sums of column sequences of triangle A060086, read by rows.

The programs for A060098, there is no canonical definition to state claims against.
-/

/-! ## A060098.P15077210990432565844

`A319951(A142992(n)+A111505(n))`
-/

namespace A060098.P15077210990432565844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A142992 n + A111505 n).toNat

end

end A060098.P15077210990432565844

/-! ## A060098.P15744872020174876565

`A048766(A060102(n)*A078812(n))`
-/

namespace A060098.P15744872020174876565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A060102 n * A078812 n).toNat

end

end A060098.P15744872020174876565

/-! ## A060098.P7386434030435268221

`A161492(n+1)-A080224(A033574(n))`
-/

namespace A060098.P7386434030435268221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161492 (n + 1) - A080224 (A033574 n).toNat

end

end A060098.P7386434030435268221

/-! ## A060098.P8449449419250636833

`A161492(n+1)-A185044(A370890(n))`
-/

namespace A060098.P8449449419250636833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161492 (n + 1) - A185044 (A370890 n).toNat

end

end A060098.P8449449419250636833

/-!
# A060099: G.f.: 1/((1-x^2)^3*(1-x)^4).

The programs for A060099, the canonical program `A060099.P8454151791043827126` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060099 has offset 0).

The definition of A060099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060099.P8454151791043827126

`(4*a(n-1)+(n+8)*a(n-2))/n` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A060099

/-- `(4*a(n-1)+(n+8)*a(n-2))/n` -/
def P8454151791043827126.Spec : Prop :=
  ∀ n, P8454151791043827126.a n = (A060099 n : ℚ)

end A060099

/-! ## A060099.P11666974779697610854

`∑[A038163(n)]`
-/

namespace A060099.P11666974779697610854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038163 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P11666974779697610854

namespace A060099

/-- `∑[A038163(n)]` -/
def P11666974779697610854.Spec : Prop :=
  ∀ n, P11666974779697610854.a n = A060099 n

end A060099

/-! ## A060099.P14524112921654120604

`∑[∑[∑[A058187(n)]]]`
-/

namespace A060099.P14524112921654120604
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P14524112921654120604

namespace A060099

/-- `∑[∑[∑[A058187(n)]]]` -/
def P14524112921654120604.Spec : Prop :=
  ∀ n, P14524112921654120604.a n = A060099 n

end A060099

/-! ## A060099.P16328734248952299257

`A299335(n)-a(n-1)` with `a(0)=1`
-/

namespace A060099.P16328734248952299257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299335 n - a (n - 1)

end

end A060099.P16328734248952299257

namespace A060099

/-- `A299335(n)-a(n-1)` -/
def P16328734248952299257.Spec : Prop :=
  ∀ n, P16328734248952299257.a n = A060099 n

end A060099

/-! ## A060099.P2851800384500503434

`A028346(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A060099.P2851800384500503434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A028346 n + a (n - 2)

end

end A060099.P2851800384500503434

namespace A060099

/-- `A028346(n)+a(n-2)` -/
def P2851800384500503434.Spec : Prop :=
  ∀ n, P2851800384500503434.a n = A060099 n

end A060099

/-! ## A060099.P15185768283423219290

`∑[∑[A002624(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A060099.P15185768283423219290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002624 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P15185768283423219290

namespace A060099

/-- `∑[∑[A002624(n)-a(n-1)]]` -/
def P15185768283423219290.Spec : Prop :=
  ∀ n, P15185768283423219290.a n = A060099 n

end A060099

/-! ## A060099.P18170791891508884945

`∑[2*A177747(n)]-A177747(n)`
-/

namespace A060099.P18170791891508884945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A177747 n

end

end A060099.P18170791891508884945

namespace A060099

/-- `∑[2*A177747(n)]-A177747(n)` -/
def P18170791891508884945.Spec : Prop :=
  ∀ n, P18170791891508884945.a n = A060099 n

end A060099

/-! ## A060099.P922318289219316138

`∑[∑[A096338(n+1)]]`
-/

namespace A060099.P922318289219316138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P922318289219316138

namespace A060099

/-- `∑[∑[A096338(n+1)]]` -/
def P922318289219316138.Spec : Prop :=
  ∀ n, P922318289219316138.a n = A060099 n

end A060099

/-! ## A060099.P17801526403149236325

`A299335(n+1)-(A299336(n+1)+A299336(n))`
-/

namespace A060099.P17801526403149236325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (n + 1) - (A299336 (n + 1) + A299336 n)

end

end A060099.P17801526403149236325

namespace A060099

/-- `A299335(n+1)-(A299336(n+1)+A299336(n))` -/
def P17801526403149236325.Spec : Prop :=
  ∀ n, P17801526403149236325.a n = A060099 n

end A060099

/-! ## A060099.P15858449701270723410

`∑[∑[∑[A190718(2*n)]]]`
-/

namespace A060099.P15858449701270723410
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190718 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P15858449701270723410

namespace A060099

/-- `∑[∑[∑[A190718(2*n)]]]` -/
def P15858449701270723410.Spec : Prop :=
  ∀ n, P15858449701270723410.a n = A060099 n

end A060099

/-! ## A060099.P4321824842456624318

`∑[∑[A189375(2*n+1)/2]]`
-/

namespace A060099.P4321824842456624318
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189375 (2 * n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P4321824842456624318

namespace A060099

/-- `∑[∑[A189375(2*n+1)/2]]` -/
def P4321824842456624318.Spec : Prop :=
  ∀ n, P4321824842456624318.a n = (A060099 n : ℚ)

end A060099

/-! ## A060099.P12125370367950288204

`A060098(A167614(n+2))`
-/

namespace A060099.P12125370367950288204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060098 (A167614 (n + 2)).toNat

end

end A060099.P12125370367950288204

namespace A060099

/-- `A060098(A167614(n+2))` -/
def P12125370367950288204.Spec : Prop :=
  ∀ n, P12125370367950288204.a n = A060099 n

end A060099

/-! ## A060099.P10143799251887922243

`∑[A210391(A052905(n+1)+1)]`
-/

namespace A060099.P10143799251887922243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 (A052905 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060099.P10143799251887922243

namespace A060099

/-- `∑[A210391(A052905(n+1)+1)]` -/
def P10143799251887922243.Spec : Prop :=
  ∀ n, P10143799251887922243.a n = A060099 n

end A060099

/-! ## A060099.P4236012786715830751

`A060098(A000217(n+4)-(n+1))`
-/

namespace A060099.P4236012786715830751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060098 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A060099.P4236012786715830751

namespace A060099

/-- `A060098(A000217(n+4)-(n+1))` -/
def P4236012786715830751.Spec : Prop :=
  ∀ n, P4236012786715830751.a n = A060099 n

end A060099

