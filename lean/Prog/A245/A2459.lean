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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B012.C000
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
# A245900: Number of permutations of [n] avoiding 321 that can be realized on increasing unary-binary trees.

The programs for A245900, there is no canonical definition to state claims against.
-/

/-! ## A245900.P5517090112192412219

`ogf((-1+x+3x^2+3x^3+4x^4+5x^5+5x^6)/(-1+2x+3x^2))`
-/

namespace A245900.P5517090112192412219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3, -3, -4, -5, -5] [1, -2, -3] n

end

end A245900.P5517090112192412219

/-! ## A245900.P16195493339406856221

`A114507(n)-char[7]`
-/

namespace A245900.P16195493339406856221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114507 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245900.P16195493339406856221

/-! ## A245900.P17218609642560796547

`ceil(A337517(n+3)/16)`
-/

namespace A245900.P17218609642560796547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337517 (n + 3) : ℚ) / 16⌉

end

end A245900.P17218609642560796547

/-! ## A245900.P2542033571760068715

`floor(A339844(n)/(n+1))`
-/

namespace A245900.P2542033571760068715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339844 n : ℚ) / (n + 1 : ℚ)⌋

end

end A245900.P2542033571760068715

/-!
# A245901: Number of permutations of length 2n-1 avoiding 231 that can be realized on increasing binary trees.

The programs for A245901, there is no canonical definition to state claims against.
-/

/-! ## A245901.P1980808744792650697

`floor(30^(1/3)*(n+2)^(n-1))-n`
-/

namespace A245901.P1980808744792650697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(30 : ℝ) ^ ((1 : ℚ) / 3 : ℝ) * ((n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋ - (n : ℤ)

end

end A245901.P1980808744792650697

/-!
# A245902: Number of permutations of length 2n-1 avoiding 312 that can be realized on increasing binary trees.

The programs for A245902, there is no canonical definition to state claims against.
-/

/-! ## A245902.P1053735360810840586

`round((n+2)!*acot(π))`
-/

namespace A245902.P1053735360810840586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 2) : ℝ) * SequenceMachineLib.acot Real.pi)

end

end A245902.P1053735360810840586

/-!
# A245903: Number of permutations of length 2n-1 avoiding 321 that can be realized on increasing binary trees.

The programs for A245903, there is no canonical definition to state claims against.
-/

/-! ## A245903.P13733086871245176362

`round(16^n/∑[abs(1-9*n)])`
-/

namespace A245903.P13733086871245176362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (9 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((16 ^ n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A245903.P13733086871245176362

/-!
# A245904: a(n) is the number of permutations avoiding 231 and 312 realizable on increasing strict binary trees with 2n-1 nodes.

The programs for A245904, the canonical program `A245904.P7718430387775165049` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245904 has offset 1).

The definition of A245904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245904.P10252659111476077699

`A002083(2*(n+1))`
-/

namespace A245904.P10252659111476077699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (2 * (n + 1))

end

end A245904.P10252659111476077699

namespace A245904

/-- `A002083(2*(n+1))` -/
def P10252659111476077699.Spec : Prop :=
  ∀ n, P10252659111476077699.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P16348076411052129005

`record[A002083(abs(xor(n, -2)))]`
-/

namespace A245904.P16348076411052129005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245904.P16348076411052129005

namespace A245904

/-- `record[A002083(abs(xor(n, -2)))]` -/
def P16348076411052129005.Spec : Prop :=
  ∀ n, P16348076411052129005.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P16112488083529733145

`record[A002083(xor(1, n)+1)]`
-/

namespace A245904.P16112488083529733145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002083 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245904.P16112488083529733145

namespace A245904

/-- `record[A002083(xor(1, n)+1)]` -/
def P16112488083529733145.Spec : Prop :=
  ∀ n, P16112488083529733145.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P13528349275561184828

`ceil(cosh(sin(n)))*A259858(n)`
-/

namespace A245904.P13528349275561184828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A259858 n

end

end A245904.P13528349275561184828

namespace A245904

/-- `ceil(cosh(sin(n)))*A259858(n)` -/
def P13528349275561184828.Spec : Prop :=
  ∀ n, P13528349275561184828.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P7718430387775165049

`A036453(n+1)*A259858(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245904

/-- `A036453(n+1)*A259858(n)` -/
def P7718430387775165049.Spec : Prop :=
  ∀ n, P7718430387775165049.a n = A245904 (n + 1)

theorem P7718430387775165049.correct : P7718430387775165049.Spec := by
  intro n
  simp only [A245904, Nat.add_sub_cancel]

end A245904

/-! ## A245904.P2383124299250326015

`A062178(2*n+1)-A062178(n)`
-/

namespace A245904.P2383124299250326015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062178 (2 * n + 1) - A062178 n

end

end A245904.P2383124299250326015

namespace A245904

/-- `A062178(2*n+1)-A062178(n)` -/
def P2383124299250326015.Spec : Prop :=
  ∀ n, P2383124299250326015.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P7380659071572099671

`A005257(2*n+1)-A259858(n+1)`
-/

namespace A245904.P7380659071572099671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005257 (2 * n + 1) - A259858 (n + 1)

end

end A245904.P7380659071572099671

namespace A245904

/-- `A005257(2*n+1)-A259858(n+1)` -/
def P7380659071572099671.Spec : Prop :=
  ∀ n, P7380659071572099671.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P13837116500511249710

`A005255(2*n+1)-A005255(2*n)`
-/

namespace A245904.P13837116500511249710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (2 * n + 1) - A005255 (2 * n)

end

end A245904.P13837116500511249710

namespace A245904

/-- `A005255(2*n+1)-A005255(2*n)` -/
def P13837116500511249710.Spec : Prop :=
  ∀ n, P13837116500511249710.a n = A245904 (n + 1)

end A245904

/-! ## A245904.P2388105604210176992

`A037254(2*n²+1)`
-/

namespace A245904.P2388105604210176992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037254 (2 * n ^ 2 + 1)

end

end A245904.P2388105604210176992

namespace A245904

/-- `A037254(2*n²+1)` -/
def P2388105604210176992.Spec : Prop :=
  ∀ n, P2388105604210176992.a n = A245904 (n + 1)

end A245904

/-!
# A245905: Zero followed by the terms of A023705 arranged to give the unique path to the n-th node of a complete, rooted and ordered ternary tree.

The programs for A245905, there is no canonical definition to state claims against.
-/

/-! ## A245905.P12764693880295520086

`A030103(eq[0, A160380(n)])`
-/

namespace A245905.P12764693880295520086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245905.P12764693880295520086

/-! ## A245905.P16613759974150817507

`A030103(eq[1, A277872(n)])`
-/

namespace A245905.P16613759974150817507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245905.P16613759974150817507

/-! ## A245905.P15232509376966249553

`A030103(record[n/A277872(n)])`
-/

namespace A245905.P15232509376966249553
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A277872 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A245905.P15232509376966249553

/-! ## A245905.P352748964756370913

`A030103(eq[A160385(n), A215883(n)])`
-/

namespace A245905.P352748964756370913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245905.P352748964756370913

/-! ## A245905.P2692965789822082942

`A030103(eq[A292370(n+1), A309954(n)])`
-/

namespace A245905.P2692965789822082942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245905.P2692965789822082942

/-! ## A245905.P13571820756262479114

`A030103(eq[A309954(n+1), A338854(n)])`
-/

namespace A245905.P13571820756262479114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245905.P13571820756262479114

/-!
# A245906: Numbers of the form 4n^2 + 1 or 4n^2 + 8n + 1.

The programs for A245906, the canonical program `A245906.P9793557954308464848` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245906 has offset 1).

The definition of A245906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245906.P9793557954308464848

`(2*n*(n+5)-(2*n+1)*(-1)^n+11)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245906

/-- `(2*n*(n+5)-(2*n+1)*(-1)^n+11)/2` -/
def P9793557954308464848.Spec : Prop :=
  ∀ n, P9793557954308464848.a n = (A245906 (n + 1) : ℚ)

end A245906

/-! ## A245906.P1119417012493716897

`∑[4*(n*n%2+1)]+1`
-/

namespace A245906.P1119417012493716897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (n % 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A245906.P1119417012493716897

namespace A245906

/-- `∑[4*(n*n%2+1)]+1` -/
def P1119417012493716897.Spec : Prop :=
  ∀ n, (P1119417012493716897.a n : ℤ) = A245906 (n + 1)

end A245906

/-! ## A245906.P13070731795512979926

`∑[4*(C(n, xor(1, n))+1)]+1`
-/

namespace A245906.P13070731795512979926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (Nat.choose n (Nat.xor 1 n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A245906.P13070731795512979926

namespace A245906

/-- `∑[4*(C(n, xor(1, n))+1)]+1` -/
def P13070731795512979926.Spec : Prop :=
  ∀ n, (P13070731795512979926.a n : ℤ) = A245906 (n + 1)

end A245906

/-! ## A245906.P7259339240075820174

`(and(1, n)+n)²+4*n+5`
-/

namespace A245906.P7259339240075820174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + n) ^ 2 + (4 * n + 5)

end

end A245906.P7259339240075820174

namespace A245906

/-- `(and(1, n)+n)²+4*n+5` -/
def P7259339240075820174.Spec : Prop :=
  ∀ n, (P7259339240075820174.a n : ℤ) = A245906 (n + 1)

end A245906

/-! ## A245906.P15630609740106028631

`n*(n+5)+7-Δ[lcm(2, n)]`
-/

namespace A245906.P15630609740106028631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 5) + 7 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A245906.P15630609740106028631

namespace A245906

/-- `n*(n+5)+7-Δ[lcm(2, n)]` -/
def P15630609740106028631.Spec : Prop :=
  ∀ n, P15630609740106028631.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P10138013906245008246

`or(3, (n+2)*xor(1, n+3))-2`
-/

namespace A245906.P10138013906245008246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 ((n + 2) * Nat.xor 1 (n + 3)) : ℤ) - 2

end

end A245906.P10138013906245008246

namespace A245906

/-- `or(3, (n+2)*xor(1, n+3))-2` -/
def P10138013906245008246.Spec : Prop :=
  ∀ n, P10138013906245008246.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P3618405080395963644

`xor(2, or(3, (n+2)*xor(1, n+3)))`
-/

namespace A245906.P3618405080395963644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 3 ((n + 2) * Nat.xor 1 (n + 3)))

end

end A245906.P3618405080395963644

namespace A245906

/-- `xor(2, or(3, (n+2)*xor(1, n+3)))` -/
def P3618405080395963644.Spec : Prop :=
  ∀ n, (P3618405080395963644.a n : ℤ) = A245906 (n + 1)

end A245906

/-! ## A245906.P484964364215331845

`2*(or(1, n)+1)+or(1, n+1)²`
-/

namespace A245906.P484964364215331845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.lor 1 n + 1) + Nat.lor 1 (n + 1) ^ 2

end

end A245906.P484964364215331845

namespace A245906

/-- `2*(or(1, n)+1)+or(1, n+1)²` -/
def P484964364215331845.Spec : Prop :=
  ∀ n, (P484964364215331845.a n : ℤ) = A245906 (n + 1)

end A245906

/-! ## A245906.P17491449513893234483

`Δ[or(1, (n+1)²)]+or(1, n+1)²`
-/

namespace A245906.P17491449513893234483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.lor 1 (n + 1) ^ 2 : ℤ)

end

end A245906.P17491449513893234483

namespace A245906

/-- `Δ[or(1, (n+1)²)]+or(1, n+1)²` -/
def P17491449513893234483.Spec : Prop :=
  ∀ n, P17491449513893234483.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P16328165194132263810

`4*∑[floor((n+1)/a(n-1))]+1` with `a(0)=1`
-/

namespace A245906.P16328165194132263810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A245906.P16328165194132263810

namespace A245906

/-- `4*∑[floor((n+1)/a(n-1))]+1` -/
def P16328165194132263810.Spec : Prop :=
  ∀ n, P16328165194132263810.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P12816807432977350340

`2*A266074(n+1)+1`
-/

namespace A245906.P12816807432977350340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266074 (n + 1) + 1

end

end A245906.P12816807432977350340

namespace A245906

/-- `2*A266074(n+1)+1` -/
def P12816807432977350340.Spec : Prop :=
  ∀ n, P12816807432977350340.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P3892050923556703698

`A265724(n+1)+A128918(n+2)`
-/

namespace A245906.P3892050923556703698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 (n + 1) + A128918 (n + 2)

end

end A245906.P3892050923556703698

namespace A245906

/-- `A265724(n+1)+A128918(n+2)` -/
def P3892050923556703698.Spec : Prop :=
  ∀ n, P3892050923556703698.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P11018831523229648127

`A016813(n+1)+A052928(n+1)*A052928(n+1)`
-/

namespace A245906.P11018831523229648127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (n + 1) + A052928 (n + 1) * A052928 (n + 1)

end

end A245906.P11018831523229648127

namespace A245906

/-- `A016813(n+1)+A052928(n+1)*A052928(n+1)` -/
def P11018831523229648127.Spec : Prop :=
  ∀ n, P11018831523229648127.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P4960770767365061954

`A266665(n+1)+A266257(n+2)`
-/

namespace A245906.P4960770767365061954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 (n + 1) + A266257 (n + 2)

end

end A245906.P4960770767365061954

namespace A245906

/-- `A266665(n+1)+A266257(n+2)` -/
def P4960770767365061954.Spec : Prop :=
  ∀ n, P4960770767365061954.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P15635492831849669870

`A004766(A135276(n+1))`
-/

namespace A245906.P15635492831849669870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A135276 (n + 1)).toNat

end

end A245906.P15635492831849669870

namespace A245906

/-- `A004766(A135276(n+1))` -/
def P15635492831849669870.Spec : Prop :=
  ∀ n, P15635492831849669870.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P10631909009708748998

`A077425(A130404(n+1))`
-/

namespace A245906.P10631909009708748998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077425 (A130404 (n + 1)).toNat

end

end A245906.P10631909009708748998

namespace A245906

/-- `A077425(A130404(n+1))` -/
def P10631909009708748998.Spec : Prop :=
  ∀ n, P10631909009708748998.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P14354594123917509053

`A016813(A110654(n)²+n+1)`
-/

namespace A245906.P14354594123917509053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A110654 n ^ 2 + (n + 1 : ℤ)).toNat

end

end A245906.P14354594123917509053

namespace A245906

/-- `A016813(A110654(n)²+n+1)` -/
def P14354594123917509053.Spec : Prop :=
  ∀ n, P14354594123917509053.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P11318854827959161743

`record[A004766(n+1)/A004737(n+2)]`
-/

namespace A245906.P11318854827959161743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004766 (n + 1) : ℚ) / (A004737 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245906.P11318854827959161743

namespace A245906

/-- `record[A004766(n+1)/A004737(n+2)]` -/
def P11318854827959161743.Spec : Prop :=
  ∀ n, P11318854827959161743.a n = (A245906 (n + 1) : ℚ)

end A245906

/-! ## A245906.P6086799976295411862

`A016813(A000290(A110654(n))+n+1)`
-/

namespace A245906.P6086799976295411862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A000290 (A110654 n).toNat + (n + 1 : ℤ)).toNat

end

end A245906.P6086799976295411862

namespace A245906

/-- `A016813(A000290(A110654(n))+n+1)` -/
def P6086799976295411862.Spec : Prop :=
  ∀ n, P6086799976295411862.a n = A245906 (n + 1)

end A245906

/-! ## A245906.P1326442052387737072

`A079896(A266725(n+1))`
-/

namespace A245906.P1326442052387737072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (A266725 (n + 1)).toNat

end

end A245906.P1326442052387737072

namespace A245906

/-- `A079896(A266725(n+1))` -/
def P1326442052387737072.Spec : Prop :=
  ∀ n, P1326442052387737072.a n = A245906 (n + 1)

end A245906

/-!
# A245908: The number of distinct prime factors of prime(n)^2-1.

The programs for A245908, the canonical program `A245908.P1056546773488542885` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245908 has offset 1).

The definition of A245908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245908.P14636992679704535903

`A059957(A130290(n+1))`
-/

namespace A245908.P14636992679704535903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (A130290 (n + 1)).toNat

end

end A245908.P14636992679704535903

namespace A245908

/-- `A059957(A130290(n+1))` -/
def P14636992679704535903.Spec : Prop :=
  ∀ n, P14636992679704535903.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P1056546773488542885

