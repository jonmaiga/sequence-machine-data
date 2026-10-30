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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
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
import Seq.B005.C000
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A278902: Number of 2 X 2 matrices with entries in {0,1,...,n} with determinant = trace and no entry repeated.

The programs for A278902, there is no canonical definition to state claims against.
-/

/-! ## A278902.P11165381330139614841

`and(A000005(A076220(n)), A264565(n+1))`
-/

namespace A278902.P11165381330139614841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A076220 n).toNat) (A264565 (n + 1))

end

end A278902.P11165381330139614841

/-! ## A278902.P8768857175376294102

`A130520(n)*A151687(n²)`
-/

namespace A278902.P8768857175376294102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n * A151687 (n ^ 2)

end

end A278902.P8768857175376294102

/-! ## A278902.P5833412979621816242

`∑[val(A243757(n), 5)]*A151687(n²)`
-/

namespace A278902.P5833412979621816242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243757 n).toNat 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A151687 (n ^ 2)

end

end A278902.P5833412979621816242

/-! ## A278902.P18216160002772197595

`A228636(2*n+1)%(A228652(n+1)+1)`
-/

namespace A278902.P18216160002772197595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228636 (2 * n + 1 + 10)) (A228652 (n + 1) + 1)

end

end A278902.P18216160002772197595

/-! ## A278902.P9866469332659138594

`A058895(A020073(n))%A151915(n+1)`
-/

namespace A278902.P9866469332659138594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058895 (A020073 n).toNat) (A151915 (n + 1))

end

end A278902.P9866469332659138594

/-!
# A278904: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A278904, there is no canonical definition to state claims against.
-/

/-! ## A278904.P10440847067222297626

`A007088(A278292(n))`
-/

namespace A278904.P10440847067222297626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278292 n).toNat

end

end A278904.P10440847067222297626

/-! ## A278904.P7800014368848792136

`A185544(2*A278292(n))`
-/

namespace A278904.P7800014368848792136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278292 n).toNat

end

end A278904.P7800014368848792136

/-! ## A278904.P17772066642492045793

`A185544(A278292(n)+A278292(n))`
-/

namespace A278904.P17772066642492045793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278292 n + A278292 n).toNat

end

end A278904.P17772066642492045793

/-! ## A278904.P143262314795512098

`A281518(n)-A379668(A161334(n+4))`
-/

namespace A278904.P143262314795512098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281518 n - A379668 (A161334 (n + 4)).toNat

end

end A278904.P143262314795512098

/-!
# A278905: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A278905, there is no canonical definition to state claims against.
-/

/-! ## A278905.P6185843599797412204

`A007088(A278906(n))`
-/

namespace A278905.P6185843599797412204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278906 n).toNat

end

end A278905.P6185843599797412204

/-! ## A278905.P6937982089655972139

`A185544(2*A278906(n))`
-/

namespace A278905.P6937982089655972139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278906 n).toNat

end

end A278905.P6937982089655972139

/-! ## A278905.P16504580270428746860

`A185544(A278906(n)+A278906(n))`
-/

namespace A278905.P16504580270428746860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278906 n + A278906 n).toNat

end

end A278905.P16504580270428746860

/-!
# A278906: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 113", based on the 5-celled von Neumann neighborhood.

The programs for A278906, there is no canonical definition to state claims against.
-/

/-! ## A278906.P14381836770777013809

`and(A273665(A027649(n)), A281521(n))`
-/

namespace A278906.P14381836770777013809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273665 (A027649 n).toNat) (A281521 n)

end

end A278906.P14381836770777013809

/-! ## A278906.P7125310849081670473

`and(A273665(A027649(n)), A281635(n))`
-/

namespace A278906.P7125310849081670473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273665 (A027649 n).toNat) (A281635 n)

end

end A278906.P7125310849081670473

/-! ## A278906.P5632082294096963407

`and(A086709(2*n+2), A281635(A001222(5^n)))`
-/

namespace A278906.P5632082294096963407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086709 (2 * n + 2)) (A281635 (A001222 (5 ^ n)).toNat)

end

end A278906.P5632082294096963407

/-!
# A278907: a(n) = floor((n*2^(n+1)+2)/(2*n-(-1)^n+3)) - floor((n*2^(n+1)-2)/(2*n-(-1)^n+3)).

The programs for A278907, the canonical program `A278907.P17364321886829146193` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278907 has offset 0).

The definition of A278907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278907.P17364321886829146193

`gcd(C(2, 2*n+1), Δ[A257531(n+1)])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A278907

/-- `gcd(C(2, 2*n+1), Δ[A257531(n+1)])` -/
def P17364321886829146193.Spec : Prop :=
  ∀ n, (P17364321886829146193.a n : ℤ) = A278907 n

theorem P17364321886829146193.correct : P17364321886829146193.Spec := by
  intro n
  simp only [A278907]

end A278907

/-! ## A278907.P5632159983434274877

`A257531(A257531(n+2)+n^a(n-1)+1)` with `a(0)=2`
-/

namespace A278907.P5632159983434274877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A257531 (SequenceMachineLib.roundAway ((A257531 (n + 2) : ℚ) + (n : ℚ) ^ (a (n - 1) : ℤ) + 1)).toNat

end

end A278907.P5632159983434274877

namespace A278907

/-- `A257531(A257531(n+2)+n^a(n-1)+1)` -/
def P5632159983434274877.Spec : Prop :=
  ∀ n, P5632159983434274877.a n = A278907 n

end A278907

/-! ## A278907.P15108277047941167358

`C(a(n-1), C(n+1, A006530((n+1)*(n+2))))` with `a(0)=2`
-/

namespace A278907.P15108277047941167358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.choose (a (n - 1)) (Nat.choose (n + 1) (A006530 ((n + 1) * (n + 2))).toNat)

end

end A278907.P15108277047941167358

namespace A278907

/-- `C(a(n-1), C(n+1, A006530((n+1)*(n+2))))` -/
def P15108277047941167358.Spec : Prop :=
  ∀ n, (P15108277047941167358.a n : ℤ) = A278907 n

end A278907

/-! ## A278907.P6530311731145187125

`A323162(A110560(n)²)+A000038(n)`
-/

namespace A278907.P6530311731145187125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323162 (A110560 n ^ 2).toNat + A000038 n

end

end A278907.P6530311731145187125

namespace A278907

/-- `A323162(A110560(n)²)+A000038(n)` -/
def P6530311731145187125.Spec : Prop :=
  ∀ n, P6530311731145187125.a n = A278907 n

end A278907

/-! ## A278907.P7478322879439871734

`floor(A006530(∑[4*(n+1)])/(n+1))`
-/

namespace A278907.P7478322879439871734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A278907.P7478322879439871734

namespace A278907

/-- `floor(A006530(∑[4*(n+1)])/(n+1))` -/
def P7478322879439871734.Spec : Prop :=
  ∀ n, P7478322879439871734.a n = A278907 n

end A278907

/-! ## A278907.P6359890098882212477

`A090405(A090405(A005382(n+1))+n)`
-/

namespace A278907.P6359890098882212477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (A090405 (A005382 (n + 1)).toNat + (n : ℤ)).toNat

end

end A278907.P6359890098882212477

namespace A278907

/-- `A090405(A090405(A005382(n+1))+n)` -/
def P6359890098882212477.Spec : Prop :=
  ∀ n, P6359890098882212477.a n = A278907 n

end A278907

/-! ## A278907.P8731441452676011927

`C(2, ∏{p}[∑[n+1], C(n, #)])`
-/

namespace A278907.P8731441452676011927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose n p)

end

end A278907.P8731441452676011927

namespace A278907

/-- `C(2, ∏{p}[∑[n+1], C(n, #)])` -/
def P8731441452676011927.Spec : Prop :=
  ∀ n, (P8731441452676011927.a n : ℤ) = A278907 n

end A278907

/-! ## A278907.P11607294918820873615

`A332029(A213222(n+3))`
-/

namespace A278907.P11607294918820873615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332029 (A213222 (n + 3)).toNat

end

end A278907.P11607294918820873615

namespace A278907

/-- `A332029(A213222(n+3))` -/
def P11607294918820873615.Spec : Prop :=
  ∀ n, P11607294918820873615.a n = A278907 n

end A278907

/-! ## A278907.P7256528055635548552

`A090405(A343779(n+2))`
-/

namespace A278907.P7256528055635548552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090405 (A343779 (n + 2)).toNat

end

end A278907.P7256528055635548552

namespace A278907

/-- `A090405(A343779(n+2))` -/
def P7256528055635548552.Spec : Prop :=
  ∀ n, P7256528055635548552.a n = A278907 n

end A278907

/-!
# A278908: Multiplicative with a(p^e) = 2^omega(e), where omega = A001221.

The programs for A278908, the canonical program `A278908.P3644522969027249244` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278908 has offset 1).

The definition of A278908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278908.P1127778233855874519

`2^A389836(1+n)`
-/

namespace A278908.P1127778233855874519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A389836 (1 + n) : ℤ)

end

end A278908.P1127778233855874519

namespace A278908

/-- `2^A389836(1+n)` -/
def P1127778233855874519.Spec : Prop :=
  ∀ n, P1127778233855874519.a n = (A278908 (n + 1) : ℚ)

end A278908

/-! ## A278908.P3644522969027249244

`∏{e}[1+n, A034444(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A278908

/-- `∏{e}[1+n, A034444(#)]` -/
def P3644522969027249244.Spec : Prop :=
  ∀ n, P3644522969027249244.a n = A278908 (n + 1)

theorem P3644522969027249244.correct : P3644522969027249244.Spec := by
  intro n
  simp only [A278908, Nat.add_sub_cancel]

end A278908

/-! ## A278908.P8518987158975697347

`∏{e}[n+1, A048669(#)]`
-/

namespace A278908.P8518987158975697347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A048669 (Nat.factorization (f1 n) p)

end

end A278908.P8518987158975697347

namespace A278908

/-- `∏{e}[n+1, A048669(#)]` -/
def P8518987158975697347.Spec : Prop :=
  ∀ n, P8518987158975697347.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P12470291648362773364

`2^∑{e}[n+1, A001221(#)]`
-/

namespace A278908.P12470291648362773364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A001221 (Nat.factorization (f1 n) p) : ℤ)

end

end A278908.P12470291648362773364

namespace A278908

/-- `2^∑{e}[n+1, A001221(#)]` -/
def P12470291648362773364.Spec : Prop :=
  ∀ n, P12470291648362773364.a n = (A278908 (n + 1) : ℚ)

end A278908

/-! ## A278908.P871920578379935867

`∏{e}[n+1, 2^A051265(#+1)]`
-/

namespace A278908.P871920578379935867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (A051265 (Nat.factorization (f1 n) p + 1) : ℤ)

end

end A278908.P871920578379935867

namespace A278908

/-- `∏{e}[n+1, 2^A051265(#+1)]` -/
def P871920578379935867.Spec : Prop :=
  ∀ n, P871920578379935867.a n = (A278908 (n + 1) : ℚ)

end A278908

/-! ## A278908.P10081258826414466176

`∏{e}[n+1, 2^A001221(#%(n+1))]`
-/

namespace A278908.P10081258826414466176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (A001221 (Nat.factorization (f1 n) p % (n + 1)) : ℤ)

end

end A278908.P10081258826414466176

namespace A278908

/-- `∏{e}[n+1, 2^A001221(#%(n+1))]` -/
def P10081258826414466176.Spec : Prop :=
  ∀ n, P10081258826414466176.a n = (A278908 (n + 1) : ℚ)

end A278908

/-! ## A278908.P2668927752404032130

`A307848(A338782(n+1))`
-/

namespace A278908.P2668927752404032130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (A338782 (n + 1)).toNat

end

end A278908.P2668927752404032130

namespace A278908

/-- `A307848(A338782(n+1))` -/
def P2668927752404032130.Spec : Prop :=
  ∀ n, P2668927752404032130.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P6482604426674120292

`A056624(n+1)*A359411(n+1)`
-/

namespace A278908.P6482604426674120292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (n + 1) * A359411 (n + 1)

end

end A278908.P6482604426674120292

namespace A278908

/-- `A056624(n+1)*A359411(n+1)` -/
def P6482604426674120292.Spec : Prop :=
  ∀ n, P6482604426674120292.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P11263386703872304083

`A136693(A069739(n+1))`
-/

namespace A278908.P11263386703872304083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136693 (A069739 (n + 1)).toNat

end

end A278908.P11263386703872304083

namespace A278908

/-- `A136693(A069739(n+1))` -/
def P11263386703872304083.Spec : Prop :=
  ∀ n, P11263386703872304083.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P15719650658199131595

`A307848(and(1, A077915(n))+n)`
-/

namespace A278908.P15719650658199131595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A077915 n) + (n : ℤ)).toNat

end

end A278908.P15719650658199131595

namespace A278908

/-- `A307848(and(1, A077915(n))+n)` -/
def P15719650658199131595.Spec : Prop :=
  ∀ n, P15719650658199131595.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P7293528656184549095

`A307848(and(1, A077847(n))+n)`
-/

namespace A278908.P7293528656184549095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A077847 n) + (n : ℤ)).toNat

end

end A278908.P7293528656184549095

namespace A278908

/-- `A307848(and(1, A077847(n))+n)` -/
def P7293528656184549095.Spec : Prop :=
  ∀ n, P7293528656184549095.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P809612032098171800

`gcd(A003418(n), A307848(n+1))`
-/

namespace A278908.P809612032098171800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A307848 (n + 1))

end

end A278908.P809612032098171800

namespace A278908

/-- `gcd(A003418(n), A307848(n+1))` -/
def P809612032098171800.Spec : Prop :=
  ∀ n, (P809612032098171800.a n : ℤ) = A278908 (n + 1)

end A278908

/-! ## A278908.P15798447249960640401

`and(A121934(n+1), A307848(n+1))`
-/

namespace A278908.P15798447249960640401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121934 (n + 1)) (A307848 (n + 1))

end

end A278908.P15798447249960640401

namespace A278908

/-- `and(A121934(n+1), A307848(n+1))` -/
def P15798447249960640401.Spec : Prop :=
  ∀ n, P15798447249960640401.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P8288979071321250595

`gcd(A002605(n), A307848(n+1))`
-/

namespace A278908.P8288979071321250595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002605 n) (A307848 (n + 1))

end

end A278908.P8288979071321250595

namespace A278908

/-- `gcd(A002605(n), A307848(n+1))` -/
def P8288979071321250595.Spec : Prop :=
  ∀ n, (P8288979071321250595.a n : ℤ) = A278908 (n + 1)

end A278908

/-! ## A278908.P8567772845298589335

`A307848(and(1, A108898(n))+n)`
-/

namespace A278908.P8567772845298589335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A108898 n) + (n : ℤ)).toNat

end

end A278908.P8567772845298589335

namespace A278908

/-- `A307848(and(1, A108898(n))+n)` -/
def P8567772845298589335.Spec : Prop :=
  ∀ n, P8567772845298589335.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P11454294700532938288

`gcd(A307848(n+1)+A021006(n), A021006(n))`
-/

namespace A278908.P11454294700532938288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307848 (n + 1) + A021006 n) (A021006 n)

end

end A278908.P11454294700532938288

namespace A278908

/-- `gcd(A307848(n+1)+A021006(n), A021006(n))` -/
def P11454294700532938288.Spec : Prop :=
  ∀ n, (P11454294700532938288.a n : ℤ) = A278908 (n + 1)

end A278908

/-! ## A278908.P7890116423206555799

`A307848(and(1, A300091(n+1))+n)`
-/

namespace A278908.P7890116423206555799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A300091 (n + 1)) + (n : ℤ)).toNat

end

end A278908.P7890116423206555799

namespace A278908

/-- `A307848(and(1, A300091(n+1))+n)` -/
def P7890116423206555799.Spec : Prop :=
  ∀ n, P7890116423206555799.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P10192110737811125340

`A307848(and(1, A124704(n))+n)`
-/

namespace A278908.P10192110737811125340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A124704 n) + (n : ℤ)).toNat

end

end A278908.P10192110737811125340

namespace A278908

/-- `A307848(and(1, A124704(n))+n)` -/
def P10192110737811125340.Spec : Prop :=
  ∀ n, P10192110737811125340.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P13736165357490217240

`A307848(and(1, A087432(n))+n)`
-/

namespace A278908.P13736165357490217240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A087432 n) + (n : ℤ)).toNat

end

end A278908.P13736165357490217240

namespace A278908

/-- `A307848(and(1, A087432(n))+n)` -/
def P13736165357490217240.Spec : Prop :=
  ∀ n, P13736165357490217240.a n = A278908 (n + 1)

end A278908

/-! ## A278908.P5647777759826645025

`A307848(and(1, A165405(n))+n)`
-/

namespace A278908.P5647777759826645025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307848 (Int.land 1 (A165405 n) + (n : ℤ)).toNat

end

end A278908.P5647777759826645025

namespace A278908

