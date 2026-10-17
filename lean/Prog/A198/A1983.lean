import SequenceMachineLib
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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

/-!
# A198300: Square array M(k,g), read by antidiagonals, of the Moore lower bound on the order of a (k,g)-cage.

The programs for A198300, there is no canonical definition to state claims against.
-/

/-! ## A198300.P12992705855526225029

`A054760(n)-A174875(A157177(n))`
-/

namespace A198300.P12992705855526225029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054760 n - A174875 (A157177 n).toNat

end

end A198300.P12992705855526225029

/-! ## A198300.P17251516385243440751

`A054760(n)-A184944(A229243(n))`
-/

namespace A198300.P17251516385243440751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054760 n - A184944 (A229243 n).toNat

end

end A198300.P17251516385243440751

/-! ## A198300.P11282044987968661296

`A054760(n)-A184944(A287698(n))`
-/

namespace A198300.P11282044987968661296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054760 n - A184944 (A287698 n).toNat

end

end A198300.P11282044987968661296

/-! ## A198300.P35875543601766382

`A113724(A229243(n))+A003991(n+1)`
-/

namespace A198300.P35875543601766382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113724 (A229243 n).toNat + A003991 (n + 1)

end

end A198300.P35875543601766382

/-! ## A198300.P8147182787931839559

`A054760(n)-A000086(A054760(2*n+1))`
-/

namespace A198300.P8147182787931839559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054760 n - A000086 (A054760 (2 * n + 1)).toNat

end

end A198300.P8147182787931839559

/-!
# A198302: a(n) = Sum_{d|n} d * sigma(n/d, d).

The programs for A198302, the canonical program `A198302.P14349708433526407538` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198302 has offset 1).

The definition of A198302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198302.P13847064086531594231

`∑{d}[n+1, A359103(#)]`
-/

namespace A198302.P13847064086531594231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359103 d

end

end A198302.P13847064086531594231

namespace A198302

/-- `∑{d}[n+1, A359103(#)]` -/
def P13847064086531594231.Spec : Prop :=
  ∀ n, P13847064086531594231.a n = A198302 (n + 1)

end A198302

/-! ## A198302.P14349708433526407538

`∑{d}[n+1, #*A087909(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198302

/-- `∑{d}[n+1, #*A087909(#)]` -/
def P14349708433526407538.Spec : Prop :=
  ∀ n, P14349708433526407538.a n = A198302 (n + 1)

theorem P14349708433526407538.correct : P14349708433526407538.Spec := by
  intro n
  simp only [A198302, Nat.add_sub_cancel]

end A198302

/-!
# A198304: G.f.: exp( Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - n*x^d/d) ).

The programs for A198304, there is no canonical definition to state claims against.
-/

/-! ## A198304.P888676370968074785

`ceil(root(A239763(n), 4))`
-/

namespace A198304.P888676370968074785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A239763 n : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A198304.P888676370968074785

/-! ## A198304.P12875766112094223106

`A261104(A007747(n))`
-/

namespace A198304.P12875766112094223106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A007747 n).toNat

end

end A198304.P12875766112094223106

/-! ## A198304.P288259831311753157

`A051889(∑[A007460(n)])`
-/

namespace A198304.P288259831311753157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198304.P288259831311753157

/-! ## A198304.P6616260565200915188

`A175542(A227234(n+1))`
-/

namespace A198304.P6616260565200915188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A227234 (n + 1)).toNat

end

end A198304.P6616260565200915188

/-!
# A198305: L.g.f.: Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - n*x^d/d).

The programs for A198305, there is no canonical definition to state claims against.
-/

/-! ## A198305.P8764162912578558444

`∑[A325762(∑[A290383(n)])]`
-/

namespace A198305.P8764162912578558444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198305.P8764162912578558444

/-! ## A198305.P1748138203130346448

`A005408(A185712(2*4^n-1))`
-/

namespace A198305.P1748138203130346448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A185712 (2 * 4 ^ n - 1)).toNat

end

end A198305.P1748138203130346448

/-!
# A198306: Moore lower bound on the order of a (6,g)-cage.

The programs for A198306, the canonical program `A198306.P6946698936721867500` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198306 has offset 3).

The definition of A198306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198306.P6946698936721867500

`a(n-1)+5*a(n-2)-5*a(n-3)` with `a(0)=7, a(1)=12, a(2)=37`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198306

/-- `a(n-1)+5*a(n-2)-5*a(n-3)` -/
def P6946698936721867500.Spec : Prop :=
  ∀ n, P6946698936721867500.a n = A198306 (n + 3)

theorem P6946698936721867500.correct : P6946698936721867500.Spec := by
  intro n
  simp only [A198306, Nat.add_sub_cancel]

end A198306

/-! ## A198306.P894410358211689470

`∑[∏[gcd(5, and(1, n))]]+2`
-/

namespace A198306.P894410358211689470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198306.P894410358211689470

namespace A198306

/-- `∑[∏[gcd(5, and(1, n))]]+2` -/
def P894410358211689470.Spec : Prop :=
  ∀ n, (P894410358211689470.a n : ℤ) = A198306 (n + 3)

end A198306

/-! ## A198306.P4149419458949763418

`5*a(n-2)+2` with `a(0)=7, a(1)=12`
-/

namespace A198306.P4149419458949763418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 12] fun n a =>
  5 * a (n - 2) + 2

end

end A198306.P4149419458949763418

namespace A198306

/-- `5*a(n-2)+2` -/
def P4149419458949763418.Spec : Prop :=
  ∀ n, (P4149419458949763418.a n : ℤ) = A198306 (n + 3)

end A198306

/-! ## A198306.P5580077102518035282

`∑[5^∑[char[2*n]]]+2`
-/

namespace A198306.P5580077102518035282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198306.P5580077102518035282

namespace A198306

/-- `∑[5^∑[char[2*n]]]+2` -/
def P5580077102518035282.Spec : Prop :=
  ∀ n, (P5580077102518035282.a n : ℤ) = A198306 (n + 3)

end A198306

/-! ## A198306.P15901383969106588251

