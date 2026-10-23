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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
# A028900: Map n = Sum c_i 10^i to a(n) = Sum c_i 5^i.

The programs for A028900, there is no canonical definition to state claims against.
-/

/-! ## A028900.P4493863855906052998

`(n-5*floor(n/10))/A054977(A096582(n+1))`
-/

namespace A028900.P4493863855906052998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5 * ⌊(n : ℚ) / 10⌋ : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ)

end

end A028900.P4493863855906052998

/-! ## A028900.P4153181825678459969

`floor(A081596(n)/A054977(A096582(n+1)))`
-/

namespace A028900.P4153181825678459969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081596 n : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ)⌋

end

end A028900.P4153181825678459969

/-! ## A028900.P14241288253642426990

`A081599(A054899(n))+A028897(A051022(n))`
-/

namespace A028900.P14241288253642426990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (A054899 n).toNat + A028897 (A051022 n).toNat

end

end A028900.P14241288253642426990

/-! ## A028900.P12847875392643135169

`A081596(n)/A054977(A096582(n+1))*A054977(n)`
-/

namespace A028900.P12847875392643135169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081596 n : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ) * (A054977 n : ℚ)

end

end A028900.P12847875392643135169

/-! ## A028900.P8130863522036529529

`(n%10+n)/A000122((n+1)²)`
-/

namespace A028900.P8130863522036529529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 10 + n : ℕ) : ℚ) / (A000122 ((n + 1) ^ 2) : ℚ)

end

end A028900.P8130863522036529529

/-! ## A028900.P9253768676761464470

`A053188(n*(n+1))-5*floor(n/10)`
-/

namespace A028900.P9253768676761464470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n * (n + 1)) - 5 * ⌊(n : ℚ) / 10⌋

end

end A028900.P9253768676761464470

/-! ## A028900.P3287466697483486155

`A081596(A000194(n²))`
-/

namespace A028900.P3287466697483486155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A000194 (n ^ 2)).toNat

end

end A028900.P3287466697483486155

/-! ## A028900.P14171081603543109859

`A081596(A000196(∑[2*n]))`
-/

namespace A028900.P14171081603543109859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A028900.P14171081603543109859

/-! ## A028900.P1200836105755529224

`A081596(n)%A000124(n²)`
-/

namespace A028900.P1200836105755529224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081596 n) (A000124 (n ^ 2))

end

end A028900.P1200836105755529224

/-! ## A028900.P14131768439213482186

`A081596(n)+A000038((n+1)²)`
-/

namespace A028900.P14131768439213482186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081596 n + A000038 ((n + 1) ^ 2)

end

end A028900.P14131768439213482186

/-!
# A028901: Map n = Sum c_i*10^i to a(n) = Sum c_i*6^i.

The programs for A028901, the canonical program `A028901.P2292119027617019794` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028901 has offset 0).

The definition of A028901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028901.P13261794690743358955

`A054899(n)+(n-5*floor(n/10))/A054977(A096582(n+1))`
-/

namespace A028901.P13261794690743358955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054899 n : ℚ) + ((n : ℤ) - 5 * ⌊(n : ℚ) / 10⌋ : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ)

end

end A028901.P13261794690743358955

namespace A028901

/-- `A054899(n)+(n-5*floor(n/10))/A054977(A096582(n+1))` -/
def P13261794690743358955.Spec : Prop :=
  ∀ n, P13261794690743358955.a n = (A028901 n : ℚ)

end A028901

/-! ## A028901.P2292119027617019794

`A054899(n)+floor(A081596(n)/A054977(A096582(n+1)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A028901

/-- `A054899(n)+floor(A081596(n)/A054977(A096582(n+1)))` -/
def P2292119027617019794.Spec : Prop :=
  ∀ n, P2292119027617019794.a n = A028901 n

theorem P2292119027617019794.correct : P2292119027617019794.Spec := by
  intro n
  simp only [A028901]

end A028901

/-! ## A028901.P17639925628852123829

`A054899(n)+A081599(A054899(n))+A028897(A051022(n))`
-/

namespace A028901.P17639925628852123829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n + (A081599 (A054899 n).toNat + A028897 (A051022 n).toNat)

end

end A028901.P17639925628852123829

namespace A028901

/-- `A054899(n)+A081599(A054899(n))+A028897(A051022(n))` -/
def P17639925628852123829.Spec : Prop :=
  ∀ n, P17639925628852123829.a n = A028901 n

end A028901

/-! ## A028901.P13766203195783882456

`A054899(n)+A081596(n)/A054977(A096582(n+1))*A054977(n)`
-/

namespace A028901.P13766203195783882456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054899 n : ℚ) + (A081596 n : ℚ) / (A054977 (A096582 (n + 1)).toNat : ℚ) * (A054977 n : ℚ)

end

end A028901.P13766203195783882456

namespace A028901

/-- `A054899(n)+A081596(n)/A054977(A096582(n+1))*A054977(n)` -/
def P13766203195783882456.Spec : Prop :=
  ∀ n, P13766203195783882456.a n = (A028901 n : ℚ)

end A028901

/-! ## A028901.P13823522819562690882

`(n-4*floor(n/10))%∑[A187200(n+1)]`
-/

namespace A028901.P13823522819562690882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 4 * ⌊(n : ℚ) / 10⌋) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028901.P13823522819562690882

namespace A028901

/-- `(n-4*floor(n/10))%∑[A187200(n+1)]` -/
def P13823522819562690882.Spec : Prop :=
  ∀ n, P13823522819562690882.a n = A028901 n

end A028901

/-! ## A028901.P7619773782414244909

`A028897(A056143(n))`
-/

namespace A028901.P7619773782414244909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A056143 n).toNat

end

end A028901.P7619773782414244909

namespace A028901

/-- `A028897(A056143(n))` -/
def P7619773782414244909.Spec : Prop :=
  ∀ n, P7619773782414244909.a n = A028901 n

end A028901

/-! ## A028901.P3885284354105253431

`A322001(A051022(n))`
-/

namespace A028901.P3885284354105253431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A051022 n).toNat

end

end A028901.P3885284354105253431

namespace A028901

/-- `A322001(A051022(n))` -/
def P3885284354105253431.Spec : Prop :=
  ∀ n, P3885284354105253431.a n = A028901 n

end A028901

/-! ## A028901.P287071700335301029

`A081597(A000194(n²))`
-/

namespace A028901.P287071700335301029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (A000194 (n ^ 2)).toNat

end

end A028901.P287071700335301029

namespace A028901

/-- `A081597(A000194(n²))` -/
def P287071700335301029.Spec : Prop :=
  ∀ n, P287071700335301029.a n = A028901 n

end A028901

/-! ## A028901.P9660776907454692086

`A081597(n)*A130782(n²)`
-/

namespace A028901.P9660776907454692086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 n * A130782 (n ^ 2)

end

end A028901.P9660776907454692086

namespace A028901

/-- `A081597(n)*A130782(n²)` -/
def P9660776907454692086.Spec : Prop :=
  ∀ n, P9660776907454692086.a n = A028901 n

end A028901

/-! ## A028901.P7607895587216691282

`A081597(n)%A000124(n²)`
-/

namespace A028901.P7607895587216691282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081597 n) (A000124 (n ^ 2))

end

end A028901.P7607895587216691282

namespace A028901

/-- `A081597(n)%A000124(n²)` -/
def P7607895587216691282.Spec : Prop :=
  ∀ n, P7607895587216691282.a n = A028901 n

end A028901

/-! ## A028901.P13154191205679085645

`(A007953(A056142(n))+n)/2`
-/

namespace A028901.P13154191205679085645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (A056142 n).toNat + (n : ℤ) : ℚ) / 2

end

end A028901.P13154191205679085645

namespace A028901

/-- `(A007953(A056142(n))+n)/2` -/
def P13154191205679085645.Spec : Prop :=
  ∀ n, P13154191205679085645.a n = (A028901 n : ℚ)

end A028901

/-!
# A028902: Map n = Sum c_i 10^i to a(n) = Sum c_i 7^i.

The programs for A028902, there is no canonical definition to state claims against.
-/

/-! ## A028902.P4940177018235242144

`(n-3*floor(n/10))*A071036(n²)`
-/

namespace A028902.P4940177018235242144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋) * A071036 (n ^ 2)

end

end A028902.P4940177018235242144

/-! ## A028902.P16375138231048126804

`and(n-3*floor(n/10), A057428(n²))`
-/

namespace A028902.P16375138231048126804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋) (A057428 (n ^ 2))

end

end A028902.P16375138231048126804

/-! ## A028902.P2354280980784951077

`A081598(A000194(n²))`
-/

namespace A028902.P2354280980784951077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A000194 (n ^ 2)).toNat

end

end A028902.P2354280980784951077

/-! ## A028902.P1545063741772416541

`A056143(A051022(n))%89`
-/

namespace A028902.P1545063741772416541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056143 (A051022 n).toNat) 89

end

end A028902.P1545063741772416541

/-! ## A028902.P17568469441291898141

`A081598(A000196(∑[2*n]))`
-/

namespace A028902.P17568469441291898141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A028902.P17568469441291898141

/-! ## A028902.P5337846596964494660

`A057427(n²)*A081598(n)`
-/

namespace A028902.P5337846596964494660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2) * A081598 n

end

end A028902.P5337846596964494660

/-! ## A028902.P16326467593535702241

`A081598(n)*A158388(n²)`
-/

namespace A028902.P16326467593535702241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 n * A158388 (n ^ 2)

end

end A028902.P16326467593535702241

/-! ## A028902.P18137423076114224528

`A081598(n)%A000124(n²)`
-/

namespace A028902.P18137423076114224528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081598 n) (A000124 (n ^ 2))

end

end A028902.P18137423076114224528

/-!
# A028903: Map n = Sum c_i 10^i to a(n) = Sum c_i 8^i.

The programs for A028903, there is no canonical definition to state claims against.
-/

/-! ## A028903.P14446216992283255459

`A028904(A033619(n+1))-A059995(A118759(n))`
-/

namespace A028903.P14446216992283255459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A033619 (n + 1)).toNat - A059995 (A118759 n).toNat

end

end A028903.P14446216992283255459

/-! ## A028903.P15607830698690942524

`(n-2*floor(n/10))*val(∏{p}[(n-char[1])^3, #], 11)!`
-/

namespace A028903.P15607830698690942524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) * (Nat.factorial (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 11) : ℤ)

end

end A028903.P15607830698690942524

/-! ## A028903.P2514283029289952339

`A081599(n)%∑[10^n]`
-/

namespace A028903.P2514283029289952339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081599 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A028903.P2514283029289952339

/-! ## A028903.P8009582473704816900

`(n-2*floor(n/10))*A001492(n²)`
-/

namespace A028903.P8009582473704816900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) * A001492 (n ^ 2)

end

end A028903.P8009582473704816900

/-! ## A028903.P2069506214415539357

`(n-2*floor(n/10))%A000124(n²)`
-/

namespace A028903.P2069506214415539357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) (A000124 (n ^ 2))

end

end A028903.P2069506214415539357

/-! ## A028903.P18081063683646144089

`((n%10+4*n)/5)%A001845(n²)`
-/

namespace A028903.P18081063683646144089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n % 10 + 4 * n : ℕ) : ℚ) / 5)) (A001845 (n ^ 2))

end

end A028903.P18081063683646144089

/-! ## A028903.P15672016243498496199

`A322001(A056143(n))`
-/

namespace A028903.P15672016243498496199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A056143 n).toNat

end

end A028903.P15672016243498496199

/-! ## A028903.P16507701567384714195

`A081599(A000194(n²))`
-/

namespace A028903.P16507701567384714195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (A000194 (n ^ 2)).toNat

end

end A028903.P16507701567384714195

/-! ## A028903.P1426425414658734812

`A081599(A000196(∑[2*n]))`
-/

namespace A028903.P1426425414658734812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (A000196 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A028903.P1426425414658734812

/-! ## A028903.P4219858400342435450

`or(A000035(n²), A081599(n))`
-/

namespace A028903.P4219858400342435450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n ^ 2)) (A081599 n)

end

end A028903.P4219858400342435450

/-! ## A028903.P5491624809283999332

`∑[A062157(n^A014029(n²))]`
-/

namespace A028903.P5491624809283999332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A014029 (n ^ 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028903.P5491624809283999332

/-!
# A028904: Map n = Sum c_i 10^i to a(n) = Sum c_i 9^i.

The programs for A028904, there is no canonical definition to state claims against.
-/

/-! ## A028904.P5910742734811174881

`A076314(A076312(9*9*n))`
-/

namespace A028904.P5910742734811174881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A076312 (9 * (9 * n))).toNat

end

end A028904.P5910742734811174881

/-! ## A028904.P2994607318156074535

`A028898(A051022(n))`
-/

namespace A028904.P2994607318156074535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A051022 n).toNat

end

end A028904.P2994607318156074535

/-! ## A028904.P15565330778599912975

`n-A054899(A118759(n))`
-/

namespace A028904.P15565330778599912975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054899 (A118759 n).toNat

end

end A028904.P15565330778599912975

/-! ## A028904.P13533873979761381390

`A039723(A051022(n))%A103847(n+1)`
-/

namespace A028904.P13533873979761381390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039723 (A051022 n).toNat) (A103847 (n + 1))

end

end A028904.P13533873979761381390

/-! ## A028904.P6361586685656359001

`A000196(A000290(n))-A051885(A059995(n))`
-/

namespace A028904.P6361586685656359001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000290 n).toNat - A051885 (A059995 n).toNat

end

end A028904.P6361586685656359001

/-!
# A028905: Arrange digits of primes in ascending order.

The programs for A028905, there is no canonical definition to state claims against.
-/

/-! ## A028905.P16182910600525302671

`A004185(A000040(n+1))`
-/

namespace A028905.P16182910600525302671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A000040 (n + 1)).toNat

end

end A028905.P16182910600525302671

/-! ## A028905.P2182938233192038741

`A004185(A004087(n+1))`
-/

namespace A028905.P2182938233192038741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A004087 (n + 1)).toNat

end

end A028905.P2182938233192038741

/-! ## A028905.P18310340226248966365

`A004086(A028906(n+1))`
-/

namespace A028905.P18310340226248966365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028906 (n + 1)).toNat

end

end A028905.P18310340226248966365

/-! ## A028905.P1584672455028380863

`A004185(A008578(n+2))`
-/

namespace A028905.P1584672455028380863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A008578 (n + 2)).toNat

end

end A028905.P1584672455028380863

/-! ## A028905.P5917131726957281263

`A004185(A182986(n+2))`
-/

namespace A028905.P5917131726957281263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A182986 (n + 2)).toNat

end

end A028905.P5917131726957281263

/-! ## A028905.P6391238843403317162

`A004185(eq[1, A032741(n)])`
-/

namespace A028905.P6391238843403317162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028905.P6391238843403317162

/-! ## A028905.P13182271118022804846

`A004185(p?[A004442(n)+1])`
-/

namespace A028905.P13182271118022804846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A028905.P13182271118022804846

/-! ## A028905.P5412853286249459504

`A004185(p?[A067340(n+1)])`
-/

namespace A028905.P5412853286249459504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A028905.P5412853286249459504

/-! ## A028905.P9641361483786138755

`A004185(p?[A100994(n+1)])`
-/

namespace A028905.P9641361483786138755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A028905.P9641361483786138755

/-! ## A028905.P14690889459990561621

`A004185(A028906(2*n+1-n))`
-/

namespace A028905.P14690889459990561621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A028906 (2 * n + 1 - n)).toNat

end

end A028905.P14690889459990561621

/-! ## A028905.P7901365611251524717

`A004185(A101989(n+1))`
-/

namespace A028905.P7901365611251524717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A101989 (n + 1)).toNat

end

end A028905.P7901365611251524717

/-! ## A028905.P4050974471870676329

`A004185(p?[A001057(n)])`
-/

namespace A028905.P4050974471870676329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A028905.P4050974471870676329

/-! ## A028905.P2029211117153104668

`A004185(p?[A057979(n)])`
-/

namespace A028905.P2029211117153104668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A028905.P2029211117153104668

/-! ## A028905.P4601897201586607097

`A004185(eq[2, A053204(n)])`
-/

namespace A028905.P4601897201586607097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028905.P4601897201586607097

/-! ## A028905.P4256842360072598297

`A004185(A142342(n+1))`
-/

namespace A028905.P4256842360072598297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A142342 (n + 1)).toNat

end

end A028905.P4256842360072598297

/-!
# A028906: Arrange digits of primes in descending order.

The programs for A028906, there is no canonical definition to state claims against.
-/

/-! ## A028906.P16262084625246595843

`A004186(p?[comp[n²]])`
-/

namespace A028906.P16262084625246595843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A028906.P16262084625246595843

/-! ## A028906.P7607905976370738632

`A004186(Δ[A007504(n)])`
-/

namespace A028906.P7607905976370738632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (f1 (n + 1) - f1 n).toNat

end

end A028906.P7607905976370738632

/-! ## A028906.P18093101768622652862

`A004186(A000040(n+1))`
-/

namespace A028906.P18093101768622652862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000040 (n + 1)).toNat

end

end A028906.P18093101768622652862

/-! ## A028906.P2174276135083047855

`A004186(A004087(n+1))`
-/

namespace A028906.P2174276135083047855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A004087 (n + 1)).toNat

end

end A028906.P2174276135083047855

/-! ## A028906.P3215487765239286455

`A004186(A008578(n+2))`
-/

namespace A028906.P3215487765239286455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A008578 (n + 2)).toNat

end

end A028906.P3215487765239286455

/-! ## A028906.P13840881525333721288

`A004186(A182986(n+2))`
-/

namespace A028906.P13840881525333721288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A182986 (n + 2)).toNat

end

end A028906.P13840881525333721288

/-! ## A028906.P13389530102878156511

`A004186(A158611(n+3))`
-/

namespace A028906.P13389530102878156511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A158611 (n + 3)).toNat

end

end A028906.P13389530102878156511

/-! ## A028906.P10295774768300545948

`A004186(eq[0, A007920(n)])`
-/

namespace A028906.P10295774768300545948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P10295774768300545948

/-! ## A028906.P4384978834960784208

`A004186(eq[1, A032741(n)])`
-/

namespace A028906.P4384978834960784208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P4384978834960784208

/-! ## A028906.P12910838500359360376

`A004186(eq[1, A105700(n)])`
-/

namespace A028906.P12910838500359360376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P12910838500359360376

/-! ## A028906.P16915772052536308830

`A004186(eq[2, A073855(n)])`
-/

namespace A028906.P16915772052536308830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P16915772052536308830

/-! ## A028906.P12145439513201564213

`A004186(eq[2, A077982(n)])`
-/

namespace A028906.P12145439513201564213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P12145439513201564213

/-! ## A028906.P7101752828904229487

`A004186(eq[2, A092976(n)])`
-/

namespace A028906.P7101752828904229487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P7101752828904229487

/-! ## A028906.P1408975018266144526

`A004186(eq[2, A327859(n)])`
-/

namespace A028906.P1408975018266144526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P1408975018266144526

/-! ## A028906.P8004893301364248319

`A004186(eq[n, A062584(n)])`
-/

namespace A028906.P8004893301364248319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028906.P8004893301364248319

/-! ## A028906.P3361153224917612022

`A004186(record[A006530(n+2)])`
-/

namespace A028906.P3361153224917612022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028906.P3361153224917612022

/-! ## A028906.P16635257395249206132

`A004186(record[A014963(n+2)])`
-/

namespace A028906.P16635257395249206132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028906.P16635257395249206132

/-! ## A028906.P9332928106329806997

`A004186(record[A020639(n+2)])`
-/

namespace A028906.P9332928106329806997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028906.P9332928106329806997

/-! ## A028906.P10367648196661088640

`A004186(eq[1, A001222(n+1)]+1)`
-/

namespace A028906.P10367648196661088640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A028906.P10367648196661088640

/-! ## A028906.P17328614649822611240

`A004186(record[2*(n+1)/A000005(n+1)])`
-/

namespace A028906.P17328614649822611240
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A028906.P17328614649822611240

/-!
# A028907: Arrange digits of squares in ascending order.

The programs for A028907, the canonical program `A028907.P5228973763592594334` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028907 has offset 0).

The definition of A028907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028907.P5228973763592594334

`∑{digits}[∑{digits}[n², A002275(#)], A002275(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028907

/-- `∑{digits}[∑{digits}[n², A002275(#)], A002275(#)]` -/
def P5228973763592594334.Spec : Prop :=
  ∀ n, P5228973763592594334.a n = A028907 n

theorem P5228973763592594334.correct : P5228973763592594334.Spec := by
  intro n
  simp only [A028907]

end A028907

/-! ## A028907.P5200743219311863528

`A028908(n)-A151949(n²)`
-/

namespace A028907.P5200743219311863528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028908 n - A151949 (n ^ 2)

end

end A028907.P5200743219311863528

namespace A028907

/-- `A028908(n)-A151949(n²)` -/
def P5200743219311863528.Spec : Prop :=
  ∀ n, P5200743219311863528.a n = A028907 n

end A028907

/-! ## A028907.P5579990907328664314

`A004086(A028908(n))`
-/

namespace A028907.P5579990907328664314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028908 n).toNat

end

end A028907.P5579990907328664314

namespace A028907

/-- `A004086(A028908(n))` -/
def P5579990907328664314.Spec : Prop :=
  ∀ n, P5579990907328664314.a n = A028907 n

end A028907

/-! ## A028907.P2722059041233550670

`A004185((A321797(n)+A320486(n))²)`
-/

namespace A028907.P2722059041233550670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((A321797 n + A320486 n) ^ 2).toNat

end

end A028907.P2722059041233550670

namespace A028907

/-- `A004185((A321797(n)+A320486(n))²)` -/
def P2722059041233550670.Spec : Prop :=
  ∀ n, P2722059041233550670.a n = A028907 n

end A028907

/-! ## A028907.P1802200307736115022

`A004185((A320486(n)-A321797(n))²)`
-/

namespace A028907.P1802200307736115022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((A320486 n - A321797 n) ^ 2).toNat

end

end A028907.P1802200307736115022

namespace A028907

/-- `A004185((A320486(n)-A321797(n))²)` -/
def P1802200307736115022.Spec : Prop :=
  ∀ n, P1802200307736115022.a n = A028907 n

end A028907

/-! ## A028907.P4983697291668721188

`A004185(n²)`
-/

namespace A028907.P4983697291668721188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (n ^ 2)

end

end A028907.P4983697291668721188

namespace A028907

/-- `A004185(n²)` -/
def P4983697291668721188.Spec : Prop :=
  ∀ n, P4983697291668721188.a n = A028907 n

end A028907

/-! ## A028907.P5170390902602127081

`A070196(n²)-n²`
-/

namespace A028907.P5170390902602127081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 (n ^ 2) - (n ^ 2 : ℤ)

end

end A028907.P5170390902602127081

namespace A028907

/-- `A070196(n²)-n²` -/
def P5170390902602127081.Spec : Prop :=
  ∀ n, P5170390902602127081.a n = A028907 n

end A028907

/-! ## A028907.P18064950480614163748

`n²-A193581(n²)`
-/

namespace A028907.P18064950480614163748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A193581 (n ^ 2)

end

end A028907.P18064950480614163748

namespace A028907

/-- `n²-A193581(n²)` -/
def P18064950480614163748.Spec : Prop :=
  ∀ n, P18064950480614163748.a n = A028907 n

end A028907

/-! ## A028907.P8782215670055922595

`A004086(A004186(n²))`
-/

namespace A028907.P8782215670055922595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004186 (n ^ 2)).toNat

end

end A028907.P8782215670055922595

namespace A028907

/-- `A004086(A004186(n²))` -/
def P8782215670055922595.Spec : Prop :=
  ∀ n, P8782215670055922595.a n = A028907 n

end A028907

/-! ## A028907.P4166600622800831821

`A004086(A004086(A004185(n*n)))`
-/

namespace A028907.P4166600622800831821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A004185 (n * n)).toNat).toNat

end

end A028907.P4166600622800831821

namespace A028907

/-- `A004086(A004086(A004185(n*n)))` -/
def P4166600622800831821.Spec : Prop :=
  ∀ n, P4166600622800831821.a n = A028907 n

end A028907

/-! ## A028907.P15929348557238690565

`A328447(A004185(A328447(n*n)))`
-/

namespace A028907.P15929348557238690565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A004185 (A328447 (n * n)).toNat).toNat

end

end A028907.P15929348557238690565

namespace A028907

/-- `A328447(A004185(A328447(n*n)))` -/
def P15929348557238690565.Spec : Prop :=
  ∀ n, P15929348557238690565.a n = A028907 n

end A028907

/-! ## A028907.P5761705374711905954

`A004185(A028908(n))-A283001(A283001(n))`
-/

namespace A028907.P5761705374711905954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A028908 n).toNat - A283001 (A283001 n).toNat

end

end A028907.P5761705374711905954

namespace A028907

/-- `A004185(A028908(n))-A283001(A283001(n))` -/
def P5761705374711905954.Spec : Prop :=
  ∀ n, P5761705374711905954.a n = A028907 n

end A028907

/-! ## A028907.P10858028543386490149

