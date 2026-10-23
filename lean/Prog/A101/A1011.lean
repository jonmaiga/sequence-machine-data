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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A101100: The first summation of row 5 of Euler's triangle - a row that will recursively accumulate to the power of 5.

The programs for A101100, there is no canonical definition to state claims against.
-/

/-! ## A101100.P17561950062666725648

`A179457(round(sqrt(A337296(2*n+3))))`
-/

namespace A101100.P17561950062666725648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179457 (SequenceMachineLib.roundAway (Real.sqrt (A337296 (2 * n + 3) : ℝ))).toNat

end

end A101100.P17561950062666725648

/-!
# A101101: a(1)=1, a(2)=5, and a(n)=6 for n >= 3.

The programs for A101101, the canonical program `A101101.P7844844165456895433` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101101 has offset 1).

The definition of A101101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(2)` (program `A101101.P7844844165456895433`, by `A101101.P7844844165456895433.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101101.P7844844165456895433

`a(2)` with `a(0)=1, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101101

/-- `a(2)` -/
def P7844844165456895433.Spec : Prop :=
  ∀ n, (P7844844165456895433.a n : ℤ) = A101101 (n + 1)

theorem P7844844165456895433.correct : P7844844165456895433.Spec := by
  intro n
  simp only [A101101, Nat.add_sub_cancel]

end A101101

/-!
# A101102: Fifth partial sums of cubes (A000578).

The programs for A101102, the canonical program `A101102.P9491014438487427286` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101102 has offset 1).

The definition of A101102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101102.P9491014438487427286

`C(n+6, 6)*(3*(n+1)²+15*(n+1)+10)/28`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101102

/-- `C(n+6, 6)*(3*(n+1)²+15*(n+1)+10)/28` -/
def P9491014438487427286.Spec : Prop :=
  ∀ n, P9491014438487427286.a n = (A101102 (n + 1) : ℚ)

end A101102

/-! ## A101102.P3777976200428387701

`∑[∑[∑[∑[∑[n+1]²]]]]`
-/

namespace A101102.P3777976200428387701
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101102.P3777976200428387701

namespace A101102

/-- `∑[∑[∑[∑[∑[n+1]²]]]]` -/
def P3777976200428387701.Spec : Prop :=
  ∀ n, (P3777976200428387701.a n : ℤ) = A101102 (n + 1)

end A101102

/-! ## A101102.P10814565102136010849

`∑[∑[∑[∑[(n+1)^3]]]]+a(n-1)` with `a(0)=1`
-/

namespace A101102.P10814565102136010849
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A101102.P10814565102136010849

namespace A101102

/-- `∑[∑[∑[∑[(n+1)^3]]]]+a(n-1)` -/
def P10814565102136010849.Spec : Prop :=
  ∀ n, (P10814565102136010849.a n : ℤ) = A101102 (n + 1)

end A101102

/-! ## A101102.P16350914176987372932

`gcd(∑[A101097(n+1)], A000038(n))`
-/

namespace A101102.P16350914176987372932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A101102.P16350914176987372932

namespace A101102

/-- `gcd(∑[A101097(n+1)], A000038(n))` -/
def P16350914176987372932.Spec : Prop :=
  ∀ n, (P16350914176987372932.a n : ℤ) = A101102 (n + 1)

end A101102

/-! ## A101102.P15148403203671040642

`or(∑[A101097(n+1)], A000007(n))`
-/

namespace A101102.P15148403203671040642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A101102.P15148403203671040642

namespace A101102

/-- `or(∑[A101097(n+1)], A000007(n))` -/
def P15148403203671040642.Spec : Prop :=
  ∀ n, P15148403203671040642.a n = A101102 (n + 1)

end A101102

/-! ## A101102.P18228900817067911930

`lcm(∑[A101097(n+1)], A309873(n+1))`
-/

namespace A101102.P18228900817067911930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A309873 (n + 1))

end

end A101102.P18228900817067911930

namespace A101102

/-- `lcm(∑[A101097(n+1)], A309873(n+1))` -/
def P18228900817067911930.Spec : Prop :=
  ∀ n, (P18228900817067911930.a n : ℤ) = A101102 (n + 1)

end A101102

/-! ## A101102.P4335625400447520719

`∑[A101097(n+1)]%(2*A047819(n))`
-/

namespace A101102.P4335625400447520719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 * A047819 n)

end

end A101102.P4335625400447520719

namespace A101102

/-- `∑[A101097(n+1)]%(2*A047819(n))` -/
def P4335625400447520719.Spec : Prop :=
  ∀ n, P4335625400447520719.a n = A101102 (n + 1)

end A101102

/-! ## A101102.P648917725402180028

`A254469(n+2)-(A254469(n+1)+A101097(n+2))`
-/

namespace A101102.P648917725402180028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254469 (n + 2) - (A254469 (n + 1) + A101097 (n + 2))

end

end A101102.P648917725402180028

namespace A101102

/-- `A254469(n+2)-(A254469(n+1)+A101097(n+2))` -/
def P648917725402180028.Spec : Prop :=
  ∀ n, P648917725402180028.a n = A101102 (n + 1)

end A101102

/-! ## A101102.P2526238015216481409

`A036987(A273855(n+1))+∑[A101097(n+1)]`
-/

namespace A101102.P2526238015216481409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A273855 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101102.P2526238015216481409

namespace A101102

/-- `A036987(A273855(n+1))+∑[A101097(n+1)]` -/
def P2526238015216481409.Spec : Prop :=
  ∀ n, P2526238015216481409.a n = A101102 (n + 1)

end A101102

/-! ## A101102.P2963229200008213143

`A046902(eq[7, A025581(n)])`
-/

namespace A101102.P2963229200008213143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101102.P2963229200008213143

namespace A101102

/-- `A046902(eq[7, A025581(n)])` -/
def P2963229200008213143.Spec : Prop :=
  ∀ n, P2963229200008213143.a n = A101102 (n + 1)

end A101102

/-!
# A101103: Partial sums of A101104. First differences of A005914.

The programs for A101103, the canonical program `A101103.P6995802912071517186` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101103 has offset 1).

The definition of A101103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101103.P6995802912071517186

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13, a(2)=36, a(3)=60`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101103

/-- `2*a(n-1)-a(n-2)` -/
def P6995802912071517186.Spec : Prop :=
  ∀ n, P6995802912071517186.a n = A101103 (n + 1)

theorem P6995802912071517186.correct : P6995802912071517186.Spec := by
  intro n
  simp only [A101103, Nat.add_sub_cancel]

end A101103

/-!
# A101104: a(1)=1, a(2)=12, a(3)=23, and a(n)=24 for n>=4.

The programs for A101104, the canonical program `A101104.P5538353629167204384` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101104 has offset 1).

The definition of A101104 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(3)` (program `A101104.P5538353629167204384`, by `A101104.P5538353629167204384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101104.P5538353629167204384

`a(3)` with `a(0)=1, a(1)=12, a(2)=23, a(3)=24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101104

/-- `a(3)` -/
def P5538353629167204384.Spec : Prop :=
  ∀ n, (P5538353629167204384.a n : ℤ) = A101104 (n + 1)

theorem P5538353629167204384.correct : P5538353629167204384.Spec := by
  intro n
  simp only [A101104, Nat.add_sub_cancel]

end A101104

/-!
# A101105: Row sums of triangle A101224, which is related to the Flavius sieve (A000960).

The programs for A101105, there is no canonical definition to state claims against.
-/

/-! ## A101105.P9314890595720561320

`A087990(A002110(n))+A027444(n)`
-/

namespace A101105.P9314890595720561320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (A002110 n).toNat + A027444 n

end

end A101105.P9314890595720561320

/-! ## A101105.P13249317607488371605

`A299278(n)-A305614(A078125(n))`
-/

namespace A101105.P13249317607488371605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299278 n - A305614 (A078125 n).toNat

end

end A101105.P13249317607488371605

/-!
# A101106: A Chebyshev transform of the central Delannoy numbers.

The programs for A101106, there is no canonical definition to state claims against.
-/

/-! ## A101106.P9025600841332951344

`A004396(A225887(n))-A002265(n)`
-/

namespace A101106.P9025600841332951344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A225887 n).toNat - A002265 n

end

end A101106.P9025600841332951344

/-! ## A101106.P7144840544806996454

`A004396(A225887(n))-A011865(n)`
-/

namespace A101106.P7144840544806996454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A225887 n).toNat - A011865 n

end

end A101106.P7144840544806996454

/-!
# A101107: Sorted and uniqued list of class numbers (number of conjugacy classes) of all non-Abelian simple groups.

The programs for A101107, there is no canonical definition to state claims against.
-/

/-! ## A101107.P15352218599314751016

`lt[∏{p}[n+1, 2-#], 2]+5`
-/

namespace A101107.P15352218599314751016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 - (p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 5

end

end A101107.P15352218599314751016

/-! ## A101107.P8548996372371843678

`comp[A198680(n+1)]+4`
-/

namespace A101107.P8548996372371843678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A101107.P8548996372371843678

/-! ## A101107.P12368732915126600903

`comp[A346234(n+2)]+4`
-/

namespace A101107.P12368732915126600903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346234 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A101107.P12368732915126600903

/-! ## A101107.P16331906408316980820

`comp[A349343(n+2)]+4`
-/

namespace A101107.P16331906408316980820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349343 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 4

end

end A101107.P16331906408316980820

/-!
# A101109: Number of sets of lists (sequences) of n labeled elements with k=3 elements per list.

The programs for A101109, there is no canonical definition to state claims against.
-/

/-! ## A101109.P4100859041470897520

`6*C(n-1, 2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A101109.P4100859041470897520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  6 * Nat.choose ((n : ℤ) - 1).toNat 2 * a (n - 3)

end

end A101109.P4100859041470897520

/-! ## A101109.P8584161894095992779

`3*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A101109.P8584161894095992779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  3 * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A101109.P8584161894095992779

/-! ## A101109.P10942484959473587470

`char[3*n]*A355988(n)`
-/

namespace A101109.P10942484959473587470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A355988 n

end

end A101109.P10942484959473587470

/-! ## A101109.P18404859943897659820

`lcm(A056594(A022118(n)), A293526(n))`
-/

namespace A101109.P18404859943897659820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (A022118 n).toNat) (A293526 n)

end

end A101109.P18404859943897659820

/-! ## A101109.P4988877840619025372

`A071025(A005901(2*n+3))*A293526(n)`
-/

namespace A101109.P4988877840619025372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071025 (A005901 (2 * n + 3)).toNat * A293526 n

end

end A101109.P4988877840619025372

/-!
# A101113: Let t(G) = number of unitary factors of the Abelian group G. Then a(n) = Sum t(G) over all Abelian groups G of order exactly n.

The programs for A101113, there is no canonical definition to state claims against.
-/

/-! ## A101113.P118376517561163280

`A034444(n+1)*A000688(n+1)`
-/

namespace A101113.P118376517561163280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A000688 (n + 1)

end

end A101113.P118376517561163280

/-! ## A101113.P1635128063059155568

`∏{e}[n+1, A139582(#)]`
-/

namespace A101113.P1635128063059155568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A139582 (Nat.factorization (f1 n) p)

end

end A101113.P1635128063059155568

/-! ## A101113.P11480336209511760064

`∏{e}[n+1, 2*A000041(#)]`
-/

namespace A101113.P11480336209511760064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * A000041 (Nat.factorization (f1 n) p)

end

end A101113.P11480336209511760064

/-! ## A101113.P12937721536058468104

`∏{e}[n+1, A005843(A000041(#))]`
-/

namespace A101113.P12937721536058468104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005843 (A000041 (Nat.factorization (f1 n) p)).toNat

end

end A101113.P12937721536058468104

/-! ## A101113.P7683562807656543299

`∏{e}[n+1, A213598(#)+A213598(#)]`
-/

namespace A101113.P7683562807656543299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A213598 (Nat.factorization (f1 n) p) + A213598 (Nat.factorization (f1 n) p))

end

end A101113.P7683562807656543299

/-! ## A101113.P3250935306103417149

`2^A001221(n+1)*A000688(n+1)`
-/

namespace A101113.P3250935306103417149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A000688 (n + 1) : ℚ)

end

end A101113.P3250935306103417149

/-! ## A101113.P7545605872758115812

`A000005(∏{p}[n+1, #])*A000688(n+1)`
-/

namespace A101113.P7545605872758115812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) * A000688 (n + 1)

end

end A101113.P7545605872758115812

/-! ## A101113.P10346977552035212286

`A000005(A007947(n+1))*A000688(n+1)`
-/

namespace A101113.P10346977552035212286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A000688 (n + 1)

end

end A101113.P10346977552035212286

/-! ## A101113.P17317326080353025278

`(A048106(n+1)+A048105(n+1))*A000688(n+1)`
-/

namespace A101113.P17317326080353025278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048106 (n + 1) + A048105 (n + 1)) * A000688 (n + 1)

end

end A101113.P17317326080353025278

/-! ## A101113.P16156345830929522480

`A000688(n+1)*A000688(A078615(n+1))`
-/

namespace A101113.P16156345830929522480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A000688 (A078615 (n + 1)).toNat

end

end A101113.P16156345830929522480

/-! ## A101113.P15320711175989147925

`A000688(n+1)*A000688(A007947(n+1)²)`
-/

namespace A101113.P15320711175989147925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A000688 (A007947 (n + 1) ^ 2).toNat

end

end A101113.P15320711175989147925

/-! ## A101113.P9731947025400148480

`A000688(n+1)*A000688(A064549(n+1)/A003557(n+1))`
-/

namespace A101113.P9731947025400148480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A000688 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A101113.P9731947025400148480

/-!
# A101114: Let t(G) = number of unitary factors of the Abelian group G. Then a(n) = sum t(G) over all Abelian groups G of order <= n.

The programs for A101114, there is no canonical definition to state claims against.
-/

/-! ## A101114.P155525455377258841

`∑[A101113(n+1)]`
-/

namespace A101114.P155525455377258841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101114.P155525455377258841

/-! ## A101114.P12618793299416678633

`∑[∏{e}[n+1, 2*A000041(#)]]`
-/

namespace A101114.P12618793299416678633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 * A000041 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101114.P12618793299416678633

/-! ## A101114.P17364537960225692841

`∑[A000688(n+1)*A034444(n+1)]`
-/

namespace A101114.P17364537960225692841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101114.P17364537960225692841

/-! ## A101114.P3718221700998098422

`∑[2^A001221(n+1)*A000688(n+1)]`
-/

namespace A101114.P3718221700998098422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A000688 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101114.P3718221700998098422

/-! ## A101114.P9628049977624268469

`∑[A000005(∏{p}[n+1, #])*A238877(2*n+1)]`
-/

namespace A101114.P9628049977624268469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p) * A238877 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101114.P9628049977624268469

/-!
# A101117: a(n) = the first prime yielding the record value A101116(n).

The programs for A101117, there is no canonical definition to state claims against.
-/

/-! ## A101117.P31018018934275806

`A000040(∑[A160794(n!)])`
-/

namespace A101117.P31018018934275806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160794 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101117.P31018018934275806

/-!
# A101119: Nonzero differences of A006519 (highest power of 2 dividing n) and A003484 (Radon function).

The programs for A101119, the canonical program `A101119.P8853717879846159972` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101119 has offset 1).

The definition of A101119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101119.P8853717879846159972

`A006519(16*(n+1))-A003484(16*(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A101119

/-- `A006519(16*(n+1))-A003484(16*(n+1))` -/
def P8853717879846159972.Spec : Prop :=
  ∀ n, P8853717879846159972.a n = A101119 (n + 1)

theorem P8853717879846159972.correct : P8853717879846159972.Spec := by
  intro n
  simp only [A101119, Nat.add_sub_cancel]

end A101119

/-! ## A101119.P12552389747307359596

`A101120(val(n+1, 2)+1)`
-/

namespace A101119.P12552389747307359596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A101119.P12552389747307359596

namespace A101119

/-- `A101120(val(n+1, 2)+1)` -/
def P12552389747307359596.Spec : Prop :=
  ∀ n, P12552389747307359596.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P17672143004165536815

`A101120(A001511(n+1))`
-/

namespace A101119.P17672143004165536815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (A001511 (n + 1)).toNat

end

end A101119.P17672143004165536815

namespace A101119

/-- `A101120(A001511(n+1))` -/
def P17672143004165536815.Spec : Prop :=
  ∀ n, P17672143004165536815.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P2183400457159263134

`A101120(A007814(n+1)+1)`
-/

namespace A101119.P2183400457159263134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (A007814 (n + 1) + 1).toNat

end

end A101119.P2183400457159263134

namespace A101119

/-- `A101120(A007814(n+1)+1)` -/
def P2183400457159263134.Spec : Prop :=
  ∀ n, P2183400457159263134.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P9255106610136050813

`A101120(A034584(A053381(n)))`
-/

namespace A101119.P9255106610136050813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (A034584 (A053381 n).toNat).toNat

end

end A101119.P9255106610136050813

namespace A101119

/-- `A101120(A034584(A053381(n)))` -/
def P9255106610136050813.Spec : Prop :=
  ∀ n, P9255106610136050813.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P1038098664543837311

`A101120(A034584(A003484(n+1)))`
-/

namespace A101119.P1038098664543837311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (A034584 (A003484 (n + 1)).toNat).toNat

end

end A101119.P1038098664543837311

namespace A101119

/-- `A101120(A034584(A003484(n+1)))` -/
def P1038098664543837311.Spec : Prop :=
  ∀ n, P1038098664543837311.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P16934952952755493332

`A101120(∑{d}[A006519(n+1), #/A006519(#)])`
-/

namespace A101119.P16934952952755493332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A006519 d : ℚ))).toNat

end

end A101119.P16934952952755493332

namespace A101119

/-- `A101120(∑{d}[A006519(n+1), #/A006519(#)])` -/
def P16934952952755493332.Spec : Prop :=
  ∀ n, P16934952952755493332.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P5916512690831757590

`A101120(A034584(A047466(A034584(A209675(n+1)))))`
-/