/-- `A307848(and(1, A165405(n))+n)` -/
def P5647777759826645025.Spec : Prop :=
  ∀ n, P5647777759826645025.a n = A278908 (n + 1)

end A278908

/-!
# A278909: Binary Smith numbers: composite numbers n such that sum of bits of n = sum of bits of prime factors of n (counted with multiplicity).

The programs for A278909, there is no canonical definition to state claims against.
-/

/-! ## A278909.P7887442276475731682

`or(n+1, A110473(A022381(n)))`
-/

namespace A278909.P7887442276475731682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A110473 (A022381 n).toNat)

end

end A278909.P7887442276475731682

/-!
# A278910: Triangle of order m: C(n,k) = k*(n-k+1)^(k+m)+n-k, 0 <= k <= n, m = 0, read by rows.

The programs for A278910, there is no canonical definition to state claims against.
-/

/-! ## A278910.P15153739617537193244

`A025581(n)+A002262(n)*A009999(n)`
-/

namespace A278910.P15153739617537193244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002262 n * A009999 n

end

end A278910.P15153739617537193244

/-! ## A278910.P1004902531495716644

`A025660(n+1)+A002262(n)*A009999(n)`
-/

namespace A278910.P1004902531495716644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1) + A002262 n * A009999 n

end

end A278910.P1004902531495716644

/-! ## A278910.P1233708151124326957

`A025669(n+1)+A002262(n)*A009999(n)`
-/

namespace A278910.P1233708151124326957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1) + A002262 n * A009999 n

end

end A278910.P1233708151124326957

/-! ## A278910.P17021449659390197540

`val(A130321(n), 2)+A002262(n)*A009999(n)`
-/

namespace A278910.P17021449659390197540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A130321 n).toNat 2 : ℤ) + A002262 n * A009999 n

end

end A278910.P17021449659390197540

/-! ## A278910.P2942883651076450622

`A004736(n+1)+A002262(n)*A009999(n)-1`
-/

namespace A278910.P2942883651076450622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A002262 n * A009999 n - 1)

end

end A278910.P2942883651076450622

/-! ## A278910.P2058474703373914045

`A009995(A004736(n+1))+A002262(n)*A009999(n)`
-/

namespace A278910.P2058474703373914045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (A004736 (n + 1)).toNat + A002262 n * A009999 n

end

end A278910.P2058474703373914045

/-! ## A278910.P14018318490684231817

`A025581(n)-A001489(A002262(n)*A009999(n))`
-/

namespace A278910.P14018318490684231817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A001489 (A002262 n * A009999 n).toNat

end

end A278910.P14018318490684231817

/-!
# A278911: Odd numbers with prime sum of divisors.

The programs for A278911, there is no canonical definition to state claims against.
-/

/-! ## A278911.P7742796798448812469

`A193070(n+1)²`
-/

namespace A278911.P7742796798448812469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (n + 1) ^ 2

end

end A278911.P7742796798448812469

/-! ## A278911.P4897380443277430083

`A273459(n+1)/2`
-/

namespace A278911.P4897380443277430083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273459 (n + 1) : ℚ) / 2

end

end A278911.P4897380443277430083

/-! ## A278911.P17983790135455531559

`record[A193070(A286378(n))²]`
-/

namespace A278911.P17983790135455531559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (A286378 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278911.P17983790135455531559

/-! ## A278911.P9006097009941165573

`A193070(A000027(n+1))^2`
-/

namespace A278911.P9006097009941165573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (A000027 (n + 1)).toNat ^ 2

end

end A278911.P9006097009941165573

/-! ## A278911.P13399841198757363848

`record[A193070(A286378(n))]*A193070(n+1)`
-/

namespace A278911.P13399841198757363848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (A286378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A193070 (n + 1)

end

end A278911.P13399841198757363848

/-! ## A278911.P1614797638050859823

`A193070(A000027(n+1))*A193070(n+1)`
-/

namespace A278911.P1614797638050859823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (A000027 (n + 1)).toNat * A193070 (n + 1)

end

end A278911.P1614797638050859823

/-! ## A278911.P944669559144263281

`A193070(n+1)^A181819(A020639(n+5))`
-/

namespace A278911.P944669559144263281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193070 (n + 1) : ℚ) ^ (A181819 (A020639 (n + 5)).toNat : ℤ)

end

end A278911.P944669559144263281

/-! ## A278911.P187892092043647891

`A193070(n+1)^A181819(A006530(2*(n+1)))`
-/

namespace A278911.P187892092043647891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193070 (n + 1) : ℚ) ^ (A181819 (A006530 (2 * (n + 1))).toNat : ℤ)

end

end A278911.P187892092043647891

/-! ## A278911.P12360271633753232225

`A193070(n+1)%A193070(n+2)*A193070(n+1)`
-/

namespace A278911.P12360271633753232225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193070 (n + 1)) (A193070 (n + 2)) * A193070 (n + 1)

end

end A278911.P12360271633753232225

/-! ## A278911.P10766961656974892918

`A193070(A008619(2*n+1))*A193070(n+1)`
-/

namespace A278911.P10766961656974892918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193070 (A008619 (2 * n + 1)).toNat * A193070 (n + 1)

end

end A278911.P10766961656974892918

/-! ## A278911.P5854909696664577436

`∩[A023194(n+1), A195268(n+1)]`
-/

namespace A278911.P5854909696664577436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P5854909696664577436

/-! ## A278911.P10275095314483434979

`∩[A071114(n+1), A195268(n+1)]`
-/

namespace A278911.P10275095314483434979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P10275095314483434979

/-! ## A278911.P16556241606469746380

`A195268(eq[1, gcd(2, A195268(n+1))]+1)`
-/

namespace A278911.P16556241606469746380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A195268 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A278911.P16556241606469746380

/-! ## A278911.P9017230027429828131

`2*A247820(n+1)-1`
-/

namespace A278911.P9017230027429828131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247820 (n + 1) - 1

end

end A278911.P9017230027429828131

/-! ## A278911.P17888397639543433200

`∩[A023194(n+1), A193065(n+1)]`
-/

namespace A278911.P17888397639543433200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P17888397639543433200

/-! ## A278911.P11226619952456181954

`∩[A070763(n+1), A193065(n+1)]`
-/

namespace A278911.P11226619952456181954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P11226619952456181954

/-! ## A278911.P14182717555803578441

`∩[A071114(n+1), A193065(n+1)]`
-/

namespace A278911.P14182717555803578441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P14182717555803578441

/-! ## A278911.P3325562387879193993

`∩[A193065(n+1), A195268(n+1)]`
-/

namespace A278911.P3325562387879193993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P3325562387879193993

/-! ## A278911.P5875536614621775675

`∩[A193065(n+1), A281882(n+1)]`
-/

namespace A278911.P5875536614621775675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278911.P5875536614621775675

/-!
# A278912: Expansion of Product_{k>=1} 1/(1 - x^prime(prime(k))).

The programs for A278912, there is no canonical definition to state claims against.
-/

/-! ## A278912.P15985313431488367186

`A025839(n)+Δ[A001221(A326542(n)!)]`
-/

namespace A278912.P15985313431488367186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A326542 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n + (f1 (n + 1) - f1 n)

end

end A278912.P15985313431488367186

/-! ## A278912.P7514466549199151186

`A107846(A222061(n+3))+A025839(n)`
-/

namespace A278912.P7514466549199151186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A222061 (n + 3)).toNat + A025839 n

end

end A278912.P7514466549199151186

/-! ## A278912.P2718055277342660823

`A334028(A353400(n)-A025428(n))`
-/

namespace A278912.P2718055277342660823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A353400 n - A025428 n).toNat

end

end A278912.P2718055277342660823

/-! ## A278912.P13482537126862370685

`or(A004198(A185236(n)), A025839(n))`
-/

namespace A278912.P13482537126862370685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A185236 n).toNat) (A025839 n)

end

end A278912.P13482537126862370685

/-! ## A278912.P7228000214607522622

`A025839(n)+A004198(A185236(n)+2)`
-/

namespace A278912.P7228000214607522622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n + A004198 (A185236 n + 2).toNat

end

end A278912.P7228000214607522622

/-!
# A278913: a(n) is the smallest number k with prime sum of divisors such that tau(k) = n-th prime.

The programs for A278913, there is no canonical definition to state claims against.
-/

/-! ## A278913.P18305295035975567216

`A123487(n+1)^(A000040(n+1)-1)`
-/

namespace A278913.P18305295035975567216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123487 (n + 1) : ℚ) ^ (A000040 (n + 1) - 1 : ℤ)

end

end A278913.P18305295035975567216

/-! ## A278913.P16364909146460708529

`A123487(n+1)^A006093(n+1)`
-/

namespace A278913.P16364909146460708529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123487 (n + 1) : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A278913.P16364909146460708529

/-! ## A278913.P12431434582405029884

`A123487(n+1)^record[A000010(n+1)]`
-/

namespace A278913.P12431434582405029884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123487 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A278913.P12431434582405029884

/-! ## A278913.P5546302158469674658

`A123487(n+1)^A000010(A000040(n+1))`
-/

namespace A278913.P5546302158469674658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123487 (n + 1) : ℚ) ^ (A000010 (A000040 (n + 1)).toNat : ℤ)

end

end A278913.P5546302158469674658

/-! ## A278913.P9080513536544215809

`A123487(n+1)^A000010(A006005(n+1))`
-/

namespace A278913.P9080513536544215809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123487 (n + 1) : ℚ) ^ (A000010 (A006005 (n + 1)).toNat : ℤ)

end

end A278913.P9080513536544215809

/-!
# A278914: a(n) is the smallest odd number k with prime sum of divisors such that tau(k) = n-th prime.

The programs for A278914, there is no canonical definition to state claims against.
-/

/-! ## A278914.P2494458195805270135

`A101636(n+2)^(A000040(n+2)-1)`
-/

namespace A278914.P2494458195805270135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101636 (n + 2) : ℚ) ^ (A000040 (n + 2) - 1 : ℤ)

end

end A278914.P2494458195805270135

/-! ## A278914.P11189084291560646566

`A101636(n+2)^A326056(A065091(n+1))`
-/

namespace A278914.P11189084291560646566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101636 (n + 2) : ℚ) ^ (A326056 (A065091 (n + 1)).toNat : ℤ)

end

end A278914.P11189084291560646566

/-!
# A278915: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A278915, there is no canonical definition to state claims against.
-/

/-! ## A278915.P709675801990211815

`A278980(n)%Δ[A015300(n+4)]`
-/

namespace A278915.P709675801990211815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015300 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278980 n) (f1 (n + 1) - f1 n)

end

end A278915.P709675801990211815

/-! ## A278915.P663111603393933219

`A278980(n)^A156581(A003108(n))`
-/

namespace A278915.P663111603393933219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278980 n : ℚ) ^ (A156581 (A003108 n).toNat : ℤ)

end

end A278915.P663111603393933219

/-! ## A278915.P11042080851108016942

`A278980(n)%A096883(A312443(n))`
-/

namespace A278915.P11042080851108016942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278980 n) (A096883 (A312443 n).toNat)

end

end A278915.P11042080851108016942

/-! ## A278915.P16361607383362789019

`A278980(gcd(n, A278925(n)))`
-/

namespace A278915.P16361607383362789019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278980 (Int.gcd (n : ℤ) (A278925 n))

end

end A278915.P16361607383362789019

/-! ## A278915.P6486260964094936411

`A007088(A278917(n))`
-/

namespace A278915.P6486260964094936411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278917 n).toNat

end

end A278915.P6486260964094936411

/-!
# A278916: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A278916, there is no canonical definition to state claims against.
-/

/-! ## A278916.P2875102850212077745

`A279016(n)^A156581(A003108(n))`
-/

namespace A278916.P2875102850212077745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279016 n : ℚ) ^ (A156581 (A003108 n).toNat : ℤ)

end

end A278916.P2875102850212077745

/-! ## A278916.P1650609786025627125

`A279016(n)%A078836(A167614(n+1))`
-/

namespace A278916.P1650609786025627125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279016 n) (A078836 (A167614 (n + 1)).toNat)

end

end A278916.P1650609786025627125

/-! ## A278916.P17413005181419787569

`A279016(n)+A124763(A334709(n+1))`
-/

namespace A278916.P17413005181419787569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279016 n + A124763 (A334709 (n + 1)).toNat

end

end A278916.P17413005181419787569

/-! ## A278916.P3666502885563906984

`A279016(n)^A151359(A053575(n+1))`
-/

namespace A278916.P3666502885563906984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279016 n : ℚ) ^ (A151359 (A053575 (n + 1)).toNat : ℤ)

end

end A278916.P3666502885563906984

/-! ## A278916.P10632392686074181263

`A156581(A000217(n))*A279016(n)`
-/

namespace A278916.P10632392686074181263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156581 (A000217 n).toNat * A279016 n

end

end A278916.P10632392686074181263

/-!
# A278917: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A278917, there is no canonical definition to state claims against.
-/

/-! ## A278917.P4572073591419473856

`A279023(n)%A129152(n)`
-/

namespace A278917.P4572073591419473856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279023 n) (A129152 n)

end

end A278917.P4572073591419473856

/-! ## A278917.P9443709015319691735

`A279023(n)^exp(A061858(n))`
-/

namespace A278917.P9443709015319691735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279023 n : ℝ) ^ (Real.exp (A061858 n : ℝ))

end

end A278917.P9443709015319691735

/-! ## A278917.P6185641571087224829

`A279023(A097479(n+3)+n)`
-/

namespace A278917.P6185641571087224829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279023 (A097479 (n + 3) + (n : ℤ)).toNat

end

end A278917.P6185641571087224829

/-! ## A278917.P10068156837247968708

`A279023(round(acot(A337945(3*n+1))+n))`
-/

namespace A278917.P10068156837247968708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279023 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A337945 (3 * n + 1) : ℝ) + (n : ℝ))).toNat

end

end A278917.P10068156837247968708

/-! ## A278917.P5805307190774695646

`A279023(n)+A102683(A154537(n))`
-/

namespace A278917.P5805307190774695646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279023 n + A102683 (A154537 n).toNat

end

end A278917.P5805307190774695646

/-!
# A278918: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 115", based on the 5-celled von Neumann neighborhood.

The programs for A278918, there is no canonical definition to state claims against.
-/

/-! ## A278918.P5930560778262630639

`A279025(n)%A129152(n)`
-/

namespace A278918.P5930560778262630639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279025 n) (A129152 n)

end

end A278918.P5930560778262630639

/-! ## A278918.P1233438575877635168

`A279025(n)^exp(A061858(n))`
-/

namespace A278918.P1233438575877635168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A279025 n : ℝ) ^ (Real.exp (A061858 n : ℝ))

end

end A278918.P1233438575877635168

/-! ## A278918.P16101565491796045735

`A279025(n)+A000007(A112032(n))`
-/

namespace A278918.P16101565491796045735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279025 n + A000007 (A112032 n).toNat

end

end A278918.P16101565491796045735

/-! ## A278918.P17524725080684362971

`A279025(n)+A055667(A153796(n))`
-/

namespace A278918.P17524725080684362971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279025 n + A055667 (A153796 n).toNat

end

end A278918.P17524725080684362971

/-! ## A278918.P9251292702449537347

`A279025(n)^A000041(A061858(n)²)`
-/

namespace A278918.P9251292702449537347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279025 n : ℚ) ^ (A000041 (A061858 n ^ 2).toNat : ℤ)

end

end A278918.P9251292702449537347

/-!
# A278919: Numbers k such that phi(k-2) divides sigma(k-1)+1.

The programs for A278919, there is no canonical definition to state claims against.
-/

/-! ## A278919.P11722928778713875041

`record[A329049(A069359(n+1))+1]`
-/

namespace A278919.P11722928778713875041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329049 (A069359 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278919.P11722928778713875041

/-! ## A278919.P11557962376102988458

`A104103(A343557(n+1)+2)`
-/

namespace A278919.P11557962376102988458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (A343557 (n + 1) + 2).toNat

end

end A278919.P11557962376102988458

/-!
# A278921: Semiprimes of the form p*q where p < q such that q divides p^(q+1) + 1 and (q-p)^(q+1) + 1.

The programs for A278921, there is no canonical definition to state claims against.
-/

/-! ## A278921.P3303371449792873986

`A245486(A087356(n)²)`
-/

namespace A278921.P3303371449792873986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245486 (A087356 n ^ 2).toNat

end

end A278921.P3303371449792873986

/-!
# A278922: Largest p such that n = p + q + r where p < q < r are all prime, or 0 if no such primes p, q, r exist.

The programs for A278922, there is no canonical definition to state claims against.
-/

/-! ## A278922.P12020015112506813241

`A057545(A020639(n+1))%A290726(n+1)`
-/

namespace A278922.P12020015112506813241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057545 (A020639 (n + 1)).toNat) (A290726 (n + 1))

end

end A278922.P12020015112506813241

/-! ## A278922.P9059449249726534442

`A020639(3*(n+1))%A007299(A010554(n+2))`
-/