`∑[∏[5/ceil(a(n-1))]]` with `a(0)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A198306.P15901383969106588251
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [7] fun n f2 =>
  5 / (⌈f2 (n - 1)⌉ : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198306.P15901383969106588251

namespace A198306

/-- `∑[∏[5/ceil(a(n-1))]]` -/
def P15901383969106588251.Spec : Prop :=
  ∀ n, P15901383969106588251.a n = (A198306 (n + 3) : ℚ)

end A198306

/-! ## A198306.P9809748753317265047

`A238366(n+2)`
-/

namespace A198306.P9809748753317265047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238366 (n + 2)

end

end A198306.P9809748753317265047

namespace A198306

/-- `A238366(n+2)` -/
def P9809748753317265047.Spec : Prop :=
  ∀ n, P9809748753317265047.a n = A198306 (n + 3)

end A198306

/-! ## A198306.P741119314084617878

`record[A238366(abs(2-n))]`
-/

namespace A198306.P741119314084617878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238366 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198306.P741119314084617878

namespace A198306

/-- `record[A238366(abs(2-n))]` -/
def P741119314084617878.Spec : Prop :=
  ∀ n, P741119314084617878.a n = A198306 (n + 3)

end A198306

/-! ## A198306.P5110919134289108124

`(A056487(n+3)-1)/2`
-/

namespace A198306.P5110919134289108124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056487 (n + 3) - 1 : ℚ) / 2

end

end A198306.P5110919134289108124

namespace A198306

/-- `(A056487(n+3)-1)/2` -/
def P5110919134289108124.Spec : Prop :=
  ∀ n, P5110919134289108124.a n = (A198306 (n + 3) : ℚ)

end A198306

/-! ## A198306.P4954443794217695257

`(A163114(n+3)-1)/2`
-/

namespace A198306.P4954443794217695257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163114 (n + 3) - 1 : ℚ) / 2

end

end A198306.P4954443794217695257

namespace A198306

/-- `(A163114(n+3)-1)/2` -/
def P4954443794217695257.Spec : Prop :=
  ∀ n, P4954443794217695257.a n = (A198306 (n + 3) : ℚ)

end A198306

/-! ## A198306.P17139737364620394310

`A181287(2*n+7)/2`
-/

namespace A198306.P17139737364620394310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181287 (2 * n + 7) : ℚ) / 2

end

end A198306.P17139737364620394310

namespace A198306

/-- `A181287(2*n+7)/2` -/
def P17139737364620394310.Spec : Prop :=
  ∀ n, P17139737364620394310.a n = (A198306 (n + 3) : ℚ)

end A198306

/-! ## A198306.P8082517724773825836

`(A224251(2*(n+1))+1)/2`
-/

namespace A198306.P8082517724773825836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224251 (2 * (n + 1)) + 1 : ℚ) / 2

end

end A198306.P8082517724773825836

namespace A198306

/-- `(A224251(2*(n+1))+1)/2` -/
def P8082517724773825836.Spec : Prop :=
  ∀ n, P8082517724773825836.a n = (A198306 (n + 3) : ℚ)

end A198306

/-! ## A198306.P9403518649421087632

`A117864(n+3)/4`
-/

namespace A198306.P9403518649421087632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117864 (n + 3) : ℚ) / 4

end

end A198306.P9403518649421087632

namespace A198306

/-- `A117864(n+3)/4` -/
def P9403518649421087632.Spec : Prop :=
  ∀ n, P9403518649421087632.a n = (A198306 (n + 3) : ℚ)

end A198306

/-! ## A198306.P15766473109478530213

`∑[5^(n+1)/a(n-1)]` with `a(0)=7, a(1)=5`
-/

namespace A198306.P15766473109478530213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [7, 5] fun n f1 =>
  (5 ^ (n + 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198306.P15766473109478530213

namespace A198306

/-- `∑[5^(n+1)/a(n-1)]` -/
def P15766473109478530213.Spec : Prop :=
  ∀ n, P15766473109478530213.a n = (A198306 (n + 3) : ℚ)

end A198306

/-!
# A198307: Moore lower bound on the order of a (7,g)-cage.

The programs for A198307, the canonical program `A198307.P11741700235700797774` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198307 has offset 3).

The definition of A198307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198307.P11741700235700797774

`a(n-1)+6*a(n-2)-6*a(n-3)` with `a(0)=8, a(1)=14, a(2)=50`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198307

/-- `a(n-1)+6*a(n-2)-6*a(n-3)` -/
def P11741700235700797774.Spec : Prop :=
  ∀ n, P11741700235700797774.a n = A198307 (n + 3)

theorem P11741700235700797774.correct : P11741700235700797774.Spec := by
  intro n
  simp only [A198307, Nat.add_sub_cancel]

end A198307

/-! ## A198307.P14931035949441675653

`6*a(n-2)+2` with `a(0)=8, a(1)=14`
-/

namespace A198307.P14931035949441675653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 14] fun n a =>
  6 * a (n - 2) + 2

end

end A198307.P14931035949441675653

namespace A198307

/-- `6*a(n-2)+2` -/
def P14931035949441675653.Spec : Prop :=
  ∀ n, (P14931035949441675653.a n : ℤ) = A198307 (n + 3)

end A198307

/-! ## A198307.P17871983978320883622

`∑[6^∑[(n+1)%2]]+2`
-/

namespace A198307.P17871983978320883622
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198307.P17871983978320883622

namespace A198307

/-- `∑[6^∑[(n+1)%2]]+2` -/
def P17871983978320883622.Spec : Prop :=
  ∀ n, (P17871983978320883622.a n : ℤ) = A198307 (n + 3)

end A198307

/-! ## A198307.P17420948231508294961

`∑[A056452(n+1)]+2`
-/

namespace A198307.P17420948231508294961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198307.P17420948231508294961

namespace A198307

/-- `∑[A056452(n+1)]+2` -/
def P17420948231508294961.Spec : Prop :=
  ∀ n, P17420948231508294961.a n = A198307 (n + 3)

end A198307

/-! ## A198307.P7563078656279887161

`∑[6^A065033(n+1)]+2`
-/

namespace A198307.P7563078656279887161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A065033 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198307.P7563078656279887161

namespace A198307

/-- `∑[6^A065033(n+1)]+2` -/
def P7563078656279887161.Spec : Prop :=
  ∀ n, P7563078656279887161.a n = (A198307 (n + 3) : ℚ)

end A198307

/-! ## A198307.P7686177305095109355

`∑[∏[C(5, A010690(n))+1]]+2`
-/

namespace A198307.P7686177305095109355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A010690 n).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198307.P7686177305095109355

namespace A198307

/-- `∑[∏[C(5, A010690(n))+1]]+2` -/
def P7686177305095109355.Spec : Prop :=
  ∀ n, (P7686177305095109355.a n : ℤ) = A198307 (n + 3)

end A198307

/-! ## A198307.P14929781688155579098

`∑[6^(A002265(2*n)+1)]+2`
-/

namespace A198307.P14929781688155579098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A002265 (2 * n) + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198307.P14929781688155579098

namespace A198307

/-- `∑[6^(A002265(2*n)+1)]+2` -/
def P14929781688155579098.Spec : Prop :=
  ∀ n, P14929781688155579098.a n = (A198307 (n + 3) : ℚ)

end A198307

/-! ## A198307.P880671195947805374

`∑[A017992(3*A008619(n))]+2`
-/

namespace A198307.P880671195947805374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017992 (3 * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198307.P880671195947805374

namespace A198307

/-- `∑[A017992(3*A008619(n))]+2` -/
def P880671195947805374.Spec : Prop :=
  ∀ n, P880671195947805374.a n = A198307 (n + 3)

end A198307

/-! ## A198307.P9899813640480421245

`A117865(n+3)/5`
-/

namespace A198307.P9899813640480421245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117865 (n + 3) : ℚ) / 5

end

end A198307.P9899813640480421245

namespace A198307

/-- `A117865(n+3)/5` -/
def P9899813640480421245.Spec : Prop :=
  ∀ n, P9899813640480421245.a n = (A198307 (n + 3) : ℚ)

end A198307

/-! ## A198307.P2114256279420683044

`∑[6^(n+1)/a(n-1)]` with `a(0)=8, a(1)=6`
-/

namespace A198307.P2114256279420683044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8, 6] fun n f1 =>
  (6 ^ (n + 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198307.P2114256279420683044

namespace A198307

/-- `∑[6^(n+1)/a(n-1)]` -/
def P2114256279420683044.Spec : Prop :=
  ∀ n, P2114256279420683044.a n = (A198307 (n + 3) : ℚ)

end A198307

/-!
# A198308: Moore lower bound on the order of an (8,g)-cage.

The programs for A198308, the canonical program `A198308.P3787114976258292296` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198308 has offset 3).

The definition of A198308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198308.P3787114976258292296

`a(n-1)+7*a(n-2)-7*a(n-3)` with `a(0)=9, a(1)=16, a(2)=65`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198308

/-- `a(n-1)+7*a(n-2)-7*a(n-3)` -/
def P3787114976258292296.Spec : Prop :=
  ∀ n, P3787114976258292296.a n = A198308 (n + 3)

theorem P3787114976258292296.correct : P3787114976258292296.Spec := by
  intro n
  simp only [A198308, Nat.add_sub_cancel]

end A198308

/-! ## A198308.P15275748735879832824

`∑[∏[gcd(7, and(1, n))]]+2`
-/

namespace A198308.P15275748735879832824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198308.P15275748735879832824

namespace A198308

/-- `∑[∏[gcd(7, and(1, n))]]+2` -/
def P15275748735879832824.Spec : Prop :=
  ∀ n, (P15275748735879832824.a n : ℤ) = A198308 (n + 3)

end A198308

/-! ## A198308.P2623070647423621506

`7*a(n-2)+2` with `a(0)=9, a(1)=16`
-/

namespace A198308.P2623070647423621506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 16] fun n a =>
  7 * a (n - 2) + 2

end

end A198308.P2623070647423621506

namespace A198308

/-- `7*a(n-2)+2` -/
def P2623070647423621506.Spec : Prop :=
  ∀ n, (P2623070647423621506.a n : ℤ) = A198308 (n + 3)

end A198308

/-! ## A198308.P7115031271293299294

`∑[7^∑[char[2*n]]]+2`
-/

namespace A198308.P7115031271293299294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198308.P7115031271293299294

namespace A198308

/-- `∑[7^∑[char[2*n]]]+2` -/
def P7115031271293299294.Spec : Prop :=
  ∀ n, (P7115031271293299294.a n : ℤ) = A198308 (n + 3)

end A198308

/-! ## A198308.P1581222932105942934

`A117866(n+3)/6`
-/

namespace A198308.P1581222932105942934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117866 (n + 3) : ℚ) / 6

end

end A198308.P1581222932105942934

namespace A198308

/-- `A117866(n+3)/6` -/
def P1581222932105942934.Spec : Prop :=
  ∀ n, P1581222932105942934.a n = (A198308 (n + 3) : ℚ)

end A198308

/-! ## A198308.P1586872299345847022

`∑[7^(n+1)/a(n-1)]` with `a(0)=9, a(1)=7`
-/

namespace A198308.P1586872299345847022
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [9, 7] fun n f1 =>
  (7 ^ (n + 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198308.P1586872299345847022

namespace A198308

/-- `∑[7^(n+1)/a(n-1)]` -/
def P1586872299345847022.Spec : Prop :=
  ∀ n, P1586872299345847022.a n = (A198308 (n + 3) : ℚ)

end A198308

/-!
# A198309: Moore lower bound on the order of a (9,g)-cage.

The programs for A198309, the canonical program `A198309.P9707430758553629920` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198309 has offset 3).

The definition of A198309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198309.P9707430758553629920

`a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=10, a(1)=18, a(2)=82`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198309

/-- `a(n-1)+8*a(n-2)-8*a(n-3)` -/
def P9707430758553629920.Spec : Prop :=
  ∀ n, P9707430758553629920.a n = A198309 (n + 3)

theorem P9707430758553629920.correct : P9707430758553629920.Spec := by
  intro n
  simp only [A198309, Nat.add_sub_cancel]

end A198309

/-! ## A198309.P16401868654460795724

`∑[∏[gcd(8, and(1, n))]]+2`
-/

namespace A198309.P16401868654460795724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (Nat.land 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P16401868654460795724

namespace A198309

/-- `∑[∏[gcd(8, and(1, n))]]+2` -/
def P16401868654460795724.Spec : Prop :=
  ∀ n, (P16401868654460795724.a n : ℤ) = A198309 (n + 3)

end A198309

/-! ## A198309.P15425300370576313436

`8*a(n-2)+2` with `a(0)=10, a(1)=18`
-/

namespace A198309.P15425300370576313436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 18] fun n a =>
  8 * a (n - 2) + 2

end

end A198309.P15425300370576313436

namespace A198309

/-- `8*a(n-2)+2` -/
def P15425300370576313436.Spec : Prop :=
  ∀ n, (P15425300370576313436.a n : ℤ) = A198309 (n + 3)

end A198309

/-! ## A198309.P2083248232327615140

`∑[8^∑[log2(gcd(2, n))]]+2`
-/

namespace A198309.P2083248232327615140
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P2083248232327615140

namespace A198309

/-- `∑[8^∑[log2(gcd(2, n))]]+2` -/
def P2083248232327615140.Spec : Prop :=
  ∀ n, P2083248232327615140.a n = (A198309 (n + 3) : ℝ)

end A198309

/-! ## A198309.P13670318825935954660

`or(2, ∑[8^∑[char[2*n]]])`
-/

namespace A198309.P13670318825935954660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198309.P13670318825935954660

namespace A198309

/-- `or(2, ∑[8^∑[char[2*n]]])` -/
def P13670318825935954660.Spec : Prop :=
  ∀ n, (P13670318825935954660.a n : ℤ) = A198309 (n + 3)

end A198309

/-! ## A198309.P12764153014704658809

`xor(2, ∑[8*a(n-2)])` with `a(0)=8, a(1)=8`
-/

namespace A198309.P12764153014704658809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  8 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198309.P12764153014704658809

namespace A198309

/-- `xor(2, ∑[8*a(n-2)])` -/
def P12764153014704658809.Spec : Prop :=
  ∀ n, (P12764153014704658809.a n : ℤ) = A198309 (n + 3)

end A198309

/-! ## A198309.P6155804116195363430

`∑[8^∑[(n+1)%2]]+2`
-/

namespace A198309.P6155804116195363430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P6155804116195363430

namespace A198309

/-- `∑[8^∑[(n+1)%2]]+2` -/
def P6155804116195363430.Spec : Prop :=
  ∀ n, (P6155804116195363430.a n : ℤ) = A198309 (n + 3)

end A198309

/-! ## A198309.P16425578342300748771

`∑[∏[8/a(n-1)]]+2` with `a(0)=8`
-/

namespace A198309.P16425578342300748771
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f2 =>
  8 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P16425578342300748771

namespace A198309

/-- `∑[∏[8/a(n-1)]]+2` -/
def P16425578342300748771.Spec : Prop :=
  ∀ n, P16425578342300748771.a n = (A198309 (n + 3) : ℚ)

end A198309

/-! ## A198309.P3077819422837880736

`xor(2, ∑[∏[8/a(n-1)]])` with `a(0)=8`
-/

namespace A198309.P3077819422837880736
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [8] fun n f2 =>
  8 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A198309.P3077819422837880736

namespace A198309

/-- `xor(2, ∑[∏[8/a(n-1)]])` -/
def P3077819422837880736.Spec : Prop :=
  ∀ n, P3077819422837880736.a n = A198309 (n + 3)

end A198309

/-! ## A198309.P5759820268164855816

`∑[2^∑[3-a(n-1)]]+2` with `a(0)=3`
-/

namespace A198309.P5759820268164855816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P5759820268164855816

namespace A198309

/-- `∑[2^∑[3-a(n-1)]]+2` -/
def P5759820268164855816.Spec : Prop :=
  ∀ n, P5759820268164855816.a n = (A198309 (n + 3) : ℚ)

end A198309

/-! ## A198309.P3230539834471259270

`∑[A164683(n+2)]+2`
-/

namespace A198309.P3230539834471259270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P3230539834471259270

namespace A198309

/-- `∑[A164683(n+2)]+2` -/
def P3230539834471259270.Spec : Prop :=
  ∀ n, P3230539834471259270.a n = A198309 (n + 3)

end A198309

/-! ## A198309.P13192119694507815606

`∑[A135530(3*n+4)]+2`
-/

namespace A198309.P13192119694507815606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P13192119694507815606

namespace A198309

/-- `∑[A135530(3*n+4)]+2` -/
def P13192119694507815606.Spec : Prop :=
  ∀ n, P13192119694507815606.a n = A198309 (n + 3)

end A198309

/-! ## A198309.P14067082894852848361

`∑[A094014(n+2-char[comp[2*n]])]+2`
-/

namespace A198309.P14067082894852848361
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 (n + 2 - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P14067082894852848361

namespace A198309

/-- `∑[A094014(n+2-char[comp[2*n]])]+2` -/
def P14067082894852848361.Spec : Prop :=
  ∀ n, P14067082894852848361.a n = A198309 (n + 3)

end A198309

/-! ## A198309.P16779529622738753786

`2*(∑[A016116(A168326(n+1))]+1)`
-/

namespace A198309.P16779529622738753786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A168326 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198309.P16779529622738753786

namespace A198309

/-- `2*(∑[A016116(A168326(n+1))]+1)` -/
def P16779529622738753786.Spec : Prop :=
  ∀ n, P16779529622738753786.a n = A198309 (n + 3)

end A198309

/-! ## A198309.P13068077006646770962

`∑[A000079(∑[A280193(n)+1]+1)]+2`
-/

namespace A198309.P13068077006646770962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198309.P13068077006646770962

namespace A198309

/-- `∑[A000079(∑[A280193(n)+1]+1)]+2` -/
def P13068077006646770962.Spec : Prop :=
  ∀ n, P13068077006646770962.a n = A198309 (n + 3)

end A198309

/-! ## A198309.P5696681945205519753

`A117867(n+3)/7`
-/

namespace A198309.P5696681945205519753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117867 (n + 3) : ℚ) / 7

end

end A198309.P5696681945205519753

namespace A198309

/-- `A117867(n+3)/7` -/
def P5696681945205519753.Spec : Prop :=
  ∀ n, P5696681945205519753.a n = (A198309 (n + 3) : ℚ)

end A198309

/-!
# A198310: Moore lower bound on the order of a (10,g)-cage.

The programs for A198310, the canonical program `A198310.P11870584124394740641` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198310 has offset 3).

The definition of A198310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198310.P11870584124394740641

`a(n-1)+9*a(n-2)-9*a(n-3)` with `a(0)=11, a(1)=20, a(2)=101`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198310

/-- `a(n-1)+9*a(n-2)-9*a(n-3)` -/
def P11870584124394740641.Spec : Prop :=
  ∀ n, P11870584124394740641.a n = A198310 (n + 3)

theorem P11870584124394740641.correct : P11870584124394740641.Spec := by
  intro n
  simp only [A198310, Nat.add_sub_cancel]

end A198310

/-! ## A198310.P11266523044153244632

`9*a(n-2)+2` with `a(0)=11, a(1)=20`
-/

namespace A198310.P11266523044153244632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 20] fun n a =>
  9 * a (n - 2) + 2

end

end A198310.P11266523044153244632

namespace A198310

/-- `9*a(n-2)+2` -/
def P11266523044153244632.Spec : Prop :=
  ∀ n, (P11266523044153244632.a n : ℤ) = A198310 (n + 3)

end A198310

/-! ## A198310.P16991979750921996694

`∑[3^(or(1, n)+1)]+2`
-/

namespace A198310.P16991979750921996694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (Nat.lor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198310.P16991979750921996694

namespace A198310

/-- `∑[3^(or(1, n)+1)]+2` -/
def P16991979750921996694.Spec : Prop :=
  ∀ n, (P16991979750921996694.a n : ℤ) = A198310 (n + 3)

end A198310

/-! ## A198310.P3354287216216349120

`∑[3^(gcd(2, n)+n)]+2`
-/

namespace A198310.P3354287216216349120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (Nat.gcd 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198310.P3354287216216349120

namespace A198310

/-- `∑[3^(gcd(2, n)+n)]+2` -/
def P3354287216216349120.Spec : Prop :=
  ∀ n, (P3354287216216349120.a n : ℤ) = A198310 (n + 3)

end A198310

/-! ## A198310.P8485758295880324614

`∑[9^ceil((n+1)/2)]+2`
-/

namespace A198310.P8485758295880324614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A198310.P8485758295880324614

namespace A198310

/-- `∑[9^ceil((n+1)/2)]+2` -/
def P8485758295880324614.Spec : Prop :=
  ∀ n, P8485758295880324614.a n = (A198310 (n + 3) : ℚ)

end A198310

/-! ## A198310.P12048734200822594491

`Δ[∑[∑[A056449(n)²]]+n]`
-/

namespace A198310.P12048734200822594491
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198310.P12048734200822594491

namespace A198310

/-- `Δ[∑[∑[A056449(n)²]]+n]` -/
def P12048734200822594491.Spec : Prop :=
  ∀ n, P12048734200822594491.a n = A198310 (n + 3)

end A198310

/-! ## A198310.P10241862155232707895

`A297443(A014601(n+1))`
-/

namespace A198310.P10241862155232707895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297443 (A014601 (n + 1)).toNat

end

end A198310.P10241862155232707895

namespace A198310

/-- `A297443(A014601(n+1))` -/
def P10241862155232707895.Spec : Prop :=
  ∀ n, P10241862155232707895.a n = A198310 (n + 3)

end A198310

/-! ## A198310.P2296749349034543473

`A297443(A154708(n+1))`
-/

namespace A198310.P2296749349034543473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297443 (A154708 (n + 1)).toNat

end

end A198310.P2296749349034543473

namespace A198310

/-- `A297443(A154708(n+1))` -/
def P2296749349034543473.Spec : Prop :=
  ∀ n, P2296749349034543473.a n = A198310 (n + 3)

end A198310

/-! ## A198310.P11472570487030761562

`A297444(n+3)/3`
-/

namespace A198310.P11472570487030761562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297444 (n + 3) : ℚ) / 3

end

end A198310.P11472570487030761562

namespace A198310

/-- `A297444(n+3)/3` -/
def P11472570487030761562.Spec : Prop :=
  ∀ n, P11472570487030761562.a n = (A198310 (n + 3) : ℚ)

end A198310

/-! ## A198310.P15409126498493356639

`A117868(n+3)/8`
-/

namespace A198310.P15409126498493356639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117868 (n + 3) : ℚ) / 8

end

end A198310.P15409126498493356639

namespace A198310

/-- `A117868(n+3)/8` -/
def P15409126498493356639.Spec : Prop :=
  ∀ n, P15409126498493356639.a n = (A198310 (n + 3) : ℚ)

end A198310

/-!
# A198313: Number of, not necessarily connected, regular simple graphs on n vertices with girth exactly 3.

The programs for A198313, there is no canonical definition to state claims against.
-/

/-! ## A198313.P8499488224475598026

`A186743(n)+A210713(n)`
-/

namespace A198313.P8499488224475598026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186743 n + A210713 n

end

end A198313.P8499488224475598026

/-! ## A198313.P17011242399501787601

`A005176(n)-A185314(n)`
-/

namespace A198313.P17011242399501787601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - A185314 n

end

end A198313.P17011242399501787601

/-! ## A198313.P8238225702481818962

`A005177(n)+A068932(n)-A185314(n)`
-/

namespace A198313.P8238225702481818962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n + (A068932 n - A185314 n)

end

end A198313.P8238225702481818962

/-! ## A198313.P10772069995290793404

`A005176(n)-(A186724(n)+A185214(n))`
-/

namespace A198313.P10772069995290793404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - (A186724 n + A185214 n)

end

end A198313.P10772069995290793404

/-! ## A198313.P10514998147126661980

`A005177(n)+A210713(n)-A186724(n)`
-/

namespace A198313.P10514998147126661980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n + (A210713 n - A186724 n)

end

end A198313.P10514998147126661980

/-!
# A198314: Number of, not necessarily connected, regular simple graphs on n vertices with girth exactly 4.

The programs for A198314, there is no canonical definition to state claims against.
-/

/-! ## A198314.P2046604535863124303

`A186744(n)+A210714(n)`
-/

namespace A198314.P2046604535863124303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186744 n + A210714 n

end

end A198314.P2046604535863124303

/-! ## A198314.P13591043750004143934

`A185314(n)-A185315(n)`
-/

namespace A198314.P13591043750004143934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n - A185315 n

end

end A198314.P13591043750004143934

/-!
# A198316: Number of, not necessarily connected, regular simple graphs on n vertices with girth exactly 6.

The programs for A198316, there is no canonical definition to state claims against.
-/

/-! ## A198316.P3155747808284670528

`A186746(n)+A210716(n)`
-/

namespace A198316.P3155747808284670528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 n + A210716 n

end

end A198316.P3155747808284670528

/-! ## A198316.P11929536081486084054

`A185316(n)-A185317(n)`
-/

namespace A198316.P11929536081486084054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n - A185317 n

end

end A198316.P11929536081486084054

/-! ## A198316.P15690003214464147215

`A185216(n)+A186746(n)-A185217(n)`
-/

namespace A198316.P15690003214464147215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + (A186746 n - A185217 n)

end

end A198316.P15690003214464147215

/-! ## A198316.P9654351768101571209

`A185216(n)+A186726(n)-A185317(n)`
-/

namespace A198316.P9654351768101571209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + (A186726 n - A185317 n)

end

end A198316.P9654351768101571209

/-! ## A198316.P14342727160045158092

`A185316(n)-(A198317(n)+A185318(n))`
-/

namespace A198316.P14342727160045158092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n - (A198317 n + A185318 n)

end

end A198316.P14342727160045158092

/-!
# A198317: Number of, not necessarily connected, regular simple graphs on n vertices with girth exactly 7.

The programs for A198317, there is no canonical definition to state claims against.
-/

/-! ## A198317.P15850740451416918502

`A186747(n)+A210717(n)`
-/

namespace A198317.P15850740451416918502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 n + A210717 n

end

end A198317.P15850740451416918502

/-! ## A198317.P5594423580436786037

`A185317(n)-A185318(n)`
-/

namespace A198317.P5594423580436786037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n - A185318 n

end

end A198317.P5594423580436786037

/-! ## A198317.P5544818407675041891

`A185217(n)+A186747(n)-A185218(n)`
-/

namespace A198317.P5544818407675041891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + (A186747 n - A185218 n)

end

end A198317.P5544818407675041891

/-! ## A198317.P14078981595346863819

`A185317(n)-(A186728(n)+A185218(n))`
-/

namespace A198317.P14078981595346863819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n - (A186728 n + A185218 n)

end

end A198317.P14078981595346863819

/-! ## A198317.P14309878024878402172

`A185317(n)-(A198318(n)+A185319(n))`
-/

namespace A198317.P14309878024878402172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n - (A198318 n + A185319 n)

end

end A198317.P14309878024878402172

/-!
# A198318: Number of, not necessarily connected, regular simple graphs on n vertices with girth exactly 8.

The programs for A198318, there is no canonical definition to state claims against.
-/

/-! ## A198318.P1549997982486549063

`A186748(n)+A210718(n)`
-/

namespace A198318.P1549997982486549063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 n + A210718 n

end

end A198318.P1549997982486549063

/-! ## A198318.P13839720076890288243

`A185318(n)-A185319(n)`
-/

namespace A198318.P13839720076890288243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 n - A185319 n

end

end A198318.P13839720076890288243

/-! ## A198318.P13815444581163596076

`A185218(n)+A186748(n)-A185219(n)`
-/

namespace A198318.P13815444581163596076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A186748 n - A185219 n)

end

end A198318.P13815444581163596076

/-! ## A198318.P644488528883181789

`A185218(n)+A186728(n)-A185319(n)`
-/

namespace A198318.P644488528883181789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A186728 n - A185319 n)

end

end A198318.P644488528883181789

/-! ## A198318.P4708754489424730961

`A185318(n)-(A186729(n)+A185219(n))`
-/

namespace A198318.P4708754489424730961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 n - (A186729 n + A185219 n)

end

end A198318.P4708754489424730961

/-!
# A198321: Triangle read by rows: T(n, k) = binomial(n, k-1) for 1 <= k <= n, and T(n, 0) = 0^n.

The programs for A198321, the canonical program `A198321.P15651192103710140511` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198321 has offset 0).

The definition of A198321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198321.P15651192103710140511

`A193815(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A198321

/-- `A193815(n-1)-a(n-1)` -/
def P15651192103710140511.Spec : Prop :=
  ∀ n, P15651192103710140511.a n = A198321 n

theorem P15651192103710140511.correct : P15651192103710140511.Spec := by
  intro n
  simp only [A198321]

end A198321

/-! ## A198321.P10820471239454500232

`A007318(abs(1-n))-char[∑[n+1]]`
-/

namespace A198321.P10820471239454500232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 |1 - (n : ℤ)|.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198321.P10820471239454500232

namespace A198321

/-- `A007318(abs(1-n))-char[∑[n+1]]` -/
def P10820471239454500232.Spec : Prop :=
  ∀ n, P10820471239454500232.a n = A198321 n

end A198321

/-! ## A198321.P16312567070293991696

`A199011(n)-A214292(n)`
-/

namespace A198321.P16312567070293991696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 n - A214292 n

end

end A198321.P16312567070293991696

namespace A198321

/-- `A199011(n)-A214292(n)` -/
def P16312567070293991696.Spec : Prop :=
  ∀ n, P16312567070293991696.a n = A198321 n

end A198321

/-! ## A198321.P17290663712654279111

`A029656(n+1)-A134058(n)`
-/

namespace A198321.P17290663712654279111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A134058 n

end

end A198321.P17290663712654279111

namespace A198321

/-- `A029656(n+1)-A134058(n)` -/
def P17290663712654279111.Spec : Prop :=
  ∀ n, P17290663712654279111.a n = A198321 n

end A198321

/-! ## A198321.P8558218216897050525

`C(A003056(abs(1-n)), A004736(n+1))`
-/

namespace A198321.P8558218216897050525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 |1 - (n : ℤ)|.toNat).toNat (A004736 (n + 1)).toNat