namespace A101119.P5916512690831757590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (A034584 (A047466 (A034584 (A209675 (n + 1)).toNat).toNat).toNat).toNat

end

end A101119.P5916512690831757590

namespace A101119

/-- `A101120(A034584(A047466(A034584(A209675(n+1)))))` -/
def P5916512690831757590.Spec : Prop :=
  ∀ n, P5916512690831757590.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P12894005886343386125

`A101120(∑{d}[n+1, A038106(A014963(4*#))])`
-/

namespace A101119.P12894005886343386125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (∑ d ∈ Nat.divisors (f1 n), A038106 (A014963 (4 * d)).toNat).toNat

end

end A101119.P12894005886343386125

namespace A101119

/-- `A101120(∑{d}[n+1, A038106(A014963(4*#))])` -/
def P12894005886343386125.Spec : Prop :=
  ∀ n, P12894005886343386125.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P16777424225294319859

`A059164(n)-A003484(A059164(n))`
-/

namespace A101119.P16777424225294319859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059164 n - A003484 (A059164 n).toNat

end

end A101119.P16777424225294319859

namespace A101119

/-- `A059164(n)-A003484(A059164(n))` -/
def P16777424225294319859.Spec : Prop :=
  ∀ n, P16777424225294319859.a n = A101119 (n + 1)

end A101119

/-! ## A101119.P9215033519436772680

`A101120(A008621(A003484((n+1)²)))`
-/

namespace A101119.P9215033519436772680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101120 (A008621 (A003484 ((n + 1) ^ 2)).toNat).toNat

end

end A101119.P9215033519436772680

namespace A101119

/-- `A101120(A008621(A003484((n+1)²)))` -/
def P9215033519436772680.Spec : Prop :=
  ∀ n, P9215033519436772680.a n = A101119 (n + 1)

end A101119

/-!
# A101120: Records in A101119, which forms the nonzero differences of A006519 and A003484.

The programs for A101120, the canonical program `A101120.P1894096200389633546` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101120 has offset 1).

The definition of A101120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101120.P1713871546988569968

`2^(n+4)-A003485(n+4)`
-/

namespace A101120.P1713871546988569968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 4) : ℤ) - A003485 (n + 4)

end

end A101120.P1713871546988569968

namespace A101120

/-- `2^(n+4)-A003485(n+4)` -/
def P1713871546988569968.Spec : Prop :=
  ∀ n, P1713871546988569968.a n = A101120 (n + 1)

end A101120

/-! ## A101120.P1894096200389633546

`3*a(n-1)-2*a(n-2)+a(n-4)-3*a(n-5)+2*a(n-6)` with `a(0)=7, a(1)=22, a(2)=52, a(3)=112, a(4)=239, a(5)=494`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101120

/-- `3*a(n-1)-2*a(n-2)+a(n-4)-3*a(n-5)+2*a(n-6)` -/
def P1894096200389633546.Spec : Prop :=
  ∀ n, P1894096200389633546.a n = A101120 (n + 1)

theorem P1894096200389633546.correct : P1894096200389633546.Spec := by
  intro n
  simp only [A101120, Nat.add_sub_cancel]

end A101120

/-! ## A101120.P50290895638757964

`A101119(2^n)`
-/

namespace A101120.P50290895638757964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101119 (2 ^ n)

end

end A101120.P50290895638757964

namespace A101120

/-- `A101119(2^n)` -/
def P50290895638757964.Spec : Prop :=
  ∀ n, P50290895638757964.a n = A101120 (n + 1)

end A101120

/-! ## A101120.P15314065444967902441

`A159741(n+1)-A047466(n+2)`
-/

namespace A101120.P15314065444967902441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159741 (n + 1) - A047466 (n + 2)

end

end A101120.P15314065444967902441

namespace A101120

/-- `A159741(n+1)-A047466(n+2)` -/
def P15314065444967902441.Spec : Prop :=
  ∀ n, P15314065444967902441.a n = A101120 (n + 1)

end A101120

/-! ## A101120.P5856499424287507998

`record[A101119(n+1)]`
-/

namespace A101120.P5856499424287507998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101120.P5856499424287507998

namespace A101120

/-- `record[A101119(n+1)]` -/
def P5856499424287507998.Spec : Prop :=
  ∀ n, P5856499424287507998.a n = A101120 (n + 1)

end A101120

/-!
# A101121: Bitwise XOR of adjacent terms of A101120; also the nonzero terms of A101122.

The programs for A101121, there is no canonical definition to state claims against.
-/

/-! ## A101121.P15102308478926988939

`A101122(2^n)`
-/

namespace A101121.P15102308478926988939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101122 (2 ^ n)

end

end A101121.P15102308478926988939

/-! ## A101121.P1434164072627445469

`record[A101122(n+1)]`
-/

namespace A101121.P1434164072627445469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101121.P1434164072627445469

/-! ## A101121.P3664080074060483995

`and(-1, A101122(A000079(n)))`
-/

namespace A101121.P3664080074060483995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A101122 (A000079 n).toNat)

end

end A101121.P3664080074060483995

/-!
# A101122: XOR BINOMIAL transform of A101119.

The programs for A101122, there is no canonical definition to state claims against.
-/

/-! ## A101122.P6301711943236108633

`char[2^n-1]*A101121(val(n+1, 2)+1)`
-/

namespace A101122.P6301711943236108633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A101121 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A101122.P6301711943236108633

/-! ## A101122.P14065302614419137674

`char[2^n-1]*A101121(A001511(n+1))`
-/

namespace A101122.P14065302614419137674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A101121 (A001511 (n + 1)).toNat

end

end A101122.P14065302614419137674

/-! ## A101122.P16975220002661043015

`char[2^n-1]*A101121(A023416(n+1)+1)`
-/

namespace A101122.P16975220002661043015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A101121 (A023416 (n + 1) + 1).toNat

end

end A101122.P16975220002661043015

/-! ## A101122.P445261640176018825

`A036987(n)*A101121(∑[A036987(n)])`
-/

namespace A101122.P445261640176018825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A101121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101122.P445261640176018825

/-! ## A101122.P12674897705776752072

`A036987(n)*A101121(A275314(n+1))`
-/

namespace A101122.P12674897705776752072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A101121 (A275314 (n + 1)).toNat

end

end A101122.P12674897705776752072

/-!
# A101123: Numbers k for which 7*k + 11 is prime.

The programs for A101123, the canonical program `A101123.P12730226774992521000` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101123 has offset 1).

The definition of A101123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101123.P12730226774992521000

`A024902(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A101123

/-- `A024902(n+1)-1` -/
def P12730226774992521000.Spec : Prop :=
  ∀ n, P12730226774992521000.a n = A101123 (n + 1)

theorem P12730226774992521000.correct : P12730226774992521000.Spec := by
  intro n
  simp only [A101123, Nat.add_sub_cancel]

end A101123

/-! ## A101123.P8644313422178774700

`(A111517(n+1)-3)/2`
-/

namespace A101123.P8644313422178774700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111517 (n + 1) - 3 : ℚ) / 2

end

end A101123.P8644313422178774700

namespace A101123

/-- `(A111517(n+1)-3)/2` -/
def P8644313422178774700.Spec : Prop :=
  ∀ n, P8644313422178774700.a n = (A101123 (n + 1) : ℚ)

end A101123

/-! ## A101123.P6094100680759626490

`xor(A001222(A045372(n+1)), A024902(n+1))`
-/

namespace A101123.P6094100680759626490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A045372 (n + 1)).toNat) (A024902 (n + 1))

end

end A101123.P6094100680759626490

namespace A101123

/-- `xor(A001222(A045372(n+1)), A024902(n+1))` -/
def P6094100680759626490.Spec : Prop :=
  ∀ n, P6094100680759626490.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P4988764060314665934

`xor(A024902(n+1), A049705(A054353(2*(n+1))))`
-/

namespace A101123.P4988764060314665934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024902 (n + 1)) (A049705 (A054353 (2 * (n + 1))).toNat)

end

end A101123.P4988764060314665934

namespace A101123

/-- `xor(A024902(n+1), A049705(A054353(2*(n+1))))` -/
def P4988764060314665934.Spec : Prop :=
  ∀ n, P4988764060314665934.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P11111730093762978390

`xor(A002947(A055396(3*(n+1))), A024902(n+1))`
-/

namespace A101123.P11111730093762978390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002947 (A055396 (3 * (n + 1))).toNat) (A024902 (n + 1))

end

end A101123.P11111730093762978390

namespace A101123

/-- `xor(A002947(A055396(3*(n+1))), A024902(n+1))` -/
def P11111730093762978390.Spec : Prop :=
  ∀ n, P11111730093762978390.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P4850472354817567624

`lt[A001222(7*n+11), 2]`
-/

namespace A101123.P4850472354817567624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101123.P4850472354817567624

namespace A101123

/-- `lt[A001222(7*n+11), 2]` -/
def P4850472354817567624.Spec : Prop :=
  ∀ n, (P4850472354817567624.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P2375969534310307765

`lt[A000005(7*n+11), 3]`
-/

namespace A101123.P2375969534310307765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A101123.P2375969534310307765

namespace A101123

/-- `lt[A000005(7*n+11), 3]` -/
def P2375969534310307765.Spec : Prop :=
  ∀ n, (P2375969534310307765.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P442733644361826000

`eq[2, A000005(7*(n+1)+4)]`
-/

namespace A101123.P442733644361826000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * (n + 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101123.P442733644361826000

namespace A101123

/-- `eq[2, A000005(7*(n+1)+4)]` -/
def P442733644361826000.Spec : Prop :=
  ∀ n, (P442733644361826000.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P9675239294106736599

`eq[1, A001222(6*n+11+n)]`
-/

namespace A101123.P9675239294106736599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 11 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A101123.P9675239294106736599

namespace A101123

/-- `eq[1, A001222(6*n+11+n)]` -/
def P9675239294106736599.Spec : Prop :=
  ∀ n, (P9675239294106736599.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P12829550825840824927

`lt[n+2, A020639(7*n+4)]-1`
-/

namespace A101123.P12829550825840824927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A101123.P12829550825840824927

namespace A101123

/-- `lt[n+2, A020639(7*n+4)]-1` -/
def P12829550825840824927.Spec : Prop :=
  ∀ n, P12829550825840824927.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P7267049522507112846

`lt[n+3, A020639(5*(n+2)+2*n+1)]`
-/

namespace A101123.P7267049522507112846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n + 2) + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A101123.P7267049522507112846

namespace A101123

/-- `lt[n+3, A020639(5*(n+2)+2*n+1)]` -/
def P7267049522507112846.Spec : Prop :=
  ∀ n, (P7267049522507112846.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P303111565763739872

`comp[A153350(n+1)]`
-/

namespace A101123.P303111565763739872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A101123.P303111565763739872

namespace A101123

/-- `comp[A153350(n+1)]` -/
def P303111565763739872.Spec : Prop :=
  ∀ n, (P303111565763739872.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P12139111847895290923

`lt[∏{e}[7*n+11, #+1]-1, 2]`
-/

namespace A101123.P12139111847895290923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A101123.P12139111847895290923

namespace A101123

/-- `lt[∏{e}[7*n+11, #+1]-1, 2]` -/
def P12139111847895290923.Spec : Prop :=
  ∀ n, (P12139111847895290923.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P752637547167781109

`eq[1, ∑{e}[abs(3*n-A008592(n+1))+1, #]]`
-/

namespace A101123.P752637547167781109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n : ℤ) - A008592 (n + 1)| + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101123.P752637547167781109

namespace A101123

/-- `eq[1, ∑{e}[abs(3*n-A008592(n+1))+1, #]]` -/
def P752637547167781109.Spec : Prop :=
  ∀ n, (P752637547167781109.a n : ℤ) = A101123 (n + 1)

end A101123

/-! ## A101123.P4282205163678802456

`A004442(A024902(n+1))`
-/

namespace A101123.P4282205163678802456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A024902 (n + 1)).toNat

end

end A101123.P4282205163678802456

namespace A101123

/-- `A004442(A024902(n+1))` -/
def P4282205163678802456.Spec : Prop :=
  ∀ n, P4282205163678802456.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P12485888515243113953

`eq[1, A001222(A017029(n))]-1`
-/

namespace A101123.P12485888515243113953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A101123.P12485888515243113953

namespace A101123

/-- `eq[1, A001222(A017029(n))]-1` -/
def P12485888515243113953.Spec : Prop :=
  ∀ n, P12485888515243113953.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P14179872452402246500

`record[A171435(2*(n+1))-A171435(A017029(n+1))]`
-/

namespace A101123.P14179872452402246500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 1)) - A171435 (A017029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101123.P14179872452402246500

namespace A101123

/-- `record[A171435(2*(n+1))-A171435(A017029(n+1))]` -/
def P14179872452402246500.Spec : Prop :=
  ∀ n, P14179872452402246500.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P5569511394403125663

`A097065(A111517(n+1))`
-/

namespace A101123.P5569511394403125663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A111517 (n + 1)).toNat

end

end A101123.P5569511394403125663

namespace A101123

/-- `A097065(A111517(n+1))` -/
def P5569511394403125663.Spec : Prop :=
  ∀ n, P5569511394403125663.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P12795413402590832823

`A004524(A111517(n+1)-1)`
-/

namespace A101123.P12795413402590832823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A111517 (n + 1) - 1).toNat

end

end A101123.P12795413402590832823

namespace A101123

/-- `A004524(A111517(n+1)-1)` -/
def P12795413402590832823.Spec : Prop :=
  ∀ n, P12795413402590832823.a n = A101123 (n + 1)

end A101123

/-! ## A101123.P13122243943533256233

`eq[1, A032741(7*(n+1)-3)]-1`
-/

namespace A101123.P13122243943533256233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (7 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A101123.P13122243943533256233

namespace A101123

/-- `eq[1, A032741(7*(n+1)-3)]-1` -/
def P13122243943533256233.Spec : Prop :=
  ∀ n, P13122243943533256233.a n = A101123 (n + 1)

end A101123

/-!
# A101124: Number triangle associated to Chebyshev polynomials of first kind.

The programs for A101124, there is no canonical definition to state claims against.
-/

/-! ## A101124.P9377308541665594178

`A322836(∑[char[∑[n]]]²-n-1)`
-/

namespace A101124.P9377308541665594178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A101124.P9377308541665594178

/-! ## A101124.P15874896573500538254

`(1-char[1])*A322836(A061579(n))`
-/

namespace A101124.P15874896573500538254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A322836 (A061579 n).toNat

end

end A101124.P15874896573500538254

/-! ## A101124.P1352177021726527027

`or(A000007(n), A322836(A061579(n)))`
-/

namespace A101124.P1352177021726527027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322836 (A061579 n).toNat)

end

end A101124.P1352177021726527027

/-! ## A101124.P11789913728062481831

`A322836(A061579(n))+A000007(n+1)`
-/

namespace A101124.P11789913728062481831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A061579 n).toNat + A000007 (n + 1)

end

end A101124.P11789913728062481831

/-! ## A101124.P10422501922053685614

`A322836(A038722(n+1)-1)+A000038(n+1)`
-/

namespace A101124.P10422501922053685614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A038722 (n + 1) - 1).toNat + A000038 (n + 1)

end

end A101124.P10422501922053685614

/-! ## A101124.P16859497822001354971

`A322836(A061579(n))^A162642(A020639(n+1))`
-/

namespace A101124.P16859497822001354971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322836 (A061579 n).toNat : ℚ) ^ (A162642 (A020639 (n + 1)).toNat : ℤ)

end

end A101124.P16859497822001354971

/-! ## A101124.P13029405296369185465

`A050603(4*n)*A322836(A057944(n)+A025581(n))`
-/

namespace A101124.P13029405296369185465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (4 * n) * A322836 (A057944 n + A025581 n).toNat

end

end A101124.P13029405296369185465

/-! ## A101124.P7475006434028230559

`A322836(A038722(n+2))%A022872(n+2)`
-/

namespace A101124.P7475006434028230559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322836 (A038722 (n + 2)).toNat) (A022872 (n + 2))

end

end A101124.P7475006434028230559

/-! ## A101124.P8018451776875772529

`A322836(A038722(n+1)-1)%A048584(n)`
-/

namespace A101124.P8018451776875772529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322836 (A038722 (n + 1) - 1).toNat) (A048584 n)

end

end A101124.P8018451776875772529

/-! ## A101124.P16839239078038044243

`A322836(A057944(n)+A025581(n))%A022112(n)`
-/

namespace A101124.P16839239078038044243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322836 (A057944 n + A025581 n).toNat) (A022112 n)

end

end A101124.P16839239078038044243

/-! ## A101124.P9140477956535518326

`A322836(A061579(n))+A156297(A155212(n))`
-/

namespace A101124.P9140477956535518326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A061579 n).toNat + A156297 (A155212 n).toNat

end

end A101124.P9140477956535518326

/-! ## A101124.P2706553205715489327

`A322836(A061579(n))%A175161(n)`
-/

namespace A101124.P2706553205715489327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322836 (A061579 n).toNat) (A175161 n)

end

end A101124.P2706553205715489327

/-! ## A101124.P17126638622008357381

`A322836(A038722(n+2))%Δ[A001091(n)]`
-/

namespace A101124.P17126638622008357381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322836 (A038722 (n + 2)).toNat) (f1 (n + 1) - f1 n)

end

end A101124.P17126638622008357381

/-!
# A101125: Row sums of a Chebyshev number triangle.

The programs for A101125, there is no canonical definition to state claims against.
-/

/-! ## A101125.P16923760351218332369

`A116045(A304201(n))`
-/

namespace A101125.P16923760351218332369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116045 (A304201 n).toNat

end

end A101125.P16923760351218332369

/-! ## A101125.P6396490677987183807

`A116045(A189052(n)+1)`
-/

namespace A101125.P6396490677987183807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116045 (A189052 n + 1).toNat

end

end A101125.P6396490677987183807

/-! ## A101125.P16932362080242067574

`A305829(n!+1-n)+A304793(A305829(n!+1-n))`
-/

namespace A101125.P16932362080242067574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305829 ((Nat.factorial n : ℤ) + (1 - (n : ℤ))).toNat + A304793 (A305829 ((Nat.factorial n : ℤ) + (1 - (n : ℤ))).toNat).toNat