namespace A278922.P9059449249726534442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (3 * (n + 1))) (A007299 (A010554 (n + 2)).toNat)

end

end A278922.P9059449249726534442

/-! ## A278922.P12835213237789612109

`A118458(A008598(n)%A062383(A002620(n)))`
-/

namespace A278922.P12835213237789612109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (Int.tmod (A008598 n) (A062383 (A002620 n).toNat)).toNat

end

end A278922.P12835213237789612109

/-! ## A278922.P15359197616796512548

`∑{e}[A279144(n), A227864(#)]`
-/

namespace A278922.P15359197616796512548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A227864 (Nat.factorization (f1 n).natAbs p)

end

end A278922.P15359197616796512548

/-! ## A278922.P8904249393891043354

`A227864(∏{e}[A279144(n), #])`
-/

namespace A278922.P8904249393891043354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227864 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A278922.P8904249393891043354

/-!
# A278923: Largest p such that 2n-1 = p + q + r with three primes p < q < r, or 0 if no such primes exist.

The programs for A278923, there is no canonical definition to state claims against.
-/

/-! ## A278923.P3998580407387549554

`A278922(Δ[n²])`
-/

namespace A278923.P3998580407387549554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278922 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278923.P3998580407387549554

/-! ## A278923.P4966380600072274690

`A278922(2*n+1)%(n+1)`
-/

namespace A278923.P4966380600072274690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278922 (2 * n + 1)) (n + 1 : ℤ)

end

end A278923.P4966380600072274690

/-! ## A278923.P14592130075055853095

`A273943(lcm(2, A278922(2*n+1)))`
-/

namespace A278923.P14592130075055853095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A278922 (2 * n + 1)))

end

end A278923.P14592130075055853095

/-!
# A278928: Decimal expansion of sqrt(sqrt(2) + 1).

The programs for A278928, there is no canonical definition to state claims against.
-/

/-! ## A278928.P11966190082074838080

`A190283(n)-A000007(n)`
-/

namespace A278928.P11966190082074838080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190283 (n + 1) - A000007 n

end

end A278928.P11966190082074838080

/-! ## A278928.P5785430759404988507

`A190283(n)^abs(A057428(n))`
-/

namespace A278928.P5785430759404988507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190283 (n + 1) : ℚ) ^ (|A057428 n| : ℤ)

end

end A278928.P5785430759404988507

/-! ## A278928.P2733026906694956339

`A190283(n)^log2(A040000(n))`
-/

namespace A278928.P2733026906694956339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A190283 (n + 1) : ℝ) ^ (Real.logb 2 (A040000 n : ℝ))

end

end A278928.P2733026906694956339

/-! ## A278928.P12594967202923710334

`A190283(n)-A036987(2*n)`
-/

namespace A278928.P12594967202923710334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190283 (n + 1) - A036987 (2 * n)

end

end A278928.P12594967202923710334

/-! ## A278928.P17062300749478459821

`A190283(n)+n-A028310(n)`
-/

namespace A278928.P17062300749478459821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190283 (n + 1) + ((n : ℤ) - A028310 n)

end

end A278928.P17062300749478459821

/-! ## A278928.P17876866677897657848

`A190283(n)-A008683(A008574(n))`
-/

namespace A278928.P17876866677897657848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190283 (n + 1) - A008683 (A008574 n).toNat

end

end A278928.P17876866677897657848

/-! ## A278928.P4002470150077328640

`gcd(A190283(A028310(n)), A190283(n))`
-/

namespace A278928.P4002470150077328640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A190283 ((A028310 n).toNat + 1)) (A190283 (n + 1))

end

end A278928.P4002470150077328640

/-! ## A278928.P10097614169352110746

`and(A153881(n+1), A190283(A028310(n)))`
-/

namespace A278928.P10097614169352110746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A190283 ((A028310 n).toNat + 1))

end

end A278928.P10097614169352110746

/-! ## A278928.P7416358349850260072

`A154748(n+1)+A190283(n)-A190284(n)`
-/

namespace A278928.P7416358349850260072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154748 (n + 1) + (A190283 (n + 1) - A190284 n)

end

end A278928.P7416358349850260072

/-!
# A278929: Expansion of 1/(1 - Sum_{k>=1} x^(prime(k)^3)).

The programs for A278929, there is no canonical definition to state claims against.
-/

/-! ## A278929.P17298301899659879548

`abs(A291147(n+9))`
-/

namespace A278929.P17298301899659879548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291147 (n + 9)|

end

end A278929.P17298301899659879548

/-! ## A278929.P3821474015061959267

`-A291147(A000027(n+9))`
-/

namespace A278929.P3821474015061959267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A291147 (A000027 (n + 9)).toNat

end

end A278929.P3821474015061959267

/-! ## A278929.P13738180109556955750

`gcd(A000038(n), A291147(n+9))`
-/

namespace A278929.P13738180109556955750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A291147 (n + 9))

end

end A278929.P13738180109556955750

/-! ## A278929.P8176294498736645982

`A000007(n+1)-A291147(n+9)`
-/

namespace A278929.P8176294498736645982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A291147 (n + 9)

end

end A278929.P8176294498736645982

/-! ## A278929.P3984639852814968037

`A000038(n+1)-A291147(n+9)`
-/

namespace A278929.P3984639852814968037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A291147 (n + 9)

end

end A278929.P3984639852814968037

/-! ## A278929.P17563530714846112304

`lcm(A007318(C(2, n)), A291147(n+9))`
-/

namespace A278929.P17563530714846112304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (Nat.choose 2 n)) (A291147 (n + 9))

end

end A278929.P17563530714846112304

/-! ## A278929.P17448975828696453716

`A008683(4*(n+1))-A291147(n+9)`
-/

namespace A278929.P17448975828696453716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A291147 (n + 9)

end

end A278929.P17448975828696453716

/-! ## A278929.P4067324488505917673

`A363738(n*A390259(A003215(n)))`
-/

namespace A278929.P4067324488505917673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363738 ((n : ℤ) * A390259 (A003215 n).toNat).toNat

end

end A278929.P4067324488505917673

/-! ## A278929.P9255224116392506484

`and(A002223(n+1), A363738(n))`
-/

namespace A278929.P9255224116392506484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A363738 n)

end

end A278929.P9255224116392506484

/-! ## A278929.P12717147086369771912

`A363738(n*A010057(A294335(n)))`
-/

namespace A278929.P12717147086369771912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363738 ((n : ℤ) * A010057 (A294335 n).toNat).toNat

end

end A278929.P12717147086369771912

/-!
# A278931: Semiprimes whose ternary representations are also semiprime when read as a decimal number.

The programs for A278931, there is no canonical definition to state claims against.
-/

/-! ## A278931.P4499414963917686478

`∩[A001358(n+1), A108873(n+1)]`
-/

namespace A278931.P4499414963917686478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278931.P4499414963917686478

/-! ## A278931.P3246214012650309302

`filter[A108873(n+1), A064911(#)]`
-/

namespace A278931.P3246214012650309302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A278931.P3246214012650309302

/-! ## A278931.P7416911349947375711

`∩[A108873(n+1), A176540(n+1)]`
-/

namespace A278931.P7416911349947375711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278931.P7416911349947375711

/-! ## A278931.P17454303381721495892

`∩[A108873(n+1), A176551(n+1)]`
-/

namespace A278931.P17454303381721495892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278931.P17454303381721495892

/-! ## A278931.P11159939015192653882

`∩[A108873(n+1), A131457(n+1)]`
-/

namespace A278931.P11159939015192653882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278931.P11159939015192653882

/-!
# A278932: Numbers n such that n remains prime through 6 iterations of function f(x) = 2x + 1.

The programs for A278932, there is no canonical definition to state claims against.
-/

/-! ## A278932.P1309186847775424963

`2*A124514(n+1)-1`
-/

namespace A278932.P1309186847775424963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124514 (n + 1) - 1

end

end A278932.P1309186847775424963

/-! ## A278932.P10027947993993063873

`A008683(A151800(n))+2*A124514(n+1)`
-/

namespace A278932.P10027947993993063873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A151800 n).toNat + 2 * A124514 (n + 1)

end

end A278932.P10027947993993063873

/-! ## A278932.P12405283578793876438

`A008683(Δ[A007504(n)])+2*A124514(n+1)`
-/

namespace A278932.P12405283578793876438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + 2 * A124514 (n + 1)

end

end A278932.P12405283578793876438

/-! ## A278932.P9855162415116475491

`A008683(A000043(n+1))+2*A124514(n+1)`
-/

namespace A278932.P9855162415116475491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000043 (n + 1)).toNat + 2 * A124514 (n + 1)

end

end A278932.P9855162415116475491

/-! ## A278932.P8081671846486614288

`A008683(A002476(n+1))+2*A124514(n+1)`
-/

namespace A278932.P8081671846486614288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002476 (n + 1)).toNat + 2 * A124514 (n + 1)

end

end A278932.P8081671846486614288

/-!
# A278933: Number of 2 X 2 matrices with entries in {0,1,...,n} and permanent = trace with no entry repeated.

The programs for A278933, the canonical program `A278933.P2526544740831554129` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278933 has offset 0).

The definition of A278933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278933.P2526544740831554129

`∑[2*A200213(A028310(n))]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A278933

/-- `∑[2*A200213(A028310(n))]` -/
def P2526544740831554129.Spec : Prop :=
  ∀ n, P2526544740831554129.a n = A278933 n

theorem P2526544740831554129.correct : P2526544740831554129.Spec := by
  intro n
  simp only [A278933]

end A278933

/-! ## A278933.P16532964581965871573

`4*(A054519(n)-A091626(n))`
-/

namespace A278933.P16532964581965871573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A054519 n - A091626 n)

end

end A278933.P16532964581965871573

namespace A278933

/-- `4*(A054519(n)-A091626(n))` -/
def P16532964581965871573.Spec : Prop :=
  ∀ n, P16532964581965871573.a n = A278933 n

end A278933

/-! ## A278933.P6375687042524856323

`∑[4*(A065033(A032741(n))-1)]`
-/

namespace A278933.P6375687042524856323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A065033 (A032741 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278933.P6375687042524856323

namespace A278933

/-- `∑[4*(A065033(A032741(n))-1)]` -/
def P6375687042524856323.Spec : Prop :=
  ∀ n, P6375687042524856323.a n = A278933 n

end A278933

/-! ## A278933.P16847683397467464332

`2*(∑[A200213(n+1)]-A200213(n+1))`
-/

namespace A278933.P16847683397467464332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A200213 (n + 1))

end

end A278933.P16847683397467464332

namespace A278933

/-- `2*(∑[A200213(n+1)]-A200213(n+1))` -/
def P16847683397467464332.Spec : Prop :=
  ∀ n, P16847683397467464332.a n = A278933 n

end A278933

/-! ## A278933.P9497035074821563396

`A005843(∑[A200213(A028310(n))])`
-/

namespace A278933.P9497035074821563396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278933.P9497035074821563396

namespace A278933

/-- `A005843(∑[A200213(A028310(n))])` -/
def P9497035074821563396.Spec : Prop :=
  ∀ n, P9497035074821563396.a n = A278933 n

end A278933

/-! ## A278933.P14837572718875417284

`A042948(∑[A200213(A028310(n))])`
-/

namespace A278933.P14837572718875417284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278933.P14837572718875417284

namespace A278933

/-- `A042948(∑[A200213(A028310(n))])` -/
def P14837572718875417284.Spec : Prop :=
  ∀ n, P14837572718875417284.a n = A278933 n

end A278933

/-! ## A278933.P13301195932583574785

`A005843(∑[A200213(n+1)]-A200213(n+1))`
-/

namespace A278933.P13301195932583574785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j - A200213 (n + 1)).toNat

end

end A278933.P13301195932583574785

namespace A278933

/-- `A005843(∑[A200213(n+1)]-A200213(n+1))` -/
def P13301195932583574785.Spec : Prop :=
  ∀ n, P13301195932583574785.a n = A278933 n

end A278933

/-! ## A278933.P809751618995400647

`A042948(∑[A200213(n+1)]-A200213(n+1))`
-/

namespace A278933.P809751618995400647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (∑ j ∈ Finset.range (n + 1), f1 j - A200213 (n + 1)).toNat

end

end A278933.P809751618995400647

namespace A278933

/-- `A042948(∑[A200213(n+1)]-A200213(n+1))` -/
def P809751618995400647.Spec : Prop :=
  ∀ n, P809751618995400647.a n = A278933 n

end A278933

/-! ## A278933.P3704769643568265541

`∑[2*A200213(A233583(n+1))]`
-/

namespace A278933.P3704769643568265541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200213 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278933.P3704769643568265541

namespace A278933

/-- `∑[2*A200213(A233583(n+1))]` -/
def P3704769643568265541.Spec : Prop :=
  ∀ n, P3704769643568265541.a n = A278933 n

end A278933

/-! ## A278933.P9824697158569458179

`A005843(∑[A200213(A233583(n+1))])`
-/

namespace A278933.P9824697158569458179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200213 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278933.P9824697158569458179

namespace A278933

/-- `A005843(∑[A200213(A233583(n+1))])` -/
def P9824697158569458179.Spec : Prop :=
  ∀ n, P9824697158569458179.a n = A278933 n

end A278933

/-!
# A278934: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n,k)*binomial(2*k,k)^2.

The programs for A278934, the canonical program `A278934.P12648144773599242375` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278934 has offset 0).

The definition of A278934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278934.P12648144773599242375

`∑{#}[n, (-1)^(n-#)*C(n, #)*C(2*#, #)²]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278934

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*C(2*#, #)²]` -/
def P12648144773599242375.Spec : Prop :=
  ∀ n, P12648144773599242375.a n = (A278934 n : ℚ)

end A278934

/-!
# A278936: Cubes whose largest decimal digit is 3.

The programs for A278936, there is no canonical definition to state claims against.
-/

/-! ## A278936.P2733848736796024499

`A278937(n+1)^3`
-/

namespace A278936.P2733848736796024499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278937 (n + 1) ^ 3

end

end A278936.P2733848736796024499

/-! ## A278936.P14059499431280224239

`A043681(lt[1, A043681(n+1)%3]+1)^3`
-/

namespace A278936.P14059499431280224239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043681 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 3

end

end A278936.P14059499431280224239

/-! ## A278936.P17372653455201885475

`A004635(A038474(n+1))`
-/

namespace A278936.P17372653455201885475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004635 (A038474 (n + 1)).toNat

end

end A278936.P17372653455201885475

/-! ## A278936.P13836319293061415936

`A004636(A038478(n+1))`
-/

namespace A278936.P13836319293061415936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004636 (A038478 (n + 1)).toNat

end

end A278936.P13836319293061415936

/-! ## A278936.P1460319326303124372

`A004637(A038481(n))`
-/

namespace A278936.P1460319326303124372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004637 (A038481 n).toNat

end

end A278936.P1460319326303124372

/-!
# A278937: Numbers k such that 3 is the largest decimal digit of k^3.

The programs for A278937, there is no canonical definition to state claims against.
-/

/-! ## A278937.P6197672020119710107

`A043681(lt[1, A043681(n+1)%3]+1)`
-/

namespace A278937.P6197672020119710107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043681 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A278937.P6197672020119710107

/-! ## A278937.P3830068611272796174

`root(A278936(n+1), 3)`
-/

namespace A278937.P3830068611272796174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A278936 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A278937.P3830068611272796174

/-!
# A278939: Between two successive digits "4" there are 0, then 1, then 2, then 3, ... other digits.

The programs for A278939, there is no canonical definition to state claims against.
-/

/-! ## A278939.P1155558746203551661

`A107038(A212804(n))*A273469(n+1)`
-/

namespace A278939.P1155558746203551661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107038 (A212804 n).toNat * A273469 (n + 1)

end

end A278939.P1155558746203551661

/-! ## A278939.P8400367016940124497

`A088155(n)!*A302943(∑[A088155(n)!])`
-/

namespace A278939.P8400367016940124497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A088155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A088155 n).toNat : ℤ) * A302943 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278939.P8400367016940124497

/-!
# A278940: Between two successive digits "5" there are 0, then 1, then 2, then 3, ... other digits.

The programs for A278940, there is no canonical definition to state claims against.
-/

/-! ## A278940.P10456949599890505785

`A273470(n+1)-A185294(A309081(n+1))`
-/

namespace A278940.P10456949599890505785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273470 (n + 1) - A185294 (A309081 (n + 1)).toNat

end

end A278940.P10456949599890505785

/-! ## A278940.P4632253921100016826

`A273470(n+1)+A014102(A278960(n+1))`
-/

namespace A278940.P4632253921100016826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273470 (n + 1) + A014102 (A278960 (n + 1)).toNat

end

end A278940.P4632253921100016826

/-!
# A278945: Expansion of Sum_{k>=1} k*(2*k - 1)*x^k/(1 - x^k).

The programs for A278945, the canonical program `A278945.P3036013094253451214` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278945 has offset 0).