end

end A198321.P8558218216897050525

namespace A198321

/-- `C(A003056(abs(1-n)), A004736(n+1))` -/
def P8558218216897050525.Spec : Prop :=
  ∀ n, (P8558218216897050525.a n : ℤ) = A198321 n

end A198321

/-! ## A198321.P18041903645494110192

`(1-A073424(n))*A007318((n-1)%(n+1))`
-/

namespace A198321.P18041903645494110192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A073424 n) * A007318 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A198321.P18041903645494110192

namespace A198321

/-- `(1-A073424(n))*A007318((n-1)%(n+1))` -/
def P18041903645494110192.Spec : Prop :=
  ∀ n, P18041903645494110192.a n = A198321 n

end A198321

/-! ## A198321.P1566423311896275955

`A074909(abs(1-n)+1)-ceil(A134059(n)/3)`
-/

namespace A198321.P1566423311896275955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (|1 - (n : ℤ)| + 1).toNat - ⌈(A134059 n : ℚ) / 3⌉

end

end A198321.P1566423311896275955

namespace A198321

/-- `A074909(abs(1-n)+1)-ceil(A134059(n)/3)` -/
def P1566423311896275955.Spec : Prop :=
  ∀ n, P1566423311896275955.a n = A198321 n

end A198321

/-! ## A198321.P17313088365842029534

`C(A028310(A003056(n)), A004736(n+1))`
-/

namespace A198321.P17313088365842029534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A003056 n).toNat).toNat (A004736 (n + 1)).toNat

end

end A198321.P17313088365842029534

namespace A198321

/-- `C(A028310(A003056(n)), A004736(n+1))` -/
def P17313088365842029534.Spec : Prop :=
  ∀ n, (P17313088365842029534.a n : ℤ) = A198321 n

end A198321

/-! ## A198321.P14260266745764611757

`C(A028310(A003056(n)), A025581(n)+1)`
-/

namespace A198321.P14260266745764611757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A003056 n).toNat).toNat (A025581 n + 1).toNat

end

end A198321.P14260266745764611757

namespace A198321

/-- `C(A028310(A003056(n)), A025581(n)+1)` -/
def P14260266745764611757.Spec : Prop :=
  ∀ n, (P14260266745764611757.a n : ℤ) = A198321 n

end A198321

/-! ## A198321.P5352358443787313935

`A074909(n)+A199011(n)-A135278(n)`
-/

namespace A198321.P5352358443787313935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A199011 n - A135278 n)

end

end A198321.P5352358443787313935

namespace A198321

/-- `A074909(n)+A199011(n)-A135278(n)` -/
def P5352358443787313935.Spec : Prop :=
  ∀ n, P5352358443787313935.a n = A198321 n

end A198321

/-! ## A198321.P9543327313994159934

`A177767(n)+A097805(A153881(n+1)+n)`
-/

namespace A198321.P9543327313994159934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 n + A097805 (A153881 (n + 1) + (n : ℤ)).toNat

end

end A198321.P9543327313994159934

namespace A198321

/-- `A177767(n)+A097805(A153881(n+1)+n)` -/
def P9543327313994159934.Spec : Prop :=
  ∀ n, P9543327313994159934.a n = A198321 n

end A198321

/-! ## A198321.P16135244944036362554

`A074909(n)+A199011(n)-A074909(n+1)`
-/

namespace A198321.P16135244944036362554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n + (A199011 n - A074909 (n + 1))

end

end A198321.P16135244944036362554

namespace A198321

/-- `A074909(n)+A199011(n)-A074909(n+1)` -/
def P16135244944036362554.Spec : Prop :=
  ∀ n, P16135244944036362554.a n = A198321 n

end A198321

/-! ## A198321.P16431326931214292215

`C(A028310(A002024(n+1)-1), A004736(n+1))`
-/

namespace A198321.P16431326931214292215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028310 (A002024 (n + 1) - 1).toNat).toNat (A004736 (n + 1)).toNat

end

end A198321.P16431326931214292215

namespace A198321

/-- `C(A028310(A002024(n+1)-1), A004736(n+1))` -/
def P16431326931214292215.Spec : Prop :=
  ∀ n, (P16431326931214292215.a n : ℤ) = A198321 n

end A198321

/-! ## A198321.P1863599590733497732

`A199011(A061579(n))`
-/

namespace A198321.P1863599590733497732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199011 (A061579 n).toNat

end

end A198321.P1863599590733497732

namespace A198321

/-- `A199011(A061579(n))` -/
def P1863599590733497732.Spec : Prop :=
  ∀ n, P1863599590733497732.a n = A198321 n

end A198321

/-! ## A198321.P8422574864175695347

`A097805(xor(C(2, n), A007401(n+1)))`
-/

namespace A198321.P8422574864175695347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Int.xor (Nat.choose 2 n : ℤ) (A007401 (n + 1))).toNat

end

end A198321.P8422574864175695347

namespace A198321

/-- `A097805(xor(C(2, n), A007401(n+1)))` -/
def P8422574864175695347.Spec : Prop :=
  ∀ n, P8422574864175695347.a n = A198321 n

end A198321

/-! ## A198321.P6053951768665772411

`A097805(A007401(n+1)-C(2, n²))`
-/

namespace A198321.P6053951768665772411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A007401 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)).toNat

end

end A198321.P6053951768665772411

namespace A198321

/-- `A097805(A007401(n+1)-C(2, n²))` -/
def P6053951768665772411.Spec : Prop :=
  ∀ n, P6053951768665772411.a n = A198321 n

end A198321

/-! ## A198321.P1211542149188752175

`A097805(A007401(n+1)%(3*n+1))`
-/

namespace A198321.P1211542149188752175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (Int.tmod (A007401 (n + 1)) (3 * n + 1 : ℤ)).toNat

end

end A198321.P1211542149188752175

namespace A198321

/-- `A097805(A007401(n+1)%(3*n+1))` -/
def P1211542149188752175.Spec : Prop :=
  ∀ n, P1211542149188752175.a n = A198321 n

end A198321

/-! ## A198321.P10090983951436659616

`A097805(A028310(n)+A002024(n+1))`
-/

namespace A198321.P10090983951436659616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A028310 n + A002024 (n + 1)).toNat

end

end A198321.P10090983951436659616

namespace A198321

/-- `A097805(A028310(n)+A002024(n+1))` -/
def P10090983951436659616.Spec : Prop :=
  ∀ n, P10090983951436659616.a n = A198321 n

end A198321

/-! ## A198321.P942970295421247837

`A071919(comp[∑[n]-2])`
-/

namespace A198321.P942970295421247837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A198321.P942970295421247837

namespace A198321

/-- `A071919(comp[∑[n]-2])` -/
def P942970295421247837.Spec : Prop :=
  ∀ n, P942970295421247837.a n = A198321 n

end A198321

/-! ## A198321.P4246263845526782283

`A132749(A007401(n+1))-A132749(n)`
-/

namespace A198321.P4246263845526782283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A007401 (n + 1)).toNat - A132749 n

end

end A198321.P4246263845526782283

namespace A198321

/-- `A132749(A007401(n+1))-A132749(n)` -/
def P4246263845526782283.Spec : Prop :=
  ∀ n, P4246263845526782283.a n = A198321 n

end A198321

/-!
# A198322: The Matula-Goebel numbers of the rooted trees that have palindromic Wiener polynomials.

The programs for A198322, there is no canonical definition to state claims against.
-/

/-! ## A198322.P5306854647506386053

`A004001(lcm(A189924(n), A322866(n+2))+1)`
-/

namespace A198322.P5306854647506386053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (Int.lcm (A189924 n) (A322866 (n + 2)) + 1)

end

end A198322.P5306854647506386053

/-!
# A198323: Matula-Goebel number of rooted trees that have only vertices of degree 1 and of maximal degree.

The programs for A198323, there is no canonical definition to state claims against.
-/

/-! ## A198323.P12216665400885593808

`lt[4, A026366(A096296(2*n+1))]`
-/