end

end A101125.P16932362080242067574

/-!
# A101127: McKay-Thompson series of class 12D for the Monster group.

The programs for A101127, there is no canonical definition to state claims against.
-/

/-! ## A101127.P18336947817194920362

`abs(A007259(n))`
-/

namespace A101127.P18336947817194920362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007259 n|

end

end A101127.P18336947817194920362

/-! ## A101127.P14540963961576610916

`A007259(n)*A033999(n)`
-/

namespace A101127.P14540963961576610916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007259 n * A033999 n

end

end A101127.P14540963961576610916

/-! ## A101127.P704175505771627362

`gcd(A000038(n), A007259(n))`
-/

namespace A101127.P704175505771627362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007259 n)

end

end A101127.P704175505771627362

/-! ## A101127.P7927887882220496443

`lcm(A000034(n), A007259(n))`
-/

namespace A101127.P7927887882220496443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A007259 n)

end

end A101127.P7927887882220496443

/-! ## A101127.P829874473170885452

`A007259(n)*A057077(2*n)`
-/

namespace A101127.P829874473170885452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007259 n * A057077 (2 * n)

end

end A101127.P829874473170885452

/-!
# A101128: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) - 9 for n > 0.

The programs for A101128, there is no canonical definition to state claims against.
-/

/-! ## A101128.P14644069184037461228

`A056804(n+1)-1`
-/

namespace A101128.P14644069184037461228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056804 (n + 1) - 1

end

end A101128.P14644069184037461228

/-! ## A101128.P12219659362546228304

`record[Δ[A056804(A152271(n))]]`
-/

namespace A101128.P12219659362546228304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056804 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101128.P12219659362546228304

/-! ## A101128.P5467933146858324950

`record[Δ[A056804(A158416(n))]]`
-/

namespace A101128.P5467933146858324950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056804 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101128.P5467933146858324950

/-! ## A101128.P16895436683449325712

`A308778(n²)+A056804(n+1)`
-/

namespace A101128.P16895436683449325712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A056804 (n + 1)

end

end A101128.P16895436683449325712

/-! ## A101128.P10346264132895605462

`A057428(n+1)+A056804(n+1)`
-/

namespace A101128.P10346264132895605462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056804 (n + 1)

end

end A101128.P10346264132895605462

/-!
# A101129: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) - 27 for n > 0.

The programs for A101129, there is no canonical definition to state claims against.
-/

/-! ## A101129.P5399604718147110558

`A097970(n+1)-1`
-/

namespace A101129.P5399604718147110558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097970 (n + 1) - 1

end

end A101129.P5399604718147110558

/-! ## A101129.P18206187208662441412

`record[Δ[A097970(A152271(n))]]`
-/

namespace A101129.P18206187208662441412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097970 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101129.P18206187208662441412

/-! ## A101129.P13726508559131304639

`A001478(n+1)+A097970(n+1)+n`
-/

namespace A101129.P13726508559131304639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A097970 (n + 1) + (n : ℤ))

end

end A101129.P13726508559131304639

/-! ## A101129.P6836851415969828281

`A099837(A005897(n))+A097970(n+1)`
-/

namespace A101129.P6836851415969828281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A005897 n).toNat + A097970 (n + 1)

end

end A101129.P6836851415969828281

/-! ## A101129.P5788319086338830777

`A099837(A097990(n))+A097970(n+1)`
-/

namespace A101129.P5788319086338830777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A097990 n).toNat + A097970 (n + 1)

end

end A101129.P5788319086338830777

/-!
# A101130: Indices of primes in sequence defined by A(0) = 79, A(k) = 10*A(k-1) - 81 for k > 0.

The programs for A101130, there is no canonical definition to state claims against.
-/

/-! ## A101130.P6761955085076036155

`A097954(n+1)-1`
-/

namespace A101130.P6761955085076036155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097954 (n + 1) - 1

end

end A101130.P6761955085076036155

/-! ## A101130.P15923392223297976543

`A134824(n+2)+A097954(n+1)`
-/

namespace A101130.P15923392223297976543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A097954 (n + 1)

end

end A101130.P15923392223297976543

/-! ## A101130.P16821887743748656548

`A153881(n+2)+A097954(n+1)`
-/

namespace A101130.P16821887743748656548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A097954 (n + 1)

end

end A101130.P16821887743748656548

/-! ## A101130.P9938165537298052984

`abs(A097954(n+1)+A057428(n+1))`
-/

namespace A101130.P9938165537298052984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097954 (n + 1) + A057428 (n + 1)|

end

end A101130.P9938165537298052984

/-! ## A101130.P9476207948741948653

`A289067(gcd(n, n+1))+A097954(n+1)`
-/

namespace A101130.P9476207948741948653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289067 (Nat.gcd n (n + 1)) + A097954 (n + 1)

end

end A101130.P9476207948741948653

/-!
# A101131: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) - 17 for n > 0.

The programs for A101131, there is no canonical definition to state claims against.
-/

/-! ## A101131.P8957543539632426199

`A103050(n+1)-1`
-/

namespace A101131.P8957543539632426199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103050 (n + 1) - 1

end

end A101131.P8957543539632426199

/-! ## A101131.P8599979983966857509

`record[Δ[A103050(A152271(n))]]`
-/

namespace A101131.P8599979983966857509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103050 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101131.P8599979983966857509

/-! ## A101131.P15848300419457843099

`record[Δ[A103050(A181935(n))]]`
-/

namespace A101131.P15848300419457843099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103050 (A181935 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101131.P15848300419457843099

/-!
# A101132: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101132, there is no canonical definition to state claims against.
-/

/-! ## A101132.P3104438061354971085

`A103051(n+1)-1`
-/

namespace A101132.P3104438061354971085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103051 (n + 1) - 1

end

end A101132.P3104438061354971085

/-! ## A101132.P8686987123417447693

`A134824(n+2)+A103051(n+1)`
-/

namespace A101132.P8686987123417447693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103051 (n + 1)

end

end A101132.P8686987123417447693

/-! ## A101132.P6079322549155021871

`A153881(2*(n+2))+A103051(n+1)`
-/

namespace A101132.P6079322549155021871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * (n + 2)) + A103051 (n + 1)

end

end A101132.P6079322549155021871

/-! ## A101132.P7391207254671655119

`A106400(A000079(n))+A103051(n+1)`
-/

namespace A101132.P7391207254671655119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A000079 n).toNat + A103051 (n + 1)

end

end A101132.P7391207254671655119

/-! ## A101132.P9767270713050536023

`A118830(A109613(n))+A103051(n+1)`
-/

namespace A101132.P9767270713050536023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A109613 n).toNat + A103051 (n + 1)

end

end A101132.P9767270713050536023

/-!
# A101133: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101133, there is no canonical definition to state claims against.
-/

/-! ## A101133.P8786669590976380352

`A103052(n+1)-1`
-/

namespace A101133.P8786669590976380352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103052 (n + 1) - 1

end

end A101133.P8786669590976380352

/-! ## A101133.P16693515050586365224

`A103115(floor(n/10))+A103052(n+1)`
-/

namespace A101133.P16693515050586365224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 ⌊(n : ℚ) / 10⌋.toNat + A103052 (n + 1)

end

end A101133.P16693515050586365224

/-! ## A101133.P1461055679987792847

`A131505(A016754(n))+A103052(n+1)`
-/

namespace A101133.P1461055679987792847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (A016754 n).toNat + A103052 (n + 1)

end

end A101133.P1461055679987792847

/-! ## A101133.P3465268762124196488

`A131505(A017533(n))+A103052(n+1)`
-/

namespace A101133.P3465268762124196488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (A017533 n).toNat + A103052 (n + 1)

end

end A101133.P3465268762124196488

/-! ## A101133.P8885176512953090887

`A280193(A002146(n))+A103052(n+1)`
-/

namespace A101133.P8885176512953090887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A002146 n).toNat + A103052 (n + 1)

end

end A101133.P8885176512953090887

/-!
# A101134: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) - 7 for n > 0.

The programs for A101134, there is no canonical definition to state claims against.
-/

/-! ## A101134.P14098208054818856721

`A103053(n+1)-1`
-/

namespace A101134.P14098208054818856721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103053 (n + 1) - 1

end

end A101134.P14098208054818856721

/-! ## A101134.P16521058022778681035

`record[Δ[A103053(A152271(n))]]`
-/

namespace A101134.P16521058022778681035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103053 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101134.P16521058022778681035

/-! ## A101134.P10414599993995141020

`A134824(n+2)+A103053(n+1)`
-/

namespace A101134.P10414599993995141020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103053 (n + 1)

end

end A101134.P10414599993995141020

/-! ## A101134.P11096816531341719935

`A110514(A001844(n))+A103053(n+1)`
-/

namespace A101134.P11096816531341719935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A001844 n).toNat + A103053 (n + 1)

end

end A101134.P11096816531341719935

/-! ## A101134.P6173468819771582179

`A168361(A005277(n+1))+A103053(n+1)`
-/

namespace A101134.P6173468819771582179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (A005277 (n + 1)).toNat + A103053 (n + 1)

end

end A101134.P6173468819771582179

/-!
# A101135: a(1)=1. a(n) = a(n-1) + sum of the squares which are among the first (n-1) terms of the sequence.

The programs for A101135, there is no canonical definition to state claims against.
-/

/-! ## A101135.P1148498509440876206

`∑[A134202(A060143(n)!)]`
-/

namespace A101135.P1148498509440876206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134202 (Nat.factorial (A060143 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101135.P1148498509440876206

/-!
# A101136: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 61 for n > 0.

The programs for A101136, there is no canonical definition to state claims against.
-/

/-! ## A101136.P16889064860085768161

`A103054(n+1)-1`
-/

namespace A101136.P16889064860085768161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103054 (n + 1) - 1

end

end A101136.P16889064860085768161

/-! ## A101136.P7876717728821064792

`A153881(n+2)+A103054(n+1)`
-/

namespace A101136.P7876717728821064792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103054 (n + 1)

end

end A101136.P7876717728821064792

/-! ## A101136.P7356057698075092566

`A105812(2*(n+2))+A103054(n+1)`
-/

namespace A101136.P7356057698075092566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103054 (n + 1)

end

end A101136.P7356057698075092566

/-! ## A101136.P234011515048114160

`A260447(Δ[floor(ϕ*n)])+A103054(n+1)`
-/

namespace A101136.P234011515048114160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260447 (f1 (n + 1) - f1 n).toNat + A103054 (n + 1)

end

end A101136.P234011515048114160

/-! ## A101136.P9008846265809271555

`A110315(A055801(n))+A103054(n+1)`
-/

namespace A101136.P9008846265809271555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (A055801 n).toNat + A103054 (n + 1)

end

end A101136.P9008846265809271555

/-!
# A101137: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) + 21 for n > 0.

The programs for A101137, there is no canonical definition to state claims against.
-/

/-! ## A101137.P14359435153479050868

`A103055(n+1)-1`
-/

namespace A101137.P14359435153479050868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103055 (n + 1) - 1

end

end A101137.P14359435153479050868

/-! ## A101137.P10187573402277761345

`A134824(n+2)+A103055(n+1)`
-/

namespace A101137.P10187573402277761345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103055 (n + 1)

end

end A101137.P10187573402277761345

/-! ## A101137.P810288327600009293

`A118830(2*n+1)+A103055(n+1)`
-/

namespace A101137.P810288327600009293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A103055 (n + 1)

end

end A101137.P810288327600009293

/-! ## A101137.P14555407172819217104

`A105812(2*(n+2))+A103055(n+1)`
-/

namespace A101137.P14555407172819217104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103055 (n + 1)

end

end A101137.P14555407172819217104

/-! ## A101137.P6474943283298494579

`A262352(xor(n, n+1))+A103055(n+1)`
-/

namespace A101137.P6474943283298494579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262352 (Nat.xor n (n + 1)) + A103055 (n + 1)

end

end A101137.P6474943283298494579

/-!
# A101138: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 51 for n > 0.

The programs for A101138, there is no canonical definition to state claims against.
-/

/-! ## A101138.P14745667090550481403

`A103056(n+2)-1`
-/

namespace A101138.P14745667090550481403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103056 (n + 2) - 1

end

end A101138.P14745667090550481403

/-! ## A101138.P8197049234292896389

`∑[Δ[A103056(n+1)]%A002275(2*n+1)]`
-/

namespace A101138.P8197049234292896389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103056 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A002275 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101138.P8197049234292896389

/-! ## A101138.P7138328451208004426

`A023443(A103056(n+2))`
-/

namespace A101138.P7138328451208004426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A103056 (n + 2)).toNat

end

end A101138.P7138328451208004426

/-!
# A101139: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) + 31 for n > 0.

The programs for A101139, there is no canonical definition to state claims against.
-/

/-! ## A101139.P2340356007457716569

`A103057(n+1)-1`
-/

namespace A101139.P2340356007457716569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103057 (n + 1) - 1

end

end A101139.P2340356007457716569

/-! ## A101139.P10526769531957077717

`record[A103057(A141256(n))-1]`
-/

namespace A101139.P10526769531957077717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103057 (A141256 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101139.P10526769531957077717

/-! ## A101139.P5704575848280331444

`A308778(n²)+A103057(n+1)`
-/

namespace A101139.P5704575848280331444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103057 (n + 1)

end

end A101139.P5704575848280331444

/-! ## A101139.P5362630520440750848

`abs(A103057(n+1)+A057428(n+1))`
-/

namespace A101139.P5362630520440750848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103057 (n + 1) + A057428 (n + 1)|

end

end A101139.P5362630520440750848

/-! ## A101139.P14455085552551922766

`A153881(2*n+5)+A103057(n+1)`
-/

namespace A101139.P14455085552551922766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * n + 5) + A103057 (n + 1)

end

end A101139.P14455085552551922766

/-!
# A101140: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) + 13 for n > 0.

The programs for A101140, there is no canonical definition to state claims against.
-/

/-! ## A101140.P2665419022842486353

`A103058(n+1)-1`
-/

namespace A101140.P2665419022842486353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103058 (n + 1) - 1

end

end A101140.P2665419022842486353

/-! ## A101140.P5434998326276577197

`record[Δ[A103058(A051340(n))]]`
-/

namespace A101140.P5434998326276577197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103058 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101140.P5434998326276577197

/-! ## A101140.P2606269233622005044

`record[Δ[A103058(A099246(n))]]`
-/

namespace A101140.P2606269233622005044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103058 (A099246 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101140.P2606269233622005044

/-!
# A101142: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A101142, there is no canonical definition to state claims against.
-/

/-! ## A101142.P12592390193011716633

`A103059(n+1)-1`
-/

namespace A101142.P12592390193011716633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103059 (n + 1) - 1

end

end A101142.P12592390193011716633

/-! ## A101142.P8882760265346530907

`A308778(n²)+A103059(n+1)`
-/

namespace A101142.P8882760265346530907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103059 (n + 1)

end

end A101142.P8882760265346530907

/-! ## A101142.P5734219047307034478

`A134824(n+2)+A103059(n+1)`
-/

namespace A101142.P5734219047307034478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A103059 (n + 1)

end

end A101142.P5734219047307034478

/-! ## A101142.P16946267560471484

`A256448(2^C(n, 59))+A103059(n+1)`
-/

namespace A101142.P16946267560471484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (2 ^ Nat.choose n 59) + A103059 (n + 1)

end

end A101142.P16946267560471484

/-! ## A101142.P3562853948788654054

`A166711(3*(n+1))+A103059(n+1)+n`
-/

namespace A101142.P3562853948788654054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (3 * (n + 1)) + (A103059 (n + 1) + (n : ℤ))

end

end A101142.P3562853948788654054

/-!
# A101143: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A101143, there is no canonical definition to state claims against.
-/

/-! ## A101143.P1920770535321105609

`A103060(n+1)-1`
-/

namespace A101143.P1920770535321105609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103060 (n + 1) - 1

end

end A101143.P1920770535321105609

/-! ## A101143.P3819421694802417183

`record[Δ[A103060(A158416(n))]]`
-/

namespace A101143.P3819421694802417183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103060 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101143.P3819421694802417183

/-! ## A101143.P6250074529604947220

`A260196(n+2)+A103060(n+1)`
-/

namespace A101143.P6250074529604947220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103060 (n + 1)

end

end A101143.P6250074529604947220

/-! ## A101143.P11502294377974026578

`A133574(gcd(n, n+1))+A103060(n+1)`
-/

namespace A101143.P11502294377974026578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 (Nat.gcd n (n + 1)) + A103060 (n + 1)

end

end A101143.P11502294377974026578

/-! ## A101143.P1385808136499911559

`floor(tanh(A002024(n+1))*A103060(n+1))`
-/

namespace A101143.P1385808136499911559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (A002024 (n + 1) : ℝ) * (A103060 (n + 1) : ℝ)⌋

end

end A101143.P1385808136499911559

/-!
# A101144: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) + 23 for n > 0.

The programs for A101144, there is no canonical definition to state claims against.
-/

/-! ## A101144.P15536512249334866972

`A103061(n+2)-1`
-/

namespace A101144.P15536512249334866972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103061 (n + 2) - 1

end

end A101144.P15536512249334866972

/-! ## A101144.P5941212340219283368

`∑[Δ[A103061(n+1)]%A000533(n)]`
-/

namespace A101144.P5941212340219283368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103061 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101144.P5941212340219283368

/-! ## A101144.P16853202575988232545

`A378645(3*n+4)+A103061(n+2)`
-/

namespace A101144.P16853202575988232545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378645 (3 * n + 4) + A103061 (n + 2)

end

end A101144.P16853202575988232545

/-! ## A101144.P11877241619291565333

`A228826(A067059(n))+A103061(n+2)`
-/

namespace A101144.P11877241619291565333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A067059 n).toNat + A103061 (n + 2)

end

end A101144.P11877241619291565333

/-! ## A101144.P3320065679157227937

`A354173(A300385(2*n+3))+A103061(n+2)`
-/

namespace A101144.P3320065679157227937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354173 (A300385 (2 * n + 3)).toNat + A103061 (n + 2)

end

end A101144.P3320065679157227937

/-!
# A101145: List of molecules in Hintze-Adami artificial chemistry (see comments for definition).

The programs for A101145, there is no canonical definition to state claims against.
-/

/-! ## A101145.P5009806377705103225

`∩[A065816(n+1), A098019(n+1)]`
-/

namespace A101145.P5009806377705103225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101145.P5009806377705103225

/-!
# A101146: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A101146, there is no canonical definition to state claims against.
-/

/-! ## A101146.P7375946482572629746

`A103062(n+2)-1`
-/

namespace A101146.P7375946482572629746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103062 (n + 2) - 1

end

end A101146.P7375946482572629746

/-! ## A101146.P14070005045070219758

`xor(1, A103062(A028310(n+2)))`
-/

namespace A101146.P14070005045070219758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103062 (A028310 (n + 2)).toNat)