`A004086(A004086(A004086(A004186(A000290(n)))))`
-/

namespace A028907.P10858028543386490149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A004086 (A004186 (A000290 n).toNat).toNat).toNat).toNat

end

end A028907.P10858028543386490149

namespace A028907

/-- `A004086(A004086(A004086(A004186(A000290(n)))))` -/
def P10858028543386490149.Spec : Prop :=
  ∀ n, P10858028543386490149.a n = A028907 n

end A028907

/-!
# A028908: Arrange digits of squares in descending order.

The programs for A028908, there is no canonical definition to state claims against.
-/

/-! ## A028908.P9331231051655104080

`A151949(n²)+A028907(n)`
-/

namespace A028908.P9331231051655104080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (n ^ 2) + A028907 n

end

end A028908.P9331231051655104080

/-! ## A028908.P7064456527435466131

`A151949(n²)+A004185((A320486(n)-A321797(n))²)`
-/

namespace A028908.P7064456527435466131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (n ^ 2) + A004185 ((A320486 n - A321797 n) ^ 2).toNat

end

end A028908.P7064456527435466131

/-! ## A028908.P7248291865492588393

`A004186(n²)`
-/

namespace A028908.P7248291865492588393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (n ^ 2)

end

end A028908.P7248291865492588393

/-! ## A028908.P5761053417050550010

`A108782(n²)+n²`
-/

namespace A028908.P5761053417050550010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (n ^ 2) + (n ^ 2 : ℤ)

end

end A028908.P5761053417050550010

/-! ## A028908.P13558220106024937774

`or(char[1], A004186(n*n))`
-/

namespace A028908.P13558220106024937774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004186 (n * n))

end

end A028908.P13558220106024937774

/-! ## A028908.P13615332435856061977

`xor(1, xor(1, A004186(n^2)))`
-/

namespace A028908.P13615332435856061977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A004186 (n ^ 2)))

end

end A028908.P13615332435856061977

/-! ## A028908.P1331506196608034760

`A333659(A328447(n²))`
-/

namespace A028908.P1331506196608034760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A328447 (n ^ 2)).toNat

end

end A028908.P1331506196608034760

/-! ## A028908.P10200240041411321654

`A151949(n²)+A004185(n²)`
-/

namespace A028908.P10200240041411321654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (n ^ 2) + A004185 (n ^ 2)

end

end A028908.P10200240041411321654

/-! ## A028908.P12112040934086281088

`A004186(n*n)%A038277(n)`
-/

namespace A028908.P12112040934086281088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 (n * n)) (A038277 n)

end

end A028908.P12112040934086281088

/-! ## A028908.P14072385315874099268

`A004186(n*n)+val(A000040(n+1), 4)`
-/

namespace A028908.P14072385315874099268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (n * n) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A028908.P14072385315874099268

/-! ## A028908.P405442312747052887

`A020639(gcd(n, n+1))*A004186(n*n)`
-/

namespace A028908.P405442312747052887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A004186 (n * n)

end

end A028908.P405442312747052887

/-! ## A028908.P10346727264449287407

`A004186(A000290(n))*A057427(n)`
-/

namespace A028908.P10346727264449287407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000290 n).toNat * A057427 n

end

end A028908.P10346727264449287407

/-! ## A028908.P7017490151058304855

`A004186(A000290(n))*A178334(n)`
-/

namespace A028908.P7017490151058304855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (A000290 n).toNat * A178334 n

end

end A028908.P7017490151058304855

/-!
# A028909: Arrange digits of 2^n in ascending order.

The programs for A028909, there is no canonical definition to state claims against.
-/

/-! ## A028909.P6678037618597185734

`A028910(n)-A151949(2^n)`
-/

namespace A028909.P6678037618597185734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028910 n - A151949 (2 ^ n)

end

end A028909.P6678037618597185734

/-! ## A028909.P11416811411087018816

`(A028910(n)-A151949(A219676(n)))%A041088(n)`
-/

namespace A028909.P11416811411087018816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028910 n - A151949 (A219676 n).toNat) (A041088 n)

end

end A028909.P11416811411087018816

/-! ## A028909.P1496470149403904079

`(A028910(n)-A151949(A219676(n)))*char[A333659(n)]`
-/

namespace A028909.P1496470149403904079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028910 n - A151949 (A219676 n).toNat) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A028909.P1496470149403904079

/-! ## A028909.P14350623851182681489

`(A028910(n)-A151949(A219676(n)))*char[A352152(n)]`
-/

namespace A028909.P14350623851182681489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352152 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028910 n - A151949 (A219676 n).toNat) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A028909.P14350623851182681489

/-! ## A028909.P2363148476796824213

`A000007(n+1)+A028910(n)-A151949(A219676(n))`
-/

namespace A028909.P2363148476796824213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A028910 n - A151949 (A219676 n).toNat)

end

end A028909.P2363148476796824213

/-!
# A028910: Arrange digits of 2^n in descending order.

The programs for A028910, there is no canonical definition to state claims against.
-/

/-! ## A028910.P5129114195015732306

`A151949(2^n)+A028909(n)`
-/

namespace A028910.P5129114195015732306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (2 ^ n) + A028909 n

end

end A028910.P5129114195015732306

/-! ## A028910.P11582472002600314036

`A004186(2^n)`
-/

namespace A028910.P11582472002600314036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (2 ^ n)

end

end A028910.P11582472002600314036

/-! ## A028910.P15892388231919175399

`A227362(2^n)`
-/

namespace A028910.P15892388231919175399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (2 ^ n)

end

end A028910.P15892388231919175399

/-! ## A028910.P12250187698468049456

`A108782(2^n)+2^n`
-/

namespace A028910.P12250187698468049456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (2 ^ n) + (2 ^ n : ℤ)

end

end A028910.P12250187698468049456

/-! ## A028910.P11900442390491546625

`A262557(A086066(2^n))`
-/

namespace A028910.P11900442390491546625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A086066 (2 ^ n)).toNat

end

end A028910.P11900442390491546625

/-!
# A028912: Sort digits of primes into descending order (A028906), sort this sequence into ascending order (A028911), then remove duplicates.

The programs for A028912, there is no canonical definition to state claims against.
-/

/-! ## A028912.P12621964234483952392

`record[A028911(A009947(n))]`
-/

namespace A028912.P12621964234483952392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028911 (A009947 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028912.P12621964234483952392

/-! ## A028912.P7498050266269758287

`record[A028911(A025480(n))]`
-/

namespace A028912.P7498050266269758287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028911 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028912.P7498050266269758287

/-! ## A028912.P1317548777996482750

`record[A028911(A008611(n+1))]`
-/

namespace A028912.P1317548777996482750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028911 (A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028912.P1317548777996482750

/-! ## A028912.P8759405504242260860

`record[A028911(A008615(n))]`
-/

namespace A028912.P8759405504242260860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028911 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028912.P8759405504242260860

/-! ## A028912.P12180581762803573719

`record[A028911(A008612(n+1))]`
-/

namespace A028912.P12180581762803573719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028911 (A008612 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028912.P12180581762803573719

/-! ## A028912.P10871464884321519088

`eq[1, char[A028906(n+1)]]`
-/

namespace A028912.P10871464884321519088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028912.P10871464884321519088

/-! ## A028912.P6659920909065405453

`record[A028911(A022290(n))]`
-/

namespace A028912.P6659920909065405453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028911 (A022290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028912.P6659920909065405453

/-!
# A028913: First differences of A007952.

The programs for A028913, there is no canonical definition to state claims against.
-/

/-! ## A028913.P14514502300508612874

`A000005(A006530(n+1))*A204539(n+2)`
-/

namespace A028913.P14514502300508612874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat * A204539 (n + 2)

end

end A028913.P14514502300508612874

/-! ## A028913.P8954900677712659126

`Δ[A007952(n)]`
-/

namespace A028913.P8954900677712659126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028913.P8954900677712659126

/-! ## A028913.P17338349297431051168

`Δ[A002491(n+1)]`
-/

namespace A028913.P17338349297431051168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028913.P17338349297431051168

/-! ## A028913.P14560003827305722587

`A007952(n+1)-A007952(n)`
-/

namespace A028913.P14560003827305722587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 (n + 1) - A007952 n

end

end A028913.P14560003827305722587

/-! ## A028913.P12261282193043024496

`A002491(n+2)-A002491(n+1)`
-/

namespace A028913.P12261282193043024496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 2) - A002491 (n + 1)

end

end A028913.P12261282193043024496

/-! ## A028913.P3007509583237110048

`Δ[A108696(n+2)]`
-/

namespace A028913.P3007509583237110048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028913.P3007509583237110048

/-! ## A028913.P2450960874458325445

`A108696(n+3)-A108696(n+2)`
-/

namespace A028913.P2450960874458325445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 3) - A108696 (n + 2)

end

end A028913.P2450960874458325445

/-! ## A028913.P3350059799257107302

`Δ[lt[n, A028920(n)²]]`
-/

namespace A028913.P3350059799257107302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A028913.P3350059799257107302

/-! ## A028913.P8451295307683938399

`Δ[eq[1, A130747(n+1)]]`
-/

namespace A028913.P8451295307683938399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A028913.P8451295307683938399

/-! ## A028913.P7801264506872650796

`Δ[record[A002491(A028920(n))]]`
-/

namespace A028913.P7801264506872650796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028913.P7801264506872650796

/-! ## A028913.P14832079242917404692

`Δ[eq[A028920(n), A082447(n+1)]]`
-/

namespace A028913.P14832079242917404692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A028913.P14832079242917404692

/-! ## A028913.P9267826079093944654

`Δ[A113749(∑[n+2])]`
-/

namespace A028913.P9267826079093944654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028913.P9267826079093944654

/-!
# A028914: Divide A028913 by 2.

The programs for A028914, there is no canonical definition to state claims against.
-/

/-! ## A028914.P10850588232568731242

`A204539(n+3)`
-/

namespace A028914.P10850588232568731242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204539 (n + 3)

end

end A028914.P10850588232568731242

/-! ## A028914.P3250603068926847843

`A028913(n+1)/2`
-/

namespace A028914.P3250603068926847843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028913 (n + 1) : ℚ) / 2

end

end A028914.P3250603068926847843

/-! ## A028914.P2015325961080760918

`Δ[A007952(n+1)/2]`
-/

namespace A028914.P2015325961080760918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007952 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028914.P2015325961080760918

/-! ## A028914.P7735077135882764723

`Δ[A002491(n+2)/2]`
-/

namespace A028914.P7735077135882764723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002491 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028914.P7735077135882764723

/-! ## A028914.P5521445353400555806

`Δ[A108696(n+3)/2]`
-/

namespace A028914.P5521445353400555806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108696 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028914.P5521445353400555806

/-! ## A028914.P3212521677374298475

`Δ[A104738(n+1)]`
-/

namespace A028914.P3212521677374298475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028914.P3212521677374298475

/-! ## A028914.P918110962754838168

`A104738(n+2)-A104738(n+1)`
-/

namespace A028914.P918110962754838168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104738 (n + 2) - A104738 (n + 1)

end

end A028914.P918110962754838168

/-! ## A028914.P9692279156123662272

`A001281(A028913(n+1))`
-/

namespace A028914.P9692279156123662272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028913 (n + 1)).toNat

end

end A028914.P9692279156123662272

/-! ## A028914.P11157558502341003802

`A246277(Δ[A007952(n+1)])`
-/

namespace A028914.P11157558502341003802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (f1 (n + 1) - f1 n).toNat

end

end A028914.P11157558502341003802

/-! ## A028914.P494855695267313957

`A001281(Δ[A002491(n+2)])`
-/

namespace A028914.P494855695267313957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A028914.P494855695267313957

/-! ## A028914.P15658789636141749444

`A004525(Δ[A002491(n+2)])`
-/

namespace A028914.P15658789636141749444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A028914.P15658789636141749444

/-! ## A028914.P15121548910494315007

`A004526(Δ[A002491(n+2)])`
-/

namespace A028914.P15121548910494315007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A028914.P15121548910494315007

/-! ## A028914.P12507054914777303999

`A278529(Δ[A002491(n+2)])`
-/

namespace A028914.P12507054914777303999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (f1 (n + 1) - f1 n).toNat

end

end A028914.P12507054914777303999

/-! ## A028914.P55956782870705272

`A004526(A028913(n+1)+1)`
-/

namespace A028914.P55956782870705272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028913 (n + 1) + 1).toNat

end

end A028914.P55956782870705272

/-! ## A028914.P17826936038062560194

`A130747(A028913(n+1)-1)`
-/

namespace A028914.P17826936038062560194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A028913 (n + 1) - 1).toNat

end

end A028914.P17826936038062560194

/-! ## A028914.P17678646266723469271

`A130747(A007952(n+2)-A002491(n+2))`
-/

namespace A028914.P17678646266723469271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A007952 (n + 2) - A002491 (n + 2)).toNat

end

end A028914.P17678646266723469271

/-! ## A028914.P3864836126345876751

`A130747(A002491(n+3)-A108696(n+3))`
-/

namespace A028914.P3864836126345876751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (A002491 (n + 3) - A108696 (n + 3)).toNat

end

end A028914.P3864836126345876751

/-! ## A028914.P15769138124074910413

`Δ[record[A104738(A028920(n))]]`
-/

namespace A028914.P15769138124074910413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104738 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028914.P15769138124074910413

/-!
# A028916: Friedlander-Iwaniec primes: Primes of form a^2 + b^4.

The programs for A028916, there is no canonical definition to state claims against.
-/

/-! ## A028916.P1422127146945081866

`record[A247857(A286621(n+1))]`
-/

namespace A028916.P1422127146945081866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247857 (A286621 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028916.P1422127146945081866

/-! ## A028916.P10145351536196896451

`record[A247857(A077610(n+1))]`
-/

namespace A028916.P10145351536196896451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247857 (A077610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028916.P10145351536196896451

/-! ## A028916.P18140816466018735792

`p?[A111925(n+1)]`
-/

namespace A028916.P18140816466018735792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028916.P18140816466018735792

/-! ## A028916.P5463851144423491852

`record[A247857(A049084(n+1)+1)]`
-/

namespace A028916.P5463851144423491852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247857 (A049084 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028916.P5463851144423491852

/-! ## A028916.P14465413635429810518

`record[A247857(A156061(n+1))]`
-/

namespace A028916.P14465413635429810518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247857 (A156061 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028916.P14465413635429810518

/-! ## A028916.P13443857060493733290

`record[A247857(A286478(n))]`
-/

namespace A028916.P13443857060493733290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247857 (A286478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028916.P13443857060493733290

/-! ## A028916.P5688904053298271389

`∩[A002313(n+1), A111925(n+1)]`
-/

namespace A028916.P5688904053298271389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P5688904053298271389

/-! ## A028916.P5776379758630646185

`∩[A055025(n+1), A111925(n+1)]`
-/

namespace A028916.P5776379758630646185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P5776379758630646185

/-! ## A028916.P17272700679052786343

`∩[A109515(n+1), A111925(n+1)]`
-/

namespace A028916.P17272700679052786343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P17272700679052786343

/-! ## A028916.P18391466978456347976

`∩[A111925(n+1), A266987(n+1)]`
-/

namespace A028916.P18391466978456347976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P18391466978456347976

/-! ## A028916.P8944282629343744604

`∩[A045352(n+1), A111925(n+1)]`
-/

namespace A028916.P8944282629343744604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P8944282629343744604

/-! ## A028916.P5391179580051526503

`∩[A042998(n+1), A111925(n+1)]`
-/

namespace A028916.P5391179580051526503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P5391179580051526503

/-! ## A028916.P16441163642216601868

`∩[A045348(n+1), A111925(n+1)]`
-/

namespace A028916.P16441163642216601868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P16441163642216601868

/-! ## A028916.P8682738306785683793

`∩[A111925(n+1), A270617(n+1)]`
-/

namespace A028916.P8682738306785683793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P8682738306785683793

/-! ## A028916.P13224334761573576709

`∩[A111925(n+1), A261123(n+1)]`
-/

namespace A028916.P13224334761573576709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P13224334761573576709

/-! ## A028916.P11582153209108680980

`∩[A000040(n+1), A111925(n+1)]`
-/

namespace A028916.P11582153209108680980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P11582153209108680980

/-! ## A028916.P5830435733669166462

`∩[A008578(n+1), A111925(n+1)]`
-/

namespace A028916.P5830435733669166462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P5830435733669166462

/-! ## A028916.P6224930954421488726

`∩[A033946(n+1), A111925(n+1)]`
-/

namespace A028916.P6224930954421488726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P6224930954421488726

/-! ## A028916.P8152446985545066256

`∩[A045344(n+1), A111925(n+1)]`
-/

namespace A028916.P8152446985545066256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P8152446985545066256

/-! ## A028916.P8250806446326882827

`∩[A046022(n+1), A111925(n+1)]`
-/

namespace A028916.P8250806446326882827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028916.P8250806446326882827

/-!
# A028917: a(n) = (3*n+1)! / (24*n).

The programs for A028917, the canonical program `A028917.P4773554154301030074` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028917 has offset 1).

The definition of A028917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028917.P4773554154301030074

`(3*(n+1)+1)!/(24*(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028917

/-- `(3*(n+1)+1)!/(24*(n+1))` -/
def P4773554154301030074.Spec : Prop :=
  ∀ n, P4773554154301030074.a n = (A028917 (n + 1) : ℚ)

end A028917

/-! ## A028917.P2532251911429417998

`A356012(3*n+4)/4`
-/

namespace A028917.P2532251911429417998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356012 (3 * n + 4) : ℚ) / 4

end

end A028917.P2532251911429417998

namespace A028917

/-- `A356012(3*n+4)/4` -/
def P2532251911429417998.Spec : Prop :=
  ∀ n, P2532251911429417998.a n = (A028917 (n + 1) : ℚ)

end A028917

/-! ## A028917.P7296800093072288311

`A261766(3*(n+1))/8`
-/

namespace A028917.P7296800093072288311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261766 (3 * (n + 1)) : ℚ) / 8

end

end A028917.P7296800093072288311

namespace A028917

/-- `A261766(3*(n+1))/8` -/
def P7296800093072288311.Spec : Prop :=
  ∀ n, P7296800093072288311.a n = (A028917 (n + 1) : ℚ)

end A028917

/-! ## A028917.P15100479588940396405

`A034000(n+1)*A051604(n)*A032031(n)`
-/

namespace A028917.P15100479588940396405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034000 (n + 1) * A051604 n * A032031 n

end

end A028917.P15100479588940396405

namespace A028917

/-- `A034000(n+1)*A051604(n)*A032031(n)` -/
def P15100479588940396405.Spec : Prop :=
  ∀ n, P15100479588940396405.a n = A028917 (n + 1)

end A028917

/-!
# A028918: (3n+1)!/(4*(3n-1)).

The programs for A028918, the canonical program `A028918.P2820974595877210498` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028918 has offset 1).

The definition of A028918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028918.P2820974595877210498

`(3*(n+1)+1)!/(4*(3*(n+1)-1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028918

/-- `(3*(n+1)+1)!/(4*(3*(n+1)-1))` -/
def P2820974595877210498.Spec : Prop :=
  ∀ n, P2820974595877210498.a n = (A028918 (n + 1) : ℚ)

end A028918

/-! ## A028918.P133768998373515933

`A032031(n+1)*A051604(n)*A008544(n)`
-/

namespace A028918.P133768998373515933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032031 (n + 1) * A051604 n * A008544 n

end

end A028918.P133768998373515933

namespace A028918

/-- `A032031(n+1)*A051604(n)*A008544(n)` -/
def P133768998373515933.Spec : Prop :=
  ∀ n, P133768998373515933.a n = A028918 (n + 1)

end A028918

/-! ## A028918.P7180672026361080668

`A081123(A008486(2*n+3))/A008574(3*n+2)`
-/

namespace A028918.P7180672026361080668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (A008486 (2 * n + 3)).toNat : ℚ) / (A008574 (3 * n + 2) : ℚ)

end

end A028918.P7180672026361080668

namespace A028918

/-- `A081123(A008486(2*n+3))/A008574(3*n+2)` -/
def P7180672026361080668.Spec : Prop :=
  ∀ n, P7180672026361080668.a n = (A028918 (n + 1) : ℚ)

end A028918

/-!
# A028919: Congruent to 0, 6, 10, 12 (mod 14).

The programs for A028919, the canonical program `A028919.P7383873374006362500` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028919 has offset 1).

The definition of A028919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028919.P7383873374006362500

`2*A047328(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028919

/-- `2*A047328(n+1)` -/
def P7383873374006362500.Spec : Prop :=
  ∀ n, P7383873374006362500.a n = A028919 (n + 1)

theorem P7383873374006362500.correct : P7383873374006362500.Spec := by
  intro n
  simp only [A028919, Nat.add_sub_cancel]

end A028919

/-! ## A028919.P10801701133601655642

`record[n-(n^4)%14]`
-/

namespace A028919.P10801701133601655642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 4 % 14 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028919.P10801701133601655642

namespace A028919

/-- `record[n-(n^4)%14]` -/
def P10801701133601655642.Spec : Prop :=
  ∀ n, P10801701133601655642.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P2223053653563841276

`a(n-4)+14` with `a(0)=0, a(1)=6, a(2)=10, a(3)=12`
-/

namespace A028919.P2223053653563841276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 10, 12] fun n a =>
  a (n - 4) + 14

end

end A028919.P2223053653563841276

namespace A028919

/-- `a(n-4)+14` -/
def P2223053653563841276.Spec : Prop :=
  ∀ n, (P2223053653563841276.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P13702593240929670315

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=6, a(2)=4, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A028919.P13702593240929670315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 4, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028919.P13702593240929670315

namespace A028919

/-- `∑[floor(a(n-4))]` -/
def P13702593240929670315.Spec : Prop :=
  ∀ n, (P13702593240929670315.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P12559290403397554132

`∑[a(n-4)%7]` with `a(0)=0, a(1)=6, a(2)=4, a(3)=2, a(4)=2`
-/

namespace A028919.P12559290403397554132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 4, 2, 2] fun n f1 =>
  f1 (n - 4) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028919.P12559290403397554132

namespace A028919

/-- `∑[a(n-4)%7]` -/
def P12559290403397554132.Spec : Prop :=
  ∀ n, (P12559290403397554132.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P17440253337020792881

`∑[lcm(2, (n+1)%4+1)]-2`
-/

namespace A028919.P17440253337020792881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) % 4 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A028919.P17440253337020792881

namespace A028919

/-- `∑[lcm(2, (n+1)%4+1)]-2` -/
def P17440253337020792881.Spec : Prop :=
  ∀ n, P17440253337020792881.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P12475712828013193008

`∑[A132400(n)+1]-2`
-/

namespace A028919.P12475712828013193008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132400 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A028919.P12475712828013193008

namespace A028919

/-- `∑[A132400(n)+1]-2` -/
def P12475712828013193008.Spec : Prop :=
  ∀ n, P12475712828013193008.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P5791730112552179190

`2*comp[A047350(n+1)]`
-/

namespace A028919.P5791730112552179190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028919.P5791730112552179190

namespace A028919

/-- `2*comp[A047350(n+1)]` -/
def P5791730112552179190.Spec : Prop :=
  ∀ n, (P5791730112552179190.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P16589939309828575866

`2*comp[A047357(n+1)+1]`
-/

namespace A028919.P16589939309828575866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047357 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028919.P16589939309828575866

namespace A028919

/-- `2*comp[A047357(n+1)+1]` -/
def P16589939309828575866.Spec : Prop :=
  ∀ n, (P16589939309828575866.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P2296120814934984389

`2*comp[A047370(n+1)-1]`
-/

namespace A028919.P2296120814934984389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028919.P2296120814934984389

namespace A028919

/-- `2*comp[A047370(n+1)-1]` -/
def P2296120814934984389.Spec : Prop :=
  ∀ n, (P2296120814934984389.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P1735661219636516019

`2*comp[A047296(n+1)-2]`
-/

namespace A028919.P1735661219636516019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047296 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028919.P1735661219636516019

namespace A028919

/-- `2*comp[A047296(n+1)-2]` -/
def P1735661219636516019.Spec : Prop :=
  ∀ n, (P1735661219636516019.a n : ℤ) = A028919 (n + 1)

end A028919

/-! ## A028919.P4678933179577076499

`2*∑[A000041(a(n-4))]` with `a(0)=0, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A028919.P4678933179577076499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2, 1] fun n f1 =>
  A000041 (f1 (n - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028919.P4678933179577076499

namespace A028919

/-- `2*∑[A000041(a(n-4))]` -/
def P4678933179577076499.Spec : Prop :=
  ∀ n, P4678933179577076499.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P17675725161501115095

`A083219(n)+A072833(n)`
-/

namespace A028919.P17675725161501115095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 n + A072833 n

end

end A028919.P17675725161501115095

namespace A028919

/-- `A083219(n)+A072833(n)` -/
def P17675725161501115095.Spec : Prop :=
  ∀ n, P17675725161501115095.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P1075026735810002227

`A244953(n)+A047444(n+1)`
-/

namespace A028919.P1075026735810002227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244953 n + A047444 (n + 1)

end

end A028919.P1075026735810002227

namespace A028919

/-- `A244953(n)+A047444(n+1)` -/
def P1075026735810002227.Spec : Prop :=
  ∀ n, P1075026735810002227.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P12819685599538301900

`2*(A244953(n)+A002265(n))`
-/

namespace A028919.P12819685599538301900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A244953 n + A002265 n)

end

end A028919.P12819685599538301900

namespace A028919

/-- `2*(A244953(n)+A002265(n))` -/
def P12819685599538301900.Spec : Prop :=
  ∀ n, P12819685599538301900.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P2204232135956183585

`2*(A008586(n)-A055264(n))`
-/

namespace A028919.P2204232135956183585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008586 n - A055264 n)

end

end A028919.P2204232135956183585

namespace A028919

/-- `2*(A008586(n)-A055264(n))` -/
def P2204232135956183585.Spec : Prop :=
  ∀ n, P2204232135956183585.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P14551154543663810336

`A072833(n)+A083220(n)/2`
-/

namespace A028919.P14551154543663810336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072833 n : ℚ) + (A083220 n : ℚ) / 2

end

end A028919.P14551154543663810336

namespace A028919

/-- `A072833(n)+A083220(n)/2` -/
def P14551154543663810336.Spec : Prop :=
  ∀ n, P14551154543663810336.a n = (A028919 (n + 1) : ℚ)

end A028919

/-! ## A028919.P15825111224272388821

`A047324(n+1)+A047312(n+1)`
-/

namespace A028919.P15825111224272388821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047324 (n + 1) + A047312 (n + 1)

end

end A028919.P15825111224272388821

namespace A028919

/-- `A047324(n+1)+A047312(n+1)` -/
def P15825111224272388821.Spec : Prop :=
  ∀ n, P15825111224272388821.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P10587172666505578475

`A047507(n+1)+A047262(n+1)`
-/

namespace A028919.P10587172666505578475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047507 (n + 1) + A047262 (n + 1)

end

end A028919.P10587172666505578475

namespace A028919

/-- `A047507(n+1)+A047262(n+1)` -/
def P10587172666505578475.Spec : Prop :=
  ∀ n, P10587172666505578475.a n = A028919 (n + 1)

end A028919

/-! ## A028919.P17835279784830223571

`A047557(n+1)+A047250(n+1)`
-/

namespace A028919.P17835279784830223571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047557 (n + 1) + A047250 (n + 1)

end

end A028919.P17835279784830223571

namespace A028919

/-- `A047557(n+1)+A047250(n+1)` -/
def P17835279784830223571.Spec : Prop :=
  ∀ n, P17835279784830223571.a n = A028919 (n + 1)

end A028919

/-!
# A028920: Pit harvesting sequence for winning solitaire Tchoukaillon (or Mancala).

The programs for A028920, there is no canonical definition to state claims against.
-/

/-! ## A028920.P13394248335369852000

`gcd(A016331(n), A364448(n+1))`
-/

namespace A028920.P13394248335369852000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016331 n) (A364448 (n + 1))

end

end A028920.P13394248335369852000

/-! ## A028920.P13357291356622262914

`and(A335574(n), A364448(n+1))`
-/

namespace A028920.P13357291356622262914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A335574 n) (A364448 (n + 1))