namespace A198323.P12216665400885593808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026366 (A096296 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198323.P12216665400885593808

/-! ## A198323.P980571860688130241

`∑[A249617(A284553(A002722(n+1)))]`
-/

namespace A198323.P980571860688130241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249617 (A284553 (A002722 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198323.P980571860688130241

/-!
# A198324: Number of lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps U=(1,1), D=(1,-1) and S=(0,1).

The programs for A198324, there is no canonical definition to state claims against.
-/

/-! ## A198324.P9386037786237942639

`A011371(A155932(round(ϕ*a(n-1))))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A198324.P9386037786237942639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A011371 (A155932 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat).toNat

end

end A198324.P9386037786237942639

/-! ## A198324.P6561930153155388896

`A198318(A005314(n))+A006343(n)`
-/

namespace A198324.P6561930153155388896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A005314 n).toNat + A006343 n

end

end A198324.P6561930153155388896

/-! ## A198324.P12526166219792928114

`A198318(A007661(n))+A006343(n)`
-/

namespace A198324.P12526166219792928114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A007661 n).toNat + A006343 n

end

end A198324.P12526166219792928114

/-!
# A198325: Irregular triangle read by rows: T(n,k) is the number of directed paths of length k (k>=1) in the rooted tree having Matula-Goebel number n (n>=2).

The programs for A198325, there is no canonical definition to state claims against.
-/

/-! ## A198325.P2888251967898638020

`A212179(A128368(n+1))`
-/

namespace A198325.P2888251967898638020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212179 (A128368 (n + 1)).toNat

end

end A198325.P2888251967898638020

/-! ## A198325.P338921006317953090

`A001221(∑[A003399(n+1)+A000041(n)])`
-/

namespace A198325.P338921006317953090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003399 (n + 1) + A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198325.P338921006317953090

/-! ## A198325.P14694867709487417841

`A076259(A162663(3*n)+A093891(n+1))`
-/

namespace A198325.P14694867709487417841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A162663 (3 * n) + A093891 (n + 1)).toNat

end

end A198325.P14694867709487417841

/-! ## A198325.P15570443983813569426

`A085082(gcd(A071633(n+1), A254092(n+3)))`
-/

namespace A198325.P15570443983813569426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (Int.gcd (A071633 (n + 1)) (A254092 (n + 3)))

end

end A198325.P15570443983813569426

/-!
# A198326: Sum of lengths of all directed paths in the rooted tree having Matula-Goebel number n.

The programs for A198326, there is no canonical definition to state claims against.
-/

/-! ## A198326.P9912892196792395763

`A196047(A324922(n+1))`
-/

namespace A198326.P9912892196792395763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196047 (A324922 (n + 1)).toNat

end

end A198326.P9912892196792395763

/-!
# A198327: Semiprimes k such that k-2 is also a semiprime.

The programs for A198327, the canonical program `A198327.P891835078259736494` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198327 has offset 1).

The definition of A198327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A198327.P891835078259736494

`A092207(n+1)+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A198327

/-- `A092207(n+1)+2` -/
def P891835078259736494.Spec : Prop :=
  ∀ n, P891835078259736494.a n = A198327 (n + 1)

theorem P891835078259736494.correct : P891835078259736494.Spec := by
  intro n
  simp only [A198327, Nat.add_sub_cancel]

end A198327

/-! ## A198327.P5654976878422763215

`filter[A200925(n+1), A064911(#)]`
-/

namespace A198327.P5654976878422763215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A198327.P5654976878422763215

namespace A198327

/-- `filter[A200925(n+1), A064911(#)]` -/
def P5654976878422763215.Spec : Prop :=
  ∀ n, P5654976878422763215.a n = A198327 (n + 1)

end A198327

/-! ## A198327.P2698839106414864109

`filter[A200925(n+3), A101040(#)]`
-/

namespace A198327.P2698839106414864109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A198327.P2698839106414864109

namespace A198327

/-- `filter[A200925(n+3), A101040(#)]` -/
def P2698839106414864109.Spec : Prop :=
  ∀ n, P2698839106414864109.a n = A198327 (n + 1)

end A198327

/-! ## A198327.P12033713903920106927

`∩[A001358(n+1), A200925(n+1)]`
-/

namespace A198327.P12033713903920106927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198327.P12033713903920106927

namespace A198327

/-- `∩[A001358(n+1), A200925(n+1)]` -/
def P12033713903920106927.Spec : Prop :=
  ∀ n, (P12033713903920106927.a n : ℤ) = A198327 (n + 1)

end A198327

/-! ## A198327.P1982082836385049318

`∩[A001358(n+1), A088707(n+1)+1]`
-/

namespace A198327.P1982082836385049318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198327.P1982082836385049318

namespace A198327

/-- `∩[A001358(n+1), A088707(n+1)+1]` -/
def P1982082836385049318.Spec : Prop :=
  ∀ n, (P1982082836385049318.a n : ℤ) = A198327 (n + 1)

end A198327

/-! ## A198327.P4171247081077689109

`∩[A088707(n+1)+1, A176540(n+1)]`
-/

namespace A198327.P4171247081077689109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198327.P4171247081077689109

namespace A198327

/-- `∩[A088707(n+1)+1, A176540(n+1)]` -/
def P4171247081077689109.Spec : Prop :=
  ∀ n, (P4171247081077689109.a n : ℤ) = A198327 (n + 1)

end A198327

/-! ## A198327.P7523591621890436900

`∩[A088707(n+1), A186621(n+1)]+1`
-/

namespace A198327.P7523591621890436900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A198327.P7523591621890436900

namespace A198327

/-- `∩[A088707(n+1), A186621(n+1)]+1` -/
def P7523591621890436900.Spec : Prop :=
  ∀ n, (P7523591621890436900.a n : ℤ) = A198327 (n + 1)

end A198327

/-! ## A198327.P9034375777934438496

`∩[A088707(n+1), A280382(n+1)]+1`
-/

namespace A198327.P9034375777934438496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A198327.P9034375777934438496

namespace A198327

/-- `∩[A088707(n+1), A280382(n+1)]+1` -/
def P9034375777934438496.Spec : Prop :=
  ∀ n, (P9034375777934438496.a n : ℤ) = A198327 (n + 1)

end A198327

/-! ## A198327.P9924746642066966413

`∩[A186621(n+1), A280382(n+1)]+1`
-/

namespace A198327.P9924746642066966413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A198327.P9924746642066966413

namespace A198327

/-- `∩[A186621(n+1), A280382(n+1)]+1` -/
def P9924746642066966413.Spec : Prop :=
  ∀ n, (P9924746642066966413.a n : ℤ) = A198327 (n + 1)

end A198327

/-! ## A198327.P9862273869596713902

`A124936(n+1)+1`
-/

namespace A198327.P9862273869596713902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1) + 1

end

end A198327.P9862273869596713902

namespace A198327

/-- `A124936(n+1)+1` -/
def P9862273869596713902.Spec : Prop :=
  ∀ n, P9862273869596713902.a n = A198327 (n + 1)

end A198327

/-! ## A198327.P13055486630720393357

`A009056(A092207(n+1))`
-/

namespace A198327.P13055486630720393357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A092207 (n + 1)).toNat

end

end A198327.P13055486630720393357

namespace A198327

/-- `A009056(A092207(n+1))` -/
def P13055486630720393357.Spec : Prop :=
  ∀ n, P13055486630720393357.a n = A198327 (n + 1)

end A198327

/-! ## A198327.P10851486362109281710

`A020725(A124936(n+1))`
-/

namespace A198327.P10851486362109281710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A124936 (n + 1)).toNat

end

end A198327.P10851486362109281710

namespace A198327

/-- `A020725(A124936(n+1))` -/
def P10851486362109281710.Spec : Prop :=
  ∀ n, P10851486362109281710.a n = A198327 (n + 1)

end A198327

/-! ## A198327.P17957653905978200247

`eq[A008991(A001222(n+3)), A308427(n+1)]+3`
-/

namespace A198327.P17957653905978200247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008991 (A001222 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A198327.P17957653905978200247

namespace A198327

/-- `eq[A008991(A001222(n+3)), A308427(n+1)]+3` -/
def P17957653905978200247.Spec : Prop :=
  ∀ n, (P17957653905978200247.a n : ℤ) = A198327 (n + 1)

end A198327

/-!
# A198328: The Matula-Goebel number of the rooted tree obtained from the rooted tree with Matula-Goebel number n after removing the leaves, together with their incident edges.

The programs for A198328, there is no canonical definition to state claims against.
-/

/-! ## A198328.P6586143874352431829

`A198329(lcm(2, n+1))`
-/

namespace A198328.P6586143874352431829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (Nat.lcm 2 (n + 1))

end

end A198328.P6586143874352431829

/-! ## A198328.P5503147001076498566

`A198329((n+1)*gcd(2, n))`
-/

namespace A198328.P5503147001076498566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 ((n + 1) * Nat.gcd 2 n)

end

end A198328.P5503147001076498566

/-! ## A198328.P13130752152288279741

`A198329((n+1)*(2-n%2))`
-/

namespace A198328.P13130752152288279741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 ((n + 1 : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))).toNat

end

end A198328.P13130752152288279741

/-! ## A198328.P10063974283404643093

`A198329(2*(n+1)/2^val(n+1, 2))`
-/

namespace A198328.P10063974283404643093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (SequenceMachineLib.roundAway (2 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A198328.P10063974283404643093

/-! ## A198328.P13356649895667900192

`A198329((n+1)/2^val(n+1, 2)+(n+1)/2^val(n+1, 2))`
-/

namespace A198328.P13356649895667900192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A198328.P13356649895667900192

/-!
# A198329: The Matula-Goebel number of the rooted tree obtained from the rooted tree with Matula-Goebel number n after removing the vertices of degree one, together with their incident edges.

The programs for A198329, there is no canonical definition to state claims against.
-/

/-! ## A198329.P9852843749579812247

`A198328(A049084(n+1)+1-∑{p}[n+1, C(#, n)]+n)`
-/

namespace A198329.P9852843749579812247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (A049084 (n + 1) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A198329.P9852843749579812247

/-! ## A198329.P13699569503993373717

`A198328(A026233(n+1)+A000720(n+1))`
-/

namespace A198329.P13699569503993373717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (A026233 (n + 1) + A000720 (n + 1)).toNat

end

end A198329.P13699569503993373717

/-! ## A198329.P5985774529063420848

`A198328((A049084(n+1)+n)%A000265(n+1)+1)`
-/

namespace A198329.P5985774529063420848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (Int.tmod (A049084 (n + 1) + (n : ℤ)) (A000265 (n + 1)) + 1).toNat

end

end A198329.P5985774529063420848

/-! ## A198329.P6614087794175006721

`A198328(A175027(n+1))`
-/

namespace A198329.P6614087794175006721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198328 (A175027 (n + 1)).toNat

end

end A198329.P6614087794175006721

/-!
# A198330: Matula-Goebel numbers of central rooted trees.

The programs for A198330, there is no canonical definition to state claims against.
-/

/-! ## A198330.P3788612403789350342

`comp[A198331(n+1)-1]+1`
-/

namespace A198330.P3788612403789350342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198331 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A198330.P3788612403789350342

/-! ## A198330.P6907743029449593124

`eq[0, A196058(n+1)%2]+1`
-/

namespace A198330.P6907743029449593124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196058 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A198330.P6907743029449593124

/-! ## A198330.P14403554291127286271

`comp[(n+2)*A196058(n+2)%2]`
-/

namespace A198330.P14403554291127286271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A196058 (n + 2)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A198330.P14403554291127286271

/-! ## A198330.P6992284283454831032

`lt[1, A196081(A196058(n+1))]+1`
-/

namespace A198330.P6992284283454831032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196081 (A196058 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A198330.P6992284283454831032

/-! ## A198330.P14007891631135374878

`eq[2, A328579(A196058(n+1)+1)]+1`
-/

namespace A198330.P14007891631135374878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A196058 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A198330.P14007891631135374878

/-! ## A198330.P599527176529532434

`record[A000027(n+1)*A033999(A196058(n+1))]`
-/

namespace A198330.P599527176529532434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A033999 (A196058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198330.P599527176529532434

/-! ## A198330.P14920514256689324284

`eq[char[A198331(n+1)], A151933(n)]`
-/

namespace A198330.P14920514256689324284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198331 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A198330.P14920514256689324284

/-!
# A198331: Matula-Goebel numbers of bicentral rooted trees.

The programs for A198331, there is no canonical definition to state claims against.
-/

/-! ## A198331.P5489891643926218171

`eq[1, A196058(n+1)%2]+1`
-/

namespace A198331.P5489891643926218171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196058 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A198331.P5489891643926218171

/-! ## A198331.P12477745034575511060

`record[(n+2)*A196058(n+2)%2]`
-/

namespace A198331.P12477745034575511060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A196058 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198331.P12477745034575511060

/-! ## A198331.P4583951611893889039

`lt[2, (A196058(abs(2-n)+2)%2)²+2]`
-/

namespace A198331.P4583951611893889039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196058 (|2 - (n : ℤ)| + 2).toNat) 2 ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198331.P4583951611893889039

/-! ## A198331.P221454807838217545

`lt[0, A196058(A028310(n))%2]`
-/

namespace A198331.P221454807838217545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196058 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198331.P221454807838217545

/-! ## A198331.P14518748767867009177

`eq[2, A328579(A196058(n+1))]+1`
-/

namespace A198331.P14518748767867009177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A196058 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A198331.P14518748767867009177

/-! ## A198331.P7475540626542538070

`eq[1, A196058(A000007(n)+n)%2]`
-/

namespace A198331.P7475540626542538070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196058 (A000007 n + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198331.P7475540626542538070

/-! ## A198331.P10982865530768263468

`eq[1, A196058(C(n, n-A057427(n)))%2]`
-/

namespace A198331.P10982865530768263468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196058 (Nat.choose n ((n : ℤ) - A057427 n).toNat)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198331.P10982865530768263468

/-! ## A198331.P2448662442515549408

`lt[1, A001222((A196058(n)%2)²*a(n-1)+1)+1]` with `a(0)=0`
-/

namespace A198331.P2448662442515549408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001222 (Int.tmod (A196058 n) 2 ^ 2 * f2 (n - 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A198331.P2448662442515549408

/-!
# A198332: The Platt index of the rooted tree with Matula-Goebel number n.

The programs for A198332, there is no canonical definition to state claims against.
-/

/-! ## A198332.P4466769930833640827

`2*A224458(n+1)`
-/

namespace A198332.P4466769930833640827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224458 (n + 1)

end

end A198332.P4466769930833640827

/-! ## A198332.P5814208526367165753

`A005843(A224458(n+1))`
-/

namespace A198332.P5814208526367165753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A224458 (n + 1)).toNat

end

end A198332.P5814208526367165753

/-! ## A198332.P8410837048797971716

`A196053(n+1)-2*A196050(n+1)`
-/

namespace A198332.P8410837048797971716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196053 (n + 1) - 2 * A196050 (n + 1)

end

end A198332.P8410837048797971716

/-! ## A198332.P1092443362250410122

`A224458(or(n+1, and(1, n+1)))+A224458(n+1)`
-/

namespace A198332.P1092443362250410122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (Nat.lor (n + 1) (Nat.land 1 (n + 1))) + A224458 (n + 1)

end

end A198332.P1092443362250410122

/-! ## A198332.P10566521869354553994

`A224458(A000027(n+1))+A224458(n+1)`
-/

namespace A198332.P10566521869354553994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (A000027 (n + 1)).toNat + A224458 (n + 1)

end

end A198332.P10566521869354553994

/-! ## A198332.P9600235495116525439

`A224458(n+1)+A224458(A023443(n)+2)`
-/

namespace A198332.P9600235495116525439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (n + 1) + A224458 (A023443 n + 2).toNat

end

end A198332.P9600235495116525439

/-! ## A198332.P15319577081924148700

`2*(A196057(n+1)+A196050(A003963(n+1)))`
-/

namespace A198332.P15319577081924148700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A196057 (n + 1) + A196050 (A003963 (n + 1)).toNat)

end

end A198332.P15319577081924148700

/-! ## A198332.P10017503770006809595

`A224458(n+1)/2^A316441(A020639(n+1))`
-/

namespace A198332.P10017503770006809595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224458 (n + 1) : ℚ) / (2 : ℚ) ^ (A316441 (A020639 (n + 1)).toNat : ℤ)

end

end A198332.P10017503770006809595

/-! ## A198332.P15593763450851274919

`A224458(n+1)+A224458(n+1)%A186707(n)`
-/

namespace A198332.P15593763450851274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (n + 1) + Int.tmod (A224458 (n + 1)) (A186707 n)

end

end A198332.P15593763450851274919

/-! ## A198332.P14218904921916520686

`A224458(n+1)+A224458((n+1)%A000040(n+1))`
-/

namespace A198332.P14218904921916520686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (n + 1) + A224458 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A198332.P14218904921916520686

/-! ## A198332.P1088435066487219001

`(A224458(n+1)+A224458(n+1))%A298736(n+1)`
-/

namespace A198332.P1088435066487219001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224458 (n + 1) + A224458 (n + 1)) (A298736 (n + 1))

end

end A198332.P1088435066487219001

/-! ## A198332.P9320747827375879517

`A196053(n+1)-A196050((n+1)²)`
-/

namespace A198332.P9320747827375879517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196053 (n + 1) - A196050 ((n + 1) ^ 2)

end

end A198332.P9320747827375879517

/-! ## A198332.P1023229028233388466

`A224458((n+1)²)-A001222(n+1)²`
-/

namespace A198332.P1023229028233388466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 ((n + 1) ^ 2) - A001222 (n + 1) ^ 2

end

end A198332.P1023229028233388466

/-!
# A198333: Irregular triangle read by rows: row n is the pruning partition of the rooted tree with Matula-Goebel number n.

The programs for A198333, there is no canonical definition to state claims against.
-/

/-! ## A198333.P1052267255338178745

`A218800(and(A002808(n+1), A304197(n+3)))`
-/

namespace A198333.P1052267255338178745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218800 (Int.land (A002808 (n + 1)) (A304197 (n + 3))).toNat

end

end A198333.P1052267255338178745

/-! ## A198333.P17828430046969151150

`A212632(A303782(n+1)+char[∑[n]])`
-/

namespace A198333.P17828430046969151150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A303782 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A198333.P17828430046969151150

/-! ## A198333.P12803000111074120612

`A347456(lt[A134867(3*n+1), A160801(n+1)])`
-/

namespace A198333.P12803000111074120612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134867 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198333.P12803000111074120612

/-! ## A198333.P13053391393346209326

`A353849(A277880(n+5)+2)`
-/

namespace A198333.P13053391393346209326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A277880 (n + 5) + 2).toNat

end

end A198333.P13053391393346209326

/-! ## A198333.P10871845621736338084

`A106495(A061503(n+1))+char[1]`
-/

namespace A198333.P10871845621736338084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (A061503 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198333.P10871845621736338084

/-!
# A198335: Triangle read by rows: T(n,k) is 1/2 of the number of walks of length k (1<=k<=n-1) in the path graph on n vertices (n>=2).

The programs for A198335, there is no canonical definition to state claims against.
-/

/-! ## A198335.P6925006315683364218

`A206603(A002260(n+1))+A130128(n+1)`
-/

namespace A198335.P6925006315683364218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206603 (A002260 (n + 1)).toNat + A130128 (n + 1)

end

end A198335.P6925006315683364218

/-! ## A198335.P4155014380864189440

`A258018(A059268(n))+A053218(n+1)`
-/

namespace A198335.P4155014380864189440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258018 (A059268 n).toNat + A053218 (n + 1)

end

end A198335.P4155014380864189440

/-! ## A198335.P3978808004198491522

`A258018(A233543(n))+A053218(n+1)`
-/

namespace A198335.P3978808004198491522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258018 (A233543 n).toNat + A053218 (n + 1)

end

end A198335.P3978808004198491522

/-! ## A198335.P1613101839018783206

`or(A053218(n+1), A267417(A000079(n)))`
-/

namespace A198335.P1613101839018783206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053218 (n + 1)) (A267417 (A000079 n).toNat)

end

end A198335.P1613101839018783206

/-! ## A198335.P10122675532786702020

`or(A053218(n+1), A295659(A097332(n)))`
-/

namespace A198335.P10122675532786702020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053218 (n + 1)) (A295659 (A097332 n).toNat)

end

end A198335.P10122675532786702020

/-!
# A198336: Irregular triangle read by rows: row n is the sequence of Matula-Goebel numbers of the rooted trees obtained from the rooted tree with Matula-Goebel number n by pruning it successively 0,1,2,... times. The operation of pruning consists of the removal of the vertices of degree one, together with their incident vertices.

The programs for A198336, there is no canonical definition to state claims against.
-/

/-! ## A198336.P17770451839864048064

`A193739(eq[A185284(n), A333755(n)])`
-/

namespace A198336.P17770451839864048064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A198336.P17770451839864048064

/-! ## A198336.P1047809427073934153

`A055881(record[A326323(n)])`
-/

namespace A198336.P1047809427073934153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198336.P1047809427073934153

/-! ## A198336.P7852621747871096662

`A230403(record[A326323(n)])+1`
-/

namespace A198336.P7852621747871096662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A198336.P7852621747871096662

/-! ## A198336.P15543131627376491038

`A374630(∩[A333778(n+1), A358378(n+1)])`
-/

namespace A198336.P15543131627376491038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374630 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A198336.P15543131627376491038

/-! ## A198336.P8079019864035259709

`A319864(A115746(n+1))`
-/

namespace A198336.P8079019864035259709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319864 (A115746 (n + 1)).toNat

end

end A198336.P8079019864035259709

/-!
# A198337: Radius of rooted tree having Matula-Goebel number n.

The programs for A198337, there is no canonical definition to state claims against.
-/

/-! ## A198337.P15782473528039880439

`ceil(A196058(n+1)/2)`
-/

namespace A198337.P15782473528039880439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A196058 (n + 1) : ℚ) / 2⌉