`A082863(p?[xor(1, n)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245908

/-- `A082863(p?[xor(1, n)])` -/
def P1056546773488542885.Spec : Prop :=
  ∀ n, P1056546773488542885.a n = A245908 (n + 1)

theorem P1056546773488542885.correct : P1056546773488542885.Spec := by
  intro n
  simp only [A245908, Nat.add_sub_cancel]

end A245908

/-! ## A245908.P15352707288532766868

`A082863(A000040(n+1))`
-/

namespace A245908.P15352707288532766868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A000040 (n + 1)).toNat

end

end A245908.P15352707288532766868

namespace A245908

/-- `A082863(A000040(n+1))` -/
def P15352707288532766868.Spec : Prop :=
  ∀ n, P15352707288532766868.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P13386776942546754148

`A082863(A008578(n+2))`
-/

namespace A245908.P13386776942546754148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A008578 (n + 2)).toNat

end

end A245908.P13386776942546754148

namespace A245908

/-- `A082863(A008578(n+2))` -/
def P13386776942546754148.Spec : Prop :=
  ∀ n, P13386776942546754148.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P16491588836366836680

`A082863(A182986(n+2))`
-/

namespace A245908.P16491588836366836680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A182986 (n + 2)).toNat

end

end A245908.P16491588836366836680

namespace A245908

/-- `A082863(A182986(n+2))` -/
def P16491588836366836680.Spec : Prop :=
  ∀ n, P16491588836366836680.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P9512873781696232563

`A082863(record[A006530(n+2)])`
-/

namespace A245908.P9512873781696232563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245908.P9512873781696232563

namespace A245908

/-- `A082863(record[A006530(n+2)])` -/
def P9512873781696232563.Spec : Prop :=
  ∀ n, P9512873781696232563.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P15323919867770997246

`A082863(record[A014963(n+2)])`
-/

namespace A245908.P15323919867770997246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245908.P15323919867770997246

namespace A245908

/-- `A082863(record[A014963(n+2)])` -/
def P15323919867770997246.Spec : Prop :=
  ∀ n, P15323919867770997246.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P14484162880648908169

`A082863(record[A020639(n+2)])`
-/

namespace A245908.P14484162880648908169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245908.P14484162880648908169

namespace A245908

/-- `A082863(record[A020639(n+2)])` -/
def P14484162880648908169.Spec : Prop :=
  ∀ n, P14484162880648908169.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P17048508780077074008

`A082863(A006093(n+1)+1)`
-/

namespace A245908.P17048508780077074008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A006093 (n + 1) + 1).toNat

end

end A245908.P17048508780077074008

namespace A245908

/-- `A082863(A006093(n+1)+1)` -/
def P17048508780077074008.Spec : Prop :=
  ∀ n, P17048508780077074008.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P5435620855311921443

`A082863(A008864(n+1)-1)`
-/

namespace A245908.P5435620855311921443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A008864 (n + 1) - 1).toNat

end

end A245908.P5435620855311921443

namespace A245908

/-- `A082863(A008864(n+1)-1)` -/
def P5435620855311921443.Spec : Prop :=
  ∀ n, P5435620855311921443.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P11568918261872125208

`A082863(A040976(n+1)+2)`
-/

namespace A245908.P11568918261872125208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A040976 (n + 1) + 2).toNat

end

end A245908.P11568918261872125208

namespace A245908

/-- `A082863(A040976(n+1)+2)` -/
def P11568918261872125208.Spec : Prop :=
  ∀ n, P11568918261872125208.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P15494246598245454308

`A082863(A052147(n+1)-2)`
-/

namespace A245908.P15494246598245454308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A052147 (n + 1) - 2).toNat

end

end A245908.P15494246598245454308

namespace A245908

/-- `A082863(A052147(n+1)-2)` -/
def P15494246598245454308.Spec : Prop :=
  ∀ n, P15494246598245454308.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P5911311901374587390

`A082863(lt[A001222(n+2), 2]+2)`
-/

namespace A245908.P5911311901374587390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A245908.P5911311901374587390

namespace A245908

/-- `A082863(lt[A001222(n+2), 2]+2)` -/
def P5911311901374587390.Spec : Prop :=
  ∀ n, P5911311901374587390.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P9088327142857079312

`A082863(A030078(n+1)/A001248(n+1))`
-/

namespace A245908.P9088327142857079312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat

end

end A245908.P9088327142857079312

namespace A245908

/-- `A082863(A030078(n+1)/A001248(n+1))` -/
def P9088327142857079312.Spec : Prop :=
  ∀ n, P9088327142857079312.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P10511619016616402738

`A082863(A030514(n+1)/A030078(n+1))`
-/

namespace A245908.P10511619016616402738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (SequenceMachineLib.roundAway ((A030514 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ))).toNat

end

end A245908.P10511619016616402738

namespace A245908

/-- `A082863(A030514(n+1)/A030078(n+1))` -/
def P10511619016616402738.Spec : Prop :=
  ∀ n, P10511619016616402738.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P15727345171970806759

`∑{e}[A275630(n+1), #]`
-/

namespace A245908.P15727345171970806759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A245908.P15727345171970806759

namespace A245908

/-- `∑{e}[A275630(n+1), #]` -/
def P15727345171970806759.Spec : Prop :=
  ∀ n, (P15727345171970806759.a n : ℤ) = A245908 (n + 1)

end A245908

/-! ## A245908.P12302441545267986249

`∑{p}[A275630(n+1), A001222(#)]`
-/

namespace A245908.P12302441545267986249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A245908.P12302441545267986249

namespace A245908

/-- `∑{p}[A275630(n+1), A001222(#)]` -/
def P12302441545267986249.Spec : Prop :=
  ∀ n, P12302441545267986249.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P10725094115558851907

`∑{p}[A084921(n+1), A001222(#)]`
-/

namespace A245908.P10725094115558851907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A245908.P10725094115558851907

namespace A245908

/-- `∑{p}[A084921(n+1), A001222(#)]` -/
def P10725094115558851907.Spec : Prop :=
  ∀ n, P10725094115558851907.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P1829893095520527916

`∑{e}[A084921(n+1), A186727(A186727(#))]`
-/

namespace A245908.P1829893095520527916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A186727 (A186727 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A245908.P1829893095520527916

namespace A245908

/-- `∑{e}[A084921(n+1), A186727(A186727(#))]` -/
def P1829893095520527916.Spec : Prop :=
  ∀ n, P1829893095520527916.a n = A245908 (n + 1)

end A245908

/-! ## A245908.P5832232933604179355

`∑{p}[1-A000040(n+1)², A001222(#)]`
-/

namespace A245908.P5832232933604179355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A245908.P5832232933604179355

namespace A245908

/-- `∑{p}[1-A000040(n+1)², A001222(#)]` -/
def P5832232933604179355.Spec : Prop :=
  ∀ n, P5832232933604179355.a n = A245908 (n + 1)

end A245908

/-!
# A245909: The number of distinct prime factors of prime(n)^3-1.

The programs for A245909, the canonical program `A245909.P3732275511422578405` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245909 has offset 1).

The definition of A245909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245909.P3732275511422578405

`A240975(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245909

/-- `A240975(A000040(n+1))` -/
def P3732275511422578405.Spec : Prop :=
  ∀ n, P3732275511422578405.a n = A245909 (n + 1)

theorem P3732275511422578405.correct : P3732275511422578405.Spec := by
  intro n
  simp only [A245909, Nat.add_sub_cancel]

end A245909

/-! ## A245909.P11399035794836266381

`A240975(A008578(n+2))`
-/

namespace A245909.P11399035794836266381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (A008578 (n + 2)).toNat

end

end A245909.P11399035794836266381

namespace A245909

/-- `A240975(A008578(n+2))` -/
def P11399035794836266381.Spec : Prop :=
  ∀ n, P11399035794836266381.a n = A245909 (n + 1)

end A245909

/-! ## A245909.P6131444000668522370

`A240975(A182986(n+2))`
-/

namespace A245909.P6131444000668522370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (A182986 (n + 2)).toNat

end

end A245909.P6131444000668522370

namespace A245909

/-- `A240975(A182986(n+2))` -/
def P6131444000668522370.Spec : Prop :=
  ∀ n, P6131444000668522370.a n = A245909 (n + 1)

end A245909

/-! ## A245909.P5405904030157162625

`A240975(record[A006530(n+2)])`
-/

namespace A245909.P5405904030157162625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245909.P5405904030157162625

namespace A245909

/-- `A240975(record[A006530(n+2)])` -/
def P5405904030157162625.Spec : Prop :=
  ∀ n, P5405904030157162625.a n = A245909 (n + 1)

end A245909

/-! ## A245909.P9338309889447879247

`A240975(record[A014963(n+2)])`
-/

namespace A245909.P9338309889447879247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245909.P9338309889447879247

namespace A245909

/-- `A240975(record[A014963(n+2)])` -/
def P9338309889447879247.Spec : Prop :=
  ∀ n, P9338309889447879247.a n = A245909 (n + 1)

end A245909

/-! ## A245909.P15641872100832376956

`A240975(record[A020639(n+2)])`
-/

namespace A245909.P15641872100832376956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245909.P15641872100832376956

namespace A245909

/-- `A240975(record[A020639(n+2)])` -/
def P15641872100832376956.Spec : Prop :=
  ∀ n, P15641872100832376956.a n = A245909 (n + 1)

end A245909

/-! ## A245909.P17341962963040642972

`A240975(A006093(n+1)+1)`
-/

namespace A245909.P17341962963040642972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (A006093 (n + 1) + 1).toNat

end

end A245909.P17341962963040642972

namespace A245909

/-- `A240975(A006093(n+1)+1)` -/
def P17341962963040642972.Spec : Prop :=
  ∀ n, P17341962963040642972.a n = A245909 (n + 1)

theorem P17341962963040642972.correct : P17341962963040642972.Spec := by
  intro n
  simp only [A245909, Nat.add_sub_cancel, A245909.P17341962963040642972.a, A245909.P3732275511422578405.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A240975, A240975.P18124287489013526821.f1, A240975.P18124287489013526821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245909

/-! ## A245909.P4254068470102285534

`A240975(A008864(n+1)-1)`
-/

namespace A245909.P4254068470102285534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (A008864 (n + 1) - 1).toNat

end

end A245909.P4254068470102285534

namespace A245909

/-- `A240975(A008864(n+1)-1)` -/
def P4254068470102285534.Spec : Prop :=
  ∀ n, P4254068470102285534.a n = A245909 (n + 1)

theorem P4254068470102285534.correct : P4254068470102285534.Spec := by
  intro n
  simp only [A245909, Nat.add_sub_cancel, A245909.P4254068470102285534.a, A245909.P3732275511422578405.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A240975, A240975.P18124287489013526821.f1, A240975.P18124287489013526821.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245909

/-! ## A245909.P6620436233991033802

`A240975(A030078(n+1)/A001248(n+1))`
-/

namespace A245909.P6620436233991033802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat

end

end A245909.P6620436233991033802

namespace A245909

/-- `A240975(A030078(n+1)/A001248(n+1))` -/
def P6620436233991033802.Spec : Prop :=
  ∀ n, P6620436233991033802.a n = A245909 (n + 1)

end A245909

/-! ## A245909.P17589299259070813915

`A240975(A030514(n+1)/A030078(n+1))`
-/

namespace A245909.P17589299259070813915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (SequenceMachineLib.roundAway ((A030514 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ))).toNat

end

end A245909.P17589299259070813915

namespace A245909

/-- `A240975(A030514(n+1)/A030078(n+1))` -/
def P17589299259070813915.Spec : Prop :=
  ∀ n, P17589299259070813915.a n = A245909 (n + 1)

end A245909

/-!
# A245910: Number A(n,k) of pairs of endofunctions f, g on [n] satisfying f(g^k(i)) = f(i) for all i in [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A245910, there is no canonical definition to state claims against.
-/

/-! ## A245910.P4384646984234876940

`A182134(A033191(n))^A182114(n)`
-/

namespace A245910.P4384646984234876940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182134 (A033191 n).toNat : ℚ) ^ (A182114 n : ℤ)

end

end A245910.P4384646984234876940

/-! ## A245910.P828483645388007127

`A245980(or(A026741(n), A087036(n)))`
-/

namespace A245910.P828483645388007127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (Int.lor (A026741 n) (A087036 n)).toNat

end

end A245910.P828483645388007127

/-! ## A245910.P1918422412041399076

`A245980(or(n, A122175(A087036(n))))`
-/

namespace A245910.P1918422412041399076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (Int.lor (n : ℤ) (A122175 (A087036 n).toNat)).toNat

end

end A245910.P1918422412041399076

/-! ## A245910.P2041713763064023766

`A245980(or(A087036(n), A278518(n)))`
-/

namespace A245910.P2041713763064023766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (Int.lor (A087036 n) (A278518 n)).toNat

end

end A245910.P2041713763064023766

/-! ## A245910.P16657556257385619483

`A245980(or(n, A320019(A087036(n))))`
-/

namespace A245910.P16657556257385619483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (Int.lor (n : ℤ) (A320019 (A087036 n).toNat)).toNat

end

end A245910.P16657556257385619483

/-!
# A245911: Number of pairs of endofunctions f, g on [n] satisfying f(g^n(i)) = f(i) for all i in [n].

The programs for A245911, there is no canonical definition to state claims against.
-/

/-! ## A245911.P3608085896890357504

`A245910(∑[4*n])`
-/

namespace A245911.P3608085896890357504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245911.P3608085896890357504

/-! ## A245911.P8244712535159774920

`gcd(A000038(n), A245910(A046092(n)))`
-/

namespace A245911.P8244712535159774920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245910 (A046092 n).toNat)

end

end A245911.P8244712535159774920

/-! ## A245911.P10067026916093969486

`lcm(A033999(n), A245910(A046092(n)))`
-/

namespace A245911.P10067026916093969486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A245910 (A046092 n).toNat)

end

end A245911.P10067026916093969486

/-! ## A245911.P15008500484920573482

`A007318(C(n, 2))*A245910(A046092(n))`
-/

namespace A245911.P15008500484920573482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A245910 (A046092 n).toNat

end

end A245911.P15008500484920573482

/-! ## A245911.P3308779805507505235

`A000203(C(n, n²)!)*A245910(A046092(n))`
-/

namespace A245911.P3308779805507505235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial (Nat.choose n (n ^ 2))) * A245910 (A046092 n).toNat

end

end A245911.P3308779805507505235

/-!
# A245912: Number of pairs of endofunctions f, g on [n] satisfying f(g^3(i)) = f(i) for all i in [n].

The programs for A245912, there is no canonical definition to state claims against.
-/

/-! ## A245912.P162260533293286199

`A245910(∑[n+3]+n+3)`
-/

namespace A245912.P162260533293286199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A245912.P162260533293286199

/-! ## A245912.P5562986974448161943

`A245918(A004892(n+1))`
-/

namespace A245912.P5562986974448161943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245918 (A004892 (n + 1)).toNat

end

end A245912.P5562986974448161943

/-! ## A245912.P12410531751291289742

`A245918(A381225(n)-1)`
-/

namespace A245912.P12410531751291289742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245918 (A381225 n - 1).toNat

end

end A245912.P12410531751291289742

/-! ## A245912.P12591291904825466109

`A245918(A056525(n+1)-1)`
-/

namespace A245912.P12591291904825466109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245918 (A056525 (n + 1) - 1).toNat

end

end A245912.P12591291904825466109

/-! ## A245912.P631828610053735895

`A245918(A056492(n+1)+n)`
-/

namespace A245912.P631828610053735895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245918 (A056492 (n + 1) + (n : ℤ)).toNat

end

end A245912.P631828610053735895

/-!
# A245913: Number of pairs of endofunctions f, g on [n] satisfying f(g^4(i)) = f(i) for all i in [n].

The programs for A245913, there is no canonical definition to state claims against.
-/

/-! ## A245913.P2182581750166558329

`A245910(A056115(n)+10)`
-/

namespace A245913.P2182581750166558329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (A056115 n + 10).toNat

end

end A245913.P2182581750166558329

/-! ## A245913.P8464595279324280351

`A245910(eq[4, A025581(n)])`
-/

namespace A245913.P8464595279324280351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245913.P8464595279324280351

/-! ## A245913.P14959932233245371299

`A245910(eq[5, A193739(n)])`
-/

namespace A245913.P14959932233245371299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245913.P14959932233245371299

/-! ## A245913.P4327222171270042914

`A245910(eq[9, A099375(n)])`
-/

namespace A245913.P4327222171270042914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245913.P4327222171270042914

/-! ## A245913.P18296405365214535805

`A245910(eq[5, A004736(n+1)])`
-/

namespace A245913.P18296405365214535805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245913.P18296405365214535805

/-!
# A245914: Number of pairs of endofunctions f, g on [n] satisfying f(g^5(i)) = f(i) for all i in [n].

The programs for A245914, there is no canonical definition to state claims against.
-/

/-! ## A245914.P8053789875979534019

`A245910(eq[5, A025581(n)])`
-/

namespace A245914.P8053789875979534019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245914.P8053789875979534019

/-!
# A245919: Number of pairs of endofunctions f, g on [n] satisfying f(g^10(i)) = f(i) for all i in [n].

The programs for A245919, there is no canonical definition to state claims against.
-/

/-! ## A245919.P4237992796610003871

`A245910(eq[11, A004736(n+1)])`
-/

namespace A245919.P4237992796610003871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245919.P4237992796610003871

/-!
# A245920: Limit-reverse of the (2,1)-version of the infinite Fibonacci word A014675 with first term as initial block.

The programs for A245920, the canonical program `A245920.P3971738519078735846` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245920 has offset 0).

The definition of A245920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245920.P17903977169700383145

`Δ[floor(ϕ*(sqrt(3)+n+1))]`
-/

namespace A245920.P17903977169700383145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Real.sqrt (3 : ℝ) + (n + 1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245920.P17903977169700383145

namespace A245920

/-- `Δ[floor(ϕ*(sqrt(3)+n+1))]` -/
def P17903977169700383145.Spec : Prop :=
  ∀ n, P17903977169700383145.a n = A245920 n

theorem P17903977169700383145.correct : P17903977169700383145.Spec := by
  intro n
  simp only [A245920, Nat.add_sub_cancel, A245920.P17903977169700383145.f1, A245920.P17903977169700383145.a, A245920.P3971738519078735846.a, A241422, A241422.P16199679434567628478.f1, A241422.P16199679434567628478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A245920

/-! ## A245920.P3971738519078735846

`2-A241422(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245920

/-- `2-A241422(n)` -/
def P3971738519078735846.Spec : Prop :=
  ∀ n, P3971738519078735846.a n = A245920 n

theorem P3971738519078735846.correct : P3971738519078735846.Spec := by
  intro n
  simp only [A245920]

end A245920

/-! ## A245920.P1000499397322082996

`A014675(A135600(n+1))`
-/

namespace A245920.P1000499397322082996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A135600 (n + 1)).toNat

end

end A245920.P1000499397322082996

namespace A245920

/-- `A014675(A135600(n+1))` -/
def P1000499397322082996.Spec : Prop :=
  ∀ n, P1000499397322082996.a n = A245920 n

end A245920

/-! ## A245920.P11205656682701789425

`A001468(A135600(n+2))`
-/

namespace A245920.P11205656682701789425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A135600 (n + 2)).toNat

end

end A245920.P11205656682701789425

namespace A245920

/-- `A001468(A135600(n+2))` -/
def P11205656682701789425.Spec : Prop :=
  ∀ n, P11205656682701789425.a n = A245920 n

end A245920

/-! ## A245920.P5784042774882218800

`A014675(A246104(n)+A241422(n))`
-/

namespace A245920.P5784042774882218800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A246104 n + A241422 n).toNat

end

end A245920.P5784042774882218800

namespace A245920

/-- `A014675(A246104(n)+A241422(n))` -/
def P5784042774882218800.Spec : Prop :=
  ∀ n, P5784042774882218800.a n = A245920 n

end A245920

/-! ## A245920.P13745972879562005699

`A014675((A241422(n)*A246104(n))²)`
-/

namespace A245920.P13745972879562005699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 ((A241422 n * A246104 n) ^ 2).toNat

end

end A245920.P13745972879562005699

namespace A245920

/-- `A014675((A241422(n)*A246104(n))²)` -/
def P13745972879562005699.Spec : Prop :=
  ∀ n, P13745972879562005699.a n = A245920 n

end A245920

/-! ## A245920.P14852352351023896246

`A014675(A245922(n+1)+A241422(n))`
-/

namespace A245920.P14852352351023896246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A245922 (n + 1) + A241422 n).toNat

end

end A245920.P14852352351023896246

namespace A245920

/-- `A014675(A245922(n+1)+A241422(n))` -/
def P14852352351023896246.Spec : Prop :=
  ∀ n, P14852352351023896246.a n = A245920 n

end A245920

/-! ## A245920.P5864714512858931655

`A014675(A245979(n+1)+A241422(n))`
-/

namespace A245920.P5864714512858931655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A245979 (n + 1) + A241422 n).toNat

end

end A245920.P5864714512858931655

namespace A245920

/-- `A014675(A245979(n+1)+A241422(n))` -/
def P5864714512858931655.Spec : Prop :=
  ∀ n, P5864714512858931655.a n = A245920 n

end A245920

/-! ## A245920.P12116225144326355658

`A014675(A245921(n)-n)`
-/

namespace A245920.P12116225144326355658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A245921 n - (n : ℤ)).toNat

end

end A245920.P12116225144326355658

namespace A245920

/-- `A014675(A245921(n)-n)` -/
def P12116225144326355658.Spec : Prop :=
  ∀ n, P12116225144326355658.a n = A245920 n

end A245920

/-!
# A245921: Index sequence for limit-reversing the (2,1)-version of the infinite Fibonacci word A014675 with first term as initial block.

The programs for A245921, there is no canonical definition to state claims against.
-/

/-! ## A245921.P1543898095653785304

`A245922(n)+a(n-1)` with `a(0)=0`
-/

namespace A245921.P1543898095653785304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A245922 n + a (n - 1)

end

end A245921.P1543898095653785304

/-! ## A245921.P6129335193372369226

`∑[A245922(abs(1-n)+1)]-3`
-/

namespace A245921.P6129335193372369226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245922 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A245921.P6129335193372369226

/-! ## A245921.P7066353495759964968

`∪[A101704(n+1), ∑[A245922(n+1)]]`
-/

namespace A245921.P7066353495759964968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245921.P7066353495759964968

/-! ## A245921.P12506513584454024731

`∑[A057427(n)*A245922(A028310(n))]`
-/

namespace A245921.P12506513584454024731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A245922 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245921.P12506513584454024731

/-! ## A245921.P17002573408035938945

`∑[A178334(n)*A245922(A028310(n))]`
-/

namespace A245921.P17002573408035938945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A245922 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245921.P17002573408035938945

/-! ## A245921.P17759291726103114374

`∑[A245922(A028310(n))%A000051(n)]`
-/