end

end A101146.P14070005045070219758

/-! ## A101146.P14486916855953914460

`xor(1, A103062(A297280(n+2)))`
-/

namespace A101146.P14486916855953914460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A103062 (A297280 (n + 2)).toNat)

end

end A101146.P14486916855953914460

/-! ## A101146.P14826554475619258971

`xor(A103062(n+2), A103380(n+1))`
-/

namespace A101146.P14826554475619258971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103062 (n + 2)) (A103380 (n + 1))

end

end A101146.P14826554475619258971

/-! ## A101146.P7288498991441122

`xor(A008683(4*(n+1))!, A103062(n+2))`
-/

namespace A101146.P7288498991441122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A008683 (4 * (n + 1))).toNat : ℤ) (A103062 (n + 2))

end

end A101146.P7288498991441122

/-!
# A101147: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) + 51 for n > 0.

The programs for A101147, there is no canonical definition to state claims against.
-/

/-! ## A101147.P2340335060863360603

`A103063(n+2)-1`
-/

namespace A101147.P2340335060863360603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103063 (n + 2) - 1

end

end A101147.P2340335060863360603

/-! ## A101147.P1680299063902487036

`A260196(n+2)+A103063(n+2)`
-/

namespace A101147.P1680299063902487036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103063 (n + 2)

end

end A101147.P1680299063902487036

/-! ## A101147.P11665600746008980487

`A110315(2*n+1)+A103063(n+2)+n`
-/

namespace A101147.P11665600746008980487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110315 (2 * n + 1) + (A103063 (n + 2) + (n : ℤ))

end

end A101147.P11665600746008980487

/-! ## A101147.P10893590969237011886

`A114592(A000040(n+1))+A103063(n+2)`
-/

namespace A101147.P10893590969237011886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A000040 (n + 1)).toNat + A103063 (n + 2)

end

end A101147.P10893590969237011886

/-! ## A101147.P11889955920950218331

`A114592(A106856(n+1))+A103063(n+2)`
-/

namespace A101147.P11889955920950218331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A106856 (n + 1)).toNat + A103063 (n + 2)

end

end A101147.P11889955920950218331

/-!
# A101148: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) + 33 for n > 0.

The programs for A101148, there is no canonical definition to state claims against.
-/

/-! ## A101148.P8649340099925106766

`A103064(n+1)-1`
-/

namespace A101148.P8649340099925106766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103064 (n + 1) - 1

end

end A101148.P8649340099925106766

/-! ## A101148.P9751814005044181151

`record[Δ[A103064(A152271(n))]]`
-/

namespace A101148.P9751814005044181151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103064 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101148.P9751814005044181151

/-! ## A101148.P10898570546687802056

`A308778(n²)+A103064(n+1)`
-/

namespace A101148.P10898570546687802056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103064 (n + 1)

end

end A101148.P10898570546687802056

/-! ## A101148.P9293061817259818396

`A153881(n+2)+A103064(n+1)`
-/

namespace A101148.P9293061817259818396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103064 (n + 1)

end

end A101148.P9293061817259818396

/-!
# A101150: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 21 for n > 0.

The programs for A101150, there is no canonical definition to state claims against.
-/

/-! ## A101150.P9994041103175490061

`A103065(n+1)-1`
-/

namespace A101150.P9994041103175490061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103065 (n + 1) - 1

end

end A101150.P9994041103175490061

/-! ## A101150.P926252089647119267

`record[A103065(A324347(n))-1]`
-/

namespace A101150.P926252089647119267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103065 (A324347 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101150.P926252089647119267

/-! ## A101150.P5863299737374619197

`A308778(n²)+A103065(n+1)`
-/

namespace A101150.P5863299737374619197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103065 (n + 1)

end

end A101150.P5863299737374619197

/-! ## A101150.P1011064421312114295

`A153881(n+2)+A103065(n+1)`
-/

namespace A101150.P1011064421312114295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103065 (n + 1)

end

end A101150.P1011064421312114295

/-! ## A101150.P17372030643677959029

`A114592(A087594(n))+A103065(n+1)`
-/

namespace A101150.P17372030643677959029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A087594 n).toNat + A103065 (n + 1)

end

end A101150.P17372030643677959029

/-!
# A101151: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) + 53 for n > 0.

The programs for A101151, there is no canonical definition to state claims against.
-/

/-! ## A101151.P5408646827616804806

`A103066(n+2)-1`
-/

namespace A101151.P5408646827616804806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103066 (n + 2) - 1

end

end A101151.P5408646827616804806

/-! ## A101151.P15522319315854501281

`A153881(n+2)+A103066(n+2)`
-/

namespace A101151.P15522319315854501281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A103066 (n + 2)

end

end A101151.P15522319315854501281

/-! ## A101151.P10698661851926611053

`∑[Δ[A103066(n+1)]%A000533(n)]`
-/

namespace A101151.P10698661851926611053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101151.P10698661851926611053

/-! ## A101151.P10724348940870984565

`abs(A103066(n+2)+A008683(A002148(n)))`
-/

namespace A101151.P10724348940870984565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103066 (n + 2) + A008683 (A002148 n).toNat|

end

end A101151.P10724348940870984565

/-! ## A101151.P318408026282012408

`A103115(A052605(C(n, 11)))+A103066(n+2)`
-/

namespace A101151.P318408026282012408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103115 (A052605 (Nat.choose n 11)).toNat + A103066 (n + 2)

end

end A101151.P318408026282012408

/-!
# A101152: Nonnegative values x of solutions (x, y) to the Diophantine equation x^2+(x+569)^2 = y^2.

The programs for A101152, there is no canonical definition to state claims against.
-/

/-! ## A101152.P45082752261315136

`A118676(n+1)+A129725(n+1)-A118674(n+1)`
-/

namespace A101152.P45082752261315136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118676 (n + 1) + (A129725 (n + 1) - A118674 (n + 1))

end

end A101152.P45082752261315136

/-!
# A101153: Indices of primes in sequence defined by A(0) = 79, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A101153, there is no canonical definition to state claims against.
-/

/-! ## A101153.P7739803837785349200

`A103067(n+1)-1`
-/

namespace A101153.P7739803837785349200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103067 (n + 1) - 1

end

end A101153.P7739803837785349200

/-! ## A101153.P8160050656893052126

`record[Δ[A103067(A152271(n))]]`
-/

namespace A101153.P8160050656893052126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103067 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101153.P8160050656893052126

/-! ## A101153.P6589162352562266967

`record[A103067(A263131(n))-1]`
-/

namespace A101153.P6589162352562266967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103067 (A263131 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101153.P6589162352562266967

/-! ## A101153.P3316013014558509804

`record[Δ[A103067(A260438(n+1))]]`
-/

namespace A101153.P3316013014558509804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103067 (A260438 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101153.P3316013014558509804

/-! ## A101153.P1656553429317743270

`A308778(n²)+A103067(n+1)`
-/

namespace A101153.P1656553429317743270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A103067 (n + 1)

end

end A101153.P1656553429317743270

/-!
# A101154: Indices of primes in sequence defined by A(0) = 71, A(n) = 10*A(n-1) + 81 for n > 0.

The programs for A101154, there is no canonical definition to state claims against.
-/

/-! ## A101154.P16007019115948184072

`A103068(n+1)-1`
-/

namespace A101154.P16007019115948184072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103068 (n + 1) - 1

end

end A101154.P16007019115948184072

/-! ## A101154.P6453651107618589571

`record[Δ[A103068(A152271(n))]]`
-/

namespace A101154.P6453651107618589571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103068 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101154.P6453651107618589571

/-! ## A101154.P421287444121702081

`A260196(n+2)+A103068(n+1)`
-/

namespace A101154.P421287444121702081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A103068 (n + 1)

end

end A101154.P421287444121702081

/-! ## A101154.P3891020472094401283

`A105812(2*(n+2))+A103068(n+1)`
-/

namespace A101154.P3891020472094401283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * (n + 2)) + A103068 (n + 1)

end

end A101154.P3891020472094401283

/-! ## A101154.P14431453326439613400

`A321800(A000120(n))+A103068(n+1)`
-/

namespace A101154.P14431453326439613400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A000120 n).toNat + A103068 (n + 1)

end

end A101154.P14431453326439613400

/-!
# A101155: Indices of primes in sequence defined by A(0) = 73, A(n) = 10*A(n-1) + 63 for n > 0.

The programs for A101155, there is no canonical definition to state claims against.
-/

/-! ## A101155.P9525170831083726615

`A099190(n+1)-1`
-/

namespace A101155.P9525170831083726615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099190 (n + 1) - 1

end

end A101155.P9525170831083726615

/-! ## A101155.P7110667602070518433

`record[Δ[A099190(A152271(n))]]`
-/

namespace A101155.P7110667602070518433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099190 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101155.P7110667602070518433

/-! ## A101155.P4087289750399291991

`record[Δ[A099190(A158416(n))]]`
-/

namespace A101155.P4087289750399291991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099190 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101155.P4087289750399291991

/-! ## A101155.P13163777084237692730

`record[Δ[A099190(A210959(n+1))]]`
-/

namespace A101155.P13163777084237692730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099190 (A210959 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101155.P13163777084237692730

/-! ## A101155.P8995345130250097368

`A134824(n+2)+A099190(n+1)`
-/

namespace A101155.P8995345130250097368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A099190 (n + 1)

end

end A101155.P8995345130250097368

/-!
# A101156: a(n) = 2*Fibonacci(n) + 8*Fibonacci(n-5).

The programs for A101156, the canonical program `A101156.P4643517739568143560` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101156 has offset 5).

The definition of A101156 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101156.P4643517739568143560