The definition of A278945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278945.P3036013094253451214

`∑{d}[n, #*(2*#-1)]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278945

/-- `∑{d}[n, #*(2*#-1)]` -/
def P3036013094253451214.Spec : Prop :=
  ∀ n, P3036013094253451214.a n = A278945 n

theorem P3036013094253451214.correct : P3036013094253451214.Spec := by
  intro n
  simp only [A278945]

end A278945

/-! ## A278945.P5888771048777039927

`∑{d}[n, C(2*#, 2)]`
-/

namespace A278945.P5888771048777039927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (2 * d) 2

end

end A278945.P5888771048777039927

namespace A278945

/-- `∑{d}[n, C(2*#, 2)]` -/
def P5888771048777039927.Spec : Prop :=
  ∀ n, (P5888771048777039927.a n : ℤ) = A278945 n

end A278945

/-! ## A278945.P7226568767080804198

`∑{d}[n, A002939(#)]/2`
-/

namespace A278945.P7226568767080804198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A002939 d : ℤ) : ℚ) / 2

end

end A278945.P7226568767080804198

namespace A278945

/-- `∑{d}[n, A002939(#)]/2` -/
def P7226568767080804198.Spec : Prop :=
  ∀ n, P7226568767080804198.a n = (A278945 n : ℚ)

end A278945

/-! ## A278945.P9750691502283143613

`A278947(n)-A069153(A028310(n))`
-/

namespace A278945.P9750691502283143613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278947 n - A069153 (A028310 n).toNat

end

end A278945.P9750691502283143613

namespace A278945

/-- `A278947(n)-A069153(A028310(n))` -/
def P9750691502283143613.Spec : Prop :=
  ∀ n, P9750691502283143613.a n = A278945 n

end A278945

/-! ## A278945.P14543313673717382623

`∑{d}[n, A192136(#)-1]-A069153(A028310(n))`
-/

namespace A278945.P14543313673717382623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A192136 d - 1) - A069153 (A028310 n).toNat

end

end A278945.P14543313673717382623

namespace A278945

/-- `∑{d}[n, A192136(#)-1]-A069153(A028310(n))` -/
def P14543313673717382623.Spec : Prop :=
  ∀ n, P14543313673717382623.a n = A278945 n

end A278945

/-! ## A278945.P13809446773118839517

`A014682(∑{d}[n, A002939(#)])`
-/

namespace A278945.P13809446773118839517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n), A002939 d).toNat

end

end A278945.P13809446773118839517

namespace A278945

/-- `A014682(∑{d}[n, A002939(#)])` -/
def P13809446773118839517.Spec : Prop :=
  ∀ n, P13809446773118839517.a n = A278945 n

end A278945

/-!
# A278947: Expansion of Sum_{k>=1} (k*(5*k - 3)/2)*x^k/(1 - x^k).

The programs for A278947, the canonical program `A278947.P7195925966305486088` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278947 has offset 0).

The definition of A278947 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278947.P7195925966305486088

`∑{d}[n, #*(5*#-3)/2]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278947

/-- `∑{d}[n, #*(5*#-3)/2]` -/
def P7195925966305486088.Spec : Prop :=
  ∀ n, P7195925966305486088.a n = (A278947 n : ℚ)

end A278947

/-!
# A278948: Numbers such that the sum of the reverse of their aliquot parts is equal to the reverse of the sum of their aliquot parts.

The programs for A278948, there is no canonical definition to state claims against.
-/

/-! ## A278948.P2191080950322159568

`lt[A114102(n+1), A107286(n)²]`
-/

namespace A278948.P2191080950322159568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278948.P2191080950322159568

/-! ## A278948.P12411361083631970143

`∩[A072362(n+1), A123093(n+1)]`
-/

namespace A278948.P12411361083631970143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278948.P12411361083631970143

/-! ## A278948.P17947997994851939046

`∩[A072362(n+1), A322547(n+1)]`
-/

namespace A278948.P17947997994851939046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278948.P17947997994851939046

/-! ## A278948.P16343576799796172892

`lt[A020128(A082023(n)), A107463(n)]`
-/

namespace A278948.P16343576799796172892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020128 (A082023 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278948.P16343576799796172892

/-!
# A278949: Expansion of Product_{k>=1} 1/(1 - x^(k*(2*k-1))).

The programs for A278949, there is no canonical definition to state claims against.
-/

/-! ## A278949.P9772716681038936565

`A280950(A004396(n)%A336452(n+1))`
-/

namespace A278949.P9772716681038936565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280950 (Int.tmod (A004396 n) (A336452 (n + 1))).toNat

end

end A278949.P9772716681038936565

/-! ## A278949.P2871377774526591750

`A280950(round(2*n/3)%A129471(n+1))`
-/

namespace A278949.P2871377774526591750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280950 (Int.tmod (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))) (A129471 (n + 1))).toNat

end

end A278949.P2871377774526591750

/-! ## A278949.P14518845344791385143

`or(A000929(A300068(n)), A185284(n))`
-/

namespace A278949.P14518845344791385143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000929 (A300068 n).toNat) (A185284 n)

end

end A278949.P14518845344791385143

/-!
# A278951: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A278951, there is no canonical definition to state claims against.
-/

/-! ## A278951.P3398561435942229592

`A007088(A278953(n))`
-/

namespace A278951.P3398561435942229592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278953 n).toNat

end

end A278951.P3398561435942229592

/-! ## A278951.P4917398472564403113

`A185544(2*A278953(n))`
-/

namespace A278951.P4917398472564403113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278953 n).toNat

end

end A278951.P4917398472564403113

/-! ## A278951.P10679570960165783621

`A185544(A278953(n)+A278953(n))`
-/

namespace A278951.P10679570960165783621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278953 n + A278953 n).toNat

end

end A278951.P10679570960165783621

/-!
# A278952: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A278952, there is no canonical definition to state claims against.
-/

/-! ## A278952.P17762367120790992538

`A007088(A278954(n)-1)+1`
-/

namespace A278952.P17762367120790992538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278954 n - 1).toNat + 1

end

end A278952.P17762367120790992538

/-! ## A278952.P3839185999637838147

`A007088(A278954(n))`
-/

namespace A278952.P3839185999637838147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278954 n).toNat

end

end A278952.P3839185999637838147

/-! ## A278952.P919666116214973983

`A305989(A278953(n)/A055642(n))`
-/

namespace A278952.P919666116214973983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278952.P919666116214973983

/-! ## A278952.P9266660462445246633

`A305989(A278953(n)/A279951(n))`
-/

namespace A278952.P9266660462445246633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A278952.P9266660462445246633

/-! ## A278952.P14883860262905352455

`A305989(A278953(n)/A323018(2*n+1))`
-/

namespace A278952.P14883860262905352455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A323018 (2 * n + 1) : ℚ))).toNat

end

end A278952.P14883860262905352455

/-!
# A278953: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A278953, there is no canonical definition to state claims against.
-/

/-! ## A278953.P11662523952339690477

`xor(A278922(A000142(n)), A280331(n))`
-/

namespace A278953.P11662523952339690477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278922 (A000142 n).toNat) (A280331 n)

end

end A278953.P11662523952339690477

/-! ## A278953.P17811342512282181802

`xor(A280331(n), A337228(A168089(n)))`
-/

namespace A278953.P17811342512282181802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280331 n) (A337228 (A168089 n).toNat)

end

end A278953.P17811342512282181802

/-! ## A278953.P18240406167652066721

`xor(A278922(A061581(n+1)), A280331(n))`
-/

namespace A278953.P18240406167652066721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278922 (A061581 (n + 1)).toNat) (A280331 n)

end

end A278953.P18240406167652066721

/-!
# A278954: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 118", based on the 5-celled von Neumann neighborhood.

The programs for A278954, there is no canonical definition to state claims against.
-/

/-! ## A278954.P3996497741108920822

`A030101(A278953(n)/A055642(n))`
-/

namespace A278954.P3996497741108920822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278954.P3996497741108920822

/-! ## A278954.P10912202551175833143

`A030101(A278953(n)/A279951(n))`
-/

namespace A278954.P10912202551175833143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A278954.P10912202551175833143

/-! ## A278954.P785574938412814138

`A325401(A278953(n)/A055642(n))`
-/

namespace A278954.P785574938412814138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278954.P785574938412814138

/-! ## A278954.P257003595095038111

`A325401(A278953(n)/A279951(n))`
-/

namespace A278954.P257003595095038111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A279951 n : ℚ))).toNat

end

end A278954.P257003595095038111

/-! ## A278954.P16799031688858966017

`A030101(A278953(n)/A323018(2*n+1))`
-/

namespace A278954.P16799031688858966017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A278953 n : ℚ) / (A323018 (2 * n + 1) : ℚ))).toNat

end

end A278954.P16799031688858966017

/-!
# A278955: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A278955, there is no canonical definition to state claims against.
-/

/-! ## A278955.P3418754657311496108

`A007088(A278957(n))`
-/

namespace A278955.P3418754657311496108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278957 n).toNat

end

end A278955.P3418754657311496108

/-! ## A278955.P16625088826636633245

`A185544(2*A278957(n))`
-/

namespace A278955.P16625088826636633245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278957 n).toNat

end

end A278955.P16625088826636633245

/-! ## A278955.P2915551551610069029

`A185544(A278957(n)+A278957(n))`
-/

namespace A278955.P2915551551610069029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278957 n + A278957 n).toNat

end

end A278955.P2915551551610069029

/-!
# A278956: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A278956, there is no canonical definition to state claims against.
-/

/-! ## A278956.P10088584827262304276

`A007088(A278958(n))`
-/

namespace A278956.P10088584827262304276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278958 n).toNat

end

end A278956.P10088584827262304276

/-! ## A278956.P5337844714131141335

`A185544(2*A278958(n))`
-/

namespace A278956.P5337844714131141335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278958 n).toNat

end

end A278956.P5337844714131141335

/-! ## A278956.P4532040409789273533

`A185544(A278958(n)+A278958(n))`
-/

namespace A278956.P4532040409789273533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A278958 n + A278958 n).toNat

end

end A278956.P4532040409789273533

/-!
# A278957: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 121", based on the 5-celled von Neumann neighborhood.

The programs for A278957, there is no canonical definition to state claims against.
-/

/-! ## A278957.P10827886122299223093

`A281630(n)+A025469(A151050(n))`
-/

namespace A278957.P10827886122299223093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281630 n + A025469 (A151050 n).toNat

end

end A278957.P10827886122299223093

/-! ## A278957.P6628977321870691565

`A293162(A000255(n))+A281630(n)`
-/

namespace A278957.P6628977321870691565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A000255 n).toNat + A281630 n

end

end A278957.P6628977321870691565

/-! ## A278957.P9544732903641806339

`A293162(A007564(n))+A281630(n)`
-/

namespace A278957.P9544732903641806339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A007564 n).toNat + A281630 n

end

end A278957.P9544732903641806339

/-! ## A278957.P11583388367590293148

`A281630(n)+A011745(A325850(n))`
-/

namespace A278957.P11583388367590293148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281630 n + A011745 (A325850 n).toNat

end

end A278957.P11583388367590293148

/-!
# A278959: Length of the string that is generated by the concatenation of all the prime numbers < n.

The programs for A278959, the canonical program `A278959.P17833903646216685810` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278959 has offset 0).

The definition of A278959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278959.P17833903646216685810

`A068670(∑[char[p?[round(8*n/7)]+1]])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278959

/-- `A068670(∑[char[p?[round(8*n/7)]+1]])` -/
def P17833903646216685810.Spec : Prop :=
  ∀ n, P17833903646216685810.a n = A278959 n

theorem P17833903646216685810.correct : P17833903646216685810.Spec := by
  intro n
  simp only [A278959]

end A278959

/-! ## A278959.P2342880494891975927

`A068670(∑[char[A008864(n+1)]])`
-/

namespace A278959.P2342880494891975927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278959.P2342880494891975927

namespace A278959

/-- `A068670(∑[char[A008864(n+1)]])` -/
def P2342880494891975927.Spec : Prop :=
  ∀ n, P2342880494891975927.a n = A278959 n

end A278959

/-! ## A278959.P9664990748729321987

`∑[char[A008864(n+1)]*A055642(n)]`
-/

namespace A278959.P9664990748729321987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A055642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278959.P9664990748729321987

namespace A278959

/-- `∑[char[A008864(n+1)]*A055642(n)]` -/
def P9664990748729321987.Spec : Prop :=
  ∀ n, P9664990748729321987.a n = A278959 n

end A278959

/-! ## A278959.P2330359039712151544

`∑[char[A008864(n+1)]*A004218(n+1)]`
-/

namespace A278959.P2330359039712151544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278959.P2330359039712151544

namespace A278959

/-- `∑[char[A008864(n+1)]*A004218(n+1)]` -/
def P2330359039712151544.Spec : Prop :=
  ∀ n, P2330359039712151544.a n = A278959 n

end A278959

/-! ## A278959.P3649961421873105571

`A068670(A242096(A004273(n)))`
-/

namespace A278959.P3649961421873105571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (A242096 (A004273 n).toNat).toNat

end

end A278959.P3649961421873105571

namespace A278959

/-- `A068670(A242096(A004273(n)))` -/
def P3649961421873105571.Spec : Prop :=
  ∀ n, P3649961421873105571.a n = A278959 n

end A278959

/-!
# A278961: Triangle read by rows: row n consists of k, 1<=k<=n, such that binomial(n,k) is divisible by gcd(n,k).

The programs for A278961, there is no canonical definition to state claims against.
-/

/-! ## A278961.P6801619797415984335

`A384046(A004830(n+2)%A224642(2*(n+1)))`
-/

namespace A278961.P6801619797415984335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384046 (Int.tmod (A004830 (n + 2)) (A224642 (2 * (n + 1)))).toNat

end

end A278961.P6801619797415984335

/-!
# A278963: a(n) is the number of k, 1<=k<=n, such that gcd(n,k) divides binomial(n,k).

The programs for A278963, there is no canonical definition to state claims against.
-/

/-! ## A278963.P14067494019945458282

`Δ[eq[1, A278961(n+1)]]`
-/

namespace A278963.P14067494019945458282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278961 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A278963.P14067494019945458282

/-! ## A278963.P13477109505816114886

`Δ[record[A023443(n)-A278961(n+1)]]`
-/

namespace A278963.P13477109505816114886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A278961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278963.P13477109505816114886

/-! ## A278963.P3299991456256720124

`Δ[record[n/A278961(A000027(n+1))]]`
-/

namespace A278963.P3299991456256720124
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A278961 (A000027 (n + 1)).toNat : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278963.P3299991456256720124

/-! ## A278963.P17448648062506086128

`Δ[A023443(record[n/A278961(n+1)])]`
-/

namespace A278963.P17448648062506086128
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A278961 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278963.P17448648062506086128

/-! ## A278963.P4989652432458660940

`Δ[record[A000027(n+1)-A278961(n+1)]]`
-/

namespace A278963.P4989652432458660940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A278961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278963.P4989652432458660940

/-! ## A278963.P7043132752820946714

`Δ[record[A008619(2*n)-A278961(n+1)]]`
-/

namespace A278963.P7043132752820946714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A278961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278963.P7043132752820946714

/-!
# A278966: Least Hamming weight of multiples of the n-th prime.

The programs for A278966, there is no canonical definition to state claims against.
-/

/-! ## A278966.P811434291822077341

`A086342(p?[comp[n²]])`
-/

namespace A278966.P811434291822077341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A278966.P811434291822077341

/-! ## A278966.P978336796558359237

`A086342(A000040(1+n))`
-/

namespace A278966.P978336796558359237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A000040 (1 + n)).toNat

end

end A278966.P978336796558359237

/-! ## A278966.P16890500825742107652

`A086342(A006005(1+n))`
-/

namespace A278966.P16890500825742107652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A006005 (1 + n)).toNat

end

end A278966.P16890500825742107652

/-! ## A278966.P4909450834827558625

`A086342(A008578(n+2))`
-/

namespace A278966.P4909450834827558625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A008578 (n + 2)).toNat

end

end A278966.P4909450834827558625

/-! ## A278966.P3082534299013498535

`A086342(eq[1, A003415(n)])`
-/

namespace A278966.P3082534299013498535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278966.P3082534299013498535

/-! ## A278966.P6660676025786886090

`A086342(eq[2, A005127(n)])`
-/

namespace A278966.P6660676025786886090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278966.P6660676025786886090

/-! ## A278966.P14499845144178232626

`A086342(eq[2, A005128(n)])`
-/

namespace A278966.P14499845144178232626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278966.P14499845144178232626

/-! ## A278966.P3810359270646684763

`A086342(eq[2, A062830(n)])`
-/

namespace A278966.P3810359270646684763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278966.P3810359270646684763

/-! ## A278966.P614286436700582513

`A086342(eq[2, A322366(n)])`
-/

namespace A278966.P614286436700582513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278966.P614286436700582513

/-! ## A278966.P17985945523947414564

`A086342(record[A006530(n+2)])`
-/

namespace A278966.P17985945523947414564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278966.P17985945523947414564

/-! ## A278966.P5209470354874749440

`A086342(record[A014963(n+2)])`
-/

namespace A278966.P5209470354874749440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278966.P5209470354874749440

/-! ## A278966.P2094377894952638689

`A086342(record[A020639(n+2)])`
-/

namespace A278966.P2094377894952638689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A278966.P2094377894952638689

/-! ## A278966.P3276652294366395442

`A086342(A100484(n+1)/2)`
-/

namespace A278966.P3276652294366395442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A278966.P3276652294366395442

/-! ## A278966.P15390912846759205497

`A086342(A001747(n+2)/2)`
-/

namespace A278966.P15390912846759205497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A278966.P15390912846759205497

/-! ## A278966.P6771157022116955677

`A086342(eq[2, A341982(n+2)])`
-/

namespace A278966.P6771157022116955677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278966.P6771157022116955677

/-! ## A278966.P14842795707673565912

`A086342(lt[A210442(n), A086342(n)])`
-/

namespace A278966.P14842795707673565912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278966.P14842795707673565912

/-! ## A278966.P10456575459160995765

`A086342(A100484(n+1))`
-/

namespace A278966.P10456575459160995765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A100484 (n + 1)).toNat

end

end A278966.P10456575459160995765

/-! ## A278966.P15412768776534031380

`A086342(A001747(n+2))`
-/

namespace A278966.P15412768776534031380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A001747 (n + 2)).toNat

end

end A278966.P15412768776534031380

/-! ## A278966.P3665044795665681826

`A086342(A074845(n+2))`
-/

namespace A278966.P3665044795665681826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A074845 (n + 2)).toNat

end

end A278966.P3665044795665681826

/-! ## A278966.P487953301811007177

`A086342(A001749(n+1)/2)`
-/

namespace A278966.P487953301811007177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A278966.P487953301811007177

/-!
# A278967: a(n) = least multiple of the n-th prime that has the minimum Hamming weight (=A278966(n)).

The programs for A278967, there is no canonical definition to state claims against.
-/

/-! ## A278967.P8997812049592619069

`A000040(n+1)*A143069(p?[A007989(n)])`
-/

namespace A278967.P8997812049592619069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A143069 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A278967.P8997812049592619069

/-! ## A278967.P2362622074350506223

`A000040(n+1)*A143069(A006005(n+1))`
-/

namespace A278967.P2362622074350506223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A143069 (A006005 (n + 1)).toNat

end

end A278967.P2362622074350506223

/-! ## A278967.P2779713323473258490

`(A006093(n+1)+1)*A143069(∑[A054541(n+1)])`
-/

namespace A278967.P2779713323473258490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A143069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278967.P2779713323473258490

/-! ## A278967.P16624567484766242895

`(A014692(n+1)+n)*A143069(∑[A054541(n+1)])`
-/

namespace A278967.P16624567484766242895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) + (n : ℤ)) * A143069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A278967.P16624567484766242895

/-! ## A278967.P3644289788955232432

`(A006093(n+1)+1)*A143069(A006093(n+1)+1)`
-/

namespace A278967.P3644289788955232432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A143069 (A006093 (n + 1) + 1).toNat

end

end A278967.P3644289788955232432

/-!
# A278968: Least number k such that pk is of minimal Hamming weight, where p is the n-th prime.

The programs for A278968, there is no canonical definition to state claims against.
-/

/-! ## A278968.P14764308865940834436

`A143069(p?[xor(1, n)])`
-/

namespace A278968.P14764308865940834436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A278968.P14764308865940834436

/-! ## A278968.P8752012531222419831

`A143069(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A278968.P8752012531222419831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A278968.P8752012531222419831

/-! ## A278968.P8536170594128189488

`∏{p}[4*p?[round(8*n/7)], A143069(#)]`
-/

namespace A278968.P8536170594128189488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A143069 p

end

end A278968.P8536170594128189488

/-! ## A278968.P4676915317037541556

`A143069(Δ[A007504(n)])`
-/

namespace A278968.P4676915317037541556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (f1 (n + 1) - f1 n).toNat

end

end A278968.P4676915317037541556

/-! ## A278968.P14487557463613648504

`A143069(p?[A007989(n)])`
-/

namespace A278968.P14487557463613648504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A278968.P14487557463613648504

/-!
# A278969: Number of 7-digit numbers whose sum of digits is n.

The programs for A278969, there is no canonical definition to state claims against.
-/

/-! ## A278969.P17316936343316230046

`C(n+6, 6)-C(A081136(n), 6^n)`
-/

namespace A278969.P17316936343316230046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) - (Nat.choose (A081136 n).toNat (6 ^ n) : ℤ)