end

end A198337.P15782473528039880439

/-! ## A198337.P16562296151520729081

`round(A196058(Δ[n²]-n)/2)`
-/

namespace A198337.P16562296151520729081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A196058 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A198337.P16562296151520729081

/-! ## A198337.P9314421376525359974

`A004526(A196058(n+1)+1)`
-/

namespace A198337.P9314421376525359974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A196058 (n + 1) + 1).toNat

end

end A198337.P9314421376525359974

/-! ## A198337.P822453994281475630

`A123108(A196058(n+1)+1)`
-/

namespace A198337.P822453994281475630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A196058 (n + 1) + 1).toNat

end

end A198337.P822453994281475630

/-! ## A198337.P5835916015670143261

`A264396(A196058(n+1)+1)`
-/

namespace A198337.P5835916015670143261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264396 (A196058 (n + 1) + 1).toNat

end

end A198337.P5835916015670143261

/-! ## A198337.P8619549789670650026

`A211272(2^A196058(n+1))`
-/

namespace A198337.P8619549789670650026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211272 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A196058 (n + 1) : ℤ))).toNat

end

end A198337.P8619549789670650026

/-! ## A198337.P2691179550512608402

`A001222(2^round(A196058(n+1)/2))`
-/

namespace A198337.P2691179550512608402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway ((A196058 (n + 1) : ℚ) / 2) : ℤ))).toNat

end

end A198337.P2691179550512608402

/-! ## A198337.P5728451668383031873

`round(A196058(n+1)/2)%A000267(n)`
-/

namespace A198337.P5728451668383031873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A196058 (n + 1) : ℚ) / 2)) (A000267 n)

end

end A198337.P5728451668383031873

/-! ## A198337.P15255166178857192738

`∑{d}[round(A196058(n+1)/2), A000010(#)]`
-/

namespace A198337.P15255166178857192738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A196058 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A198337.P15255166178857192738

/-!
# A198338: Irregular triangle read by rows: row n is the sequence of Matula numbers of the rooted subtrees of the rooted tree with Matula-Goebel number n. A root subtree of a rooted tree T is a subtree of T containing the root.

The programs for A198338, there is no canonical definition to state claims against.
-/

/-! ## A198338.P2137851778155306906

`A081805(A000230(n))+A055086(A174843(n+1))`
-/

namespace A198338.P2137851778155306906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081805 (A000230 n).toNat + A055086 (A174843 (n + 1)).toNat

end

end A198338.P2137851778155306906

/-! ## A198338.P317374084743821929

`A080116(A000032(n+1))+A055086(A174843(n+1))`
-/

namespace A198338.P317374084743821929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A000032 (n + 1)).toNat + A055086 (A174843 (n + 1)).toNat

end

end A198338.P317374084743821929

/-! ## A198338.P9663330365864670924

`A055086(A174843(n+1))+A000038(A265466(n+1))`
-/

namespace A198338.P9663330365864670924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A174843 (n + 1)).toNat + A000038 (A265466 (n + 1)).toNat

end

end A198338.P9663330365864670924

/-! ## A198338.P13562300534950008186

`A055642(A174843(n+1)²²)`
-/

namespace A198338.P13562300534950008186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A174843 (n + 1) ^ 2) ^ 2).toNat

end

end A198338.P13562300534950008186

/-! ## A198338.P776029762167634076

`A036043(lt[A203647(3*n+4), A349157(2*n+1)])`
-/

namespace A198338.P776029762167634076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349157 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A198338.P776029762167634076

/-!
# A198339: Irregular triangle read by rows: row n is the sequence of Matula numbers of the subtrees of the rooted tree with Matula-Goebel number n.

The programs for A198339, there is no canonical definition to state claims against.
-/

/-! ## A198339.P5540535020246658811

`gcd(A224871(A162348(n+1)), A260421(n+1))`
-/

namespace A198339.P5540535020246658811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A224871 (A162348 (n + 1)).toNat) (A260421 (n + 1))

end

end A198339.P5540535020246658811

/-! ## A198339.P4333041110331162797

`gcd(A000217(A000204(n+1)), A057828(n+2))`
-/

namespace A198339.P4333041110331162797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A000204 (n + 1)).toNat) (A057828 (n + 2))

end

end A198339.P4333041110331162797

/-!
# A198343: Divisors of 196560.

The programs for A198343, there is no canonical definition to state claims against.
-/

/-! ## A198343.P14377106697744021826

`record[A233264(n+1)%A108665(n+1)]`
-/

namespace A198343.P14377106697744021826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233264 (n + 1)) (A108665 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198343.P14377106697744021826

/-! ## A198343.P11913823159461224854

`A233264(comp[54*n²+1-A286719(n)])`
-/

namespace A198343.P11913823159461224854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (54 * n ^ 2 + 1 : ℤ) - A286719 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A198343.P11913823159461224854

/-! ## A198343.P10634428943945826664

`A000720(record[A233265(n+1)%A108665(n+1)])`
-/

namespace A198343.P10634428943945826664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233265 (n + 1)) (A108665 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198343.P10634428943945826664

/-! ## A198343.P12635189780433903728

`A233264(n+1)%A158661(n)`
-/

namespace A198343.P12635189780433903728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233264 (n + 1)) (A158661 n)

end

end A198343.P12635189780433903728

/-! ## A198343.P16384569050888779425

`lcm(A170967(n)!, A233264(n+1))`
-/

namespace A198343.P16384569050888779425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A170967 n).toNat : ℤ) (A233264 (n + 1))

end

end A198343.P16384569050888779425

/-!
# A198375: Smallest n-digit number whose product of digits is n or 0 if no number exists.

The programs for A198375, there is no canonical definition to state claims against.
-/

/-! ## A198375.P886539467575345268

`A105279(n)+A007953(A257275(n+1))`
-/

namespace A198375.P886539467575345268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 n + A007953 (A257275 (n + 1)).toNat

end

end A198375.P886539467575345268

/-! ## A198375.P974586831669059859

`record[gcd(floor(n/9), ∑[10^n])+n]`
-/

namespace A198375.P974586831669059859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 9⌋ ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198375.P974586831669059859

/-! ## A198375.P8166511772790473048

`record[A127805(n)]+n`
-/

namespace A198375.P8166511772790473048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A198375.P8166511772790473048

/-! ## A198375.P1893122522972928259

`A071161(2^n)+n`
-/

namespace A198375.P1893122522972928259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071161 (2 ^ n) + (n : ℤ)

end

end A198375.P1893122522972928259

/-! ## A198375.P12280858081886177146

`A397794(3^n)+n`
-/

namespace A198375.P12280858081886177146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397794 (3 ^ n) + (n : ℤ)

end

end A198375.P12280858081886177146

/-!
# A198376: Largest n-digit number whose product of digits is n or 0 if no such number exists.

The programs for A198376, there is no canonical definition to state claims against.
-/

/-! ## A198376.P4347960599837227606

`Δ[(n*floor(10^n/9))^(1-∑{digits}[n, #]+n)]`
-/

namespace A198376.P4347960599837227606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198376.P4347960599837227606

/-! ## A198376.P1933235552877706820

`Δ[(n*floor(10^n/9))^(1-(∑{digits}[n, #]-n))]`
-/

namespace A198376.P1933235552877706820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198376.P1933235552877706820

/-! ## A198376.P16317709613805530156

`A068325(2^n)`
-/

namespace A198376.P16317709613805530156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068325 (2 ^ n)

end

end A198376.P16317709613805530156

/-! ## A198376.P1457476331836669704

`Δ[(n*floor(10^n/9))^A139337(n)]`
-/

namespace A198376.P1457476331836669704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ) ^ (A139337 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198376.P1457476331836669704

/-! ## A198376.P12289233470815945982

`Δ[(n*floor(10^n/9))^A213217(n)]`
-/

namespace A198376.P12289233470815945982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ⌊(10 ^ n : ℚ) / 9⌋ : ℚ) ^ (A213217 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198376.P12289233470815945982

/-!
# A198379: Triangle T(n,k), read by rows, given by (0,1,-1,0,1,-1,0,1,-1,0,1,-1,...) DELTA (1,0,0,1,0,0,1,0,0,1,0,0,1,...) where DELTA is the operator defined in A084938.

The programs for A198379, there is no canonical definition to state claims against.
-/

/-! ## A198379.P2701106508311202249

`A196389(n)-A335520(A091351(n))`
-/

namespace A198379.P2701106508311202249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n - A335520 (A091351 n).toNat

end

end A198379.P2701106508311202249

/-! ## A198379.P12981467889494258817

`A196389(n)+A121373(A011257(3*(n+1)))`
-/

namespace A198379.P12981467889494258817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n + A121373 (A011257 (3 * (n + 1))).toNat

end

end A198379.P12981467889494258817

/-! ## A198379.P11617998736615978425

`A196389(n)+A196344(A157020(n+2))`
-/

namespace A198379.P11617998736615978425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196389 n + A196344 (A157020 (n + 2)).toNat

end

end A198379.P11617998736615978425

/-! ## A198379.P13109545894887633945

`A330167(A094344(n))`
-/

namespace A198379.P13109545894887633945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A094344 n).toNat

end

end A198379.P13109545894887633945

/-! ## A198379.P7116388701686343482

`A065334(A066119(n+1))`
-/

namespace A198379.P7116388701686343482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065334 (A066119 (n + 1)).toNat

end

end A198379.P7116388701686343482

/-!
# A198380: Cycle type of the n-th finite permutation represented by index number of A194602.

The programs for A198380, there is no canonical definition to state claims against.
-/

/-! ## A198380.P2633638103730102679

`A000688(A290096(n))-A000688(A216822(n+1))`
-/

namespace A198380.P2633638103730102679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A290096 n).toNat - A000688 (A216822 (n + 1)).toNat

end

end A198380.P2633638103730102679

/-! ## A198380.P5208287532022113923

`A000688(A290095(n))-1`
-/

namespace A198380.P5208287532022113923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A290095 n).toNat - 1

end

end A198380.P5208287532022113923

/-! ## A198380.P2039464839489642513

`A070198(n)%A000688(A290095(n))`
-/

namespace A198380.P2039464839489642513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A000688 (A290095 n).toNat)

end

end A198380.P2039464839489642513

/-! ## A198380.P16754727999630665559

`∑{digits}[A000688(A290095(n)), A002113(#)]`
-/

namespace A198380.P16754727999630665559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A290095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002113 x).sum

end

end A198380.P16754727999630665559

/-! ## A198380.P7914137868537832553

`∑{digits}[A000688(A290095(n)), A048321(#)]`
-/

namespace A198380.P7914137868537832553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A290095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048321 x).sum

end

end A198380.P7914137868537832553

/-! ## A198380.P18365254770160207846

`A057428(n+1)+A000688(A290095(n))`
-/

namespace A198380.P18365254770160207846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000688 (A290095 n).toNat

end

end A198380.P18365254770160207846

/-! ## A198380.P11324232487846290268

`A072828(n+1)%A000688(A290095(n))`
-/

namespace A198380.P11324232487846290268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A000688 (A290095 n).toNat)

end

end A198380.P11324232487846290268

/-! ## A198380.P594335746791967768

`A166931(n+1)%A000688(A290095(n))`
-/

namespace A198380.P594335746791967768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A000688 (A290095 n).toNat)

end

end A198380.P594335746791967768

/-! ## A198380.P13398620954387058322

`A033999(2*n+1)+A000688(A290095(n))`
-/