end

end A028920.P13357291356622262914

/-! ## A028920.P4619822198518211511

`and(A068975(n+1), A364448(n+1))`
-/

namespace A028920.P4619822198518211511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068975 (n + 1)) (A364448 (n + 1))

end

end A028920.P4619822198518211511

/-! ## A028920.P3703029510589535270

`A364448(n+1)%A246955(2*n+1)`
-/

namespace A028920.P3703029510589535270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364448 (n + 1)) (A246955 (2 * n + 1))

end

end A028920.P3703029510589535270

/-! ## A028920.P17283542361066331195

`A364448(n+1)+A000007(A191490(n))`
-/

namespace A028920.P17283542361066331195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364448 (n + 1) + A000007 (A191490 n).toNat

end

end A028920.P17283542361066331195

/-!
# A028922: Determinant of n-dimensional lattice Kappa(n) (non-integral beyond the entries shown).

The programs for A028922, there is no canonical definition to state claims against.
-/

/-! ## A028922.P9765885885752689435

`A087980(∑[∑{e}[n+1, #]+1])%A125655(2*(n+2))`
-/

namespace A028922.P9765885885752689435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087980 (∑ j ∈ Finset.range (n + 1), f1 j)) (A125655 (2 * (n + 2)))

end

end A028922.P9765885885752689435

/-! ## A028922.P9025831959469383352

`A336496(A037083(n+1)+A032555(n+1))`
-/

namespace A028922.P9025831959469383352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336496 (A037083 (n + 1) + A032555 (n + 1)).toNat

end

end A028922.P9025831959469383352

/-! ## A028922.P7095162072381463110

`A236678(∑[A100852(n)²])`
-/

namespace A028922.P7095162072381463110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236678 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028922.P7095162072381463110

/-! ## A028922.P14288632326994967300

`A064558(record[Δ[A060638(n)]])`
-/

namespace A028922.P14288632326994967300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028922.P14288632326994967300

/-!
# A028923: Kissing number of n-dimensional lattice Kappa_n.

The programs for A028923, there is no canonical definition to state claims against.
-/

/-! ## A028923.P5258294184137194381

`2*A028926(n)`
-/

namespace A028923.P5258294184137194381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028926 n

end

end A028923.P5258294184137194381

/-! ## A028923.P18180898999615546143

`A005843(A028926(n))`
-/

namespace A028923.P18180898999615546143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028926 n).toNat

end

end A028923.P18180898999615546143

/-! ## A028923.P1935366737942368483

`A004277(A028926(n)+1)-2`
-/

namespace A028923.P1935366737942368483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028926 n + 1).toNat - 2

end

end A028923.P1935366737942368483

/-! ## A028923.P9926939981933014998

`∑{e}[A053343(n+1), A028926(n)/#]`
-/

namespace A028923.P9926939981933014998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A028926 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A028923.P9926939981933014998

/-! ## A028923.P7392298432452301665

`∑{e}[A219603(n+1), A028926(n)/#]`
-/

namespace A028923.P7392298432452301665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219603 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A028926 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A028923.P7392298432452301665

/-!
# A028924: Maximal number of pairs of minimal vectors in n-dimensional laminated lattice.

The programs for A028924, there is no canonical definition to state claims against.
-/

/-! ## A028924.P12769339765720632496

`A002336(n)/2`
-/

namespace A028924.P12769339765720632496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002336 n : ℚ) / 2

end

end A028924.P12769339765720632496

/-! ## A028924.P12100681717768122198

`2^-A152847(n)*A002336(n)`
-/

namespace A028924.P12100681717768122198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-A152847 n : ℤ) * (A002336 n : ℚ)

end

end A028924.P12100681717768122198

/-! ## A028924.P2594977475846005760

`root(2, -A152847(n+1))*A002336(n)`
-/

namespace A028924.P2594977475846005760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (-A152847 (n + 1) : ℝ)) * (A002336 n : ℝ)

end

end A028924.P2594977475846005760

/-! ## A028924.P12183851548420922584

`2^A008683(A000230(n))*A002336(n)`
-/

namespace A028924.P12183851548420922584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000230 n).toNat : ℤ) * (A002336 n : ℚ)

end

end A028924.P12183851548420922584

/-! ## A028924.P7451958704606700740

`2^A321804(A007318(n))*A002336(n)`
-/

namespace A028924.P7451958704606700740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) * (A002336 n : ℚ)

end

end A028924.P7451958704606700740

/-!
# A028925: Maximal number of pairs of minimal vectors in an n-dimensional lattice.

The programs for A028925, there is no canonical definition to state claims against.
-/

/-! ## A028925.P12174155114004282797

`A028924(∑{digits}[n, #])`
-/

namespace A028925.P12174155114004282797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028924 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A028925.P12174155114004282797

/-! ## A028925.P3391514514163238062

`A028924(∏{digits}[n, #])`
-/

namespace A028925.P3391514514163238062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028924 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A028925.P3391514514163238062

/-! ## A028925.P15625637606706184563

`A028924(n)%302`
-/

namespace A028925.P15625637606706184563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028924 n) 302

end

end A028925.P15625637606706184563

/-! ## A028925.P3786838283716386098

`A028924(n-char[16])`
-/

namespace A028925.P3786838283716386098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028924 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A028925.P3786838283716386098

/-! ## A028925.P7601764057693089618

`A002336(∑{digits}[n, #])/2`
-/

namespace A028925.P7601764057693089618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002336 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ) / 2

end

end A028925.P7601764057693089618

/-!
# A028926: Number of pairs of minimal vectors in n-dimensional lattice Kappa_n.

The programs for A028926, there is no canonical definition to state claims against.
-/

/-! ## A028926.P12207062923556222499

`A028923(n)/2`
-/

namespace A028926.P12207062923556222499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028923 n : ℚ) / 2

end

end A028926.P12207062923556222499

/-! ## A028926.P370991518591253216

`A001281(A028923(n))`
-/

namespace A028926.P370991518591253216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A028923 n).toNat

end

end A028926.P370991518591253216

/-! ## A028926.P18065505225819333222

`A004524(A028923(n)+1)`
-/

namespace A028926.P18065505225819333222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A028923 n + 1).toNat

end

end A028926.P18065505225819333222

/-! ## A028926.P571199262485291649

`A004526(A028923(n)+1)`
-/

namespace A028926.P571199262485291649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028923 n + 1).toNat

end

end A028926.P571199262485291649

/-! ## A028926.P8505800965433941904

`A028242(A028923(n)+1)`
-/

namespace A028926.P8505800965433941904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A028923 n + 1).toNat

end

end A028926.P8505800965433941904

/-!
# A028927: Numbers represented by quadratic form with Gram matrix [ 3, 1; 1, 5 ].

The programs for A028927, there is no canonical definition to state claims against.
-/

/-! ## A028927.P9486785874260614613

`lt[A028928(A028951(2*n+5)), A028928(n)]`
-/

namespace A028927.P9486785874260614613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 (A028951 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028927.P9486785874260614613

/-! ## A028927.P11086222149057737361

`lt[A028928(A008458(n)-n), A028928(n)]`
-/

namespace A028927.P11086222149057737361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 (A008458 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028927.P11086222149057737361

/-! ## A028927.P9774388893955835094

`lt[A028928(A008458(n)), A028928(n)]`
-/

namespace A028927.P9774388893955835094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028927.P9774388893955835094

/-! ## A028927.P4847877627570651790

`lt[A092573(A278234(n)), A028928(n)]`
-/

namespace A028927.P4847877627570651790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A278234 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028927.P4847877627570651790

/-! ## A028927.P9281978302109836083

`lt[1, A028923(2*A028928(n))]`
-/

namespace A028927.P9281978302109836083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (2 * A028928 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028927.P9281978302109836083

/-! ## A028927.P2459567280001712061

`eq[1, A069010(A028928(n))^n]%A008706(n)`
-/

namespace A028927.P2459567280001712061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A028928 n).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A008706 n)

end

end A028927.P2459567280001712061

/-! ## A028927.P12310891404429606780

`record[n*A069010(A028928(n))]%A246336(A131816(n))`
-/

namespace A028927.P12310891404429606780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069010 (A028928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A246336 (A131816 n).toNat)

end

end A028927.P12310891404429606780

/-! ## A028927.P3682714572339511455

`A087960(n²)²*record[n*A069010(A028928(n))]`
-/

namespace A028927.P3682714572339511455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069010 (A028928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n ^ 2) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028927.P3682714572339511455

/-!
# A028928: Theta series of quadratic form (or lattice) with Gram matrix [ 3, 1; 1, 5 ].

The programs for A028928, there is no canonical definition to state claims against.
-/

/-! ## A028928.P16079770827365799745

`A007913(A017546(n))-A165573(A235200(n))`
-/

namespace A028928.P16079770827365799745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A017546 n).toNat - A165573 (A235200 n).toNat

end

end A028928.P16079770827365799745

/-! ## A028928.P13160281918123729014

`A008619(A097479(n))-A165573(A235200(n))`
-/

namespace A028928.P13160281918123729014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A097479 n).toNat - A165573 (A235200 n).toNat

end

end A028928.P13160281918123729014

/-! ## A028928.P7337721313504367588

`A056926(A064085(n+1))-A165573(A235200(n))`
-/

namespace A028928.P7337721313504367588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A064085 (n + 1)).toNat - A165573 (A235200 n).toNat

end

end A028928.P7337721313504367588

/-! ## A028928.P7386402120768778409

`A033999(A054810(n+1))²-A165573(A235200(n))`
-/

namespace A028928.P7386402120768778409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054810 (n + 1)).toNat ^ 2 - A165573 (A235200 n).toNat

end

end A028928.P7386402120768778409

/-! ## A028928.P18075335747269010159

`A033999(A054810(n+1)-1)-A165573(A235200(n))`
-/

namespace A028928.P18075335747269010159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054810 (n + 1) - 1).toNat - A165573 (A235200 n).toNat

end

end A028928.P18075335747269010159

/-!
# A028929: Numbers represented by quadratic form with Gram matrix [ 4, 1; 1, 6 ], divided by 2.

The programs for A028929, there is no canonical definition to state claims against.
-/

/-! ## A028929.P10468236350767645101

`record[A135997(A028958(n+1))]`
-/

namespace A028929.P10468236350767645101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A028958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028929.P10468236350767645101

/-! ## A028929.P3218607259526514760

`lt[log(A061347(3*n+2)), A028959(2*n)]`
-/

namespace A028929.P3218607259526514760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061347 (3 * n + 2) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028929.P3218607259526514760

/-! ## A028929.P14936116172507657494

`record[A135997(n*A057427(A028959(n)))]`
-/

namespace A028929.P14936116172507657494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 ((n : ℤ) * A057427 (A028959 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028929.P14936116172507657494

/-! ## A028929.P300118699965398429

`lt[A028930(3*(n+1)), A255011(A028930(n))]`
-/

namespace A028929.P300118699965398429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255011 (A028930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P300118699965398429

/-! ## A028929.P13583251465365095984

`lt[A359763(A002476(n+1)), A028930(n)]`
-/

namespace A028929.P13583251465365095984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359763 (A002476 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P13583251465365095984

/-! ## A028929.P5180023817448917817

`lt[0, A028961(4*n)]`
-/

namespace A028929.P5180023817448917817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028929.P5180023817448917817

/-! ## A028929.P16187981327861052343

`lt[A234359(n+1), A255011(A028930(n))]`
-/

namespace A028929.P16187981327861052343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255011 (A028930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P16187981327861052343

/-! ## A028929.P8587405903373938846

`lt[A028959(n), A028923(A028930(n))]`
-/

namespace A028929.P8587405903373938846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P8587405903373938846

/-! ## A028929.P13853056798309500015

`lt[A028961(n), A028923(A028930(n))]`
-/

namespace A028929.P13853056798309500015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P13853056798309500015

/-! ## A028929.P13886391478032752582

`lt[A260437(A000959(n+1)), A028930(n)]`
-/

namespace A028929.P13886391478032752582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A000959 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P13886391478032752582

/-! ## A028929.P15222805199774209486

`lt[A260437(A139269(n+1)/2), A028930(n)]`
-/

namespace A028929.P15222805199774209486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (SequenceMachineLib.roundAway ((A139269 (n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P15222805199774209486

/-! ## A028929.P13167041472287089523

`lt[A028928(n), A028923(A028959(2*n))]`
-/

namespace A028929.P13167041472287089523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028959 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P13167041472287089523

/-! ## A028929.P8477416869674616627

`lt[A001221(n+2), A028923(A028959(2*n))]`
-/

namespace A028929.P8477416869674616627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028959 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028929.P8477416869674616627

/-! ## A028929.P17145601798937761358

`lt[A265245(A028930(n)²), 1]`
-/

namespace A028929.P17145601798937761358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265245 (A028930 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028929.P17145601798937761358

/-!
# A028930: Theta series of quadratic form (or lattice) with Gram matrix [ 4, 1; 1, 6 ].

The programs for A028930, there is no canonical definition to state claims against.
-/

/-! ## A028930.P373302917951008926

`A028961(A195161(n))`
-/

namespace A028930.P373302917951008926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 (A195161 n).toNat

end

end A028930.P373302917951008926

/-! ## A028930.P8610429320007872

`A028961(4*n)`
-/

namespace A028930.P8610429320007872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 (4 * n)

end

end A028930.P8610429320007872

/-! ## A028930.P14847790445525425080

`A028961(A008574(n))+A000007(n)`
-/

namespace A028930.P14847790445525425080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 (A008574 n).toNat + A000007 n

end

end A028930.P14847790445525425080

/-! ## A028930.P11522855923169039770

`A028961(A014601(n+n))%A000040(n+1)`
-/

namespace A028930.P11522855923169039770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028961 (A014601 (n + n)).toNat) (A000040 (n + 1))

end

end A028930.P11522855923169039770

/-! ## A028930.P11871636347637871927

`A028961(A008574(n))+A005171(A008578(n+1))`
-/

namespace A028930.P11871636347637871927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 (A008574 n).toNat + A005171 (A008578 (n + 1)).toNat

end

end A028930.P11871636347637871927

/-! ## A028930.P13593031241468951693

`A008688(n)%46`
-/

namespace A028930.P13593031241468951693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008688 n) 46

end

end A028930.P13593031241468951693

/-! ## A028930.P16003267434894513860

`and(A083947(n²), A328530(n))`
-/

namespace A028930.P16003267434894513860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083947 (n ^ 2)) (A328530 n)

end

end A028930.P16003267434894513860

/-!
# A028931: Strings giving winning positions in Tchoukaillon (or Mancala) solitaire.

The programs for A028931, there is no canonical definition to state claims against.
-/

/-! ## A028931.P1652579652105998563

`A049345(eq[A004525(n), A328622(n)])`
-/

namespace A028931.P1652579652105998563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028931.P1652579652105998563

/-! ## A028931.P8259420371993939174

`A007623(lt[A197224(n+1), A282562(n)])`
-/

namespace A028931.P8259420371993939174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028931.P8259420371993939174

/-!
# A028932: Triangular array of winning positions in Tchoukaillon (or Mancala) solitaire.

The programs for A028932, there is no canonical definition to state claims against.
-/

/-! ## A028932.P3513112206055646325

`A091453(4*(n+1))%A074907(A124286(n+1))`
-/

namespace A028932.P3513112206055646325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091453 (4 * (n + 1))) (A074907 (A124286 (n + 1)).toNat)

end

end A028932.P3513112206055646325

/-! ## A028932.P16050509131877169838

`A091453(4*A077168(n))`
-/

namespace A028932.P16050509131877169838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (4 * A077168 n).toNat

end

end A028932.P16050509131877169838

/-! ## A028932.P2987189025318470560

`and(A008905(n), A084297(n+1))`
-/

namespace A028932.P2987189025318470560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008905 n) (A084297 (n + 1))

end

end A028932.P2987189025318470560

/-! ## A028932.P11209211947216455397

`A340853(A121466(n+1))/A340853(2*n+5)`
-/

namespace A028932.P11209211947216455397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340853 (A121466 (n + 1)).toNat : ℚ) / (A340853 (2 * n + 5) : ℚ)

end

end A028932.P11209211947216455397

/-! ## A028932.P4958052550498711280

`A200726(A174135(n+2))`
-/

namespace A028932.P4958052550498711280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200726 (A174135 (n + 2)).toNat

end

end A028932.P4958052550498711280

/-!
# A028933: Table of winning positions in Tchoukaillon (or Mancala) solitaire.

The programs for A028933, there is no canonical definition to state claims against.
-/

/-! ## A028933.P9638212753994802650

`A140060(abs(1-n)+1)%A140060(n+1)`
-/

namespace A028933.P9638212753994802650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140060 (|1 - (n : ℤ)| + 1).toNat) (A140060 (n + 1))

end

end A028933.P9638212753994802650

/-! ## A028933.P17457103160294939687

`A243348(A137097(n+1))%4`
-/

namespace A028933.P17457103160294939687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243348 (A137097 (n + 1)).toNat) 4

end

end A028933.P17457103160294939687

/-! ## A028933.P11327850132973655909

`A046660(C(A320456(n+1), n)+n+1)`
-/

namespace A028933.P11327850132973655909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (Nat.choose (A320456 (n + 1)).toNat n + n + 1)

end

end A028933.P11327850132973655909

/-! ## A028933.P6932147816676588955

`and(A065770(n+1), A075104(A077168(n)))`
-/

namespace A028933.P6932147816676588955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065770 (n + 1)) (A075104 (A077168 n).toNat)

end

end A028933.P6932147816676588955

/-! ## A028933.P17493873480612690373

`and(A297113(n+1), A342671(A239592(n)))`
-/

namespace A028933.P17493873480612690373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297113 (n + 1)) (A342671 (A239592 n).toNat)

end

end A028933.P17493873480612690373

/-!
# A028934: Negative of numerator of y-coordinate of (2n+1)*P where P is the generator for rational points on the curve y^2 + y = x^3 - x.

The programs for A028934, there is no canonical definition to state claims against.
-/

/-! ## A028934.P2613520454495013926

`A028942(2*n+1)`
-/

namespace A028934.P2613520454495013926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (2 * n + 1)

end

end A028934.P2613520454495013926

/-! ## A028934.P2807109091365435223

`A033999(n+1)*A278314(2*n+1)`
-/

namespace A028934.P2807109091365435223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A278314 (2 * n + 1)

end

end A028934.P2807109091365435223

/-! ## A028934.P9811006715802478540

`A028942(A005408(n))*A057427(n)`
-/

namespace A028934.P9811006715802478540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (A005408 n).toNat * A057427 n

end

end A028934.P9811006715802478540

/-! ## A028934.P8608942634498272024

`A028942(A005408(n))+A000007(n+1)`
-/

namespace A028934.P8608942634498272024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (A005408 n).toNat + A000007 (n + 1)

end

end A028934.P8608942634498272024

/-! ## A028934.P17742439377739122207

`(1-A000007(n))*A028942(A005408(n))`
-/

namespace A028934.P17742439377739122207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A028942 (A005408 n).toNat

end

end A028934.P17742439377739122207

/-!
# A028935: a(n) = A006720(n)^3 (cubed terms of Somos-4 sequence).

The programs for A028935, the canonical program `A028935.P1136129241853609240` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028935 has offset 0).

The definition of A028935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028935.P1136129241853609240