`a(n-1)+a(n-2)` with `a(0)=10, a(1)=24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101156

/-- `a(n-1)+a(n-2)` -/
def P4643517739568143560.Spec : Prop :=
  ∀ n, (P4643517739568143560.a n : ℤ) = A101156 (n + 5)

theorem P4643517739568143560.correct : P4643517739568143560.Spec := by
  intro n
  simp only [A101156, Nat.add_sub_cancel]

end A101156

/-! ## A101156.P6269815084812291375

`ogf((10+14x)/(1-x-x^2))`
-/

namespace A101156.P6269815084812291375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 14] [1, -1, -1] n

end

end A101156.P6269815084812291375

namespace A101156

/-- `ogf((10+14x)/(1-x-x^2))` -/
def P6269815084812291375.Spec : Prop :=
  ∀ n, P6269815084812291375.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P1426773804186057485

`2*A022137(n)`
-/

namespace A101156.P1426773804186057485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022137 n

end

end A101156.P1426773804186057485

namespace A101156

/-- `2*A022137(n)` -/
def P1426773804186057485.Spec : Prop :=
  ∀ n, P1426773804186057485.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P13255125186222674762

`A022140(n)+A020712(n)`
-/

namespace A101156.P13255125186222674762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022140 n + A020712 n

end

end A101156.P13255125186222674762

namespace A101156

/-- `A022140(n)+A020712(n)` -/
def P13255125186222674762.Spec : Prop :=
  ∀ n, P13255125186222674762.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P8566652029139421344

`A022138(n)+A022136(n)`
-/

namespace A101156.P8566652029139421344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022138 n + A022136 n

end

end A101156.P8566652029139421344

namespace A101156

/-- `A022138(n)+A022136(n)` -/
def P8566652029139421344.Spec : Prop :=
  ∀ n, P8566652029139421344.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P4011772400368824386

`A022390(n)+A022113(n)`
-/

namespace A101156.P4011772400368824386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022390 n + A022113 n

end

end A101156.P4011772400368824386

namespace A101156

/-- `A022390(n)+A022113(n)` -/
def P4011772400368824386.Spec : Prop :=
  ∀ n, P4011772400368824386.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P2441373754099053460

`A022388(n)+A022131(n)`
-/

namespace A101156.P2441373754099053460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022388 n + A022131 n

end

end A101156.P2441373754099053460

namespace A101156

/-- `A022388(n)+A022131(n)` -/
def P2441373754099053460.Spec : Prop :=
  ∀ n, P2441373754099053460.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P11813188848451920240

`A022389(n)+A022379(n)`
-/

namespace A101156.P11813188848451920240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022389 n + A022379 n

end

end A101156.P11813188848451920240

namespace A101156

/-- `A022389(n)+A022379(n)` -/
def P11813188848451920240.Spec : Prop :=
  ∀ n, P11813188848451920240.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P504577153072448651

`A156279(n)+A022372(n)`
-/

namespace A101156.P504577153072448651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A022372 n

end

end A101156.P504577153072448651

namespace A101156

/-- `A156279(n)+A022372(n)` -/
def P504577153072448651.Spec : Prop :=
  ∀ n, P504577153072448651.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P9314913419096846134

`A184959(n)+A022349(n)`
-/

namespace A101156.P9314913419096846134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184959 n + A022349 n

end

end A101156.P9314913419096846134

namespace A101156

/-- `A184959(n)+A022349(n)` -/
def P9314913419096846134.Spec : Prop :=
  ∀ n, P9314913419096846134.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P4542070819236497001

`A185691(n)+A022086(n)`
-/

namespace A101156.P4542070819236497001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185691 n + A022086 n

end

end A101156.P4542070819236497001

namespace A101156

/-- `A185691(n)+A022086(n)` -/
def P4542070819236497001.Spec : Prop :=
  ∀ n, P4542070819236497001.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P13502775293730296742

`A190995(n)+A022107(n)`
-/

namespace A101156.P13502775293730296742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190995 n + A022107 n

end

end A101156.P13502775293730296742

namespace A101156

/-- `A190995(n)+A022107(n)` -/
def P13502775293730296742.Spec : Prop :=
  ∀ n, P13502775293730296742.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P5937963494026243004

`A190996(n)+A022351(n)`
-/

namespace A101156.P5937963494026243004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190996 n + A022351 n

end

end A101156.P5937963494026243004

namespace A101156

/-- `A190996(n)+A022351(n)` -/
def P5937963494026243004.Spec : Prop :=
  ∀ n, P5937963494026243004.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P7789990364144300197

`A280154(n)+A022353(n)`
-/

namespace A101156.P7789990364144300197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280154 n + A022353 n

end

end A101156.P7789990364144300197

namespace A101156

/-- `A280154(n)+A022353(n)` -/
def P7789990364144300197.Spec : Prop :=
  ∀ n, P7789990364144300197.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P16500100998739422759

`A097657(n)-A152163(n)`
-/

namespace A101156.P16500100998739422759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097657 n - A152163 n

end

end A101156.P16500100998739422759

namespace A101156

/-- `A097657(n)-A152163(n)` -/
def P16500100998739422759.Spec : Prop :=
  ∀ n, P16500100998739422759.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P7367239723361223008

`A022104(n)+A022099(n+1)`
-/

namespace A101156.P7367239723361223008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022099 (n + 1)

end

end A101156.P7367239723361223008

namespace A101156

/-- `A022104(n)+A022099(n+1)` -/
def P7367239723361223008.Spec : Prop :=
  ∀ n, P7367239723361223008.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P12975084565529482828

`A022105(n)+A022092(n+1)`
-/

namespace A101156.P12975084565529482828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022092 (n + 1)

end

end A101156.P12975084565529482828

namespace A101156

/-- `A022105(n)+A022092(n+1)` -/
def P12975084565529482828.Spec : Prop :=
  ∀ n, P12975084565529482828.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P2683528162086675769

`A022347(n)+A022100(n+1)`
-/

namespace A101156.P2683528162086675769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022100 (n + 1)

end

end A101156.P2683528162086675769

namespace A101156

/-- `A022347(n)+A022100(n+1)` -/
def P2683528162086675769.Spec : Prop :=
  ∀ n, P2683528162086675769.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P9201070989981324188

`A022348(n)+A022093(n+1)`
-/

namespace A101156.P9201070989981324188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022093 (n + 1)

end

end A101156.P9201070989981324188

namespace A101156

/-- `A022348(n)+A022093(n+1)` -/
def P9201070989981324188.Spec : Prop :=
  ∀ n, P9201070989981324188.a n = A101156 (n + 5)

end A101156

/-! ## A101156.P6973476845754236942

`A090991(n+1)+A022383(n)`
-/

namespace A101156.P6973476845754236942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090991 (n + 1) + A022383 n

end

end A101156.P6973476845754236942

namespace A101156

/-- `A090991(n+1)+A022383(n)` -/
def P6973476845754236942.Spec : Prop :=
  ∀ n, P6973476845754236942.a n = A101156 (n + 5)

end A101156

/-!
# A101157: Let j be the smallest integer for which n+(n+1)+...+(n+j) is a square, say k^2; then a(n)=k.

The programs for A101157, there is no canonical definition to state claims against.
-/

/-! ## A101157.P9810632313477290602

`sqrt(A101158(n+1))`
-/

namespace A101157.P9810632313477290602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A101158 (n + 1) : ℝ)

end

end A101157.P9810632313477290602

/-! ## A101157.P10193542936444780442

`A004442(A004442(root(A101158(n+1), 2)))`
-/

namespace A101157.P10193542936444780442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 (SequenceMachineLib.roundAway ((A101158 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A101157.P10193542936444780442

/-! ## A101157.P16822968477312320716

`A267107(A267107(root(A101158(n+1), 2)))`
-/

namespace A101157.P16822968477312320716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267107 (A267107 (SequenceMachineLib.roundAway ((A101158 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A101157.P16822968477312320716

/-! ## A101157.P2237426242612463492

`root(A101158(n+1), A001316(A001316(n)))`
-/

namespace A101157.P2237426242612463492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A101158 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A101157.P2237426242612463492

/-! ## A101157.P13542836849879591327

`root(A101158(n+1), A130335(A130335(n+1)))`
-/

namespace A101157.P13542836849879591327
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A101158 (n + 1) : ℝ) ^ (1 / (A130335 (A130335 (n + 1)).toNat : ℝ))

end

end A101157.P13542836849879591327

/-! ## A101157.P1294808761861670275

`A101158(n+1)^(A005843(n)/A008574(n))`
-/

namespace A101157.P1294808761861670275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A101158 (n + 1) : ℝ) ^ ((A005843 n : ℚ) / (A008574 n : ℚ) : ℝ)

end

end A101157.P1294808761861670275

/-! ## A101157.P17202625310252277670

`A262689(A101158(n+1)+1)`
-/

namespace A101157.P17202625310252277670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A101158 (n + 1) + 1).toNat

end

end A101157.P17202625310252277670

/-! ## A101157.P10474002545517416317

`A056926(A101158(n+1))%Δ[A001844(n)]`
-/

namespace A101157.P10474002545517416317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056926 (A101158 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A101157.P10474002545517416317

/-! ## A101157.P15705985729357245752

`A056926(2*A101158(n+1)-A101158(n+1))`
-/

namespace A101157.P15705985729357245752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A101158 (n + 1) - A101158 (n + 1)).toNat

end

end A101157.P15705985729357245752

/-! ## A101157.P2934529757784959620

`A331362(A101158(n+1))%A017185(n)`
-/

namespace A101157.P2934529757784959620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331362 (A101158 (n + 1)).toNat) (A017185 n)

end

end A101157.P2934529757784959620

/-!
# A101158: Let j be the smallest integer for which n+(n+1)+...+(n+j) is a square; sequence gives the squares.

The programs for A101158, there is no canonical definition to state claims against.
-/

/-! ## A101158.P10315013155960437437

`A101157(n+1)²`
-/

namespace A101158.P10315013155960437437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (n + 1) ^ 2

end

end A101158.P10315013155960437437

/-! ## A101158.P11847657434748416063

`A002620(2*A101157(n+1))`
-/

namespace A101158.P11847657434748416063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A101157 (n + 1)).toNat

end

end A101158.P11847657434748416063

/-! ## A101158.P5851582747482193982

`A000290(abs(1-A101157(n+1))+1)`
-/

namespace A101158.P5851582747482193982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (|1 - A101157 (n + 1)| + 1).toNat

end

end A101158.P5851582747482193982

/-! ## A101158.P11750914293673562716

`A253909(A101157(n+1)-A000007(n))`
-/

namespace A101158.P11750914293673562716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (A101157 (n + 1) - A000007 n).toNat

end

end A101158.P11750914293673562716

/-! ## A101158.P11891140264940657879

`A101157(n+1)^A280193(A005843(n))`
-/

namespace A101158.P11891140264940657879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101157 (n + 1) : ℚ) ^ (A280193 (A005843 n).toNat : ℤ)

end

end A101158.P11891140264940657879

/-! ## A101158.P9000552731008699197

`A000290(or(A000007(n), A101157(n+1)))`
-/

namespace A101158.P9000552731008699197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor (A000007 n) (A101157 (n + 1))).toNat

end

end A101158.P9000552731008699197

/-! ## A101158.P3217854957886693247

`A002620(A101157(n+1)+A101157(n+1))`
-/

namespace A101158.P3217854957886693247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A101157 (n + 1) + A101157 (n + 1)).toNat

end

end A101158.P3217854957886693247

/-! ## A101158.P14119023078884814714

`A101157(n+1)^A000005(A052180(n+2))`
-/

namespace A101158.P14119023078884814714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101157 (n + 1) : ℚ) ^ (A000005 (A052180 (n + 2)).toNat : ℤ)

end

end A101158.P14119023078884814714

/-! ## A101158.P2484117691245858104

`A000290(2*A101157(n+1)-A101157(n+1))`
-/

namespace A101158.P2484117691245858104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A101157 (n + 1) - A101157 (n + 1)).toNat

end

end A101158.P2484117691245858104

/-! ## A101158.P17328832950337106546

`A101157(n+1)^A000005(A101119(2*n+1))`
-/

namespace A101158.P17328832950337106546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101157 (n + 1) : ℚ) ^ (A000005 (A101119 (2 * n + 1)).toNat : ℤ)

end

end A101158.P17328832950337106546

/-! ## A101158.P5788610346842021676

`A101157(n+1)%A106232(n+1)*A101157(n+1)`
-/

namespace A101158.P5788610346842021676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101157 (n + 1)) (A106232 (n + 1)) * A101157 (n + 1)

end

end A101158.P5788610346842021676

/-!
# A101159: Let j be the smallest integer for which n+(n+1)+...+(n+j) is a square; then a(n) = n+j.

The programs for A101159, there is no canonical definition to state claims against.
-/

/-! ## A101159.P14123873337572671910

`n+1+A101160(n+1)`
-/

namespace A101159.P14123873337572671910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A101160 (n + 1)

end

end A101159.P14123873337572671910

/-! ## A101159.P1729262905297918780

`A214728(n+1)+n`
-/

namespace A101159.P1729262905297918780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214728 (n + 1) + (n : ℤ)

end

end A101159.P1729262905297918780

/-! ## A101159.P18425511098745483445

`∑[2-Δ[n-A214728(n)]]`
-/

namespace A101159.P18425511098745483445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A214728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101159.P18425511098745483445

/-! ## A101159.P9618357463840425856

`∑[Δ[A101160(A028310(n))]+1]`
-/

namespace A101159.P9618357463840425856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101160 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101159.P9618357463840425856

/-! ## A101159.P17701386126305023307

`A113881(A101158(n+1)+A000217(n))`
-/

namespace A101159.P17701386126305023307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A101158 (n + 1) + A000217 n).toNat

end

end A101159.P17701386126305023307

/-! ## A101159.P21459972587770888

`A113881(A000217(n)+A101157(n+1)²)`
-/

namespace A101159.P21459972587770888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A000217 n + A101157 (n + 1) ^ 2).toNat

end

end A101159.P21459972587770888

/-! ## A101159.P8976436769952598778

`A113881(A000217(n)+A101157(n+1)^A036453(n+1))`
-/

namespace A101159.P8976436769952598778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A101157 (n + 1) : ℚ) ^ (A036453 (n + 1) : ℤ))).toNat

end

end A101159.P8976436769952598778

/-! ## A101159.P17251654878779640692

`A280172(A101158(n+1)+A000217(n))`
-/

namespace A101159.P17251654878779640692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (A101158 (n + 1) + A000217 n).toNat

end

end A101159.P17251654878779640692

/-! ## A101159.P13018105415279066196

`A172471(A101158(n+1)+A000217(n))`
-/

namespace A101159.P13018105415279066196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A101158 (n + 1) + A000217 n).toNat

end

end A101159.P13018105415279066196

/-! ## A101159.P9705586374315538331

`A011772(A101158(n+1)+∑[n])`
-/

namespace A101159.P9705586374315538331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A101158 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A101159.P9705586374315538331

/-!
# A101160: a(n) is the smallest integer j for which n+(n+1)+...+(n+j) is a square.

The programs for A101160, there is no canonical definition to state claims against.
-/

/-! ## A101160.P6535541216557400783

`A214728(n+1)-1`
-/

namespace A101160.P6535541216557400783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214728 (n + 1) - 1

end

end A101160.P6535541216557400783

/-! ## A101160.P12072387867040587429

`Δ[∑[A214728(n)]-n]`
-/

namespace A101160.P12072387867040587429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101160.P12072387867040587429

/-! ## A101160.P4860876126549645767

`A101159(n+1)-(n+1)`
-/

namespace A101160.P4860876126549645767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101159 (n + 1) - (n + 1 : ℤ)

end

end A101160.P4860876126549645767

/-! ## A101160.P9787599231921620109

`A023443(A214728(n+1))`
-/

namespace A101160.P9787599231921620109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A214728 (n + 1)).toNat

end

end A101160.P9787599231921620109

/-! ## A101160.P895276846851372318

`∑[Δ[A214728(n)]%A008256(n)]`
-/

namespace A101160.P895276846851372318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A008256 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101160.P895276846851372318

/-! ## A101160.P3054126569836630725

`A259361(A214728(n+1)²)`
-/

namespace A101160.P3054126569836630725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A214728 (n + 1) ^ 2).toNat

end

end A101160.P3054126569836630725

/-!
# A101161: A number triangle associated with the Chebyshev polynomials of the first kind.

The programs for A101161, there is no canonical definition to state claims against.
-/

/-! ## A101161.P7028891342811442410

`A299741(A061579(n))-char[∑[n-1]]`
-/

namespace A101161.P7028891342811442410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (A061579 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101161.P7028891342811442410

/-! ## A101161.P6009373251777726929

`A299741(A038722(n+1)-1)-char[∑[n-1]]`
-/

namespace A101161.P6009373251777726929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299741 (A038722 (n + 1) - 1).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A101161.P6009373251777726929

/-! ## A101161.P12724599039862226652

`A299741(A061579(n))^Δ[A083920(n)]`
-/

namespace A101161.P12724599039862226652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299741 (A061579 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A101161.P12724599039862226652

/-! ## A101161.P533404807837168675

`A299741(A061579(n))/A035214(n+1)`
-/

namespace A101161.P533404807837168675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299741 (A061579 n).toNat : ℚ) / (A035214 (n + 1) : ℚ)

end

end A101161.P533404807837168675

/-! ## A101161.P3776957595173949237

`gcd(A106459(n+1), A299741(A061579(n)))`
-/

namespace A101161.P3776957595173949237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 (n + 1)) (A299741 (A061579 n).toNat)

end

end A101161.P3776957595173949237

/-! ## A101161.P4675308826209215800

`A299741(A061579(n))/Δ[A007401(n+1)]`
-/

namespace A101161.P4675308826209215800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299741 (A061579 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A101161.P4675308826209215800

/-! ## A101161.P6829230042836902066

`A299741(A061579(n))/Δ[A014132(n+1)]`
-/

namespace A101161.P6829230042836902066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299741 (A061579 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A101161.P6829230042836902066

/-! ## A101161.P10740700025826643996

`A299741(A061579(n))^Δ[A122797(n+1)]`
-/

namespace A101161.P10740700025826643996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299741 (A061579 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A101161.P10740700025826643996

/-!
# A101162: Row sums of a Chebyshev number triangle.

The programs for A101162, there is no canonical definition to state claims against.
-/

/-! ## A101162.P12689030513039585822

`A325946(a(n-1))+n` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A101162.P12689030513039585822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  A325946 (a (n - 1)).toNat + (n : ℤ)

end

end A101162.P12689030513039585822

/-! ## A101162.P9855650272761371205

`∑[A262689(∑[(n+1)^n]+1)]`
-/

namespace A101162.P9855650272761371205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101162.P9855650272761371205

/-!
# A101163: Diagonal sums of a Chebyshev number triangle.

The programs for A101163, there is no canonical definition to state claims against.
-/

/-! ## A101163.P11531009808334381232

`∑[A157271(A309159(n))]`
-/

namespace A101163.P11531009808334381232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A309159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101163.P11531009808334381232

/-! ## A101163.P17591103429663888543

`A061017(∑[∑[A257290(n)]])`
-/

namespace A101163.P17591103429663888543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101163.P17591103429663888543

/-! ## A101163.P3620739172055822746

`A325921(n)-A052146(A088218(n)+1)`
-/

namespace A101163.P3620739172055822746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325921 n - A052146 (A088218 n + 1).toNat

end

end A101163.P3620739172055822746

/-! ## A101163.P15625657601974401085

`a(n-1)+A157271(A309159(n))%A034472(n)` with `a(0)=1`
-/

namespace A101163.P15625657601974401085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A157271 (A309159 n).toNat) (A034472 n)

end

end A101163.P15625657601974401085

/-!
# A101164: Triangle read by rows: Delannoy numbers minus binomial coefficients.

The programs for A101164, there is no canonical definition to state claims against.
-/

/-! ## A101164.P12326998442168415454

`A008288(n)-A007318(n)`
-/

namespace A101164.P12326998442168415454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A007318 n

end

end A101164.P12326998442168415454

/-! ## A101164.P4763386845610327764

`A008288(n)-Δ[A102363(n)]`
-/

namespace A101164.P4763386845610327764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - (f1 (n + 1) - f1 n)

end

end A101164.P4763386845610327764

/-! ## A101164.P14247295788879964830

`A008288(n)-(A014473(n)+1)`
-/

namespace A101164.P14247295788879964830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - (A014473 n + 1)

end

end A101164.P14247295788879964830

/-! ## A101164.P18339867754042498793

`A014473(n)+2*A225413(n)`
-/

namespace A101164.P18339867754042498793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 2 * A225413 n

end

end A101164.P18339867754042498793

/-! ## A101164.P7773568437465364244

`2*A108350(n)-1-A007318(n)`
-/

namespace A101164.P7773568437465364244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108350 n - 1 - A007318 n

end

end A101164.P7773568437465364244

/-! ## A101164.P13707452219494347665

`A140750(eq[1, A071028(n)]+1)-A007318(n)`
-/

namespace A101164.P13707452219494347665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A007318 n

end

end A101164.P13707452219494347665

/-! ## A101164.P16931648138843538642

`A008288(n)-A014682(A109128(n)+1)`
-/

namespace A101164.P16931648138843538642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A014682 (A109128 n + 1).toNat

end

end A101164.P16931648138843538642

/-! ## A101164.P1274671897277886977

`A050328(A036561(n))-A007318(n)`
-/

namespace A101164.P1274671897277886977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A036561 n).toNat - A007318 n

end

end A101164.P1274671897277886977

/-!
# A101165: a(n) = (7*n^3 + 6*n^2 + 5*n) / 6.

The programs for A101165, the canonical program `A101165.P6282767770251905788` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101165 has offset 0).

The definition of A101165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n^3+6*n²+5*n)/6` (program `A101165.P7039608793594956974`, by `A101165.P7039608793594956974.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101165.P7039608793594956974

`(7*n^3+6*n²+5*n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101165.P7039608793594956974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 3 + 6 * n ^ 2 + 5 * n : ℚ) / 6

end

end A101165.P7039608793594956974

namespace A101165

/-- `(7*n^3+6*n²+5*n)/6` -/
def P7039608793594956974.Spec : Prop :=
  ∀ n, P7039608793594956974.a n = (A101165 n : ℚ)

theorem P7039608793594956974.correct : P7039608793594956974.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101165, Nat.add_sub_cancel, A101165.P7039608793594956974.a, A101165.P6282767770251905788.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101165, Nat.add_sub_cancel, A101165.P7039608793594956974.a, A101165.P6282767770251905788.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101165

/-! ## A101165.P6282767770251905788

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=43`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101165

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6282767770251905788.Spec : Prop :=
  ∀ n, P6282767770251905788.a n = A101165 n

theorem P6282767770251905788.correct : P6282767770251905788.Spec := by
  intro n
  simp only [A101165]

end A101165

/-! ## A101165.P13689801657881564518

`∑[3*n²]+C(n, 3)`
-/

namespace A101165.P13689801657881564518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A101165.P13689801657881564518

namespace A101165

/-- `∑[3*n²]+C(n, 3)` -/
def P13689801657881564518.Spec : Prop :=
  ∀ n, (P13689801657881564518.a n : ℤ) = A101165 n

end A101165

/-! ## A101165.P8398197344239490636

`∑[∑[a(n-1)+7]]` with `a(0)=0, a(1)=3, a(2)=9`
-/

namespace A101165.P8398197344239490636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 9] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101165.P8398197344239490636

namespace A101165

/-- `∑[∑[a(n-1)+7]]` -/
def P8398197344239490636.Spec : Prop :=
  ∀ n, (P8398197344239490636.a n : ℤ) = A101165 n

end A101165

/-! ## A101165.P16677286870151731112

`C(n, 3)+(2*n+1)*∑[n]`
-/

namespace A101165.P16677286870151731112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101165.P16677286870151731112

namespace A101165

/-- `C(n, 3)+(2*n+1)*∑[n]` -/
def P16677286870151731112.Spec : Prop :=
  ∀ n, (P16677286870151731112.a n : ℤ) = A101165 n

end A101165

/-! ## A101165.P12829259252818152511

`∑[floor((2/acot(n))²)-∑[n+1]]`
-/

namespace A101165.P12829259252818152511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋ - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101165.P12829259252818152511

namespace A101165

/-- `∑[floor((2/acot(n))²)-∑[n+1]]` -/
def P12829259252818152511.Spec : Prop :=
  ∀ n, P12829259252818152511.a n = A101165 n

end A101165

/-! ## A101165.P4918051526414332602

`A304993(n)-n²`
-/

namespace A101165.P4918051526414332602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n - (n ^ 2 : ℤ)

end

end A101165.P4918051526414332602

namespace A101165

/-- `A304993(n)-n²` -/
def P4918051526414332602.Spec : Prop :=
  ∀ n, P4918051526414332602.a n = A101165 n

end A101165

/-! ## A101165.P13323119318949334139

`∑[A218471(n)]+n`
-/

namespace A101165.P13323119318949334139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A101165.P13323119318949334139

namespace A101165

/-- `∑[A218471(n)]+n` -/
def P13323119318949334139.Spec : Prop :=
  ∀ n, P13323119318949334139.a n = A101165 n

end A101165

/-! ## A101165.P7880114030563866902

`A203551(n)+∑[n²]`
-/

namespace A101165.P7880114030563866902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101165.P7880114030563866902

namespace A101165

/-- `A203551(n)+∑[n²]` -/
def P7880114030563866902.Spec : Prop :=
  ∀ n, P7880114030563866902.a n = A101165 n

end A101165

/-! ## A101165.P16024729581843467148

`∑[A022265(n)]-n²`
-/

namespace A101165.P16024729581843467148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A101165.P16024729581843467148

namespace A101165

/-- `∑[A022265(n)]-n²` -/
def P16024729581843467148.Spec : Prop :=
  ∀ n, P16024729581843467148.a n = A101165 n

end A101165

/-! ## A101165.P6685209703219082609

`∑[A140065(n+1)]-1`
-/

namespace A101165.P6685209703219082609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A101165.P6685209703219082609

namespace A101165

/-- `∑[A140065(n+1)]-1` -/
def P6685209703219082609.Spec : Prop :=
  ∀ n, P6685209703219082609.a n = A101165 n

end A101165

/-! ## A101165.P3144428847028708577

`A185788(n+1)+∑[n]`
-/

namespace A101165.P3144428847028708577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101165.P3144428847028708577

namespace A101165

/-- `A185788(n+1)+∑[n]` -/
def P3144428847028708577.Spec : Prop :=
  ∀ n, P3144428847028708577.a n = A101165 n

end A101165

/-! ## A101165.P16300637687798480425

`A004126(n)+n²+n`
-/

namespace A101165.P16300637687798480425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004126 n + (n ^ 2 + n : ℤ)

end

end A101165.P16300637687798480425

namespace A101165

/-- `A004126(n)+n²+n` -/
def P16300637687798480425.Spec : Prop :=
  ∀ n, P16300637687798480425.a n = A101165 n

end A101165

/-! ## A101165.P15053445376707745874

`∑[A056105(n)+∑[n]]-1`
-/

namespace A101165.P15053445376707745874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A101165.P15053445376707745874

namespace A101165

/-- `∑[A056105(n)+∑[n]]-1` -/
def P15053445376707745874.Spec : Prop :=
  ∀ n, P15053445376707745874.a n = A101165 n

end A101165

/-! ## A101165.P3546202779530798489

`A006331(n)+n*(n²+1)/2`
-/

namespace A101165.P3546202779530798489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006331 n : ℚ) + (n * (n ^ 2 + 1) : ℚ) / 2

end

end A101165.P3546202779530798489

namespace A101165

/-- `A006331(n)+n*(n²+1)/2` -/
def P3546202779530798489.Spec : Prop :=
  ∀ n, P3546202779530798489.a n = (A101165 n : ℚ)

end A101165

/-! ## A101165.P16529425800068586611

`(n²+A004006(n)/(n+1))*(n+1)`
-/

namespace A101165.P16529425800068586611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) + (A004006 n : ℚ) / (n + 1 : ℚ)) * (n + 1 : ℚ)

end

end A101165.P16529425800068586611

namespace A101165

/-- `(n²+A004006(n)/(n+1))*(n+1)` -/
def P16529425800068586611.Spec : Prop :=
  ∀ n, P16529425800068586611.a n = (A101165 n : ℚ)

end A101165

/-! ## A101165.P11652736728981726728

`A007584(n)+A000096(n)`
-/

namespace A101165.P11652736728981726728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n + A000096 n

end

end A101165.P11652736728981726728

namespace A101165

/-- `A007584(n)+A000096(n)` -/
def P11652736728981726728.Spec : Prop :=
  ∀ n, P11652736728981726728.a n = A101165 n

end A101165

/-! ## A101165.P2995902762810751884

`A006002(n)+A005900(n)`
-/

namespace A101165.P2995902762810751884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n + A005900 n

end

end A101165.P2995902762810751884

namespace A101165

/-- `A006002(n)+A005900(n)` -/
def P2995902762810751884.Spec : Prop :=
  ∀ n, P2995902762810751884.a n = A101165 n

end A101165

/-! ## A101165.P15239477205386811186

`A011379(n)+A004006(n)`
-/

namespace A101165.P15239477205386811186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n + A004006 n

end

end A101165.P15239477205386811186

namespace A101165

/-- `A011379(n)+A004006(n)` -/
def P15239477205386811186.Spec : Prop :=
  ∀ n, P15239477205386811186.a n = A101165 n

end A101165

/-! ## A101165.P6721492598244342249

`A160378(n)+A006503(n)`
-/

namespace A101165.P6721492598244342249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A006503 n

end

end A101165.P6721492598244342249

namespace A101165

/-- `A160378(n)+A006503(n)` -/
def P6721492598244342249.Spec : Prop :=
  ∀ n, P6721492598244342249.a n = A101165 n

end A101165

/-!
# A101166: a(n) = (15*n^4 + 22*n^3 + 45*n^2 + 14*n) / 24.

The programs for A101166, the canonical program `A101166.P2197240350239130181` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101166 has offset 0).

The definition of A101166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15*n^4+22*n^3+45*n²+14*n)/24` (program `A101166.P11104443325193639305`, by `A101166.P11104443325193639305.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101166.P11104443325193639305

`(15*n^4+22*n^3+45*n²+14*n)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101166.P11104443325193639305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 4 + 22 * n ^ 3 + 45 * n ^ 2 + 14 * n : ℚ) / 24

end

end A101166.P11104443325193639305

namespace A101166

/-- `(15*n^4+22*n^3+45*n²+14*n)/24` -/
def P11104443325193639305.Spec : Prop :=
  ∀ n, P11104443325193639305.a n = (A101166 n : ℚ)

theorem P11104443325193639305.correct : P11104443325193639305.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A101166, Nat.add_sub_cancel, A101166.P11104443325193639305.a, A101166.P2197240350239130181.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A101166, Nat.add_sub_cancel, A101166.P11104443325193639305.a, A101166.P2197240350239130181.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101166

/-! ## A101166.P2197240350239130181

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=26, a(3)=94, a(4)=251`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101166

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2197240350239130181.Spec : Prop :=
  ∀ n, P2197240350239130181.a n = A101166 n

theorem P2197240350239130181.correct : P2197240350239130181.Spec := by
  intro n
  simp only [A101166]

end A101166

/-! ## A101166.P15445378659093294906

`A001846(n)-C(n+4, 4)`
-/

namespace A101166.P15445378659093294906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n - (Nat.choose (n + 4) 4 : ℤ)

end

end A101166.P15445378659093294906

namespace A101166

/-- `A001846(n)-C(n+4, 4)` -/
def P15445378659093294906.Spec : Prop :=
  ∀ n, P15445378659093294906.a n = A101166 n

end A101166

/-! ## A101166.P16093694090041775560

`∑[(3*n+1)*A000217(n)]+(n-∑[n])²`
-/

namespace A101166.P16093694090041775560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A000217 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2

end

end A101166.P16093694090041775560

namespace A101166

/-- `∑[(3*n+1)*A000217(n)]+(n-∑[n])²` -/
def P16093694090041775560.Spec : Prop :=
  ∀ n, P16093694090041775560.a n = A101166 n

end A101166

/-! ## A101166.P17078131142104162937

`A163943(n)+A027441(n)`
-/

namespace A101166.P17078131142104162937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 n + A027441 n

end

end A101166.P17078131142104162937

namespace A101166

/-- `A163943(n)+A027441(n)` -/
def P17078131142104162937.Spec : Prop :=
  ∀ n, P17078131142104162937.a n = A101166 n

end A101166

/-! ## A101166.P3538661528440921108

`A302560(n+1)-A005898(n)`
-/

namespace A101166.P3538661528440921108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) - A005898 n

end

end A101166.P3538661528440921108

namespace A101166

/-- `A302560(n+1)-A005898(n)` -/
def P3538661528440921108.Spec : Prop :=
  ∀ n, P3538661528440921108.a n = A101166 n

end A101166

/-! ## A101166.P9825666608941657

`A302560(n+1)-(A000578(n+1)+A000578(n))`
-/

namespace A101166.P9825666608941657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302560 (n + 1) - (A000578 (n + 1) + A000578 n)

end

end A101166.P9825666608941657

namespace A101166

/-- `A302560(n+1)-(A000578(n+1)+A000578(n))` -/
def P9825666608941657.Spec : Prop :=
  ∀ n, P9825666608941657.a n = A101166 n

end A101166

/-! ## A101166.P391041409642605076

`Δ[n*A090809(n)]`
-/

namespace A101166.P391041409642605076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101166.P391041409642605076

namespace A101166

/-- `Δ[n*A090809(n)]` -/
def P391041409642605076.Spec : Prop :=
  ∀ n, P391041409642605076.a n = A101166 n

end A101166

/-!
# A101167: Nontrivial Delannoy numbers that are primes.

The programs for A101167, there is no canonical definition to state claims against.
-/

/-! ## A101167.P3148259284901812547

`p?[∪[A001844(n+2), A001846(n)]]`
-/

namespace A101167.P3148259284901812547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A101167.P3148259284901812547

/-! ## A101167.P6610660909526648438

`p?[∪[A133322(n+2), A001846(n)]]`
-/

namespace A101167.P6610660909526648438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133322 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A101167.P6610660909526648438

/-! ## A101167.P4556422890874716182

`p?[A003602((4*n+10)²)]`
-/

namespace A101167.P4556422890874716182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 ((4 * n + 10) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101167.P4556422890874716182

/-! ## A101167.P13798257553225996590

`A027862(A194009(∑[n]))`
-/

namespace A101167.P13798257553225996590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (A194009 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A101167.P13798257553225996590

/-! ## A101167.P12752786841725714725

`A027862(A203997(∑[n+1]))`
-/

namespace A101167.P12752786841725714725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (A203997 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A101167.P12752786841725714725

/-!
# A101168: Lengths of successive words (starting with a) under the substitution: {a -> aab, b -> aac, c -> a}.

The programs for A101168, the canonical program `A101168.P1306397963761767710` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101168 has offset 0).

The definition of A101168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101168.P1306397963761767710

`2*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101168

/-- `2*a(n-1)+2*a(n-2)+a(n-3)` -/
def P1306397963761767710.Spec : Prop :=
  ∀ n, (P1306397963761767710.a n : ℤ) = A101168 n

theorem P1306397963761767710.correct : P1306397963761767710.Spec := by
  intro n
  simp only [A101168]

end A101168

/-! ## A101168.P18158079001686463720

`ogf((1+x+x^2)/(1-2x-2x^2-x^3))`
-/

namespace A101168.P18158079001686463720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -2, -2, -1] n