namespace A245921.P17759291726103114374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245922 (A028310 n).toNat) (A000051 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245921.P17759291726103114374

/-! ## A245921.P17265959433691595619

`∑[A245922(A000007(n)+n)%A000032(n+1)]`
-/

namespace A245921.P17265959433691595619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245922 (A000007 n + (n : ℤ)).toNat) (A000032 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245921.P17265959433691595619

/-!
# A245922: First differences of A245921.

The programs for A245922, there is no canonical definition to state claims against.
-/

/-! ## A245922.P11553891325869106591

`Δ[A245921(n)]`
-/

namespace A245922.P11553891325869106591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245922.P11553891325869106591

/-! ## A245922.P15390542835262387199

`A245921(n+1)-A245921(n)`
-/

namespace A245922.P15390542835262387199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245921 (n + 1) - A245921 n

end

end A245922.P15390542835262387199

/-! ## A245922.P11736103697850798814

`A245921(A000027(n+1))+A001489(A245921(n))`
-/

namespace A245922.P11736103697850798814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245921 (A000027 (n + 1)).toNat + A001489 (A245921 n).toNat

end

end A245922.P11736103697850798814

/-! ## A245922.P3057175082223681604

`(A245921(n+1)+A001489(A245921(n)))*A000040(n+2)%2`
-/

namespace A245922.P3057175082223681604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245921 (n + 1) + A001489 (A245921 n).toNat) * Int.tmod (A000040 (n + 2)) 2

end

end A245922.P3057175082223681604

/-!
# A245926: Expansion of g.f. sqrt( (1-x + sqrt(1-14*x+x^2)) / (2*(1-14*x+x^2)) ).

The programs for A245926, there is no canonical definition to state claims against.
-/

/-! ## A245926.P4456133293355529788

`A337389(∑[n+3]+n+3)`
-/

namespace A245926.P4456133293355529788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337389 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A245926.P4456133293355529788

/-! ## A245926.P16319593843574872248

`A122868(2*n)/A000244(n)`
-/

namespace A245926.P16319593843574872248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122868 (2 * n) : ℚ) / (A000244 n : ℚ)

end

end A245926.P16319593843574872248

/-! ## A245926.P5888117220465147246

`A232973(A000217(2*n))/A000244(n)`
-/

namespace A245926.P5888117220465147246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232973 (A000217 (2 * n)).toNat : ℚ) / (A000244 n : ℚ)

end

end A245926.P5888117220465147246

/-! ## A245926.P8215995629865571993

`sqrt(record[A245925(n)])`
-/

namespace A245926.P8215995629865571993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245925 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A245926.P8215995629865571993

/-! ## A245926.P5238788176703057814

`sqrt(A245925(2*n))`
-/

namespace A245926.P5238788176703057814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245925 (2 * n) : ℝ)

end

end A245926.P5238788176703057814

/-!
# A245927: G.f.: sqrt( (1-x - sqrt(1-14*x+x^2)) / (6*x*(1-14*x+x^2)) ).

The programs for A245927, there is no canonical definition to state claims against.
-/

/-! ## A245927.P1897152767802143115

`A337369(∑[n+3]+n+3)`
-/

namespace A245927.P1897152767802143115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337369 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A245927.P1897152767802143115

/-! ## A245927.P1523600205736663864

`A122868(2*n+1)/A000244(n+1)`
-/

namespace A245927.P1523600205736663864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122868 (2 * n + 1) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A245927.P1523600205736663864

/-! ## A245927.P10005763970278879043

`A232973(A000217(2*n+1))/A000244(n+1)`
-/

namespace A245927.P10005763970278879043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232973 (A000217 (2 * n + 1)).toNat : ℚ) / (A000244 (n + 1) : ℚ)

end

end A245927.P10005763970278879043

/-! ## A245927.P3141526124216290010

`A122868(2*n+1)/A003961(A057048(2*n+1))`
-/

namespace A245927.P3141526124216290010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122868 (2 * n + 1) : ℚ) / (A003961 (A057048 (2 * n + 1)).toNat : ℚ)

end

end A245927.P3141526124216290010

/-! ## A245927.P15135530163769111896

`A122868(2*n+1)/A003961(A112032(2*n+3))`
-/

namespace A245927.P15135530163769111896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122868 (2 * n + 1) : ℚ) / (A003961 (A112032 (2 * n + 3)).toNat : ℚ)

end

end A245927.P15135530163769111896

/-!
# A245930: G.f.: 1 / AGM((1 - 3*x)^2, (1 + x)^2).

The programs for A245930, there is no canonical definition to state claims against.
-/

/-! ## A245930.P4309774109283162723

`∑[A319935(A291700(n))+A287617(n)]`
-/

namespace A245930.P4309774109283162723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319935 (A291700 n).toNat + A287617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245930.P4309774109283162723

/-! ## A245930.P8283545631620719437

`∑[A067722((2*C(n, 4))²)]`
-/

namespace A245930.P8283545631620719437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 ((2 * Nat.choose n 4) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245930.P8283545631620719437

/-! ## A245930.P12134156278026128699

`∑[A008615(A292979(n))+1]`
-/

namespace A245930.P12134156278026128699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A292979 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245930.P12134156278026128699

/-! ## A245930.P8216879183210205498

`∑[A303170(A303166(n+1))]`
-/

namespace A245930.P8216879183210205498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303170 (A303166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245930.P8216879183210205498

/-!
# A245932: G.f.: G'(x) / G(x) where G(x) = 1 / sqrt( AGM((1 - 3*x)^2, (1 + x)^2) ) is the g.f. of A245931.

The programs for A245932, there is no canonical definition to state claims against.
-/

/-! ## A245932.P13739591173345061558

`A008620(A205800(n+1))`
-/

namespace A245932.P13739591173345061558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A205800 (n + 1)).toNat

end

end A245932.P13739591173345061558

/-! ## A245932.P1503634734927546846

`A224875(A361637(n+1))`
-/

namespace A245932.P1503634734927546846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224875 (A361637 (n + 1)).toNat

end

end A245932.P1503634734927546846

/-! ## A245932.P4477290700037150333

`A225055(A361657(n+1))`
-/

namespace A245932.P4477290700037150333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (A361657 (n + 1)).toNat

end

end A245932.P4477290700037150333

/-!
# A245933: Limit-reverse of A006337 (the difference sequence of Beatty sequence for sqrt(2)), with first term as initial block.

The programs for A245933, the canonical program `A245933.P6671253405021218211` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245933 has offset 1).

The definition of A245933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245933.P6436249267965934923

`Δ[ceil((n+15)*sqrt(2))]`
-/

namespace A245933.P6436249267965934923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 15 : ℝ) * Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245933.P6436249267965934923

namespace A245933

/-- `Δ[ceil((n+15)*sqrt(2))]` -/
def P6436249267965934923.Spec : Prop :=
  ∀ n, P6436249267965934923.a n = A245933 (n + 1)

end A245933

/-! ## A245933.P7757292688954716517

`A246140(n+8)`
-/

namespace A245933.P7757292688954716517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246140 (n + 8)

end

end A245933.P7757292688954716517

namespace A245933

/-- `A246140(n+8)` -/
def P7757292688954716517.Spec : Prop :=
  ∀ n, P7757292688954716517.a n = A245933 (n + 1)