`A006720(n)^3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028935

/-- `A006720(n)^3` -/
def P1136129241853609240.Spec : Prop :=
  ∀ n, P1136129241853609240.a n = A028935 n

theorem P1136129241853609240.correct : P1136129241853609240.Spec := by
  intro n
  simp only [A028935]

end A028935

/-! ## A028935.P15992834434195852102

`sqrt(A028945(n))^3`
-/

namespace A028935.P15992834434195852102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028945 n : ℝ) ^ 3

end

end A028935.P15992834434195852102

namespace A028935

/-- `sqrt(A028945(n))^3` -/
def P15992834434195852102.Spec : Prop :=
  ∀ n, P15992834434195852102.a n = (A028935 n : ℝ)

end A028935

/-! ## A028935.P15991784978314245730

`A028943(abs(2*n-3))`
-/

namespace A028935.P15991784978314245730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028943 |(2 * n : ℤ) - 3|.toNat

end

end A028935.P15991784978314245730

namespace A028935

/-- `A028943(abs(2*n-3))` -/
def P15991784978314245730.Spec : Prop :=
  ∀ n, P15991784978314245730.a n = A028935 n

end A028935

/-! ## A028935.P14842994868379440296

`(A165904(n)/2^n)^3`
-/

namespace A028935.P14842994868379440296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165904 n : ℚ) / (2 ^ n : ℚ)) ^ 3

end

end A028935.P14842994868379440296

namespace A028935

/-- `(A165904(n)/2^n)^3` -/
def P14842994868379440296.Spec : Prop :=
  ∀ n, P14842994868379440296.a n = (A028935 n : ℚ)

end A028935

/-! ## A028935.P10492027723106113728

`A006720(n)*A028945(n)`
-/

namespace A028935.P10492027723106113728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n * A028945 n

end

end A028935.P10492027723106113728

namespace A028935

/-- `A006720(n)*A028945(n)` -/
def P10492027723106113728.Spec : Prop :=
  ∀ n, P10492027723106113728.a n = A028935 n

end A028935

/-!
# A028936: Numerator of x-coordinate of (2n)*P where P is the generator for rational points on the curve y^2 + y = x^3 - x.

The programs for A028936, the canonical program `A028936.P3915045730177328267` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028936 has offset 1).

The definition of A028936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028936.P17232957024739131755

`A028940(2*(n+1))`
-/

namespace A028936.P17232957024739131755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028940 (2 * (n + 1))

end

end A028936.P17232957024739131755

namespace A028936

/-- `A028940(2*(n+1))` -/
def P17232957024739131755.Spec : Prop :=
  ∀ n, P17232957024739131755.a n = A028936 (n + 1)

end A028936

/-! ## A028936.P3915045730177328267

`A006720(n+2)*A006720(n+3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028936

/-- `A006720(n+2)*A006720(n+3)` -/
def P3915045730177328267.Spec : Prop :=
  ∀ n, P3915045730177328267.a n = A028936 (n + 1)

theorem P3915045730177328267.correct : P3915045730177328267.Spec := by
  intro n
  simp only [A028936, Nat.add_sub_cancel]

end A028936

/-! ## A028936.P16477656814009518834

`abs(A028940(A051755(n+2)))`
-/

namespace A028936.P16477656814009518834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028940 (A051755 (n + 2)).toNat|

end

end A028936.P16477656814009518834

namespace A028936

/-- `abs(A028940(A051755(n+2)))` -/
def P16477656814009518834.Spec : Prop :=
  ∀ n, P16477656814009518834.a n = A028936 (n + 1)

end A028936

/-! ## A028936.P1938544511609492123

`record[A028940(n+1)^A062157(n)]`
-/

namespace A028936.P1938544511609492123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028940 (n + 1) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028936.P1938544511609492123

namespace A028936

/-- `record[A028940(n+1)^A062157(n)]` -/
def P1938544511609492123.Spec : Prop :=
  ∀ n, P1938544511609492123.a n = (A028936 (n + 1) : ℚ)

end A028936

/-!
# A028937: Denominator of x-coordinate of (2n)*P where P = (0,0) is the generator for rational points on the curve y^2 + y = x^3 - x.

The programs for A028937, there is no canonical definition to state claims against.
-/

/-! ## A028937.P1833058402326023437

`A028941(2*(n+1))`
-/

namespace A028937.P1833058402326023437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028941 (2 * (n + 1))

end

end A028937.P1833058402326023437

/-! ## A028937.P4735076563008612947

`A051138(n+1)²`
-/

namespace A028937.P4735076563008612947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051138 (n + 1) ^ 2

end

end A028937.P4735076563008612947

/-! ## A028937.P8049071556789328166

`A247369(4*(n+1))`
-/

namespace A028937.P8049071556789328166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247369 (4 * (n + 1))

end

end A028937.P8049071556789328166

/-! ## A028937.P5198846314056418757

`A157101(abs(1-n))²`
-/

namespace A028937.P5198846314056418757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157101 |1 - (n : ℤ)|.toNat ^ 2

end

end A028937.P5198846314056418757

/-! ## A028937.P8552567594143668962

`A006769(2*(n+1))²`
-/

namespace A028937.P8552567594143668962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (2 * (n + 1)) ^ 2

end

end A028937.P8552567594143668962

/-!
# A028938: Negative of numerator of y-coordinate of (2n)*P where P is generator for rational points on curve y^2 + y = x^3 - x.

The programs for A028938, there is no canonical definition to state claims against.
-/

/-! ## A028938.P72697131623803456

`A028942(2*(n+1))`
-/

namespace A028938.P72697131623803456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (2 * (n + 1))

end

end A028938.P72697131623803456

/-! ## A028938.P16074570336918168734

`A028942(A103517(n))+A025439(n)`
-/

namespace A028938.P16074570336918168734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (A103517 n).toNat + A025439 n

end

end A028938.P16074570336918168734

/-! ## A028938.P3196632777709404812

`char[A007318(n)]*A028942(A103517(n))`
-/

namespace A028938.P3196632777709404812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A028942 (A103517 n).toNat

end

end A028938.P3196632777709404812

/-! ## A028938.P10173929454525115677

`A028942(A051755(n+2))-A000007(n)`
-/

namespace A028938.P10173929454525115677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028942 (A051755 (n + 2)).toNat - A000007 n

end

end A028938.P10173929454525115677

/-!
# A028939: a(n) = denominator of y-coordinate of (2n)*P where P is the generator for rational points on the curve y^2 + y = x^3 - x.

The programs for A028939, there is no canonical definition to state claims against.
-/

/-! ## A028939.P8344709523996884493

`A028943(2*(n+1))`
-/

namespace A028939.P8344709523996884493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028943 (2 * (n + 1))

end

end A028939.P8344709523996884493

/-! ## A028939.P5779152508374711127

`sqrt(A028937(n+1))^3`
-/

namespace A028939.P5779152508374711127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028937 (n + 1) : ℝ) ^ 3

end

end A028939.P5779152508374711127

/-! ## A028939.P9362450196022563462

`A006769(2*(n+1))²^(3/2)`
-/

namespace A028939.P9362450196022563462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006769 (2 * (n + 1)) ^ 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)

end

end A028939.P9362450196022563462

/-! ## A028939.P15222183442768898468

`gcd(A028937(n+1), A334068(n))^3`
-/

namespace A028939.P15222183442768898468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028937 (n + 1)) (A334068 n) ^ 3

end

end A028939.P15222183442768898468

/-! ## A028939.P7032307216484215153

`sqrt(A028941(2*(n+1)))*A028941(2*(n+1))`
-/

namespace A028939.P7032307216484215153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028941 (2 * (n + 1)) : ℝ) * (A028941 (2 * (n + 1)) : ℝ)

end

end A028939.P7032307216484215153

/-!
# A028940: a(n) = numerator of the X-coordinate of n*P where P is the generator [0,0] for rational points on the curve y^2 + y = x^3 - x.

The programs for A028940, there is no canonical definition to state claims against.
-/

/-! ## A028940.P2020519308108780144

`-(A006769(n+2)*A006769(n))`
-/

namespace A028940.P2020519308108780144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A006769 (n + 2) * A006769 n)

end

end A028940.P2020519308108780144

/-! ## A028940.P3936939579756789036

`A006769(n+2)*A006769(n)/(n-A008619(2*n))`
-/

namespace A028940.P3936939579756789036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006769 (n + 2) * A006769 n : ℚ) / ((n : ℤ) - A008619 (2 * n) : ℚ)

end

end A028940.P3936939579756789036

/-! ## A028940.P4318283545103815521

`char[A157921(2*n+1)]-A006769(n+2)*A006769(n)`
-/

namespace A028940.P4318283545103815521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A006769 (n + 2) * A006769 n

end

end A028940.P4318283545103815521

/-! ## A028940.P9779569938683759337

`A006769(n+2)*A006769(n)*A211991(A194593(n+1))`
-/

namespace A028940.P9779569938683759337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (n + 2) * A006769 n * A211991 (A194593 (n + 1)).toNat

end

end A028940.P9779569938683759337

/-! ## A028940.P1380232020684655476

`(A008593(n)-A017401(n))*A006769(n+2)*A006769(n)`
-/

namespace A028940.P1380232020684655476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008593 n - A017401 n) * (A006769 (n + 2) * A006769 n)

end

end A028940.P1380232020684655476

/-!
# A028941: Denominator of X-coordinate of n*P where P is the generator [0,0] for rational points on curve y^2+y = x^3-x.

The programs for A028941, there is no canonical definition to state claims against.
-/

/-! ## A028941.P700951162767494027

`A006769(n+1)²`
-/

namespace A028941.P700951162767494027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (n + 1) ^ 2

end

end A028941.P700951162767494027

/-! ## A028941.P6736853557990609247

`A247369(2*(n+1))`
-/

namespace A028941.P6736853557990609247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247369 (2 * (n + 1))

end

end A028941.P6736853557990609247

/-! ## A028941.P368370962848572061

`abs(A247369(A103517(n)))`
-/

namespace A028941.P368370962848572061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247369 (A103517 n).toNat|

end

end A028941.P368370962848572061

/-! ## A028941.P15803188101069435597

`abs(A006769(1-A001489(n)))²`
-/

namespace A028941.P15803188101069435597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006769 (1 - A001489 n).toNat| ^ 2

end

end A028941.P15803188101069435597

/-! ## A028941.P3035688418198811454

`abs(A006769(A008611(3*n)))²`
-/

namespace A028941.P3035688418198811454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006769 (A008611 (3 * n)).toNat| ^ 2

end

end A028941.P3035688418198811454

/-! ## A028941.P5234828047206301880

`A006769(n+1)^and(2, A004771(n))`
-/

namespace A028941.P5234828047206301880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006769 (n + 1) : ℚ) ^ (Int.land 2 (A004771 n) : ℤ)

end

end A028941.P5234828047206301880

/-! ## A028941.P9522812212491928636

`A006769(n+1)^A308439(2*(n+1))`
-/

namespace A028941.P9522812212491928636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006769 (n + 1) : ℚ) ^ (A308439 (2 * (n + 1)) : ℤ)

end

end A028941.P9522812212491928636

/-! ## A028941.P12648072486004259513

`A006769(n+1)*A006769(A028310(n+1))`
-/

namespace A028941.P12648072486004259513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (n + 1) * A006769 (A028310 (n + 1)).toNat

end

end A028941.P12648072486004259513

/-! ## A028941.P4385513485170600896

`A006769(A008619(2*n))*A006769(n+1)`
-/

namespace A028941.P4385513485170600896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 (A008619 (2 * n)).toNat * A006769 (n + 1)

end

end A028941.P4385513485170600896

/-! ## A028941.P16145217122245333267

`A006769(abs(A001489(n+1)))*A006769(n+1)`
-/

namespace A028941.P16145217122245333267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 |A001489 (n + 1)|.toNat * A006769 (n + 1)

end

end A028941.P16145217122245333267

/-!
# A028942: Negative of numerator of y coordinate of n*P where P is the generator [0,0] for rational points on curve y^2+y = x^3-x.

The programs for A028942, there is no canonical definition to state claims against.
-/

/-! ## A028942.P13202463740460167566

`A033999(A000843(n+1))*A278314(n+1)`
-/

namespace A028942.P13202463740460167566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000843 (n + 1)).toNat * A278314 (n + 1)

end

end A028942.P13202463740460167566

/-! ## A028942.P1212304390864973462

`A006769(n)*A247369(2*n+3)*A033999(A000843(n+1))`
-/

namespace A028942.P1212304390864973462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006769 n * A247369 (2 * n + 3) * A033999 (A000843 (n + 1)).toNat

end

end A028942.P1212304390864973462

/-!
# A028943: Denominator of y coordinate of n*P where P is the generator [0,0] for rational points on curve y^2+y = x^3-x.

The programs for A028943, there is no canonical definition to state claims against.
-/

/-! ## A028943.P1912144056954790434

`abs(A006769(n+1)^3)`
-/

namespace A028943.P1912144056954790434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006769 (n + 1) ^ 3|

end

end A028943.P1912144056954790434

/-! ## A028943.P3262926353120481312

`sqrt(A028941(n+1))^3`
-/

namespace A028943.P3262926353120481312
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028941 (n + 1) : ℝ) ^ 3

end

end A028943.P3262926353120481312

/-! ## A028943.P7703988590108883252

`gcd(A006769(n+1)^3, A025439(n))`
-/

namespace A028943.P7703988590108883252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006769 (n + 1) ^ 3) (A025439 n)

end

end A028943.P7703988590108883252

/-! ## A028943.P15357400529440466617

`abs(A006769(n+1)*A028941(n+1))`
-/

namespace A028943.P15357400529440466617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006769 (n + 1) * A028941 (n + 1)|

end

end A028943.P15357400529440466617

/-! ## A028943.P2580588020690733244

`sqrt(A028941(n+1))*A247369(A051755(n+2))`
-/

namespace A028943.P2580588020690733244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028941 (n + 1) : ℝ) * (A247369 (A051755 (n + 2)).toNat : ℝ)

end

end A028943.P2580588020690733244

/-!
# A028944: Numerator of x-coordinate of (2n+1)*P where P is the generator for rational points on the curve y^2 + y = x^3 - x.

The programs for A028944, there is no canonical definition to state claims against.
-/

/-! ## A028944.P8990741097934782762

`A028940(2*n+1)`
-/

namespace A028944.P8990741097934782762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028940 (2 * n + 1)

end

end A028944.P8990741097934782762

/-! ## A028944.P14507598275408490166

`A028940(A005408(n))*A057427(n)`
-/

namespace A028944.P14507598275408490166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028940 (A005408 n).toNat * A057427 n

end

end A028944.P14507598275408490166

/-! ## A028944.P12983342401835885543

`A028940(A005408(n))+A000007(n+1)`
-/

namespace A028944.P12983342401835885543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028940 (A005408 n).toNat + A000007 (n + 1)

end

end A028944.P12983342401835885543

/-! ## A028944.P15170410992730127444

`(1-A000007(n))*A028940(A005408(n))`
-/

namespace A028944.P15170410992730127444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A028940 (A005408 n).toNat

end

end A028944.P15170410992730127444

/-! ## A028944.P17702368735010567037

`A028940(A005408(n))/A032548(n+1)`
-/

namespace A028944.P17702368735010567037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028940 (A005408 n).toNat : ℚ) / (A032548 (n + 1) : ℚ)

end

end A028944.P17702368735010567037

/-!
# A028945: a(n) = A006720(n)^2 (squared terms of Somos-4 sequence).

The programs for A028945, the canonical program `A028945.P9063600272498406862` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028945 has offset 0).

The definition of A028945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028945.P9063600272498406862

`A006720(n)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028945

/-- `A006720(n)²` -/
def P9063600272498406862.Spec : Prop :=
  ∀ n, P9063600272498406862.a n = A028945 n

theorem P9063600272498406862.correct : P9063600272498406862.Spec := by
  intro n
  simp only [A028945]

end A028945

/-! ## A028945.P7613195932095636262

`A028941(abs(2*n-3))`
-/

namespace A028945.P7613195932095636262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028941 |(2 * n : ℤ) - 3|.toNat

end

end A028945.P7613195932095636262

namespace A028945

/-- `A028941(abs(2*n-3))` -/
def P7613195932095636262.Spec : Prop :=
  ∀ n, P7613195932095636262.a n = A028945 n

end A028945

/-! ## A028945.P3744003299559159171

`(A165904(n)/2^n)²`
-/

namespace A028945.P3744003299559159171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A165904 n : ℚ) / (2 ^ n : ℚ)) ^ 2

end

end A028945.P3744003299559159171

namespace A028945

/-- `(A165904(n)/2^n)²` -/
def P3744003299559159171.Spec : Prop :=
  ∀ n, P3744003299559159171.a n = (A028945 n : ℚ)

end A028945

/-! ## A028945.P1921142771364710044

`A006720(n)^A000005(A181325(n))`
-/

namespace A028945.P1921142771364710044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006720 n : ℚ) ^ (A000005 (A181325 n).toNat : ℤ)

end

end A028945.P1921142771364710044

namespace A028945

/-- `A006720(n)^A000005(A181325(n))` -/
def P1921142771364710044.Spec : Prop :=
  ∀ n, P1921142771364710044.a n = (A028945 n : ℚ)

end A028945

/-! ## A028945.P6268650216067065052

`A006720(n)^A000005(A106859(n+1))`
-/

namespace A028945.P6268650216067065052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006720 n : ℚ) ^ (A000005 (A106859 (n + 1)).toNat : ℤ)

end

end A028945.P6268650216067065052

namespace A028945

/-- `A006720(n)^A000005(A106859(n+1))` -/
def P6268650216067065052.Spec : Prop :=
  ∀ n, P6268650216067065052.a n = (A028945 n : ℚ)

end A028945

/-!
# A028948: An "extremely strange sequence": a(n+1) = [ A*a(n)+B ]/p^r, where p^r is the highest power of p dividing [ A*a(n)+B ] and p=2, A=4.001, B=1.2.

The programs for A028948, there is no canonical definition to state claims against.
-/

/-! ## A028948.P10300466699197486262

`A096386(2^A272915(n))`
-/

namespace A028948.P10300466699197486262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A272915 n : ℤ))).toNat

end

end A028948.P10300466699197486262

/-! ## A028948.P5199651433445664830

`record[A001045(n)%A218910(n)]`
-/

namespace A028948.P5199651433445664830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001045 n) (A218910 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028948.P5199651433445664830

/-! ## A028948.P12976856326086420187

`A008611(4^n/A036064(n))`
-/

namespace A028948.P12976856326086420187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / (A036064 n : ℚ))).toNat

end

end A028948.P12976856326086420187

/-! ## A028948.P16573527352583836618

`A008611(4^n/A187447(n))`
-/

namespace A028948.P16573527352583836618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.roundAway ((4 ^ n : ℚ) / (A187447 n : ℚ))).toNat

end

end A028948.P16573527352583836618

/-!
# A028949: Write numbers from 1 to n(n+1)/2 in a left-justified lower triangular array (a) downwards and (b) across; a(n) is number of numbers in same position in both.

The programs for A028949, the canonical program `A028949.P15011364157154069551` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028949 has offset 1).

The definition of A028949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028949.P15011364157154069551

`A147809(abs(1-2*n))+A122553(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028949

/-- `A147809(abs(1-2*n))+A122553(n)` -/
def P15011364157154069551.Spec : Prop :=
  ∀ n, P15011364157154069551.a n = A028949 (n + 1)

theorem P15011364157154069551.correct : P15011364157154069551.Spec := by
  intro n
  simp only [A028949, Nat.add_sub_cancel]

end A028949

/-! ## A028949.P3692159978783092169

`A057979(A193432(eq[2*n, lcm(2, n)])+5)`
-/

namespace A028949.P3692159978783092169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A193432 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 5).toNat

end

end A028949.P3692159978783092169

namespace A028949

/-- `A057979(A193432(eq[2*n, lcm(2, n)])+5)` -/
def P3692159978783092169.Spec : Prop :=
  ∀ n, P3692159978783092169.a n = A028949 (n + 1)

end A028949

/-! ## A028949.P13489488905089736523

`A028242(A193432(A004273(n)))+1`
-/

namespace A028949.P13489488905089736523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A193432 (A004273 n).toNat).toNat + 1

end

end A028949.P13489488905089736523

namespace A028949

/-- `A028242(A193432(A004273(n)))+1` -/
def P13489488905089736523.Spec : Prop :=
  ∀ n, P13489488905089736523.a n = A028949 (n + 1)

end A028949

/-! ## A028949.P11309024079696108652

`A147809(A004280(n+1))+3%A099056(n)`
-/

namespace A028949.P11309024079696108652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (A004280 (n + 1)).toNat + Int.tmod 3 (A099056 n)

end

end A028949.P11309024079696108652

namespace A028949

/-- `A147809(A004280(n+1))+3%A099056(n)` -/
def P11309024079696108652.Spec : Prop :=
  ∀ n, P11309024079696108652.a n = A028949 (n + 1)

end A028949

/-! ## A028949.P14212279581012814467

`A000005(A056105(n)-n²)+2%(n+2)`
-/

namespace A028949.P14212279581012814467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A056105 n - (n ^ 2 : ℤ)).toNat + ((2 % (n + 2) : ℕ) : ℤ)

end

end A028949.P14212279581012814467

namespace A028949

/-- `A000005(A056105(n)-n²)+2%(n+2)` -/
def P14212279581012814467.Spec : Prop :=
  ∀ n, P14212279581012814467.a n = A028949 (n + 1)

end A028949

/-!
# A028950: Minimal norm of n-dimensional, strictly odd, unimodular lattice.

The programs for A028950, there is no canonical definition to state claims against.
-/

/-! ## A028950.P14833537827288047235

`A005136(or(n, ∑{e}[n+1, #%#²]))`
-/

namespace A028950.P14833537827288047235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Nat.lor n (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2))

end

end A028950.P14833537827288047235

/-! ## A028950.P9955301135043992381

`A005136(or(n, floor(n/∏{p}[n+1, #])))`
-/

namespace A028950.P9955301135043992381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.lor (n : ℤ) ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋).toNat

end

end A028950.P9955301135043992381

/-! ## A028950.P5484081781050988863

`A005136(or(n, A255327(n)))`
-/

namespace A028950.P5484081781050988863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.lor (n : ℤ) (A255327 n)).toNat

end

end A028950.P5484081781050988863

/-! ## A028950.P14346151484945958493

`A005136(n-char[A051062(n)])`
-/

namespace A028950.P14346151484945958493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A028950.P14346151484945958493

/-! ## A028950.P4587034571224395017

`A005136(n-char[A333173(n)])`
-/

namespace A028950.P4587034571224395017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333173 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A028950.P4587034571224395017

/-!
# A028951: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 4 ] (or the Kleinian 2-d lattice, see A002652).

The programs for A028951, there is no canonical definition to state claims against.
-/

/-! ## A028951.P17196843938477517169

`lt[A000007(A029144(n)), A002652(n)]`
-/

namespace A028951.P17196843938477517169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P17196843938477517169

/-! ## A028951.P16685838917612581181

`comp[A257346(n+1)]%A257346(2*n+1)`
-/

namespace A028951.P16685838917612581181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257346 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A257346 (2 * n + 1))

end

end A028951.P16685838917612581181

/-! ## A028951.P775046844471545962

`lt[A000035(A253563(n+1)), A002652(n)]`
-/

namespace A028951.P775046844471545962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A253563 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P775046844471545962

/-! ## A028951.P8943770068585905482

`lt[A309768(A204892(n+5)), A002652(n)]`
-/