end

end A278969.P17316936343316230046

/-! ## A278969.P511520580370936200

`∑[record[A143130(A341165(n))]]`
-/

namespace A278969.P511520580370936200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143130 (A341165 (n + 28)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278969.P511520580370936200

/-! ## A278969.P10930729412174652067

`∑[A090581(A002998(n)+1)]`
-/

namespace A278969.P10930729412174652067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090581 (A002998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278969.P10930729412174652067

/-! ## A278969.P16925439248782359412

`∑[A090581(A043315(n+1))]`
-/

namespace A278969.P16925439248782359412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090581 (A043315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278969.P16925439248782359412

/-! ## A278969.P11641084070505144234

`∑[A090581(A161948(n+1))]`
-/

namespace A278969.P11641084070505144234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090581 (A161948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278969.P11641084070505144234

/-!
# A278970: Partition an n X n square into multiple non-congruent integer-sided rectangles. a(n) is ceiling(n/log(n)) + 3 - the least possible difference between the largest and smallest area.

The programs for A278970, there is no canonical definition to state claims against.
-/

/-! ## A278970.P9927672515435493014

`A050501(n+3)+3-A276523(n+3)`
-/

namespace A278970.P9927672515435493014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050501 (n + 3) + 3 - A276523 (n + 3)

end

end A278970.P9927672515435493014

/-! ## A278970.P2840703341946244200

`A038800(A365559(n+1)%A043513(n+3))`
-/

namespace A278970.P2840703341946244200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038800 (Int.tmod (A365559 (n + 1)) (A043513 (n + 3))).toNat

end

end A278970.P2840703341946244200

/-!
# A278971: Number of 8-digit numbers whose sum of digits is n.

The programs for A278971, there is no canonical definition to state claims against.
-/

/-! ## A278971.P15364872892016855236

`C(n+7, 7)-A243841(∑[n])`
-/

namespace A278971.P15364872892016855236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - A243841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278971.P15364872892016855236

/-! ## A278971.P7713483388898042595

`C(n+7, 7)-A320798(C(n, 9)+1)`
-/

namespace A278971.P7713483388898042595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - A320798 (Nat.choose n 9 + 1)

end

end A278971.P7713483388898042595

/-! ## A278971.P7928778713825621218

`C(n+7, 7)-A367903(C(n, 9)+1)`
-/

namespace A278971.P7928778713825621218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - A367903 (Nat.choose n 9 + 1)

end

end A278971.P7928778713825621218

/-! ## A278971.P6954457070448846194

`∑[C(n+6, 6)-C(A081136(n), 6^n)]`
-/

namespace A278971.P6954457070448846194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) - (Nat.choose (A081136 n).toNat (6 ^ n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278971.P6954457070448846194

/-! ## A278971.P15699884776691412888

`C(n+7, 7)-A003849(A017438(n))`
-/

namespace A278971.P15699884776691412888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - A003849 (A017438 n).toNat

end

end A278971.P15699884776691412888

/-!
# A278972: Twice the twin primes.

The programs for A278972, the canonical program `A278972.P17854840441802126541` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278972 has offset 1).

The definition of A278972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278972.P17854840441802126541

`2*A001097(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A278972

/-- `2*A001097(n+1)` -/
def P17854840441802126541.Spec : Prop :=
  ∀ n, P17854840441802126541.a n = A278972 (n + 1)

theorem P17854840441802126541.correct : P17854840441802126541.Spec := by
  intro n
  simp only [A278972, Nat.add_sub_cancel]

end A278972

/-! ## A278972.P18164012605351803451

`lcm(2, A001097(Δ[n²]-n))`
-/

namespace A278972.P18164012605351803451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A278972.P18164012605351803451

namespace A278972

/-- `lcm(2, A001097(Δ[n²]-n))` -/
def P18164012605351803451.Spec : Prop :=
  ∀ n, (P18164012605351803451.a n : ℤ) = A278972 (n + 1)

end A278972

/-! ## A278972.P10888191479575769729

`4*A163656(n)-a(n-1)` with `a(0)=6`
-/

namespace A278972.P10888191479575769729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  4 * A163656 n - a (n - 1)

end

end A278972.P10888191479575769729

namespace A278972

/-- `4*A163656(n)-a(n-1)` -/
def P10888191479575769729.Spec : Prop :=
  ∀ n, P10888191479575769729.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P874156152927714777

`2*(A161220(n+1)+2*(n+1))`
-/

namespace A278972.P874156152927714777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A161220 (n + 1) + (2 * (n + 1) : ℤ))

end

end A278972.P874156152927714777

namespace A278972

/-- `2*(A161220(n+1)+2*(n+1))` -/
def P874156152927714777.Spec : Prop :=
  ∀ n, P874156152927714777.a n = A278972 (n + 1)

theorem P874156152927714777.correct : P874156152927714777.Spec := by
  intro n
  simp only [A278972, Nat.add_sub_cancel, A278972.P874156152927714777.a, A278972.P17854840441802126541.a, A001097, A001097.P13187098143555915233.a, A161220, A161220.P17651123597370390187.a, A005843, A005843.P3167286115683555970.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P6943270999618007984.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278972

/-! ## A278972.P17573426108357773291

`record[2*A001097(A328397(n))]`
-/

namespace A278972.P17573426108357773291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001097 (A328397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278972.P17573426108357773291

namespace A278972

/-- `record[2*A001097(A328397(n))]` -/
def P17573426108357773291.Spec : Prop :=
  ∀ n, P17573426108357773291.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P14705696276898137700

`2*(A265760(n+1)+A130706(n))`
-/

namespace A278972.P14705696276898137700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A265760 (n + 1) + A130706 n)

end

end A278972.P14705696276898137700

namespace A278972

/-- `2*(A265760(n+1)+A130706(n))` -/
def P14705696276898137700.Spec : Prop :=
  ∀ n, P14705696276898137700.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P8986377169694499904

`∪[A108605(n+1), A176810(n+1)]`
-/

namespace A278972.P8986377169694499904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A278972.P8986377169694499904

namespace A278972

/-- `∪[A108605(n+1), A176810(n+1)]` -/
def P8986377169694499904.Spec : Prop :=
  ∀ n, (P8986377169694499904.a n : ℤ) = A278972 (n + 1)

end A278972

/-! ## A278972.P14029713417461559251

`A001097(n+1)+A001097(-xor(n, -1))`
-/

namespace A278972.P14029713417461559251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + A001097 (-Int.xor (n : ℤ) (-1)).toNat

end

end A278972.P14029713417461559251

namespace A278972

/-- `A001097(n+1)+A001097(-xor(n, -1))` -/
def P14029713417461559251.Spec : Prop :=
  ∀ n, P14029713417461559251.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P5424435208320982183

`A001097(A000027(n+1))+A001097(n+1)`
-/

namespace A278972.P5424435208320982183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A000027 (n + 1)).toNat + A001097 (n + 1)

end

end A278972.P5424435208320982183

namespace A278972

/-- `A001097(A000027(n+1))+A001097(n+1)` -/
def P5424435208320982183.Spec : Prop :=
  ∀ n, P5424435208320982183.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P1882979357252777371

`2*A171821(n+2)`
-/

namespace A278972.P1882979357252777371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171821 (n + 2)

end

end A278972.P1882979357252777371

namespace A278972

/-- `2*A171821(n+2)` -/
def P1882979357252777371.Spec : Prop :=
  ∀ n, P1882979357252777371.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P4373444196790115922

`gcd(2, T(n-1,k))*A077800(n+2)` with `a(0)=6`
-/

namespace A278972.P4373444196790115922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (Int.gcd 2 (SequenceMachineLib.triUp a n) : ℤ) * A077800 (n + 2)

end

end A278972.P4373444196790115922

namespace A278972

/-- `gcd(2, T(n-1,k))*A077800(n+2)` -/
def P4373444196790115922.Spec : Prop :=
  ∀ n, P4373444196790115922.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P2903651313963011229

`2*A077800(A065475(n+1))`
-/

namespace A278972.P2903651313963011229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077800 (A065475 (n + 1)).toNat

end

end A278972.P2903651313963011229

namespace A278972

/-- `2*A077800(A065475(n+1))` -/
def P2903651313963011229.Spec : Prop :=
  ∀ n, P2903651313963011229.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P14000723589115377950

`2*A077800(A326178(n+1))`
-/

namespace A278972.P14000723589115377950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077800 (A326178 (n + 1)).toNat

end

end A278972.P14000723589115377950

namespace A278972

/-- `2*A077800(A326178(n+1))` -/
def P14000723589115377950.Spec : Prop :=
  ∀ n, P14000723589115377950.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P3113905958487273896

`2*A077800(A181440(n+2))`
-/

namespace A278972.P3113905958487273896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077800 (A181440 (n + 2)).toNat

end

end A278972.P3113905958487273896

namespace A278972

/-- `2*A077800(A181440(n+2))` -/
def P3113905958487273896.Spec : Prop :=
  ∀ n, P3113905958487273896.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P1271485994019732750

`2*A077800(A184985(n+2))`
-/

namespace A278972.P1271485994019732750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077800 (A184985 (n + 2)).toNat

end

end A278972.P1271485994019732750

namespace A278972

/-- `2*A077800(A184985(n+2))` -/
def P1271485994019732750.Spec : Prop :=
  ∀ n, P1271485994019732750.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P15609303208893618081

`record[2*A077800(A293217(n+1))]`
-/

namespace A278972.P15609303208893618081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077800 (A293217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278972.P15609303208893618081

namespace A278972

/-- `record[2*A077800(A293217(n+1))]` -/
def P15609303208893618081.Spec : Prop :=
  ∀ n, P15609303208893618081.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P911638393663527234

`record[2*A077800(A300827(n+1))]`
-/

namespace A278972.P911638393663527234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077800 (A300827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278972.P911638393663527234

namespace A278972

/-- `record[2*A077800(A300827(n+1))]` -/
def P911638393663527234.Spec : Prop :=
  ∀ n, P911638393663527234.a n = A278972 (n + 1)

end A278972

/-! ## A278972.P9916998708433931431

`A171821(n+2)+A001097(n+1)`
-/

namespace A278972.P9916998708433931431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) + A001097 (n + 1)

end

end A278972.P9916998708433931431

namespace A278972

/-- `A171821(n+2)+A001097(n+1)` -/
def P9916998708433931431.Spec : Prop :=
  ∀ n, P9916998708433931431.a n = A278972 (n + 1)

theorem P9916998708433931431.correct : P9916998708433931431.Spec := by
  intro n
  simp only [A278972, Nat.add_sub_cancel, A278972.P9916998708433931431.a, A278972.P17854840441802126541.a, A001097, A001097.P13187098143555915233.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P6943270999618007984.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278972

/-! ## A278972.P6191942322278989319

`A001097(n+1)+A280968(n+1)-A001097(n+2)`
-/

namespace A278972.P6191942322278989319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + (A280968 (n + 1) - A001097 (n + 2))

end

end A278972.P6191942322278989319

namespace A278972

/-- `A001097(n+1)+A280968(n+1)-A001097(n+2)` -/
def P6191942322278989319.Spec : Prop :=
  ∀ n, P6191942322278989319.a n = A278972 (n + 1)

theorem P6191942322278989319.correct : P6191942322278989319.Spec := by
  intro n
  simp only [A278972, Nat.add_sub_cancel, A278972.P6191942322278989319.a, A278972.P17854840441802126541.a, A001097, A001097.P13187098143555915233.a, A280968, A280968.P17537738799820153043.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P6943270999618007984.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A278972

/-! ## A278972.P9558147520980004656

`2*A099609(A009005(n+1))`
-/

namespace A278972.P9558147520980004656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099609 (A009005 (n + 1)).toNat

end

end A278972.P9558147520980004656

namespace A278972

/-- `2*A099609(A009005(n+1))` -/
def P9558147520980004656.Spec : Prop :=
  ∀ n, P9558147520980004656.a n = A278972 (n + 1)

end A278972

/-!
# A278973: Number of divisors of the n-th Bell number (A000110(n)).

The programs for A278973, there is no canonical definition to state claims against.
-/

/-! ## A278973.P3116068566112870333

`(log2(A061462(n))+1)*A280638(n)`
-/

namespace A278973.P3116068566112870333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A061462 n : ℝ) + 1) * (A280638 n : ℝ)

end

end A278973.P3116068566112870333

/-! ## A278973.P16818372618254790709

`A280638(n)*A291241(val(A000110(n), 2))`
-/

namespace A278973.P16818372618254790709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280638 n * A291241 (SequenceMachineLib.valuation (A000110 n).toNat 2)

end

end A278973.P16818372618254790709

/-! ## A278973.P13033785174670465295

`A280638(n)*A286477(val(A000110(n), 2)+1)`
-/

namespace A278973.P13033785174670465295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280638 n * A286477 (SequenceMachineLib.valuation (A000110 n).toNat 2 + 1)

end

end A278973.P13033785174670465295

/-! ## A278973.P6138320332009572492

`A280638(n)*A339879(val(A000110(n), 2)+1)`
-/

namespace A278973.P6138320332009572492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280638 n * A339879 (SequenceMachineLib.valuation (A000110 n).toNat 2 + 1)

end

end A278973.P6138320332009572492

/-! ## A278973.P10673143780074401307

`A038148(A000110(n))`
-/

namespace A278973.P10673143780074401307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (A000110 n).toNat

end

end A278973.P10673143780074401307

/-!
# A278978: Number of initial digits of ternary Pi wherein the digit counts of zeros and twos are exactly equal.

The programs for A278978, there is no canonical definition to state claims against.
-/

/-! ## A278978.P12427646049838055258

`eq[A004602(n+2)+n, ∑[A004602(n+2)]]`
-/

namespace A278978.P12427646049838055258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004602 (n + 2) + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004602 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278978.P12427646049838055258

/-! ## A278978.P6405329137238351073

`eq[A125208(n+2), A125209(A125219(n+1))]`
-/

namespace A278978.P6405329137238351073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125208 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125209 (A125219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278978.P6405329137238351073

/-!
# A278982: List of André permutations of the first kind.

The programs for A278982, there is no canonical definition to state claims against.
-/

/-! ## A278982.P16517692192503126030

`A030299(lt[A209448(n), ∑{p}[n+1, #^10]])`
-/

namespace A278982.P16517692192503126030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209448 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A278982.P16517692192503126030

/-! ## A278982.P7540716659713248267

`A352991(A006093(n+1)*A181937(n))`
-/

namespace A278982.P7540716659713248267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352991 (A006093 (n + 1) * A181937 n).toNat

end

end A278982.P7540716659713248267

/-! ## A278982.P650934486248436798

`A352991(A006093(n+1)*A250261(n))`
-/

namespace A278982.P650934486248436798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352991 (A006093 (n + 1) * A250261 n).toNat

end

end A278982.P650934486248436798

/-! ## A278982.P8542686186278997056

`A352991(A006093(n+1)^A181937(n))`
-/

namespace A278982.P8542686186278997056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352991 (SequenceMachineLib.roundAway ((A006093 (n + 1) : ℚ) ^ (A181937 n : ℤ))).toNat

end

end A278982.P8542686186278997056

/-! ## A278982.P12397273218682879732

`A030299(lt[A259196(n), A020639(n+1)])`
-/

namespace A278982.P12397273218682879732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259196 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278982.P12397273218682879732

/-!
# A278983: List of André permutations of the second kind.

The programs for A278983, there is no canonical definition to state claims against.
-/

/-! ## A278983.P2531201434419360889

`A030299(lt[A001764(n), A078457(n)])`
-/

namespace A278983.P2531201434419360889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A278983.P2531201434419360889

/-!
# A278984: Array read by antidiagonals downwards: T(b,n) = number of words of length n over an alphabet of size b that are in standard order.

The programs for A278984, there is no canonical definition to state claims against.
-/

/-! ## A278984.P17663266267242972364

`A137855(A278818(n))`
-/

namespace A278984.P17663266267242972364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A278818 n).toNat

end

end A278984.P17663266267242972364

/-! ## A278984.P3925427719482436351

`A137855(A038722(n+1))`
-/

namespace A278984.P3925427719482436351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A038722 (n + 1)).toNat

end

end A278984.P3925427719482436351

/-! ## A278984.P1339292123283429400

`A137855(A061579(n)+1)`
-/

namespace A278984.P1339292123283429400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A061579 n + 1).toNat

end

end A278984.P1339292123283429400

/-! ## A278984.P1889480732686391323

`A203647(A056943(n)+1)`
-/

namespace A278984.P1889480732686391323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A056943 n + 1).toNat

end

end A278984.P1889480732686391323

/-! ## A278984.P9877491928829971655

`A137855(A002024(n+1)²-n)`
-/

namespace A278984.P9877491928829971655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A278984.P9877491928829971655

/-! ## A278984.P4699732795025727779

`A203647(n+1-2*A002262(n))`
-/

namespace A278984.P4699732795025727779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 ((n + 1 : ℤ) - 2 * A002262 n).toNat

end

end A278984.P4699732795025727779

/-! ## A278984.P10839828124297831433

`A137855(A000194(2*(n+1))²-n)`
-/

namespace A278984.P10839828124297831433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A000194 (2 * (n + 1)) ^ 2 - (n : ℤ)).toNat

end

end A278984.P10839828124297831433

/-! ## A278984.P8091147960539220254

`A278986(n+1)+A101688(n)`
-/

namespace A278984.P8091147960539220254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278986 (n + 1) + A101688 n

end

end A278984.P8091147960539220254

/-!
# A278985: List of words of length n over an alphabet of size 3 that are in standard order.

The programs for A278985, there is no canonical definition to state claims against.
-/

/-! ## A278985.P15115506463692253034

`∩[A007932(n+1), A193023(n+1)]`
-/

namespace A278985.P15115506463692253034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278985.P15115506463692253034

/-! ## A278985.P8516815890566315575

`∩[A193023(n+1), A007090(n)]`
-/

namespace A278985.P8516815890566315575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278985.P8516815890566315575

/-! ## A278985.P16082123709570782725

`∩[A001742(n+1), A125098(n)]`
-/

namespace A278985.P16082123709570782725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278985.P16082123709570782725

/-! ## A278985.P7275581178680415660

`∩[A007932(n+1), A125098(n)]`
-/

namespace A278985.P7275581178680415660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125098 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278985.P7275581178680415660

/-! ## A278985.P13510383639945198946

`∩[A001742(n+1), A193023(n+1)]`
-/

namespace A278985.P13510383639945198946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A278985.P13510383639945198946

/-!
# A278986: Array read by antidiagonals downwards: T(b,n) = number of words of length n over an alphabet of size b that are in standard order and which have the property that at least one letter is repeated.

The programs for A278986, there is no canonical definition to state claims against.
-/

/-! ## A278986.P6614174297353256593

`A278984(n+1)-ceil(sqrt(8*(n+1)))%2`
-/

namespace A278986.P6614174297353256593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) - Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2

end

end A278986.P6614174297353256593

/-! ## A278986.P14482262557271949

`A278984(n+1)-A101688(n)`
-/

namespace A278986.P14482262557271949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) - A101688 n