theorem P7757292688954716517.correct : P7757292688954716517.Spec := by
  intro n
  simp only [A245933, Nat.add_sub_cancel, A245933.P7757292688954716517.a, A245933.P6671253405021218211.a, A006337, A006337.P7691167176776546628.a, A246140, A246140.P13755815379108080124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A245933

/-! ## A245933.P6671253405021218211

`A006337(n+15)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245933

/-- `A006337(n+15)` -/
def P6671253405021218211.Spec : Prop :=
  ∀ n, P6671253405021218211.a n = A245933 (n + 1)

theorem P6671253405021218211.correct : P6671253405021218211.Spec := by
  intro n
  simp only [A245933, Nat.add_sub_cancel]

end A245933

/-! ## A245933.P15469240172151271665

`A001030(473+n)`
-/

namespace A245933.P15469240172151271665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (473 + n)

end

end A245933.P15469240172151271665

namespace A245933

/-- `A001030(473+n)` -/
def P15469240172151271665.Spec : Prop :=
  ∀ n, P15469240172151271665.a n = A245933 (n + 1)

end A245933

/-! ## A245933.P13170708522078570525

`A276862(n+15)-1`
-/

namespace A245933.P13170708522078570525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (n + 15) - 1

end

end A245933.P13170708522078570525

namespace A245933

/-- `A276862(n+15)-1` -/
def P13170708522078570525.Spec : Prop :=
  ∀ n, P13170708522078570525.a n = A245933 (n + 1)

end A245933

/-! ## A245933.P2435451560062836249

`gcd(Δ[A063957(n+1)], A178815(n+2))`
-/

namespace A245933.P2435451560062836249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A178815 (n + 2))

end

end A245933.P2435451560062836249

namespace A245933

/-- `gcd(Δ[A063957(n+1)], A178815(n+2))` -/
def P2435451560062836249.Spec : Prop :=
  ∀ n, (P2435451560062836249.a n : ℤ) = A245933 (n + 1)

end A245933

/-! ## A245933.P4150217357742205507

`abs(Δ[A003056(n²+n)])`
-/

namespace A245933.P4150217357742205507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245933.P4150217357742205507

namespace A245933

/-- `abs(Δ[A003056(n²+n)])` -/
def P4150217357742205507.Spec : Prop :=
  ∀ n, P4150217357742205507.a n = A245933 (n + 1)

end A245933

/-!
# A245934: Index sequence for limit-reversing the A006337; see Comments.

The programs for A245934, there is no canonical definition to state claims against.
-/

/-! ## A245934.P576544307809787666

`A245935(n)+a(n-1)` with `a(0)=1`
-/

namespace A245934.P576544307809787666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245935 n + a (n - 1)

end

end A245934.P576544307809787666

/-! ## A245934.P11563543525061086746

`∑[A245935(abs(1-n)+1)]-1`
-/

namespace A245934.P11563543525061086746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245935 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A245934.P11563543525061086746

/-! ## A245934.P7284478474197471045

`A245935(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A245934.P7284478474197471045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245935 n - A001489 (a (n - 1)).toNat

end

end A245934.P7284478474197471045

/-! ## A245934.P611008511354240649

`∑[A245935(n)%A006124(a(n-1))]` with `a(0)=1`
-/

namespace A245934.P611008511354240649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A245935 n) (A006124 (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245934.P611008511354240649

/-! ## A245934.P3949732231067104231

`∑[A245935(A000038(a(3%n))+n)]` with `a(0)=1`
-/

namespace A245934.P3949732231067104231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A245935 (A000038 (f1 (3 % n)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245934.P3949732231067104231

/-! ## A245934.P990084758467315968

`∑[A245935(A028310(n))^A178334(n)]`
-/

namespace A245934.P990084758467315968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245935 (A028310 n).toNat : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245934.P990084758467315968

/-!
# A245935: First differences of A245934; see Comments.

The programs for A245935, there is no canonical definition to state claims against.
-/

/-! ## A245935.P16928311634117964956

`Δ[A245934(n+1)]`
-/

namespace A245935.P16928311634117964956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245935.P16928311634117964956

/-! ## A245935.P2185040761837395682

`abs(Δ[A245934(Δ[n²]-n)])`
-/

namespace A245935.P2185040761837395682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245935.P2185040761837395682

/-! ## A245935.P18323945883248239866

`Δ[record[A245934(A324347(n))]]`
-/

namespace A245935.P18323945883248239866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245935.P18323945883248239866

/-! ## A245935.P6575269923984625542

`Δ[record[A245934(A328477(n))]]`
-/

namespace A245935.P6575269923984625542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 (A328477 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245935.P6575269923984625542

/-! ## A245935.P15391211673742287296

`A245934(n+2)-A245934(n+1)`
-/

namespace A245935.P15391211673742287296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 (n + 2) - A245934 (n + 1)

end

end A245935.P15391211673742287296

/-! ## A245935.P13799423057164769554

`A110654(2*Δ[A245934(Δ[n²]-n)])`
-/

namespace A245935.P13799423057164769554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245934 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A245935.P13799423057164769554

/-!
# A245936: Limit-reverse of the Kolakoski sequence (A000002), with first term as initial block.

The programs for A245936, there is no canonical definition to state claims against.
-/

/-! ## A245936.P17423770948233774387

`A000002(abs(96-n)+1)`
-/

namespace A245936.P17423770948233774387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (|96 - (n : ℤ)| + 1).toNat

end

end A245936.P17423770948233774387

/-! ## A245936.P1167264696486604500

`2-A078650(abs(96-n)+1)`
-/

namespace A245936.P1167264696486604500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A078650 (|96 - (n : ℤ)| + 1).toNat

end

end A245936.P1167264696486604500

/-! ## A245936.P13757626594274199981

`A123594(abs(96-n)+3)+1`
-/

namespace A245936.P13757626594274199981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (|96 - (n : ℤ)| + 3).toNat + 1

end

end A245936.P13757626594274199981

/-! ## A245936.P8314672145085687465

`3-A049705(abs(96-n)+1)`
-/

namespace A245936.P8314672145085687465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (|96 - (n : ℤ)| + 1).toNat

end

end A245936.P8314672145085687465

/-! ## A245936.P3372427628520496865

`gcd(2, A156253(abs(96-n)+1))`
-/

namespace A245936.P3372427628520496865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A156253 (|96 - (n : ℤ)| + 1).toNat)

end

end A245936.P3372427628520496865

/-! ## A245936.P7636803833853537947

`A006928(round(sqrt((96-n)²+1)))`
-/

namespace A245936.P7636803833853537947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (SequenceMachineLib.roundAway (Real.sqrt ((96 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat

end

end A245936.P7636803833853537947

/-! ## A245936.P5358889370344879537

`A078880(round(sqrt((96-n)²+1)))`
-/

namespace A245936.P5358889370344879537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (SequenceMachineLib.roundAway (Real.sqrt ((96 - (n : ℤ)) ^ 2 + 1 : ℝ))).toNat

end

end A245936.P5358889370344879537

/-! ## A245936.P7038324090187214630

`abs(Δ[A054353(abs(96-n)+1)])`
-/

namespace A245936.P7038324090187214630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (|96 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245936.P7038324090187214630

/-! ## A245936.P14081171857190828392

`2^Δ[A074286(abs(96-n)+1)]²`
-/

namespace A245936.P14081171857190828392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (|96 - (n : ℤ)| + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f1 (n + 1) - f1 n) ^ 2 : ℤ)

end

end A245936.P14081171857190828392

/-! ## A245936.P16345354953633297249

`A000002(A178914(n+3))!`
-/

namespace A245936.P16345354953633297249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (A178914 (n + 3)).toNat).toNat

end

end A245936.P16345354953633297249

/-!
# A245938: Limit-reverse of the Thue-Morse sequence (A010060), with first term as initial block.

The programs for A245938, there is no canonical definition to state claims against.
-/

/-! ## A245938.P364565720018929133

`char[xor(n, 2*n)-155]`
-/

namespace A245938.P364565720018929133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - 155

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A245938.P364565720018929133

/-! ## A245938.P17695182196469760069

`(∑[val(19*n+1, 2)]+n)%2`
-/

namespace A245938.P17695182196469760069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (19 * n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) % 2

end

end A245938.P17695182196469760069

/-! ## A245938.P18058747304714358078

`comp[xor(n-1, 2*n)-52]%2`
-/

namespace A245938.P18058747304714358078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ) - 52

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A245938.P18058747304714358078

/-! ## A245938.P8350315614644779814

`and(1, comp[xor(n-1, 2*n)-52])`
-/

namespace A245938.P8350315614644779814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (2 * n : ℤ) - 52

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A245938.P8350315614644779814

/-! ## A245938.P6753296110756139082

`record[val(n, 2)-a(n-1)]%2` with `a(0)=48, a(1)=2`
-/

namespace A245938.P6753296110756139082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [48, 2] fun n f1 =>
  (SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A245938.P6753296110756139082

/-! ## A245938.P6023526883396948111

`A010060(n+27)`
-/

namespace A245938.P6023526883396948111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 27)

end

end A245938.P6023526883396948111

/-! ## A245938.P16524181554077939110

`A269027(n+49)`
-/

namespace A245938.P16524181554077939110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (n + 49)

end

end A245938.P16524181554077939110

/-! ## A245938.P15038744233057941642

`A059448(n+91)`
-/

namespace A245938.P15038744233057941642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (n + 91)

end

end A245938.P15038744233057941642

/-! ## A245938.P308344948243300418

`A010059(A096582(n+1))`
-/

namespace A245938.P308344948243300418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A096582 (n + 1)).toNat

end

end A245938.P308344948243300418

/-!
# A245940: a(n) = (2n^7 + 4n^6 - n^5 - 4n^4 - n^3) / 24.

The programs for A245940, the canonical program `A245940.P6596902786054107000` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245940 has offset 0).

The definition of A245940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245940.P6596902786054107000

`n^3*(n-1)*(n+1)*(2*n²+4*n+1)/24`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245940

/-- `n^3*(n-1)*(n+1)*(2*n²+4*n+1)/24` -/
def P6596902786054107000.Spec : Prop :=
  ∀ n, P6596902786054107000.a n = (A245940 n : ℚ)

end A245940

/-! ## A245940.P7095659084835781077

`(2*n^7+4*n^6-n^5-4*n^4-n^3)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245940.P7095659084835781077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 7 + 4 * n ^ 6 : ℤ) - (n ^ 5 : ℤ) - (4 * n ^ 4 : ℤ) - (n ^ 3 : ℤ) : ℚ) / 24

end

end A245940.P7095659084835781077

namespace A245940

/-- `(2*n^7+4*n^6-n^5-4*n^4-n^3)/24` -/
def P7095659084835781077.Spec : Prop :=
  ∀ n, P7095659084835781077.a n = (A245940 n : ℚ)

end A245940

/-! ## A245940.P12598866885936327569

`A001296(n)*A005900(n)-A000330(n)²`
-/

namespace A245940.P12598866885936327569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n * A005900 n - A000330 n ^ 2

end

end A245940.P12598866885936327569

namespace A245940

/-- `A001296(n)*A005900(n)-A000330(n)²` -/
def P12598866885936327569.Spec : Prop :=
  ∀ n, P12598866885936327569.a n = A245940 n

end A245940

/-! ## A245940.P1933749769958628104

`A001296(n)*A005900(n)-Δ[A002415(n)]²`
-/

namespace A245940.P1933749769958628104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n * A005900 n - (f1 (n + 1) - f1 n) ^ 2

end

end A245940.P1933749769958628104

namespace A245940

/-- `A001296(n)*A005900(n)-Δ[A002415(n)]²` -/
def P1933749769958628104.Spec : Prop :=
  ∀ n, P1933749769958628104.a n = A245940 n

end A245940

/-!
# A245941: a(n) = (16n^6 - 24n^5 + 2n^4 + 11n^3 - 6n^2 + n) / 6.

The programs for A245941, the canonical program `A245941.P18381328162344710052` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245941 has offset 0).

The definition of A245941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245941.P18381328162344710052

`(n-1)*n*(2*n-1)*(8*n^3-3*n+1)/6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245941

/-- `(n-1)*n*(2*n-1)*(8*n^3-3*n+1)/6` -/
def P18381328162344710052.Spec : Prop :=
  ∀ n, P18381328162344710052.a n = (A245941 n : ℚ)

end A245941

/-! ## A245941.P5783671091457674196

`(16*n^6-24*n^5+2*n^4+11*n^3-6*n²+n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245941.P5783671091457674196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * n ^ 6 : ℤ) - (24 * n ^ 5 : ℤ) + (2 * n ^ 4 : ℤ) + (11 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (n : ℤ) : ℚ) / 6

end

end A245941.P5783671091457674196

namespace A245941

/-- `(16*n^6-24*n^5+2*n^4+11*n^3-6*n²+n)/6` -/
def P5783671091457674196.Spec : Prop :=
  ∀ n, P5783671091457674196.a n = (A245941 n : ℚ)

end A245941

/-! ## A245941.P14867505102024020632

`A245826((1-n)²+n²)`
-/

namespace A245941.P14867505102024020632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245826 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A245941.P14867505102024020632

namespace A245941

/-- `A245826((1-n)²+n²)` -/
def P14867505102024020632.Spec : Prop :=
  ∀ n, P14867505102024020632.a n = A245941 n

end A245941

/-!
# A245943: Irregular triangle read by rows of a variation of the Collatz iteration with signature (1,2).

The programs for A245943, there is no canonical definition to state claims against.
-/

/-! ## A245943.P14415242664893847283

`A235795(n+1)+2`
-/

namespace A245943.P14415242664893847283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235795 (n + 1) + 2

end

end A245943.P14415242664893847283

/-! ## A245943.P595932779301263200

`A009056(A235795(n+1))`
-/

namespace A245943.P595932779301263200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A235795 (n + 1)).toNat

end

end A245943.P595932779301263200

/-!
# A245945: Number of length n+3 0..2 arrays with some pair in every consecutive four terms totalling exactly 2.

The programs for A245945, there is no canonical definition to state claims against.
-/

/-! ## A245945.P17141916434656013784

`A245950(∑[n+2])`
-/

namespace A245945.P17141916434656013784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245945.P17141916434656013784

/-! ## A245945.P973876439546917355

`or(1, A245950(A000096(n+1)))`
-/

namespace A245945.P973876439546917355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245950 (A000096 (n + 1)).toNat)

end

end A245945.P973876439546917355

/-! ## A245945.P4327926883534481743

`record[A245950(A000096(A126759(n)))]`
-/

namespace A245945.P4327926883534481743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P4327926883534481743

/-! ## A245945.P11973675234055242893

`record[A245950(A000096(A003963(n+1)))]`
-/

namespace A245945.P11973675234055242893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P11973675234055242893

/-! ## A245945.P17193906036687325798

`record[A245950(A000096(A004736(n+1)))]`
-/

namespace A245945.P17193906036687325798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P17193906036687325798

/-! ## A245945.P13696411995538682694

`record[A245950(A000096(A058933(n+1)))]`
-/

namespace A245945.P13696411995538682694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P13696411995538682694

/-! ## A245945.P9274669635232318060

`record[A245950(A000096(A198788(n+1)))]`
-/

namespace A245945.P9274669635232318060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A198788 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P9274669635232318060

/-! ## A245945.P11895093585290286284

`record[A245950(A000096(A253146(n+1)))]`
-/

namespace A245945.P11895093585290286284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A253146 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P11895093585290286284

/-! ## A245945.P14844901401791057587

`record[A245950(A000096(A004739(n+1)))]`
-/

namespace A245945.P14844901401791057587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A004739 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P14844901401791057587

/-! ## A245945.P9232114398019774472

`record[A245950(A000096(A112543(n+1)))]`
-/

namespace A245945.P9232114398019774472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (A112543 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245945.P9232114398019774472

/-!
# A245946: Number of length n+3 0..4 arrays with some pair in every consecutive four terms totalling exactly 4.

The programs for A245946, there is no canonical definition to state claims against.
-/

/-! ## A245946.P2665008190356362614

`A245950(A055998(n+2))`
-/

namespace A245946.P2665008190356362614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A055998 (n + 2)).toNat

end

end A245946.P2665008190356362614

/-! ## A245946.P16782911921287790519

`A245950(A155212(n)+5)`
-/

namespace A245946.P16782911921287790519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A155212 n + 5).toNat

end

end A245946.P16782911921287790519

/-! ## A245946.P3137681351886312740

`A245950(Δ[A034857(n+1)])`
-/

namespace A245946.P3137681351886312740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n).toNat

end

end A245946.P3137681351886312740

/-! ## A245946.P1192086786134950633

`A245950(A052905(n+1)+2)`
-/

namespace A245946.P1192086786134950633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A052905 (n + 1) + 2).toNat

end

end A245946.P1192086786134950633

/-! ## A245946.P16321173158583388516

`A245950(A051936(n+4)+6)`
-/

namespace A245946.P16321173158583388516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A051936 (n + 4) + 6).toNat

end

end A245946.P16321173158583388516

/-! ## A245946.P9184674225592193931

`A245950(A167614(n+1)+Δ[n²])`
-/

namespace A245946.P9184674225592193931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A245946.P9184674225592193931

/-! ## A245946.P14231954968111444031

`A245950(A167499(n)+A016777(n))`
-/

namespace A245946.P14231954968111444031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167499 n + A016777 n).toNat

end

end A245946.P14231954968111444031

/-! ## A245946.P14335217810286116566

`A245950(A020742(2*n)+A000217(n))`
-/

namespace A245946.P14335217810286116566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A020742 (2 * n) + A000217 n).toNat

end

end A245946.P14335217810286116566

/-!
# A245947: Number of length n+3 0..5 arrays with some pair in every consecutive four terms totalling exactly 5.

The programs for A245947, there is no canonical definition to state claims against.
-/

/-! ## A245947.P14231140111000107289

`A245950(A046691(n+3))`
-/

namespace A245947.P14231140111000107289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A046691 (n + 3)).toNat

end

end A245947.P14231140111000107289

/-! ## A245947.P13611054040588193774

`A245950(Δ[A023545(n+1)])`
-/

namespace A245947.P13611054040588193774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n).toNat

end

end A245947.P13611054040588193774

/-! ## A245947.P8145504261263051088

`A245950(A052905(n+2)+1)`
-/

namespace A245947.P8145504261263051088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A052905 (n + 2) + 1).toNat

end

end A245947.P8145504261263051088

/-! ## A245947.P16700926048896738870

`A245950(A000217(n+5)-4)`
-/

namespace A245947.P16700926048896738870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000217 (n + 5) - 4).toNat

end

end A245947.P16700926048896738870

/-! ## A245947.P6989796379653976026

`A245950(A000124(n+5)-5)`
-/

namespace A245947.P6989796379653976026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000124 (n + 5) - 5).toNat

end

end A245947.P6989796379653976026

/-! ## A245947.P5074341953512018124

`A245950(Δ[A034857(n+2)]-1)`
-/

namespace A245947.P5074341953512018124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n - 1).toNat

end

end A245947.P5074341953512018124

/-! ## A245947.P4419010280991990722

`A245950(A034856(n+1)+3*n+10)`
-/

namespace A245947.P4419010280991990722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A034856 (n + 1) + (3 * n + 10 : ℤ)).toNat

end

end A245947.P4419010280991990722

/-!
# A245948: Number of length n+3 0..6 arrays with some pair in every consecutive four terms totalling exactly 6.

The programs for A245948, there is no canonical definition to state claims against.
-/

/-! ## A245948.P4847373246854592405

`A245950(A052905(n+3))`
-/

namespace A245948.P4847373246854592405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A052905 (n + 3)).toNat

end

end A245948.P4847373246854592405

/-! ## A245948.P11199166260380167906

`A245950(A046691(n+4)-1)`
-/

namespace A245948.P11199166260380167906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A046691 (n + 4) - 1).toNat

end

end A245948.P11199166260380167906

/-! ## A245948.P5933069458345026844

`A245950(A000217(n+6)-5)`
-/

namespace A245948.P5933069458345026844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000217 (n + 6) - 5).toNat

end

end A245948.P5933069458345026844

/-! ## A245948.P3068509258193030897

`A245950(A000124(n+6)-6)`
-/

namespace A245948.P3068509258193030897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000124 (n + 6) - 6).toNat

end

end A245948.P3068509258193030897

/-! ## A245948.P1082203977409053693

`A245950(Δ[Δ[A006504(n+1)]])`
-/

namespace A245948.P1082203977409053693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n).toNat

end

end A245948.P1082203977409053693

/-! ## A245948.P11155845644062846778

`A245950(Δ[A023545(n+2)]-1)`
-/

namespace A245948.P11155845644062846778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n - 1).toNat

end

end A245948.P11155845644062846778

/-! ## A245948.P12983210781656493234

`A245950(A005843(n+3)+A000217(n+4))`
-/

namespace A245948.P12983210781656493234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A005843 (n + 3) + A000217 (n + 4)).toNat

end

end A245948.P12983210781656493234

/-!
# A245949: Number of length n+3 0..7 arrays with some pair in every consecutive four terms totalling exactly 7.

The programs for A245949, there is no canonical definition to state claims against.
-/

/-! ## A245949.P10416665288227456948

`A245950(A055999(n+4))`
-/

namespace A245949.P10416665288227456948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A055999 (n + 4)).toNat

end

end A245949.P10416665288227456948

/-! ## A245949.P10488462626661593911

`A245950(A000124(n+7)-7)`
-/

namespace A245949.P10488462626661593911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000124 (n + 7) - 7).toNat

end

end A245949.P10488462626661593911

/-! ## A245949.P896242797522456975

`A245950(A134869(n+7)-7)`
-/

namespace A245949.P896242797522456975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A134869 (n + 7) - 7).toNat

end

end A245949.P896242797522456975

/-! ## A245949.P4760985119036182730

`A245950(A000217(n+6)+n+1)`
-/

namespace A245949.P4760985119036182730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A245949.P4760985119036182730

/-! ## A245949.P15284914380510700370

`A245950(A055998(n+4)+n+4)`
-/

namespace A245949.P15284914380510700370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A245949.P15284914380510700370

/-! ## A245949.P14921041659415090511

`A245950(A161680(n+7)+n+1)`
-/

namespace A245949.P14921041659415090511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A245949.P14921041659415090511

/-! ## A245949.P9922337078731320272

`A245950(Δ[A023545(n+2)]+n+5)`
-/

namespace A245949.P9922337078731320272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n + (n + 5 : ℤ)).toNat

end

end A245949.P9922337078731320272

/-! ## A245949.P16069847626858844246

`A245950(A020742(n)+A000217(n+5))`
-/

namespace A245949.P16069847626858844246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A020742 n + A000217 (n + 5)).toNat

end

end A245949.P16069847626858844246

/-!
# A245951: Number of length 1+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245951, there is no canonical definition to state claims against.
-/

/-! ## A245951.P4701017255495028640

`(n+2)²²-A246480(n+1)`
-/

namespace A245951.P4701017255495028640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2) ^ 2 : ℤ) - A246480 (n + 1)

end

end A245951.P4701017255495028640

/-! ## A245951.P6787685761008788061

`A245950(∑[n]+1)`
-/

namespace A245951.P6787685761008788061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245951.P6787685761008788061

/-! ## A245951.P9582672689732344002

`record[A010054(n)*A245950(n+1)]`
-/

namespace A245951.P9582672689732344002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A245950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245951.P9582672689732344002

/-! ## A245951.P8193179643164576359

`record[gcd(A002262(n), A245950(n+1))]`
-/

namespace A245951.P8193179643164576359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A245950 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245951.P8193179643164576359

/-! ## A245951.P12521340826365884105

`char[A061579(n)]*A245950(A000124(n))`
-/

namespace A245951.P12521340826365884105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A245950 (A000124 n).toNat

end

end A245951.P12521340826365884105

/-! ## A245951.P3266467263019524113

`A245950(A000124(n))%A245945(n+1)`
-/

namespace A245951.P3266467263019524113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (A000124 n).toNat) (A245945 (n + 1))

end

end A245951.P3266467263019524113

/-! ## A245951.P10818562434268678520

`record[A245950(n+1)/A201552(n+1)]`
-/

namespace A245951.P10818562434268678520
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245950 (n + 1) : ℚ) / (A201552 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245951.P10818562434268678520

/-! ## A245951.P7094619347709337667

`record[A245950(n+1)/A299504(n)]`
-/

namespace A245951.P7094619347709337667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245950 (n + 1) : ℚ) / (A299504 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245951.P7094619347709337667

/-!
# A245952: Number of length 2+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245952, there is no canonical definition to state claims against.
-/

/-! ## A245952.P17835647301601279882

`A245950(∑[n+1]+2)`
-/

namespace A245952.P17835647301601279882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A245952.P17835647301601279882

/-! ## A245952.P13491266711609769833

`A245950(C(n+2, 2)+2)%A050278(n+1)`
-/

namespace A245952.P13491266711609769833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (Nat.choose (n + 2) 2 + 2)) (A050278 (n + 1))

end

end A245952.P13491266711609769833

/-! ## A245952.P16089507067853493458

`A245950(C(n+2, 2)+2)+A142150(2*n+1)`
-/

namespace A245952.P16089507067853493458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (Nat.choose (n + 2) 2 + 2) + A142150 (2 * n + 1)

end

end A245952.P16089507067853493458

/-! ## A245952.P6788577496423219187

`A245950(A133263(n+1))%A245953(n+1)`
-/

namespace A245952.P6788577496423219187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (A133263 (n + 1)).toNat) (A245953 (n + 1))

end

end A245952.P6788577496423219187

/-! ## A245952.P4078727216977681783

`A000041(C(2, n+2))*A245950(A133263(n+1))`
-/

namespace A245952.P4078727216977681783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A245950 (A133263 (n + 1)).toNat

end

end A245952.P4078727216977681783

/-!
# A245953: Number of length 3+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245953, there is no canonical definition to state claims against.
-/

/-! ## A245953.P12850536397350237606

`A245950(∑[n+2]+4)`
-/

namespace A245953.P12850536397350237606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A245953.P12850536397350237606

/-! ## A245953.P625353543371464230

`or(A000035(n), A245950(A167614(n+1)))`
-/

namespace A245953.P625353543371464230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A245950 (A167614 (n + 1)).toNat)

end

end A245953.P625353543371464230

/-! ## A245953.P13301257164822725735

`A245950(A167499(n)+n)%A017466(n)`
-/

namespace A245953.P13301257164822725735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (A167499 n + (n : ℤ)).toNat) (A017466 n)

end

end A245953.P13301257164822725735

/-! ## A245953.P9484797481498516354

`A245950(A167614(n+1))%A214354(n+1)`
-/

namespace A245953.P9484797481498516354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (A167614 (n + 1)).toNat) (A214354 (n + 1))

end

end A245953.P9484797481498516354

/-! ## A245953.P16893916693150712867

`or(A000035(n), A245950(A000096(n+1)+4))`
-/

namespace A245953.P16893916693150712867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A245950 (A000096 (n + 1) + 4).toNat)

end

end A245953.P16893916693150712867

/-! ## A245953.P7526550792845617604

`A245950(A000096(n+1)+4)+A000007(n+1)`
-/

namespace A245953.P7526550792845617604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000096 (n + 1) + 4).toNat + A000007 (n + 1)

end

end A245953.P7526550792845617604

/-! ## A245953.P10429122502926909773

`A245950(A000124(n+2)+2)%A234675(n+1)`
-/

namespace A245953.P10429122502926909773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (A000124 (n + 2) + 2).toNat) (A234675 (n + 1))

end

end A245953.P10429122502926909773

/-! ## A245953.P16237469053389622640

`A245950(A000096(n+1)+4)%A245949(n+1)`
-/

namespace A245953.P16237469053389622640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245950 (A000096 (n + 1) + 4).toNat) (A245949 (n + 1))

end

end A245953.P16237469053389622640

/-! ## A245953.P14258985228012016582

`A000108(C(2, n+2))*A245950(A167614(n+1))`
-/

namespace A245953.P14258985228012016582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A245950 (A167614 (n + 1)).toNat

end

end A245953.P14258985228012016582

/-! ## A245953.P1710253773609968088

`A007318((n²+n)/2)*A245950(A167614(n+1))`
-/

namespace A245953.P1710253773609968088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat * A245950 (A167614 (n + 1)).toNat

end

end A245953.P1710253773609968088

/-! ## A245953.P6967568556134009417

`A245950(A167614(n+1))+A162397(A008585(n+1))`
-/

namespace A245953.P6967568556134009417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167614 (n + 1)).toNat + A162397 (A008585 (n + 1)).toNat

end

end A245953.P6967568556134009417

/-!
# A245954: Number of length 4+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245954, there is no canonical definition to state claims against.
-/

/-! ## A245954.P9436516351777546470

`A245950(A052905(n)+9)`
-/

namespace A245954.P9436516351777546470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A052905 n + 9).toNat

end

end A245954.P9436516351777546470

/-! ## A245954.P13233192315296427353

`A245950(A055999(n)+10)`
-/

namespace A245954.P13233192315296427353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A055999 n + 10).toNat

end

end A245954.P13233192315296427353

/-! ## A245954.P1150301801334841155

`A245950(A167614(n+2)+1)`
-/

namespace A245954.P1150301801334841155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167614 (n + 2) + 1).toNat

end

end A245954.P1150301801334841155

/-! ## A245954.P153562621364272359

`A245950(A166136(n+2)-2)`
-/

namespace A245954.P153562621364272359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A166136 (n + 2) - 2).toNat

end

end A245954.P153562621364272359

/-! ## A245954.P8013992002190112314

`A245950(A167487(n+2)-3)`
-/

namespace A245954.P8013992002190112314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167487 (n + 2) - 3).toNat

end

end A245954.P8013992002190112314

/-! ## A245954.P14975549171464662468

`A245950(A166136(n+1)+1+n)`
-/

namespace A245954.P14975549171464662468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A245954.P14975549171464662468

/-! ## A245954.P384837234955484754

`A245950(Δ[A023545(n+1)-n²])`
-/

namespace A245954.P384837234955484754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (f1 (n + 1) - f1 n).toNat

end

end A245954.P384837234955484754

/-! ## A245954.P3253668351431021469

`A245950(A034856(n+1)+A020723(n))`
-/

namespace A245954.P3253668351431021469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A034856 (n + 1) + A020723 n).toNat

end

end A245954.P3253668351431021469

/-! ## A245954.P13378006020091964384

`A245950(A020742(n+1)+A000217(n+1))`
-/

namespace A245954.P13378006020091964384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A020742 (n + 1) + A000217 (n + 1)).toNat

end

end A245954.P13378006020091964384

/-!
# A245955: Number of length 5+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245955, there is no canonical definition to state claims against.
-/

/-! ## A245955.P14892298494057852047

`A245950(A167499(n+3))`
-/

namespace A245955.P14892298494057852047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167499 (n + 3)).toNat

end

end A245955.P14892298494057852047

/-! ## A245955.P14859686936508244735

`A245950(A077169(n+5))`
-/

namespace A245955.P14859686936508244735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A077169 (n + 5)).toNat

end

end A245955.P14859686936508244735

/-! ## A245955.P8753947772082228501

`A245950(A155212(n)+13)`
-/

namespace A245955.P8753947772082228501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A155212 n + 13).toNat

end

end A245955.P8753947772082228501

/-! ## A245955.P12440830025831944470

`A245950(A167614(n+3)+2)`
-/

namespace A245955.P12440830025831944470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167614 (n + 3) + 2).toNat

end

end A245955.P12440830025831944470

/-! ## A245955.P14992169686702888110

`A245950(A000124(n+4)+4)`
-/

namespace A245955.P14992169686702888110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000124 (n + 4) + 4).toNat

end

end A245955.P14992169686702888110

/-! ## A245955.P8724865584979458167

`A245950(A051936(n+4)+14)`
-/

namespace A245955.P8724865584979458167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A051936 (n + 4) + 14).toNat

end

end A245955.P8724865584979458167

/-! ## A245955.P12105163754375555771

`A245950(A052905(n+3)-(2*n+1))`
-/

namespace A245955.P12105163754375555771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A245955.P12105163754375555771

/-!
# A245956: Number of length 6+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245956, there is no canonical definition to state claims against.
-/

/-! ## A245956.P15898475817493386819

`A245950(A166136(n+4))`
-/

namespace A245956.P15898475817493386819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A166136 (n + 4)).toNat

end

end A245956.P15898475817493386819

/-! ## A245956.P1007201751810525917

`A245950(A056115(n)+21)`
-/

namespace A245956.P1007201751810525917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A056115 n + 21).toNat

end

end A245956.P1007201751810525917

/-! ## A245956.P1822862388273621048

`A245950(A167614(n+4)+3)`
-/

namespace A245956.P1822862388273621048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167614 (n + 4) + 3).toNat

end

end A245956.P1822862388273621048

/-! ## A245956.P13196326268780302623

`A245950(A000124(n+5)+5)`
-/

namespace A245956.P13196326268780302623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000124 (n + 5) + 5).toNat

end

end A245956.P13196326268780302623

/-! ## A245956.P10060955612612178244

`A245950(A000217(n+5)+6)`
-/

namespace A245956.P10060955612612178244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000217 (n + 5) + 6).toNat

end

end A245956.P10060955612612178244

/-! ## A245956.P15518827610848771333

`A245950(A134869(n+6)-(n+1))`
-/

namespace A245956.P15518827610848771333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A134869 (n + 6) - (n + 1 : ℤ)).toNat

end

end A245956.P15518827610848771333

/-!
# A245957: Number of length 7+3 0..n arrays with some pair in every consecutive four terms totalling exactly n.

The programs for A245957, there is no canonical definition to state claims against.
-/

/-! ## A245957.P8304520454184269917

`A245950(A167487(n+5))`
-/

namespace A245957.P8304520454184269917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A167487 (n + 5)).toNat

end

end A245957.P8304520454184269917

/-! ## A245957.P8588783585199192839

`A245950(A133263(n+6)+5)`
-/

namespace A245957.P8588783585199192839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A133263 (n + 6) + 5).toNat

end

end A245957.P8588783585199192839

/-! ## A245957.P6006066007471598423

`A245950(A000217(n+6)+7)`
-/

namespace A245957.P6006066007471598423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000217 (n + 6) + 7).toNat

end

end A245957.P6006066007471598423

/-! ## A245957.P14494111842084753274

`A245950(A052905(n+3)+12)`
-/

namespace A245957.P14494111842084753274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A052905 (n + 3) + 12).toNat

end

end A245957.P14494111842084753274

/-! ## A245957.P6947454859087842170

`A245950(A000124(n+7)-(n+1))`
-/

namespace A245957.P6947454859087842170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245950 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A245957.P6947454859087842170

/-!
# A245958: Number T(n,k) of endofunctions f on [n] satisfying f^3(i) = i for all i in [k]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A245958, there is no canonical definition to state claims against.
-/

/-! ## A245958.P7222285431954451735

`A158835(n+1)+A010873(A220761(2*(n+1)))`
-/

namespace A245958.P7222285431954451735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158835 (n + 1) + A010873 (A220761 (2 * (n + 1))).toNat

end

end A245958.P7222285431954451735

/-!
# A245959: Number of endofunctions f on [2n] satisfying f^3(i) = i for all i in [n].

The programs for A245959, there is no canonical definition to state claims against.
-/

/-! ## A245959.P14921200136871461082

`A245958(∑[4*n])`
-/

namespace A245959.P14921200136871461082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245958 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245959.P14921200136871461082

/-! ## A245959.P2548527935633993453

`A245958(A046092(n))*A304042(n)`
-/

namespace A245959.P2548527935633993453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245958 (A046092 n).toNat * A304042 n

end

end A245959.P2548527935633993453

/-! ## A245959.P7781246873696980074

`A245958(A046092(n))^A178334(n)`
-/

namespace A245959.P7781246873696980074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245958 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A245959.P7781246873696980074

/-! ## A245959.P5473229172486697483

`gcd(A151933(n), A245958(A046092(n)))`
-/

namespace A245959.P5473229172486697483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A245958 (A046092 n).toNat)

end

end A245959.P5473229172486697483

/-! ## A245959.P6682372122983184020

`lcm(A004277(n), A245958(A046092(n)))`
-/

namespace A245959.P6682372122983184020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 n) (A245958 (A046092 n).toNat)

end

end A245959.P6682372122983184020

/-!
# A245960: Triangle read by rows: T(n,k) is the number of the vertices of the Lucas cube H_n having degree k (0<=k<=n).

The programs for A245960, there is no canonical definition to state claims against.
-/

/-! ## A245960.P16846588596457922624

`and(A007318(n), A303197(A077765(n)))`
-/

namespace A245960.P16846588596457922624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A303197 (A077765 n).toNat)

end

end A245960.P16846588596457922624

/-! ## A245960.P16961471093440934727

`and(A324768(A114176(n)), A359634(n))`
-/

namespace A245960.P16961471093440934727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324768 (A114176 n).toNat) (A359634 n)

end

end A245960.P16961471093440934727

/-! ## A245960.P6920952207778943603

`A109449(n)*A170967(A345167(n+1))`
-/

namespace A245960.P6920952207778943603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 n * A170967 (A345167 (n + 1)).toNat

end

end A245960.P6920952207778943603

/-! ## A245960.P11701932418104030743

`and(A128629(n+1), A303197(A077765(n)))`
-/

namespace A245960.P11701932418104030743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128629 (n + 1)) (A303197 (A077765 n).toNat)

end

end A245960.P11701932418104030743

/-! ## A245960.P9160157918165984694

`and(A073093(A001405(n)), A141690(n))`
-/

namespace A245960.P9160157918165984694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073093 (A001405 n).toNat) (A141690 n)

end

end A245960.P9160157918165984694

/-!
# A245961: Number of 4-cycles in the Lucas cube Lambda(n).

The programs for A245961, the canonical program `A245961.P9851282285763234093` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245961 has offset 0).

The definition of A245961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245961.P9851282285763234093

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245961

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P9851282285763234093.Spec : Prop :=
  ∀ n, P9851282285763234093.a n = A245961 n

theorem P9851282285763234093.correct : P9851282285763234093.Spec := by
  intro n
  simp only [A245961]

end A245961

/-! ## A245961.P459532622228445199

`n/2*A001629(abs(2-n))`
-/

namespace A245961.P459532622228445199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A001629 |2 - (n : ℤ)|.toNat : ℚ)

end

end A245961.P459532622228445199

namespace A245961

/-- `n/2*A001629(abs(2-n))` -/
def P459532622228445199.Spec : Prop :=
  ∀ n, P459532622228445199.a n = (A245961 n : ℚ)

end A245961

/-! ## A245961.P2284174484178369861

`n*(A029907(n)-A029907(n+1)/2)`
-/

namespace A245961.P2284174484178369861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A029907 n : ℚ) - (A029907 (n + 1) : ℚ) / 2)

end

end A245961.P2284174484178369861

namespace A245961

/-- `n*(A029907(n)-A029907(n+1)/2)` -/
def P2284174484178369861.Spec : Prop :=
  ∀ n, P2284174484178369861.a n = (A245961 n : ℚ)

end A245961

/-! ## A245961.P2147178718151003608

`n*A001629(A289207(n))/2`
-/

namespace A245961.P2147178718151003608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A001629 (A289207 n).toNat : ℚ) / 2

end

end A245961.P2147178718151003608

namespace A245961

/-- `n*A001629(A289207(n))/2` -/
def P2147178718151003608.Spec : Prop :=
  ∀ n, P2147178718151003608.a n = (A245961 n : ℚ)

end A245961

/-! ## A245961.P3547174369437759053

`A052938(n*A001629(abs(2-n)))-1`
-/

namespace A245961.P3547174369437759053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 ((n : ℤ) * A001629 |2 - (n : ℤ)|.toNat).toNat - 1

end

end A245961.P3547174369437759053

namespace A245961

/-- `A052938(n*A001629(abs(2-n)))-1` -/
def P3547174369437759053.Spec : Prop :=
  ∀ n, P3547174369437759053.a n = A245961 n

end A245961

/-!
# A245963: Triangle read by rows: T(n,k) is the number of maximal hypercubes Q(p) in the Fibonacci cube Gamma(n) (i.e., Q(p) is an induced subgraph of Gamma(n) that is not a subgraph of a subgraph of Gamma(n) that is isomorphic to the hypercube Q(p+1)).

The programs for A245963, the canonical program `A245963.P17810080779370420082` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245963 has offset 0).

The definition of A245963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245963.P17810080779370420082

`A030528(A056536(n+2))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A245963

/-- `A030528(A056536(n+2))` -/
def P17810080779370420082.Spec : Prop :=
  ∀ n, P17810080779370420082.a n = A245963 n

theorem P17810080779370420082.correct : P17810080779370420082.Spec := by
  intro n
  simp only [A245963]

end A245963

/-! ## A245963.P1973180804219798607

`A030528(A091018(n+1)+1)`
-/

namespace A245963.P1973180804219798607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (A091018 (n + 1) + 1).toNat

end

end A245963.P1973180804219798607

namespace A245963

/-- `A030528(A091018(n+1)+1)` -/
def P1973180804219798607.Spec : Prop :=
  ∀ n, P1973180804219798607.a n = A245963 n

end A245963

/-! ## A245963.P17827702535485776454

`A124788(lt[1, A100257(n)])`
-/

namespace A245963.P17827702535485776454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A245963.P17827702535485776454

namespace A245963

/-- `A124788(lt[1, A100257(n)])` -/
def P17827702535485776454.Spec : Prop :=
  ∀ n, P17827702535485776454.a n = A245963 n

end A245963

/-! ## A245963.P14189819497083283257

`A124788(lt[A066005(n), A196837(n+1)])`
-/

namespace A245963.P14189819497083283257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245963.P14189819497083283257

namespace A245963

/-- `A124788(lt[A066005(n), A196837(n+1)])` -/
def P14189819497083283257.Spec : Prop :=
  ∀ n, P14189819497083283257.a n = A245963 n

end A245963

/-! ## A245963.P15482438228963960154

`A124788(lt[2, A163626(n)])`
-/

namespace A245963.P15482438228963960154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A245963.P15482438228963960154

namespace A245963

/-- `A124788(lt[2, A163626(n)])` -/
def P15482438228963960154.Spec : Prop :=
  ∀ n, P15482438228963960154.a n = A245963 n

end A245963

/-!
# A245964: Triangle read by rows: T(n,k) is the number of maximal hypercubes Q(p) in the Lucas cube Lambda(n) (i.e., Q(p) is an induced subgraph of Lambda(n) that is not a subgraph of a subgraph of Lambda(n) that is isomorphic to the hypercube Q(p+1)).

The programs for A245964, there is no canonical definition to state claims against.
-/

/-! ## A245964.P868217650872435190

`A265333(A065455(n))*A325765(n)`
-/

namespace A245964.P868217650872435190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 (A065455 n).toNat * A325765 n

end

end A245964.P868217650872435190

/-! ## A245964.P10225696595013745331

`A265333(A068912(n))*A325765(n)`
-/

namespace A245964.P10225696595013745331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 (A068912 n).toNat * A325765 n

end

end A245964.P10225696595013745331

/-! ## A245964.P16306765308385277919

`A014599(n+1)*A265333(A065455(n))`
-/

namespace A245964.P16306765308385277919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (n + 1) * A265333 (A065455 n).toNat

end

end A245964.P16306765308385277919

/-! ## A245964.P6748018417856402841

`A014599(n+1)*A265333(A068912(n))`
-/

namespace A245964.P6748018417856402841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (n + 1) * A265333 (A068912 n).toNat

end

end A245964.P6748018417856402841

/-! ## A245964.P17656660755841420480

`C(A236103(A135318(2*n)), A176246(n+1))`
-/

namespace A245964.P17656660755841420480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A236103 (A135318 (2 * n)).toNat).toNat (A176246 (n + 1)).toNat

end

end A245964.P17656660755841420480

/-!
# A245965: Triangle read by rows: T(n,k) is the number of tilings of a 2 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares) that have k 1 X 1 tiles.

The programs for A245965, there is no canonical definition to state claims against.
-/

/-! ## A245965.P15889789441641535209

`and(A319337(A072100(n+1)), A331816(n))`
-/

namespace A245965.P15889789441641535209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A319337 (A072100 (n + 1)).toNat) (A331816 n)

end

end A245965.P15889789441641535209

/-! ## A245965.P1194644131585293860

`and(A066272(A018910(n)), A331816(n))`
-/

namespace A245965.P1194644131585293860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066272 (A018910 n).toNat) (A331816 n)

end

end A245965.P1194644131585293860

/-! ## A245965.P14278908691550637723

`and(A072918(A022096(n)), A331816(n))`
-/

namespace A245965.P14278908691550637723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072918 (A022096 n).toNat) (A331816 n)

end

end A245965.P14278908691550637723

/-! ## A245965.P12676208680694162518

`and(A006530(A056040(n+1)), A331816(n))`
-/

namespace A245965.P12676208680694162518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A056040 (n + 1)).toNat) (A331816 n)