end

end A101168.P18158079001686463720

namespace A101168

/-- `ogf((1+x+x^2)/(1-2x-2x^2-x^3))` -/
def P18158079001686463720.Spec : Prop :=
  ∀ n, P18158079001686463720.a n = A101168 n

end A101168

/-! ## A101168.P14004766466602815076

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A101168.P14004766466602815076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 3) + 2 * (a (n - 1) + a (n - 2))

end

end A101168.P14004766466602815076

namespace A101168

/-- `a(n-3)+2*(a(n-1)+a(n-2))` -/
def P14004766466602815076.Spec : Prop :=
  ∀ n, (P14004766466602815076.a n : ℤ) = A101168 n

end A101168

/-! ## A101168.P5668967699307577787

`A233828(n+2)`
-/

namespace A101168.P5668967699307577787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233828 (n + 2)

end

end A101168.P5668967699307577787

namespace A101168

/-- `A233828(n+2)` -/
def P5668967699307577787.Spec : Prop :=
  ∀ n, P5668967699307577787.a n = A101168 n

end A101168

/-! ## A101168.P9694510557105903767

`record[A233828(abs(1-n))]`
-/

namespace A101168.P9694510557105903767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233828 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101168.P9694510557105903767

namespace A101168

/-- `record[A233828(abs(1-n))]` -/
def P9694510557105903767.Spec : Prop :=
  ∀ n, P9694510557105903767.a n = A101168 n

end A101168

/-! ## A101168.P6831498914272088932

`abs(1-2*A077918(n))`
-/

namespace A101168.P6831498914272088932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A077918 n|

end

end A101168.P6831498914272088932

namespace A101168

/-- `abs(1-2*A077918(n))` -/
def P6831498914272088932.Spec : Prop :=
  ∀ n, P6831498914272088932.a n = A101168 n

end A101168

/-! ## A101168.P9900354677030835967

`A221677(n+1)+A077995(n)`
-/

namespace A101168.P9900354677030835967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221677 (n + 1) + A077995 n

end

end A101168.P9900354677030835967

namespace A101168

/-- `A221677(n+1)+A077995(n)` -/
def P9900354677030835967.Spec : Prop :=
  ∀ n, P9900354677030835967.a n = A101168 n

end A101168

/-! ## A101168.P9734127655652318974

`A221510(n+1)+A221677(n+1)+A033999(n)`
-/

namespace A101168.P9734127655652318974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221510 (n + 1) + (A221677 (n + 1) + A033999 n)

end

end A101168.P9734127655652318974

namespace A101168

/-- `A221510(n+1)+A221677(n+1)+A033999(n)` -/
def P9734127655652318974.Spec : Prop :=
  ∀ n, P9734127655652318974.a n = A101168 n

end A101168

/-! ## A101168.P17269750531134776425

`2*A077936(n)-a(n-1)` with `a(0)=1`
-/

namespace A101168.P17269750531134776425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A077936 n - a (n - 1)

end

end A101168.P17269750531134776425

namespace A101168

/-- `2*A077936(n)-a(n-1)` -/
def P17269750531134776425.Spec : Prop :=
  ∀ n, P17269750531134776425.a n = A101168 n

end A101168

/-! ## A101168.P3503239167746300625

`Δ[A077936(n)]+A077995(n)-A077936(n)`
-/

namespace A101168.P3503239167746300625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A077995 n - A077936 n)

end

end A101168.P3503239167746300625

namespace A101168

/-- `Δ[A077936(n)]+A077995(n)-A077936(n)` -/
def P3503239167746300625.Spec : Prop :=
  ∀ n, P3503239167746300625.a n = A101168 n

end A101168

/-! ## A101168.P348837950593148632

`record[abs(A233828(A002262(n)))]`
-/

namespace A101168.P348837950593148632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233828 (A002262 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101168.P348837950593148632

namespace A101168

/-- `record[abs(A233828(A002262(n)))]` -/
def P348837950593148632.Spec : Prop :=
  ∀ n, P348837950593148632.a n = A101168 n

end A101168

/-!
# A101169: Lengths of successive words (starting with a) under the substitution: {a -> aab, b -> aac, c -> ab}.

The programs for A101169, the canonical program `A101169.P498368695790101017` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101169 has offset 0).

The definition of A101169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101169.P498368695790101017