end

end A278986.P14482262557271949

/-! ## A278986.P16464787222090370517

`A278984(n+1)-A267708(2*n+1)`
-/

namespace A278986.P16464787222090370517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 1) - A267708 (2 * n + 1)

end

end A278986.P16464787222090370517

/-! ## A278986.P2596249687622234235

`A137855(A278818(n))-A101688(n)`
-/

namespace A278986.P2596249687622234235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A278818 n).toNat - A101688 n

end

end A278986.P2596249687622234235

/-! ## A278986.P16349608565242234778

`A137855(A038722(n+1))-A101688(n)`
-/

namespace A278986.P16349608565242234778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A038722 (n + 1)).toNat - A101688 n

end

end A278986.P16349608565242234778

/-! ## A278986.P14451360523779559261

`A137855(A061579(n)+1)-A101688(n)`
-/

namespace A278986.P14451360523779559261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A061579 n + 1).toNat - A101688 n

end

end A278986.P14451360523779559261

/-! ## A278986.P18333943773701099760

`A203647(A056943(n)+1)-A101688(n)`
-/

namespace A278986.P18333943773701099760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A056943 n + 1).toNat - A101688 n

end

end A278986.P18333943773701099760

/-! ## A278986.P2066617356404261741

`A137855(A278818(n))-A267708(2*n+1)`
-/

namespace A278986.P2066617356404261741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (A278818 n).toNat - A267708 (2 * n + 1)

end

end A278986.P2066617356404261741

/-!
# A278987: Array read by antidiagonals downwards: T(b,n) = number of words of length n over an alphabet of size b that are in standard order and which have the property that every letter that appears in the word is repeated.

The programs for A278987, there is no canonical definition to state claims against.
-/

/-! ## A278987.P9468222357227695796

`A102705(A092921(n)²)`
-/

namespace A278987.P9468222357227695796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A092921 n ^ 2).toNat

end

end A278987.P9468222357227695796

/-! ## A278987.P12781511537652704833

`A131613(2^A092921(n))`
-/

namespace A278987.P12781511537652704833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131613 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A092921 n : ℤ))).toNat

end

end A278987.P12781511537652704833

/-! ## A278987.P6470773255237804627

`A352178(2^A092921(n))`
-/

namespace A278987.P6470773255237804627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352178 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A092921 n : ℤ))).toNat

end

end A278987.P6470773255237804627

/-! ## A278987.P9481107144490664361

`A001222((2^A092921(n))!)`
-/

namespace A278987.P9481107144490664361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A092921 n : ℤ))).toNat)

end

end A278987.P9481107144490664361

/-! ## A278987.P334920088029242168

`A053835(A092921(n)^A124789(n))`
-/

namespace A278987.P334920088029242168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053835 (SequenceMachineLib.roundAway ((A092921 n : ℚ) ^ (A124789 n : ℤ))).toNat

end

end A278987.P334920088029242168

/-!
# A278988: a(n) is the number of words of length n over an alphabet of size 3 that are in standard order and which have the property that every letter that appears in the word is repeated.

The programs for A278988, the canonical program `A278988.P13518645695584167367` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278988 has offset 0).

The definition of A278988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278988.P13518645695584167367

`ogf((x^2-9x^3+34x^4-71x^5+100x^6-97x^7+52x^8-12x^9)/(1-10x+40x^2-82x^3+91x^4-52x^5+12x^6))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278988

/-- `ogf((x^2-9x^3+34x^4-71x^5+100x^6-97x^7+52x^8-12x^9)/(1-10x+40x^2-82x^3+91x^4-52x^5+12x^6))` -/
def P13518645695584167367.Spec : Prop :=
  ∀ n, P13518645695584167367.a n = A278988 n

theorem P13518645695584167367.correct : P13518645695584167367.Spec := by
  intro n
  simp only [A278988]

end A278988

/-! ## A278988.P7269248007935624926

`round(A209528(n)/6)`
-/

namespace A278988.P7269248007935624926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209528 n : ℚ) / 6)

end

end A278988.P7269248007935624926

namespace A278988

/-- `round(A209528(n)/6)` -/
def P7269248007935624926.Spec : Prop :=
  ∀ n, P7269248007935624926.a n = A278988 n

end A278988

/-! ## A278988.P17614245663997749919

`ceil(A209528(n)/6-A000007(n))`
-/

namespace A278988.P17614245663997749919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209528 n : ℚ) / 6 - (A000007 n : ℚ)⌉

end

end A278988.P17614245663997749919

namespace A278988

/-- `ceil(A209528(n)/6-A000007(n))` -/
def P17614245663997749919.Spec : Prop :=
  ∀ n, P17614245663997749919.a n = A278988 n

end A278988

/-! ## A278988.P15287648497015562027

`ceil(A209528(n)/6)*char[A038722(n+1)]`
-/

namespace A278988.P15287648497015562027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209528 n : ℚ) / 6⌉ * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A278988.P15287648497015562027

namespace A278988

/-- `ceil(A209528(n)/6)*char[A038722(n+1)]` -/
def P15287648497015562027.Spec : Prop :=
  ∀ n, P15287648497015562027.a n = A278988 n

end A278988

/-! ## A278988.P6784867682482247886

`ceil(A209528(n)/6)%A017966(n)`
-/

namespace A278988.P6784867682482247886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A209528 n : ℚ) / 6⌉ (A017966 n)

end

end A278988.P6784867682482247886

namespace A278988

/-- `ceil(A209528(n)/6)%A017966(n)` -/
def P6784867682482247886.Spec : Prop :=
  ∀ n, P6784867682482247886.a n = A278988 n

end A278988

/-! ## A278988.P12437452082379175538

`ceil(A209528(n)/6)-A048298(∑[n+1])`
-/

namespace A278988.P12437452082379175538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209528 n : ℚ) / 6⌉ - A048298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278988.P12437452082379175538

namespace A278988

/-- `ceil(A209528(n)/6)-A048298(∑[n+1])` -/
def P12437452082379175538.Spec : Prop :=
  ∀ n, P12437452082379175538.a n = A278988 n

end A278988

/-!
# A278989: a(n) is the number of words of length n over an alphabet of size 4 that are in standard order and which have the property that every letter that appears in the word is repeated.

The programs for A278989, there is no canonical definition to state claims against.
-/

/-! ## A278989.P1559277826343771216

`A000296(n)%∑{d}[n!, #]`
-/

namespace A278989.P1559277826343771216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000296 n) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A278989.P1559277826343771216

/-! ## A278989.P12608192931504618827

`A000296(n^floor((n+8)/9))`
-/

namespace A278989.P12608192931504618827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ))).toNat

end

end A278989.P12608192931504618827

/-! ## A278989.P17079518322071684396

`A090701(A344489(n))-1`
-/

namespace A278989.P17079518322071684396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A344489 n).toNat - 1

end

end A278989.P17079518322071684396

/-! ## A278989.P18423567247568482261

`A000296(n)%A027851(n)`
-/

namespace A278989.P18423567247568482261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000296 n) (A027851 n)

end

end A278989.P18423567247568482261

/-! ## A278989.P2743831854504218697

`char[A084192(n)]*A000296(n)`
-/

namespace A278989.P2743831854504218697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000296 n

end

end A278989.P2743831854504218697

/-!
# A278990: Number of loopless linear chord diagrams with n chords.

The programs for A278990, the canonical program `A278990.P4126946243470232022` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278990 has offset 0).

The definition of A278990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278990.P4126946243470232022

`(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278990

/-- `(2*n-1)*a(n-1)+a(n-2)` -/
def P4126946243470232022.Spec : Prop :=
  ∀ n, P4126946243470232022.a n = A278990 n

theorem P4126946243470232022.correct : P4126946243470232022.Spec := by
  intro n
  simp only [A278990]

end A278990

/-! ## A278990.P5451503369995916971

`A114938(n)/n!`
-/

namespace A278990.P5451503369995916971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114938 n : ℚ) / (Nat.factorial n : ℚ)

end

end A278990.P5451503369995916971

namespace A278990

/-- `A114938(n)/n!` -/
def P5451503369995916971.Spec : Prop :=
  ∀ n, P5451503369995916971.a n = (A278990 n : ℚ)

end A278990

/-! ## A278990.P16353386437746650748

`a(n-2)-(1-2*n)*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A278990.P16353386437746650748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (1 - (2 * n : ℤ)) * a (n - 1)

end

end A278990.P16353386437746650748

namespace A278990

/-- `a(n-2)-(1-2*n)*a(n-1)` -/
def P16353386437746650748.Spec : Prop :=
  ∀ n, P16353386437746650748.a n = A278990 n

end A278990

/-! ## A278990.P6673990849481501696

`abs(A000806(n))`
-/

namespace A278990.P6673990849481501696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000806 n|

end

end A278990.P6673990849481501696

namespace A278990

/-- `abs(A000806(n))` -/
def P6673990849481501696.Spec : Prop :=
  ∀ n, P6673990849481501696.a n = A278990 n

end A278990

/-! ## A278990.P62236953546853093

`A079267(∑[n])`
-/

namespace A278990.P62236953546853093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278990.P62236953546853093

namespace A278990

/-- `A079267(∑[n])` -/
def P62236953546853093.Spec : Prop :=
  ∀ n, P62236953546853093.a n = A278990 n

end A278990

/-! ## A278990.P17601833557563311856

`∑[A231622(n)]-1`
-/

namespace A278990.P17601833557563311856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A278990.P17601833557563311856

namespace A278990

/-- `∑[A231622(n)]-1` -/
def P17601833557563311856.Spec : Prop :=
  ∀ n, P17601833557563311856.a n = A278990 n

end A278990

/-! ## A278990.P16698041273578153156

`A006198(n)-a(n-1)` with `a(0)=1`
-/

namespace A278990.P16698041273578153156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006198 n - a (n - 1)

end

end A278990.P16698041273578153156

namespace A278990

/-- `A006198(n)-a(n-1)` -/
def P16698041273578153156.Spec : Prop :=
  ∀ n, P16698041273578153156.a n = A278990 n

end A278990

/-! ## A278990.P1095492259437498947