end

end A245965.P12676208680694162518

/-! ## A245965.P9022807445067438622

`and(A106647(A187829(n+1)), A331816(n))`
-/

namespace A245965.P9022807445067438622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106647 (A187829 (n + 1)).toNat) (A331816 n)

end

end A245965.P9022807445067438622

/-!
# A245968: The edge independence number of the Lucas cube Lambda(n).

The programs for A245968, the canonical program `A245968.P3957366743003023446` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245968 has offset 0).

The definition of A245968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245968.P3957366743003023446

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245968

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P3957366743003023446.Spec : Prop :=
  ∀ n, P3957366743003023446.a n = A245968 n

theorem P3957366743003023446.correct : P3957366743003023446.Spec := by
  intro n
  simp only [A245968]

end A245968

/-! ## A245968.P12975353617804453781

`a(n-1)+a(n-2)+n²%3` with `a(0)=0, a(1)=0`
-/

namespace A245968.P12975353617804453781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (a (n - 2) + n ^ 2 % 3)

end

end A245968.P12975353617804453781

namespace A245968

/-- `a(n-1)+a(n-2)+n²%3` -/
def P12975353617804453781.Spec : Prop :=
  ∀ n, (P12975353617804453781.a n : ℤ) = A245968 n

end A245968

/-! ## A245968.P627611505526901159

`gcd(3, n)%3+a(n-1)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A245968.P627611505526901159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.gcd 3 n % 3 + (a (n - 1) + a (n - 2))

end

end A245968.P627611505526901159

namespace A245968

/-- `gcd(3, n)%3+a(n-1)+a(n-2)` -/
def P627611505526901159.Spec : Prop :=
  ∀ n, (P627611505526901159.a n : ℤ) = A245968 n

end A245968

/-! ## A245968.P5281825587163782663

`a(n-2)+a(n-1)+(n*n)%3` with `a(0)=0, a(1)=0`
-/

namespace A245968.P5281825587163782663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + a (n - 1) + n * n % 3

end

end A245968.P5281825587163782663

namespace A245968

/-- `a(n-2)+a(n-1)+(n*n)%3` -/
def P5281825587163782663.Spec : Prop :=
  ∀ n, (P5281825587163782663.a n : ℤ) = A245968 n

end A245968

/-! ## A245968.P5771766408856199803

`A173495(n)-1`
-/

namespace A245968.P5771766408856199803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 n - 1

end

end A245968.P5771766408856199803

namespace A245968

/-- `A173495(n)-1` -/
def P5771766408856199803.Spec : Prop :=
  ∀ n, P5771766408856199803.a n = A245968 n

end A245968

/-! ## A245968.P13682924429900293130

`A000032(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A245968.P13682924429900293130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000032 (n - 2) + a (n - 3)

end

end A245968.P13682924429900293130

namespace A245968

/-- `A000032(n-2)+a(n-3)` -/
def P13682924429900293130.Spec : Prop :=
  ∀ n, P13682924429900293130.a n = A245968 n

end A245968

/-! ## A245968.P10880752267413773569

`A000071(n+1)-A004695(n)`
-/

namespace A245968.P10880752267413773569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A004695 n

end

end A245968.P10880752267413773569

namespace A245968

/-- `A000071(n+1)-A004695(n)` -/
def P10880752267413773569.Spec : Prop :=
  ∀ n, P10880752267413773569.a n = A245968 n

end A245968

/-! ## A245968.P17370823052820145010

`A000045(n+1)-A147997(n)`
-/

namespace A245968.P17370823052820145010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A147997 n

end

end A245968.P17370823052820145010

namespace A245968

/-- `A000045(n+1)-A147997(n)` -/
def P17370823052820145010.Spec : Prop :=
  ∀ n, P17370823052820145010.a n = A245968 n

end A245968

/-! ## A245968.P17137776852778118189

`A131532(n)+A226956(n)-1`
-/

namespace A245968.P17137776852778118189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 n + (A226956 n - 1)

end

end A245968.P17137776852778118189

namespace A245968

/-- `A131532(n)+A226956(n)-1` -/
def P17137776852778118189.Spec : Prop :=
  ∀ n, P17137776852778118189.a n = A245968 n

end A245968

/-! ## A245968.P9327452750668496253

`A173173(n)+A212804(n)-1`
-/

namespace A245968.P9327452750668496253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + (A212804 n - 1)

end

end A245968.P9327452750668496253

namespace A245968

/-- `A173173(n)+A212804(n)-1` -/
def P9327452750668496253.Spec : Prop :=
  ∀ n, P9327452750668496253.a n = A245968 n

end A245968

/-! ## A245968.P13137754928554032660

`A000045(n+1)-A004695(n)-1`
-/

namespace A245968.P13137754928554032660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A004695 n - 1

end

end A245968.P13137754928554032660

namespace A245968

/-- `A000045(n+1)-A004695(n)-1` -/
def P13137754928554032660.Spec : Prop :=
  ∀ n, P13137754928554032660.a n = A245968 n

end A245968

/-! ## A245968.P3679540115069103745

`A000071(n+1)-A173673(2*n)`
-/

namespace A245968.P3679540115069103745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A173673 (2 * n)

end

end A245968.P3679540115069103745

namespace A245968

/-- `A000071(n+1)-A173673(2*n)` -/
def P3679540115069103745.Spec : Prop :=
  ∀ n, P3679540115069103745.a n = A245968 n

end A245968

/-! ## A245968.P4907831174482580303

`A000071(n+1)-A104221(n)/2`
-/

namespace A245968.P4907831174482580303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) : ℚ) - (A104221 n : ℚ) / 2

end

end A245968.P4907831174482580303

namespace A245968

/-- `A000071(n+1)-A104221(n)/2` -/
def P4907831174482580303.Spec : Prop :=
  ∀ n, P4907831174482580303.a n = (A245968 n : ℚ)

end A245968

/-! ## A245968.P15386984738534084204

`A000071(n+1)-floor(A000045(n)/2)`
-/

namespace A245968.P15386984738534084204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - ⌊(A000045 n : ℚ) / 2⌋

end

end A245968.P15386984738534084204

namespace A245968

/-- `A000071(n+1)-floor(A000045(n)/2)` -/
def P15386984738534084204.Spec : Prop :=
  ∀ n, P15386984738534084204.a n = A245968 n

end A245968

/-! ## A245968.P11819734273467679583

`A000045(n+1)-(A173673(2*n)+1)`
-/

namespace A245968.P11819734273467679583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - (A173673 (2 * n) + 1)

end

end A245968.P11819734273467679583

namespace A245968

/-- `A000045(n+1)-(A173673(2*n)+1)` -/
def P11819734273467679583.Spec : Prop :=
  ∀ n, P11819734273467679583.a n = A245968 n

end A245968

/-! ## A245968.P13081093123137449427

`round((ϕ^n-ϕ)/2)`
-/

namespace A245968.P13081093123137449427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio ^ n - Real.goldenRatio) / 2)

end

end A245968.P13081093123137449427

namespace A245968

/-- `round((ϕ^n-ϕ)/2)` -/
def P13081093123137449427.Spec : Prop :=
  ∀ n, P13081093123137449427.a n = A245968 n

end A245968

/-! ## A245968.P6706216916012294337

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A245968.P6706216916012294337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A245968.P6706216916012294337

namespace A245968

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P6706216916012294337.Spec : Prop :=
  ∀ n, P6706216916012294337.a n = A245968 n

end A245968

/-! ## A245968.P5112064064699959071

`floor((A000032(n)-1)/2)`
-/

namespace A245968.P5112064064699959071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 n - 1 : ℚ) / 2⌋

end

end A245968.P5112064064699959071

namespace A245968

/-- `floor((A000032(n)-1)/2)` -/
def P5112064064699959071.Spec : Prop :=
  ∀ n, P5112064064699959071.a n = A245968 n

end A245968

/-! ## A245968.P7823463141176666314

`floor(A001612(n)/2)-1`
-/

namespace A245968.P7823463141176666314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001612 n : ℚ) / 2⌋ - 1

end

end A245968.P7823463141176666314

namespace A245968