namespace A028951.P8943770068585905482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309768 (A204892 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P8943770068585905482

/-! ## A028951.P17665803525248720638

`lt[A010051(A000217(2*n+1)), A002652(n)]`
-/

namespace A028951.P17665803525248720638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000217 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P17665803525248720638

/-! ## A028951.P14215373791631491186

`lt[A000122(A050711(3*n+1)), A002652(n)]`
-/

namespace A028951.P14215373791631491186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A050711 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P14215373791631491186

/-! ## A028951.P13621782418925965526

`lt[A209229(A233131(3*n+1)), A002652(n)]`
-/

namespace A028951.P13621782418925965526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A233131 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P13621782418925965526

/-! ## A028951.P743248741121931696

`lt[A034188(A077677(3*n+5)), A002652(n)]`
-/

namespace A028951.P743248741121931696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (A077677 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P743248741121931696

/-! ## A028951.P8288994266647756714

`lt[A252743(A117502(n+1)), A002652(n)]`
-/

namespace A028951.P8288994266647756714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252743 (A117502 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P8288994266647756714

/-! ## A028951.P903719909591756919

`lt[A266216(A347935(3*n+2)), A002652(n)]`
-/

namespace A028951.P903719909591756919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (A347935 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028951.P903719909591756919

/-!
# A028952: Numbers represented by quadratic form with Gram matrix [ 3, 1; 1, 4 ].

The programs for A028952, there is no canonical definition to state claims against.
-/

/-! ## A028952.P12421270886608075814

`lt[A219977(A074400(n+1)), A028953(n)]`
-/

namespace A028952.P12421270886608075814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A074400 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028952.P12421270886608075814

/-! ## A028952.P11695537133976818403

`lt[A033999(A005153(n+1)), A028953(n)]`
-/

namespace A028952.P11695537133976818403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005153 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028952.P11695537133976818403

/-! ## A028952.P3130252369100956753

`lt[A033999(A176687(n+1)-1), A028953(n)-1]`
-/

namespace A028952.P3130252369100956753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A176687 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028952.P3130252369100956753

/-! ## A028952.P999815791908228412

`lt[A033999(A000040(n+1)-1), A028953(n)]`
-/

namespace A028952.P999815791908228412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000040 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028952.P999815791908228412

/-! ## A028952.P17085474765176711993

`eq[1, gcd(A028953(n), A106282(n+1))]`
-/

namespace A028952.P17085474765176711993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028953 n) (A106282 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028952.P17085474765176711993

/-! ## A028952.P16916849195673430471

`lt[1/∏{p}[A092565(n)+1, #], A028953(n)]`
-/

namespace A028952.P16916849195673430471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092565 n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A028952.P16916849195673430471

/-!
# A028953: Theta series of quadratic form (or lattice) with Gram matrix [ 3, 1; 1, 4 ].

The programs for A028953, there is no canonical definition to state claims against.
-/

/-! ## A028953.P6315233286150775428

`A004533(n)%A004511(A151909(n))`
-/

namespace A028953.P6315233286150775428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004533 n) (A004511 (A151909 n).toNat)

end

end A028953.P6315233286150775428

/-! ## A028953.P5263307261935090827

`∑{e}[A006155(A033723(3*n)), #]`
-/

namespace A028953.P5263307261935090827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006155 (A033723 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A028953.P5263307261935090827

/-! ## A028953.P17410120413603661717

`and(A020639(A262050(n)), A028995(n))`
-/

namespace A028953.P17410120413603661717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A262050 n).toNat) (A028995 n)

end

end A028953.P17410120413603661717

/-! ## A028953.P4744880716602923795

`A035220(A028610(n)+A005517(n+1))`
-/

namespace A028953.P4744880716602923795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035220 (A028610 n + A005517 (n + 1)).toNat

end

end A028953.P4744880716602923795

/-!
# A028954: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 6 ]. (divided by 2).

The programs for A028954, the canonical program `A028954.P10015280007482825137` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028954 has offset 1).

The definition of A028954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028954.P11620666164361565116

`lt[A188014(A000118(n)), A028609(n)]`
-/

namespace A028954.P11620666164361565116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A000118 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P11620666164361565116

namespace A028954

/-- `lt[A188014(A000118(n)), A028609(n)]` -/
def P11620666164361565116.Spec : Prop :=
  ∀ n, (P11620666164361565116.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P15541467280044161534

`lt[A033324(A227916(n+1)), A028609(n)]`
-/

namespace A028954.P15541467280044161534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033324 (A227916 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P15541467280044161534

namespace A028954

/-- `lt[A033324(A227916(n+1)), A028609(n)]` -/
def P15541467280044161534.Spec : Prop :=
  ∀ n, (P15541467280044161534.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P2987907951445950516

`lt[A000007(A348937(n+1)), A028609(n)]`
-/

namespace A028954.P2987907951445950516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A348937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P2987907951445950516

namespace A028954

/-- `lt[A000007(A348937(n+1)), A028609(n)]` -/
def P2987907951445950516.Spec : Prop :=
  ∀ n, (P2987907951445950516.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P16564765695140408103

`lt[A257000(A112624(n+1)), A028609(n)]`
-/

namespace A028954.P16564765695140408103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A112624 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P16564765695140408103

namespace A028954

/-- `lt[A257000(A112624(n+1)), A028609(n)]` -/
def P16564765695140408103.Spec : Prop :=
  ∀ n, (P16564765695140408103.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P2309893415748272738

`lt[A374646(A003961(n+1)), A028609(n)]`
-/

namespace A028954.P2309893415748272738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 (A003961 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P2309893415748272738

namespace A028954

/-- `lt[A374646(A003961(n+1)), A028609(n)]` -/
def P2309893415748272738.Spec : Prop :=
  ∀ n, (P2309893415748272738.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P17810760966859721395

`lt[A374646(A141287(n+1)), A028609(n)]`
-/

namespace A028954.P17810760966859721395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 (A141287 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P17810760966859721395

namespace A028954

/-- `lt[A374646(A141287(n+1)), A028609(n)]` -/
def P17810760966859721395.Spec : Prop :=
  ∀ n, (P17810760966859721395.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P17887443511022790323

`lt[A320656(A333386(n+2)), A028609(n)]`
-/

namespace A028954.P17887443511022790323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (A333386 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P17887443511022790323

namespace A028954

/-- `lt[A320656(A333386(n+2)), A028609(n)]` -/
def P17887443511022790323.Spec : Prop :=
  ∀ n, (P17887443511022790323.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P10508299889126759206

`lt[A129251(A227916(n+3)), A028609(n)]`
-/

namespace A028954.P10508299889126759206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A227916 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P10508299889126759206

namespace A028954

/-- `lt[A129251(A227916(n+3)), A028609(n)]` -/
def P10508299889126759206.Spec : Prop :=
  ∀ n, (P10508299889126759206.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P10015280007482825137

`lt[A007814(A211422(n)), A028609(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028954

/-- `lt[A007814(A211422(n)), A028609(n)]` -/
def P10015280007482825137.Spec : Prop :=
  ∀ n, (P10015280007482825137.a n : ℤ) = A028954 (n + 1)

theorem P10015280007482825137.correct : P10015280007482825137.Spec := by
  intro n
  simp only [A028954, Nat.add_sub_cancel]

end A028954

/-! ## A028954.P14582186166902124789

`lt[A010815(A106857(n+1)), A028609(n)]`
-/

namespace A028954.P14582186166902124789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A106857 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P14582186166902124789

namespace A028954

/-- `lt[A010815(A106857(n+1)), A028609(n)]` -/
def P14582186166902124789.Spec : Prop :=
  ∀ n, (P14582186166902124789.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P10610950998668934825

`lt[A007814(n+1), A028609(A008602(n))]`
-/

namespace A028954.P10610950998668934825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 (A008602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P10610950998668934825

namespace A028954

/-- `lt[A007814(n+1), A028609(A008602(n))]` -/
def P10610950998668934825.Spec : Prop :=
  ∀ n, (P10610950998668934825.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P13494852544579282419

`lt[A257000(A006984(n+1)), A028609(n)]`
-/

namespace A028954.P13494852544579282419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A006984 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P13494852544579282419

namespace A028954

/-- `lt[A257000(A006984(n+1)), A028609(n)]` -/
def P13494852544579282419.Spec : Prop :=
  ∀ n, (P13494852544579282419.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P1293342892871563414

`lt[A000038(A233583(2*(n+1))), A028609(n)]`
-/

namespace A028954.P1293342892871563414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A233583 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P1293342892871563414

namespace A028954

/-- `lt[A000038(A233583(2*(n+1))), A028609(n)]` -/
def P1293342892871563414.Spec : Prop :=
  ∀ n, (P1293342892871563414.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P1144481974275180944

`lt[A276950(A376122(n+1)), A028609(n)]`
-/

namespace A028954.P1144481974275180944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A376122 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P1144481974275180944

namespace A028954

/-- `lt[A276950(A376122(n+1)), A028609(n)]` -/
def P1144481974275180944.Spec : Prop :=
  ∀ n, (P1144481974275180944.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P4106970549286581549

`lt[A112765(A220345(n+1)), A028609(n)]`
-/

namespace A028954.P4106970549286581549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A220345 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P4106970549286581549

namespace A028954

/-- `lt[A112765(A220345(n+1)), A028609(n)]` -/
def P4106970549286581549.Spec : Prop :=
  ∀ n, (P4106970549286581549.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P11578518814615194651

`lt[A063524(A000217(n)), A028609(n)]`
-/

namespace A028954.P11578518814615194651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P11578518814615194651

namespace A028954

/-- `lt[A063524(A000217(n)), A028609(n)]` -/
def P11578518814615194651.Spec : Prop :=
  ∀ n, (P11578518814615194651.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P9385703226964119653

`lt[A063524(A071395(n+1)), A028609(n)]`
-/

namespace A028954.P9385703226964119653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A071395 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P9385703226964119653

namespace A028954

/-- `lt[A063524(A071395(n+1)), A028609(n)]` -/
def P9385703226964119653.Spec : Prop :=
  ∀ n, (P9385703226964119653.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P2337229683694682810

`lt[A010054(A320894(2*(n+1))), A028609(n)]`
-/

namespace A028954.P2337229683694682810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A320894 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P2337229683694682810

namespace A028954

/-- `lt[A010054(A320894(2*(n+1))), A028609(n)]` -/
def P2337229683694682810.Spec : Prop :=
  ∀ n, (P2337229683694682810.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P5447162968382075613

`lt[A000038(A023201(n+1)), A028609(n)]`
-/

namespace A028954.P5447162968382075613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A023201 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P5447162968382075613

namespace A028954

/-- `lt[A000038(A023201(n+1)), A028609(n)]` -/
def P5447162968382075613.Spec : Prop :=
  ∀ n, (P5447162968382075613.a n : ℤ) = A028954 (n + 1)

end A028954

/-! ## A028954.P1328356824947471156

`lt[A230412(A007091(2*(n+2))), A028609(n)]`
-/

namespace A028954.P1328356824947471156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 (A007091 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028954.P1328356824947471156

namespace A028954

/-- `lt[A230412(A007091(2*(n+2))), A028609(n)]` -/
def P1328356824947471156.Spec : Prop :=
  ∀ n, (P1328356824947471156.a n : ℤ) = A028954 (n + 1)

end A028954

/-!
# A028955: Numbers represented by quadratic form with Gram matrix [ 4, 1; 1, 4 ] (divided by 2).

The programs for A028955, there is no canonical definition to state claims against.
-/

/-! ## A028955.P14115246397156817737

`lt[0, A028956(n)]`
-/

namespace A028955.P14115246397156817737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028955.P14115246397156817737

/-! ## A028955.P12872266674446321734

`eq[0, A000038(A028956(n)²)]`
-/

namespace A028955.P12872266674446321734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028956 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028955.P12872266674446321734

/-! ## A028955.P16983568558665611830

`eq[0, A014744(A028956(n)²)]`
-/

namespace A028955.P16983568558665611830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A028956 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028955.P16983568558665611830

/-! ## A028955.P7464788885810713354

`eq[0, A028928(A028956(n)²)]`
-/

namespace A028955.P7464788885810713354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 (A028956 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028955.P7464788885810713354

/-! ## A028955.P15584148239450431173

`eq[0, A028956(A028956(n)²)]`
-/

namespace A028955.P15584148239450431173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028956 (A028956 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028955.P15584148239450431173

/-! ## A028955.P6505347705074937570

`eq[2, A040001(2*A028956(n))]`
-/

namespace A028955.P6505347705074937570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * A028956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028955.P6505347705074937570

/-! ## A028955.P18141338489769875376

`eq[A000122(n), A036987(A028956(n))]`
-/

namespace A028955.P18141338489769875376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A028956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028955.P18141338489769875376

/-! ## A028955.P18079414510191931565

`eq[A000038(n+1), A000038(A028956(n))]`
-/

namespace A028955.P18079414510191931565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028955.P18079414510191931565

/-! ## A028955.P13975476493223528220

`eq[A036987(2*n), A036987(A028956(n))]`
-/

namespace A028955.P13975476493223528220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A028956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028955.P13975476493223528220

/-! ## A028955.P4558561597360068910

`eq[n*A000038(n), A000038(A028956(n))]`
-/

namespace A028955.P4558561597360068910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028955.P4558561597360068910

/-! ## A028955.P5018050905361418145

`lt[1, A028625(2*n)+1]`
-/

namespace A028955.P5018050905361418145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028955.P5018050905361418145

/-! ## A028955.P13253537764863945665

`lt[1, A312523(A028625(2*n))]`
-/

namespace A028955.P13253537764863945665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312523 (A028625 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028955.P13253537764863945665

/-! ## A028955.P14174644035762854328

`lt[A010060(n), A028625(2*n)]`
-/

namespace A028955.P14174644035762854328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028955.P14174644035762854328

/-! ## A028955.P13811102055213390343

`lt[1, A028625(A028625(2*n)²)]`
-/

namespace A028955.P13811102055213390343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (A028625 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028955.P13811102055213390343

/-! ## A028955.P16225128669915680710

`lt[A028591(A028625(n)), A028625(2*n)]`
-/

namespace A028955.P16225128669915680710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028591 (A028625 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028955.P16225128669915680710

/-! ## A028955.P16789194624277490975

`lt[A317643(A317643(2*n)), A028625(2*n)]`
-/

namespace A028955.P16789194624277490975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317643 (A317643 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028955.P16789194624277490975

/-! ## A028955.P8387742858771394101

`lt[0, A028625(A008706(n))]`
-/

namespace A028955.P8387742858771394101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028955.P8387742858771394101

/-! ## A028955.P18102076442747438525

`lt[A028639(2*n)-A028625(2*n), A028639(2*n)]`
-/

namespace A028955.P18102076442747438525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (2 * n) - A028625 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028955.P18102076442747438525

/-!
# A028956: Theta series of quadratic form (or lattice) with Gram matrix [ 4, 1; 1, 4 ].

The programs for A028956, there is no canonical definition to state claims against.
-/

/-! ## A028956.P10549928238322819556

`A192323(4*n)`
-/

namespace A028956.P10549928238322819556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (4 * n)

end

end A028956.P10549928238322819556

/-! ## A028956.P14896745620728388676

`A028625(3*n)`
-/

namespace A028956.P14896745620728388676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 (3 * n)

end

end A028956.P14896745620728388676

/-! ## A028956.P5637809880002669290

`A192323(A008586(n))%A056959(n+1)`
-/

namespace A028956.P5637809880002669290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192323 (A008586 n).toNat) (A056959 (n + 1))

end

end A028956.P5637809880002669290

/-! ## A028956.P7380854903827114863

`A192323(A008574(n))+A008574(n)%2`
-/

namespace A028956.P7380854903827114863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A008574 n).toNat + Int.tmod (A008574 n) 2

end

end A028956.P7380854903827114863

/-! ## A028956.P7876214415019702545

`A192323(A008486(n)+n)+A000007(n)`
-/

namespace A028956.P7876214415019702545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (A008486 n + (n : ℤ)).toNat + A000007 n

end

end A028956.P7876214415019702545

/-! ## A028956.P10615581896745799336

`or(A000007(n), A192323(A008585(n)+n))`
-/

namespace A028956.P10615581896745799336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A192323 (A008585 n + (n : ℤ)).toNat)

end

end A028956.P10615581896745799336

/-! ## A028956.P17363736948568117846

`2*A122855(4*n)-A260671(4*n)`
-/

namespace A028956.P17363736948568117846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122855 (4 * n) - A260671 (4 * n)

end

end A028956.P17363736948568117846

/-! ## A028956.P17259652474617055301

`A028625(A008706(n))/(A028625(n)+1)`
-/

namespace A028956.P17259652474617055301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028625 (A008706 n).toNat : ℚ) / (A028625 n + 1 : ℚ)

end

end A028956.P17259652474617055301

/-! ## A028956.P18204777078202962543

`A028625(A008706(n))/A028625(A028625(n)²)`
-/

namespace A028956.P18204777078202962543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028625 (A008706 n).toNat : ℚ) / (A028625 (A028625 n ^ 2).toNat : ℚ)

end

end A028956.P18204777078202962543

/-! ## A028956.P3699014135611222816

`A260671(12*n)`
-/

namespace A028956.P3699014135611222816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (12 * n)

end

end A028956.P3699014135611222816

/-! ## A028956.P14399857115975359757

`A192323(n²)+A192323(A008574(n))`
-/

namespace A028956.P14399857115975359757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192323 (n ^ 2) + A192323 (A008574 n).toNat

end

end A028956.P14399857115975359757

/-!
# A028957: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 8 ] (divided by 2).

The programs for A028957, there is no canonical definition to state claims against.
-/

/-! ## A028957.P1580766883300609939

`lt[A010060(A109611(n+1)+1), A028625(n)]`
-/

namespace A028957.P1580766883300609939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A109611 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P1580766883300609939

/-! ## A028957.P5717617986441786678

`lt[A361463(A301674(3*(n+1))), A028625(n)]`
-/

namespace A028957.P5717617986441786678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361463 (A301674 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P5717617986441786678

/-! ## A028957.P16265757315884814079

`lt[A010060(A312538(3*n+4)), A028625(n)]`
-/

namespace A028957.P16265757315884814079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A312538 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P16265757315884814079

/-! ## A028957.P13096851647845743708

`lt[A361463(A030431(2*n+1)), A028625(n)]`
-/

namespace A028957.P13096851647845743708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361463 (A030431 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P13096851647845743708

/-! ## A028957.P886050398846885613

`lt[A010060(A312574(3*n+4)), A028625(n)]`
-/

namespace A028957.P886050398846885613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A312574 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P886050398846885613

/-! ## A028957.P2537009976301104071

`lt[A317643(A179875(n+1)), A028625(n)]`
-/

namespace A028957.P2537009976301104071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317643 (A179875 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P2537009976301104071

/-! ## A028957.P3718199238629454402

`lt[A266716(A379325(2*n+3)), A028625(n)]`
-/

namespace A028957.P3718199238629454402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A379325 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P3718199238629454402

/-! ## A028957.P8754533867353095424

`lt[A010055(A312523(3*(n+1))), A028625(n)]`
-/

namespace A028957.P8754533867353095424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A312523 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P8754533867353095424

/-! ## A028957.P9993258342830387637

`lt[A010055(A312571(3*(n+1))), A028625(n)]`
-/

namespace A028957.P9993258342830387637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A312571 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P9993258342830387637

/-! ## A028957.P10959632404823200610

`lt[A010055(A312573(3*(n+1))), A028625(n)]`
-/

namespace A028957.P10959632404823200610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A312573 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028625 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028957.P10959632404823200610

/-!
# A028958: Numbers represented by quadratic form with Gram matrix [ 2, 1; 1, 12 ] (divided by 2).

The programs for A028958, there is no canonical definition to state claims against.
-/

/-! ## A028958.P5967042874159259258

`lt[A000007(A321370(n+1)), A028959(n)]`
-/

namespace A028958.P5967042874159259258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A321370 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P5967042874159259258

/-! ## A028958.P15218816704697376121

`lt[A010052(A020757(3*n+5)), A028959(n)]`
-/

namespace A028958.P15218816704697376121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A020757 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P15218816704697376121

/-! ## A028958.P8650252312515657997

`eq[1, gcd(23, A008689(n))]`
-/

namespace A028958.P8650252312515657997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 23 (A008689 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028958.P8650252312515657997

/-! ## A028958.P16773180828014832747

`lt[A010052(A074400(n+1)), A028959(n)]`
-/

namespace A028958.P16773180828014832747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A074400 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P16773180828014832747

/-! ## A028958.P4758961112393189518

`lt[A275768(A034039(n+1)), A028959(n)]`
-/

namespace A028958.P4758961112393189518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 (A034039 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P4758961112393189518

/-! ## A028958.P15772233105268022338

`lt[A209229(A255568(3*(n+1))), A028959(n)]`
-/

namespace A028958.P15772233105268022338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A255568 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P15772233105268022338

/-! ## A028958.P13341062934912437343

`lt[A028928(n), A028923(A028959(n))]`
-/

namespace A028958.P13341062934912437343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P13341062934912437343

/-! ## A028958.P14375451765462756807

`lt[A028930(n), A028923(A028959(n))]`
-/

namespace A028958.P14375451765462756807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P14375451765462756807

/-! ## A028958.P15885200846112291144

`lt[A028961(n), A028923(A028959(n))]`
-/

namespace A028958.P15885200846112291144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P15885200846112291144

/-! ## A028958.P18123618400704593355

`lt[A001221(n+1), A028923(A028959(n))]`
-/

namespace A028958.P18123618400704593355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028923 (A028959 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P18123618400704593355

/-! ## A028958.P11398638449513906497

`lt[2, A000005(n+1)*A028923(A028959(n))+1]`
-/

namespace A028958.P11398638449513906497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A028923 (A028959 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028958.P11398638449513906497

/-! ## A028958.P290834586900079887

`lt[A256791(n)-A028959(n), A256791(n)]`
-/

namespace A028958.P290834586900079887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 n - A028959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P290834586900079887

/-! ## A028958.P5128179315245448778

`lt[A000122(A330477(2*(n+1))), A028959(n)]`
-/

namespace A028958.P5128179315245448778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A330477 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028958.P5128179315245448778

/-!
# A028959: Theta series of quadratic form with Gram matrix [ 2, 1; 1, 12 ].

The programs for A028959, there is no canonical definition to state claims against.
-/

/-! ## A028959.P3905013627874267837

`A022077(n)%A040506(n)`
-/

namespace A028959.P3905013627874267837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022077 n) (A040506 n)

end

end A028959.P3905013627874267837

/-! ## A028959.P12350964179010639038

`A033735(A195161(n))`
-/

namespace A028959.P12350964179010639038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033735 (A195161 n).toNat

end

end A028959.P12350964179010639038

/-! ## A028959.P9757591515505086185

`A033735(4*n)`
-/

namespace A028959.P9757591515505086185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033735 (4 * n)

end

end A028959.P9757591515505086185

/-! ## A028959.P5489339583861703641

`A033735(A008586(n))%28`
-/

namespace A028959.P5489339583861703641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033735 (A008586 n).toNat) 28

end

end A028959.P5489339583861703641

/-! ## A028959.P17737810526113324984

`A033735(A008574(n))-A000007(n)`
-/

namespace A028959.P17737810526113324984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033735 (A008574 n).toNat - A000007 n

end

end A028959.P17737810526113324984

/-! ## A028959.P11857941939008511218

`A033735(A008574(n)+A000007(n))+A000007(n)`
-/

namespace A028959.P11857941939008511218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033735 (A008574 n + A000007 n).toNat + A000007 n

end

end A028959.P11857941939008511218

/-! ## A028959.P793419949248789719

`A008689(n)%46`
-/

namespace A028959.P793419949248789719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008689 n) 46

end

end A028959.P793419949248789719

/-! ## A028959.P6152821901671997928

`A008704(n)%46`
-/

namespace A028959.P6152821901671997928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008704 n) 46

end

end A028959.P6152821901671997928

/-!
# A028960: Numbers represented by quadratic form with Gram matrix [ 3, 1; 1, 8 ].

The programs for A028960, there is no canonical definition to state claims against.
-/

/-! ## A028960.P6809964037602726604

`lt[0, A028961(n)]`
-/

namespace A028960.P6809964037602726604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028960.P6809964037602726604

/-! ## A028960.P11994430938193590978

`eq[0, A000038(A028961(n)²)]`
-/

namespace A028960.P11994430938193590978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P11994430938193590978

/-! ## A028960.P11326862671177955000

`eq[0, A005369(A028961(n)²)]`
-/

namespace A028960.P11326862671177955000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P11326862671177955000

/-! ## A028960.P7309404503176823885

`eq[0, A028963(A028961(n)²)]`
-/

namespace A028960.P7309404503176823885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P7309404503176823885

/-! ## A028960.P13336942154654465797

`eq[0, A028967(A028961(n)²)]`
-/

namespace A028960.P13336942154654465797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P13336942154654465797

/-! ## A028960.P4269486331264350798

`eq[1, A002828(A028961(n)²)]`
-/

namespace A028960.P4269486331264350798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P4269486331264350798

/-! ## A028960.P11282102423298681400

`eq[1, A011597(A028961(n)²)]`
-/

namespace A028960.P11282102423298681400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P11282102423298681400

/-! ## A028960.P13029792683571878897

`eq[2, A000122(A028961(n)²)]`
-/

namespace A028960.P13029792683571878897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A028961 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P13029792683571878897

/-! ## A028960.P5503694363733862632

`eq[1, A019426(2*A028961(n))]`
-/

namespace A028960.P5503694363733862632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * A028961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028960.P5503694363733862632

/-! ## A028960.P14624551981240549896

`eq[n*A000038(n), A000038(A028961(n))]`
-/

namespace A028960.P14624551981240549896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028960.P14624551981240549896

/-! ## A028960.P16686913957697811166

`eq[A000038(n+1), A000038(A028961(n))]`
-/

namespace A028960.P16686913957697811166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028961 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028960.P16686913957697811166

/-!
# A028961: Theta series of quadratic form (or lattice) with Gram matrix [ 3, 1; 1, 8 ].

The programs for A028961, there is no canonical definition to state claims against.
-/

/-! ## A028961.P14142106048612477754

`A027859(n)%23`
-/

namespace A028961.P14142106048612477754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027859 n) 23

end

end A028961.P14142106048612477754

/-! ## A028961.P12788385510469338406

`A028930(A317319(A317319(n)))`
-/

namespace A028961.P12788385510469338406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (A317319 (A317319 n).toNat).toNat

end

end A028961.P12788385510469338406

/-! ## A028961.P17413930707129803290

`char[A028960(n+1)]*A036453(A116931(n+1))`
-/

namespace A028961.P17413930707129803290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028960 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A036453 (A116931 (n + 1)).toNat

end

end A028961.P17413930707129803290

/-! ## A028961.P13893766281254529528

`A000089(n*(A326595(n)+A000030(n+1))+1)`
-/

namespace A028961.P13893766281254529528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 ((n : ℤ) * (A326595 n + A000030 (n + 1)) + 1).toNat

end

end A028961.P13893766281254529528

/-! ## A028961.P4790262485619288892

`A067742(or(A009952(n), A009957(n)))`
-/

namespace A028961.P4790262485619288892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (Int.lor (A009952 n) (A009957 n)).toNat

end

end A028961.P4790262485619288892

/-!
# A028962: Numbers represented by quadratic form with Gram matrix [ 2, 1, 0; 1, 3, 1; 0, 1, 5 ].

The programs for A028962, there is no canonical definition to state claims against.
-/

/-! ## A028962.P5618265938037429822

`comp[A234000(n+1)]`
-/

namespace A028962.P5618265938037429822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028962.P5618265938037429822

/-! ## A028962.P3257352697148668735

`lt[0, A028963(n)]`
-/

namespace A028962.P3257352697148668735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028962.P3257352697148668735

/-! ## A028962.P7386598775755816557

`lt[0, A029681(n)]`
-/

namespace A028962.P7386598775755816557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028962.P7386598775755816557

/-! ## A028962.P16606974474467743309

`eq[A002448(n), A147612(A028963(n))]`
-/

namespace A028962.P16606974474467743309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (A028963 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028962.P16606974474467743309

/-! ## A028962.P16492105627122795121

`eq[A002448(n), A147612(A029681(n))]`
-/

namespace A028962.P16492105627122795121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (A029681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028962.P16492105627122795121

/-! ## A028962.P15633886606560901888

`eq[A000038(n+1), A000038(A029681(n))]`
-/

namespace A028962.P15633886606560901888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028962.P15633886606560901888

/-! ## A028962.P14557950469721298788

`eq[A147612(2*n), A147612(A029681(n))]`
-/

namespace A028962.P14557950469721298788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (A029681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028962.P14557950469721298788

/-! ## A028962.P1117599670478947624

`eq[n*A000038(n), A000038(A029681(n))]`
-/

namespace A028962.P1117599670478947624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029681 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028962.P1117599670478947624

/-! ## A028962.P6409519502890771905

`lt[0, A169784(3*n)]`
-/

namespace A028962.P6409519502890771905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028962.P6409519502890771905

/-! ## A028962.P8524496864015141157

`eq[3, 3%A049415(A028963(n)+1)]`
-/

namespace A028962.P8524496864015141157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A049415 (A028963 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P8524496864015141157

/-! ## A028962.P12704851387631149496

`lt[A072401(7*n), 1]`
-/

namespace A028962.P12704851387631149496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028962.P12704851387631149496

/-! ## A028962.P8777230413914168980

`eq[0, A000007(A002102(7*n))]`
-/

namespace A028962.P8777230413914168980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002102 (7 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P8777230413914168980

/-! ## A028962.P7488001437705412861

`eq[0, A028963(A028963(n)²)]`
-/

namespace A028962.P7488001437705412861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (A028963 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P7488001437705412861

/-! ## A028962.P4967816860758417063

`eq[1, A019425(A029681(n)²)]`
-/

namespace A028962.P4967816860758417063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A029681 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P4967816860758417063

/-! ## A028962.P15760279546605784667

`eq[0, A000038(A029681(n)²)]`
-/

namespace A028962.P15760279546605784667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A029681 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P15760279546605784667

/-! ## A028962.P5928824807465473139

`eq[0, A005369(A029681(n)²)]`
-/

namespace A028962.P5928824807465473139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A029681 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P5928824807465473139

/-! ## A028962.P8449129797438224026

`eq[0, A029681(A029681(n)²)]`
-/

namespace A028962.P8449129797438224026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A029681 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028962.P8449129797438224026

/-!
# A028964: Numbers represented by quadratic form with Gram matrix [ 2, 1, 1; 1, 4, 2; 1, 2, 4 ], divided by 2.

The programs for A028964, there is no canonical definition to state claims against.
-/

/-! ## A028964.P5570459029548216747

`comp[A055049(n+1)]`
-/

namespace A028964.P5570459029548216747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028964.P5570459029548216747

/-! ## A028964.P11380637122410245569

`lt[0, A029673(n)]`
-/

namespace A028964.P11380637122410245569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028964.P11380637122410245569

/-! ## A028964.P2095331575766477473

`lt[1, A029595(2*n)+1]`
-/

namespace A028964.P2095331575766477473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029595 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028964.P2095331575766477473

/-! ## A028964.P17195889419761133101

`lt[1, A029602(A029595(2*n))]`
-/

namespace A028964.P17195889419761133101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029602 (A029595 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028964.P17195889419761133101

/-! ## A028964.P13661591782205988374

`record[A008619(n)-A019425(A029595(n))]`
-/

namespace A028964.P13661591782205988374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A019425 (A029595 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028964.P13661591782205988374

/-! ## A028964.P8875985885037722019

`record[A029596(n+1)-A029578(A029596(n+1))]`
-/

namespace A028964.P8875985885037722019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029596 (n + 1) - A029578 (A029596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028964.P8875985885037722019

/-! ## A028964.P16929195351270635404

`lt[1, A029680(2*n)+1]`
-/

namespace A028964.P16929195351270635404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029680 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028964.P16929195351270635404

/-! ## A028964.P11152469670113415182

`record[A142150(A029596(n+1))]`
-/

namespace A028964.P11152469670113415182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A029596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028964.P11152469670113415182

/-! ## A028964.P2048080115994084360

`eq[1, gcd(A020484(n+1), A029680(2*n))]`
-/

namespace A028964.P2048080115994084360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020484 (n + 1)) (A029680 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028964.P2048080115994084360

/-! ## A028964.P744240109232975774

`record[A025480(n)+A000007(A029680(n))]`
-/

namespace A028964.P744240109232975774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A000007 (A029680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028964.P744240109232975774

/-!
# A028966: Norms of vectors in the a.c.c. lattice, divided by 2.

The programs for A028966, the canonical program `A028966.P4564524160118052881` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028966 has offset 0).

The definition of A028966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028966.P1264038810852107105

`comp[A055047(n+1)]`
-/

namespace A028966.P1264038810852107105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028966.P1264038810852107105

namespace A028966

/-- `comp[A055047(n+1)]` -/
def P1264038810852107105.Spec : Prop :=
  ∀ n, (P1264038810852107105.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P10736773264004995819

`∪[comp[A026225(n+1)], A055041(n+1)]`
-/

namespace A028966.P10736773264004995819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A028966.P10736773264004995819

namespace A028966

/-- `∪[comp[A026225(n+1)], A055041(n+1)]` -/
def P10736773264004995819.Spec : Prop :=
  ∀ n, (P10736773264004995819.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P4564524160118052881

`∪[A055040(n+1), comp[A189715(n+1)]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028966

/-- `∪[A055040(n+1), comp[A189715(n+1)]]` -/
def P4564524160118052881.Spec : Prop :=
  ∀ n, (P4564524160118052881.a n : ℤ) = A028966 n

theorem P4564524160118052881.correct : P4564524160118052881.Spec := by
  intro n
  simp only [A028966]

end A028966

/-! ## A028966.P4583407138627953796

`lt[0, A028967(n)]`
-/

namespace A028966.P4583407138627953796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028966.P4583407138627953796

namespace A028966

/-- `lt[0, A028967(n)]` -/
def P4583407138627953796.Spec : Prop :=
  ∀ n, (P4583407138627953796.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P12345880446705050739

`lt[A014578(n)+char[A026225(n+1)], 2]`
-/

namespace A028966.P12345880446705050739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A028966.P12345880446705050739

namespace A028966

/-- `lt[A014578(n)+char[A026225(n+1)], 2]` -/
def P12345880446705050739.Spec : Prop :=
  ∀ n, (P12345880446705050739.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P10555146741651264119

`lt[A189673(n+1), char[A189716(n+1)]+1]`
-/

namespace A028966.P10555146741651264119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028966.P10555146741651264119

namespace A028966

/-- `lt[A189673(n+1), char[A189716(n+1)]+1]` -/
def P10555146741651264119.Spec : Prop :=
  ∀ n, (P10555146741651264119.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P579432235030199629

`eq[A000122(n), A036987(A028967(n))]`
-/

namespace A028966.P579432235030199629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A028967 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028966.P579432235030199629

namespace A028966

/-- `eq[A000122(n), A036987(A028967(n))]` -/
def P579432235030199629.Spec : Prop :=
  ∀ n, (P579432235030199629.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P7672621491867063486

`eq[A057427(A028967(n)), A058281(n)]`
-/

namespace A028966.P7672621491867063486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028967 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028966.P7672621491867063486

namespace A028966

/-- `eq[A057427(A028967(n)), A058281(n)]` -/
def P7672621491867063486.Spec : Prop :=
  ∀ n, (P7672621491867063486.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P1587154245434087243

`eq[A036987(2*n), A036987(A028967(n))]`
-/

namespace A028966.P1587154245434087243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A028967 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028966.P1587154245434087243

namespace A028966

/-- `eq[A036987(2*n), A036987(A028967(n))]` -/
def P1587154245434087243.Spec : Prop :=
  ∀ n, (P1587154245434087243.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P9773394039520843150

`lt[1, A224822(2*n)+1]`
-/

namespace A028966.P9773394039520843150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028966.P9773394039520843150

namespace A028966

/-- `lt[1, A224822(2*n)+1]` -/
def P9773394039520843150.Spec : Prop :=
  ∀ n, (P9773394039520843150.a n : ℤ) = A028966 n

end A028966

/-! ## A028966.P16395423294756393492

`eq[1, A107751(A037449(A008706(n)))]`
-/

namespace A028966.P16395423294756393492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 (A037449 (A008706 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028966.P16395423294756393492

namespace A028966

/-- `eq[1, A107751(A037449(A008706(n)))]` -/
def P16395423294756393492.Spec : Prop :=
  ∀ n, (P16395423294756393492.a n : ℤ) = A028966 n

end A028966

/-!
# A028967: Theta series of a.c.c. lattice.

The programs for A028967, there is no canonical definition to state claims against.
-/

/-! ## A028967.P14461043079220177882

`A224822(2*n)`
-/

namespace A028967.P14461043079220177882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224822 (2 * n)

end

end A028967.P14461043079220177882

/-! ## A028967.P10254723244207853729

`A246928(2*n)`
-/

namespace A028967.P10254723244207853729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (2 * n)

end

end A028967.P10254723244207853729

/-! ## A028967.P14579575160443934364

`A057079(2*n)*A246927(2*n)`
-/

namespace A028967.P14579575160443934364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A246927 (2 * n)

end

end A028967.P14579575160443934364

/-! ## A028967.P4088651111860106199

`A132954(2*n)*A246927(2*n)`
-/

namespace A028967.P4088651111860106199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (2 * n) * A246927 (2 * n)

end

end A028967.P4088651111860106199

/-! ## A028967.P16294721686061001743

`A246928(A004277(n))-A000007(n)`
-/

namespace A028967.P16294721686061001743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246928 (A004277 n).toNat - A000007 n

end

end A028967.P16294721686061001743

/-! ## A028967.P2819171954687459775

`C(A246928(A004277(n)), A054977(n))`
-/

namespace A028967.P2819171954687459775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A246928 (A004277 n).toNat).toNat (A054977 n).toNat

end

end A028967.P2819171954687459775

/-! ## A028967.P8796499498557049842

`A014458(3*n)`
-/

namespace A028967.P8796499498557049842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014458 (3 * n)

end

end A028967.P8796499498557049842

/-! ## A028967.P6976622775395102522

`A033721(6*n)`
-/

namespace A028967.P6976622775395102522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033721 (6 * n)

end

end A028967.P6976622775395102522

/-! ## A028967.P9630626854573183019

`A034933(6*n)`
-/

namespace A028967.P9630626854573183019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034933 (6 * n)

end

end A028967.P9630626854573183019

/-! ## A028967.P12670842639946827318

`A224821(6*n)`
-/

namespace A028967.P12670842639946827318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224821 (6 * n)

end

end A028967.P12670842639946827318

/-! ## A028967.P6306560985658625530

`A329955(6*n)`
-/

namespace A028967.P6306560985658625530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329955 (6 * n)

end

end A028967.P6306560985658625530

/-! ## A028967.P7754498574393399999

`A246927(3*6*n)`
-/

namespace A028967.P7754498574393399999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246927 (3 * (6 * n))

end

end A028967.P7754498574393399999

/-! ## A028967.P7429672989029235820

`A028702(A008606(n))`
-/

namespace A028967.P7429672989029235820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028702 (A008606 n).toNat

end

end A028967.P7429672989029235820

/-!
# A028970: Numbers represented by quadratic form with Gram matrix [ 3, 1, 1; 1, 3, 1; 1, 1, 3 ].

The programs for A028970, there is no canonical definition to state claims against.
-/

/-! ## A028970.P3112092752187416472

`lt[0, A028971(n)]`
-/

namespace A028970.P3112092752187416472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028970.P3112092752187416472

/-! ## A028970.P2287387918498056468

`eq[A014695(n), A057427(A029595(n))]`
-/

namespace A028970.P2287387918498056468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A029595 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028970.P2287387918498056468

/-! ## A028970.P13994100600233398864

`eq[A019425(A029595(n)), A087960(n)]`
-/

namespace A028970.P13994100600233398864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A029595 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028970.P13994100600233398864

/-! ## A028970.P17247468860487750238

`eq[A094267(n+1)², A054977(A029595(n))]`
-/

namespace A028970.P17247468860487750238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A029595 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028970.P17247468860487750238

/-! ## A028970.P3225486059084086006

`eq[1, gcd(A028965(n+1), A028971(n))]`
-/

namespace A028970.P3225486059084086006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028965 (n + 1)) (A028971 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028970.P3225486059084086006

/-!
# A028971: Theta series of quadratic form with Gram matrix [ 3, 1, 1; 1, 3, 1; 1, 1, 3 ].

The programs for A028971, there is no canonical definition to state claims against.
-/

/-! ## A028971.P14339629303639298060

`A028973(A283442(n))`
-/

namespace A028971.P14339629303639298060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A283442 n).toNat

end

end A028971.P14339629303639298060

/-! ## A028971.P9176558461465114814

`A028973(5*n)`
-/

namespace A028971.P9176558461465114814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (5 * n)

end

end A028971.P9176558461465114814

/-! ## A028971.P6064667218981653298

`gcd(A000038(n), A028973(A008587(n)))`
-/

namespace A028971.P6064667218981653298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028973 (A008587 n).toNat)

end

end A028971.P6064667218981653298

/-! ## A028971.P18239319335785397847

`A028973(A008587(n))+A036464(n+1)%2`
-/

namespace A028971.P18239319335785397847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A008587 n).toNat + Int.tmod (A036464 (n + 1)) 2

end

end A028971.P18239319335785397847

/-! ## A028971.P16959510017264202496

`A028973(A008587(n))/A000108(C(2, n+2))`
-/

namespace A028971.P16959510017264202496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028973 (A008587 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A028971.P16959510017264202496

/-! ## A028971.P10961607096629007391

`A028973(A008587(n))+A022093(n)%2`
-/

namespace A028971.P10961607096629007391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A008587 n).toNat + Int.tmod (A022093 n) 2

end

end A028971.P10961607096629007391

/-! ## A028971.P2472779636302986296

`A028973(A008587(n))%A000051(n)`
-/

namespace A028971.P2472779636302986296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028973 (A008587 n).toNat) (A000051 n)

end

end A028971.P2472779636302986296

/-! ## A028971.P8507967993960565221

`A028973(A008587(n))/A124279(∑[n])`
-/

namespace A028971.P8507967993960565221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028973 (A008587 n).toNat : ℚ) / (A124279 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A028971.P8507967993960565221

/-!
# A028972: Numbers represented by quadratic form with Gram matrix [ 7, 1, -3; 1, 3, 1; -3, 1, 7 ].

The programs for A028972, there is no canonical definition to state claims against.
-/

/-! ## A028972.P10623795089026799887

`lt[0, A028973(n)]`
-/

namespace A028972.P10623795089026799887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028972.P10623795089026799887

/-! ## A028972.P1403927888927116017

`lt[0, A028971(A283442(n))]`
-/

namespace A028972.P1403927888927116017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (A283442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028972.P1403927888927116017

/-! ## A028972.P3560061731163203078

`lt[1, A028971(5*n)+1]`
-/

namespace A028972.P3560061731163203078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (5 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028972.P3560061731163203078

/-! ## A028972.P8989018321416351766

`lt[0, A028971(A008587(n))]`
-/

namespace A028972.P8989018321416351766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (A008587 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028972.P8989018321416351766

/-! ## A028972.P682885012961755931

`lt[A057079(n)²/e, A028971(5*n)]`
-/

namespace A028972.P682885012961755931
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057079 n ^ 2 : ℝ) / Real.exp 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A028972.P682885012961755931

/-! ## A028972.P1771578211859164190

`eq[0, A028973(A028973(n)²)]`
-/

namespace A028972.P1771578211859164190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028973 (A028973 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028972.P1771578211859164190

/-! ## A028972.P15633854742909649274

`eq[2, A000122(A028971(5*n)²)]`
-/

namespace A028972.P15633854742909649274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A028971 (5 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028972.P15633854742909649274

/-!
# A028973: Theta series of quadratic form with Gram matrix [ 7, 1, -3; 1, 3, 1; -3, 1, 7 ].

The programs for A028973, there is no canonical definition to state claims against.
-/

/-! ## A028973.P17778548101782022554

`A028971(A283442(n))`
-/

namespace A028973.P17778548101782022554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (A283442 n).toNat

end

end A028973.P17778548101782022554

/-! ## A028973.P7278706579383946932

`A028971(5*n)`
-/

namespace A028973.P7278706579383946932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (5 * n)

end

end A028973.P7278706579383946932

/-! ## A028973.P11886273543593126916

`A028971(A008587(n))%A001966(n)`
-/

namespace A028973.P11886273543593126916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028971 (A008587 n).toNat) (A001966 n)

end

end A028973.P11886273543593126916

/-! ## A028973.P8308439925395271957

`gcd(A000038(n), A028971(A008587(n)))`
-/

namespace A028973.P8308439925395271957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A028971 (A008587 n).toNat)

end

end A028973.P8308439925395271957

/-! ## A028973.P17737315516670520856

`A028971(A008706(n))+A008683(A008574(n))`
-/

namespace A028973.P17737315516670520856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (A008706 n).toNat + A008683 (A008574 n).toNat

end

end A028973.P17737315516670520856

/-! ## A028973.P9952188198796077582

`A036987(A001316(n))+A028971(A008706(n))`
-/

namespace A028973.P9952188198796077582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A001316 n).toNat + A028971 (A008706 n).toNat

end

end A028973.P9952188198796077582

/-!
# A028974: Numbers represented by quadratic form with Gram matrix [ 3, 1, 0; 1, 3, 1; 0, 1, 3 ].

The programs for A028974, there is no canonical definition to state claims against.
-/

/-! ## A028974.P17524556652433090910

`lt[0, A028975(n)]`
-/

namespace A028974.P17524556652433090910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A028974.P17524556652433090910

/-! ## A028974.P6181522163017400710

`eq[A000038(n), A105348(A028975(n))]`
-/

namespace A028974.P6181522163017400710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (A028975 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028974.P6181522163017400710

/-! ## A028974.P2578001188903124380

`eq[2, A020639(A028975(A028975(n))+2)]`
-/

namespace A028974.P2578001188903124380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028975 (A028975 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028974.P2578001188903124380

/-! ## A028974.P15962308539465711248

`eq[1, gcd(A028975(n), A065060(n+1))]`
-/

namespace A028974.P15962308539465711248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028975 n) (A065060 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028974.P15962308539465711248

/-! ## A028974.P5041104033060064052

`eq[A000038(n+1), A000038(A028975(n))]`
-/

namespace A028974.P5041104033060064052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028975 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028974.P5041104033060064052

/-! ## A028974.P5364307333140925586

`eq[0, A000038(A028975(n)²)]`
-/

namespace A028974.P5364307333140925586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A028975 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028974.P5364307333140925586

/-! ## A028974.P4172686250384512097

`eq[0, A028967(A028975(n)²)]`
-/

namespace A028974.P4172686250384512097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028967 (A028975 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028974.P4172686250384512097

/-!
# A028976: Theta series of 8-d 5-modular lattice Q_8(1) with det 625 and minimal norm 4.

The programs for A028976, there is no canonical definition to state claims against.
-/

/-! ## A028976.P8819234374634970605

`A339086(A055714(n+1))`
-/

namespace A028976.P8819234374634970605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339086 (A055714 (n + 1)).toNat

end

end A028976.P8819234374634970605

/-!
# A028977: Theta series of 8-d 6-modular lattice G_2 tensor F_4 (or A_2 tensor D_4) with det 1296 and minimal norm 4 in powers of q^2.

The programs for A028977, there is no canonical definition to state claims against.
-/

/-! ## A028977.P983459810342764942

`(A053625(n)!-n)*A006352(n)`
-/

namespace A028977.P983459810342764942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A053625 n).toNat : ℤ) - (n : ℤ)) * A006352 n

end

end A028977.P983459810342764942

/-! ## A028977.P14894297835783401703

`(A006352(n)-floor(acot(A054871(n))))*(1-n)`
-/

namespace A028977.P14894297835783401703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006352 n - ⌊SequenceMachineLib.acot (A054871 n : ℝ)⌋) * (1 - (n : ℤ))

end

end A028977.P14894297835783401703

/-!
# A028978: Product of prime and previous prime is palindromic.

The programs for A028978, there is no canonical definition to state claims against.
-/

/-! ## A028978.P5151612958007553013

`A028979(n+1)/A028888(n+1)`
-/

namespace A028978.P5151612958007553013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028979 (n + 1) : ℚ) / (A028888 (n + 1) : ℚ)

end

end A028978.P5151612958007553013

/-!
# A028979: Palindromes which are the product of two consecutive primes.

The programs for A028979, there is no canonical definition to state claims against.
-/

/-! ## A028979.P17691602862229609284

`A028888(n+1)*A028978(n+1)`
-/

namespace A028979.P17691602862229609284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028888 (n + 1) * A028978 (n + 1)

end

end A028979.P17691602862229609284

/-!
# A028980: Numbers whose sum of divisors is palindromic.

The programs for A028980, there is no canonical definition to state claims against.
-/

/-! ## A028980.P14892068910409516098

`eq[A000203(n+1), A004086(A000203(n+1))]+1`
-/

namespace A028980.P14892068910409516098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028980.P14892068910409516098

/-! ## A028980.P12060077262051219355

`eq[1, A050782(A000203(n+1))]+1`
-/

namespace A028980.P12060077262051219355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028980.P12060077262051219355

/-! ## A028980.P14417540641765442030

`eq[A000007(n), A256756(A039653(n)+1)]`
-/

namespace A028980.P14417540641765442030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028980.P14417540641765442030

/-! ## A028980.P5337137505634459013

`eq[A000038(n), A256756(A039653(n)+1)]`
-/

namespace A028980.P5337137505634459013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028980.P5337137505634459013

/-! ## A028980.P14900235222064732129

`eq[A000007(n), A338827(A039653(n)+1)]`
-/

namespace A028980.P14900235222064732129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028980.P14900235222064732129

/-! ## A028980.P16278783896091915480

`eq[A000038(n), A338827(A039653(n)+1)]`
-/

namespace A028980.P16278783896091915480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A039653 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028980.P16278783896091915480

/-! ## A028980.P5055591535216823174

`∪[A072363(n+2), A183108(n+1)]`
-/

namespace A028980.P5055591535216823174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072363 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028980.P5055591535216823174

/-!
# A028981: Primes p such that p+1 is palindromic.

The programs for A028981, there is no canonical definition to state claims against.
-/

/-! ## A028981.P5636333478018207317

`p?[A028980(n+1)]`
-/

namespace A028981.P5636333478018207317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P5636333478018207317

/-! ## A028981.P18012438444671562543

`p?[A084831(n+1)]`
-/

namespace A028981.P18012438444671562543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P18012438444671562543

/-! ## A028981.P12391305492395023743

`p?[∑[A086862(n+2)]]`
-/

namespace A028981.P12391305492395023743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P12391305492395023743

/-! ## A028981.P17882234453490045507

`p?[A002113(n+1)-1]`
-/

namespace A028981.P17882234453490045507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P17882234453490045507

/-! ## A028981.P5886050919291339254

`p?[A057428(n)+A002113(n+1)]`
-/

namespace A028981.P5886050919291339254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P5886050919291339254

/-! ## A028981.P15113912678430128512

`p?[A260196(n)+A002113(n+1)]`
-/

namespace A028981.P15113912678430128512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P15113912678430128512

/-! ## A028981.P13692231520024075809

`p?[A029951(n+1)-A157928(n)]`
-/

namespace A028981.P13692231520024075809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1) - A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028981.P13692231520024075809

/-! ## A028981.P17237061506555408814

`filter[A028980(n+1), A010051(#)]`
-/

namespace A028981.P17237061506555408814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A028981.P17237061506555408814

/-! ## A028981.P2647595909082880531

`filter[A084831(n+1), A010051(#)]`
-/

namespace A028981.P2647595909082880531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A028981.P2647595909082880531

/-!
# A028982: Squares and twice squares.

The programs for A028982, the canonical program `A028982.P8924659345006964944` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028982 has offset 1).

The definition of A028982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028982.P8924659345006964944

`∪[2*(n+1)², (n+1)²]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028982

/-- `∪[2*(n+1)², (n+1)²]` -/
def P8924659345006964944.Spec : Prop :=
  ∀ n, (P8924659345006964944.a n : ℤ) = A028982 (n + 1)

theorem P8924659345006964944.correct : P8924659345006964944.Spec := by
  intro n
  simp only [A028982, Nat.add_sub_cancel]

end A028982

/-! ## A028982.P13254800043066933183

`A088827(n+1)/2`
-/

namespace A028982.P13254800043066933183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088827 (n + 1) : ℚ) / 2

end

end A028982.P13254800043066933183

namespace A028982

/-- `A088827(n+1)/2` -/
def P13254800043066933183.Spec : Prop :=
  ∀ n, P13254800043066933183.a n = (A028982 (n + 1) : ℚ)

end A028982

/-! ## A028982.P11522110012295959032

`∩[A372894(n+1), A083854(n)]`
-/

namespace A028982.P11522110012295959032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028982.P11522110012295959032

namespace A028982

/-- `∩[A372894(n+1), A083854(n)]` -/
def P11522110012295959032.Spec : Prop :=
  ∀ n, (P11522110012295959032.a n : ℤ) = A028982 (n + 1)

end A028982

/-! ## A028982.P8729637320566163809

`A360124(n+1)/8`
-/

namespace A028982.P8729637320566163809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360124 (n + 1) : ℚ) / 8

end

end A028982.P8729637320566163809

namespace A028982

/-- `A360124(n+1)/8` -/
def P8729637320566163809.Spec : Prop :=
  ∀ n, P8729637320566163809.a n = (A028982 (n + 1) : ℚ)

end A028982

/-! ## A028982.P3626392159848290784

`record[(n+1)*A000203(n+1)%2]`
-/

namespace A028982.P3626392159848290784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000203 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028982.P3626392159848290784

namespace A028982

/-- `record[(n+1)*A000203(n+1)%2]` -/
def P3626392159848290784.Spec : Prop :=
  ∀ n, P3626392159848290784.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P13023035065941860187

`filter[A083854(n), A014578(#)]`
-/

namespace A028982.P13023035065941860187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A028982.P13023035065941860187

namespace A028982

/-- `filter[A083854(n), A014578(#)]` -/
def P13023035065941860187.Spec : Prop :=
  ∀ n, P13023035065941860187.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P3200919499019226036

`filter[A083854(n+1), A356163(#)]`
-/

namespace A028982.P3200919499019226036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A028982.P3200919499019226036

namespace A028982

/-- `filter[A083854(n+1), A356163(#)]` -/
def P3200919499019226036.Spec : Prop :=
  ∀ n, P3200919499019226036.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P3710640491474739152

`record[(n+1)*A053866(n+1)]`
-/

namespace A028982.P3710640491474739152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028982.P3710640491474739152

namespace A028982

/-- `record[(n+1)*A053866(n+1)]` -/
def P3710640491474739152.Spec : Prop :=
  ∀ n, P3710640491474739152.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P11840974993863745183

`record[(n+1)*A244611(n+1)]`
-/

namespace A028982.P11840974993863745183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A244611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028982.P11840974993863745183

namespace A028982

/-- `record[(n+1)*A244611(n+1)]` -/
def P11840974993863745183.Spec : Prop :=
  ∀ n, P11840974993863745183.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P5940535696177377706

`filter[A083854(n+1), A053866(#)]`
-/

namespace A028982.P5940535696177377706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A028982.P5940535696177377706

namespace A028982

/-- `filter[A083854(n+1), A053866(#)]` -/
def P5940535696177377706.Spec : Prop :=
  ∀ n, P5940535696177377706.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P7873484768460147890

`filter[A083854(n+1), A229062(#)]`
-/

namespace A028982.P7873484768460147890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A028982.P7873484768460147890

namespace A028982

/-- `filter[A083854(n+1), A229062(#)]` -/
def P7873484768460147890.Spec : Prop :=
  ∀ n, P7873484768460147890.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P17729809345131072347

`filter[A335851(n+1), A053866(#)]`
-/

namespace A028982.P17729809345131072347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A028982.P17729809345131072347

namespace A028982

/-- `filter[A335851(n+1), A053866(#)]` -/
def P17729809345131072347.Spec : Prop :=
  ∀ n, P17729809345131072347.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P17167108225990831192

`filter[A372894(n+1), A053866(#)]`
-/

namespace A028982.P17167108225990831192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A028982.P17167108225990831192

namespace A028982

/-- `filter[A372894(n+1), A053866(#)]` -/
def P17167108225990831192.Spec : Prop :=
  ∀ n, P17167108225990831192.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P11425222342104538614

`filter[A155562(n+2), A053866(#)]`
-/

namespace A028982.P11425222342104538614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A028982.P11425222342104538614

namespace A028982

/-- `filter[A155562(n+2), A053866(#)]` -/
def P11425222342104538614.Spec : Prop :=
  ∀ n, P11425222342104538614.a n = A028982 (n + 1)

end A028982

/-! ## A028982.P5699701897958355680

`eq[1, A053866(n+1)]+1`
-/

namespace A028982.P5699701897958355680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028982.P5699701897958355680

namespace A028982

/-- `eq[1, A053866(n+1)]+1` -/
def P5699701897958355680.Spec : Prop :=
  ∀ n, (P5699701897958355680.a n : ℤ) = A028982 (n + 1)

end A028982

/-! ## A028982.P12190960712437840397

`eq[1, A082902(n+1)]+1`
-/

namespace A028982.P12190960712437840397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082902 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028982.P12190960712437840397

namespace A028982

/-- `eq[1, A082902(n+1)]+1` -/
def P12190960712437840397.Spec : Prop :=
  ∀ n, (P12190960712437840397.a n : ℤ) = A028982 (n + 1)

end A028982

/-! ## A028982.P6131905991361994596

`eq[1, A244611(n+1)]+1`
-/

namespace A028982.P6131905991361994596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028982.P6131905991361994596

namespace A028982

/-- `eq[1, A244611(n+1)]+1` -/
def P6131905991361994596.Spec : Prop :=
  ∀ n, (P6131905991361994596.a n : ℤ) = A028982 (n + 1)

end A028982

/-! ## A028982.P1106823920432230984

`eq[1, A325310(n+1)]+1`
-/

namespace A028982.P1106823920432230984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028982.P1106823920432230984

namespace A028982

/-- `eq[1, A325310(n+1)]+1` -/
def P1106823920432230984.Spec : Prop :=
  ∀ n, (P1106823920432230984.a n : ℤ) = A028982 (n + 1)

end A028982

/-! ## A028982.P14756469448155962159

`lt[A324904(n+1), 1]+1`
-/

namespace A028982.P14756469448155962159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028982.P14756469448155962159

namespace A028982

/-- `lt[A324904(n+1), 1]+1` -/
def P14756469448155962159.Spec : Prop :=
  ∀ n, (P14756469448155962159.a n : ℤ) = A028982 (n + 1)

end A028982

/-! ## A028982.P9841573125623264525

`lt[A332898(n+1), 1]+1`
-/

namespace A028982.P9841573125623264525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028982.P9841573125623264525

namespace A028982

/-- `lt[A332898(n+1), 1]+1` -/
def P9841573125623264525.Spec : Prop :=
  ∀ n, (P9841573125623264525.a n : ℤ) = A028982 (n + 1)

end A028982

/-!
# A028983: Numbers whose sum of divisors is even.

The programs for A028983, the canonical program `A028983.P406306813063525246` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028983 has offset 1).

The definition of A028983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028983.P15886283206163285275

`comp[∪[2*n², n²]]`
-/

namespace A028983.P15886283206163285275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028983.P15886283206163285275

namespace A028983

/-- `comp[∪[2*n², n²]]` -/
def P15886283206163285275.Spec : Prop :=
  ∀ n, (P15886283206163285275.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P4203951481745175071

`comp[floor(n/3)²*n%3]`
-/

namespace A028983.P4203951481745175071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ 2 * ((n % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028983.P4203951481745175071

namespace A028983

/-- `comp[floor(n/3)²*n%3]` -/
def P4203951481745175071.Spec : Prop :=
  ∀ n, (P4203951481745175071.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P6939653651019145136

`comp[floor(n/2)*ceil((n-1)/gcd(2, n))]`
-/

namespace A028983.P6939653651019145136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028983.P6939653651019145136

namespace A028983

/-- `comp[floor(n/2)*ceil((n-1)/gcd(2, n))]` -/
def P6939653651019145136.Spec : Prop :=
  ∀ n, (P6939653651019145136.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P17163692110541175816

`comp[A115881(n+1)]`
-/

namespace A028983.P17163692110541175816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A028983.P17163692110541175816

namespace A028983

/-- `comp[A115881(n+1)]` -/
def P17163692110541175816.Spec : Prop :=
  ∀ n, (P17163692110541175816.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P16635233442453694944

`A088829(n+1)/2`
-/

namespace A028983.P16635233442453694944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088829 (n + 1) : ℚ) / 2

end

end A028983.P16635233442453694944

namespace A028983

/-- `A088829(n+1)/2` -/
def P16635233442453694944.Spec : Prop :=
  ∀ n, P16635233442453694944.a n = (A028983 (n + 1) : ℚ)

end A028983

/-! ## A028983.P2308907035720203023

`eq[0, A053866(n+1)]+1`
-/

namespace A028983.P2308907035720203023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028983.P2308907035720203023

namespace A028983

/-- `eq[0, A053866(n+1)]+1` -/
def P2308907035720203023.Spec : Prop :=
  ∀ n, (P2308907035720203023.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P9425842829153910029

`lt[0, A193336(n+1)]+1`
-/

namespace A028983.P9425842829153910029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A028983.P9425842829153910029

namespace A028983

/-- `lt[0, A193336(n+1)]+1` -/
def P9425842829153910029.Spec : Prop :=
  ∀ n, (P9425842829153910029.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P4357474365558180318

`eq[2, A082070(n+1)]+1`
-/

namespace A028983.P4357474365558180318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028983.P4357474365558180318

namespace A028983

/-- `eq[2, A082070(n+1)]+1` -/
def P4357474365558180318.Spec : Prop :=
  ∀ n, (P4357474365558180318.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P5441951235800361456

`eq[2, A082071(n+1)]+1`
-/

namespace A028983.P5441951235800361456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028983.P5441951235800361456

namespace A028983

/-- `eq[2, A082071(n+1)]+1` -/
def P5441951235800361456.Spec : Prop :=
  ∀ n, (P5441951235800361456.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P1783520821592641334

`eq[2, A082072(n+1)]+1`
-/

namespace A028983.P1783520821592641334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028983.P1783520821592641334

namespace A028983

/-- `eq[2, A082072(n+1)]+1` -/
def P1783520821592641334.Spec : Prop :=
  ∀ n, (P1783520821592641334.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P2732902747387808342

`lt[2, A007913(n+1)]+1`
-/

namespace A028983.P2732902747387808342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A028983.P2732902747387808342

namespace A028983

/-- `lt[2, A007913(n+1)]+1` -/
def P2732902747387808342.Spec : Prop :=
  ∀ n, (P2732902747387808342.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P4885784316670312853

`lt[2, A300518(n+1)]+1`
-/

namespace A028983.P4885784316670312853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A028983.P4885784316670312853

namespace A028983

/-- `lt[2, A300518(n+1)]+1` -/
def P4885784316670312853.Spec : Prop :=
  ∀ n, (P4885784316670312853.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P406306813063525246

`eq[0, and(1, A000203(n+2))]+2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028983

/-- `eq[0, and(1, A000203(n+2))]+2` -/
def P406306813063525246.Spec : Prop :=
  ∀ n, (P406306813063525246.a n : ℤ) = A028983 (n + 1)

theorem P406306813063525246.correct : P406306813063525246.Spec := by
  intro n
  simp only [A028983, Nat.add_sub_cancel]

end A028983

/-! ## A028983.P5999963303752067122

`comp[lcm(n+1, and(1, A325635(n+1)))]`
-/

namespace A028983.P5999963303752067122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (Int.land 1 (A325635 (n + 1)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A028983.P5999963303752067122

namespace A028983

/-- `comp[lcm(n+1, and(1, A325635(n+1)))]` -/
def P5999963303752067122.Spec : Prop :=
  ∀ n, (P5999963303752067122.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P14669568411567183215

`eq[0, and(a(n-1)!, A000203(n))]` with `a(0)=1`
-/

namespace A028983.P14669568411567183215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.land (Nat.factorial (f2 (n - 1)).toNat : ℤ) (A000203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028983.P14669568411567183215

namespace A028983

/-- `eq[0, and(a(n-1)!, A000203(n))]` -/
def P14669568411567183215.Spec : Prop :=
  ∀ n, (P14669568411567183215.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P8278555991191755827

`record[(-1)^A000203(n+3)+n+2]`
-/

namespace A028983.P8278555991191755827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000203 (n + 3) : ℤ) + (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028983.P8278555991191755827

namespace A028983

/-- `record[(-1)^A000203(n+3)+n+2]` -/
def P8278555991191755827.Spec : Prop :=
  ∀ n, P8278555991191755827.a n = (A028983 (n + 1) : ℚ)

end A028983

/-! ## A028983.P15076189637896778012

`eq[2, A020639(A000203(n+1))]+1`
-/

namespace A028983.P15076189637896778012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028983.P15076189637896778012

namespace A028983

/-- `eq[2, A020639(A000203(n+1))]+1` -/
def P15076189637896778012.Spec : Prop :=
  ∀ n, (P15076189637896778012.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P4220014972643583712

`∪[A088828(n+1), A088829(n+1)]`
-/

namespace A028983.P4220014972643583712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028983.P4220014972643583712

namespace A028983

/-- `∪[A088828(n+1), A088829(n+1)]` -/
def P4220014972643583712.Spec : Prop :=
  ∀ n, (P4220014972643583712.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P2002531173187688747

`∪[A191217(n+1), A248150(n+1)]`
-/

namespace A028983.P2002531173187688747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028983.P2002531173187688747

namespace A028983

/-- `∪[A191217(n+1), A248150(n+1)]` -/
def P2002531173187688747.Spec : Prop :=
  ∀ n, (P2002531173187688747.a n : ℤ) = A028983 (n + 1)

end A028983

/-! ## A028983.P16963555683079668161

`∪[A209922(n+1), A248150(n+1)]`
-/

namespace A028983.P16963555683079668161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028983.P16963555683079668161

namespace A028983

/-- `∪[A209922(n+1), A248150(n+1)]` -/
def P16963555683079668161.Spec : Prop :=
  ∀ n, (P16963555683079668161.a n : ℤ) = A028983 (n + 1)

end A028983

/-!
# A028984: Palindromes whose sum of divisors is odd.

The programs for A028984, there is no canonical definition to state claims against.
-/

/-! ## A028984.P14389499090859968815

`∩[A028982(n+1), A083158(n+1)]`
-/

namespace A028984.P14389499090859968815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028984.P14389499090859968815

/-! ## A028984.P11704193879894141038

`∩[A028982(n+1), A002113(n+3)]`
-/

namespace A028984.P11704193879894141038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028984.P11704193879894141038

/-! ## A028984.P14635304316735789497

`filter[A265641(n+2), A356163(#)]`
-/

namespace A028984.P14635304316735789497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A028984.P14635304316735789497

/-! ## A028984.P9371441895823997723

`filter[A083158(n+1), A053866(#)]`
-/

namespace A028984.P9371441895823997723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A028984.P9371441895823997723

/-! ## A028984.P8555429317267418131

`filter[A056525(n+2), A053866(#)]`
-/

namespace A028984.P8555429317267418131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A028984.P8555429317267418131

/-!
# A028985: Nonsquare palindromes whose sum of divisors is odd.

The programs for A028985, there is no canonical definition to state claims against.
-/

/-! ## A028985.P16295364945966155606

`∩[2*(n+1)², A002113(n+1)]`
-/

namespace A028985.P16295364945966155606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028985.P16295364945966155606

/-! ## A028985.P16458906072425049472

`∩[2*n², A056525(n+1)]`
-/

namespace A028985.P16458906072425049472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028985.P16458906072425049472

/-! ## A028985.P6944312904334417366

`∩[A056525(n+1), A001105(n)]`
-/

namespace A028985.P6944312904334417366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028985.P6944312904334417366

/-! ## A028985.P16457299355912825209

`∩[A081939(n+1), A001105(n)]`
-/

namespace A028985.P16457299355912825209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028985.P16457299355912825209

/-!
# A028986: Palindromes whose sum of divisors is palindromic.

The programs for A028986, there is no canonical definition to state claims against.
-/

/-! ## A028986.P2044553484806168833

`∩[A002113(n+1), A028980(n+1)]`
-/

namespace A028986.P2044553484806168833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028986.P2044553484806168833

/-! ## A028986.P14506321602679137383

`∩[A028980(n+1), A056525(n+1)]`
-/

namespace A028986.P14506321602679137383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028986.P14506321602679137383

/-! ## A028986.P10171469115223885579

`∩[A028980(n+1), A083851(n+1)]`
-/

namespace A028986.P10171469115223885579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028986.P10171469115223885579

/-! ## A028986.P14785028350619154701

`∩[A028980(n+1), A098897(n+1)]`
-/

namespace A028986.P14785028350619154701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028986.P14785028350619154701

/-! ## A028986.P16311802788840895099

`∩[A028980(n+1), A083136(n+1)]`
-/

namespace A028986.P16311802788840895099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028986.P16311802788840895099

/-!
# A028987: Repdigit - 1 is prime.

The programs for A028987, there is no canonical definition to state claims against.
-/

/-! ## A028987.P15988952722246949547

`A096843(n+1)+1`
-/

namespace A028987.P15988952722246949547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096843 (n + 1) + 1

end

end A028987.P15988952722246949547

/-! ## A028987.P13506600863293020364

`∩[A039986(n+1), A096841(n+1)]+1`
-/

namespace A028987.P13506600863293020364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A028987.P13506600863293020364

/-! ## A028987.P6348166094748049149

`∩[A062353(n+1), A096841(n+1)]+1`
-/

namespace A028987.P6348166094748049149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A028987.P6348166094748049149

/-! ## A028987.P2689523623406828203

`∩[A096841(n+1), A378775(n+1)]+1`
-/

namespace A028987.P2689523623406828203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A028987.P2689523623406828203

/-!
# A028988: Repdigit + 1 is prime.

The programs for A028988, there is no canonical definition to state claims against.
-/

/-! ## A028988.P6878957202506350387

`∩[A062353(n+1), A096503(n+1)]-1`
-/

namespace A028988.P6878957202506350387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A028988.P6878957202506350387

/-! ## A028988.P4893454996312765204

`abs(1-p?[A096503(n+1)])`
-/

namespace A028988.P4893454996312765204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A028988.P4893454996312765204

/-! ## A028988.P13970078971401016111

`A321800(n)+p?[A096503(n+1)]`
-/

namespace A028988.P13970078971401016111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028988.P13970078971401016111

/-! ## A028988.P731069315388882173

`A321804(n)+p?[A096503(n+1)]`
-/

namespace A028988.P731069315388882173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A028988.P731069315388882173

/-!
# A028989: Smallest palindromic prime with 2n-1 digits.

The programs for A028989, there is no canonical definition to state claims against.
-/

/-! ## A028989.P5034962852601794814

`A056732(Δ[n²])`
-/

namespace A028989.P5034962852601794814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056732 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028989.P5034962852601794814

/-! ## A028989.P5114506180355886470

`record[A056732(A052938(n))]`
-/

namespace A028989.P5114506180355886470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056732 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028989.P5114506180355886470

/-! ## A028989.P14229844129290514690

`record[A056732(A056753(n))]`
-/

namespace A028989.P14229844129290514690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056732 (A056753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028989.P14229844129290514690

/-! ## A028989.P12166769568319286315

`record[lcm(A056594(n), A056732(n+1))]`
-/

namespace A028989.P12166769568319286315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A056732 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028989.P12166769568319286315

/-! ## A028989.P13547994297484370202

`A115941(Δ[n²])`
-/

namespace A028989.P13547994297484370202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115941 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028989.P13547994297484370202

/-!
# A028990: Largest palindromic prime with 2n-1 digits.

The programs for A028990, there is no canonical definition to state claims against.
-/

/-! ## A028990.P211188257240464214

`A002385(A050251(Δ[n²]))`
-/

namespace A028990.P211188257240464214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A050251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A028990.P211188257240464214

/-! ## A028990.P7544852509329325678

`A002385(record[A050251(n^(n%2))])`
-/

namespace A028990.P7544852509329325678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050251 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028990.P7544852509329325678

/-!
# A028991: Odd 9-gonal (or enneagonal) numbers.

The programs for A028991, the canonical program `A028991.P13392589519348944452` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028991 has offset 0).

The definition of A028991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028991.P470079745320101808

`(28*n²+4*n+1+(14*n+1)*(-1)^n)/2`
-/

namespace A028991.P470079745320101808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((28 * n ^ 2 + 4 * n + 1 : ℤ) + (14 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 2

end

end A028991.P470079745320101808

namespace A028991

/-- `(28*n²+4*n+1+(14*n+1)*(-1)^n)/2` -/
def P470079745320101808.Spec : Prop :=
  ∀ n, P470079745320101808.a n = (A028991 n : ℚ)

theorem P470079745320101808.correct : P470079745320101808.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A028991, Nat.add_sub_cancel, A028991.P470079745320101808.a, A028991.P13392589519348944452.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A028991, Nat.add_sub_cancel, A028991.P470079745320101808.a, A028991.P13392589519348944452.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028991

/-! ## A028991.P13392589519348944452

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=9, a(2)=75, a(3)=111, a(4)=261`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028991

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P13392589519348944452.Spec : Prop :=
  ∀ n, P13392589519348944452.a n = A028991 n

theorem P13392589519348944452.correct : P13392589519348944452.Spec := by
  intro n
  simp only [A028991]

end A028991

/-! ## A028991.P5244567503876605278

`A047471(n+1)+A047471(n+1)²-A014493(n+1)`
-/

namespace A028991.P5244567503876605278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) + (A047471 (n + 1) ^ 2 - A014493 (n + 1))

end

end A028991.P5244567503876605278

namespace A028991

/-- `A047471(n+1)+A047471(n+1)²-A014493(n+1)` -/
def P5244567503876605278.Spec : Prop :=
  ∀ n, P5244567503876605278.a n = A028991 n

end A028991

/-! ## A028991.P10981914403090402450

`A001106(or(1, n)+n)`
-/

namespace A028991.P10981914403090402450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (Nat.lor 1 n + n)

end

end A028991.P10981914403090402450

namespace A028991

/-- `A001106(or(1, n)+n)` -/
def P10981914403090402450.Spec : Prop :=
  ∀ n, P10981914403090402450.a n = A028991 n

end A028991

/-! ## A028991.P17426090397964486901

`A001106((n+1)%2+2*n)`
-/

namespace A028991.P17426090397964486901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 ((n + 1) % 2 + 2 * n)

end

end A028991.P17426090397964486901

namespace A028991

/-- `A001106((n+1)%2+2*n)` -/
def P17426090397964486901.Spec : Prop :=
  ∀ n, P17426090397964486901.a n = A028991 n

end A028991

/-! ## A028991.P1293818421842814446

`A001106(and(1, n+1)+2*n)`
-/

namespace A028991.P1293818421842814446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (Nat.land 1 (n + 1) + 2 * n)

end

end A028991.P1293818421842814446

namespace A028991

/-- `A001106(and(1, n+1)+2*n)` -/
def P1293818421842814446.Spec : Prop :=
  ∀ n, P1293818421842814446.a n = A028991 n

end A028991

/-! ## A028991.P5693455474151426317

`A001106(A042948(n)+1)`
-/

namespace A028991.P5693455474151426317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A042948 n + 1).toNat

end

end A028991.P5693455474151426317

namespace A028991

/-- `A001106(A042948(n)+1)` -/
def P5693455474151426317.Spec : Prop :=
  ∀ n, P5693455474151426317.a n = A028991 n

end A028991

/-! ## A028991.P12419504528690311047

`A001106(A042963(n+1))`
-/

namespace A028991.P12419504528690311047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A042963 (n + 1)).toNat

end

end A028991.P12419504528690311047

namespace A028991

/-- `A001106(A042963(n+1))` -/
def P12419504528690311047.Spec : Prop :=
  ∀ n, P12419504528690311047.a n = A028991 n

end A028991

/-! ## A028991.P8510164083476122412

`A001106(A014601(n+1)-2)`
-/

namespace A028991.P8510164083476122412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A014601 (n + 1) - 2).toNat

end

end A028991.P8510164083476122412

namespace A028991

/-- `A001106(A014601(n+1)-2)` -/
def P8510164083476122412.Spec : Prop :=
  ∀ n, P8510164083476122412.a n = A028991 n

end A028991

/-! ## A028991.P5403774401492752296

`A001106(A047241(n+1)-n)`
-/

namespace A028991.P5403774401492752296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A047241 (n + 1) - (n : ℤ)).toNat

end

end A028991.P5403774401492752296

namespace A028991

/-- `A001106(A047241(n+1)-n)` -/
def P5403774401492752296.Spec : Prop :=
  ∀ n, P5403774401492752296.a n = A028991 n

end A028991

/-! ## A028991.P15656462423942368499

`A001106(Δ[n²]-A000035(n))`
-/

namespace A028991.P15656462423942368499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000035 n).toNat

end

end A028991.P15656462423942368499

namespace A028991

/-- `A001106(Δ[n²]-A000035(n))` -/
def P15656462423942368499.Spec : Prop :=
  ∀ n, P15656462423942368499.a n = A028991 n

end A028991

/-! ## A028991.P6327746341962369502

`A118277(A047471(n+1)-1)+A047471(n+1)`
-/

namespace A028991.P6327746341962369502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 (A047471 (n + 1) - 1).toNat + A047471 (n + 1)

end

end A028991.P6327746341962369502

namespace A028991

/-- `A118277(A047471(n+1)-1)+A047471(n+1)` -/
def P6327746341962369502.Spec : Prop :=
  ∀ n, P6327746341962369502.a n = A028991 n

end A028991

/-! ## A028991.P2686062044264113749

`A118277(A047471(n+1))`
-/

namespace A028991.P2686062044264113749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 (A047471 (n + 1)).toNat

end

end A028991.P2686062044264113749

namespace A028991

/-- `A118277(A047471(n+1))` -/
def P2686062044264113749.Spec : Prop :=
  ∀ n, P2686062044264113749.a n = A028991 n

end A028991

/-!
# A028992: Even 9-gonal (or enneagonal) numbers.

The programs for A028992, the canonical program `A028992.P6741351636171204067` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028992 has offset 0).

The definition of A028992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028992.P6741351636171204067

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=24, a(2)=46, a(3)=154, a(4)=204`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028992

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6741351636171204067.Spec : Prop :=
  ∀ n, P6741351636171204067.a n = A028992 n

theorem P6741351636171204067.correct : P6741351636171204067.Spec := by
  intro n
  simp only [A028992]

end A028992

/-! ## A028992.P9167889009856940290

`A001106(n%2+2*n)`
-/

namespace A028992.P9167889009856940290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (n % 2 + 2 * n)

end

end A028992.P9167889009856940290

namespace A028992

/-- `A001106(n%2+2*n)` -/
def P9167889009856940290.Spec : Prop :=
  ∀ n, P9167889009856940290.a n = A028992 n

end A028992

/-! ## A028992.P13789135998608024026

`A001106(and(1, n)+2*n)`
-/

namespace A028992.P13789135998608024026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (Nat.land 1 n + 2 * n)

end

end A028992.P13789135998608024026

namespace A028992

/-- `A001106(and(1, n)+2*n)` -/
def P13789135998608024026.Spec : Prop :=
  ∀ n, P13789135998608024026.a n = A028992 n

end A028992

/-! ## A028992.P6788563319673200501

`A001106(2*(n+1)-gcd(2, n))`
-/

namespace A028992.P6788563319673200501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (2 * (n + 1) - Nat.gcd 2 n)

end

end A028992.P6788563319673200501

namespace A028992

/-- `A001106(2*(n+1)-gcd(2, n))` -/
def P6788563319673200501.Spec : Prop :=
  ∀ n, P6788563319673200501.a n = A028992 n

end A028992

/-! ## A028992.P3041145857670590389

`A001106(or(1, n+1)-1+n)`
-/

namespace A028992.P3041145857670590389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 ((Nat.lor 1 (n + 1) : ℤ) - 1 + (n : ℤ)).toNat

end

end A028992.P3041145857670590389

namespace A028992

/-- `A001106(or(1, n+1)-1+n)` -/
def P3041145857670590389.Spec : Prop :=
  ∀ n, P3041145857670590389.a n = A028992 n

end A028992

/-! ## A028992.P4726674664078338942

`A001106(or(∑[3-and(2, n)]-3, 2*n))`
-/

namespace A028992.P4726674664078338942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (Int.lor (∑ j ∈ Finset.range (n + 1), f1 j - 3) (2 * n : ℤ)).toNat

end

end A028992.P4726674664078338942

namespace A028992

/-- `A001106(or(∑[3-and(2, n)]-3, 2*n))` -/
def P4726674664078338942.Spec : Prop :=
  ∀ n, P4726674664078338942.a n = A028992 n

end A028992

/-! ## A028992.P17929806093517661423

`A001106(comp[3*n]+n-ceil(xor(1, n)/2))`
-/

namespace A028992.P17929806093517661423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) - ⌈(Nat.xor 1 n : ℚ) / 2⌉).toNat

end

end A028992.P17929806093517661423

namespace A028992

/-- `A001106(comp[3*n]+n-ceil(xor(1, n)/2))` -/
def P17929806093517661423.Spec : Prop :=
  ∀ n, P17929806093517661423.a n = A028992 n

end A028992

/-! ## A028992.P7395513025168490392

`A001106(A014601(n))`
-/

namespace A028992.P7395513025168490392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A014601 n).toNat

end

end A028992.P7395513025168490392

namespace A028992

/-- `A001106(A014601(n))` -/
def P7395513025168490392.Spec : Prop :=
  ∀ n, P7395513025168490392.a n = A028992 n

end A028992

/-! ## A028992.P9708368707218791482

`A001106(A042948(n+1)-1)`
-/

namespace A028992.P9708368707218791482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A042948 (n + 1) - 1).toNat

end

end A028992.P9708368707218791482

namespace A028992

/-- `A001106(A042948(n+1)-1)` -/
def P9708368707218791482.Spec : Prop :=
  ∀ n, P9708368707218791482.a n = A028992 n

end A028992

/-! ## A028992.P3609277729968264420

`A001106(A042963(n+2)-2)`
-/

namespace A028992.P3609277729968264420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A042963 (n + 2) - 2).toNat

end

end A028992.P3609277729968264420

namespace A028992

/-- `A001106(A042963(n+2)-2)` -/
def P3609277729968264420.Spec : Prop :=
  ∀ n, P3609277729968264420.a n = A028992 n

end A028992

/-! ## A028992.P17600112009268570793

`A001106(A000035(n)+2*n)`
-/

namespace A028992.P17600112009268570793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A000035 n + (2 * n : ℤ)).toNat

end

end A028992.P17600112009268570793

namespace A028992

/-- `A001106(A000035(n)+2*n)` -/
def P17600112009268570793.Spec : Prop :=
  ∀ n, P17600112009268570793.a n = A028992 n

end A028992

/-! ## A028992.P7720447385521955565

`A001106(A000035(n)+n+n)`
-/

namespace A028992.P7720447385521955565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A028992.P7720447385521955565

namespace A028992

/-- `A001106(A000035(n)+n+n)` -/
def P7720447385521955565.Spec : Prop :=
  ∀ n, P7720447385521955565.a n = A028992 n

end A028992

/-!
# A028993: Odd 10-gonal (or decagonal) numbers.

The programs for A028993, the canonical program `A028993.P16249693597712452027` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028993 has offset 0).

The definition of A028993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028993.P16249693597712452027

`(2*n+1)*(8*n+1)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028993

/-- `(2*n+1)*(8*n+1)` -/
def P16249693597712452027.Spec : Prop :=
  ∀ n, (P16249693597712452027.a n : ℤ) = A028993 n

theorem P16249693597712452027.correct : P16249693597712452027.Spec := by
  intro n
  simp only [A028993]

end A028993

/-! ## A028993.P12299727417444322577

`A001107(2*n+1)`
-/

namespace A028993.P12299727417444322577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (2 * n + 1)

end

end A028993.P12299727417444322577

namespace A028993

/-- `A001107(2*n+1)` -/
def P12299727417444322577.Spec : Prop :=
  ∀ n, P12299727417444322577.a n = A028993 n

end A028993

/-! ## A028993.P16336669459961473622

`∑[a(n-1)+32]` with `a(0)=1, a(1)=26`
-/

namespace A028993.P16336669459961473622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 26] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028993.P16336669459961473622

namespace A028993

/-- `∑[a(n-1)+32]` -/
def P16336669459961473622.Spec : Prop :=
  ∀ n, (P16336669459961473622.a n : ℤ) = A028993 n

end A028993

/-! ## A028993.P15898241812769428876

`2*∑[ogf((13x+3x^2)/(1-2x+x^2))]+1`
-/

namespace A028993.P15898241812769428876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A028993.P15898241812769428876

namespace A028993

/-- `2*∑[ogf((13x+3x^2)/(1-2x+x^2))]+1` -/
def P15898241812769428876.Spec : Prop :=
  ∀ n, P15898241812769428876.a n = A028993 n

end A028993

/-! ## A028993.P13234393437998144177

`2*A139277(n)+1`
-/

namespace A028993.P13234393437998144177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139277 n + 1

end

end A028993.P13234393437998144177

namespace A028993

/-- `2*A139277(n)+1` -/
def P13234393437998144177.Spec : Prop :=
  ∀ n, P13234393437998144177.a n = A028993 n

end A028993

/-! ## A028993.P10616217107638355237

`A016814(n)+2*n`
-/

namespace A028993.P10616217107638355237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n + (2 * n : ℤ)

end

end A028993.P10616217107638355237

namespace A028993

/-- `A016814(n)+2*n` -/
def P10616217107638355237.Spec : Prop :=
  ∀ n, P10616217107638355237.a n = A028993 n

end A028993

/-! ## A028993.P174554646755490035

`A157870(n)-Δ[n²]`
-/

namespace A028993.P174554646755490035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157870 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A028993.P174554646755490035

namespace A028993

/-- `A157870(n)-Δ[n²]` -/
def P174554646755490035.Spec : Prop :=
  ∀ n, P174554646755490035.a n = A028993 n

end A028993

/-! ## A028993.P422219065967848212

`A016813(n)²+2*n`
-/

namespace A028993.P422219065967848212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2 + (2 * n : ℤ)

end

end A028993.P422219065967848212

namespace A028993

/-- `A016813(n)²+2*n` -/
def P422219065967848212.Spec : Prop :=
  ∀ n, P422219065967848212.a n = A028993 n

end A028993

/-! ## A028993.P226919237968813089

`sqrt(A016816(n))+2*n`
-/

namespace A028993.P226919237968813089
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016816 n : ℝ) + (2 * n : ℝ)

end

end A028993.P226919237968813089

namespace A028993

/-- `sqrt(A016816(n))+2*n` -/
def P226919237968813089.Spec : Prop :=
  ∀ n, P226919237968813089.a n = (A028993 n : ℝ)

end A028993

/-! ## A028993.P10357808171208919341

`A134153(n)+∑[2*n]`
-/

namespace A028993.P10357808171208919341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134153 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A028993.P10357808171208919341

namespace A028993

/-- `A134153(n)+∑[2*n]` -/
def P10357808171208919341.Spec : Prop :=
  ∀ n, P10357808171208919341.a n = A028993 n

end A028993

/-! ## A028993.P12252803525442109190

`A143839(n+1)+3*n`
-/

namespace A028993.P12252803525442109190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143839 (n + 1) + (3 * n : ℤ)

end

end A028993.P12252803525442109190

namespace A028993

/-- `A143839(n+1)+3*n` -/
def P12252803525442109190.Spec : Prop :=
  ∀ n, P12252803525442109190.a n = A028993 n

end A028993

/-! ## A028993.P1291775460954123515

`A143838(n+1)+5*n`
-/

namespace A028993.P1291775460954123515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143838 (n + 1) + (5 * n : ℤ)

end

end A028993.P1291775460954123515

namespace A028993

/-- `A143838(n+1)+5*n` -/
def P1291775460954123515.Spec : Prop :=
  ∀ n, P1291775460954123515.a n = A028993 n

end A028993

/-! ## A028993.P4640112324913254175

`A014641(n)+A002943(n)`
-/

namespace A028993.P4640112324913254175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n + A002943 n

end

end A028993.P4640112324913254175

namespace A028993

/-- `A014641(n)+A002943(n)` -/
def P4640112324913254175.Spec : Prop :=
  ∀ n, P4640112324913254175.a n = A028993 n

end A028993

/-! ## A028993.P16933765632638060025

`A017281(n)+A016802(n)`
-/

namespace A028993.P16933765632638060025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + A016802 n

end

end A028993.P16933765632638060025

namespace A028993

/-- `A017281(n)+A016802(n)` -/
def P16933765632638060025.Spec : Prop :=
  ∀ n, P16933765632638060025.a n = A028993 n

end A028993

/-! ## A028993.P9384432042612610435

`A033572(n)+A014105(n)`
-/

namespace A028993.P9384432042612610435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033572 n + A014105 n

end

end A028993.P9384432042612610435

namespace A028993

/-- `A033572(n)+A014105(n)` -/
def P9384432042612610435.Spec : Prop :=
  ∀ n, P9384432042612610435.a n = A028993 n

end A028993

/-! ## A028993.P3244309251035946174

`A033586(n)+A014634(n)`
-/

namespace A028993.P3244309251035946174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + A014634 n

end

end A028993.P3244309251035946174

namespace A028993

/-- `A033586(n)+A014634(n)` -/
def P3244309251035946174.Spec : Prop :=
  ∀ n, P3244309251035946174.a n = A028993 n

end A028993

/-! ## A028993.P4608871429272927104

`A033954(n)+A033577(n)`
-/

namespace A028993.P4608871429272927104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033954 n + A033577 n

end

end A028993.P4608871429272927104

namespace A028993

/-- `A033954(n)+A033577(n)` -/
def P4608871429272927104.Spec : Prop :=
  ∀ n, P4608871429272927104.a n = A028993 n

end A028993

/-! ## A028993.P9282074032873528657

`A082041(n)+A008588(n)`
-/

namespace A028993.P9282074032873528657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082041 n + A008588 n

end

end A028993.P9282074032873528657

namespace A028993

/-- `A082041(n)+A008588(n)` -/
def P9282074032873528657.Spec : Prop :=
  ∀ n, P9282074032873528657.a n = A028993 n

end A028993

/-! ## A028993.P3135396107784885946

`A102083(n)+A033587(n)`
-/

namespace A028993.P3135396107784885946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n + A033587 n

end

end A028993.P3135396107784885946

namespace A028993

/-- `A102083(n)+A033587(n)` -/
def P3135396107784885946.Spec : Prop :=
  ∀ n, P3135396107784885946.a n = A028993 n

end A028993

/-! ## A028993.P13764929009817237414

`A144459(n)+A005563(n)`
-/

namespace A028993.P13764929009817237414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144459 n + A005563 n

end

end A028993.P13764929009817237414

namespace A028993

/-- `A144459(n)+A005563(n)` -/
def P13764929009817237414.Spec : Prop :=
  ∀ n, P13764929009817237414.a n = A028993 n

end A028993

/-!
# A028994: Even 10-gonal (or decagonal) numbers.

The programs for A028994, the canonical program `A028994.P2614720213617424781` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028994 has offset 0).

The definition of A028994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028994.P2614720213617424781

`16*n²-6*n`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028994

/-- `16*n²-6*n` -/
def P2614720213617424781.Spec : Prop :=
  ∀ n, P2614720213617424781.a n = A028994 n

theorem P2614720213617424781.correct : P2614720213617424781.Spec := by
  intro n
  simp only [A028994]

end A028994

/-! ## A028994.P1758229956002872599

`A001107(2*n)`
-/

namespace A028994.P1758229956002872599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (2 * n)

end

end A028994.P1758229956002872599

namespace A028994

/-- `A001107(2*n)` -/
def P1758229956002872599.Spec : Prop :=
  ∀ n, P1758229956002872599.a n = A028994 n

end A028994

/-! ## A028994.P2670906077943787015

`∑[a(n-1)+32]` with `a(0)=0, a(1)=10`
-/

namespace A028994.P2670906077943787015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028994.P2670906077943787015

namespace A028994

/-- `∑[a(n-1)+32]` -/
def P2670906077943787015.Spec : Prop :=
  ∀ n, (P2670906077943787015.a n : ℤ) = A028994 n

end A028994

/-! ## A028994.P1750145230668235384

`abs(lcm(n, 1-8*n)+n*(8*n-5))`
-/

namespace A028994.P1750145230668235384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.lcm (n : ℤ) (1 - (8 * n : ℤ)) : ℤ) + (n : ℤ) * ((8 * n : ℤ) - 5)|

end

end A028994.P1750145230668235384

namespace A028994

/-- `abs(lcm(n, 1-8*n)+n*(8*n-5))` -/
def P1750145230668235384.Spec : Prop :=
  ∀ n, P1750145230668235384.a n = A028994 n

end A028994

/-! ## A028994.P14613311734506737854

`2*A139273(n)`
-/

namespace A028994.P14613311734506737854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139273 n

end

end A028994.P14613311734506737854

namespace A028994

/-- `2*A139273(n)` -/
def P14613311734506737854.Spec : Prop :=
  ∀ n, P14613311734506737854.a n = A028994 n

end A028994

/-! ## A028994.P1800944385612980334

`n*A113770(n)`
-/

namespace A028994.P1800944385612980334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113770 n

end

end A028994.P1800944385612980334

namespace A028994

/-- `n*A113770(n)` -/
def P1800944385612980334.Spec : Prop :=
  ∀ n, P1800944385612980334.a n = A028994 n

end A028994

/-! ## A028994.P343554876764702599

`2*(A085250(n)+n)`
-/

namespace A028994.P343554876764702599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085250 n + (n : ℤ))

end

end A028994.P343554876764702599

namespace A028994

/-- `2*(A085250(n)+n)` -/
def P343554876764702599.Spec : Prop :=
  ∀ n, P343554876764702599.a n = A028994 n

end A028994

/-! ## A028994.P7909295355247877567

`2*(A014635(n)-n)`
-/

namespace A028994.P7909295355247877567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014635 n - (n : ℤ))

end

end A028994.P7909295355247877567

namespace A028994

/-- `2*(A014635(n)-n)` -/
def P7909295355247877567.Spec : Prop :=
  ∀ n, P7909295355247877567.a n = A028994 n

end A028994

/-! ## A028994.P15265842320256942491

`2*(A185438(n)-(n+1))`
-/

namespace A028994.P15265842320256942491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A185438 n - (n + 1 : ℤ))

end

end A028994.P15265842320256942491

namespace A028994

/-- `2*(A185438(n)-(n+1))` -/
def P15265842320256942491.Spec : Prop :=
  ∀ n, P15265842320256942491.a n = A028994 n

end A028994

/-! ## A028994.P13519793347987816201

`n/4*A165372(n+2)`
-/

namespace A028994.P13519793347987816201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A165372 (n + 2) : ℚ)

end

end A028994.P13519793347987816201

namespace A028994

/-- `n/4*A165372(n+2)` -/
def P13519793347987816201.Spec : Prop :=
  ∀ n, P13519793347987816201.a n = (A028994 n : ℚ)

end A028994

/-! ## A028994.P14784480107287033241

`A158586(n)%A081272(n)`
-/

namespace A028994.P14784480107287033241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158586 n) (A081272 n)

end

end A028994.P14784480107287033241

namespace A028994

/-- `A158586(n)%A081272(n)` -/
def P14784480107287033241.Spec : Prop :=
  ∀ n, P14784480107287033241.a n = A028994 n

end A028994

/-! ## A028994.P2208575886357186842

`A158602(n)%A381424(n)`
-/

namespace A028994.P2208575886357186842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158602 n) (A381424 n)

end

end A028994.P2208575886357186842

namespace A028994

/-- `A158602(n)%A381424(n)` -/
def P2208575886357186842.Spec : Prop :=
  ∀ n, P2208575886357186842.a n = A028994 n

end A028994

/-! ## A028994.P507091569957660110

`lcm(A004277(n), A139273(n))`
-/

namespace A028994.P507091569957660110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 n) (A139273 n)

end

end A028994.P507091569957660110

namespace A028994

/-- `lcm(A004277(n), A139273(n))` -/
def P507091569957660110.Spec : Prop :=
  ∀ n, (P507091569957660110.a n : ℤ) = A028994 n

end A028994

/-! ## A028994.P3363048567825226808

`A345702(n+1)%A081589(n)`
-/

namespace A028994.P3363048567825226808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345702 (n + 1)) (A081589 n)

end

end A028994.P3363048567825226808

namespace A028994

/-- `A345702(n+1)%A081589(n)` -/
def P3363048567825226808.Spec : Prop :=
  ∀ n, P3363048567825226808.a n = A028994 n

end A028994

/-! ## A028994.P8474209516693276632

`2*abs(n-A000384(2*n))`
-/

namespace A028994.P8474209516693276632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |(n : ℤ) - A000384 (2 * n)|

end

end A028994.P8474209516693276632

namespace A028994

/-- `2*abs(n-A000384(2*n))` -/
def P8474209516693276632.Spec : Prop :=
  ∀ n, P8474209516693276632.a n = A028994 n

end A028994

/-! ## A028994.P2483775368638601661

`n*A016825(A130824(n))`
-/

namespace A028994.P2483775368638601661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016825 (A130824 n).toNat

end

end A028994.P2483775368638601661

namespace A028994

/-- `n*A016825(A130824(n))` -/
def P2483775368638601661.Spec : Prop :=
  ∀ n, P2483775368638601661.a n = A028994 n

end A028994

/-! ## A028994.P12996207080966467564

`record[A014681(n)*A016813(n)]`
-/

namespace A028994.P12996207080966467564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n * A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028994.P12996207080966467564

namespace A028994

/-- `record[A014681(n)*A016813(n)]` -/
def P12996207080966467564.Spec : Prop :=
  ∀ n, P12996207080966467564.a n = A028994 n

end A028994

/-! ## A028994.P5655067971269135510

`n*A016825(A111284(n+1))`
-/

namespace A028994.P5655067971269135510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016825 (A111284 (n + 1)).toNat

end

end A028994.P5655067971269135510

namespace A028994

/-- `n*A016825(A111284(n+1))` -/
def P5655067971269135510.Spec : Prop :=
  ∀ n, P5655067971269135510.a n = A028994 n

end A028994

/-! ## A028994.P10966848255783413141

`A005843(n)*A016813(A004273(n))`
-/

namespace A028994.P10966848255783413141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A016813 (A004273 n).toNat

end

end A028994.P10966848255783413141

namespace A028994

/-- `A005843(n)*A016813(A004273(n))` -/
def P10966848255783413141.Spec : Prop :=
  ∀ n, P10966848255783413141.a n = A028994 n

end A028994

/-! ## A028994.P6768586166394407073

`A139271(2*n)/2`
-/

namespace A028994.P6768586166394407073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139271 (2 * n) : ℚ) / 2

end

end A028994.P6768586166394407073

namespace A028994

/-- `A139271(2*n)/2` -/
def P6768586166394407073.Spec : Prop :=
  ∀ n, P6768586166394407073.a n = (A028994 n : ℚ)

end A028994

/-!
# A028995: Theta series of 10-d 11-modular Craig lattice A_10^(3).

The programs for A028995, there is no canonical definition to state claims against.
-/

/-! ## A028995.P7413500665203786315

`C(A112952(2^(n+1)), ∑{p}[n+1, #-1])`
-/

namespace A028995.P7413500665203786315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112952 (2 ^ (n + 1))).toNat (∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat

end

end A028995.P7413500665203786315

/-!
# A028996: Theta series of quadratic form with Gram matrix [ 4, 1, 0, 2; 1, 4, 2, 0; 0, 2, 4, -1; 2, 0, -1, 4 ].

The programs for A028996, there is no canonical definition to state claims against.
-/

/-! ## A028996.P14850402555615812694

`A003106(n)*A040361(A074000(n+1))`
-/

namespace A028996.P14850402555615812694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n * A040361 (A074000 (n + 1)).toNat

end

end A028996.P14850402555615812694

/-! ## A028996.P9333523913887650348

`A008594(A003106(n))%A017281(A208983(n))`
-/

namespace A028996.P9333523913887650348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008594 (A003106 n).toNat) (A017281 (A208983 n).toNat)

end

end A028996.P9333523913887650348

/-! ## A028996.P2574535882385242775

`A003106(n)*A048250(A025192(n))`
-/

namespace A028996.P2574535882385242775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n * A048250 (A025192 n).toNat

end

end A028996.P2574535882385242775

/-! ## A028996.P10259409041956394562

`A003106(n)*A023900(A082541(n))`
-/

namespace A028996.P10259409041956394562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n * A023900 (A082541 n).toNat

end

end A028996.P10259409041956394562

/-!
# A028997: Theta series of quadratic form with Gram matrix [ 4, 1, 0, 1; 1, 4, 1, 0; 0, 1, 4, -1; 1, 0, -1, 4 ].

The programs for A028997, there is no canonical definition to state claims against.
-/

/-! ## A028997.P1893528061148605710

`A125555(2*n)`
-/

namespace A028997.P1893528061148605710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125555 (2 * n)

end

end A028997.P1893528061148605710

/-! ## A028997.P6514323119808941138

`A125555(A005843(n))%A167499(n)`
-/

namespace A028997.P6514323119808941138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125555 (A005843 n).toNat) (A167499 n)

end

end A028997.P6514323119808941138

/-! ## A028997.P16166663769504457158

`gcd(A000038(n), A125555(A005843(n)))`
-/

namespace A028997.P16166663769504457158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125555 (A005843 n).toNat)

end

end A028997.P16166663769504457158

/-! ## A028997.P8557149753604954005

`or(A000007(n), A125555(A005843(n)))`
-/

namespace A028997.P8557149753604954005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A125555 (A005843 n).toNat)

end

end A028997.P8557149753604954005

/-! ## A028997.P3613408429431373975

`A125555(record[A014681(n)])%A100207(n)`
-/

namespace A028997.P3613408429431373975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125555 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A100207 n)

end

end A028997.P3613408429431373975

/-! ## A028997.P10889495468552768238

`lcm(A008836(n+1), A125555(A005843(n)))`
-/

namespace A028997.P10889495468552768238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A125555 (A005843 n).toNat)

end

end A028997.P10889495468552768238

/-! ## A028997.P4338947016651631821

`A125555(A005843(n))+A025426(A125562(n))`
-/

namespace A028997.P4338947016651631821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125555 (A005843 n).toNat + A025426 (A125562 n).toNat

end

end A028997.P4338947016651631821

/-! ## A028997.P6769502809878462108

`A125555(A005843(n))+A010052(A000037(n+1))`
-/

namespace A028997.P6769502809878462108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125555 (A005843 n).toNat + A010052 (A000037 (n + 1)).toNat

end

end A028997.P6769502809878462108

/-!
# A028999: Binary expansion of arctan(1/2)/Pi.

The programs for A028999, there is no canonical definition to state claims against.
-/

/-! ## A028999.P778905828254995164

`char[A004715(n+1)-1]`
-/

namespace A028999.P778905828254995164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004715 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A028999.P778905828254995164

/-! ## A028999.P9508421729589510740

`char[A023443(A004715(n+1))]`
-/

namespace A028999.P9508421729589510740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004715 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A028999.P9508421729589510740

/-! ## A028999.P8235270592221582612

`and(char[∑[n]]+1, A099422(n+1)²)`
-/

namespace A028999.P8235270592221582612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A099422 (n + 1) ^ 2)

end

end A028999.P8235270592221582612

/-! ## A028999.P9020161848171136031

`A099422(n+1)%A238303(n)`
-/

namespace A028999.P9020161848171136031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099422 (n + 1)) (A238303 n)

end

end A028999.P9020161848171136031

/-! ## A028999.P1598597366029426691

`A010060(A238670(2*n+1)+2)`
-/

namespace A028999.P1598597366029426691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A238670 (2 * n + 1) + 2).toNat

end

end A028999.P1598597366029426691