namespace A198380.P13398620954387058322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000688 (A290095 n).toNat

end

end A198380.P13398620954387058322

/-! ## A198380.P10475264422592020754

`A001478(n+1)+A000688(A290095(n))+n`
-/

namespace A198380.P10475264422592020754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A000688 (A290095 n).toNat + (n : ℤ))

end

end A198380.P10475264422592020754

/-! ## A198380.P1305518038993933897

`(A005408(n)+A000688(A290095(n)))%(n+1)`
-/

namespace A198380.P1305518038993933897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n + A000688 (A290095 n).toNat) (n + 1 : ℤ)

end

end A198380.P1305518038993933897

/-!
# A198381: Total number of parts greater than 1 in all partitions of n minus the number of partitions of n into parts each less than n.

The programs for A198381, there is no canonical definition to state claims against.
-/

/-! ## A198381.P3403933387363468791

`A096541(n)-A000065(n)`
-/

namespace A198381.P3403933387363468791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n - A000065 n

end

end A198381.P3403933387363468791

/-! ## A198381.P7400342888267730650

`1+A096541(n)-A000041(n)`
-/

namespace A198381.P7400342888267730650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A096541 n - A000041 n

end

end A198381.P7400342888267730650

/-! ## A198381.P715470629330432723

`1+A006128(n)-A000070(n)`
-/

namespace A198381.P715470629330432723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006128 n - A000070 n

end

end A198381.P715470629330432723

/-! ## A198381.P4537484339050991099

`∑[A182699(n)]`
-/

namespace A198381.P4537484339050991099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198381.P4537484339050991099

/-! ## A198381.P8647342650555353754

`A096541(n)+1-∑[A002865(n)]`
-/

namespace A198381.P8647342650555353754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198381.P8647342650555353754

/-! ## A198381.P13145365184597505046

`A006128(n)-(A058682(n)+n)`
-/

namespace A198381.P13145365184597505046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A058682 n + (n : ℤ))

end

end A198381.P13145365184597505046

/-! ## A198381.P10380593013440969415

`A006128(n)+1-∑[A000041(n)]`
-/

namespace A198381.P10380593013440969415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198381.P10380593013440969415

/-! ## A198381.P12483467361870593350

`A093694(n)-(A000070(n)+A000065(n))`
-/

namespace A198381.P12483467361870593350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n - (A000070 n + A000065 n)

end

end A198381.P12483467361870593350

/-! ## A198381.P17516503033523374896

`A000041(n+1)+A006128(n)-A026905(n+1)`
-/

namespace A198381.P17516503033523374896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A006128 n - A026905 (n + 1))

end

end A198381.P17516503033523374896

/-!
# A198382: Numbers n such that 90n + 37 is prime.

The programs for A198382, the canonical program `A198382.P15472479039550738745` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198382 has offset 1).

The definition of A198382 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142331, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A198382.P15472479039550738745

`(A142331(n+1)-37)/90`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198382

/-- `(A142331(n+1)-37)/90` -/
def P15472479039550738745.Spec : Prop :=
  ∀ n, P15472479039550738745.a n = (A198382 (n + 1) : ℚ)

end A198382

/-! ## A198382.P13305454368591483309

`floor(A142331(n+1)/90)`
-/

namespace A198382.P13305454368591483309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142331 (n + 1) : ℚ) / 90⌋

end

end A198382.P13305454368591483309

namespace A198382

/-- `floor(A142331(n+1)/90)` -/
def P13305454368591483309.Spec : Prop :=
  ∀ n, P13305454368591483309.a n = A198382 (n + 1)

end A198382

/-! ## A198382.P12989661573027629772

`round(A142331(n+1)/90*A057427(n))`
-/

namespace A198382.P12989661573027629772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142331 (n + 1) : ℚ) / 90 * (A057427 n : ℚ))

end

end A198382.P12989661573027629772

namespace A198382

/-- `round(A142331(n+1)/90*A057427(n))` -/
def P12989661573027629772.Spec : Prop :=
  ∀ n, P12989661573027629772.a n = A198382 (n + 1)

end A198382

/-! ## A198382.P12002236579596068393

`eq[7, A096915(A017197(n))]`
-/

namespace A198382.P12002236579596068393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096915 (A017197 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P12002236579596068393

namespace A198382

/-- `eq[7, A096915(A017197(n))]` -/
def P12002236579596068393.Spec : Prop :=
  ∀ n, (P12002236579596068393.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P11154309485365517060

`eq[1, A075743(A082369(n+1)-1)]`
-/

namespace A198382.P11154309485365517060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A082369 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P11154309485365517060

namespace A198382

/-- `eq[1, A075743(A082369(n+1)-1)]` -/
def P11154309485365517060.Spec : Prop :=
  ∀ n, (P11154309485365517060.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P2290274189963614555

`eq[2, A000005(A053743(n)-A017365(n))]`
-/

namespace A198382.P2290274189963614555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053743 n - A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P2290274189963614555

namespace A198382

/-- `eq[2, A000005(A053743(n)-A017365(n))]` -/
def P2290274189963614555.Spec : Prop :=
  ∀ n, (P2290274189963614555.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P5525902405381149877

`lt[A144615(n), A020639(3*6*A016873(n)+1)]`
-/

namespace A198382.P5525902405381149877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (6 * A016873 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A198382.P5525902405381149877

namespace A198382

/-- `lt[A144615(n), A020639(3*6*A016873(n)+1)]` -/
def P5525902405381149877.Spec : Prop :=
  ∀ n, (P5525902405381149877.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P7503544475753678956

`eq[3, A051686(A139606(n))]`
-/

namespace A198382.P7503544475753678956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (A139606 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P7503544475753678956

namespace A198382

/-- `eq[3, A051686(A139606(n))]` -/
def P7503544475753678956.Spec : Prop :=
  ∀ n, (P7503544475753678956.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P7578530266748458681

`eq[4, A000005(A257645(A017569(n)))]`
-/

namespace A198382.P7578530266748458681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A257645 (A017569 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P7578530266748458681

namespace A198382

/-- `eq[4, A000005(A257645(A017569(n)))]` -/
def P7578530266748458681.Spec : Prop :=
  ∀ n, (P7578530266748458681.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P7728734422540277408

`eq[2, A116933(A082369(n+1)-2)]`
-/

namespace A198382.P7728734422540277408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (A082369 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P7728734422540277408

namespace A198382

/-- `eq[2, A116933(A082369(n+1)-2)]` -/
def P7728734422540277408.Spec : Prop :=
  ∀ n, (P7728734422540277408.a n : ℤ) = A198382 (n + 1)

end A198382

/-! ## A198382.P594216135082412587

`eq[2, A000005(A007310(A082369(n+1)))]`
-/

namespace A198382.P594216135082412587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007310 (A082369 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198382.P594216135082412587

namespace A198382

/-- `eq[2, A000005(A007310(A082369(n+1)))]` -/
def P594216135082412587.Spec : Prop :=
  ∀ n, (P594216135082412587.a n : ℤ) = A198382 (n + 1)

end A198382

/-!
# A198383: a(n) = Sum_{k=1..n} 2^(n mod k).

The programs for A198383, there is no canonical definition to state claims against.
-/

/-! ## A198383.P3801605911476700756

`A329162(n+1)+1+n`
-/

namespace A198383.P3801605911476700756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329162 (n + 1) + 1 + (n : ℤ)

end

end A198383.P3801605911476700756

/-! ## A198383.P16196789249681787410

`A318952(2^n)+1+n`
-/

namespace A198383.P16196789249681787410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318952 (2 ^ n) + 1 + (n : ℤ)

end

end A198383.P16196789249681787410

/-! ## A198383.P12950492950855965903

`A318952(A000079(n))+n+1`
-/

namespace A198383.P12950492950855965903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318952 (A000079 n).toNat + (n + 1 : ℤ)

end

end A198383.P12950492950855965903

/-! ## A198383.P6882800898721970473

`A329162(A077168(n))+A077168(n)`
-/

namespace A198383.P6882800898721970473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329162 (A077168 n).toNat + A077168 n

end

end A198383.P6882800898721970473

/-! ## A198383.P8198120029360204401

`A144569(A338086(n))+A058187(n)`
-/

namespace A198383.P8198120029360204401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144569 (A338086 n).toNat + A058187 n

end

end A198383.P8198120029360204401

/-!
# A198384: First of a triple of squares in arithmetic progression.

The programs for A198384, there is no canonical definition to state claims against.
-/

/-! ## A198384.P6649811674968854574

`A198388(n+1)²`
-/

namespace A198384.P6649811674968854574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198388 (n + 1) ^ 2

end

end A198384.P6649811674968854574

/-! ## A198384.P8260435444025459703

`A198385(n+1)-A198387(n+1)`
-/

namespace A198384.P8260435444025459703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (n + 1) - A198387 (n + 1)

end

end A198384.P8260435444025459703

/-! ## A198384.P6012259781740516159

`A198388(n+1)^(2%A103517(n))`
-/

namespace A198384.P6012259781740516159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198388 (n + 1) : ℚ) ^ (Int.tmod 2 (A103517 n) : ℤ)

end

end A198384.P6012259781740516159

/-! ## A198384.P1921699551389580402

`A198389(n+1)²-A198387(n+1)`
-/

namespace A198384.P1921699551389580402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (n + 1) ^ 2 - A198387 (n + 1)

end

end A198384.P1921699551389580402

/-! ## A198384.P13690945714008551043

`2*A198385(n+1)-A198386(n+1)`
-/

namespace A198384.P13690945714008551043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198385 (n + 1) - A198386 (n + 1)

end

end A198384.P13690945714008551043

/-! ## A198384.P3992379940708383805

`A198386(n+1)-2*A198387(n+1)`
-/

namespace A198384.P3992379940708383805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198386 (n + 1) - 2 * A198387 (n + 1)

end

end A198384.P3992379940708383805

/-! ## A198384.P6833472250788797928

`2*A198385(n+1)-A198390(n+1)²`
-/

namespace A198384.P6833472250788797928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198385 (n + 1) - A198390 (n + 1) ^ 2

end

end A198384.P6833472250788797928

/-! ## A198384.P18430006102677536190

`2*A198389(n+1)²-A198386(n+1)`
-/

namespace A198384.P18430006102677536190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198389 (n + 1) ^ 2 - A198386 (n + 1)

end

end A198384.P18430006102677536190

/-! ## A198384.P11969963240127639803

`A198390(n+1)²-2*A198387(n+1)`
-/

namespace A198384.P11969963240127639803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1) ^ 2 - 2 * A198387 (n + 1)

end

end A198384.P11969963240127639803

/-! ## A198384.P5226818783127193809

`A198388(A000027(n+1))*A198388(n+1)`
-/

namespace A198384.P5226818783127193809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198388 (A000027 (n + 1)).toNat * A198388 (n + 1)

end

end A198384.P5226818783127193809

/-!
# A198385: Second of a triple of squares in arithmetic progression.

The programs for A198385, there is no canonical definition to state claims against.
-/

/-! ## A198385.P14380560764896324915

`A198389(n+1)²`
-/

namespace A198385.P14380560764896324915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (n + 1) ^ 2

end

end A198385.P14380560764896324915

/-! ## A198385.P2877052901661670062

`A198386(n+1)-A198387(n+1)`
-/

namespace A198385.P2877052901661670062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198386 (n + 1) - A198387 (n + 1)

end

end A198385.P2877052901661670062

/-! ## A198385.P7771675853087408413

`A198387(n+1)+A198384(n+1)`
-/

namespace A198385.P7771675853087408413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198387 (n + 1) + A198384 (n + 1)

end

end A198385.P7771675853087408413

/-! ## A198385.P11214459520744334651

`A198387(n+1)+A198388(n+1)²`
-/

namespace A198385.P11214459520744334651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198387 (n + 1) + A198388 (n + 1) ^ 2

end

end A198385.P11214459520744334651

/-! ## A198385.P6294479848144484217

`A198390(n+1)²-A198387(n+1)`
-/

namespace A198385.P6294479848144484217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1) ^ 2 - A198387 (n + 1)

end

end A198385.P6294479848144484217

/-! ## A198385.P17474564572594811009

`(A198386(n+1)+A198384(n+1))/2`
-/

namespace A198385.P17474564572594811009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198386 (n + 1) + A198384 (n + 1) : ℚ) / 2

end

end A198385.P17474564572594811009

/-! ## A198385.P11058742590366434962

`A198389(A000027(n+1))*A198389(n+1)`
-/

namespace A198385.P11058742590366434962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (A000027 (n + 1)).toNat * A198389 (n + 1)

end

end A198385.P11058742590366434962

/-! ## A198385.P15901313619205548435

`A198389(n+1)^A000002(A156242(n+1))`
-/

namespace A198385.P15901313619205548435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198389 (n + 1) : ℚ) ^ (A000002 (A156242 (n + 1)).toNat : ℤ)

end

end A198385.P15901313619205548435

/-!
# A198386: Third of a triple of squares in arithmetic progression.

The programs for A198386, there is no canonical definition to state claims against.
-/

/-! ## A198386.P4108230228873332558

`A198390(n+1)²`
-/

namespace A198386.P4108230228873332558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1) ^ 2

end

end A198386.P4108230228873332558

/-! ## A198386.P868393899458325843

`A198390(A000027(n+1))^2`
-/

namespace A198386.P868393899458325843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (A000027 (n + 1)).toNat ^ 2

end

end A198386.P868393899458325843

/-! ## A198386.P7801574175349849002

`A198387(n+1)+A198385(n+1)`
-/

namespace A198386.P7801574175349849002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198387 (n + 1) + A198385 (n + 1)

end

end A198386.P7801574175349849002

/-! ## A198386.P11608273226720274613

`A198387(n+1)+A198389(n+1)²`
-/

namespace A198386.P11608273226720274613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198387 (n + 1) + A198389 (n + 1) ^ 2

end

end A198386.P11608273226720274613

/-! ## A198386.P2100653455858982322

`A198384(n+1)+2*A198387(n+1)`
-/

namespace A198386.P2100653455858982322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198384 (n + 1) + 2 * A198387 (n + 1)

end

end A198386.P2100653455858982322

/-! ## A198386.P8950546550443134183

`2*A198385(n+1)-A198384(n+1)`
-/

namespace A198386.P8950546550443134183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198385 (n + 1) - A198384 (n + 1)

end

end A198386.P8950546550443134183

/-! ## A198386.P7555283543248623380

`A198388(n+1)²+2*A198387(n+1)`
-/

namespace A198386.P7555283543248623380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198388 (n + 1) ^ 2 + 2 * A198387 (n + 1)

end

end A198386.P7555283543248623380

/-! ## A198386.P6133760558038863407

`2*A198385(n+1)-A198388(n+1)²`
-/

namespace A198386.P6133760558038863407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198385 (n + 1) - A198388 (n + 1) ^ 2

end

end A198386.P6133760558038863407

/-! ## A198386.P9625300038484179226

`2*A198389(n+1)²-A198384(n+1)`
-/

namespace A198386.P9625300038484179226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198389 (n + 1) ^ 2 - A198384 (n + 1)

end

end A198386.P9625300038484179226

/-! ## A198386.P15045270942105813228

`A198390(A000027(n+1))*A198390(n+1)`
-/

namespace A198386.P15045270942105813228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (A000027 (n + 1)).toNat * A198390 (n + 1)

end

end A198386.P15045270942105813228

/-!
# A198387: Common differences in triples of squares in arithmetic progression.

The programs for A198387, there is no canonical definition to state claims against.
-/

/-! ## A198387.P4359608637326538959

`A198385(n+1)-A198384(n+1)`
-/

namespace A198387.P4359608637326538959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (n + 1) - A198384 (n + 1)

end

end A198387.P4359608637326538959

/-! ## A198387.P12633753988195393877

`A198386(n+1)-A198385(n+1)`
-/

namespace A198387.P12633753988195393877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198386 (n + 1) - A198385 (n + 1)

end

end A198387.P12633753988195393877

/-! ## A198387.P1862994553916869182

`A198385(n+1)-A198388(n+1)²`
-/

namespace A198387.P1862994553916869182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198385 (n + 1) - A198388 (n + 1) ^ 2

end

end A198387.P1862994553916869182

/-! ## A198387.P17903014293075693660

`A198386(n+1)-A198389(n+1)²`
-/

namespace A198387.P17903014293075693660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198386 (n + 1) - A198389 (n + 1) ^ 2

end

end A198387.P17903014293075693660

/-! ## A198387.P2758114512277991554

`A198389(n+1)²-A198384(n+1)`
-/

namespace A198387.P2758114512277991554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198389 (n + 1) ^ 2 - A198384 (n + 1)

end

end A198387.P2758114512277991554

/-! ## A198387.P3958031914649318262

`A198390(n+1)²-A198385(n+1)`
-/

namespace A198387.P3958031914649318262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1) ^ 2 - A198385 (n + 1)

end

end A198387.P3958031914649318262

/-! ## A198387.P9304695098145745168

`(A198386(n+1)-A198384(n+1))/2`
-/

namespace A198387.P9304695098145745168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198386 (n + 1) - A198384 (n + 1) : ℚ) / 2

end

end A198387.P9304695098145745168

/-! ## A198387.P8621509511174239038

`A198386(A000027(n+1))%A198385(n+1)`
-/

namespace A198387.P8621509511174239038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198386 (A000027 (n + 1)).toNat) (A198385 (n + 1))

end

end A198387.P8621509511174239038

/-!
# A198388: Square root of first term of a triple of squares in arithmetic progression.

The programs for A198388, there is no canonical definition to state claims against.
-/

/-! ## A198388.P13119323160919430757

`sqrt(A198384(n+1))`
-/

namespace A198388.P13119323160919430757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198384 (n + 1) : ℝ)

end

end A198388.P13119323160919430757

/-! ## A198388.P8756443807831598564

`sqrt(A198385(n+1)-A198387(n+1))`
-/

namespace A198388.P8756443807831598564
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198385 (n + 1) - A198387 (n + 1) : ℝ)

end

end A198388.P8756443807831598564

/-! ## A198388.P7514945685482449437

`sqrt(A198389(n+1)²-A198387(n+1))`
-/

namespace A198388.P7514945685482449437
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198389 (n + 1) ^ 2 - A198387 (n + 1) : ℝ)