/-- `floor(A001612(n)/2)-1` -/
def P7823463141176666314.Spec : Prop :=
  ∀ n, P7823463141176666314.a n = A245968 n

end A245968

/-! ## A245968.P17305054721193261274

`floor((A169985(n)-1)/2)`
-/

namespace A245968.P17305054721193261274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169985 n - 1 : ℚ) / 2⌋

end

end A245968.P17305054721193261274

namespace A245968

/-- `floor((A169985(n)-1)/2)` -/
def P17305054721193261274.Spec : Prop :=
  ∀ n, P17305054721193261274.a n = A245968 n

end A245968

/-!
# A245969: The average Wiener index of the set of all fibonacenes with n hexagons.

The programs for A245969, the canonical program `A245969.P4374589612733010019` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245969 has offset 3).

The definition of A245969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245969.P4374589612733010019

`4*(n+3)^3+16*(n+3)²+6*(n+3)+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245969

/-- `4*(n+3)^3+16*(n+3)²+6*(n+3)+1` -/
def P4374589612733010019.Spec : Prop :=
  ∀ n, (P4374589612733010019.a n : ℤ) = A245969 (n + 3)

theorem P4374589612733010019.correct : P4374589612733010019.Spec := by
  intro n
  simp only [A245969, Nat.add_sub_cancel]

end A245969

/-!
# A245970: Tower of 2's modulo n.

The programs for A245970, there is no canonical definition to state claims against.
-/

/-! ## A245970.P4662712649646715646

`A017120(n^3)%(n+1)`
-/

namespace A245970.P4662712649646715646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017120 (n ^ 3)) (n + 1 : ℤ)

end

end A245970.P4662712649646715646

/-! ## A245970.P9225058365447473439

`A017450(n*(∑[2*n]-1))²%(n+1)`
-/

namespace A245970.P9225058365447473439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017450 ((n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat ^ 2) (n + 1 : ℤ)

end

end A245970.P9225058365447473439

/-! ## A245970.P17879809069568123418

`A000583(A084379(n))%(n+1)`
-/

namespace A245970.P17879809069568123418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (A084379 n).toNat) (n + 1 : ℤ)

end

end A245970.P17879809069568123418

/-! ## A245970.P1651294358591226114

`A230875(A020891(n+1))%(n+1)`
-/

namespace A245970.P1651294358591226114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230875 (A020891 (n + 1)).toNat) (n + 1 : ℤ)

end

end A245970.P1651294358591226114

/-! ## A245970.P2699808061007206938

`(A005563(A211441(3*n))+1)²%(n+1)`
-/

namespace A245970.P2699808061007206938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A005563 (A211441 (3 * n)).toNat + 1) ^ 2) (n + 1 : ℤ)

end

end A245970.P2699808061007206938

/-!
# A245971: Tower of 4s mod n.

The programs for A245971, there is no canonical definition to state claims against.
-/

/-! ## A245971.P15475155926942649195

`floor(A254411(2*(n+1))/2)`
-/

namespace A245971.P15475155926942649195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254411 (2 * (n + 1)) : ℚ) / 2⌋

end

end A245971.P15475155926942649195

/-! ## A245971.P11315499855871316786

`A004524(A254411(2*(n+1)))`
-/

namespace A245971.P11315499855871316786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A254411 (2 * (n + 1))).toNat

end

end A245971.P11315499855871316786

/-! ## A245971.P2745830120739776604

`A004526(A254411(2*(n+1))-1)`
-/

namespace A245971.P2745830120739776604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A254411 (2 * (n + 1)) - 1).toNat

end

end A245971.P2745830120739776604

/-! ## A245971.P16241085313741099370

`A006370(A254411(2*(n+1))-1)`
-/

namespace A245971.P16241085313741099370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A254411 (2 * (n + 1)) - 1).toNat

end

end A245971.P16241085313741099370

/-! ## A245971.P3841659250223355707

`A004526(A254411(A103517(n)))`
-/

namespace A245971.P3841659250223355707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A254411 (A103517 n).toNat).toNat

end

end A245971.P3841659250223355707

/-! ## A245971.P1110141268568970021

`A004526(A254411(Δ[A002378(n)]))`
-/

namespace A245971.P1110141268568970021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A254411 (f1 (n + 1) - f1 n).toNat).toNat

end

end A245971.P1110141268568970021

/-!
# A245972: Tower of 5s mod n.

The programs for A245972, there is no canonical definition to state claims against.
-/

/-! ## A245972.P5982181313079460712

`A135787(A344180(ceil(2^(n-1)))+1)%(n+1)`
-/

namespace A245972.P5982181313079460712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135787 (A344180 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + 1).toNat) (n + 1 : ℤ)

end

end A245972.P5982181313079460712

/-! ## A245972.P12742073977118664900

`root(5, 1/5)%A000005(2^n)`
-/

namespace A245972.P12742073977118664900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((5 : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ)))) (A000005 (2 ^ n))

end

end A245972.P12742073977118664900

/-! ## A245972.P16198591045509251625

`A016973(A000005(2^n))%(n+1)`
-/

namespace A245972.P16198591045509251625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016973 (A000005 (2 ^ n)).toNat) (n + 1 : ℤ)

end

end A245972.P16198591045509251625

/-! ## A245972.P14221031427633374265

`A223231(A000005(2^n)-n)%(n+1)`
-/

namespace A245972.P14221031427633374265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223231 (A000005 (2 ^ n) - (n : ℤ)).toNat) (n + 1 : ℤ)

end

end A245972.P14221031427633374265

/-! ## A245972.P16322594727304743117

`A017225(A173453(2*(n+1)))%(n+1)`
-/

namespace A245972.P16322594727304743117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017225 (A173453 (2 * (n + 1))).toNat) (n + 1 : ℤ)

end

end A245972.P16322594727304743117

/-!
# A245973: Tower of 6s mod n.

The programs for A245973, there is no canonical definition to state claims against.
-/

/-! ## A245973.P8173234662469223792

`A214128(n+1)%A000018(n)`
-/

namespace A245973.P8173234662469223792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214128 (n + 1)) (A000018 n)

end

end A245973.P8173234662469223792

/-! ## A245973.P9553250935531448096

`A051904(A000041(n))*A214128(n+1)`
-/

namespace A245973.P9553250935531448096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A000041 n).toNat * A214128 (n + 1)

end

end A245973.P9553250935531448096

/-! ## A245973.P2658885220429930395

`A294068(A028807(n+1))+A214128(n+1)`
-/

namespace A245973.P2658885220429930395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 (A028807 (n + 1)).toNat + A214128 (n + 1)

end

end A245973.P2658885220429930395

/-! ## A245973.P120394499990659707

`A243055(A109420(n+1))+A214128(n+1)`
-/

namespace A245973.P120394499990659707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (A109420 (n + 1)).toNat + A214128 (n + 1)

end

end A245973.P120394499990659707

/-! ## A245973.P3851397602269849571

`and(A214128(n+1), A387410(n+1))`
-/

namespace A245973.P3851397602269849571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A214128 (n + 1)) (A387410 (n + 1))

end

end A245973.P3851397602269849571

/-!
# A245977: Limit-reverse of the infinite Fibonacci word A014675 = (s(0),s(1),...) = (2,1,2,2,1,2,1,2, ...) using initial block (s(2),s(3)) = (2,2).

The programs for A245977, the canonical program `A245977.P8645664375542382364` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245977 has offset 0).

The definition of A245977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245977.P3465592941590222549

`Δ[floor(ϕ*(n+3))]`
-/

namespace A245977.P3465592941590222549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245977.P3465592941590222549

namespace A245977

/-- `Δ[floor(ϕ*(n+3))]` -/
def P3465592941590222549.Spec : Prop :=
  ∀ n, P3465592941590222549.a n = A245977 n

end A245977

/-! ## A245977.P9934784497530658460

`Δ[ceil(ϕ*(n+3))]!`
-/

namespace A245977.P9934784497530658460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 3 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat

end

end A245977.P9934784497530658460

namespace A245977

/-- `Δ[ceil(ϕ*(n+3))]!` -/
def P9934784497530658460.Spec : Prop :=
  ∀ n, (P9934784497530658460.a n : ℤ) = A245977 n

end A245977

/-! ## A245977.P16110621926314045994

`dr(Δ[ceil(ϕ*(n+3))])`
-/

namespace A245977.P16110621926314045994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 3 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A245977.P16110621926314045994

namespace A245977

/-- `dr(Δ[ceil(ϕ*(n+3))])` -/
def P16110621926314045994.Spec : Prop :=
  ∀ n, (P16110621926314045994.a n : ℤ) = A245977 n

end A245977

/-! ## A245977.P2056563885267332569

`Δ[ceil(ϕ*(n+3))]%3`
-/

namespace A245977.P2056563885267332569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 3

end

end A245977.P2056563885267332569

namespace A245977

/-- `Δ[ceil(ϕ*(n+3))]%3` -/
def P2056563885267332569.Spec : Prop :=
  ∀ n, P2056563885267332569.a n = A245977 n

end A245977

/-! ## A245977.P5914255030373807788

`C(2, Δ[floor((n+3)/ϕ)])`
-/

namespace A245977.P5914255030373807788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A245977.P5914255030373807788

namespace A245977

/-- `C(2, Δ[floor((n+3)/ϕ)])` -/
def P5914255030373807788.Spec : Prop :=
  ∀ n, (P5914255030373807788.a n : ℤ) = A245977 n

end A245977

/-! ## A245977.P7456807741047224350

`gcd(2, Δ[floor((n+3)/ϕ²)])`
-/

namespace A245977.P7456807741047224350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A245977.P7456807741047224350

namespace A245977

/-- `gcd(2, Δ[floor((n+3)/ϕ²)])` -/
def P7456807741047224350.Spec : Prop :=
  ∀ n, (P7456807741047224350.a n : ℤ) = A245977 n

end A245977

/-! ## A245977.P9483515865365220121

`and(1, Δ[floor((n+3)/ϕ)])+1`
-/

namespace A245977.P9483515865365220121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) + 1

end

end A245977.P9483515865365220121

namespace A245977

/-- `and(1, Δ[floor((n+3)/ϕ)])+1` -/
def P9483515865365220121.Spec : Prop :=
  ∀ n, P9483515865365220121.a n = A245977 n

end A245977

/-! ## A245977.P6930276876973976429

`Δ[floor((n+3)/ϕ)]+gcd(n, n+1)`
-/

namespace A245977.P6930276876973976429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.gcd n (n + 1) : ℤ)

end

end A245977.P6930276876973976429

namespace A245977

/-- `Δ[floor((n+3)/ϕ)]+gcd(n, n+1)` -/
def P6930276876973976429.Spec : Prop :=
  ∀ n, P6930276876973976429.a n = A245977 n

end A245977

/-! ## A245977.P8645664375542382364

`A059426(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245977

/-- `A059426(n+1)` -/
def P8645664375542382364.Spec : Prop :=
  ∀ n, P8645664375542382364.a n = A245977 n

theorem P8645664375542382364.correct : P8645664375542382364.Spec := by
  intro n
  simp only [A245977]

end A245977

/-! ## A245977.P10533451854292422710

`A014675(n+2)`
-/

namespace A245977.P10533451854292422710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (n + 2)

end

end A245977.P10533451854292422710

namespace A245977

/-- `A014675(n+2)` -/
def P10533451854292422710.Spec : Prop :=
  ∀ n, P10533451854292422710.a n = A245977 n

end A245977

/-! ## A245977.P12723127229235801925

`A001468(n+3)`
-/

namespace A245977.P12723127229235801925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 3)

end

end A245977.P12723127229235801925

namespace A245977

/-- `A001468(n+3)` -/
def P12723127229235801925.Spec : Prop :=
  ∀ n, P12723127229235801925.a n = A245977 n

end A245977

/-! ## A245977.P16797928905856606508

`ceil(2/A129761(n))`
-/

namespace A245977.P16797928905856606508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A129761 n : ℚ)⌉

end

end A245977.P16797928905856606508

namespace A245977

/-- `ceil(2/A129761(n))` -/
def P16797928905856606508.Spec : Prop :=
  ∀ n, P16797928905856606508.a n = A245977 n

end A245977

/-! ## A245977.P9817172913951237146

`char[A058065(n)]+1`
-/

namespace A245977.P9817172913951237146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A245977.P9817172913951237146

namespace A245977

/-- `char[A058065(n)]+1` -/
def P9817172913951237146.Spec : Prop :=
  ∀ n, (P9817172913951237146.a n : ℤ) = A245977 n

end A245977

/-! ## A245977.P2792626185350489693

`A296135(n+1)+1`
-/

namespace A245977.P2792626185350489693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 (n + 1) + 1

end

end A245977.P2792626185350489693

namespace A245977

/-- `A296135(n+1)+1` -/
def P2792626185350489693.Spec : Prop :=
  ∀ n, P2792626185350489693.a n = A245977 n

end A245977

/-! ## A245977.P5154823406198798068

`A005614(n+2)+1`
-/

namespace A245977.P5154823406198798068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 2) + 1

end

end A245977.P5154823406198798068

namespace A245977

/-- `A005614(n+2)+1` -/
def P5154823406198798068.Spec : Prop :=
  ∀ n, P5154823406198798068.a n = A245977 n

end A245977

/-! ## A245977.P16876395690047407771

`A096270(n+3)+1`
-/

namespace A245977.P16876395690047407771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 3) + 1

end

end A245977.P16876395690047407771

namespace A245977

/-- `A096270(n+3)+1` -/
def P16876395690047407771.Spec : Prop :=
  ∀ n, P16876395690047407771.a n = A245977 n

end A245977

/-! ## A245977.P15575057860127007393

`A114986(n+3)+1`
-/

namespace A245977.P15575057860127007393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (n + 3) + 1

end

end A245977.P15575057860127007393

namespace A245977

/-- `A114986(n+3)+1` -/
def P15575057860127007393.Spec : Prop :=
  ∀ n, P15575057860127007393.a n = A245977 n

end A245977

/-! ## A245977.P7630005458262823774

`2-A003849(n+2)`
-/

namespace A245977.P7630005458262823774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A003849 (n + 2)

end

end A245977.P7630005458262823774

namespace A245977

/-- `2-A003849(n+2)` -/
def P7630005458262823774.Spec : Prop :=
  ∀ n, P7630005458262823774.a n = A245977 n

end A245977

/-! ## A245977.P4081322876790536760

`log2(Δ[A075317(n+3)])`
-/

namespace A245977.P4081322876790536760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A245977.P4081322876790536760

namespace A245977

/-- `log2(Δ[A075317(n+3)])` -/
def P4081322876790536760.Spec : Prop :=
  ∀ n, P4081322876790536760.a n = (A245977 n : ℝ)

end A245977

/-!
# A245978: Index sequence for limit-reversing the infinite Fibonacci word A014675 = (s(0),s(1),...) = (2,1,2,2,1,2,1,2,...) using initial block (s(2),s(3)) = (2,2).

The programs for A245978, there is no canonical definition to state claims against.
-/

/-! ## A245978.P6907505940589150273

`A245979(n)+a(n-1)` with `a(0)=3`
-/

namespace A245978.P6907505940589150273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A245979 n + a (n - 1)

end

end A245978.P6907505940589150273

/-! ## A245978.P13406115231341691840

`∑[A245979(abs(1-n)+1)]`
-/

namespace A245978.P13406115231341691840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245979 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245978.P13406115231341691840

/-! ## A245978.P4958313910653675058

`∑[A246104(A026272(n+1))]`
-/

namespace A245978.P4958313910653675058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A026272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245978.P4958313910653675058

/-! ## A245978.P2574864782680773129

`∑[A245979(A028310(n))]-2`
-/

namespace A245978.P2574864782680773129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245979 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A245978.P2574864782680773129

/-! ## A245978.P10752950082848728021

`∑[A245979(n+1)]+3-A245979(n+1)`
-/

namespace A245978.P10752950082848728021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A245979 (n + 1))

end

end A245978.P10752950082848728021

/-!
# A245979: First differences of A245978.

The programs for A245979, there is no canonical definition to state claims against.
-/

/-! ## A245979.P11461513820631209846

`A246104(A026272(n+2))`
-/

namespace A245979.P11461513820631209846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246104 (A026272 (n + 2)).toNat

end

end A245979.P11461513820631209846

/-! ## A245979.P668241082345065954

`A000045(A072649(n+5)+A005614(n+3))`
-/

namespace A245979.P668241082345065954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072649 (n + 5) + A005614 (n + 3)).toNat

end

end A245979.P668241082345065954

/-! ## A245979.P12533406387392066926

`A000045(A095791(n+4)+A001468(n+4))`
-/

namespace A245979.P12533406387392066926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A095791 (n + 4) + A001468 (n + 4)).toNat

end

end A245979.P12533406387392066926

/-! ## A245979.P8555819274740889420

`A000045(A130233(n+5)-A003849(n+3))`
-/

namespace A245979.P8555819274740889420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A130233 (n + 5) - A003849 (n + 3)).toNat

end

end A245979.P8555819274740889420

/-! ## A245979.P10645217023530437990

`A087172(A087172(n+5)-A003849(n+3))`
-/

namespace A245979.P10645217023530437990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A087172 (n + 5) - A003849 (n + 3)).toNat

end

end A245979.P10645217023530437990

/-! ## A245979.P8885242647089963695

`Δ[A245978(n)]`
-/

namespace A245979.P8885242647089963695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245979.P8885242647089963695

/-! ## A245979.P11747904852393556458

`A245978(n+1)-A245978(n)`
-/

namespace A245979.P11747904852393556458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245978 (n + 1) - A245978 n

end

end A245979.P11747904852393556458

/-!
# A245980: Number A(n,k) of pairs of endofunctions f, g on [n] satisfying g^k(f(i)) = f(i) for all i in [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A245980, there is no canonical definition to state claims against.
-/

/-! ## A245980.P6791033271262477919

`ceil(A155955(n)/A136220(n)!)`
-/

namespace A245980.P6791033271262477919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A155955 n : ℚ) / (Nat.factorial (A136220 n).toNat : ℚ)⌉

end

end A245980.P6791033271262477919

/-! ## A245980.P5621044537838667833

`gcd(A144559(A176230(n)), A155955(n))`
-/

namespace A245980.P5621044537838667833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144559 (A176230 n).toNat) (A155955 n)

end

end A245980.P5621044537838667833

/-! ## A245980.P1867357805549857655

`A241737(n)^A291883(A337389(n+3))`
-/

namespace A245980.P1867357805549857655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241737 n : ℚ) ^ (A291883 (A337389 (n + 3)).toNat : ℤ)

end

end A245980.P1867357805549857655

/-! ## A245980.P6546229089469582200

`A245910(n)-and(A006439(n+1), A222063(n))`
-/

namespace A245980.P6546229089469582200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 n - Int.land (A006439 (n + 1)) (A222063 n)

end

end A245980.P6546229089469582200

/-!
# A245981: Number of pairs of endofunctions f, g on [n] satisfying g^4(f(i)) = f(i) for all i in [n].

The programs for A245981, there is no canonical definition to state claims against.
-/

/-! ## A245981.P12014969031291645216

`A245980(A052905(n+2))`
-/

namespace A245981.P12014969031291645216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (A052905 (n + 2)).toNat

end

end A245981.P12014969031291645216

/-! ## A245981.P8957467223829147667

`A245980(A056115(n)+10)`
-/

namespace A245981.P8957467223829147667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (A056115 n + 10).toNat

end

end A245981.P8957467223829147667

/-! ## A245981.P15937675638482271601

`A245980(eq[4, A025581(n)])`
-/

namespace A245981.P15937675638482271601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245981.P15937675638482271601

/-! ## A245981.P10511842991309002443

`A245980(eq[9, A099375(n)])`
-/

namespace A245981.P10511842991309002443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245981.P10511842991309002443

/-! ## A245981.P4692833267176862667

`A245980(eq[5, A004736(n+1)])`
-/

namespace A245981.P4692833267176862667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245981.P4692833267176862667