`2*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101169

/-- `2*a(n-1)+3*a(n-2)-a(n-3)` -/
def P498368695790101017.Spec : Prop :=
  ∀ n, P498368695790101017.a n = A101169 n

theorem P498368695790101017.correct : P498368695790101017.Spec := by
  intro n
  simp only [A101169]

end A101169

/-! ## A101169.P391711447939496437

`ogf((1+x)/(1-2x-3x^2+x^3))`
-/

namespace A101169.P391711447939496437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -3, 1] n

end

end A101169.P391711447939496437

namespace A101169

/-- `ogf((1+x)/(1-2x-3x^2+x^3))` -/
def P391711447939496437.Spec : Prop :=
  ∀ n, P391711447939496437.a n = A101169 n

end A101169

/-! ## A101169.P14899493048694624788

`∑[∑[A143787(n)]]`
-/

namespace A101169.P14899493048694624788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101169.P14899493048694624788

namespace A101169

/-- `∑[∑[A143787(n)]]` -/
def P14899493048694624788.Spec : Prop :=
  ∀ n, P14899493048694624788.a n = A101169 n

end A101169

/-! ## A101169.P9664017483988448033

`a(n-1)+A095125(n)+a(n-1)` with `a(0)=1`
-/

namespace A101169.P9664017483988448033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A095125 n + a (n - 1))

end

end A101169.P9664017483988448033

namespace A101169

/-- `a(n-1)+A095125(n)+a(n-1)` -/
def P9664017483988448033.Spec : Prop :=
  ∀ n, P9664017483988448033.a n = A101169 n

end A101169

/-! ## A101169.P5772705888536405129

`A095127(n+1)-A122299(n+1)`
-/

namespace A101169.P5772705888536405129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095127 (n + 1) - A122299 (n + 1)

end

end A101169.P5772705888536405129

namespace A101169

/-- `A095127(n+1)-A122299(n+1)` -/
def P5772705888536405129.Spec : Prop :=
  ∀ n, P5772705888536405129.a n = A101169 n

end A101169

/-! ## A101169.P17521784943432164199

`∑[A122299(n+1)+A122299(n+2)]`
-/

namespace A101169.P17521784943432164199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122299 (n + 1) + A122299 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101169.P17521784943432164199

namespace A101169

/-- `∑[A122299(n+1)+A122299(n+2)]` -/
def P17521784943432164199.Spec : Prop :=
  ∀ n, P17521784943432164199.a n = A101169 n

end A101169

/-! ## A101169.P5002023555867496038

`A095310(n+1)+A122299(n+2)-A095125(n+1)`
-/

namespace A101169.P5002023555867496038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095310 (n + 1) + (A122299 (n + 2) - A095125 (n + 1))

end

end A101169.P5002023555867496038

namespace A101169

/-- `A095310(n+1)+A122299(n+2)-A095125(n+1)` -/
def P5002023555867496038.Spec : Prop :=
  ∀ n, P5002023555867496038.a n = A101169 n

end A101169

/-! ## A101169.P2126148940826319360

`∑[A095125(n+1)+A095125(n+1)-A095127(n+1)]`
-/

namespace A101169.P2126148940826319360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095125 (n + 1) + (A095125 (n + 1) - A095127 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101169.P2126148940826319360

namespace A101169

/-- `∑[A095125(n+1)+A095125(n+1)-A095127(n+1)]` -/
def P2126148940826319360.Spec : Prop :=
  ∀ n, P2126148940826319360.a n = A101169 n

end A101169

/-! ## A101169.P8870988568949704414

`∑[2*A095125(n+1)-A095127(n+1)]`
-/

namespace A101169.P8870988568949704414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095125 (n + 1) - A095127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101169.P8870988568949704414

namespace A101169

/-- `∑[2*A095125(n+1)-A095127(n+1)]` -/
def P8870988568949704414.Spec : Prop :=
  ∀ n, P8870988568949704414.a n = A101169 n

end A101169

/-!
# A101170: a(n) divides the number formed by concatenating the sum of the digits of a(n) with a(n).

The programs for A101170, there is no canonical definition to state claims against.
-/

/-! ## A101170.P13131225615529800449

`record[gcd(n+1, A136613(n+1))]`
-/

namespace A101170.P13131225615529800449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A136613 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101170.P13131225615529800449

/-! ## A101170.P8264060067306894521

`record[A028310(gcd(n, A136613(n)))]`
-/

namespace A101170.P8264060067306894521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A136613 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101170.P8264060067306894521

/-! ## A101170.P3577502662223071561

`eq[A136613(n)%A028310(n), A000038(n)]`
-/

namespace A101170.P3577502662223071561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136613 n) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101170.P3577502662223071561

/-! ## A101170.P5459374070935589119

`∩[A083970(n+1), A108549(n+1)]`
-/

namespace A101170.P5459374070935589119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101170.P5459374070935589119

/-! ## A101170.P6593434001456910808

`record[gcd((A052008(A020338(n+1))-A056524(n+1))/11, A008706(n+1))]`
-/

namespace A101170.P6593434001456910808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A052008 (A020338 (n + 1)).toNat - A056524 (n + 1) : ℚ) / 11)) (A008706 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101170.P6593434001456910808

/-!
# A101172: Sequence whose Mobius transform leads to the first differences of the terms.

The programs for A101172, there is no canonical definition to state claims against.
-/

/-! ## A101172.P11941051656245965516

`∑[A101173(round(acot(n)+n))]`
-/

namespace A101172.P11941051656245965516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101173 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101172.P11941051656245965516

/-! ## A101172.P12979313247545705511

`A101173(n)+a(n-1)` with `a(0)=1`
-/

namespace A101172.P12979313247545705511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101173 n + a (n - 1)

end

end A101172.P12979313247545705511

/-! ## A101172.P8009789515931508598

`∑[A101173(abs(1-n)+1)]`
-/

namespace A101172.P8009789515931508598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101173 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101172.P8009789515931508598

/-! ## A101172.P16824925104508393163

`∑{d}[n+1, A101173(#)]`
-/

namespace A101172.P16824925104508393163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101173 d

end

end A101172.P16824925104508393163

/-! ## A101172.P14526768248266341489

`∑[A101173(n+1)]+1-A101173(n+1)`
-/

namespace A101172.P14526768248266341489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A101173 (n + 1))

end

end A101172.P14526768248266341489

/-!
# A101173: First differences of sequence defined in A101172. Also, the Mobius transform of that sequence.

The programs for A101173, there is no canonical definition to state claims against.
-/

/-! ## A101173.P13103708269174383728

`Δ[A101172(n+1)]`
-/

namespace A101173.P13103708269174383728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101173.P13103708269174383728

/-! ## A101173.P14204889437020896293

`2^n-A155042(n+1)`
-/

namespace A101173.P14204889437020896293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A155042 (n + 1)

end

end A101173.P14204889437020896293

/-! ## A101173.P10142156053378599133

`Δ[record[A101172(A038569(n))]]`
-/

namespace A101173.P10142156053378599133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101173.P10142156053378599133

/-! ## A101173.P9422801293942161357

`Δ[record[A101172(A065648(n))]]`
-/

namespace A101173.P9422801293942161357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101173.P9422801293942161357

/-! ## A101173.P9759764736746588470

`A101172(n+2)-A101172(n+1)`
-/

namespace A101173.P9759764736746588470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (n + 2) - A101172 (n + 1)

end

end A101173.P9759764736746588470

/-! ## A101173.P17884012588685964649

`∑{d}[n+1, A008683(#)*A101172((n+1)/#)]`
-/

namespace A101173.P17884012588685964649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A101172 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A101173.P17884012588685964649

/-! ## A101173.P1411266777730493874

`Δ[record[A101172(A028920(n))]]`
-/

namespace A101173.P1411266777730493874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101173.P1411266777730493874

/-! ## A101173.P17457988922154679809

`Δ[record[A101172(A051340(n))]]`
-/

namespace A101173.P17457988922154679809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101172 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101173.P17457988922154679809

/-!
# A101175: Initial terms of rows of triangle in A101174.

The programs for A101175, there is no canonical definition to state claims against.
-/

/-! ## A101175.P7469650753570602478

`A101174(∑[n]+1)`
-/

namespace A101175.P7469650753570602478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101175.P7469650753570602478

/-! ## A101175.P1641408127846582535

`A101174(A000124(n))%73`
-/

namespace A101175.P1641408127846582535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101174 (A000124 n).toNat) 73

end

end A101175.P1641408127846582535

/-! ## A101175.P518964379826205766

`A000027(A101174(record[C(n, 2)-n]-n+1))`
-/

namespace A101175.P518964379826205766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A101174 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) + 1).toNat).toNat

end

end A101175.P518964379826205766

/-! ## A101175.P8684964564288318948

`A101174(A000124(n))+A025442(n)`
-/

namespace A101175.P8684964564288318948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (A000124 n).toNat + A025442 n

end

end A101175.P8684964564288318948

/-! ## A101175.P6829729117624836426

`A185236(n)+A101174(A000124(n))`
-/

namespace A101175.P6829729117624836426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + A101174 (A000124 n).toNat

end

end A101175.P6829729117624836426

/-!
# A101176: Final terms of rows of triangle in A101174.

The programs for A101176, there is no canonical definition to state claims against.
-/

/-! ## A101176.P14162384404047873062

`A101174(∑[n+1])`
-/

namespace A101176.P14162384404047873062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101176.P14162384404047873062

/-! ## A101176.P5803911844051285314

`record[A101174(A133825(n))]`
-/

namespace A101176.P5803911844051285314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101176.P5803911844051285314

/-! ## A101176.P12536152223729008410

`record[A101174(A260220(n))]`
-/

namespace A101176.P12536152223729008410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (A260220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101176.P12536152223729008410

/-! ## A101176.P6118068663754747919

`record[A101174(A038722(n+1))]`
-/

namespace A101176.P6118068663754747919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101176.P6118068663754747919

/-! ## A101176.P6901810567846706804

`record[A101174(A059399(n+1))]`
-/

namespace A101176.P6901810567846706804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101174 (A059399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101176.P6901810567846706804

/-!
# A101177: Product of terms in n-th row of triangle in A101174.

The programs for A101177, there is no canonical definition to state claims against.
-/

/-! ## A101177.P8814825698692517923

`A077176(n+1)*A101179(n+1)`
-/

namespace A101177.P8814825698692517923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077176 (n + 1) * A101179 (n + 1)

end

end A101177.P8814825698692517923

/-! ## A101177.P10055894189265404615

`A077175(n+1)/A100918(n+1)*A101179(n+1)`
-/

namespace A101177.P10055894189265404615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077175 (n + 1) : ℚ) / (A100918 (n + 1) : ℚ) * (A101179 (n + 1) : ℚ)

end

end A101177.P10055894189265404615

/-! ## A101177.P4541991925427197966

`A077176(n+1)*A181440(A100918(n+1)+A000007(n))`
-/

namespace A101177.P4541991925427197966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077176 (n + 1) * A181440 (A100918 (n + 1) + A000007 n).toNat

end

end A101177.P4541991925427197966

/-!
# A101179: A101177(n) / A101178(n).

The programs for A101179, there is no canonical definition to state claims against.
-/

/-! ## A101179.P8435089009355768260

`A101177(n+1)/A077176(n+1)`
-/

namespace A101179.P8435089009355768260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101177 (n + 1) : ℚ) / (A077176 (n + 1) : ℚ)

end

end A101179.P8435089009355768260

/-! ## A101179.P14424766754110461709

`A100918(n+1)/A077175(n+1)*A101177(n+1)`
-/

namespace A101179.P14424766754110461709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100918 (n + 1) : ℚ) / (A077175 (n + 1) : ℚ) * (A101177 (n + 1) : ℚ)

end

end A101179.P14424766754110461709

/-! ## A101179.P16944802648861403726

`A101177(n+1)/(A185236(n)+A077175(n+1)/A100918(n+1))`
-/

namespace A101179.P16944802648861403726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101177 (n + 1) : ℚ) / ((A185236 n : ℚ) + (A077175 (n + 1) : ℚ) / (A100918 (n + 1) : ℚ))

end

end A101179.P16944802648861403726

/-! ## A101179.P1788773241389799218

`A101177(n+1)/(A077175(n+1)/A100918(n+1))%A077175(n+2)`
-/

namespace A101179.P1788773241389799218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101177 (n + 1) : ℚ) / (Int.tmod (SequenceMachineLib.roundAway ((A077175 (n + 1) : ℚ) / (A100918 (n + 1) : ℚ))) (A077175 (n + 2)) : ℚ)

end

end A101179.P1788773241389799218

/-! ## A101179.P6782732005031479246

`A100918(n+1)-A117200(A208573(n+1))`
-/

namespace A101179.P6782732005031479246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100918 (n + 1) - A117200 (A208573 (n + 1)).toNat

end

end A101179.P6782732005031479246

/-!
# A101183: Number of times (>0) function f must be applied in A100800 to arrive at multiple of n, or 0 if multiple of n is never reached.

The programs for A101183, there is no canonical definition to state claims against.
-/

/-! ## A101183.P17894831539227978809

`∏{e}[A029576(n), #]`
-/

namespace A101183.P17894831539227978809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A101183.P17894831539227978809

/-! ## A101183.P5058149437484610483

`A274105(A035040(n))`
-/

namespace A101183.P5058149437484610483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274105 (A035040 n).toNat

end

end A101183.P5058149437484610483

/-! ## A101183.P11236075022230483148

`A213001(A099884(n))`
-/

namespace A101183.P11236075022230483148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213001 (A099884 n).toNat

end

end A101183.P11236075022230483148

/-! ## A101183.P18339131949373971037

`A139246(A229888(n))`
-/

namespace A101183.P18339131949373971037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (A229888 n).toNat

end

end A101183.P18339131949373971037

/-! ## A101183.P624491319662346617

`A118290(A336009(n))`
-/

namespace A101183.P624491319662346617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118290 (A336009 n).toNat

end

end A101183.P624491319662346617

/-!
# A101184: a(n) = n + pi(n) + pi(pi(n)) + pi(pi(pi(n))) + pi(pi(pi(pi(n)))) + ...

The programs for A101184, the canonical program `A101184.P4962460749792820799` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101184 has offset 1).

The definition of A101184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101184.P5865797255923743802

`∑[A049076(n+1)]`
-/

namespace A101184.P5865797255923743802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P5865797255923743802

namespace A101184

/-- `∑[A049076(n+1)]` -/
def P5865797255923743802.Spec : Prop :=
  ∀ n, P5865797255923743802.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P9309499594018262932

`∑[A078442(n+1)+1]`
-/

namespace A101184.P9309499594018262932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P9309499594018262932

namespace A101184

/-- `∑[A078442(n+1)+1]` -/
def P9309499594018262932.Spec : Prop :=
  ∀ n, P9309499594018262932.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P4962460749792820799

`a(A033270(n+1))+1+n` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A101184

/-- `a(A033270(n+1))+1+n` -/
def P4962460749792820799.Spec : Prop :=
  ∀ n, (P4962460749792820799.a n : ℤ) = A101184 (n + 1)

theorem P4962460749792820799.correct : P4962460749792820799.Spec := by
  intro n
  simp only [A101184, Nat.add_sub_cancel]

end A101184

/-! ## A101184.P16174221189022445465

`a(A082460(or(1, n)))+n+1` with `a(0)=1`
-/

namespace A101184.P16174221189022445465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A082460 (Nat.lor 1 n)).toNat + (n + 1)

end

end A101184.P16174221189022445465

namespace A101184

/-- `a(A082460(or(1, n)))+n+1` -/
def P16174221189022445465.Spec : Prop :=
  ∀ n, (P16174221189022445465.a n : ℤ) = A101184 (n + 1)

end A101184

/-! ## A101184.P8857559725656061120

`a(A000720(n+1)-1)+n+1` with `a(0)=1`
-/

namespace A101184.P8857559725656061120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000720 (n + 1) - 1).toNat + (n + 1)

end

end A101184.P8857559725656061120

namespace A101184

/-- `a(A000720(n+1)-1)+n+1` -/
def P8857559725656061120.Spec : Prop :=
  ∀ n, (P8857559725656061120.a n : ℤ) = A101184 (n + 1)

end A101184

/-! ## A101184.P9243396710230312160

`a(∑[A010051(n+1)]-1)+n+1` with `a(0)=1`
-/

namespace A101184.P9243396710230312160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + (n + 1)

end

end A101184.P9243396710230312160

namespace A101184

/-- `a(∑[A010051(n+1)]-1)+n+1` -/
def P9243396710230312160.Spec : Prop :=
  ∀ n, (P9243396710230312160.a n : ℤ) = A101184 (n + 1)

end A101184

/-! ## A101184.P8379022679104657234

`a(∑[char[A000040(n+1)-1]]-1)+1+n` with `a(0)=1`
-/

namespace A101184.P8379022679104657234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1 + n

end

end A101184.P8379022679104657234

namespace A101184

/-- `a(∑[char[A000040(n+1)-1]]-1)+1+n` -/
def P8379022679104657234.Spec : Prop :=
  ∀ n, (P8379022679104657234.a n : ℤ) = A101184 (n + 1)

end A101184

/-! ## A101184.P4158791299555583203

`a(∑[char[A006530(2*(n+1))-1]]-1)+1+n` with `a(0)=1`
-/

namespace A101184.P4158791299555583203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1 + n

end

end A101184.P4158791299555583203

namespace A101184

/-- `a(∑[char[A006530(2*(n+1))-1]]-1)+1+n` -/
def P4158791299555583203.Spec : Prop :=
  ∀ n, (P4158791299555583203.a n : ℤ) = A101184 (n + 1)

end A101184

/-! ## A101184.P14736567036980321216

`a(A230980(n+1)-1)+n+1` with `a(0)=1`
-/

namespace A101184.P14736567036980321216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A230980 (n + 1) - 1).toNat + (n + 1)

end

end A101184.P14736567036980321216

namespace A101184

/-- `a(A230980(n+1)-1)+n+1` -/
def P14736567036980321216.Spec : Prop :=
  ∀ n, (P14736567036980321216.a n : ℤ) = A101184 (n + 1)

end A101184

/-! ## A101184.P14508401498153404951

`∑[A322027(A000040(n+1))]`
-/

namespace A101184.P14508401498153404951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P14508401498153404951

namespace A101184

/-- `∑[A322027(A000040(n+1))]` -/
def P14508401498153404951.Spec : Prop :=
  ∀ n, P14508401498153404951.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P4245137995703599823

`∑[A322027(A001747(n+2)/2)]`
-/

namespace A101184.P4245137995703599823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P4245137995703599823

namespace A101184

/-- `∑[A322027(A001747(n+2)/2)]` -/
def P4245137995703599823.Spec : Prop :=
  ∀ n, P4245137995703599823.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P9334509096298952071

`∑[A322027(p?[A322030(n+1)])]`
-/

namespace A101184.P9334509096298952071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322030 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P9334509096298952071

namespace A101184

/-- `∑[A322027(p?[A322030(n+1)])]` -/
def P9334509096298952071.Spec : Prop :=
  ∀ n, P9334509096298952071.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P18343277506274094997

`∑[A322027(A001747(n+2))]`
-/

namespace A101184.P18343277506274094997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A001747 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P18343277506274094997

namespace A101184

/-- `∑[A322027(A001747(n+2))]` -/
def P18343277506274094997.Spec : Prop :=
  ∀ n, P18343277506274094997.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P5420023176487276165

`∑[A078442(A008578(n+2))]`
-/

namespace A101184.P5420023176487276165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078442 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P5420023176487276165

namespace A101184

/-- `∑[A078442(A008578(n+2))]` -/
def P5420023176487276165.Spec : Prop :=
  ∀ n, P5420023176487276165.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P7887682525005871549

`∑[A001511(A135141(n+1))]`
-/

namespace A101184.P7887682525005871549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A135141 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P7887682525005871549

namespace A101184

/-- `∑[A001511(A135141(n+1))]` -/
def P7887682525005871549.Spec : Prop :=
  ∀ n, P7887682525005871549.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P15653349548081731051

`∑[A055396(A246681(n+1))]`
-/

namespace A101184.P15653349548081731051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A246681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P15653349548081731051

namespace A101184

/-- `∑[A055396(A246681(n+1))]` -/
def P15653349548081731051.Spec : Prop :=
  ∀ n, P15653349548081731051.a n = A101184 (n + 1)

end A101184

/-! ## A101184.P12029039436024215755

`∑[A001511(A246367(n+1))]`
-/

namespace A101184.P12029039436024215755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A246367 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101184.P12029039436024215755

namespace A101184

/-- `∑[A001511(A246367(n+1))]` -/
def P12029039436024215755.Spec : Prop :=
  ∀ n, P12029039436024215755.a n = A101184 (n + 1)

end A101184

/-!
# A101185: Complement of A101184.

The programs for A101185, there is no canonical definition to state claims against.
-/

/-! ## A101185.P526078218162157096

`comp[a(A000720(n))+n]` with `a(0)=0`
-/

namespace A101185.P526078218162157096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A000720 n).toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A101185.P526078218162157096

/-! ## A101185.P12098576291854838037

`eq[char[A101184(n+1)], A000007(n)]`
-/

namespace A101185.P12098576291854838037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101185.P12098576291854838037

/-! ## A101185.P3601178778863696400

`eq[char[A101184(n+1)], A000038(n)]`
-/

namespace A101185.P3601178778863696400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101185.P3601178778863696400

/-! ## A101185.P4850936179035162075

`comp[∪[A101165(2*n), A101184(n+1)]]`
-/

namespace A101185.P4850936179035162075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A101185.P4850936179035162075

/-! ## A101185.P18135422162633989500

`comp[∪[A101166(2*n), A101184(n+1)]]`
-/