end

end A198388.P7514945685482449437

/-! ## A198388.P12511523777864939476

`sqrt(2*A198385(n+1)-A198386(n+1))`
-/

namespace A198388.P12511523777864939476
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * A198385 (n + 1) - A198386 (n + 1) : ℝ)

end

end A198388.P12511523777864939476

/-! ## A198388.P12618492346403840186

`sqrt(A198386(n+1)-2*A198387(n+1))`
-/

namespace A198388.P12618492346403840186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198386 (n + 1) - 2 * A198387 (n + 1) : ℝ)

end

end A198388.P12618492346403840186

/-! ## A198388.P4518656424971468027

`A198384(n+1)^(A287091(A001222(n+1))/2)`
-/

namespace A198388.P4518656424971468027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198384 (n + 1) : ℝ) ^ ((A287091 (A001222 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A198388.P4518656424971468027

/-!
# A198389: Square root of second term of a triple of squares in arithmetic progression.

The programs for A198389, there is no canonical definition to state claims against.
-/

/-! ## A198389.P8256221044197283101

`sqrt(A198385(n+1))`
-/

namespace A198389.P8256221044197283101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198385 (n + 1) : ℝ)

end

end A198389.P8256221044197283101

/-! ## A198389.P12166086411189064459

`A000027(root(A198385(n+1), 2))`
-/

namespace A198389.P12166086411189064459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A198385 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A198389.P12166086411189064459

/-! ## A198389.P6588896016242617420

`sqrt(A198387(n+1)+A198384(n+1))`
-/

namespace A198389.P6588896016242617420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198387 (n + 1) + A198384 (n + 1) : ℝ)

end

end A198389.P6588896016242617420

/-! ## A198389.P10638347096080437497

`sqrt(A198386(n+1)-A198387(n+1))`
-/

namespace A198389.P10638347096080437497
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198386 (n + 1) - A198387 (n + 1) : ℝ)

end

end A198389.P10638347096080437497

/-! ## A198389.P258406022608734975

`root(A198385(n+1), A020639(2*(n+2)))`
-/

namespace A198389.P258406022608734975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198385 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 2)) : ℝ))

end

end A198389.P258406022608734975

/-! ## A198389.P9310241360838626111

`A198385(n+1)^(1/A020639(2*(n+1)))`
-/

namespace A198389.P9310241360838626111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198385 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℚ) : ℝ)

end

end A198389.P9310241360838626111

/-! ## A198389.P6412191206366631164

`A262689(A198385(n+1)+1)`
-/

namespace A198389.P6412191206366631164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A198385 (n + 1) + 1).toNat

end

end A198389.P6412191206366631164

/-! ## A198389.P10581589460574877964

`lcm(A056926(A198385(n+1)), A065357(n))`
-/

namespace A198389.P10581589460574877964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056926 (A198385 (n + 1)).toNat) (A065357 n)

end

end A198389.P10581589460574877964

/-! ## A198389.P4109698071496409017

`A000010(A014963(2*(n+1)))*A056926(A198385(n+1))`
-/

namespace A198389.P4109698071496409017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (2 * (n + 1))).toNat * A056926 (A198385 (n + 1)).toNat

end

end A198389.P4109698071496409017

/-!
# A198390: Square root of third term of a triple of squares in arithmetic progression.

The programs for A198390, there is no canonical definition to state claims against.
-/

/-! ## A198390.P325244721450585414

`sqrt(A198386(n+1))`
-/

namespace A198390.P325244721450585414
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198386 (n + 1) : ℝ)

end

end A198390.P325244721450585414

/-! ## A198390.P9113814974614817645

`sqrt(A198387(n+1)+A198385(n+1))`
-/

namespace A198390.P9113814974614817645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198387 (n + 1) + A198385 (n + 1) : ℝ)

end

end A198390.P9113814974614817645

/-! ## A198390.P5808377622574550253

`root(A198386(n+1), gcd(2, A198387(n+1)))`
-/

namespace A198390.P5808377622574550253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A198386 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A198387 (n + 1)) : ℝ))

end

end A198390.P5808377622574550253

/-! ## A198390.P7949753545493164514

`sqrt(A198387(n+1)+A198389(n+1)²)`
-/

namespace A198390.P7949753545493164514
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198387 (n + 1) + A198389 (n + 1) ^ 2 : ℝ)

end

end A198390.P7949753545493164514

/-! ## A198390.P18038913531070395002

`sqrt(A198384(n+1)+2*A198387(n+1))`
-/

namespace A198390.P18038913531070395002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A198384 (n + 1) + 2 * A198387 (n + 1) : ℝ)

end

end A198390.P18038913531070395002

/-! ## A198390.P15009057984719477807

`root(A198386(n+1), 2)%A198386(n+2)`
-/

namespace A198390.P15009057984719477807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A198386 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A198386 (n + 2))

end

end A198390.P15009057984719477807

/-! ## A198390.P7817183292029859938

`A116939(round(A198386(n+1)/2))`
-/

namespace A198390.P7817183292029859938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (SequenceMachineLib.roundAway ((A198386 (n + 1) : ℚ) / 2)).toNat

end

end A198390.P7817183292029859938

/-!
# A198392: a(n) = (6*n*(3*n+7)+(2*n+13)*(-1)^n+3)/16 + 1.

The programs for A198392, the canonical program `A198392.P7399170648473742969` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198392 has offset 0).

The definition of A198392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198392.P7399170648473742969

`(6*n*(3*n+7)+(2*n+13)*(-1)^n+3)/16+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198392

/-- `(6*n*(3*n+7)+(2*n+13)*(-1)^n+3)/16+1` -/
def P7399170648473742969.Spec : Prop :=
  ∀ n, P7399170648473742969.a n = (A198392 n : ℚ)

end A198392

/-! ## A198392.P708323918886677614

`floor((n/2+n+1)²-a(n-1))` with `a(0)=2`
-/

namespace A198392.P708323918886677614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((n : ℚ) / 2 + (n + 1 : ℚ)) ^ 2 - (a (n - 1) : ℚ)⌋

end

end A198392.P708323918886677614

namespace A198392

/-- `floor((n/2+n+1)²-a(n-1))` -/
def P708323918886677614.Spec : Prop :=
  ∀ n, P708323918886677614.a n = A198392 n

end A198392

/-! ## A198392.P13626144636102803186

`abs(a(n-1)-A102214(n))` with `a(0)=2`
-/

namespace A198392.P13626144636102803186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |a (n - 1) - A102214 n|

end

end A198392.P13626144636102803186

namespace A198392

/-- `abs(a(n-1)-A102214(n))` -/
def P13626144636102803186.Spec : Prop :=
  ∀ n, P13626144636102803186.a n = A198392 n

end A198392

/-! ## A198392.P16141102239878469874

`floor(A125577(n)+∑[(n/2)^∑[(-1)^n]+n+1])`
-/

namespace A198392.P16141102239878469874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) + (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A125577 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A198392.P16141102239878469874

namespace A198392

/-- `floor(A125577(n)+∑[(n/2)^∑[(-1)^n]+n+1])` -/
def P16141102239878469874.Spec : Prop :=
  ∀ n, P16141102239878469874.a n = A198392 n

end A198392

/-! ## A198392.P9550339769360195523

`∑[A063210(n+1)+A027656(n)]`
-/

namespace A198392.P9550339769360195523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063210 (n + 1) + A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198392.P9550339769360195523

namespace A198392

/-- `∑[A063210(n+1)+A027656(n)]` -/
def P9550339769360195523.Spec : Prop :=
  ∀ n, P9550339769360195523.a n = A198392 n

end A198392

/-! ## A198392.P2435492093264763229

`∑[A187012(n+2)+A004442(n)]`
-/

namespace A198392.P2435492093264763229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187012 (n + 2) + A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198392.P2435492093264763229

namespace A198392

/-- `∑[A187012(n+2)+A004442(n)]` -/
def P2435492093264763229.Spec : Prop :=
  ∀ n, P2435492093264763229.a n = A198392 n

end A198392

/-! ## A198392.P15993304125457339602

`A000027(A057979(n)+A026381(n+2))`
-/

namespace A198392.P15993304125457339602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A057979 n + A026381 (n + 2)).toNat

end

end A198392.P15993304125457339602

namespace A198392

/-- `A000027(A057979(n)+A026381(n+2))` -/
def P15993304125457339602.Spec : Prop :=
  ∀ n, P15993304125457339602.a n = A198392 n

end A198392

/-!
# A198393: Rank of hyperelliptic curve y^2 = x^5 - n.

The programs for A198393, there is no canonical definition to state claims against.
-/

/-! ## A198393.P7785975658038556724

`1-A089496(A278822(n))`
-/

namespace A198393.P7785975658038556724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089496 (A278822 n).toNat

end

end A198393.P7785975658038556724

/-! ## A198393.P15387177864615571776

`A277735(A355734(3*(n+1))+2)`
-/

namespace A198393.P15387177864615571776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277735 (A355734 (3 * (n + 1)) + 2).toNat

end

end A198393.P15387177864615571776

/-! ## A198393.P5655261460347516382

`A339665(n+1)%p?[A339632(3*n+1)]`
-/

namespace A198393.P5655261460347516382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339632 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339665 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A198393.P5655261460347516382

/-! ## A198393.P2129074716728128992

`A011782(n)%A278518(A278822(n))`
-/

namespace A198393.P2129074716728128992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 n) (A278518 (A278822 n).toNat)

end

end A198393.P2129074716728128992

/-! ## A198393.P677210255127764475

`A333451(A353861(n+1)+A207050(n+1))`
-/

namespace A198393.P677210255127764475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333451 (A353861 (n + 1) + A207050 (n + 1)).toNat

end

end A198393.P677210255127764475

/-!
# A198394: Values k for which rank of hyperelliptic curve y^2 = x^5 - k is 0.

The programs for A198394, there is no canonical definition to state claims against.
-/

/-! ## A198394.P2538631085482677939

`eq[0, A198393(n+1)]+1`
-/

namespace A198394.P2538631085482677939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A198394.P2538631085482677939

/-! ## A198394.P4369973335068158439

`eq[0, A198393(A028310(n))]`
-/

namespace A198394.P4369973335068158439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198393 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198394.P4369973335068158439

/-! ## A198394.P9892512381425823376

`A020725(eq[0, A198393(n+1)])`
-/

namespace A198394.P9892512381425823376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198394.P9892512381425823376

/-! ## A198394.P11777441591719931208

`A020725(lt[A198393(n+1), 1])`
-/

namespace A198394.P11777441591719931208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198393 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A198394.P11777441591719931208

/-! ## A198394.P14971713850290453511

`eq[0, A198393(A000007(n)+n)]`
-/

namespace A198394.P14971713850290453511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198393 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A198394.P14971713850290453511

/-!
# A198395: a(n) = ceiling(n*sqrt(17)).

The programs for A198395, the canonical program `A198395.P16897270776685487505` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198395 has offset 0).

The definition of A198395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(17))` (program `A198395.P16897270776685487505`, by `A198395.P16897270776685487505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198395.P16897270776685487505

`ceil(n*sqrt(17))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198395

/-- `ceil(n*sqrt(17))` -/
def P16897270776685487505.Spec : Prop :=
  ∀ n, P16897270776685487505.a n = A198395 n

theorem P16897270776685487505.correct : P16897270776685487505.Spec := by
  intro n
  simp only [A198395]

end A198395

/-! ## A198395.P12295310009722889541

`floor(A057427(n)+sqrt(A244630(n)))`
-/

namespace A198395.P12295310009722889541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.sqrt (A244630 n : ℝ)⌋

end

end A198395.P12295310009722889541

namespace A198395

/-- `floor(A057427(n)+sqrt(A244630(n)))` -/
def P12295310009722889541.Spec : Prop :=
  ∀ n, P12295310009722889541.a n = A198395 n

end A198395

/-! ## A198395.P17647840279525690873

`ceil(sqrt(A244630(n)))%A017533(n)`
-/

namespace A198395.P17647840279525690873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A244630 n : ℝ)⌉ (A017533 n)

end

end A198395.P17647840279525690873

namespace A198395

/-- `ceil(sqrt(A244630(n)))%A017533(n)` -/
def P17647840279525690873.Spec : Prop :=
  ∀ n, P17647840279525690873.a n = A198395 n

end A198395

/-! ## A198395.P3094253722527265346

`ceil(sqrt(A244630(n)))/A106400(n)²`
-/

namespace A198395.P3094253722527265346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A244630 n : ℝ)⌉ : ℚ) / (A106400 n ^ 2 : ℚ)

end

end A198395.P3094253722527265346

namespace A198395

/-- `ceil(sqrt(A244630(n)))/A106400(n)²` -/
def P3094253722527265346.Spec : Prop :=
  ∀ n, P3094253722527265346.a n = (A198395 n : ℚ)

end A198395