/-!
# A245982: Number of pairs of endofunctions f, g on [n] satisfying g^5(f(i)) = f(i) for all i in [n].

The programs for A245982, there is no canonical definition to state claims against.
-/

/-! ## A245982.P14173685767119238741

`A245980(eq[5, A025581(n)])`
-/

namespace A245982.P14173685767119238741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245982.P14173685767119238741

/-!
# A245983: Number of pairs of endofunctions f, g on [n] satisfying g^6(f(i)) = f(i) for all i in [n].

The programs for A245983, there is no canonical definition to state claims against.
-/

/-! ## A245983.P1286055550550846222

`A245980(eq[6, A025581(n)])`
-/

namespace A245983.P1286055550550846222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245983.P1286055550550846222

/-! ## A245983.P14683729648277279642

`A245980(eq[6, A193592(n+1)])`
-/

namespace A245983.P14683729648277279642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245983.P14683729648277279642

/-! ## A245983.P6348926572189334750

`A245980(eq[6, A193592(n)]-1)`
-/

namespace A245983.P6348926572189334750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A245983.P6348926572189334750

/-!
# A245988: Number of pairs of endofunctions f, g on [n] satisfying g^n(f(i)) = f(i) for all i in [n].

The programs for A245988, there is no canonical definition to state claims against.
-/

/-! ## A245988.P15707716499090159252

`A245980(∑[4*n])`
-/

namespace A245988.P15707716499090159252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245988.P15707716499090159252

/-! ## A245988.P4157727229136371233

`A245980(A046092(n))/A304042(n)`
-/

namespace A245988.P4157727229136371233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245980 (A046092 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A245988.P4157727229136371233

/-! ## A245988.P1767699728559784305

`A245980(A046092(n))^A178334(n)`
-/

namespace A245988.P1767699728559784305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245980 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A245988.P1767699728559784305

/-! ## A245988.P6811509182860573585

`A007318(C(2, n))*A245980(A046092(n))`
-/

namespace A245988.P6811509182860573585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A245980 (A046092 n).toNat

end

end A245988.P6811509182860573585

/-! ## A245988.P9876975427047874129

`val(A005117(n+2), 3)!*A245980(A046092(n))`
-/

namespace A245988.P9876975427047874129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A005117 (n + 2)).toNat 3) : ℤ) * A245980 (A046092 n).toNat

end

end A245988.P9876975427047874129

/-!
# A245989: Number of length n 0..2 arrays with no pair in any consecutive three terms totalling exactly 2.

The programs for A245989, the canonical program `A245989.P18299277892093143518` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245989 has offset 0).

The definition of A245989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245989.P18299277892093143518

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=8, a(4)=12`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245989

/-- `a(n-1)+a(n-3)` -/
def P18299277892093143518.Spec : Prop :=
  ∀ n, (P18299277892093143518.a n : ℤ) = A245989 n

theorem P18299277892093143518.correct : P18299277892093143518.Spec := by
  intro n
  simp only [A245989]

end A245989

/-! ## A245989.P15264890941503953262

`ogf((1+2x+3x^2+x^3+x^4)/(1-x-x^3))`
-/

namespace A245989.P15264890941503953262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 1, 1] [1, -1, 0, -1] n

end

end A245989.P15264890941503953262

namespace A245989

/-- `ogf((1+2x+3x^2+x^3+x^4)/(1-x-x^3))` -/
def P15264890941503953262.Spec : Prop :=
  ∀ n, P15264890941503953262.a n = A245989 n

end A245989

/-! ## A245989.P15633333376944960916

`A005843(A000930(n+2))-A019590(n+1)`
-/

namespace A245989.P15633333376944960916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000930 (n + 2)).toNat - A019590 (n + 1)

end

end A245989.P15633333376944960916

namespace A245989

/-- `A005843(A000930(n+2))-A019590(n+1)` -/
def P15633333376944960916.Spec : Prop :=
  ∀ n, P15633333376944960916.a n = A245989 n

end A245989

/-! ## A245989.P6923403036364556304

`A000194(A316983(n+4)-A181906(n+3))`
-/

namespace A245989.P6923403036364556304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A316983 (n + 4) - A181906 (n + 3)).toNat

end

end A245989.P6923403036364556304

namespace A245989

/-- `A000194(A316983(n+4)-A181906(n+3))` -/
def P6923403036364556304.Spec : Prop :=
  ∀ n, P6923403036364556304.a n = A245989 n

end A245989

/-! ## A245989.P13578925724764491104

`A083375(A048772(n))`
-/

namespace A245989.P13578925724764491104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A048772 n).toNat

end

end A245989.P13578925724764491104

namespace A245989

/-- `A083375(A048772(n))` -/
def P13578925724764491104.Spec : Prop :=
  ∀ n, P13578925724764491104.a n = A245989 n

end A245989

/-!
# A245990: Number of length n+2 0..3 arrays with no pair in any consecutive three terms totalling exactly 3.

The programs for A245990, the canonical program `A245990.P13558892922948187725` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245990 has offset 1).

The definition of A245990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245990.P13558892922948187725

`2*a(n-1)+a(n-2)` with `a(0)=28, a(1)=68`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245990

/-- `2*a(n-1)+a(n-2)` -/
def P13558892922948187725.Spec : Prop :=
  ∀ n, (P13558892922948187725.a n : ℤ) = A245990 (n + 1)

theorem P13558892922948187725.correct : P13558892922948187725.Spec := by
  intro n
  simp only [A245990, Nat.add_sub_cancel]

end A245990

/-! ## A245990.P668252444962774325

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=28, a(1)=68`
-/

namespace A245990.P668252444962774325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 68] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A245990.P668252444962774325

namespace A245990

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P668252444962774325.Spec : Prop :=
  ∀ n, (P668252444962774325.a n : ℤ) = A245990 (n + 1)

theorem P668252444962774325.correct : P668252444962774325.Spec := by
  intro n
  simp only [A245990, Nat.add_sub_cancel, A245990.P668252444962774325.a, A245990.P13558892922948187725.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A245990

/-! ## A245990.P611253930728659545

`2*A002203(n+3)`
-/

namespace A245990.P611253930728659545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002203 (n + 3)

end

end A245990.P611253930728659545

namespace A245990

/-- `2*A002203(n+3)` -/
def P611253930728659545.Spec : Prop :=
  ∀ n, P611253930728659545.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P6641419582120234486

`2*A099425(n+3)`
-/

namespace A245990.P6641419582120234486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099425 (n + 3)

end

end A245990.P6641419582120234486

namespace A245990

/-- `2*A099425(n+3)` -/
def P6641419582120234486.Spec : Prop :=
  ∀ n, P6641419582120234486.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P17053044711927941288

`4*A078057(n+2)`
-/

namespace A245990.P17053044711927941288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078057 (n + 2)

end

end A245990.P17053044711927941288

namespace A245990

/-- `4*A078057(n+2)` -/
def P17053044711927941288.Spec : Prop :=
  ∀ n, P17053044711927941288.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P8028102906072814353

`4*A001333(n+3)`
-/

namespace A245990.P8028102906072814353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001333 (n + 3)

end

end A245990.P8028102906072814353

namespace A245990

/-- `4*A001333(n+3)` -/
def P8028102906072814353.Spec : Prop :=
  ∀ n, P8028102906072814353.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P16585473960207926899

`lcm(4, A041010(n+2))`
-/

namespace A245990.P16585473960207926899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A041010 (n + 2))

end

end A245990.P16585473960207926899

namespace A245990

/-- `lcm(4, A041010(n+2))` -/
def P16585473960207926899.Spec : Prop :=
  ∀ n, (P16585473960207926899.a n : ℤ) = A245990 (n + 1)

end A245990

/-! ## A245990.P248778867465054000

`2*(A100227(n+3)+1)`
-/

namespace A245990.P248778867465054000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100227 (n + 3) + 1)

end

end A245990.P248778867465054000

namespace A245990

/-- `2*(A100227(n+3)+1)` -/
def P248778867465054000.Spec : Prop :=
  ∀ n, P248778867465054000.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P15887518110686412338

`2*(A124696(n+3)-1)`
-/

namespace A245990.P15887518110686412338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A124696 (n + 3) - 1)

end

end A245990.P15887518110686412338

namespace A245990

/-- `2*(A124696(n+3)-1)` -/
def P15887518110686412338.Spec : Prop :=
  ∀ n, P15887518110686412338.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P15902993497727281994

`4*(A213667(n+2)+1)`
-/

namespace A245990.P15902993497727281994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A213667 (n + 2) + 1)

end

end A245990.P15902993497727281994

namespace A245990

/-- `4*(A213667(n+2)+1)` -/
def P15902993497727281994.Spec : Prop :=
  ∀ n, P15902993497727281994.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P6834855803834775892

`4*A189050(A004273(n+2))`
-/

namespace A245990.P6834855803834775892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A189050 (A004273 (n + 2)).toNat

end

end A245990.P6834855803834775892

namespace A245990

/-- `4*A189050(A004273(n+2))` -/
def P6834855803834775892.Spec : Prop :=
  ∀ n, P6834855803834775892.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P1702431606620100707

`A109803(n+3)-A109803(n)`
-/

namespace A245990.P1702431606620100707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109803 (n + 3) - A109803 n

end

end A245990.P1702431606620100707

namespace A245990

/-- `A109803(n+3)-A109803(n)` -/
def P1702431606620100707.Spec : Prop :=
  ∀ n, P1702431606620100707.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P6203444332760203982

`A114647(n+4)-A114647(n)`
-/

namespace A245990.P6203444332760203982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114647 (n + 4) - A114647 n

end

end A245990.P6203444332760203982

namespace A245990

/-- `A114647(n+4)-A114647(n)` -/
def P6203444332760203982.Spec : Prop :=
  ∀ n, P6203444332760203982.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P3127929979976094122

`A048655(n+3)+A001333(n+1)`
-/

namespace A245990.P3127929979976094122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (n + 3) + A001333 (n + 1)

end

end A245990.P3127929979976094122

namespace A245990

/-- `A048655(n+3)+A001333(n+1)` -/
def P3127929979976094122.Spec : Prop :=
  ∀ n, P3127929979976094122.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P903555618187541454

`A048693(n+3)-A048654(n+1)`
-/

namespace A245990.P903555618187541454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 (n + 3) - A048654 (n + 1)

end

end A245990.P903555618187541454

namespace A245990

/-- `A048693(n+3)-A048654(n+1)` -/
def P903555618187541454.Spec : Prop :=
  ∀ n, P903555618187541454.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P1056629140963357948

`A069306(n+4)-A000129(n+1)`
-/

namespace A245990.P1056629140963357948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 4) - A000129 (n + 1)

end

end A245990.P1056629140963357948

namespace A245990

/-- `A069306(n+4)-A000129(n+1)` -/
def P1056629140963357948.Spec : Prop :=
  ∀ n, P1056629140963357948.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P8456111898403307439

`A105082(n+2)-A000129(n+3)`
-/

namespace A245990.P8456111898403307439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105082 (n + 2) - A000129 (n + 3)

end

end A245990.P8456111898403307439

namespace A245990

/-- `A105082(n+2)-A000129(n+3)` -/
def P8456111898403307439.Spec : Prop :=
  ∀ n, P8456111898403307439.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P1472196263875430129

`A182143(n+3)+A051927(n+3)`
-/

namespace A245990.P1472196263875430129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182143 (n + 3) + A051927 (n + 3)

end

end A245990.P1472196263875430129

namespace A245990

/-- `A182143(n+3)+A051927(n+3)` -/
def P1472196263875430129.Spec : Prop :=
  ∀ n, P1472196263875430129.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P15227387380337313451

`A176981(n+2)+A069306(n+4)`
-/

namespace A245990.P15227387380337313451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 2) + A069306 (n + 4)

end

end A245990.P15227387380337313451

namespace A245990

/-- `A176981(n+2)+A069306(n+4)` -/
def P15227387380337313451.Spec : Prop :=
  ∀ n, P15227387380337313451.a n = A245990 (n + 1)

end A245990

/-! ## A245990.P11428070876620298063

`A069306(n+4)-A215928(n+1)`
-/

namespace A245990.P11428070876620298063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069306 (n + 4) - A215928 (n + 1)

end

end A245990.P11428070876620298063

namespace A245990

/-- `A069306(n+4)-A215928(n+1)` -/
def P11428070876620298063.Spec : Prop :=
  ∀ n, P11428070876620298063.a n = A245990 (n + 1)

end A245990

/-!
# A245991: Number of length n+2 0..4 arrays with no pair in any consecutive three terms totalling exactly 4.

The programs for A245991, there is no canonical definition to state claims against.
-/

/-! ## A245991.P840398992592975147

`A245995(∑[n+4]+3)`
-/

namespace A245991.P840398992592975147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A245991.P840398992592975147

/-! ## A245991.P151575356881428436

`abs(A033999(n))*A245995(A027379(n+2))`
-/

namespace A245991.P151575356881428436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A245995 (A027379 (n + 2)).toNat

end

end A245991.P151575356881428436

/-! ## A245991.P6341999892960994962

`A245995(A027379(n+2))%A252061(n+1)`
-/

namespace A245991.P6341999892960994962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245995 (A027379 (n + 2)).toNat) (A252061 (n + 1))

end

end A245991.P6341999892960994962

/-! ## A245991.P14611597188730071503

`A245995(A027379(n+2))+A049337(A003484(n+1))`
-/

namespace A245991.P14611597188730071503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A027379 (n + 2)).toNat + A049337 (A003484 (n + 1)).toNat

end

end A245991.P14611597188730071503

/-! ## A245991.P16064867396560865076

`A003484(A000040(n+2))*A245995(A027379(n+2))`
-/

namespace A245991.P16064867396560865076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A000040 (n + 2)).toNat * A245995 (A027379 (n + 2)).toNat

end

end A245991.P16064867396560865076

/-!
# A245992: Number of length n+2 0..5 arrays with no pair in any consecutive three terms totalling exactly 5.

The programs for A245992, the canonical program `A245992.P1134353203698120013` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245992 has offset 1).

The definition of A245992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245992.P1134353203698120013

`4*a(n-1)+a(n-2)` with `a(0)=126, a(1)=534`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245992

/-- `4*a(n-1)+a(n-2)` -/
def P1134353203698120013.Spec : Prop :=
  ∀ n, (P1134353203698120013.a n : ℤ) = A245992 (n + 1)

theorem P1134353203698120013.correct : P1134353203698120013.Spec := by
  intro n
  simp only [A245992, Nat.add_sub_cancel]

end A245992

/-! ## A245992.P14390642086547862323

`6*A015448(n+3)`
-/

namespace A245992.P14390642086547862323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A015448 (n + 3)

end

end A245992.P14390642086547862323

namespace A245992

/-- `6*A015448(n+3)` -/
def P14390642086547862323.Spec : Prop :=
  ∀ n, P14390642086547862323.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P12684424468371314946

`A022089(3*n+8)`
-/

namespace A245992.P12684424468371314946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (3 * n + 8)

end

end A245992.P12684424468371314946

namespace A245992

/-- `A022089(3*n+8)` -/
def P12684424468371314946.Spec : Prop :=
  ∀ n, P12684424468371314946.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P5257095130029407513

`3*Δ[A033887(n+2)]`
-/

namespace A245992.P5257095130029407513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A245992.P5257095130029407513

namespace A245992

/-- `3*Δ[A033887(n+2)]` -/
def P5257095130029407513.Spec : Prop :=
  ∀ n, P5257095130029407513.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P5716709440149230402

`A330010(3*(n+2)+1)`
-/

namespace A245992.P5716709440149230402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330010 (3 * (n + 2) + 1)

end

end A245992.P5716709440149230402

namespace A245992

/-- `A330010(3*(n+2)+1)` -/
def P5716709440149230402.Spec : Prop :=
  ∀ n, P5716709440149230402.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P8314881877939913691

`3*A054886(3*(n+2))`
-/

namespace A245992.P8314881877939913691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054886 (3 * (n + 2))

end

end A245992.P8314881877939913691

namespace A245992

/-- `3*A054886(3*(n+2))` -/
def P8314881877939913691.Spec : Prop :=
  ∀ n, P8314881877939913691.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P5609923884909024874

`3*A078642(3*(n+2))`
-/

namespace A245992.P5609923884909024874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078642 (3 * (n + 2))

end

end A245992.P5609923884909024874

namespace A245992

/-- `3*A078642(3*(n+2))` -/
def P5609923884909024874.Spec : Prop :=
  ∀ n, P5609923884909024874.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P18145390531360403065

`3*A163714(3*(n+2))`
-/

namespace A245992.P18145390531360403065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163714 (3 * (n + 2))

end

end A245992.P18145390531360403065

namespace A245992

/-- `3*A163714(3*(n+2))` -/
def P18145390531360403065.Spec : Prop :=
  ∀ n, P18145390531360403065.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P3782688584654188709

`3*A006355(3*(n+3))`
-/

namespace A245992.P3782688584654188709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006355 (3 * (n + 3))

end

end A245992.P3782688584654188709

namespace A245992

/-- `3*A006355(3*(n+3))` -/
def P3782688584654188709.Spec : Prop :=
  ∀ n, P3782688584654188709.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P7243169488410670634

`3*A118658(3*(n+3))`
-/

namespace A245992.P7243169488410670634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A118658 (3 * (n + 3))

end

end A245992.P7243169488410670634

namespace A245992

/-- `3*A118658(3*(n+3))` -/
def P7243169488410670634.Spec : Prop :=
  ∀ n, P7243169488410670634.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P18322470790906246508

`3*A090991(3*n+5)`
-/

namespace A245992.P18322470790906246508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090991 (3 * n + 5)

end

end A245992.P18322470790906246508

namespace A245992

/-- `3*A090991(3*n+5)` -/
def P18322470790906246508.Spec : Prop :=
  ∀ n, P18322470790906246508.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P12291923783810919286

`6*A020701(3*n+4)`
-/

namespace A245992.P12291923783810919286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020701 (3 * n + 4)

end

end A245992.P12291923783810919286

namespace A245992

/-- `6*A020701(3*n+4)` -/
def P12291923783810919286.Spec : Prop :=
  ∀ n, P12291923783810919286.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P1096855931542980946

`6*A000045(3*n+8)`
-/

namespace A245992.P1096855931542980946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (3 * n + 8)

end

end A245992.P1096855931542980946

namespace A245992

/-- `6*A000045(3*n+8)` -/
def P1096855931542980946.Spec : Prop :=
  ∀ n, P1096855931542980946.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P4673987739875595201

`6*(A001611(3*n+8)-1)`
-/

namespace A245992.P4673987739875595201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A001611 (3 * n + 8) - 1)

end

end A245992.P4673987739875595201

namespace A245992

/-- `6*(A001611(3*n+8)-1)` -/
def P4673987739875595201.Spec : Prop :=
  ∀ n, P4673987739875595201.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P458846254186720428

`A048876(n+3)+A033887(n+1)`
-/

namespace A245992.P458846254186720428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048876 (n + 3) + A033887 (n + 1)

end

end A245992.P458846254186720428

namespace A245992

/-- `A048876(n+3)+A033887(n+1)` -/
def P458846254186720428.Spec : Prop :=
  ∀ n, P458846254186720428.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P8965527380434062635

`A097924(n+3)-A001076(n+1)`
-/

namespace A245992.P8965527380434062635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097924 (n + 3) - A001076 (n + 1)

end

end A245992.P8965527380434062635

namespace A245992

/-- `A097924(n+3)-A001076(n+1)` -/
def P8965527380434062635.Spec : Prop :=
  ∀ n, P8965527380434062635.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P14903854126856282724

`Δ[Δ[Δ[ogf(3/(1-5x+3x^2+x^3))]]]`
-/

namespace A245992.P14903854126856282724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -5, 3, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245992.P14903854126856282724

namespace A245992

/-- `Δ[Δ[Δ[ogf(3/(1-5x+3x^2+x^3))]]]` -/
def P14903854126856282724.Spec : Prop :=
  ∀ n, P14903854126856282724.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P12957928168158938683