`A003436(n)+a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A278990.P1095492259437498947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A003436 n + a (n - 1)

end

end A278990.P1095492259437498947

namespace A278990

/-- `A003436(n)+a(n-1)` -/
def P1095492259437498947.Spec : Prop :=
  ∀ n, P1095492259437498947.a n = A278990 n

end A278990

/-! ## A278990.P13183518449947875534

`A000806(n)*A033999(n)`
-/

namespace A278990.P13183518449947875534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000806 n * A033999 n

end

end A278990.P13183518449947875534

namespace A278990

/-- `A000806(n)*A033999(n)` -/
def P13183518449947875534.Spec : Prop :=
  ∀ n, P13183518449947875534.a n = A278990 n

end A278990

/-! ## A278990.P5575637314560778685

`gcd(A000038(n), A000806(n))`
-/

namespace A278990.P5575637314560778685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A000806 n)

end

end A278990.P5575637314560778685

namespace A278990

/-- `gcd(A000038(n), A000806(n))` -/
def P5575637314560778685.Spec : Prop :=
  ∀ n, (P5575637314560778685.a n : ℤ) = A278990 n

end A278990

/-!
# A278991: a(n) is the number of simple linear diagrams with n+1 chords.

The programs for A278991, the canonical program `A278991.P13023391449910269106` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278991 has offset 0).

The definition of A278991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278991.P13023391449910269106

`(2*n-1)*a(n-1)+(4*n-3)*a(n-2)+(2*n-4)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A278991

/-- `(2*n-1)*a(n-1)+(4*n-3)*a(n-2)+(2*n-4)*a(n-3)` -/
def P13023391449910269106.Spec : Prop :=
  ∀ n, P13023391449910269106.a n = A278991 n

theorem P13023391449910269106.correct : P13023391449910269106.Spec := by
  intro n
  simp only [A278991]

end A278991

/-! ## A278991.P7458674257727609701

`A023443(A217444(n)+A120485(n))`
-/

namespace A278991.P7458674257727609701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A217444 n + A120485 n).toNat

end

end A278991.P7458674257727609701

namespace A278991

/-- `A023443(A217444(n)+A120485(n))` -/
def P7458674257727609701.Spec : Prop :=
  ∀ n, P7458674257727609701.a n = A278991 n

end A278991

/-!
# A278992: Number of simple chord-labeled chord diagrams with n chords.

The programs for A278992, there is no canonical definition to state claims against.
-/

/-! ## A278992.P6245059775961549577

`A004396(A321398(n))*A190906(n)`
-/

namespace A278992.P6245059775961549577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A321398 n).toNat * A190906 n

end

end A278992.P6245059775961549577

/-! ## A278992.P14547418746082781289

`A004526(xor(A274260(n+1), A274279(n+1)))`
-/

namespace A278992.P14547418746082781289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (A274260 (n + 1)) (A274279 (n + 1))).toNat

end

end A278992.P14547418746082781289

/-!
# A278993: Number of simple chord diagrams with n chords, up to rotation.

The programs for A278993, there is no canonical definition to state claims against.
-/

/-! ## A278993.P18170901103732059519

`floor(sqrt(A326343(n+1)/2))`
-/

namespace A278993.P18170901103732059519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A326343 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A278993.P18170901103732059519

/-! ## A278993.P1033493039607976334

`A076875(floor((n/2)²))-log2(gcd(2, n))`
-/

namespace A278993.P1033493039607976334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076875 ⌊((n : ℚ) / 2) ^ 2⌋.toNat : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A278993.P1033493039607976334

/-!
# A278994: Number of simple chord diagrams with n chords, modulo all symmetries.

The programs for A278994, there is no canonical definition to state claims against.
-/

/-! ## A278994.P13716642443871316547

`A277473(A004879(n+1)-A157928(n))`
-/

namespace A278994.P13716642443871316547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 (A004879 (n + 1) - A157928 n).toNat

end

end A278994.P13716642443871316547

/-! ## A278994.P4523172894352927015

`A277473(A004890(n+1)-A157928(n))`
-/

namespace A278994.P4523172894352927015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 (A004890 (n + 1) - A157928 n).toNat

end

end A278994.P4523172894352927015

/-! ## A278994.P8708674108479924699

`A277473(A331565(n+1)-A077430(n+1))`
-/

namespace A278994.P8708674108479924699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277473 (A331565 (n + 1) - A077430 (n + 1)).toNat

end

end A278994.P8708674108479924699

/-!
# A278995: Hankel determinant H_n(F_3(x)) of the sequence F_3(x).

The programs for A278995, there is no canonical definition to state claims against.
-/

/-! ## A278995.P12484495812514840925

`A120617(n)*A146607(A146572(n+1))`
-/

namespace A278995.P12484495812514840925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n * A146607 (A146572 (n + 1)).toNat

end

end A278995.P12484495812514840925

/-! ## A278995.P6029790397394145374

`A120617(n)*A146607(A146580(n+1))`
-/

namespace A278995.P6029790397394145374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n * A146607 (A146580 (n + 1)).toNat

end

end A278995.P6029790397394145374

/-! ## A278995.P3936415407447387767

`A120617(n)*A146607(A146588(n+1))`
-/

namespace A278995.P3936415407447387767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n * A146607 (A146588 (n + 1)).toNat

end

end A278995.P3936415407447387767

/-! ## A278995.P17084766701891686934

`A120617(n)*A146607(A146596(n+1))`
-/

namespace A278995.P17084766701891686934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120617 n * A146607 (A146596 (n + 1)).toNat

end

end A278995.P17084766701891686934

/-! ## A278995.P9237501160739021726

`A146559(2*n+1)*A146607(A146572(n+1))`
-/

namespace A278995.P9237501160739021726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (2 * n + 1) * A146607 (A146572 (n + 1)).toNat

end

end A278995.P9237501160739021726

/-!
# A278996: Numbers of the form (3h+1)*3^(2k)-1 or (3h+2)*3^(2k+1)-1 for h,k in N.

The programs for A278996, the canonical program `A278996.P4006759836835331074` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278996 has offset 1).

The definition of A278996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278996.P4006759836835331074

`A189715(n+1)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A278996

/-- `A189715(n+1)-1` -/
def P4006759836835331074.Spec : Prop :=
  ∀ n, P4006759836835331074.a n = A278996 (n + 1)

theorem P4006759836835331074.correct : P4006759836835331074.Spec := by
  intro n
  simp only [A278996, Nat.add_sub_cancel]

end A278996

/-! ## A278996.P17664456405288247457

`∪[A055040(n+1), A055047(n+1)]-1`
-/

namespace A278996.P17664456405288247457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278996.P17664456405288247457

namespace A278996

/-- `∪[A055040(n+1), A055047(n+1)]-1` -/
def P17664456405288247457.Spec : Prop :=
  ∀ n, P17664456405288247457.a n = A278996 (n + 1)

end A278996

/-! ## A278996.P11599255906358145132

`eq[2, A020639(A004488(n+1)+A004488(n))]`
-/

namespace A278996.P11599255906358145132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004488 (n + 1) + A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278996.P11599255906358145132

namespace A278996

/-- `eq[2, A020639(A004488(n+1)+A004488(n))]` -/
def P11599255906358145132.Spec : Prop :=
  ∀ n, (P11599255906358145132.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P13448797457555060343

`comp[A278997(n+1)]`
-/

namespace A278996.P13448797457555060343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278996.P13448797457555060343

namespace A278996

/-- `comp[A278997(n+1)]` -/
def P13448797457555060343.Spec : Prop :=
  ∀ n, (P13448797457555060343.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P14593851370322496582

`∑[runs[A189718(n)]]-1`
-/

namespace A278996.P14593851370322496582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A278996.P14593851370322496582

namespace A278996

/-- `∑[runs[A189718(n)]]-1` -/
def P14593851370322496582.Spec : Prop :=
  ∀ n, P14593851370322496582.a n = A278996 (n + 1)

end A278996

/-! ## A278996.P6335207041475808837

`eq[1, A189718(n)+A189718(n+1)]`
-/

namespace A278996.P6335207041475808837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n + A189718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278996.P6335207041475808837

namespace A278996

/-- `eq[1, A189718(n)+A189718(n+1)]` -/
def P6335207041475808837.Spec : Prop :=
  ∀ n, (P6335207041475808837.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P4904789517860675669

`eq[0, A156595(n)]`
-/

namespace A278996.P4904789517860675669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278996.P4904789517860675669

namespace A278996

/-- `eq[0, A156595(n)]` -/
def P4904789517860675669.Spec : Prop :=
  ∀ n, (P4904789517860675669.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P3053850496151194456

`lt[char[A189716(n+1)-1], 1]`
-/

namespace A278996.P3053850496151194456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A278996.P3053850496151194456

namespace A278996

/-- `lt[char[A189716(n+1)-1], 1]` -/
def P3053850496151194456.Spec : Prop :=
  ∀ n, (P3053850496151194456.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P16755142439874786901

`eq[A051064(n+1), A087088(n+1)]`
-/

namespace A278996.P16755142439874786901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278996.P16755142439874786901

namespace A278996

/-- `eq[A051064(n+1), A087088(n+1)]` -/
def P16755142439874786901.Spec : Prop :=
  ∀ n, (P16755142439874786901.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P11742658452597339568

`eq[A080846(n+1), A182581(n+1)]`
-/

namespace A278996.P11742658452597339568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278996.P11742658452597339568

namespace A278996

/-- `eq[A080846(n+1), A182581(n+1)]` -/
def P11742658452597339568.Spec : Prop :=
  ∀ n, (P11742658452597339568.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P10581737905467993911

`eq[A007949(n+1), A074078(n+3)]`
-/

namespace A278996.P10581737905467993911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074078 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278996.P10581737905467993911

namespace A278996

/-- `eq[A007949(n+1), A074078(n+3)]` -/
def P10581737905467993911.Spec : Prop :=
  ∀ n, (P10581737905467993911.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P9572491094003520517

`eq[1, A182581(n+1)+A137893(n+1)]`
-/

namespace A278996.P9572491094003520517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182581 (n + 1) + A137893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278996.P9572491094003520517

namespace A278996

/-- `eq[1, A182581(n+1)+A137893(n+1)]` -/
def P9572491094003520517.Spec : Prop :=
  ∀ n, (P9572491094003520517.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P10333846467666460469

`eq[A087088(2*n+1), A087088(n+1)]`
-/

namespace A278996.P10333846467666460469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278996.P10333846467666460469

namespace A278996

/-- `eq[A087088(2*n+1), A087088(n+1)]` -/
def P10333846467666460469.Spec : Prop :=
  ∀ n, (P10333846467666460469.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P12725453336246637058

`lt[A087088(2*n+1), A087088(2*(n+1))]`
-/

namespace A278996.P12725453336246637058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278996.P12725453336246637058

namespace A278996

/-- `lt[A087088(2*n+1), A087088(2*(n+1))]` -/
def P12725453336246637058.Spec : Prop :=
  ∀ n, (P12725453336246637058.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P4641335854002185767

`eq[2, A060236(A060236(n+1)+A038387(n+1))]`
-/

namespace A278996.P4641335854002185767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (A060236 (n + 1) + A038387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278996.P4641335854002185767

namespace A278996

/-- `eq[2, A060236(A060236(n+1)+A038387(n+1))]` -/
def P4641335854002185767.Spec : Prop :=
  ∀ n, (P4641335854002185767.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P16278730416695780587

`eq[0, Δ[A064990(n)]]`
-/

namespace A278996.P16278730416695780587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278996.P16278730416695780587

namespace A278996

/-- `eq[0, Δ[A064990(n)]]` -/
def P16278730416695780587.Spec : Prop :=
  ∀ n, (P16278730416695780587.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P10449065416930219953

`A023443(A189715(n+1))`
-/

namespace A278996.P10449065416930219953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189715 (n + 1)).toNat

end

end A278996.P10449065416930219953

namespace A278996

/-- `A023443(A189715(n+1))` -/
def P10449065416930219953.Spec : Prop :=
  ∀ n, P10449065416930219953.a n = A278996 (n + 1)

end A278996

/-! ## A278996.P12121824660383431216

`eq[A064990(n+1), A064990(n)]`
-/

namespace A278996.P12121824660383431216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278996.P12121824660383431216

namespace A278996

/-- `eq[A064990(n+1), A064990(n)]` -/
def P12121824660383431216.Spec : Prop :=
  ∀ n, (P12121824660383431216.a n : ℤ) = A278996 (n + 1)

end A278996

/-! ## A278996.P2084943351924197168

`eq[A007949(n+1), A072340(n+3)]`
-/

namespace A278996.P2084943351924197168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072340 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278996.P2084943351924197168

namespace A278996

/-- `eq[A007949(n+1), A072340(n+3)]` -/
def P2084943351924197168.Spec : Prop :=
  ∀ n, (P2084943351924197168.a n : ℤ) = A278996 (n + 1)

end A278996

/-!
# A278997: Numbers of the form (3h+2)*3^(2k)-1 or (3h+1)*3^(2k+1)-1 for h,k in N.

The programs for A278997, the canonical program `A278997.P18380770767987263801` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278997 has offset 1).

The definition of A278997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278997.P8134561655966866927

`comp[A278996(n+1)]`
-/

namespace A278997.P8134561655966866927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278997.P8134561655966866927

namespace A278997

/-- `comp[A278996(n+1)]` -/
def P8134561655966866927.Spec : Prop :=
  ∀ n, (P8134561655966866927.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P18380770767987263801

`A189716(n+1)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A278997

/-- `A189716(n+1)-1` -/
def P18380770767987263801.Spec : Prop :=
  ∀ n, P18380770767987263801.a n = A278997 (n + 1)

theorem P18380770767987263801.correct : P18380770767987263801.Spec := by
  intro n
  simp only [A278997, Nat.add_sub_cancel]

end A278997

/-! ## A278997.P11584603481536090914

`comp[A189715(n+1)-1]`
-/

namespace A278997.P11584603481536090914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278997.P11584603481536090914

namespace A278997