/-! ## A198395.P14604962392333402163

`ceil(sqrt(A244630(n)))+A002378(n)%2`
-/

namespace A198395.P14604962392333402163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A244630 n : ℝ)⌉ + Int.tmod (A002378 n) 2

end

end A198395.P14604962392333402163

namespace A198395

/-- `ceil(sqrt(A244630(n)))+A002378(n)%2` -/
def P14604962392333402163.Spec : Prop :=
  ∀ n, P14604962392333402163.a n = A198395 n

end A198395

/-! ## A198395.P7884747767706598334

`A254667(ceil(sqrt(A244630(n))))`
-/

namespace A198395.P7884747767706598334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 ⌈Real.sqrt (A244630 n : ℝ)⌉.toNat

end

end A198395.P7884747767706598334

namespace A198395

/-- `A254667(ceil(sqrt(A244630(n))))` -/
def P7884747767706598334.Spec : Prop :=
  ∀ n, P7884747767706598334.a n = A198395 n

end A198395

/-!
# A198396: a(n) = 6^n - 6*n.

The programs for A198396, the canonical program `A198396.P4608814914304942751` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198396 has offset 0).

The definition of A198396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-6*n` (program `A198396.P4608814914304942751`, by `A198396.P4608814914304942751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198396.P4608814914304942751

`6^n-6*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198396

/-- `6^n-6*n` -/
def P4608814914304942751.Spec : Prop :=
  ∀ n, P4608814914304942751.a n = A198396 n

theorem P4608814914304942751.correct : P4608814914304942751.Spec := by
  intro n
  simp only [A198396]

end A198396

/-! ## A198396.P3382983699948651644

`abs(6*n-A000400(n))`
-/

namespace A198396.P3382983699948651644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) - A000400 n|

end

end A198396.P3382983699948651644

namespace A198396

/-- `abs(6*n-A000400(n))` -/
def P3382983699948651644.Spec : Prop :=
  ∀ n, P3382983699948651644.a n = A198396 n

end A198396

/-! ## A198396.P8089794716115319866

`abs(6^n-A008588(n))`
-/

namespace A198396.P8089794716115319866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 ^ n : ℤ) - A008588 n|

end

end A198396.P8089794716115319866

namespace A198396

/-- `abs(6^n-A008588(n))` -/
def P8089794716115319866.Spec : Prop :=
  ∀ n, P8089794716115319866.a n = A198396 n

end A198396

/-! ## A198396.P14118656457815976157

`abs(A026549(2*n)-6*n)`
-/

namespace A198396.P14118656457815976157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026549 (2 * n) - (6 * n : ℤ)|

end

end A198396.P14118656457815976157

namespace A198396

/-- `abs(A026549(2*n)-6*n)` -/
def P14118656457815976157.Spec : Prop :=
  ∀ n, P14118656457815976157.a n = A198396 n

end A198396

/-! ## A198396.P4749779730817153064

`abs(A056452(2*n)-6*n)`
-/

namespace A198396.P4749779730817153064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056452 (2 * n) - (6 * n : ℤ)|

end

end A198396.P4749779730817153064

namespace A198396

/-- `abs(A056452(2*n)-6*n)` -/
def P4749779730817153064.Spec : Prop :=
  ∀ n, P4749779730817153064.a n = A198396 n

end A198396

/-! ## A198396.P785976248545908526

`abs(A016921(n)-A062394(n))`
-/

namespace A198396.P785976248545908526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016921 n - A062394 n|

end

end A198396.P785976248545908526

namespace A198396

/-- `abs(A016921(n)-A062394(n))` -/
def P785976248545908526.Spec : Prop :=
  ∀ n, P785976248545908526.a n = A198396 n

end A198396

/-! ## A198396.P6688540668220589285

`(6^n-A008588(n))/gcd(5, A000032(n+1))`
-/

namespace A198396.P6688540668220589285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) - A008588 n : ℚ) / (Int.gcd 5 (A000032 (n + 1)) : ℚ)

end

end A198396.P6688540668220589285

namespace A198396

/-- `(6^n-A008588(n))/gcd(5, A000032(n+1))` -/
def P6688540668220589285.Spec : Prop :=
  ∀ n, P6688540668220589285.a n = (A198396 n : ℚ)

end A198396

/-! ## A198396.P15824651628264722349

`(6*n-A000400(n))*A008683(A045326(n+1))`
-/

namespace A198396.P15824651628264722349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - A000400 n) * A008683 (A045326 (n + 1)).toNat

end

end A198396.P15824651628264722349

namespace A198396

/-- `(6*n-A000400(n))*A008683(A045326(n+1))` -/
def P15824651628264722349.Spec : Prop :=
  ∀ n, P15824651628264722349.a n = A198396 n

end A198396

/-! ## A198396.P16321905934359477547

`(A000400(n)-A008588(n))^A000108(C(2, n+2))`
-/

namespace A198396.P16321905934359477547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n - A008588 n : ℚ) ^ (A000108 (Nat.choose 2 (n + 2)) : ℤ)

end

end A198396.P16321905934359477547

namespace A198396

/-- `(A000400(n)-A008588(n))^A000108(C(2, n+2))` -/
def P16321905934359477547.Spec : Prop :=
  ∀ n, P16321905934359477547.a n = (A198396 n : ℚ)

end A198396

/-! ## A198396.P7338794364562448790

`(6*n-A000400(n))*A212435(A014963(∑[n+1]))`
-/

namespace A198396.P7338794364562448790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) - A000400 n) * A212435 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A198396.P7338794364562448790

namespace A198396

/-- `(6*n-A000400(n))*A212435(A014963(∑[n+1]))` -/
def P7338794364562448790.Spec : Prop :=
  ∀ n, P7338794364562448790.a n = A198396 n

end A198396

/-! ## A198396.P13843738847196702789

`(6^n-A008588(n))%A062397(n)`
-/

namespace A198396.P13843738847196702789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((6 ^ n : ℤ) - A008588 n) (A062397 n)

end

end A198396.P13843738847196702789

namespace A198396

/-- `(6^n-A008588(n))%A062397(n)` -/
def P13843738847196702789.Spec : Prop :=
  ∀ n, P13843738847196702789.a n = A198396 n

end A198396

/-!
# A198397: a(n) = 7^n - 7*n.

The programs for A198397, the canonical program `A198397.P5698076784237210252` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198397 has offset 0).

The definition of A198397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-7*n` (program `A198397.P5698076784237210252`, by `A198397.P5698076784237210252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198397.P5698076784237210252

`7^n-7*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198397

/-- `7^n-7*n` -/
def P5698076784237210252.Spec : Prop :=
  ∀ n, P5698076784237210252.a n = A198397 n

theorem P5698076784237210252.correct : P5698076784237210252.Spec := by
  intro n
  simp only [A198397]

end A198397

/-! ## A198397.P16087385554271461167

`abs(7*n-A000420(n))`
-/

namespace A198397.P16087385554271461167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) - A000420 n|

end

end A198397.P16087385554271461167

namespace A198397

/-- `abs(7*n-A000420(n))` -/
def P16087385554271461167.Spec : Prop :=
  ∀ n, P16087385554271461167.a n = A198397 n

end A198397

/-! ## A198397.P3287304206406320972

`abs(A024076(n)-n-4*n-n)`
-/

namespace A198397.P3287304206406320972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024076 n - (n : ℤ) - (4 * n : ℤ) - (n : ℤ)|

end

end A198397.P3287304206406320972

namespace A198397

/-- `abs(A024076(n)-n-4*n-n)` -/
def P3287304206406320972.Spec : Prop :=
  ∀ n, P3287304206406320972.a n = A198397 n

end A198397

/-! ## A198397.P7288654315157943732

`abs(A000420(n)-A008589(n))`
-/

namespace A198397.P7288654315157943732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A008589 n|

end

end A198397.P7288654315157943732

namespace A198397

/-- `abs(A000420(n)-A008589(n))` -/
def P7288654315157943732.Spec : Prop :=
  ∀ n, P7288654315157943732.a n = A198397 n

end A198397

/-! ## A198397.P9771669188624809751

`abs(A008588(n)-A024076(n))`
-/

namespace A198397.P9771669188624809751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008588 n - A024076 n|

end

end A198397.P9771669188624809751

namespace A198397

/-- `abs(A008588(n)-A024076(n))` -/
def P9771669188624809751.Spec : Prop :=
  ∀ n, P9771669188624809751.a n = A198397 n

end A198397

/-! ## A198397.P7800077862330044090

`abs(A008589(n)+A208704(n+1)-A193577(n))`
-/

namespace A198397.P7800077862330044090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008589 n + (A208704 (n + 1) - A193577 n)|

end

end A198397.P7800077862330044090

namespace A198397

/-- `abs(A008589(n)+A208704(n+1)-A193577(n))` -/
def P7800077862330044090.Spec : Prop :=
  ∀ n, P7800077862330044090.a n = A198397 n

end A198397

/-! ## A198397.P10183440373222944077

`(A226199(n)-8*n)%A205989(n)`
-/

namespace A198397.P10183440373222944077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226199 n - (8 * n : ℤ)) (A205989 n)

end

end A198397.P10183440373222944077

namespace A198397

/-- `(A226199(n)-8*n)%A205989(n)` -/
def P10183440373222944077.Spec : Prop :=
  ∀ n, P10183440373222944077.a n = A198397 n

end A198397

/-!
# A198398: a(n) = 8^n - 8n.

The programs for A198398, the canonical program `A198398.P3897262376996993019` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198398 has offset 0).

The definition of A198398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-8*n` (program `A198398.P3897262376996993019`, by `A198398.P3897262376996993019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198398.P3897262376996993019

`8^n-8*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198398

/-- `8^n-8*n` -/
def P3897262376996993019.Spec : Prop :=
  ∀ n, P3897262376996993019.a n = A198398 n

theorem P3897262376996993019.correct : P3897262376996993019.Spec := by
  intro n
  simp only [A198398]

end A198398

/-! ## A198398.P11989970420846979892

`Δ[A023001(n)-(1-2*n)²]`
-/

namespace A198398.P11989970420846979892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - (1 - (2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198398.P11989970420846979892

namespace A198398

/-- `Δ[A023001(n)-(1-2*n)²]` -/
def P11989970420846979892.Spec : Prop :=
  ∀ n, P11989970420846979892.a n = A198398 n

end A198398

/-! ## A198398.P13609931544119906278

`xor(A024088(n), A133655(n))`
-/

namespace A198398.P13609931544119906278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024088 n) (A133655 n)

end

end A198398.P13609931544119906278

namespace A198398

/-- `xor(A024088(n), A133655(n))` -/
def P13609931544119906278.Spec : Prop :=
  ∀ n, P13609931544119906278.a n = A198398 n

end A198398

/-! ## A198398.P15544239930282463057

`xor(A000225(3*n), A133655(n))`
-/

namespace A198398.P15544239930282463057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (3 * n)) (A133655 n)

end

end A198398.P15544239930282463057

namespace A198398

/-- `xor(A000225(3*n), A133655(n))` -/
def P15544239930282463057.Spec : Prop :=
  ∀ n, P15544239930282463057.a n = A198398 n

end A198398

/-! ## A198398.P291582567007523428

`abs(A130102(3*n)-A005843(n))`
-/

namespace A198398.P291582567007523428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130102 (3 * n) - A005843 n|

end

end A198398.P291582567007523428

namespace A198398

/-- `abs(A130102(3*n)-A005843(n))` -/
def P291582567007523428.Spec : Prop :=
  ∀ n, P291582567007523428.a n = A198398 n

end A198398

/-! ## A198398.P9771860507302801690

`xor(A024088(n), A131098(2*n+1))`
-/

namespace A198398.P9771860507302801690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024088 n) (A131098 (2 * n + 1))

end

end A198398.P9771860507302801690

namespace A198398

/-- `xor(A024088(n), A131098(2*n+1))` -/
def P9771860507302801690.Spec : Prop :=
  ∀ n, P9771860507302801690.a n = A198398 n

end A198398

/-! ## A198398.P15713919125904220904

`xor(A024088(n), A042968(A008458(n)))`
-/

namespace A198398.P15713919125904220904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024088 n) (A042968 (A008458 n).toNat)

end

end A198398.P15713919125904220904

namespace A198398

/-- `xor(A024088(n), A042968(A008458(n)))` -/
def P15713919125904220904.Spec : Prop :=
  ∀ n, P15713919125904220904.a n = A198398 n

end A198398

/-! ## A198398.P4855955132765732070

`abs(A004277(A004277(2*n))-A094014(2*n))`
-/

namespace A198398.P4855955132765732070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (A004277 (2 * n)).toNat - A094014 (2 * n)|

end

end A198398.P4855955132765732070

namespace A198398

/-- `abs(A004277(A004277(2*n))-A094014(2*n))` -/
def P4855955132765732070.Spec : Prop :=
  ∀ n, P4855955132765732070.a n = A198398 n

end A198398

/-!
# A198399: a(n) = 9^n - 9*n.

The programs for A198399, the canonical program `A198399.P7517811288422330105` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198399 has offset 0).

The definition of A198399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-9*n` (program `A198399.P7517811288422330105`, by `A198399.P7517811288422330105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198399.P7517811288422330105

`9^n-9*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A198399

/-- `9^n-9*n` -/
def P7517811288422330105.Spec : Prop :=
  ∀ n, P7517811288422330105.a n = A198399 n

theorem P7517811288422330105.correct : P7517811288422330105.Spec := by
  intro n
  simp only [A198399]

end A198399

/-! ## A198399.P3406080755082851167

`abs(9*n-A001019(n))`
-/

namespace A198399.P3406080755082851167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A001019 n|

end

end A198399.P3406080755082851167

namespace A198399

/-- `abs(9*n-A001019(n))` -/
def P3406080755082851167.Spec : Prop :=
  ∀ n, P3406080755082851167.a n = A198399 n

end A198399

/-! ## A198399.P14303867000500805359

`abs(9^n-A008591(n))`
-/

namespace A198399.P14303867000500805359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - A008591 n|

end

end A198399.P14303867000500805359

namespace A198399

/-- `abs(9^n-A008591(n))` -/
def P14303867000500805359.Spec : Prop :=
  ∀ n, P14303867000500805359.a n = A198399 n

end A198399

/-! ## A198399.P17655270393250971631

`abs(9^n-(A017281(n)-(n+1)))`
-/

namespace A198399.P17655270393250971631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 ^ n : ℤ) - (A017281 n - (n + 1 : ℤ))|

end

end A198399.P17655270393250971631

namespace A198399

/-- `abs(9^n-(A017281(n)-(n+1)))` -/
def P17655270393250971631.Spec : Prop :=
  ∀ n, P17655270393250971631.a n = A198399 n

end A198399

/-! ## A198399.P11447370242337459508

`-(A221911(n)-A199559(n)+1)`
-/

namespace A198399.P11447370242337459508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A221911 n - A199559 n + 1)

end

end A198399.P11447370242337459508

namespace A198399

/-- `-(A221911(n)-A199559(n)+1)` -/
def P11447370242337459508.Spec : Prop :=
  ∀ n, P11447370242337459508.a n = A198399 n

end A198399

/-! ## A198399.P5738322280834674702

`A053540(n+1)%(A001019(n)+9)`
-/

namespace A198399.P5738322280834674702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053540 (n + 1)) (A001019 n + 9)

end

end A198399.P5738322280834674702

namespace A198399

/-- `A053540(n+1)%(A001019(n)+9)` -/
def P5738322280834674702.Spec : Prop :=
  ∀ n, P5738322280834674702.a n = A198399 n

end A198399