namespace A101185.P18135422162633989500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101166 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A101185.P18135422162633989500

/-!
# A101190: G.f.: A(x) = Sum_{n>=0} a(n)/2^A005187(n) * x^n = lim_{n->oo} F(n)^(1/2^n) where F(n) is defined by F(n) = F(n-1)^2 + x^(2^n-1) for n >= 1 with F(0) = 1.

The programs for A101190, there is no canonical definition to state claims against.
-/

/-! ## A101190.P18157728348945208275

`A358378(A000108(n))-A278385(2*n+5)`
-/

namespace A101190.P18157728348945208275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (A000108 n).toNat - A278385 (2 * n + 5)

end

end A101190.P18157728348945208275

/-!
# A101191: G.f.: A(x) = Sum_{n>=0}a(n)/2^A004134(n)*x^n = limit_{n->oo} F(n)^(1/2^(n+1)) where F(n) is the n-th iteration of: F(0) = 1, F(n) = F(n-1)^2 + x^(2^n-1) for n>=1.

The programs for A101191, there is no canonical definition to state claims against.
-/

/-! ## A101191.P10250013413657518891

`A001057(floor((A354233(n)+1)/2))`
-/

namespace A101191.P10250013413657518891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 ⌊(A354233 n + 1 : ℚ) / 2⌋.toNat

end

end A101191.P10250013413657518891

/-!
# A101192: G.f. defined as the limit: A(x) = lim_{n->oo} F(n)^(1/3^(n-1)) where F(n) is the n-th iteration of: F(0) = 1, F(n) = F(n-1)^3 + (3x)^((3^n-1)/2) for n >= 1.

The programs for A101192, there is no canonical definition to state claims against.
-/

/-! ## A101192.P15850548426420067093

`A288571(lcm(A013939(n+3), A014068(n)))`
-/

namespace A101192.P15850548426420067093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288571 (Int.lcm (A013939 (n + 3)) (A014068 n))

end

end A101192.P15850548426420067093

/-!
# A101193: G.f. defined as the limit: A(x) = lim_{n->oo} F(n)^(1/4^(n-1)) where F(n) is the n-th iteration of: F(0) = 1, F(n) = F(n-1)^4 + (4x)^((4^n-1)/3) for n >= 1.

The programs for A101193, there is no canonical definition to state claims against.
-/

/-! ## A101193.P8113705570651979506

`∑{p}[3-n, #]^∑{p}[n+1, #!]`
-/

namespace A101193.P8113705570651979506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial p)

end

end A101193.P8113705570651979506

/-! ## A101193.P14812776952186068679

`4^(a(n-1)+4)` with `a(0)=1, a(1)=4, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A101193.P14812776952186068679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 0, 0, 0] fun n a =>
  4 ^ (a (n - 1) + 4)

end

end A101193.P14812776952186068679

/-!
# A101194: G.f. defined as the limit: A(x) = lim_{n->oo} F(n)^(1/5^(n-1)) where F(n) is the n-th iteration of: F(0) = 1, F(n) = F(n-1)^5 + (5x)^((5^n-1)/4) for n >= 1.

The programs for A101194, there is no canonical definition to state claims against.
-/

/-! ## A101194.P12041493908594959461

`∏{p}[A281619(n+1), A010676(#)]`
-/

namespace A101194.P12041493908594959461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A010676 p

end

end A101194.P12041493908594959461

/-! ## A101194.P6343188639753022265

`A057637(xor(2*n, A120033(2*(n+1))))`
-/

namespace A101194.P6343188639753022265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (Int.xor (2 * n : ℤ) (A120033 (2 * (n + 1)))).toNat

end

end A101194.P6343188639753022265

/-! ## A101194.P12750491694489766062

`A133337(comp[or(n, n+3)]+A032551(n+2)+1)`
-/

namespace A101194.P12750491694489766062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133337 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A032551 (n + 2) + 1)).toNat

end

end A101194.P12750491694489766062

/-!
# A101195: Expansion of psi(x^3) / psi(x) in powers of x where psi() is a Ramanujan theta function.

The programs for A101195, there is no canonical definition to state claims against.
-/

/-! ## A101195.P16794767253536029074

`(-1)^n*A036018(n)`
-/

namespace A101195.P16794767253536029074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A036018 n

end

end A101195.P16794767253536029074

/-! ## A101195.P3887236556362132948

`A036018(n)/A033999(n)`
-/

namespace A101195.P3887236556362132948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036018 n : ℚ) / (A033999 n : ℚ)

end

end A101195.P3887236556362132948

/-! ## A101195.P6391907997418743638

`A036018(n)/ratio[A057077(n)]`
-/

namespace A101195.P6391907997418743638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036018 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A101195.P6391907997418743638

/-! ## A101195.P3553608510360107472

`A271722(Δ[n²])`
-/

namespace A101195.P3553608510360107472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101195.P3553608510360107472

/-! ## A101195.P12118637303875943384

`A271722(n+1+n)+and(2, n²)`
-/

namespace A101195.P12118637303875943384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271722 (n + 1 + n) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A101195.P12118637303875943384

/-! ## A101195.P8443173869571633773

`A036018(n)*A056594(2*n)`
-/

namespace A101195.P8443173869571633773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036018 n * A056594 (2 * n)

end

end A101195.P8443173869571633773

/-! ## A101195.P8594767467063741444

`A036018(n)*A057077(2*n)`
-/

namespace A101195.P8594767467063741444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036018 n * A057077 (2 * n)

end

end A101195.P8594767467063741444

/-! ## A101195.P1852599522131006872

`2*A271722(2*n+1)-A271722(2*n+1)`
-/

namespace A101195.P1852599522131006872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271722 (2 * n + 1) - A271722 (2 * n + 1)

end

end A101195.P1852599522131006872

/-! ## A101195.P5110494438527198943

`A256626(3*n+1)`
-/

namespace A101195.P5110494438527198943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (3 * n + 1)

end

end A101195.P5110494438527198943

/-! ## A101195.P16979062038738168440

`A256626(A008486(n)+1)+A000007(n)`
-/

namespace A101195.P16979062038738168440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (A008486 n + 1).toNat + A000007 n

end

end A101195.P16979062038738168440

/-! ## A101195.P3643822627277405776

`A271722(n+1+n)+A010057(A084696(n+1))`
-/

namespace A101195.P3643822627277405776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271722 (n + 1 + n) + A010057 (A084696 (n + 1)).toNat

end

end A101195.P3643822627277405776

/-!
# A101196: Position of n-th n after the decimal point in Pi.

The programs for A101196, there is no canonical definition to state claims against.
-/

/-! ## A101196.P15677365429662793187

`A196732(n+1)-A009001(A077957(n))`
-/

namespace A101196.P15677365429662793187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196732 (n + 1) - A009001 (A077957 n).toNat

end

end A101196.P15677365429662793187

/-! ## A101196.P16094425859507316483

`A196732(n+1)-A009001(A011782(n))`
-/

namespace A101196.P16094425859507316483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196732 (n + 1) - A009001 (A011782 n).toNat

end

end A101196.P16094425859507316483

/-! ## A101196.P9070130320011447852

`A196732(n+1)-A009001(A131577(n))`
-/

namespace A101196.P9070130320011447852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196732 (n + 1) - A009001 (A131577 n).toNat

end

end A101196.P9070130320011447852

/-! ## A101196.P7301636156088500792

`A065254(A078213(n+1)+10*n)-A009001(A011782(n))`
-/

namespace A101196.P7301636156088500792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A078213 (n + 1) + (10 * n : ℤ)).toNat - A009001 (A011782 n).toNat

end

end A101196.P7301636156088500792

/-! ## A101196.P12878583558121306134

`A065254(A078213(n+1)+10*n)-A009001(A077957(n))`
-/

namespace A101196.P12878583558121306134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A078213 (n + 1) + (10 * n : ℤ)).toNat - A009001 (A077957 n).toNat

end

end A101196.P12878583558121306134

/-!
# A101197: Lengths of successive words (starting with a) under the substitution: {a -> aab, b -> aac, c -> b}.

The programs for A101197, the canonical program `A101197.P1686148446952103945` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101197 has offset 0).

The definition of A101197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101197.P1686148446952103945

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101197

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P1686148446952103945.Spec : Prop :=
  ∀ n, P1686148446952103945.a n = A101197 n

theorem P1686148446952103945.correct : P1686148446952103945.Spec := by
  intro n
  simp only [A101197]

end A101197

/-! ## A101197.P9363644632473156754

`ogf((1+x)/(1-2x-3x^2+2x^3))`
-/

namespace A101197.P9363644632473156754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -3, 2] n

end

end A101197.P9363644632473156754

namespace A101197

/-- `ogf((1+x)/(1-2x-3x^2+2x^3))` -/
def P9363644632473156754.Spec : Prop :=
  ∀ n, P9363644632473156754.a n = A101197 n

end A101197

/-! ## A101197.P16076961515004859298

`2*A046672(n)-A054854(n)`
-/

namespace A101197.P16076961515004859298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046672 n - A054854 n

end

end A101197.P16076961515004859298

namespace A101197

/-- `2*A046672(n)-A054854(n)` -/
def P16076961515004859298.Spec : Prop :=
  ∀ n, P16076961515004859298.a n = A101197 n

end A101197

/-! ## A101197.P1713686021907985852

`A054854(n)+∑[A230893(n+1)]`
-/

namespace A101197.P1713686021907985852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101197.P1713686021907985852

namespace A101197

/-- `A054854(n)+∑[A230893(n+1)]` -/
def P1713686021907985852.Spec : Prop :=
  ∀ n, P1713686021907985852.a n = A101197 n

end A101197

/-! ## A101197.P14510114325176433277

`A054854(n+1)-A230893(n+1)`
-/

namespace A101197.P14510114325176433277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054854 (n + 1) - A230893 (n + 1)

end

end A101197.P14510114325176433277

namespace A101197

/-- `A054854(n+1)-A230893(n+1)` -/
def P14510114325176433277.Spec : Prop :=
  ∀ n, P14510114325176433277.a n = A101197 n

end A101197

/-! ## A101197.P2142013211102024923

`Δ[A046672(n)]-A230893(n+1)`
-/

namespace A101197.P2142013211102024923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A230893 (n + 1)

end

end A101197.P2142013211102024923

namespace A101197

/-- `Δ[A046672(n)]-A230893(n+1)` -/
def P2142013211102024923.Spec : Prop :=
  ∀ n, P2142013211102024923.a n = A101197 n

end A101197

/-! ## A101197.P11298514933818148199

`3*A046672(n)-A228501(n+1)`
-/

namespace A101197.P11298514933818148199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A046672 n - A228501 (n + 1)

end

end A101197.P11298514933818148199

namespace A101197

/-- `3*A046672(n)-A228501(n+1)` -/
def P11298514933818148199.Spec : Prop :=
  ∀ n, P11298514933818148199.a n = A101197 n

end A101197

/-! ## A101197.P16516141107445006125

`A259508(n+1)-A251319(n+1)`
-/

namespace A101197.P16516141107445006125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 1) - A251319 (n + 1)

end

end A101197.P16516141107445006125

namespace A101197

/-- `A259508(n+1)-A251319(n+1)` -/
def P16516141107445006125.Spec : Prop :=
  ∀ n, P16516141107445006125.a n = A101197 n

end A101197

/-! ## A101197.P354116724805112880

`Δ[A259508(n+2)]%A259508(n+1)`
-/

namespace A101197.P354116724805112880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259508 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A259508 (n + 1))

end

end A101197.P354116724805112880

namespace A101197

/-- `Δ[A259508(n+2)]%A259508(n+1)` -/
def P354116724805112880.Spec : Prop :=
  ∀ n, P354116724805112880.a n = A101197 n

end A101197

/-!
# A101198: Number of partitions of n with rank 1 (the rank of a partition is the largest part minus the number of parts).

The programs for A101198, there is no canonical definition to state claims against.
-/

/-! ## A101198.P7251595353979749731

`A064173(n+1)-A123975(n+1)`
-/

namespace A101198.P7251595353979749731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - A123975 (n + 1)

end

end A101198.P7251595353979749731

/-! ## A101198.P9264409981413058521

`Δ[A064174(n+1)]-A101199(n+1)`
-/

namespace A101198.P9264409981413058521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101199 (n + 1)

end

end A101198.P9264409981413058521

/-! ## A101198.P12933356664926994721

`A064174(n+2)-(A101199(n+1)+A064174(n+1))`
-/

namespace A101198.P12933356664926994721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 2) - (A101199 (n + 1) + A064174 (n + 1))

end

end A101198.P12933356664926994721

/-! ## A101198.P7737832549174135552

`A000041(n+1)-(A123975(n+1)+A064174(n+1))`
-/

namespace A101198.P7737832549174135552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A123975 (n + 1) + A064174 (n + 1))

end

end A101198.P7737832549174135552

/-! ## A101198.P9878158963871590470

`Δ[A000041(n+1)-A064173(n+1)]-A101199(n+1)`
-/

namespace A101198.P9878158963871590470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101199 (n + 1)

end

end A101198.P9878158963871590470

/-! ## A101198.P7543994885309294308

`Δ[(A047993(n+1)+A000041(n+1))/2]-A101199(n+1)`
-/

namespace A101198.P7543994885309294308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047993 (n + 1) + A000041 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A101199 (n + 1) : ℚ)

end

end A101198.P7543994885309294308

/-! ## A101198.P17663583869384846522

`A129528(n+1)-A047993(n+1)`
-/

namespace A101198.P17663583869384846522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129528 (n + 1) - A047993 (n + 1)

end

end A101198.P17663583869384846522

/-! ## A101198.P15108499575633470472

`A105806(∑[n]+2)`
-/

namespace A101198.P15108499575633470472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A101198.P15108499575633470472

/-! ## A101198.P14011945996537438375

`A105806(A133263(n))-A000007(n)`
-/

namespace A101198.P14011945996537438375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105806 (A133263 n).toNat - A000007 n

end

end A101198.P14011945996537438375

/-! ## A101198.P13588912205263858151

`A105806(A133263(n))%A000070(n)`
-/

namespace A101198.P13588912205263858151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105806 (A133263 n).toNat) (A000070 n)

end

end A101198.P13588912205263858151

/-! ## A101198.P4453702348100195709

`A105806(A133263(n))-A000038(n)/2`
-/

namespace A101198.P4453702348100195709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105806 (A133263 n).toNat : ℚ) - (A000038 n : ℚ) / 2

end

end A101198.P4453702348100195709

/-! ## A101198.P7535894513232163276

`xor(A000007(2*n), A105806(A133263(n)))`
-/

namespace A101198.P7535894513232163276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A105806 (A133263 n).toNat)

end

end A101198.P7535894513232163276

/-! ## A101198.P3544465870274945156

`char[A120385(n+1)]*A105806(A133263(n))`
-/

namespace A101198.P3544465870274945156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120385 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A105806 (A133263 n).toNat

end

end A101198.P3544465870274945156

/-!
# A101199: Number of partitions of n with rank 2 (the rank of a partition is the largest part minus the number of parts).

The programs for A101199, there is no canonical definition to state claims against.
-/

/-! ## A101199.P4247636862937938910

`A123975(n+1)-A363230(n+1)`
-/

namespace A101199.P4247636862937938910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1) - A363230 (n + 1)

end

end A101199.P4247636862937938910

/-! ## A101199.P17401371487458936723

`Δ[A064174(n+1)]-A101198(n+1)`
-/

namespace A101199.P17401371487458936723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101198 (n + 1)

end

end A101199.P17401371487458936723

/-! ## A101199.P12204450611359381571

`A064174(n+2)-(A101198(n+1)+A064174(n+1))`
-/

namespace A101199.P12204450611359381571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 2) - (A101198 (n + 1) + A064174 (n + 1))

end

end A101199.P12204450611359381571

/-! ## A101199.P16119153671246720577

`A123975(n+1)+A064174(n+2)-A000041(n+1)`
-/

namespace A101199.P16119153671246720577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1) + (A064174 (n + 2) - A000041 (n + 1))

end

end A101199.P16119153671246720577

/-! ## A101199.P9910823456529390517

`Δ[A064174(n+1)]-(A129528(n+1)-A047993(n+1))`
-/

namespace A101199.P9910823456529390517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A129528 (n + 1) - A047993 (n + 1))

end

end A101199.P9910823456529390517

/-! ## A101199.P12673701697983511411

`A123975(n+1)-(A363231(n+1)+A101200(n+1))`
-/

namespace A101199.P12673701697983511411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1) - (A363231 (n + 1) + A101200 (n + 1))

end

end A101199.P12673701697983511411

/-! ## A101199.P13410730949730467163

`A063995(A027688(n)+char[1])`
-/

namespace A101199.P13410730949730467163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A027688 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A101199.P13410730949730467163

/-! ## A101199.P18199730017081708775

`A063995(A027688(n-char[1]))`
-/

namespace A101199.P18199730017081708775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A027688 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A101199.P18199730017081708775

/-! ## A101199.P9173704710817511016

`A063995(A063524(n)+A027688(n))`
-/

namespace A101199.P9173704710817511016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A063524 n + A027688 n).toNat

end

end A101199.P9173704710817511016

/-! ## A101199.P16646981698658135413

`A063995(A027689(n)-A060576(n))`
-/

namespace A101199.P16646981698658135413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063995 (A027689 n - A060576 n).toNat

end

end A101199.P16646981698658135413

/-! ## A101199.P14247102258336078047

`A060576(n)*A063995(A027688(n))`
-/

namespace A101199.P14247102258336078047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A063995 (A027688 n).toNat

end

end A101199.P14247102258336078047

/-! ## A101199.P3386989159902090605

`A105806(A152950(n+1))%A199927(n)`
-/

namespace A101199.P3386989159902090605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105806 (A152950 (n + 1)).toNat) (A199927 n)

end

end A101199.P3386989159902090605

/-! ## A101199.P7199389378269983389

`C(A105806(A152950(n+1)), A141044(n))`
-/

namespace A101199.P7199389378269983389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105806 (A152950 (n + 1)).toNat).toNat (A141044 n).toNat

end

end A101199.P7199389378269983389