`Δ[Δ[A155179(n+2)]]`
-/

namespace A245992.P12957928168158938683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155179 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245992.P12957928168158938683

namespace A245992

/-- `Δ[Δ[A155179(n+2)]]` -/
def P12957928168158938683.Spec : Prop :=
  ∀ n, P12957928168158938683.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P710995906179616094

`Δ[A111314(3*(n+2))]`
-/

namespace A245992.P710995906179616094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245992.P710995906179616094

namespace A245992

/-- `Δ[A111314(3*(n+2))]` -/
def P710995906179616094.Spec : Prop :=
  ∀ n, P710995906179616094.a n = A245992 (n + 1)

end A245992

/-! ## A245992.P4258304037700600122

`Δ[A022086(A008585(n)+7)]`
-/

namespace A245992.P4258304037700600122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (A008585 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245992.P4258304037700600122

namespace A245992

/-- `Δ[A022086(A008585(n)+7)]` -/
def P4258304037700600122.Spec : Prop :=
  ∀ n, P4258304037700600122.a n = A245992 (n + 1)

end A245992

/-!
# A245993: Number of length n+2 0..6 arrays with no pair in any consecutive three terms totalling exactly 6.

The programs for A245993, there is no canonical definition to state claims against.
-/

/-! ## A245993.P6470435144921893153

`A245995(A052905(n+3))`
-/

namespace A245993.P6470435144921893153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A052905 (n + 3)).toNat

end

end A245993.P6470435144921893153

/-! ## A245993.P9702388185920698654

`A245995(A000096(n+5)-4)`
-/

namespace A245993.P9702388185920698654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000096 (n + 5) - 4).toNat

end

end A245993.P9702388185920698654

/-! ## A245993.P3942013036223049837

`A245995(A000124(n+6)-6)`
-/

namespace A245993.P3942013036223049837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000124 (n + 6) - 6).toNat

end

end A245993.P3942013036223049837

/-! ## A245993.P1991235501799421453

`A245995(n+2+A000096(n+4))`
-/

namespace A245993.P1991235501799421453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 ((n + 2 : ℤ) + A000096 (n + 4)).toNat

end

end A245993.P1991235501799421453

/-! ## A245993.P8940059387596051286

`A245995(A000217(n+9)-A016789(n+9))`
-/

namespace A245993.P8940059387596051286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000217 (n + 9) - A016789 (n + 9)).toNat

end

end A245993.P8940059387596051286

/-!
# A245994: Number of length n+2 0..7 arrays with no pair in any consecutive three terms totalling exactly 7.

The programs for A245994, the canonical program `A245994.P6895593453724742497` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245994 has offset 1).

The definition of A245994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245994.P6895593453724742497

`8*A015451(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245994

/-- `8*A015451(n+3)` -/
def P6895593453724742497.Spec : Prop :=
  ∀ n, P6895593453724742497.a n = A245994 (n + 1)

theorem P6895593453724742497.correct : P6895593453724742497.Spec := by
  intro n
  simp only [A245994, Nat.add_sub_cancel]

end A245994

/-! ## A245994.P3151049124897406493

`A245995(A055999(n+4))`
-/

namespace A245994.P3151049124897406493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A055999 (n + 4)).toNat

end

end A245994.P3151049124897406493

namespace A245994

/-- `A245995(A055999(n+4))` -/
def P3151049124897406493.Spec : Prop :=
  ∀ n, P3151049124897406493.a n = A245994 (n + 1)

end A245994

/-! ## A245994.P5819343704243270121

`A245995(A155212(n+3)+2)`
-/

namespace A245994.P5819343704243270121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A155212 (n + 3) + 2).toNat

end

end A245994.P5819343704243270121

namespace A245994

/-- `A245995(A155212(n+3)+2)` -/
def P5819343704243270121.Spec : Prop :=
  ∀ n, P5819343704243270121.a n = A245994 (n + 1)

end A245994

/-! ## A245994.P13225445382181295221

`A245995(A052905(n+4)-1)`
-/

namespace A245994.P13225445382181295221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A052905 (n + 4) - 1).toNat

end

end A245994.P13225445382181295221

namespace A245994

/-- `A245995(A052905(n+4)-1)` -/
def P13225445382181295221.Spec : Prop :=
  ∀ n, P13225445382181295221.a n = A245994 (n + 1)

end A245994

/-! ## A245994.P13913058433481714803

`A245995(A000124(n+7)-7)`
-/

namespace A245994.P13913058433481714803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000124 (n + 7) - 7).toNat

end

end A245994.P13913058433481714803

namespace A245994

/-- `A245995(A000124(n+7)-7)` -/
def P13913058433481714803.Spec : Prop :=
  ∀ n, P13913058433481714803.a n = A245994 (n + 1)

end A245994

/-! ## A245994.P17438261175903108391

`A245995(A167614(n+3)+A008585(n+3))`
-/

namespace A245994.P17438261175903108391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 3) + A008585 (n + 3)).toNat

end

end A245994.P17438261175903108391

namespace A245994

/-- `A245995(A167614(n+3)+A008585(n+3))` -/
def P17438261175903108391.Spec : Prop :=
  ∀ n, P17438261175903108391.a n = A245994 (n + 1)

end A245994

/-!
# A245996: Number of length 1+2 0..n arrays with no pair in any consecutive three terms totaling exactly n.

The programs for A245996, the canonical program `A245996.P6658475829123258914` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245996 has offset 1).

The definition of A245996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245996.P6658475829123258914

`(n+1)^3+(n+1)%2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245996

/-- `(n+1)^3+(n+1)%2` -/
def P6658475829123258914.Spec : Prop :=
  ∀ n, (P6658475829123258914.a n : ℤ) = A245996 (n + 1)

theorem P6658475829123258914.correct : P6658475829123258914.Spec := by
  intro n
  simp only [A245996, Nat.add_sub_cancel]

end A245996

/-! ## A245996.P17621437476169155695

`∑[∑[xor(2, 6*n)]]`
-/

namespace A245996.P17621437476169155695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245996.P17621437476169155695

namespace A245996

/-- `∑[∑[xor(2, 6*n)]]` -/
def P17621437476169155695.Spec : Prop :=
  ∀ n, (P17621437476169155695.a n : ℤ) = A245996 (n + 1)

end A245996

/-! ## A245996.P4605038035800603557

`∑[abs(Δ[or(1, -n^3)])]`
-/

namespace A245996.P4605038035800603557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n ^ 3 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245996.P4605038035800603557

namespace A245996

/-- `∑[abs(Δ[or(1, -n^3)])]` -/
def P4605038035800603557.Spec : Prop :=
  ∀ n, P4605038035800603557.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P3602848361377511765

`∑[-Δ[or(1, -n^3)]]`
-/

namespace A245996.P3602848361377511765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n ^ 3 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245996.P3602848361377511765

namespace A245996

/-- `∑[-Δ[or(1, -n^3)]]` -/
def P3602848361377511765.Spec : Prop :=
  ∀ n, P3602848361377511765.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P31213348566794305

`and((n+1)^3+1, -2)`
-/

namespace A245996.P31213348566794305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 3 + 1 : ℤ) (-2)

end

end A245996.P31213348566794305

namespace A245996

/-- `and((n+1)^3+1, -2)` -/
def P31213348566794305.Spec : Prop :=
  ∀ n, P31213348566794305.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P6080198411094238100

`∑[Δ[n^3]+(-1)^n]`
-/

namespace A245996.P6080198411094238100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245996.P6080198411094238100

namespace A245996

/-- `∑[Δ[n^3]+(-1)^n]` -/
def P6080198411094238100.Spec : Prop :=
  ∀ n, P6080198411094238100.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P18204090785539892731

`1-or(1, -(n+1)^3)`
-/

namespace A245996.P18204090785539892731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 1 (-((n + 1) ^ 3 : ℤ))

end

end A245996.P18204090785539892731

namespace A245996

/-- `1-or(1, -(n+1)^3)` -/
def P18204090785539892731.Spec : Prop :=
  ∀ n, P18204090785539892731.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P3484966384521712349

`log2(gcd(2, n))+(n+1)^3`
-/

namespace A245996.P3484966384521712349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + ((n + 1) ^ 3 : ℝ)

end

end A245996.P3484966384521712349

namespace A245996

/-- `log2(gcd(2, n))+(n+1)^3` -/
def P3484966384521712349.Spec : Prop :=
  ∀ n, P3484966384521712349.a n = (A245996 (n + 1) : ℝ)

end A245996

/-! ## A245996.P2375918618630940047

`char[lcm(2, n)]+(n+1)^3`
-/

namespace A245996.P2375918618630940047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (n + 1) ^ 3

end

end A245996.P2375918618630940047

namespace A245996

/-- `char[lcm(2, n)]+(n+1)^3` -/
def P2375918618630940047.Spec : Prop :=
  ∀ n, (P2375918618630940047.a n : ℤ) = A245996 (n + 1)

end A245996

/-! ## A245996.P11512871355111611244

`or(1, (n+1)^3-1)+1`
-/

namespace A245996.P11512871355111611244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n + 1) ^ 3 : ℤ) - 1) + 1

end

end A245996.P11512871355111611244

namespace A245996

/-- `or(1, (n+1)^3-1)+1` -/
def P11512871355111611244.Spec : Prop :=
  ∀ n, P11512871355111611244.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P8451815353704447694

`val(n²+2, 2)+(n+1)^3`
-/

namespace A245996.P8451815353704447694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 2) 2 + (n + 1) ^ 3

end

end A245996.P8451815353704447694

namespace A245996

/-- `val(n²+2, 2)+(n+1)^3` -/
def P8451815353704447694.Spec : Prop :=
  ∀ n, (P8451815353704447694.a n : ℤ) = A245996 (n + 1)

end A245996

/-! ## A245996.P8307686987702735787

`∑[-a(n-1)]+(n+1)^3` with `a(0)=1`
-/

namespace A245996.P8307686987702735787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 3 : ℤ)

end

end A245996.P8307686987702735787

namespace A245996

/-- `∑[-a(n-1)]+(n+1)^3` -/
def P8307686987702735787.Spec : Prop :=
  ∀ n, P8307686987702735787.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P6706122121226530556

`Δ[C(n+1, 2)²]+and(1, n+1)`
-/

namespace A245996.P6706122121226530556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land 1 (n + 1) : ℤ)

end

end A245996.P6706122121226530556

namespace A245996

/-- `Δ[C(n+1, 2)²]+and(1, n+1)` -/
def P6706122121226530556.Spec : Prop :=
  ∀ n, P6706122121226530556.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P2541591074010897672

`and(1, n+1)+(n+1)*(n+1)²`
-/

namespace A245996.P2541591074010897672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (n + 1) * (n + 1) ^ 2

end

end A245996.P2541591074010897672

namespace A245996

/-- `and(1, n+1)+(n+1)*(n+1)²` -/
def P2541591074010897672.Spec : Prop :=
  ∀ n, (P2541591074010897672.a n : ℤ) = A245996 (n + 1)

theorem P2541591074010897672.correct : P2541591074010897672.Spec := by
  intro n
  simp only [A245996, Nat.add_sub_cancel, A245996.P2541591074010897672.a, A245996.P6658475829123258914.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A245996

/-! ## A245996.P462984004397126660

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=2, a(1)=8, a(2)=28, a(3)=64, a(4)=126`
-/

namespace A245996.P462984004397126660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 28, 64, 126] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A245996.P462984004397126660

namespace A245996

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P462984004397126660.Spec : Prop :=
  ∀ n, P462984004397126660.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P18438515896744442663

`A059841(n)+(n+1)^3`
-/

namespace A245996.P18438515896744442663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ((n + 1) ^ 3 : ℤ)

end

end A245996.P18438515896744442663

namespace A245996

/-- `A059841(n)+(n+1)^3` -/
def P18438515896744442663.Spec : Prop :=
  ∀ n, P18438515896744442663.a n = A245996 (n + 1)

theorem P18438515896744442663.correct : P18438515896744442663.Spec := by
  intro n
  simp only [A245996, Nat.add_sub_cancel, A245996.P18438515896744442663.a, A245996.P6658475829123258914.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245996

/-! ## A245996.P13540755603960171392

`A068601(n+1)+gcd(2, n)`
-/

namespace A245996.P13540755603960171392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) + (Nat.gcd 2 n : ℤ)

end

end A245996.P13540755603960171392

namespace A245996

/-- `A068601(n+1)+gcd(2, n)` -/
def P13540755603960171392.Spec : Prop :=
  ∀ n, P13540755603960171392.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P11948039857755580126

`2*ceil(A184628(n+1)/2)`
-/

namespace A245996.P11948039857755580126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(A184628 (n + 1) : ℚ) / 2⌉

end

end A245996.P11948039857755580126

namespace A245996

/-- `2*ceil(A184628(n+1)/2)` -/
def P11948039857755580126.Spec : Prop :=
  ∀ n, P11948039857755580126.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P18086533489150577264

`A000045(and(1, n-1))+(n+1)*∑[2*n+1]`
-/

namespace A245996.P18086533489150577264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 ((n : ℤ) - 1)).toNat + (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A245996.P18086533489150577264

namespace A245996

/-- `A000045(and(1, n-1))+(n+1)*∑[2*n+1]` -/
def P18086533489150577264.Spec : Prop :=
  ∀ n, P18086533489150577264.a n = A245996 (n + 1)

end A245996

/-! ## A245996.P13204347594207723773

`A129957(n)+A003215(n)`
-/

namespace A245996.P13204347594207723773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129957 n + A003215 n

end

end A245996.P13204347594207723773

namespace A245996

/-- `A129957(n)+A003215(n)` -/
def P13204347594207723773.Spec : Prop :=
  ∀ n, P13204347594207723773.a n = A245996 (n + 1)

end A245996

/-!
# A245997: Number of length 2+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

The programs for A245997, the canonical program `A245997.P11952589961384981586` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245997 has offset 1).

The definition of A245997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245997.P10904282812536662337

`ceil(sqrt(A245996(n+1)*A245998(n+1)))`
-/

namespace A245997.P10904282812536662337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A245996 (n + 1) * A245998 (n + 1) : ℝ)⌉

end

end A245997.P10904282812536662337

namespace A245997

/-- `ceil(sqrt(A245996(n+1)*A245998(n+1)))` -/
def P10904282812536662337.Spec : Prop :=
  ∀ n, P10904282812536662337.a n = A245997 (n + 1)

end A245997

/-! ## A245997.P11952589961384981586

`A296063(n+1)+A072025(n)+A034262(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245997

/-- `A296063(n+1)+A072025(n)+A034262(n)` -/
def P11952589961384981586.Spec : Prop :=
  ∀ n, P11952589961384981586.a n = A245997 (n + 1)

theorem P11952589961384981586.correct : P11952589961384981586.Spec := by
  intro n
  simp only [A245997, Nat.add_sub_cancel]

end A245997

/-! ## A245997.P3340397125061805184

`A309372(n+1)+(2*n+1)*A000035(n+1)`
-/

namespace A245997.P3340397125061805184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 (n + 1) + (2 * n + 1 : ℤ) * A000035 (n + 1)

end

end A245997.P3340397125061805184

namespace A245997

/-- `A309372(n+1)+(2*n+1)*A000035(n+1)` -/
def P3340397125061805184.Spec : Prop :=
  ∀ n, P3340397125061805184.a n = A245997 (n + 1)

end A245997

/-! ## A245997.P11761835287198602806

`A309372(n+1)+A059841(n)*A267872(n)`
-/

namespace A245997.P11761835287198602806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 (n + 1) + A059841 n * A267872 n

end

end A245997.P11761835287198602806

namespace A245997

/-- `A309372(n+1)+A059841(n)*A267872(n)` -/
def P11761835287198602806.Spec : Prop :=
  ∀ n, P11761835287198602806.a n = A245997 (n + 1)

end A245997

/-! ## A245997.P6331529559553933380

`A280056(n+1)+A317614(n+1)+A210378(n)`
-/

namespace A245997.P6331529559553933380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280056 (n + 1) + (A317614 (n + 1) + A210378 n)

end

end A245997.P6331529559553933380

namespace A245997

/-- `A280056(n+1)+A317614(n+1)+A210378(n)` -/
def P6331529559553933380.Spec : Prop :=
  ∀ n, P6331529559553933380.a n = A245997 (n + 1)

end A245997

/-! ## A245997.P15550181697594151207

`A309372(n+1)+A110514(A047470(n+1))`
-/

namespace A245997.P15550181697594151207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309372 (n + 1) + A110514 (A047470 (n + 1)).toNat

end

end A245997.P15550181697594151207

namespace A245997

/-- `A309372(n+1)+A110514(A047470(n+1))` -/
def P15550181697594151207.Spec : Prop :=
  ∀ n, P15550181697594151207.a n = A245997 (n + 1)

end A245997

/-! ## A245997.P5036182520662871637

`A245995(∑[n+1]+2)`
-/

namespace A245997.P5036182520662871637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A245997.P5036182520662871637

namespace A245997

/-- `A245995(∑[n+1]+2)` -/
def P5036182520662871637.Spec : Prop :=
  ∀ n, P5036182520662871637.a n = A245997 (n + 1)

end A245997

/-!
# A245998: Number of length 3+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

The programs for A245998, there is no canonical definition to state claims against.
-/

/-! ## A245998.P15281907128220145595

`A245995(∑[n+2]+4)`
-/

namespace A245998.P15281907128220145595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A245998.P15281907128220145595

/-! ## A245998.P15288717233609588043

`lcm(2, A245995(A167614(n+1)))`
-/

namespace A245998.P15288717233609588043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A245995 (A167614 (n + 1)).toNat)

end

end A245998.P15288717233609588043

/-! ## A245998.P10991595502371511292

`A245995(A167614(n+1))%A017046(n)`
-/

namespace A245998.P10991595502371511292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245995 (A167614 (n + 1)).toNat) (A017046 n)

end

end A245998.P10991595502371511292

/-! ## A245998.P14904199064387848377

`gcd(A000038(n), A245995(A167614(n+1)))`
-/

namespace A245998.P14904199064387848377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245995 (A167614 (n + 1)).toNat)

end

end A245998.P14904199064387848377

/-! ## A245998.P10200599181500184369

`A245995(A167614(n+1))+A000007(n+1)`
-/

namespace A245998.P10200599181500184369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A245998.P10200599181500184369

/-! ## A245998.P1954379781039697164

`A245995(A167614(n+1))+A000038(n+1)`
-/

namespace A245998.P1954379781039697164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A245998.P1954379781039697164

/-!
# A245999: Number of length 4+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

The programs for A245999, there is no canonical definition to state claims against.
-/

/-! ## A245999.P9922070845815776623

`A245995(A052905(n)+9)`
-/

namespace A245999.P9922070845815776623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A052905 n + 9).toNat

end

end A245999.P9922070845815776623

/-! ## A245999.P6107191224149759951

`A245995(A167614(n+2)+1)`
-/

namespace A245999.P6107191224149759951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167614 (n + 2) + 1).toNat

end

end A245999.P6107191224149759951

/-! ## A245999.P15097348152568218619

`A245995(A000124(n+3)+3)`
-/

namespace A245999.P15097348152568218619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000124 (n + 3) + 3).toNat

end

end A245999.P15097348152568218619

/-! ## A245999.P6345042466166206272

`A245995(A167487(n+2)-3)`
-/

namespace A245999.P6345042466166206272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A167487 (n + 2) - 3).toNat

end

end A245999.P6345042466166206272

/-! ## A245999.P15040544364534198176

`A245995(A000217(n+3)+4)`
-/

namespace A245999.P15040544364534198176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A000217 (n + 3) + 4).toNat

end

end A245999.P15040544364534198176

/-! ## A245999.P8998180607618493756

`A245995(A034856(n+2)+6)`
-/

namespace A245999.P8998180607618493756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245995 (A034856 (n + 2) + 6).toNat

end

end A245999.P8998180607618493756