/-- `comp[A189715(n+1)-1]` -/
def P11584603481536090914.Spec : Prop :=
  ∀ n, (P11584603481536090914.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P10187765403439360353

`∪[A055041(n+1), A055048(n+1)]-1`
-/

namespace A278997.P10187765403439360353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055048 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A278997.P10187765403439360353

namespace A278997

/-- `∪[A055041(n+1), A055048(n+1)]-1` -/
def P10187765403439360353.Spec : Prop :=
  ∀ n, P10187765403439360353.a n = A278997 (n + 1)

end A278997

/-! ## A278997.P11416467345961274812

`eq[2, A020639(A004488(n+1)+A004488(n)+1)]`
-/

namespace A278997.P11416467345961274812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004488 (n + 1) + A004488 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278997.P11416467345961274812

namespace A278997

/-- `eq[2, A020639(A004488(n+1)+A004488(n)+1)]` -/
def P11416467345961274812.Spec : Prop :=
  ∀ n, (P11416467345961274812.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P14760724717793698186

`eq[A189718(n+1), A189718(n)]`
-/

namespace A278997.P14760724717793698186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189718 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278997.P14760724717793698186

namespace A278997

/-- `eq[A189718(n+1), A189718(n)]` -/
def P14760724717793698186.Spec : Prop :=
  ∀ n, (P14760724717793698186.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P4941107110569047551

`lt[0, A156595(n)]`
-/

namespace A278997.P4941107110569047551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278997.P4941107110569047551

namespace A278997

/-- `lt[0, A156595(n)]` -/
def P4941107110569047551.Spec : Prop :=
  ∀ n, (P4941107110569047551.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P11965470935104201378

`eq[1, Δ[A064990(n)]²]`
-/

namespace A278997.P11965470935104201378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278997.P11965470935104201378

namespace A278997

/-- `eq[1, Δ[A064990(n)]²]` -/
def P11965470935104201378.Spec : Prop :=
  ∀ n, (P11965470935104201378.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P5886724246726670111

`∑[runs[A064990(n+1)]]`
-/

namespace A278997.P5886724246726670111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278997.P5886724246726670111

namespace A278997

/-- `∑[runs[A064990(n+1)]]` -/
def P5886724246726670111.Spec : Prop :=
  ∀ n, (P5886724246726670111.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P8895034539094129629

`∑[runs[A189717(n+1)]]`
-/

namespace A278997.P8895034539094129629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189717 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278997.P8895034539094129629

namespace A278997

/-- `∑[runs[A189717(n+1)]]` -/
def P8895034539094129629.Spec : Prop :=
  ∀ n, (P8895034539094129629.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P5614252887012477671

`∑[runs[A216430(n+1)]]`
-/

namespace A278997.P5614252887012477671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216430 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278997.P5614252887012477671

namespace A278997

/-- `∑[runs[A216430(n+1)]]` -/
def P5614252887012477671.Spec : Prop :=
  ∀ n, (P5614252887012477671.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P10249707595254252037

`A023443(A189716(n+1))`
-/

namespace A278997.P10249707595254252037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189716 (n + 1)).toNat

end

end A278997.P10249707595254252037

namespace A278997

/-- `A023443(A189716(n+1))` -/
def P10249707595254252037.Spec : Prop :=
  ∀ n, P10249707595254252037.a n = A278997 (n + 1)

end A278997

/-! ## A278997.P12761521075677780022

`filter[A004482(n), A156595(#)]`
-/

namespace A278997.P12761521075677780022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A278997.P12761521075677780022

namespace A278997

/-- `filter[A004482(n), A156595(#)]` -/
def P12761521075677780022.Spec : Prop :=
  ∀ n, P12761521075677780022.a n = A278997 (n + 1)

end A278997

/-! ## A278997.P5858976465509652769

`filter[A091684(n), A156595(#)]`
-/

namespace A278997.P5858976465509652769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A278997.P5858976465509652769

namespace A278997

/-- `filter[A091684(n), A156595(#)]` -/
def P5858976465509652769.Spec : Prop :=
  ∀ n, P5858976465509652769.a n = A278997 (n + 1)

end A278997

/-! ## A278997.P16028424315655097434

`eq[A010125(n), A156595(n)]`
-/

namespace A278997.P16028424315655097434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278997.P16028424315655097434

namespace A278997

/-- `eq[A010125(n), A156595(n)]` -/
def P16028424315655097434.Spec : Prop :=
  ∀ n, (P16028424315655097434.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P1373208638425997020

`eq[A010142(n), A156595(n)]`
-/

namespace A278997.P1373208638425997020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278997.P1373208638425997020

namespace A278997

/-- `eq[A010142(n), A156595(n)]` -/
def P1373208638425997020.Spec : Prop :=
  ∀ n, (P1373208638425997020.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P14703757886018062448

`eq[A010176(n), A156595(n)]`
-/

namespace A278997.P14703757886018062448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278997.P14703757886018062448

namespace A278997

/-- `eq[A010176(n), A156595(n)]` -/
def P14703757886018062448.Spec : Prop :=
  ∀ n, (P14703757886018062448.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P3100871971310685552

`eq[A010177(n), A156595(n)]`
-/

namespace A278997.P3100871971310685552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278997.P3100871971310685552

namespace A278997

/-- `eq[A010177(n), A156595(n)]` -/
def P3100871971310685552.Spec : Prop :=
  ∀ n, (P3100871971310685552.a n : ℤ) = A278997 (n + 1)

end A278997

/-! ## A278997.P16622037634675988589

`eq[A010225(n), A156595(n)]`
-/

namespace A278997.P16622037634675988589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278997.P16622037634675988589

namespace A278997

/-- `eq[A010225(n), A156595(n)]` -/
def P16622037634675988589.Spec : Prop :=
  ∀ n, (P16622037634675988589.a n : ℤ) = A278997 (n + 1)

end A278997

/-!
# A278998: Numbers of the form (5h+1)*5^k-1 or (5h+4)*5^k-1 for h,k in N.

The programs for A278998, the canonical program `A278998.P826195583929111342` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278998 has offset 1).

The definition of A278998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278998.P6089203776385196602

`comp[A278999(n+1)]`
-/

namespace A278998.P6089203776385196602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278998.P6089203776385196602

namespace A278998

/-- `comp[A278999(n+1)]` -/
def P6089203776385196602.Spec : Prop :=
  ∀ n, (P6089203776385196602.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P16392427342577208357

`lt[A332412(n), A332412(n+1)]`
-/

namespace A278998.P16392427342577208357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278998.P16392427342577208357

namespace A278998

/-- `lt[A332412(n), A332412(n+1)]` -/
def P16392427342577208357.Spec : Prop :=
  ∀ n, (P16392427342577208357.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P5136045990295897546

`lt[A109064(n+1), 0]`
-/

namespace A278998.P5136045990295897546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278998.P5136045990295897546

namespace A278998

/-- `lt[A109064(n+1), 0]` -/
def P5136045990295897546.Spec : Prop :=
  ∀ n, (P5136045990295897546.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P826195583929111342

`lt[0, A109091(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A278998

/-- `lt[0, A109091(n+1)]` -/
def P826195583929111342.Spec : Prop :=
  ∀ n, (P826195583929111342.a n : ℤ) = A278998 (n + 1)

theorem P826195583929111342.correct : P826195583929111342.Spec := by
  intro n
  simp only [A278998, Nat.add_sub_cancel]

end A278998

/-! ## A278998.P8953850853224452265

`lt[0, A111580(n+1)]`
-/

namespace A278998.P8953850853224452265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P8953850853224452265

namespace A278998

/-- `lt[0, A111580(n+1)]` -/
def P8953850853224452265.Spec : Prop :=
  ∀ n, (P8953850853224452265.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P16125326434661872287

`lt[A109064(n), 0]-1`
-/

namespace A278998.P16125326434661872287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A278998.P16125326434661872287

namespace A278998

/-- `lt[A109064(n), 0]-1` -/
def P16125326434661872287.Spec : Prop :=
  ∀ n, P16125326434661872287.a n = A278998 (n + 1)

end A278998

/-! ## A278998.P13574725028190114506

`eq[(2-A277543(n+1))², A277543(n+1)]`
-/

namespace A278998.P13574725028190114506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A277543 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278998.P13574725028190114506

namespace A278998

/-- `eq[(2-A277543(n+1))², A277543(n+1)]` -/
def P13574725028190114506.Spec : Prop :=
  ∀ n, (P13574725028190114506.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P8820317930210475205

`eq[1, Δ[A054047(n)]]`
-/

namespace A278998.P8820317930210475205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278998.P8820317930210475205

namespace A278998

/-- `eq[1, Δ[A054047(n)]]` -/
def P8820317930210475205.Spec : Prop :=
  ∀ n, (P8820317930210475205.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P15800849569167790183

`lt[1, A113259(n+1)]`
-/

namespace A278998.P15800849569167790183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P15800849569167790183

namespace A278998

/-- `lt[1, A113259(n+1)]` -/
def P15800849569167790183.Spec : Prop :=
  ∀ n, (P15800849569167790183.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P8929949906930108189

`lt[1, A113259(n)]-1`
-/

namespace A278998.P8929949906930108189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A278998.P8929949906930108189

namespace A278998

/-- `lt[1, A113259(n)]-1` -/
def P8929949906930108189.Spec : Prop :=
  ∀ n, P8929949906930108189.a n = A278998 (n + 1)

end A278998

/-! ## A278998.P8550676537808375305

`lt[log(2), A113185(n+1)]`
-/

namespace A278998.P8550676537808375305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A278998.P8550676537808375305

namespace A278998

/-- `lt[log(2), A113185(n+1)]` -/
def P8550676537808375305.Spec : Prop :=
  ∀ n, (P8550676537808375305.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P3187986577543193312

`lt[γ, n/A113185(n)]-1`
-/

namespace A278998.P3187986577543193312
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A113185 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - 1

end

end A278998.P3187986577543193312

namespace A278998

/-- `lt[γ, n/A113185(n)]-1` -/
def P3187986577543193312.Spec : Prop :=
  ∀ n, P3187986577543193312.a n = A278998 (n + 1)

end A278998

/-! ## A278998.P6379779305329050642

`eq[A010139(n*A277543(n+1)), A010139(n)]`
-/

namespace A278998.P6379779305329050642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 ((n : ℤ) * A277543 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278998.P6379779305329050642

namespace A278998

/-- `eq[A010139(n*A277543(n+1)), A010139(n)]` -/
def P6379779305329050642.Spec : Prop :=
  ∀ n, (P6379779305329050642.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P5594320140466603952

`lt[A113185(2*n), 0]-1`
-/

namespace A278998.P5594320140466603952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A278998.P5594320140466603952

namespace A278998

/-- `lt[A113185(2*n), 0]-1` -/
def P5594320140466603952.Spec : Prop :=
  ∀ n, P5594320140466603952.a n = A278998 (n + 1)

end A278998

/-! ## A278998.P15205566714922522572

`lt[1, A138558(2*(n+1))]`
-/

namespace A278998.P15205566714922522572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138558 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278998.P15205566714922522572

namespace A278998

/-- `lt[1, A138558(2*(n+1))]` -/
def P15205566714922522572.Spec : Prop :=
  ∀ n, (P15205566714922522572.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P10704217575407307290

`eq[A175337(2*n+1), A175337(n)]`
-/

namespace A278998.P10704217575407307290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278998.P10704217575407307290

namespace A278998

/-- `eq[A175337(2*n+1), A175337(n)]` -/
def P10704217575407307290.Spec : Prop :=
  ∀ n, (P10704217575407307290.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P10344884195123402788

`lt[A113185(3*(n+1)), 1]`
-/

namespace A278998.P10344884195123402788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278998.P10344884195123402788

namespace A278998

/-- `lt[A113185(3*(n+1)), 1]` -/
def P10344884195123402788.Spec : Prop :=
  ∀ n, (P10344884195123402788.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P1361289272880035535

`eq[A040353(n*A277543(n+1)), A040353(n)]`
-/

namespace A278998.P1361289272880035535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040353 ((n : ℤ) * A277543 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278998.P1361289272880035535

namespace A278998

/-- `eq[A040353(n*A277543(n+1)), A040353(n)]` -/
def P1361289272880035535.Spec : Prop :=
  ∀ n, (P1361289272880035535.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P5445497252820706415

`eq[A145924(n*A277543(n+1)), A145924(n)]`
-/

namespace A278998.P5445497252820706415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145924 ((n : ℤ) * A277543 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278998.P5445497252820706415

namespace A278998

/-- `eq[A145924(n*A277543(n+1)), A145924(n)]` -/
def P5445497252820706415.Spec : Prop :=
  ∀ n, (P5445497252820706415.a n : ℤ) = A278998 (n + 1)

end A278998

/-! ## A278998.P4322880856305091115

`eq[A337004(2*(n+1)), A337004(n+1)]`
-/

namespace A278998.P4322880856305091115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337004 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278998.P4322880856305091115

namespace A278998

/-- `eq[A337004(2*(n+1)), A337004(n+1)]` -/
def P4322880856305091115.Spec : Prop :=
  ∀ n, (P4322880856305091115.a n : ℤ) = A278998 (n + 1)

end A278998

/-!
# A278999: Numbers of the form (5h+2)*5^k-1 or (5h+3)*5^k-1 for h,k in N.

The programs for A278999, the canonical program `A278999.P7909097224008119104` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278999 has offset 1).

The definition of A278999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278999.P7464720197139024555

`comp[A278998(n+1)]`
-/

namespace A278999.P7464720197139024555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A278999.P7464720197139024555

namespace A278999

/-- `comp[A278998(n+1)]` -/
def P7464720197139024555.Spec : Prop :=
  ∀ n, (P7464720197139024555.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P13955423854955595633

`lt[A332412(n+1), A332412(n)]`
-/

namespace A278999.P13955423854955595633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278999.P13955423854955595633

namespace A278999

/-- `lt[A332412(n+1), A332412(n)]` -/
def P13955423854955595633.Spec : Prop :=
  ∀ n, (P13955423854955595633.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P11453484338674310831

`lt[Δ[A332412(n)], 0]`
-/

namespace A278999.P11453484338674310831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A278999.P11453484338674310831

namespace A278999

/-- `lt[Δ[A332412(n)], 0]` -/
def P11453484338674310831.Spec : Prop :=
  ∀ n, (P11453484338674310831.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P16796702563676658594

`lt[1, Δ[A054047(n)]]`
-/

namespace A278999.P16796702563676658594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278999.P16796702563676658594

namespace A278999

/-- `lt[1, Δ[A054047(n)]]` -/
def P16796702563676658594.Spec : Prop :=
  ∀ n, (P16796702563676658594.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P14725037366109125498

`lt[0, A109064(n+1)]`
-/

namespace A278999.P14725037366109125498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A278999.P14725037366109125498

namespace A278999

/-- `lt[0, A109064(n+1)]` -/
def P14725037366109125498.Spec : Prop :=
  ∀ n, (P14725037366109125498.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P7909097224008119104

`lt[A109091(n+1), 0]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A278999

/-- `lt[A109091(n+1), 0]` -/
def P7909097224008119104.Spec : Prop :=
  ∀ n, (P7909097224008119104.a n : ℤ) = A278999 (n + 1)

theorem P7909097224008119104.correct : P7909097224008119104.Spec := by
  intro n
  simp only [A278999, Nat.add_sub_cancel]

end A278999

/-! ## A278999.P7659881738260529633

`lt[A111580(n+1), 0]`
-/

namespace A278999.P7659881738260529633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111580 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P7659881738260529633

namespace A278999

/-- `lt[A111580(n+1), 0]` -/
def P7659881738260529633.Spec : Prop :=
  ∀ n, (P7659881738260529633.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P14050206852948454445

`lt[A113185(n+1), 0]`
-/

namespace A278999.P14050206852948454445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P14050206852948454445

namespace A278999

/-- `lt[A113185(n+1), 0]` -/
def P14050206852948454445.Spec : Prop :=
  ∀ n, (P14050206852948454445.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P11542208743883483493

`lt[A113185(n), 0]-1`
-/

namespace A278999.P11542208743883483493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113185 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A278999.P11542208743883483493

namespace A278999

/-- `lt[A113185(n), 0]-1` -/
def P11542208743883483493.Spec : Prop :=
  ∀ n, P11542208743883483493.a n = A278999 (n + 1)

end A278999

/-! ## A278999.P12790197848019571294

`lt[A113259(n+1), 1]`
-/

namespace A278999.P12790197848019571294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P12790197848019571294

namespace A278999

/-- `lt[A113259(n+1), 1]` -/
def P12790197848019571294.Spec : Prop :=
  ∀ n, (P12790197848019571294.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P13730634625626903120

`lt[A113259(n), 0]-1`
-/

namespace A278999.P13730634625626903120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113259 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A278999.P13730634625626903120

namespace A278999

/-- `lt[A113259(n), 0]-1` -/
def P13730634625626903120.Spec : Prop :=
  ∀ n, P13730634625626903120.a n = A278999 (n + 1)

end A278999

/-! ## A278999.P14729483591673610500

`lt[1, A109064(n)]-1`
-/

namespace A278999.P14729483591673610500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A278999.P14729483591673610500

namespace A278999

/-- `lt[1, A109064(n)]-1` -/
def P14729483591673610500.Spec : Prop :=
  ∀ n, P14729483591673610500.a n = A278999 (n + 1)

end A278999

/-! ## A278999.P2182091150718370592

`eq[A105777(n+1), A105777(n)]`
-/

namespace A278999.P2182091150718370592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278999.P2182091150718370592

namespace A278999

/-- `eq[A105777(n+1), A105777(n)]` -/
def P2182091150718370592.Spec : Prop :=
  ∀ n, (P2182091150718370592.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P17482523822976197322

`eq[A166253(n+1), A166253(n+2)]`
-/

namespace A278999.P17482523822976197322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166253 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278999.P17482523822976197322

namespace A278999

/-- `eq[A166253(n+1), A166253(n+2)]` -/
def P17482523822976197322.Spec : Prop :=
  ∀ n, (P17482523822976197322.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P15417450740133080504

`eq[1, A227573(ceil(1/A113185(n+1)))]`
-/

namespace A278999.P15417450740133080504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227573 ⌈1 / (A113185 (n + 1) : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278999.P15417450740133080504

namespace A278999

/-- `eq[1, A227573(ceil(1/A113185(n+1)))]` -/
def P15417450740133080504.Spec : Prop :=
  ∀ n, (P15417450740133080504.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P16270308821376767297

`lt[(2-A277543(n+1))², A277543(n+1)]`
-/

namespace A278999.P16270308821376767297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A277543 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278999.P16270308821376767297

namespace A278999

/-- `lt[(2-A277543(n+1))², A277543(n+1)]` -/
def P16270308821376767297.Spec : Prop :=
  ∀ n, (P16270308821376767297.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P14767903570291237533

`lt[A138558(2*(n+1)), 1]`
-/

namespace A278999.P14767903570291237533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138558 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278999.P14767903570291237533

namespace A278999

/-- `lt[A138558(2*(n+1)), 1]` -/
def P14767903570291237533.Spec : Prop :=
  ∀ n, (P14767903570291237533.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P15577550025830492269

`eq[A175337(3*n+2), A175337(n)]`
-/

namespace A278999.P15577550025830492269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278999.P15577550025830492269

namespace A278999

/-- `eq[A175337(3*n+2), A175337(n)]` -/
def P15577550025830492269.Spec : Prop :=
  ∀ n, (P15577550025830492269.a n : ℤ) = A278999 (n + 1)

end A278999

/-! ## A278999.P14159463606800741253

`eq[-A337004(2*(n+1)), A337004(n+1)]`
-/

namespace A278999.P14159463606800741253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A337004 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278999.P14159463606800741253

namespace A278999

/-- `eq[-A337004(2*(n+1)), A337004(n+1)]` -/
def P14159463606800741253.Spec : Prop :=
  ∀ n, (P14159463606800741253.a n : ℤ) = A278999 (n + 1)

end A278999

