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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A338100: Number of spanning trees in the n X 2 king graph.

The programs for A338100, the canonical program `A338100.P10017891149789872412` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338100 has offset 1).

The definition of A338100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338100.P10017891149789872412

`12*a(n-1)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338100

/-- `12*a(n-1)` -/
def P10017891149789872412.Spec : Prop :=
  ∀ n, (P10017891149789872412.a n : ℤ) = A338100 (n + 1)

theorem P10017891149789872412.correct : P10017891149789872412.Spec := by
  intro n
  simp only [A338100, Nat.add_sub_cancel]

end A338100

/-! ## A338100.P13592940581558736848

`floor(4/3*12^n)`
-/

namespace A338100.P13592940581558736848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (12 ^ n : ℚ)⌋

end

end A338100.P13592940581558736848

namespace A338100

/-- `floor(4/3*12^n)` -/
def P13592940581558736848.Spec : Prop :=
  ∀ n, P13592940581558736848.a n = A338100 (n + 1)

end A338100

/-! ## A338100.P15076071708097802191

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=16, a(2)=12`
-/

namespace A338100.P15076071708097802191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 12] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A338100.P15076071708097802191

namespace A338100

/-- `abs(∏[-a(n-1)])` -/
def P15076071708097802191.Spec : Prop :=
  ∀ n, P15076071708097802191.a n = A338100 (n + 1)

end A338100

/-! ## A338100.P18165756634238039615

`record[and(-3, 2^n)]²*ceil(3^(n-1))`
-/

namespace A338100.P18165756634238039615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 * ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A338100.P18165756634238039615

namespace A338100

/-- `record[and(-3, 2^n)]²*ceil(3^(n-1))` -/
def P18165756634238039615.Spec : Prop :=
  ∀ n, P18165756634238039615.a n = A338100 (n + 1)

end A338100

/-! ## A338100.P1453599358944603784

`lcm(record[and(-3, 2^n)]², ceil(3^(n-1)))`
-/

namespace A338100.P1453599358944603784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A338100.P1453599358944603784

namespace A338100

/-- `lcm(record[and(-3, 2^n)]², ceil(3^(n-1)))` -/
def P1453599358944603784.Spec : Prop :=
  ∀ n, (P1453599358944603784.a n : ℤ) = A338100 (n + 1)

end A338100

/-! ## A338100.P10701653855017554149

`2^n*A270576(n)`
-/

namespace A338100.P10701653855017554149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A270576 n

end

end A338100.P10701653855017554149

namespace A338100

/-- `2^n*A270576(n)` -/
def P10701653855017554149.Spec : Prop :=
  ∀ n, P10701653855017554149.a n = A338100 (n + 1)

end A338100

/-! ## A338100.P6733732085802420812

`4^n*A003946(n)`
-/

namespace A338100.P6733732085802420812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A003946 n

end

end A338100.P6733732085802420812

namespace A338100

/-- `4^n*A003946(n)` -/
def P6733732085802420812.Spec : Prop :=
  ∀ n, P6733732085802420812.a n = A338100 (n + 1)

end A338100

/-! ## A338100.P9428986033455570322

`4^n*∑[A080923(n)]`
-/

namespace A338100.P9428986033455570322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338100.P9428986033455570322

namespace A338100

/-- `4^n*∑[A080923(n)]` -/
def P9428986033455570322.Spec : Prop :=
  ∀ n, P9428986033455570322.a n = A338100 (n + 1)

end A338100

/-! ## A338100.P13048203626805551299

`4^n*Δ[A025192(n)]`
-/

namespace A338100.P13048203626805551299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A338100.P13048203626805551299

namespace A338100

/-- `4^n*Δ[A025192(n)]` -/
def P13048203626805551299.Spec : Prop :=
  ∀ n, P13048203626805551299.a n = A338100 (n + 1)

end A338100

/-!
# A338101: Smallest odd prime dividing n is a(n)-th prime, or 0 if no such prime exists.

The programs for A338101, there is no canonical definition to state claims against.
-/

/-! ## A338101.P12508179902207904304

`A055396((n+1)/2^val(n+1, 2))`
-/

namespace A338101.P12508179902207904304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A338101.P12508179902207904304

/-! ## A338101.P12190269787698037656

`A055396((n+1)/and(n+1, -(n+1)))`
-/

namespace A338101.P12190269787698037656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A338101.P12190269787698037656

/-! ## A338101.P11040001891118205236

`A055396(A000265(n+1))`
-/

namespace A338101.P11040001891118205236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A000265 (n + 1)).toNat

end

end A338101.P11040001891118205236

/-! ## A338101.P2907285055813852902

`A000720(A078701(n+1))`
-/

namespace A338101.P2907285055813852902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A078701 (n + 1)).toNat

end

end A338101.P2907285055813852902

/-! ## A338101.P12003456070909284796

`A055396(A153733(n)+1)`
-/

namespace A338101.P12003456070909284796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A153733 n + 1).toNat

end

end A338101.P12003456070909284796

/-! ## A338101.P5890958550732494768

`A055396(A204455(n+1))`
-/

namespace A338101.P5890958550732494768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A204455 (n + 1)).toNat

end

end A338101.P5890958550732494768

/-! ## A338101.P11042841398350680053

`A055396(A336650(n+1))`
-/

namespace A338101.P11042841398350680053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A336650 (n + 1)).toNat

end

end A338101.P11042841398350680053

/-! ## A338101.P16225877359697718726

`A055396(2*A025480(n)+1)`
-/

namespace A338101.P16225877359697718726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A025480 n + 1).toNat

end

end A338101.P16225877359697718726

/-! ## A338101.P668938711587044019

`A055396(A302034(2*(n+1)))`
-/

namespace A338101.P668938711587044019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A302034 (2 * (n + 1))).toNat

end

end A338101.P668938711587044019

/-! ## A338101.P1281930470778101368

`A055396(A302044(2*(n+1)))`
-/

namespace A338101.P1281930470778101368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A302044 (2 * (n + 1))).toNat

end

end A338101.P1281930470778101368

/-! ## A338101.P295484851751736715

`A055396(A166466(n+1)/3)`
-/

namespace A338101.P295484851751736715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A338101.P295484851751736715

/-! ## A338101.P3841216860792414375

`A055396(2*A003602(n+1)-1)`
-/

namespace A338101.P3841216860792414375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A003602 (n + 1) - 1).toNat

end

end A338101.P3841216860792414375

/-! ## A338101.P10564617218353953758

`A055396(A007947(2*(n+1))/2)`
-/

namespace A338101.P10564617218353953758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A338101.P10564617218353953758

/-! ## A338101.P736275069695850833

`A055396(gcd(n+1, A166466(n+1)))`
-/

namespace A338101.P736275069695850833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.gcd (n + 1 : ℤ) (A166466 (n + 1)))

end

end A338101.P736275069695850833

/-! ## A338101.P4947929073342089520

`A000720(A020639((n+1)/and(n+1, -(n+1))))`
-/

namespace A338101.P4947929073342089520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A338101.P4947929073342089520

/-! ## A338101.P9029597483721625831

`A241919(A028233((n+1)/and(n+1, -(n+1))))`
-/

namespace A338101.P9029597483721625831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A028233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat).toNat

end

end A338101.P9029597483721625831

/-! ## A338101.P2167078034207926407

`A241919(A028233(2*(n+1)/(xor(n, n+1)+1)))`
-/

namespace A338101.P2167078034207926407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A028233 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat).toNat

end

end A338101.P2167078034207926407

/-! ## A338101.P1664474086084090064

`A055396(A003961(A064989(n+1)))`
-/

namespace A338101.P1664474086084090064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A003961 (A064989 (n + 1)).toNat).toNat

end

end A338101.P1664474086084090064

/-! ## A338101.P14023718921014133961

`A055396(A269369(A269370(n+1)))`
-/

namespace A338101.P14023718921014133961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A269369 (A269370 (n + 1)).toNat).toNat

end

end A338101.P14023718921014133961

/-! ## A338101.P16958475013296764544

`A055396(A269379(A269380(n+1)))`
-/

namespace A338101.P16958475013296764544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A269379 (A269380 (n + 1)).toNat).toNat

end

end A338101.P16958475013296764544

/-!
# A338102: Prime terms of A338820.

The programs for A338102, there is no canonical definition to state claims against.
-/

/-! ## A338102.P11438135425805499335

`A338820(∑{p}[A338821(n+1), A000720(#)])`
-/

namespace A338102.P11438135425805499335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338820 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A338102.P11438135425805499335

/-! ## A338102.P422929532090254162

`p?[A338820(n+1)]`
-/

namespace A338102.P422929532090254162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338102.P422929532090254162

/-! ## A338102.P17950226755620338586

`p?[A105812(n)*A338820(A065033(n))]`
-/

namespace A338102.P17950226755620338586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 n * A338820 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338102.P17950226755620338586

/-!
# A338104: Number of spanning trees in the join of the disjoint union of two complete graphs each on n vertices with the empty graph on n+1 vertices.

The programs for A338104, the canonical program `A338104.P1756339780297932624` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338104 has offset 0).

The definition of A338104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338104.P1756339780297932624

`(n+1)*(2*n)^n*(2*n+1)^(2*(n-1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338104

/-- `(n+1)*(2*n)^n*(2*n+1)^(2*(n-1))` -/
def P1756339780297932624.Spec : Prop :=
  ∀ n, P1756339780297932624.a n = (A338104 n : ℚ)

end A338104

/-!
# A338108: Numbers that follow from the alternating series a(n) = d(1) - d(2) + d(3) - d(4) + ... + (-1)^(n+1) d(n), where d(k) denotes the k-th term of the digit sequence of Euler's number e.

The programs for A338108, there is no canonical definition to state claims against.
-/

/-! ## A338108.P5927882370755025412

`∑[(-1)^n*A001113(n)]`
-/

namespace A338108.P5927882370755025412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P5927882370755025412

/-! ## A338108.P5336817053091303365

`∑[A001113(n)*A062157(n+1)]`
-/

namespace A338108.P5336817053091303365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P5336817053091303365

/-! ## A338108.P12228715188447201498

`2-∑[A001113(n)*A062157(n)]`
-/

namespace A338108.P12228715188447201498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P12228715188447201498

/-! ## A338108.P8768212948712370653

`∑[A001113(n)*A009001(2*n)]`
-/

namespace A338108.P8768212948712370653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P8768212948712370653

/-! ## A338108.P12717439636223728552

`∑[A001113(n)*A056594(2*n)]`
-/

namespace A338108.P12717439636223728552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P12717439636223728552

/-! ## A338108.P4301154839005525328

`∑[A001355(2*(n+1))*A034947(2*n+1)]`
-/

namespace A338108.P4301154839005525328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P4301154839005525328

/-! ## A338108.P16594292030229050999

`∑[A001355(2*(n+1))*A209615(2*n+1)]`
-/

namespace A338108.P16594292030229050999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1)) * A209615 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338108.P16594292030229050999

/-!
# A338109: a(n)/A002939(n+1) is the Kirchhoff index of the join of the disjoint union of two complete graphs on n vertices with the empty graph on n+1 vertices.

The programs for A338109, the canonical program `A338109.P16209479355352017413` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338109 has offset 0).

The definition of A338109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338109.P16209479355352017413

`1+10*n+31*n²+18*n^3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338109

/-- `1+10*n+31*n²+18*n^3` -/
def P16209479355352017413.Spec : Prop :=
  ∀ n, (P16209479355352017413.a n : ℤ) = A338109 n

theorem P16209479355352017413.correct : P16209479355352017413.Spec := by
  intro n
  simp only [A338109]

end A338109

/-! ## A338109.P11379075919506872439

`abs(2*(C(n, 3)+n)-∑[(11*n+1)*10*n/2+1])`
-/

namespace A338109.P11379075919506872439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 1) * (10 * n) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 * (Nat.choose n 3 + n) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A338109.P11379075919506872439

namespace A338109

/-- `abs(2*(C(n, 3)+n)-∑[(11*n+1)*10*n/2+1])` -/
def P11379075919506872439.Spec : Prop :=
  ∀ n, P11379075919506872439.a n = (A338109 n : ℚ)

end A338109

/-! ## A338109.P4164712159681100858

`abs(A100158(n+1)-A046127(n))`
-/

namespace A338109.P4164712159681100858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100158 (n + 1) - A046127 n|

end

end A338109.P4164712159681100858

namespace A338109

/-- `abs(A100158(n+1)-A046127(n))` -/
def P4164712159681100858.Spec : Prop :=
  ∀ n, P4164712159681100858.a n = A338109 n

end A338109

/-! ## A338109.P5705386337081055087

`(A100158(n+1)-A046127(n))*char[A057889(n)]`
-/

namespace A338109.P5705386337081055087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A338109.P5705386337081055087

namespace A338109

/-- `(A100158(n+1)-A046127(n))*char[A057889(n)]` -/
def P5705386337081055087.Spec : Prop :=
  ∀ n, P5705386337081055087.a n = A338109 n

end A338109

/-! ## A338109.P7670645247148558783

`(A100158(n+1)-A046127(n))%A060879(n+1)²`
-/

namespace A338109.P7670645247148558783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100158 (n + 1) - A046127 n) (A060879 (n + 1) ^ 2)

end

end A338109.P7670645247148558783

namespace A338109

/-- `(A100158(n+1)-A046127(n))%A060879(n+1)²` -/
def P7670645247148558783.Spec : Prop :=
  ∀ n, P7670645247148558783.a n = A338109 n

end A338109

/-! ## A338109.P275980331947518034

`(A100158(n+1)-A046127(n))^A000041(C(2, n+1))`
-/

namespace A338109.P275980331947518034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n : ℚ) ^ (A000041 (Nat.choose 2 (n + 1)) : ℤ)

end

end A338109.P275980331947518034

namespace A338109

/-- `(A100158(n+1)-A046127(n))^A000041(C(2, n+1))` -/
def P275980331947518034.Spec : Prop :=
  ∀ n, P275980331947518034.a n = (A338109 n : ℚ)

end A338109

/-! ## A338109.P12680268504590649646

`(A100158(n+1)-A046127(n))*or(-1, A007094(n))²`
-/

namespace A338109.P12680268504590649646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * Int.lor (-1) (A007094 n) ^ 2

end

end A338109.P12680268504590649646

namespace A338109

/-- `(A100158(n+1)-A046127(n))*or(-1, A007094(n))²` -/
def P12680268504590649646.Spec : Prop :=
  ∀ n, P12680268504590649646.a n = A338109 n

end A338109

/-! ## A338109.P12725564773561143935

`(A100158(n+1)-A046127(n))*A007444(A020639(4*(n+1)))`
-/

namespace A338109.P12725564773561143935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A007444 (A020639 (4 * (n + 1))).toNat

end

end A338109.P12725564773561143935

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A007444(A020639(4*(n+1)))` -/
def P12725564773561143935.Spec : Prop :=
  ∀ n, P12725564773561143935.a n = A338109 n

end A338109

/-! ## A338109.P10267873583733447816

`(A100158(n+1)-A046127(n))*A057427(n+1)`
-/

namespace A338109.P10267873583733447816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A057427 (n + 1)

end

end A338109.P10267873583733447816

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A057427(n+1)` -/
def P10267873583733447816.Spec : Prop :=
  ∀ n, P10267873583733447816.a n = A338109 n

end A338109

/-! ## A338109.P8453529100209677031

`(A100158(n+1)-A046127(n))*A001222(A065091(n+1))`
-/

namespace A338109.P8453529100209677031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A001222 (A065091 (n + 1)).toNat

end

end A338109.P8453529100209677031

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A001222(A065091(n+1))` -/
def P8453529100209677031.Spec : Prop :=
  ∀ n, P8453529100209677031.a n = A338109 n

end A338109

/-! ## A338109.P14997253296911694901

`(A100158(n+1)-A046127(n))*A014963(A254572(n+1))`
-/

namespace A338109.P14997253296911694901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A014963 (A254572 (n + 1)).toNat

end

end A338109.P14997253296911694901

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A014963(A254572(n+1))` -/
def P14997253296911694901.Spec : Prop :=
  ∀ n, P14997253296911694901.a n = A338109 n

end A338109

/-! ## A338109.P1296655079528782857

`(A100158(n+1)-A046127(n))*A014963(A017233(n))`
-/

namespace A338109.P1296655079528782857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A014963 (A017233 n).toNat

end

end A338109.P1296655079528782857

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A014963(A017233(n))` -/
def P1296655079528782857.Spec : Prop :=
  ∀ n, P1296655079528782857.a n = A338109 n

end A338109

/-! ## A338109.P11121049757200389507

`(A100158(n+1)-A046127(n))*A209615(A017545(2*n))²`
-/

namespace A338109.P11121049757200389507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A209615 (A017545 (2 * n)).toNat ^ 2

end

end A338109.P11121049757200389507

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A209615(A017545(2*n))²` -/
def P11121049757200389507.Spec : Prop :=
  ∀ n, P11121049757200389507.a n = A338109 n

end A338109

/-! ## A338109.P3948339660685465205

`(A100158(n+1)-A046127(n))%A186881(A250120(n))`
-/

namespace A338109.P3948339660685465205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100158 (n + 1) - A046127 n) (A186881 (A250120 n).toNat)

end

end A338109.P3948339660685465205

namespace A338109

/-- `(A100158(n+1)-A046127(n))%A186881(A250120(n))` -/
def P3948339660685465205.Spec : Prop :=
  ∀ n, P3948339660685465205.a n = A338109 n

end A338109

/-! ## A338109.P1725717178913439847

`(A100158(n+1)-A046127(n))*A100257(∑[n])`
-/

namespace A338109.P1725717178913439847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100158 (n + 1) - A046127 n) * A100257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338109.P1725717178913439847

namespace A338109

/-- `(A100158(n+1)-A046127(n))*A100257(∑[n])` -/
def P1725717178913439847.Spec : Prop :=
  ∀ n, P1725717178913439847.a n = A338109 n

end A338109

/-!
# A338110: Number of spanning trees in the join of the disjoint union of two complete graphs each on n vertices with the empty graph on n vertices.

The programs for A338110, there is no canonical definition to state claims against.
-/

/-! ## A338110.P5840432079587723577

`A193131(n+1)/3`
-/

namespace A338110.P5840432079587723577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193131 (n + 1) : ℚ) / 3

end

end A338110.P5840432079587723577

/-! ## A338110.P1948922470818042822

`(2*(n+1))^(3*n+1)/2`
-/

namespace A338110.P1948922470818042822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ (3 * n + 1) : ℚ) / 2

end

end A338110.P1948922470818042822

/-! ## A338110.P1575355951132390101

`(n+1)*A052746(n+1)^3`
-/

namespace A338110.P1575355951132390101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052746 (n + 1) ^ 3

end

end A338110.P1575355951132390101

/-! ## A338110.P2291405335670374827

`(n+1)*A016743(n+1)^n`
-/

namespace A338110.P2291405335670374827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016743 (n + 1) ^ n

end

end A338110.P2291405335670374827

/-! ## A338110.P14916111910765060254

`(n+1)*A000578(2*n+2)^n`
-/

namespace A338110.P14916111910765060254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000578 (2 * n + 2) ^ n

end

end A338110.P14916111910765060254

/-!
# A338112: Least number that is both the sum and product of n distinct positive integers.

The programs for A338112, there is no canonical definition to state claims against.
-/

/-! ## A338112.P12588797598599160505

`char[1]+(n+1)!`
-/

namespace A338112.P12588797598599160505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.factorial (n + 1)

end

end A338112.P12588797598599160505

/-! ## A338112.P1710501344033341035

`char[1]+∏[n+1]`
-/

namespace A338112.P1710501344033341035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + ∏ j ∈ Finset.range (n + 1), f2 j

end

end A338112.P1710501344033341035

/-! ## A338112.P3866969841166506717

`or((n+1)!, C(3, n²))`
-/

namespace A338112.P3866969841166506717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.factorial (n + 1)) (Nat.choose 3 (n ^ 2))

end

end A338112.P3866969841166506717

/-! ## A338112.P16355621403385456547

`or(n!%2, (n+1)!)`
-/

namespace A338112.P16355621403385456547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.factorial n % 2) (Nat.factorial (n + 1))

end

end A338112.P16355621403385456547

/-! ## A338112.P4386076016179389514

`or((n+1)!, and(1, n!))`
-/

namespace A338112.P4386076016179389514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.factorial (n + 1)) (Nat.land 1 (Nat.factorial n))

end

end A338112.P4386076016179389514

/-! ## A338112.P12619880972630753855

`or(C(n, n²), ∏[n+1])`
-/

namespace A338112.P12619880972630753855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose n (n ^ 2)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A338112.P12619880972630753855

/-! ## A338112.P4073024496849391475

`record[n*a(n-1)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A338112.P4073024496849391475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338112.P4073024496849391475

/-! ## A338112.P4262215454169659828

`or((n+1)!, round(2^-n))`
-/

namespace A338112.P4262215454169659828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (n + 1) : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (-(n : ℤ) : ℤ)))

end

end A338112.P4262215454169659828

/-! ## A338112.P12354053708594251476

`∑{d}[n+1, n!*C(#, n)]`
-/

namespace A338112.P12354053708594251476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial n * Nat.choose d n

end

end A338112.P12354053708594251476

/-! ## A338112.P17287567696075099653

`∏[a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`
-/

namespace A338112.P17287567696075099653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A338112.P17287567696075099653

/-!
# A338113: Triangle read by rows: T(n,k) is the number of oriented colorings of the faces (and peaks) of a regular n-dimensional simplex using exactly k colors. Row n has C(n+1,3) columns.

The programs for A338113, there is no canonical definition to state claims against.
-/

/-! ## A338113.P18421572428725341622

`A338115(n+2)+A338114(n+2)`
-/

namespace A338113.P18421572428725341622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338115 (n + 2) + A338114 (n + 2)

end

end A338113.P18421572428725341622

/-! ## A338113.P9969742542440402783

`A338116(n+2)+2*A338115(n+2)`
-/

namespace A338113.P9969742542440402783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338116 (n + 2) + 2 * A338115 (n + 2)

end

end A338113.P9969742542440402783

/-! ## A338113.P15635888831944703227

`2*A338114(n+2)-A338116(n+2)`
-/

namespace A338113.P15635888831944703227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338114 (n + 2) - A338116 (n + 2)

end

end A338113.P15635888831944703227

/-! ## A338113.P3911102189420111460

`A338115(A000027(n+2))+A338116(n+2)+A338115(n+2)`
-/

namespace A338113.P3911102189420111460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338115 (A000027 (n + 2)).toNat + (A338116 (n + 2) + A338115 (n + 2))

end

end A338113.P3911102189420111460

/-! ## A338113.P17364224713834059379

`A338114(A000027(n+2))+A338114(n+2)-A338116(n+2)`
-/

namespace A338113.P17364224713834059379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338114 (A000027 (n + 2)).toNat + (A338114 (n + 2) - A338116 (n + 2))

end

end A338113.P17364224713834059379

/-!
# A338114: Triangle read by rows: T(n,k) is the number of unoriented colorings of the faces (and peaks) of a regular n-dimensional simplex using exactly k colors. Row n has C(n+1,3) columns.

The programs for A338114, there is no canonical definition to state claims against.
-/

/-! ## A338114.P5720289751585513716

`A338116(n+2)+A338115(n+2)`
-/

namespace A338114.P5720289751585513716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338116 (n + 2) + A338115 (n + 2)

end

end A338114.P5720289751585513716

/-! ## A338114.P12309130983972584431

`A338113(n+2)-A338115(n+2)`
-/

namespace A338114.P12309130983972584431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338113 (n + 2) - A338115 (n + 2)

end

end A338114.P12309130983972584431

/-! ## A338114.P1125086153680283849

`(A338116(n+2)+A338113(n+2))/2`
-/

namespace A338114.P1125086153680283849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338116 (n + 2) + A338113 (n + 2) : ℚ) / 2

end

end A338114.P1125086153680283849

/-! ## A338114.P16947178960186836476

`A014682(A338116(n+2)+A338113(n+2))`
-/

namespace A338114.P16947178960186836476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338116 (n + 2) + A338113 (n + 2)).toNat

end

end A338114.P16947178960186836476

/-! ## A338114.P18081850178261826746

`A273943(A338116(n+2)+A338113(n+2))`
-/

namespace A338114.P18081850178261826746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A338116 (n + 2) + A338113 (n + 2)).toNat

end

end A338114.P18081850178261826746

/-!
# A338115: Triangle read by rows: T(n,k) is the number of chiral pairs of colorings of the faces (and peaks) of a regular n-dimensional simplex using exactly k colors. Row n has C(n+1,3) columns.

The programs for A338115, there is no canonical definition to state claims against.
-/

/-! ## A338115.P7114152319442578430

`A338113(n+2)-A338114(n+2)`
-/

namespace A338115.P7114152319442578430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338113 (n + 2) - A338114 (n + 2)

end

end A338115.P7114152319442578430

/-! ## A338115.P12834561408948614620

`A338114(n+2)-A338116(n+2)`
-/

namespace A338115.P12834561408948614620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338114 (n + 2) - A338116 (n + 2)

end

end A338115.P12834561408948614620

/-! ## A338115.P5202840829379941949

`(A338113(n+2)-A338116(n+2))/2`
-/

namespace A338115.P5202840829379941949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338113 (n + 2) - A338116 (n + 2) : ℚ) / 2

end

end A338115.P5202840829379941949

/-! ## A338115.P1388176628942479363

`A014682(A338113(n+2)-A338116(n+2))`
-/

namespace A338115.P1388176628942479363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338113 (n + 2) - A338116 (n + 2)).toNat

end

end A338115.P1388176628942479363

/-! ## A338115.P13159013457307732466

`A273943(A338113(n+2)-A338116(n+2))`
-/

namespace A338115.P13159013457307732466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A338113 (n + 2) - A338116 (n + 2)).toNat

end

end A338115.P13159013457307732466

/-!
# A338116: Triangle read by rows: T(n,k) is the number of achiral colorings of the faces (and peaks) of a regular n-dimensional simplex using exactly k colors. Row n has C(n+1,3) columns.

The programs for A338116, there is no canonical definition to state claims against.
-/

/-! ## A338116.P9335263242293414092

`A338114(n+2)-A338115(n+2)`
-/

namespace A338116.P9335263242293414092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338114 (n + 2) - A338115 (n + 2)

end

end A338116.P9335263242293414092

/-! ## A338116.P12432299387034195950

`2*A338114(n+2)-A338113(n+2)`
-/

namespace A338116.P12432299387034195950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338114 (n + 2) - A338113 (n + 2)

end

end A338116.P12432299387034195950

/-! ## A338116.P3957811627129151491

`A338113(n+2)-2*A338115(n+2)`
-/

namespace A338116.P3957811627129151491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338113 (n + 2) - 2 * A338115 (n + 2)

end

end A338116.P3957811627129151491

/-! ## A338116.P4720802179557420990

`A338114(A000027(n+2))-(A338113(n+2)-A338114(n+2))`
-/

namespace A338116.P4720802179557420990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338114 (A000027 (n + 2)).toNat - (A338113 (n + 2) - A338114 (n + 2))

end

end A338116.P4720802179557420990

/-! ## A338116.P2717761382618402708

`A338113(n+2)-A338115(n+2)-A338115(A000027(n+2))`
-/

namespace A338116.P2717761382618402708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338113 (n + 2) - A338115 (n + 2) - A338115 (A000027 (n + 2)).toNat

end

end A338116.P2717761382618402708

/-!
# A338117: Number of partitions of n into two parts (s,t) such that (t-s) | n, where s < t.

The programs for A338117, the canonical program `A338117.P14655865004577336946` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338117 has offset 1).

The definition of A338117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338117.P14655865004577336946

`∑{d}[n+1, (n-#)%2]+1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338117

/-- `∑{d}[n+1, (n-#)%2]+1` -/
def P14655865004577336946.Spec : Prop :=
  ∀ n, P14655865004577336946.a n = A338117 (n + 1)

theorem P14655865004577336946.correct : P14655865004577336946.Spec := by
  intro n
  simp only [A338117, Nat.add_sub_cancel]

end A338117

/-! ## A338117.P6790348778005705900

`∑{d}[n+1, and(1, #+n)]-1`
-/

namespace A338117.P6790348778005705900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 (d + n) : ℕ) : ℤ) - 1

end

end A338117.P6790348778005705900

namespace A338117

/-- `∑{d}[n+1, and(1, #+n)]-1` -/
def P6790348778005705900.Spec : Prop :=
  ∀ n, P6790348778005705900.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P15186849957325891241

`A320111(n+1)-1`
-/

namespace A338117.P15186849957325891241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - 1

end

end A338117.P15186849957325891241

namespace A338117

/-- `A320111(n+1)-1` -/
def P15186849957325891241.Spec : Prop :=
  ∀ n, P15186849957325891241.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P10284913912118669006

`A032741(gcd(n+1, ∑[n]))`
-/

namespace A338117.P10284913912118669006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A338117.P10284913912118669006

namespace A338117

/-- `A032741(gcd(n+1, ∑[n]))` -/
def P10284913912118669006.Spec : Prop :=
  ∀ n, P10284913912118669006.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P9123870884023681789

`A032741(lcm(2, n+1)/2)`
-/

namespace A338117.P9123870884023681789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A338117.P9123870884023681789

namespace A338117

/-- `A032741(lcm(2, n+1)/2)` -/
def P9123870884023681789.Spec : Prop :=
  ∀ n, P9123870884023681789.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P15227305882759840255

`A000005((n+1)/(n%2+1))-1`
-/

namespace A338117.P15227305882759840255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat - 1

end

end A338117.P15227305882759840255

namespace A338117

/-- `A000005((n+1)/(n%2+1))-1` -/
def P15227305882759840255.Spec : Prop :=
  ∀ n, P15227305882759840255.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P2918571015639510538

`A000005((n+1)/gcd(2, 1-n))-1`
-/

namespace A338117.P2918571015639510538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd 2 (1 - (n : ℤ)) : ℚ))).toNat - 1

end

end A338117.P2918571015639510538

namespace A338117

/-- `A000005((n+1)/gcd(2, 1-n))-1` -/
def P2918571015639510538.Spec : Prop :=
  ∀ n, P2918571015639510538.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P7856747949802523696

`A000005((n+1)/(and(1, n)+1))-1`
-/

namespace A338117.P7856747949802523696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat - 1

end

end A338117.P7856747949802523696

namespace A338117

/-- `A000005((n+1)/(and(1, n)+1))-1` -/
def P7856747949802523696.Spec : Prop :=
  ∀ n, P7856747949802523696.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P2633362693158095668

`A000005((∑[n]+n)%(n+1)+1)-1`
-/

namespace A338117.P2633362693158095668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1) - 1

end

end A338117.P2633362693158095668

namespace A338117

/-- `A000005((∑[n]+n)%(n+1)+1)-1` -/
def P2633362693158095668.Spec : Prop :=
  ∀ n, P2633362693158095668.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P9380893755511239671

`A032741(A026741(n+1))`
-/

namespace A338117.P9380893755511239671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A026741 (n + 1)).toNat

end

end A338117.P9380893755511239671

namespace A338117

/-- `A032741(A026741(n+1))` -/
def P9380893755511239671.Spec : Prop :=
  ∀ n, P9380893755511239671.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P14477696882177226795

`A032741(A252463(n+1))`
-/

namespace A338117.P14477696882177226795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A252463 (n + 1)).toNat

end

end A338117.P14477696882177226795

namespace A338117

/-- `A032741(A252463(n+1))` -/
def P14477696882177226795.Spec : Prop :=
  ∀ n, P14477696882177226795.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P12005389249415205560

`A000005(abs(A030640(n)))-1`
-/

namespace A338117.P12005389249415205560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A030640 n|.toNat - 1

end

end A338117.P12005389249415205560

namespace A338117

/-- `A000005(abs(A030640(n)))-1` -/
def P12005389249415205560.Spec : Prop :=
  ∀ n, P12005389249415205560.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P2449345934700230084

`A000005(A332893(n+1))-1`
-/

namespace A338117.P2449345934700230084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A332893 (n + 1)).toNat - 1

end

end A338117.P2449345934700230084

namespace A338117

/-- `A000005(A332893(n+1))-1` -/
def P2449345934700230084.Spec : Prop :=
  ∀ n, P2449345934700230084.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P3399395346568111040

`A100073(n+1)+A072670(n)`
-/

namespace A338117.P3399395346568111040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (n + 1) + A072670 n

end

end A338117.P3399395346568111040

namespace A338117

/-- `A100073(n+1)+A072670(n)` -/
def P3399395346568111040.Spec : Prop :=
  ∀ n, P3399395346568111040.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P4362660730796360842

`A032741((n+1)/A000034(n))`
-/

namespace A338117.P4362660730796360842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A338117.P4362660730796360842

namespace A338117

/-- `A032741((n+1)/A000034(n))` -/
def P4362660730796360842.Spec : Prop :=
  ∀ n, P4362660730796360842.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P13456737276112640045

`A066660(n+1)-A069733(n+1)`
-/

namespace A338117.P13456737276112640045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) - A069733 (n + 1)

end

end A338117.P13456737276112640045

namespace A338117

/-- `A066660(n+1)-A069733(n+1)` -/
def P13456737276112640045.Spec : Prop :=
  ∀ n, P13456737276112640045.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P18204742908706246249

`A032741(A188386(n+1)%(n+2))`
-/

namespace A338117.P18204742908706246249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Int.tmod (A188386 (n + 1)) (n + 2 : ℤ)).toNat

end

end A338117.P18204742908706246249

namespace A338117

/-- `A032741(A188386(n+1)%(n+2))` -/
def P18204742908706246249.Spec : Prop :=
  ∀ n, P18204742908706246249.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P13795801406562348267

`A034178(n+1)+A056924(n+1)-1`
-/

namespace A338117.P13795801406562348267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (n + 1) + (A056924 (n + 1) - 1)

end

end A338117.P13795801406562348267

namespace A338117

/-- `A034178(n+1)+A056924(n+1)-1` -/
def P13795801406562348267.Spec : Prop :=
  ∀ n, P13795801406562348267.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P14906424802013215929

`A038548(n+1)+A100073(n+1)-1`
-/

namespace A338117.P14906424802013215929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A100073 (n + 1) - 1)

end

end A338117.P14906424802013215929

namespace A338117

/-- `A038548(n+1)+A100073(n+1)-1` -/
def P14906424802013215929.Spec : Prop :=
  ∀ n, P14906424802013215929.a n = A338117 (n + 1)

end A338117

/-! ## A338117.P6428594400524328097

`A067752(n+1)-(A290870(n+1)+1)`
-/

namespace A338117.P6428594400524328097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - (A290870 (n + 1) + 1)

end

end A338117.P6428594400524328097

namespace A338117

/-- `A067752(n+1)-(A290870(n+1)+1)` -/
def P6428594400524328097.Spec : Prop :=
  ∀ n, P6428594400524328097.a n = A338117 (n + 1)

end A338117

/-!
# A338120: a(n) is the least index k such that the n-th odd squarefree number A056911(n) divides A110566(k).

The programs for A338120, there is no canonical definition to state claims against.
-/

/-! ## A338120.P16443607086643612423

`A014963(A259923(n+1))*A348022(n+1)`
-/

namespace A338120.P16443607086643612423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A259923 (n + 1)).toNat * A348022 (n + 1)

end

end A338120.P16443607086643612423

/-! ## A338120.P1881791144020052973

`A338913(A000295(2*(n+1)))+A005836(n+1)`
-/

namespace A338120.P1881791144020052973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338913 (A000295 (2 * (n + 1))).toNat + A005836 (n + 1)

end

end A338120.P1881791144020052973

/-!
# A338121: Positive integers not congruent to 0 mod 6 which cannot be written as x^2 + y^2 + z^2 + w^2 with x + y = 4^k for some positive integer k, where x, y, z, w are nonnegative integers.

The programs for A338121, there is no canonical definition to state claims against.
-/

/-! ## A338121.P17584905925490995798

`lt[A112208(n), A000038(A264593(n))]`
-/

namespace A338121.P17584905925490995798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112208 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A264593 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338121.P17584905925490995798

/-! ## A338121.P16190372759116373397

`∪[A057025(A056991(2*n+1)), A243068(n+1)]`
-/

namespace A338121.P16190372759116373397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057025 (A056991 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338121.P16190372759116373397

/-! ## A338121.P8291950949038058648

`∪[A057025(A056991(2*n+1)), A243079(n+1)]`
-/

namespace A338121.P8291950949038058648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057025 (A056991 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A338121.P8291950949038058648

/-! ## A338121.P7786821533976226621

`eq[A082023(n), A244220(A069462(n+1))]`
-/

namespace A338121.P7786821533976226621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244220 (A069462 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338121.P7786821533976226621

/-!
# A338122: Place three points evenly spaced around a circle, draw n evenly spaced rays from each of the points, a(n) is the number of regions thus created. See Comments for details.

The programs for A338122, there is no canonical definition to state claims against.
-/

/-! ## A338122.P2430440693867496201

`A338124(n+1)+1-A338123(n+1)`
-/

namespace A338122.P2430440693867496201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338124 (n + 1) + (1 - A338123 (n + 1))

end

end A338122.P2430440693867496201

/-! ## A338122.P9152766359419330359

`A338124(n+1)+A024000(A338123(n+1))`
-/

namespace A338122.P9152766359419330359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338124 (n + 1) + A024000 (A338123 (n + 1)).toNat

end

end A338122.P9152766359419330359

/-!
# A338123: Place three points evenly spaced around a circle, draw n evenly spaced rays from each of the points, a(n) is the number of vertices thus created. See Comments for details.

The programs for A338123, there is no canonical definition to state claims against.
-/

/-! ## A338123.P3766670908272070347

`A338124(n+1)+1-A338122(n+1)`
-/

namespace A338123.P3766670908272070347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338124 (n + 1) + (1 - A338122 (n + 1))

end

end A338123.P3766670908272070347

/-! ## A338123.P15691178588536350629

`A338124(n+1)+A024000(A338122(n+1))`
-/

namespace A338123.P15691178588536350629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338124 (n + 1) + A024000 (A338122 (n + 1)).toNat

end

end A338123.P15691178588536350629

/-! ## A338123.P9231398216246577014

`A020725(A338124(n+1)-A338122(n+1))`
-/

namespace A338123.P9231398216246577014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A338124 (n + 1) - A338122 (n + 1)).toNat

end

end A338123.P9231398216246577014

/-! ## A338123.P13807365062413454185

`A065475(A338124(n+1)-A338122(n+1))`
-/

namespace A338123.P13807365062413454185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A338124 (n + 1) - A338122 (n + 1)).toNat

end

end A338123.P13807365062413454185

/-! ## A338123.P9490706350848330621

`A338124(A077168(n))-A338122(n+1)+1`
-/

namespace A338123.P9490706350848330621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338124 (A077168 n).toNat - A338122 (n + 1) + 1

end

end A338123.P9490706350848330621

/-!
# A338124: Place three points evenly spaced around a circle, draw n evenly spaced rays from each of the points, a(n) is the number of edges thus created. See Comments for details.

The programs for A338124, there is no canonical definition to state claims against.
-/

/-! ## A338124.P17602300249472768574

`A338122(n+1)+A338123(n+1)-1`
-/

namespace A338124.P17602300249472768574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338122 (n + 1) + (A338123 (n + 1) - 1)

end

end A338124.P17602300249472768574

/-! ## A338124.P3396236566912874455

`A057428(2*n+1)+A338123(n+1)+A338122(n+1)`
-/

namespace A338124.P3396236566912874455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (2 * n + 1) + (A338123 (n + 1) + A338122 (n + 1))

end

end A338124.P3396236566912874455

/-! ## A338124.P13893963030604115081

`A338122(n+1)+A023443(A338123(n+1))`
-/

namespace A338124.P13893963030604115081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338122 (n + 1) + A023443 (A338123 (n + 1)).toNat

end

end A338124.P13893963030604115081

/-! ## A338124.P7391361548039113569

`A143097(A338123(n+1)+A338122(n+1))`
-/

namespace A338124.P7391361548039113569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A338123 (n + 1) + A338122 (n + 1)).toNat

end

end A338124.P7391361548039113569

/-! ## A338124.P15442907859046171389

`-A024000(A338123(n+1)+A338122(n+1))`
-/

namespace A338124.P15442907859046171389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (A338123 (n + 1) + A338122 (n + 1)).toNat

end

end A338124.P15442907859046171389

/-!
# A338125: Triangle read by rows: T(n,w) is the number of n-step self avoiding walks on a 3D cubic lattice confined between two infinite planes a distance 2w apart where the walk starts at the middle point between the planes.

The programs for A338125, there is no canonical definition to state claims against.
-/

/-! ## A338125.P3459477015818957847

`or(4, A321908(A352488(3*n+5)))`
-/

namespace A338125.P3459477015818957847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A321908 (A352488 (3 * n + 5)).toNat)

end

end A338125.P3459477015818957847

/-!
# A338127: Triangle read by rows: T(n,w) is the number of n-step self avoiding walks on a 3D cubic lattice confined between two infinite horizontal planes a distance 2w apart and an orthogonal plane on the y-z axes, where the walk starts at the middle point between the planes on the y-z plane.

The programs for A338127, there is no canonical definition to state claims against.
-/

/-! ## A338127.P15179104480204656728

`or(A007953(A143554(n+1)), A337401(n+1))`
-/

namespace A338127.P15179104480204656728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007953 (A143554 (n + 1)).toNat) (A337401 (n + 1))

end

end A338127.P15179104480204656728

/-! ## A338127.P15306498785343100973

`or(A109375(A084635(n)), A337401(n+1))`
-/

namespace A338127.P15306498785343100973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109375 (A084635 n).toNat) (A337401 (n + 1))

end

end A338127.P15306498785343100973

/-! ## A338127.P8735238587901759017

`or(A337375(A337356(n+1)), A337401(n+1))`
-/

namespace A338127.P8735238587901759017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A337375 (A337356 (n + 1)).toNat) (A337401 (n + 1))

end

end A338127.P8735238587901759017

/-!
# A338129: Positive numbers k such that the binary representation of k^k ends with that of k.

The programs for A338129, there is no canonical definition to state claims against.
-/

/-! ## A338129.P5448186607715990185

`record[or(A135521(n+1), A331985(n))]`
-/

namespace A338129.P5448186607715990185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135521 (n + 1)) (A331985 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338129.P5448186607715990185

/-! ## A338129.P13905043045640495658

`record[gcd(A139708(n+1), A320561(n+1))]`
-/

namespace A338129.P13905043045640495658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139708 (n + 1)) (A320561 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338129.P13905043045640495658

/-! ## A338129.P17731819112154564705

`eq[n, A320561(A132196(n))]`
-/

namespace A338129.P17731819112154564705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320561 (A132196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338129.P17731819112154564705

/-! ## A338129.P15057381050105280695

`record[A331985(2*n+1)-A079945(n)]`
-/

namespace A338129.P15057381050105280695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331985 (2 * n + 1) - A079945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338129.P15057381050105280695

/-! ## A338129.P15315865812159450843

`record[or(1, n)%(2^A087117(n²))]`
-/

namespace A338129.P15315865812159450843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 n : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A087117 (n ^ 2) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338129.P15315865812159450843

/-!
# A338130: Positive numbers k such that the ternary representation of k^k ends with that of k.

The programs for A338130, the canonical program `A338130.P9338611160572617900` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338130 has offset 1).

The definition of A338130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338130.P16054157388229141344

`∑[3^∑[char[A003946(n)]]]`
-/

namespace A338130.P16054157388229141344
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338130.P16054157388229141344

namespace A338130

/-- `∑[3^∑[char[A003946(n)]]]` -/
def P16054157388229141344.Spec : Prop :=
  ∀ n, (P16054157388229141344.a n : ℤ) = A338130 (n + 1)

end A338130

/-! ## A338130.P16567387586622760428

`∑[3^∑[char[A052156(n)]]]`
-/

namespace A338130.P16567387586622760428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338130.P16567387586622760428

namespace A338130

/-- `∑[3^∑[char[A052156(n)]]]` -/
def P16567387586622760428.Spec : Prop :=
  ∀ n, (P16567387586622760428.a n : ℤ) = A338130 (n + 1)

end A338130

/-! ## A338130.P12650275434154353119

`∑[3^∑[char[A147582(n+1)]]]`
-/

namespace A338130.P12650275434154353119
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338130.P12650275434154353119

namespace A338130

/-- `∑[3^∑[char[A147582(n+1)]]]` -/
def P12650275434154353119.Spec : Prop :=
  ∀ n, (P12650275434154353119.a n : ℤ) = A338130 (n + 1)

end A338130

/-! ## A338130.P9338611160572617900

`∑[3*a(A004524(A004396(n)))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338130

/-- `∑[3*a(A004524(A004396(n)))]` -/
def P9338611160572617900.Spec : Prop :=
  ∀ n, (P9338611160572617900.a n : ℤ) = A338130 (n + 1)

theorem P9338611160572617900.correct : P9338611160572617900.Spec := by
  intro n
  simp only [A338130, Nat.add_sub_cancel]

end A338130

/-! ## A338130.P5478094157334898440

`∑[3*a(A004523(A004526(n)))]` with `a(0)=1`
-/

namespace A338130.P5478094157334898440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (A004523 (A004526 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338130.P5478094157334898440

namespace A338130

/-- `∑[3*a(A004523(A004526(n)))]` -/
def P5478094157334898440.Spec : Prop :=
  ∀ n, (P5478094157334898440.a n : ℤ) = A338130 (n + 1)

end A338130

/-! ## A338130.P3368761716935261930

`record[(n+1)%A038500(n+1)²+1]`
-/

namespace A338130.P3368761716935261930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A038500 (n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338130.P3368761716935261930

namespace A338130

/-- `record[(n+1)%A038500(n+1)²+1]` -/
def P3368761716935261930.Spec : Prop :=
  ∀ n, P3368761716935261930.a n = A338130 (n + 1)

end A338130

/-! ## A338130.P1058208467454749032

`lt[n, A038500(A028310(n))²]+1`
-/

namespace A338130.P1058208467454749032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338130.P1058208467454749032

namespace A338130

/-- `lt[n, A038500(A028310(n))²]+1` -/
def P1058208467454749032.Spec : Prop :=
  ∀ n, (P1058208467454749032.a n : ℤ) = A338130 (n + 1)

end A338130

/-!
# A338131: Triangle read by rows, T(n, k) = k^(n - k) + Sum_{i = 1..n-k} k^(n - k - i)*2^(i - 1), for 0 <= k <= n.

The programs for A338131, there is no canonical definition to state claims against.
-/

/-! ## A338131.P12005600723117368750

`A104040(n)+A033886(A208673(n))`
-/

namespace A338131.P12005600723117368750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104040 n + A033886 (A208673 n).toNat

end

end A338131.P12005600723117368750

/-! ## A338131.P7488734103963797512

`or(A104040(n), A326453(A267479(n)))`
-/

namespace A338131.P7488734103963797512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104040 n) (A326453 (A267479 n).toNat)

end

end A338131.P7488734103963797512

/-! ## A338131.P186300155398405917

`A349797(A342096(n+1))+A104040(n)`
-/

namespace A338131.P186300155398405917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A342096 (n + 1)).toNat + A104040 n

end

end A338131.P186300155398405917

/-! ## A338131.P13250214954240255989

`A104040(n)+A096158(A107876(n))`
-/

namespace A338131.P13250214954240255989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104040 n + A096158 (A107876 n).toNat

end

end A338131.P13250214954240255989

/-!
# A338132: List of lengths of subsequences of the characteristic function of those primes for which the minimum cyclic self-convolution is 1. Also n such that A337802(n)=1.

The programs for A338132, there is no canonical definition to state claims against.
-/

/-! ## A338132.P9250109323983907693

`filter[n+1, A337802(#)]`
-/

namespace A338132.P9250109323983907693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337802 (f1 j) = 1) n)

end

end A338132.P9250109323983907693

/-! ## A338132.P17792782993283753244

`lt[0, A337802(n+1)]+1`
-/

namespace A338132.P17792782993283753244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337802 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338132.P17792782993283753244

/-! ## A338132.P14241270828112786569

`eq[1, A337802(n+2)]+2`
-/

namespace A338132.P14241270828112786569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337802 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A338132.P14241270828112786569

/-! ## A338132.P9603263857421415881

`A166333(eq[1, A337802(n+1)])`
-/

namespace A338132.P9603263857421415881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338132.P9603263857421415881

/-!
# A338133: Primitive nondeficient numbers sorted by largest prime factor then by increasing size. Irregular triangle T(n, k), n >= 2, k >= 1, read by rows, row n listing those with largest prime factor = prime(n).

The programs for A338133, there is no canonical definition to state claims against.
-/

/-! ## A338133.P9375481951661489644

`filter[A006039(n+1), A086299(#)]`
-/

namespace A338133.P9375481951661489644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A338133.P9375481951661489644

/-! ## A338133.P6929587959146257346

`filter[A180332(n+1), A086299(#)]`
-/

namespace A338133.P6929587959146257346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A338133.P6929587959146257346

/-! ## A338133.P5679690218656214516

`∩[A002473(n+1), A006039(n+1)]`
-/

namespace A338133.P5679690218656214516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338133.P5679690218656214516

/-!
# A338134: Initial terms are the first 11 odd prime numbers. After that each new term in the sequence is the sum of whichever subset of the previous 11 terms gives the smallest prime number that is larger than the largest term so far.

The programs for A338134, there is no canonical definition to state claims against.
-/

/-! ## A338134.P5501985969801038774

`A230775(A204631(n)+A001248(n+1))`
-/

namespace A338134.P5501985969801038774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A204631 n + A001248 (n + 1)).toNat

end

end A338134.P5501985969801038774

/-! ## A338134.P7630609996381777742

`A230775(A350504(n)+p?[A001057(n)]²)`
-/

namespace A338134.P7630609996381777742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A350504 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A338134.P7630609996381777742

/-! ## A338134.P8445728804652107006

`p?[A003961(n+1)*A321647(A119335(n))]`
-/

namespace A338134.P8445728804652107006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A321647 (A119335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338134.P8445728804652107006

/-! ## A338134.P6484352085332587546

`A065091(lt[A114267(n+5), A001043(3*n+2)])`
-/

namespace A338134.P6484352085332587546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114267 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338134.P6484352085332587546

/-! ## A338134.P16276379922838018440

`A065091(lt[A114267(n+5), A197638(3*n+2)])`
-/

namespace A338134.P16276379922838018440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114267 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197638 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338134.P16276379922838018440

/-!
# A338138: Nested cube root (b(n) + (b(n-1) + ... + (b(1))^(1/3)...)^(1/3))^(1/3), where b(n) = A338137(n).

The programs for A338138, there is no canonical definition to state claims against.
-/

/-! ## A338138.P11842977178990940777

`ceil(root(A338137(n+1), 3))`
-/

namespace A338138.P11842977178990940777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338137 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A338138.P11842977178990940777

/-! ## A338138.P9680640731046294905

`A134914(A338137(n+1))`
-/

namespace A338138.P9680640731046294905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (A338137 (n + 1)).toNat

end

end A338138.P9680640731046294905

/-! ## A338138.P1834721650280091644

`A048766(A338137(n+1)-1)+1`
-/

namespace A338138.P1834721650280091644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A338137 (n + 1) - 1).toNat + 1

end

end A338138.P1834721650280091644

/-! ## A338138.P17027237871521774108

`floor(A057427(n)+root(A338137(n+1), 3))`
-/

namespace A338138.P17027237871521774108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + (A338137 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A338138.P17027237871521774108

/-! ## A338138.P15332285588706722553

`A048766(A338137(n+1)+A005378(n))`
-/

namespace A338138.P15332285588706722553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A338137 (n + 1) + A005378 n).toNat

end

end A338138.P15332285588706722553

/-! ## A338138.P451647169837470505

`A048766(A338137(n+1)+A008619(n))`
-/

namespace A338138.P451647169837470505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A338137 (n + 1) + A008619 n).toNat

end

end A338138.P451647169837470505

/-! ## A338138.P3901383225005387733

`A048766(A338137(n+1)+A052938(n))`
-/

namespace A338138.P3901383225005387733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A338137 (n + 1) + A052938 n).toNat

end

end A338138.P3901383225005387733

/-! ## A338138.P11026090642824762366

`A057427(n)+A048766(A338137(n+1))`
-/

namespace A338138.P11026090642824762366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A048766 (A338137 (n + 1)).toNat

end

end A338138.P11026090642824762366

/-! ## A338138.P9531392265580799076

`A048766(A338137(n+1))-A057428(n)`
-/

namespace A338138.P9531392265580799076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A338137 (n + 1)).toNat - A057428 n

end

end A338138.P9531392265580799076

/-! ## A338138.P11391298388938910996

`A048766(A338137(n+1))+and(1, A000040(n+1))`
-/

namespace A338138.P11391298388938910996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A338137 (n + 1)).toNat + Int.land 1 (A000040 (n + 1))

end

end A338138.P11391298388938910996

/-!
# A338139: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x^2 + 26*y^2 - 11*x*y a power of two (including 2^0 = 1), where x, y, z, w are nonnegative integers with z <= w.

The programs for A338139, there is no canonical definition to state claims against.
-/

/-! ## A338139.P7724230582163426610

`A267263(A077812(n+1)+3)`
-/

namespace A338139.P7724230582163426610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A077812 (n + 1) + 3).toNat

end

end A338139.P7724230582163426610

/-! ## A338139.P10155567566260978139

`A294903(A294903(n+1)+A055010(n))`
-/

namespace A338139.P10155567566260978139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (A294903 (n + 1) + A055010 n).toNat

end

end A338139.P10155567566260978139

/-! ## A338139.P10440278140920263023

`A001221(A032972(n+1)*A319953(n))`
-/

namespace A338139.P10440278140920263023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A032972 (n + 1) * A319953 n).toNat

end

end A338139.P10440278140920263023

/-! ## A338139.P3894428250788534660

`A001221(lcm(A032972(n+1), A319953(n)))`
-/

namespace A338139.P3894428250788534660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A032972 (n + 1)) (A319953 n))

end

end A338139.P3894428250788534660

/-! ## A338139.P16054991818903625617

`A297770(A178472(2*(n+1)))+A056979(n+1)`
-/

namespace A338139.P16054991818903625617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A178472 (2 * (n + 1))).toNat + A056979 (n + 1)

end

end A338139.P16054991818903625617

/-!
# A338140: a(n) is the smallest number with n refactorable divisors.

The programs for A338140, there is no canonical definition to state claims against.
-/

/-! ## A338140.P10198047146170283597

`A352104(A003179(2*(n+1)))*A352107(n+1)`
-/

namespace A338140.P10198047146170283597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A003179 (2 * (n + 1))).toNat * A352107 (n + 1)

end

end A338140.P10198047146170283597

/-! ## A338140.P2920168289884443251

`record[A037226(∑[A274709(n+2)])]`
-/

namespace A338140.P2920168289884443251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274709 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037226 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338140.P2920168289884443251

/-! ## A338140.P7836016047993884377

`∩[A235353(n+1), A255724(n+1)]`
-/

namespace A338140.P7836016047993884377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338140.P7836016047993884377

/-!
# A338141: Let R_1 = {1, 2, ...}; for any n > 0, let r_n be the colexicographically earliest finite subset of R_n summing to a prime number, say p; a(n) = p and R_{n+1} = R_n \ r_n.

The programs for A338141, there is no canonical definition to state claims against.
-/

/-! ## A338141.P9217200419017597150

`A000040(A269098(n)%A095471(n))`
-/

namespace A338141.P9217200419017597150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A269098 n) (A095471 n)).toNat

end

end A338141.P9217200419017597150

/-! ## A338141.P677269156681033496

`A138117(A226023(n)+1)`
-/

namespace A338141.P677269156681033496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138117 (A226023 n + 1).toNat

end

end A338141.P677269156681033496

/-! ## A338141.P17788243770622294737

`A000040(A269098(n)^A146735(n+1))`
-/

namespace A338141.P17788243770622294737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A269098 n : ℚ) ^ (A146735 (n + 1) : ℤ))).toNat

end

end A338141.P17788243770622294737

/-! ## A338141.P8547009942441874957

`A000040(A029579(ceil(4*n/3))%A293938(3*n+2))`
-/

namespace A338141.P8547009942441874957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A029579 ⌈4 * ((n : ℚ) / 3)⌉.toNat) (A293938 (3 * n + 2))).toNat

end

end A338141.P8547009942441874957

/-!
# A338142: Triangle read by rows: T(n,k) is the number of oriented colorings of the edges of a regular n-D orthotope (or ridges of a regular n-D orthoplex) using exactly k colors. Row n has n*2^(n-1) columns.

The programs for A338142, there is no canonical definition to state claims against.
-/

/-! ## A338142.P1629915571627956606

`A338144(n+1)+A338143(n+1)`
-/

namespace A338142.P1629915571627956606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338144 (n + 1) + A338143 (n + 1)

end

end A338142.P1629915571627956606

/-! ## A338142.P16657332740226088023

`A338145(n+1)+2*A338144(n+1)`
-/

namespace A338142.P16657332740226088023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338145 (n + 1) + 2 * A338144 (n + 1)

end

end A338142.P16657332740226088023

/-! ## A338142.P13547015479750240821

`2*A338143(n+1)-A338145(n+1)`
-/

namespace A338142.P13547015479750240821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338143 (n + 1) - A338145 (n + 1)

end

end A338142.P13547015479750240821

/-! ## A338142.P10090870829474537596

`A338144(A000027(n+1))+A338145(n+1)+A338144(n+1)`
-/

namespace A338142.P10090870829474537596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338144 (A000027 (n + 1)).toNat + (A338145 (n + 1) + A338144 (n + 1))

end

end A338142.P10090870829474537596

/-! ## A338142.P2855863293501014240

`A338143(A000027(n+1))+A338143(n+1)-A338145(n+1)`
-/

namespace A338142.P2855863293501014240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338143 (A000027 (n + 1)).toNat + (A338143 (n + 1) - A338145 (n + 1))

end

end A338142.P2855863293501014240

/-!
# A338143: Triangle read by rows: T(n,k) is the number of unoriented colorings of the edges of a regular n-D orthotope (or ridges of a regular n-D orthoplex) using exactly k colors. Row n has n*2^(n-1) columns.

The programs for A338143, there is no canonical definition to state claims against.
-/

/-! ## A338143.P4755088305442388450

`A338145(n+1)+A338144(n+1)`
-/

namespace A338143.P4755088305442388450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338145 (n + 1) + A338144 (n + 1)

end

end A338143.P4755088305442388450

/-! ## A338143.P12748276861502067822

`A338142(n+1)-A338144(n+1)`
-/

namespace A338143.P12748276861502067822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338142 (n + 1) - A338144 (n + 1)

end

end A338143.P12748276861502067822

/-! ## A338143.P12736344073076546075

`(A338145(n+1)+A338142(n+1))/2`
-/

namespace A338143.P12736344073076546075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338145 (n + 1) + A338142 (n + 1) : ℚ) / 2

end

end A338143.P12736344073076546075

/-! ## A338143.P8574514360154547586

`A338142(n+1)+A057428(n)*A338144(n+1)`
-/

namespace A338143.P8574514360154547586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338142 (n + 1) + A057428 n * A338144 (n + 1)

end

end A338143.P8574514360154547586

/-! ## A338143.P1734642030088685196

`A338147(A269172(n+1))`
-/

namespace A338143.P1734642030088685196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338147 (A269172 (n + 1)).toNat

end

end A338143.P1734642030088685196

/-!
# A338144: Triangle read by rows: T(n,k) is the number of chiral pairs of colorings of the edges of a regular n-D orthotope (or ridges of a regular n-D orthoplex) using exactly k colors. Row n has n*2^(n-1) columns.

The programs for A338144, there is no canonical definition to state claims against.
-/

/-! ## A338144.P14422033647262035256

`A338142(n+1)-A338143(n+1)`
-/

namespace A338144.P14422033647262035256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338142 (n + 1) - A338143 (n + 1)

end

end A338144.P14422033647262035256

/-! ## A338144.P14928572688902665913

`A338143(n+1)-A338145(n+1)`
-/

namespace A338144.P14928572688902665913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338143 (n + 1) - A338145 (n + 1)

end

end A338144.P14928572688902665913

/-! ## A338144.P17611344543511048079

`(A338142(n+1)-A338145(n+1))/2`
-/

namespace A338144.P17611344543511048079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338142 (n + 1) - A338145 (n + 1) : ℚ) / 2

end

end A338144.P17611344543511048079

/-! ## A338144.P8717259519190735667

`A338142(n+1)+A338143(n+1)/A057428(2*n+3)`
-/

namespace A338144.P8717259519190735667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338142 (n + 1) : ℚ) + (A338143 (n + 1) : ℚ) / (A057428 (2 * n + 3) : ℚ)

end

end A338144.P8717259519190735667

/-! ## A338144.P8984323385231421903

`A338143(n+1)+A338145(n+1)/A057428(2*n+3)`
-/

namespace A338144.P8984323385231421903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338143 (n + 1) : ℚ) + (A338145 (n + 1) : ℚ) / (A057428 (2 * n + 3) : ℚ)

end

end A338144.P8984323385231421903

/-!
# A338145: Triangle read by rows: T(n,k) is the number of achiral colorings of the edges of a regular n-D orthotope (or ridges of a regular n-D orthoplex) using exactly k colors. Row n has n*2^(n-1) columns.

The programs for A338145, there is no canonical definition to state claims against.
-/

/-! ## A338145.P17848147232645588020

`A338143(n+1)-A338144(n+1)`
-/

namespace A338145.P17848147232645588020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338143 (n + 1) - A338144 (n + 1)

end

end A338145.P17848147232645588020

/-! ## A338145.P7702177741859987160

`2*A338143(n+1)-A338142(n+1)`
-/

namespace A338145.P7702177741859987160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338143 (n + 1) - A338142 (n + 1)

end

end A338145.P7702177741859987160

/-! ## A338145.P8464035248134753408

`A338142(n+1)-2*A338144(n+1)`
-/

namespace A338145.P8464035248134753408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338142 (n + 1) - 2 * A338144 (n + 1)

end

end A338145.P8464035248134753408

/-! ## A338145.P4490830721520134197

`A338143(n+1)+A057428(n)*A338144(n+1)`
-/

namespace A338145.P4490830721520134197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338143 (n + 1) + A057428 n * A338144 (n + 1)

end

end A338145.P4490830721520134197

/-! ## A338145.P18124107014044917531

`A338142(n+1)-A338144(n+1)-A338144(A000027(n+1))`
-/

namespace A338145.P18124107014044917531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338142 (n + 1) - A338144 (n + 1) - A338144 (A000027 (n + 1)).toNat

end

end A338145.P18124107014044917531

/-!
# A338146: Triangle read by rows: T(n,k) is the number of oriented colorings of the edges of a regular n-D orthoplex (or ridges of a regular n-D orthotope) using exactly k colors. Row 1 has 1 column; row n>1 has 2*n*(n-1) columns.

The programs for A338146, there is no canonical definition to state claims against.
-/

/-! ## A338146.P11374180495792858619

`A338148(n+1)+A338147(n+1)`
-/

namespace A338146.P11374180495792858619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338148 (n + 1) + A338147 (n + 1)

end

end A338146.P11374180495792858619

/-! ## A338146.P15492289966999631206

`A338149(n+1)+2*A338148(n+1)`
-/

namespace A338146.P15492289966999631206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338149 (n + 1) + 2 * A338148 (n + 1)

end

end A338146.P15492289966999631206

/-! ## A338146.P2563022018179242375

`2*A338147(n+1)-A338149(n+1)`
-/

namespace A338146.P2563022018179242375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338147 (n + 1) - A338149 (n + 1)

end

end A338146.P2563022018179242375

/-! ## A338146.P8637777629814636413

`A338148(A000027(n+1))+A338149(n+1)+A338148(n+1)`
-/

namespace A338146.P8637777629814636413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338148 (A000027 (n + 1)).toNat + (A338149 (n + 1) + A338148 (n + 1))

end

end A338146.P8637777629814636413

/-! ## A338146.P1944540538214528800

`A338147(A000027(n+1))+A338147(n+1)-A338149(n+1)`
-/

namespace A338146.P1944540538214528800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338147 (A000027 (n + 1)).toNat + (A338147 (n + 1) - A338149 (n + 1))

end

end A338146.P1944540538214528800

/-!
# A338147: Triangle read by rows: T(n,k) is the number of unoriented colorings of the edges of a regular n-D orthoplex (or ridges of a regular n-D orthotope) using exactly k colors. Row 1 has 1 column; row n>1 has 2*n*(n-1) columns.

The programs for A338147, there is no canonical definition to state claims against.
-/

/-! ## A338147.P14468027381960708006

`A338149(n+1)+A338148(n+1)`
-/

namespace A338147.P14468027381960708006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338149 (n + 1) + A338148 (n + 1)

end

end A338147.P14468027381960708006

/-! ## A338147.P12222137668774537881

`A338146(n+1)-A338148(n+1)`
-/

namespace A338147.P12222137668774537881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338146 (n + 1) - A338148 (n + 1)

end

end A338147.P12222137668774537881

/-! ## A338147.P14103532784263021696

`(A338149(n+1)+A338146(n+1))/2`
-/

namespace A338147.P14103532784263021696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338149 (n + 1) + A338146 (n + 1) : ℚ) / 2

end

end A338147.P14103532784263021696

/-! ## A338147.P18098107928528099161

`A338146(n+1)+A057428(n)*A338148(n+1)`
-/

namespace A338147.P18098107928528099161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338146 (n + 1) + A057428 n * A338148 (n + 1)

end

end A338147.P18098107928528099161

/-!
# A338148: Triangle read by rows: T(n,k) is the number of chiral pairs of colorings of the edges of a regular n-D orthoplex (or ridges of a regular n-D orthotope) using exactly k colors. Row 1 has 1 column; row n>1 has 2*n*(n-1) columns.

The programs for A338148, there is no canonical definition to state claims against.
-/

/-! ## A338148.P17729768103903446832

`A338146(n+1)-A338147(n+1)`
-/

namespace A338148.P17729768103903446832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338146 (n + 1) - A338147 (n + 1)

end

end A338148.P17729768103903446832

/-! ## A338148.P2014435571839351722

`A338147(n+1)-A338149(n+1)`
-/

namespace A338148.P2014435571839351722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338147 (n + 1) - A338149 (n + 1)

end

end A338148.P2014435571839351722

/-! ## A338148.P2688946811638636638

`(A338146(n+1)-A338149(n+1))/2`
-/

namespace A338148.P2688946811638636638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338146 (n + 1) - A338149 (n + 1) : ℚ) / 2

end

end A338148.P2688946811638636638

/-! ## A338148.P2886689846100150636

`A338147(n+1)+A338149(n+1)/A057428(2*n+3)`
-/

namespace A338148.P2886689846100150636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338147 (n + 1) : ℚ) + (A338149 (n + 1) : ℚ) / (A057428 (2 * n + 3) : ℚ)

end

end A338148.P2886689846100150636

/-!
# A338149: Triangle read by rows: T(n,k) is the number of achiral colorings of the edges of a regular n-D orthoplex (or ridges of a regular n-D orthotope) using exactly k colors. Row 1 has 1 column; row n>1 has 2*n*(n-1) columns.

The programs for A338149, there is no canonical definition to state claims against.
-/

/-! ## A338149.P5634741906784692938

`A338147(n+1)-A338148(n+1)`
-/

namespace A338149.P5634741906784692938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338147 (n + 1) - A338148 (n + 1)

end

end A338149.P5634741906784692938

/-! ## A338149.P2031307807012311432

`2*A338147(n+1)-A338146(n+1)`
-/

namespace A338149.P2031307807012311432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338147 (n + 1) - A338146 (n + 1)

end

end A338149.P2031307807012311432

/-! ## A338149.P12116588041970564215

`A338146(n+1)-2*A338148(n+1)`
-/

namespace A338149.P12116588041970564215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338146 (n + 1) - 2 * A338148 (n + 1)

end

end A338149.P12116588041970564215

/-! ## A338149.P17485987493202033834

`A338147(n+1)+A057428(n)*A338148(n+1)`
-/

namespace A338149.P17485987493202033834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338147 (n + 1) + A057428 n * A338148 (n + 1)

end

end A338149.P17485987493202033834

/-! ## A338149.P6732288351179805991

`A338146(n+1)-A338148(n+1)-A338148(A000027(n+1))`
-/

namespace A338149.P6732288351179805991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338146 (n + 1) - A338148 (n + 1) - A338148 (A000027 (n + 1)).toNat

end

end A338149.P6732288351179805991

/-!
# A338150: a(n) is the least j >= 2 such that (n+1)^A338136(n) mod n^j is a perfect power > 1.

The programs for A338150, there is no canonical definition to state claims against.
-/

/-! ## A338150.P13440924069976750159

`A039969(A142200(n+1))+2`
-/

namespace A338150.P13440924069976750159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (A142200 (n + 1)).toNat + 2

end

end A338150.P13440924069976750159

/-! ## A338150.P11127983067180997317

`A325273(A325253(2*n)+A003622(2*(n+2)))`
-/

namespace A338150.P11127983067180997317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325273 (A325253 (2 * n) + A003622 (2 * (n + 2))).toNat

end

end A338150.P11127983067180997317

/-! ## A338150.P14439109441770794264

`A120875(A032920(n+1))%5`
-/

namespace A338150.P14439109441770794264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120875 (A032920 (n + 1)).toNat) 5

end

end A338150.P14439109441770794264

/-! ## A338150.P266722852468341934

`p?[A256282(n)]*A000034(A324922(n+1))`
-/

namespace A338150.P266722852468341934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (A324922 (n + 1)).toNat

end

end A338150.P266722852468341934

/-!
# A338151: a(n) = (n+1)^A338136(n) mod n^A338150(n).

The programs for A338151, there is no canonical definition to state claims against.
-/

/-! ## A338151.P14478865803979685963

`(∑{d}[p?[2^n+1]+1, #%2]+1)²`
-/

namespace A338151.P14478865803979685963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d % 2 + 1) ^ 2

end

end A338151.P14478865803979685963

/-! ## A338151.P1590834720660629163

`(∑{d}[A052955(2^n)+5, #%2]+1)²`
-/

namespace A338151.P1590834720660629163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 ^ n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2 + 1) ^ 2

end

end A338151.P1590834720660629163

/-!
# A338155: (Smallest prime >= 3^n) - (largest prime <= 3^n).

The programs for A338155, there is no canonical definition to state claims against.
-/

/-! ## A338155.P9647219654840859149

`A104081(n+1)-A104088(n+1)`
-/

namespace A338155.P9647219654840859149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104081 (n + 1) - A104088 (n + 1)

end

end A338155.P9647219654840859149

/-! ## A338155.P17471732117652888759

`A104081(A000027(n+1))%A104088(n+1)`
-/

namespace A338155.P17471732117652888759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104081 (A000027 (n + 1)).toNat) (A104088 (n + 1))

end

end A338155.P17471732117652888759

/-! ## A338155.P17244013218540750715

`A104081(A000007(n+1)+1+n)%A104088(n+1)`
-/

namespace A338155.P17244013218540750715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104081 (A000007 (n + 1) + 1 + (n : ℤ)).toNat) (A104088 (n + 1))

end

end A338155.P17244013218540750715

/-! ## A338155.P15690633442589434637

`A104081(A002260(∑[n+3]+1))%A104088(n+1)`
-/

namespace A338155.P15690633442589434637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104081 (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat) (A104088 (n + 1))

end

end A338155.P15690633442589434637

/-!
# A338156: Irregular triangle read by rows in which row n lists n blocks, where the m-th block consists of A000041(m-1) copies of the divisors of (n - m + 1), with 1 <= m <= n.

The programs for A338156, there is no canonical definition to state claims against.
-/

/-! ## A338156.P9164243485953742895

`A340031(lt[0, A340031(n+1)]+1)`
-/

namespace A338156.P9164243485953742895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A338156.P9164243485953742895

/-! ## A338156.P16549194873346178923

`gcd(A195082(n+1), A330420(A278355(n)))`
-/

namespace A338156.P16549194873346178923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195082 (n + 1)) (A330420 (A278355 n).toNat)

end

end A338156.P16549194873346178923

/-! ## A338156.P2396975076361621272

`A334442(A255021(n+1)%A122111(n+1))`
-/

namespace A338156.P2396975076361621272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334442 (Int.tmod (A255021 (n + 1)) (A122111 (n + 1))).toNat

end

end A338156.P2396975076361621272

/-! ## A338156.P3360794858759217734

`gcd(A091287(A091310(n+1)), A194976(n+1))`
-/

namespace A338156.P3360794858759217734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091287 (A091310 (n + 1)).toNat) (A194976 (n + 1))

end

end A338156.P3360794858759217734

/-! ## A338156.P2163311960237955355

`gcd(A325032(2*n+1), A384583(A187224(2*n+5)))`
-/

namespace A338156.P2163311960237955355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325032 (2 * n + 1)) (A384583 (A187224 (2 * n + 5)).toNat)

end

end A338156.P2163311960237955355

/-!
# A338157: Numbers that follow from the alternating series a(n) = d(1) - d(2) + d(3) -d(4) + ... + (-1)^(n+1) d(n), where d(k) denotes the k-th term of the digit sequence of the Golden Ratio.

The programs for A338157, there is no canonical definition to state claims against.
-/

/-! ## A338157.P1863795726012506294

`∑[(-1)^n*floor(ϕ*10^n)%10]`
-/

namespace A338157.P1863795726012506294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * Int.tmod ⌊Real.goldenRatio * (10 ^ n : ℝ)⌋ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P1863795726012506294

/-! ## A338157.P14798541749342028954

`∑[(-1)^n*A001622(n)]`
-/

namespace A338157.P14798541749342028954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P14798541749342028954

/-! ## A338157.P8923089290457681432

`∑[(-1)^n*A098369(∑[n])]`
-/

namespace A338157.P8923089290457681432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A098369 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P8923089290457681432

/-! ## A338157.P6256148766276391888

`∑[(-1)^n*A104457(n)]-1`
-/

namespace A338157.P6256148766276391888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A338157.P6256148766276391888

/-! ## A338157.P12877075823208890929

`∑[(-1)^n*A094214(abs(1-n))]`
-/

namespace A338157.P12877075823208890929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A094214 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P12877075823208890929

/-! ## A338157.P17821953412333899332

`∑[A094214(abs(n-1))/(-1)^n]`
-/

namespace A338157.P17821953412333899332
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094214 |(n : ℤ) - 1|.toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P17821953412333899332

/-! ## A338157.P16247967766834827760

`∑[(9-A109866(n+1))*(-1)^n]`
-/

namespace A338157.P16247967766834827760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A109866 (n + 1)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P16247967766834827760

/-! ## A338157.P4111127445286926836

`∑[A001622(n)*A033999(n)]`
-/

namespace A338157.P4111127445286926836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P4111127445286926836

/-! ## A338157.P9463623928971047358

`∑[A001622(n)*A087960(n²)]`
-/

namespace A338157.P9463623928971047358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) * A087960 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338157.P9463623928971047358

/-!
# A338159: The least number which can be represented as a product of the greatest number of distinct positive integers in exactly n ways.

The programs for A338159, there is no canonical definition to state claims against.
-/

/-! ## A338159.P1198054903422065543

`filter[A077566(2*n+1), A276394(#)]`
-/

namespace A338159.P1198054903422065543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077566 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276394 (f1 j).toNat = 1) n)

end

end A338159.P1198054903422065543

/-! ## A338159.P10088271872692795726

`A298031(n)*A299701(A337010(n))`
-/

namespace A338159.P10088271872692795726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298031 n * A299701 (A337010 n).toNat

end

end A338159.P10088271872692795726

/-!
# A338160: Number of ways to represent n as a product of the greatest number of distinct factors.

The programs for A338160, there is no canonical definition to state claims against.
-/

/-! ## A338160.P10412494929728788161

`∑{e}[A007837(A045778(n+1)+1)+1, #]`
-/

namespace A338160.P10412494929728788161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 (A045778 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A338160.P10412494929728788161

/-! ## A338160.P14236755890842629134

`A332288(∏{e}[n+1, A007055(#)+1])`
-/

namespace A338160.P14236755890842629134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (∏ p ∈ Nat.primeFactors (f1 n), (A007055 (Nat.factorization (f1 n) p) + 1)).toNat

end

end A338160.P14236755890842629134

/-! ## A338160.P12432343656666436927

`A284600(A000005(n+1))%A242226(2*n+1)`
-/

namespace A338160.P12432343656666436927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284600 (A000005 (n + 1)).toNat) (A242226 (2 * n + 1))

end

end A338160.P12432343656666436927

/-! ## A338160.P8576738115733812122

`A008480(A000005(n+1)^A270419(n+4))`
-/

namespace A338160.P8576738115733812122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.roundAway ((A000005 (n + 1) : ℚ) ^ (A270419 (n + 4) : ℤ))).toNat

end

end A338160.P8576738115733812122

/-! ## A338160.P15408088999536377721

`gcd(A335450(A000005(n+1)), A335451(n+1))`
-/

namespace A338160.P15408088999536377721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A335450 (A000005 (n + 1)).toNat) (A335451 (n + 1))

end

end A338160.P15408088999536377721

/-! ## A338160.P16318310134424361814

`A332288(lcm(A000005(n+1), A332288(n+1)))`
-/

namespace A338160.P16318310134424361814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (Int.lcm (A000005 (n + 1)) (A332288 (n + 1)))

end

end A338160.P16318310134424361814

/-! ## A338160.P14534543575724231915

`or(A335520(n+1), A335521(A000005(n+1)))`
-/

namespace A338160.P14534543575724231915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335520 (n + 1)) (A335521 (A000005 (n + 1)).toNat)

end

end A338160.P14534543575724231915

/-! ## A338160.P16582798686953499884

`A335450(A335453(n+2)+A000005(n+1))`
-/

namespace A338160.P16582798686953499884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (A335453 (n + 2) + A000005 (n + 1)).toNat

end

end A338160.P16582798686953499884

/-! ## A338160.P7927606952262901390

`A285572(A000005(n+1))%A298978(n+4)`
-/

namespace A338160.P7927606952262901390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285572 (A000005 (n + 1)).toNat) (A298978 (n + 4))

end

end A338160.P7927606952262901390

/-!
# A338162: Number of ways to write 4*n + 1 as x^2 + y^2 + z^2 + w^2 with x^2 + 7*y^2 = 2^k for some k = 0,1,2,..., where x, y, z, w are nonnegative integers with z <= w.

The programs for A338162, there is no canonical definition to state claims against.
-/

/-! ## A338162.P5527246520545033642

`A001222(lcm(A005767(n+1), A008998(n)))`
-/

namespace A338162.P5527246520545033642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A005767 (n + 1)) (A008998 n))

end

end A338162.P5527246520545033642

/-! ## A338162.P9996484789666877528

`A000120(lcm(A014217(n), A096909(2*(n+2))))`
-/

namespace A338162.P9996484789666877528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A014217 n) (A096909 (2 * (n + 2))))

end

end A338162.P9996484789666877528

/-! ## A338162.P4119098010471021357

`A348772(lt[A372980(3*n+2), A225118(2*(n+1))])`
-/

namespace A338162.P4119098010471021357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372980 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225118 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348772 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338162.P4119098010471021357

/-!
# A338163: O.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x)^5)' / (x/A(x)^9)' dx.

The programs for A338163, there is no canonical definition to state claims against.
-/

/-! ## A338163.P8145108802133001071

`A292728(2^(n+1)+1)-n`
-/

namespace A338163.P8145108802133001071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292728 (2 ^ (n + 1) + 1) - (n : ℤ)

end

end A338163.P8145108802133001071

/-!
# A338164: Dirichlet g.f.: (zeta(s-2) / zeta(s))^2.

The programs for A338164, the canonical program `A338164.P17006398966591208624` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338164 has offset 1).

The definition of A338164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338164.P7873539205622448732

`A007434(n+1)/(n+1)*A322577(n+1)`
-/

namespace A338164.P7873539205622448732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (n + 1 : ℚ) * (A322577 (n + 1) : ℚ)

end

end A338164.P7873539205622448732

namespace A338164

/-- `A007434(n+1)/(n+1)*A322577(n+1)` -/
def P7873539205622448732.Spec : Prop :=
  ∀ n, P7873539205622448732.a n = (A338164 (n + 1) : ℚ)

end A338164

/-! ## A338164.P14438336829278191188

`∑{d}[n+1, A007434(#)*A007434((n+1)/#)]`
-/

namespace A338164.P14438336829278191188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P14438336829278191188

namespace A338164

/-- `∑{d}[n+1, A007434(#)*A007434((n+1)/#)]` -/
def P14438336829278191188.Spec : Prop :=
  ∀ n, P14438336829278191188.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P17006398966591208624

`∑{d}[n+1, A007427(#)*A034714((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338164

/-- `∑{d}[n+1, A007427(#)*A034714((n+1)/#)]` -/
def P17006398966591208624.Spec : Prop :=
  ∀ n, P17006398966591208624.a n = A338164 (n + 1)

theorem P17006398966591208624.correct : P17006398966591208624.Spec := by
  intro n
  simp only [A338164, Nat.add_sub_cancel]

end A338164

/-! ## A338164.P2872676038417997267

`∑{d}[n+1, A063445(#)*A069097((n+1)/#)]`
-/

namespace A338164.P2872676038417997267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A069097 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P2872676038417997267

namespace A338164

/-- `∑{d}[n+1, A063445(#)*A069097((n+1)/#)]` -/
def P2872676038417997267.Spec : Prop :=
  ∀ n, P2872676038417997267.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P14781178407075246436

`∑{d}[n+1, A000290(#)*A321322((n+1)/#)]`
-/

namespace A338164.P14781178407075246436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A321322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P14781178407075246436

namespace A338164

/-- `∑{d}[n+1, A000290(#)*A321322((n+1)/#)]` -/
def P14781178407075246436.Spec : Prop :=
  ∀ n, P14781178407075246436.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P8870499963933237219

`∑{d}[n+1, A002618(#)*A341772((n+1)/#)]`
-/

namespace A338164.P8870499963933237219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A341772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P8870499963933237219

namespace A338164

/-- `∑{d}[n+1, A002618(#)*A341772((n+1)/#)]` -/
def P8870499963933237219.Spec : Prop :=
  ∀ n, P8870499963933237219.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P18034183985677825977

`∑{d}[n+1, A007428(#)*A360429((n+1)/#)]`
-/

namespace A338164.P18034183985677825977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A360429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P18034183985677825977

namespace A338164

/-- `∑{d}[n+1, A007428(#)*A360429((n+1)/#)]` -/
def P18034183985677825977.Spec : Prop :=
  ∀ n, P18034183985677825977.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P1882961493424864812

`∑{d}[n+1, A008683(#)*A360428((n+1)/#)]`
-/

namespace A338164.P1882961493424864812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A360428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P1882961493424864812

namespace A338164

/-- `∑{d}[n+1, A008683(#)*A360428((n+1)/#)]` -/
def P1882961493424864812.Spec : Prop :=
  ∀ n, P1882961493424864812.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P9656246326590409172

`∑{d}[n+1, A143275(#)*A373059((n+1)/#)]`
-/

namespace A338164.P9656246326590409172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143275 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P9656246326590409172

namespace A338164

/-- `∑{d}[n+1, A143275(#)*A373059((n+1)/#)]` -/
def P9656246326590409172.Spec : Prop :=
  ∀ n, P9656246326590409172.a n = A338164 (n + 1)

end A338164

/-! ## A338164.P17066351456648636097

`∑{d}[n+1, A247343(#)*A328490((n+1)/#)]`
-/

namespace A338164.P17066351456648636097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A328490 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338164.P17066351456648636097

namespace A338164

/-- `∑{d}[n+1, A247343(#)*A328490((n+1)/#)]` -/
def P17066351456648636097.Spec : Prop :=
  ∀ n, P17066351456648636097.a n = A338164 (n + 1)

end A338164

/-!
# A338165: Dirichlet g.f.: (zeta(s-3) / zeta(s))^2.

The programs for A338165, the canonical program `A338165.P14176460917609793064` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338165 has offset 1).

The definition of A338165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338165.P14176460917609793064

`∑{d}[n+1, A059376(#)*A059376((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338165

/-- `∑{d}[n+1, A059376(#)*A059376((n+1)/#)]` -/
def P14176460917609793064.Spec : Prop :=
  ∀ n, P14176460917609793064.a n = A338165 (n + 1)

theorem P14176460917609793064.correct : P14176460917609793064.Spec := by
  intro n
  simp only [A338165, Nat.add_sub_cancel]

end A338165

/-! ## A338165.P17014881338940813123

`∑{d}[n+1, A008683(#)*A372928((n+1)/#)]`
-/

namespace A338165.P17014881338940813123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A372928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338165.P17014881338940813123

namespace A338165

/-- `∑{d}[n+1, A008683(#)*A372928((n+1)/#)]` -/
def P17014881338940813123.Spec : Prop :=
  ∀ n, P17014881338940813123.a n = A338165 (n + 1)

end A338165

/-! ## A338165.P8330913596448352248

`∑{d}[n+1, A007427(#)*A386012((n+1)/#)]`
-/

namespace A338165.P8330913596448352248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A386012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338165.P8330913596448352248

namespace A338165

/-- `∑{d}[n+1, A007427(#)*A386012((n+1)/#)]` -/
def P8330913596448352248.Spec : Prop :=
  ∀ n, P8330913596448352248.a n = A338165 (n + 1)

end A338165

/-!
# A338169: A list of all finite sequences of distinct positive integers sorted by their maximum value, then lexicographically.

The programs for A338169, there is no canonical definition to state claims against.
-/

/-! ## A338169.P3898289668184863359

`A322156(∑[A000034(A001630(n))])`
-/

namespace A338169.P3898289668184863359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001630 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322156 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338169.P3898289668184863359

/-! ## A338169.P17657199294756290764

`A001221(or(A056040(n), A350545(n+1)))`
-/

namespace A338169.P17657199294756290764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A056040 n) (A350545 (n + 1))).toNat

end

end A338169.P17657199294756290764

/-! ## A338169.P10911419420366934003

`gcd(A167831(2*n+1), A338253(A024723(n+2)))`
-/

namespace A338169.P10911419420366934003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167831 (2 * n + 1)) (A338253 (A024723 (n + 2)).toNat)

end

end A338169.P10911419420366934003

/-! ## A338169.P1488313914089550241

`A115575(A115580(2*n+3)+A004760(2*n+3))`
-/

namespace A338169.P1488313914089550241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (A115580 (2 * n + 3) + A004760 (2 * n + 3)).toNat

end

end A338169.P1488313914089550241

/-! ## A338169.P7557468360200171919

`A264990(A268448(2*(n+1))%A057948(3*(n+1)))`
-/

namespace A338169.P7557468360200171919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264990 (Int.tmod (A268448 (2 * (n + 1))) (A057948 (3 * (n + 1)))).toNat

end

end A338169.P7557468360200171919

/-!
# A338170: a(n) is the number of divisors d of n such that tau(d) divides sigma(d).

The programs for A338170, the canonical program `A338170.P13165122864049220146` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338170 has offset 1).

The definition of A338170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338170.P13165122864049220146

`∑{d}[n+1, A245656(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338170

/-- `∑{d}[n+1, A245656(#)]` -/
def P13165122864049220146.Spec : Prop :=
  ∀ n, P13165122864049220146.a n = A338170 (n + 1)

theorem P13165122864049220146.correct : P13165122864049220146.Spec := by
  intro n
  simp only [A338170, Nat.add_sub_cancel]

end A338170

/-! ## A338170.P1495676779328232853

`A086435(2*A338172(n+1))`
-/

namespace A338170.P1495676779328232853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (2 * A338172 (n + 1)).toNat

end

end A338170.P1495676779328232853

namespace A338170

/-- `A086435(2*A338172(n+1))` -/
def P1495676779328232853.Spec : Prop :=
  ∀ n, P1495676779328232853.a n = A338170 (n + 1)

end A338170

/-! ## A338170.P12710381652642585068

`A034444(n+1)-A134022(A158928(n+1))`
-/

namespace A338170.P12710381652642585068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A134022 (A158928 (n + 1)).toNat

end

end A338170.P12710381652642585068

namespace A338170

/-- `A034444(n+1)-A134022(A158928(n+1))` -/
def P12710381652642585068.Spec : Prop :=
  ∀ n, P12710381652642585068.a n = A338170 (n + 1)

end A338170

/-! ## A338170.P17607527319158830006

`A001221(2*(n+1)*A239448(n+1))`
-/

namespace A338170.P17607527319158830006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((2 * (n + 1) : ℤ) * A239448 (n + 1)).toNat

end

end A338170.P17607527319158830006

namespace A338170

/-- `A001221(2*(n+1)*A239448(n+1))` -/
def P17607527319158830006.Spec : Prop :=
  ∀ n, P17607527319158830006.a n = A338170 (n + 1)

end A338170

/-! ## A338170.P5777101680838433344

`A001221(lcm(n+2+n, A239448(n+1)))`
-/

namespace A338170.P5777101680838433344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (n + 2 + n : ℤ) (A239448 (n + 1)))

end

end A338170.P5777101680838433344

namespace A338170

/-- `A001221(lcm(n+2+n, A239448(n+1)))` -/
def P5777101680838433344.Spec : Prop :=
  ∀ n, P5777101680838433344.a n = A338170 (n + 1)

end A338170

/-!
# A338171: a(n) is the sum of those divisors d of n such that tau(d) divides sigma(d).

The programs for A338171, the canonical program `A338171.P10783673245365028615` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338171 has offset 1).

The definition of A338171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338171.P10783673245365028615

`∑{d}[n+1, #*A245656(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338171

/-- `∑{d}[n+1, #*A245656(#)]` -/
def P10783673245365028615.Spec : Prop :=
  ∀ n, P10783673245365028615.a n = A338171 (n + 1)

theorem P10783673245365028615.correct : P10783673245365028615.Spec := by
  intro n
  simp only [A338171, Nat.add_sub_cancel]

end A338171

/-!
# A338172: a(n) is the product of those divisors d of n such that tau(d) divides sigma(d).

The programs for A338172, there is no canonical definition to state claims against.
-/

/-! ## A338172.P2711889301048175875

`A214681(n+1)*A287957(A081593(n))`
-/

namespace A338172.P2711889301048175875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (n + 1) * A287957 (A081593 n).toNat

end

end A338172.P2711889301048175875

/-! ## A338172.P9155408554951190863

`A026741(A056552(n+1)^A081652(n+1))`
-/

namespace A338172.P9155408554951190863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A056552 (n + 1) : ℚ) ^ (A081652 (n + 1) : ℤ))).toNat

end

end A338172.P9155408554951190863

/-! ## A338172.P10811215394524069427

`gcd((n+1)*∏{p}[n+1, #], A124516(∏{p}[n+1, #]+1))`
-/

namespace A338172.P10811215394524069427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A124516 (∏ p ∈ Nat.primeFactors (f2 n), p + 1))

end

end A338172.P10811215394524069427

/-! ## A338172.P2802856975359355649

`A348036(2*(n+1))^A072411(A067282(n+4))/2`
-/

namespace A338172.P2802856975359355649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348036 (2 * (n + 1)) : ℚ) ^ (A072411 (A067282 (n + 4)).toNat : ℤ) / 2

end

end A338172.P2802856975359355649

/-!
# A338175: Primes p such that (p^2+6)/5 is prime.

The programs for A338175, there is no canonical definition to state claims against.
-/

/-! ## A338175.P9657746872153838758

`p?[A110480(n+1)]`
-/

namespace A338175.P9657746872153838758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338175.P9657746872153838758

/-! ## A338175.P4815487424824553947

`∩[A110480(n+1), A245590(n+1)]`
-/

namespace A338175.P4815487424824553947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P4815487424824553947

/-! ## A338175.P1879814081140331042

`∩[A003631(n+1), A110480(n+1)]`
-/

namespace A338175.P1879814081140331042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P1879814081140331042

/-! ## A338175.P4742058496968166564

`∩[A042993(n+1), A110480(n+1)]`
-/

namespace A338175.P4742058496968166564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P4742058496968166564

/-! ## A338175.P12070977023714824359

`∩[A003631(n+1), A245590(n+1)]`
-/

namespace A338175.P12070977023714824359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P12070977023714824359

/-! ## A338175.P15192909666198144396

`∩[A042993(n+1), A245590(n+1)]`
-/

namespace A338175.P15192909666198144396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P15192909666198144396

/-! ## A338175.P2806119108347916663

`∩[A069104(n+1), A245590(n+1)]`
-/

namespace A338175.P2806119108347916663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P2806119108347916663

/-! ## A338175.P2303617568374480855

`∩[A140971(n+1), A245590(n+1)]`
-/

namespace A338175.P2303617568374480855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P2303617568374480855

/-! ## A338175.P1585726683473657383

`∩[A042989(n+1), A110480(n+1)]`
-/

namespace A338175.P1585726683473657383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P1585726683473657383

/-! ## A338175.P17379336922400097490

`∩[A042986(n+1), A110480(n+1)]`
-/

namespace A338175.P17379336922400097490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P17379336922400097490

/-! ## A338175.P1195496161114936482

`∩[A042991(n+1), A110480(n+1)]`
-/

namespace A338175.P1195496161114936482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P1195496161114936482

/-! ## A338175.P2539325886500375956

`∩[A045321(n+1), A110480(n+1)]`
-/

namespace A338175.P2539325886500375956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P2539325886500375956

/-! ## A338175.P12753801059613856508

`∩[A045327(n+1), A110480(n+1)]`
-/

namespace A338175.P12753801059613856508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P12753801059613856508

/-! ## A338175.P2941013705442815541

`∩[A110480(n+1), A216277(n+1)]`
-/

namespace A338175.P2941013705442815541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P2941013705442815541

/-! ## A338175.P229020037196361809

`∩[A110480(n+1), A216286(n+1)]`
-/

namespace A338175.P229020037196361809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P229020037196361809

/-! ## A338175.P14372799072586447439

`∩[A023162(n+1), A245590(n+1)]`
-/

namespace A338175.P14372799072586447439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P14372799072586447439

/-! ## A338175.P15081956384576905501

`∩[A049557(n+1), A110480(n+1)]`
-/

namespace A338175.P15081956384576905501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P15081956384576905501

/-! ## A338175.P18377629404238030709

`∩[A040179(n+1), A110480(n+1)]`
-/

namespace A338175.P18377629404238030709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P18377629404238030709

/-! ## A338175.P623108198452228835

`∩[A040161(n+1), A110480(n+1)]`
-/

namespace A338175.P623108198452228835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P623108198452228835

/-! ## A338175.P177735520098404907

`∩[A040970(n+1), A110480(n+1)]`
-/

namespace A338175.P177735520098404907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338175.P177735520098404907

/-!
# A338176: G.f.: Sum_{n>=0} Product_{k=0..n-1} ( (1+x)^(n+k) - 1 ).

The programs for A338176, there is no canonical definition to state claims against.
-/

/-! ## A338176.P6827262858496820807

`A128929(n*∑[n^(n+1)]+4)`
-/

namespace A338176.P6827262858496820807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (n * (∑ j ∈ Finset.range (n + 1), f1 j) + 4)

end

end A338176.P6827262858496820807

/-!
# A338177: E.g.f.: Sum_{n>=0} Product_{k=0..n-1} ( exp((n+k)*x) - 1 ).

The programs for A338177, there is no canonical definition to state claims against.
-/

/-! ## A338177.P18325982170877417280

`A101321(A007655(n+1)+A001045(n+1))`
-/

namespace A338177.P18325982170877417280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 (A007655 (n + 1) + A001045 (n + 1)).toNat

end

end A338177.P18325982170877417280

/-!
# A338178: G.f.: A(x) satisfies 1 = Sum_{n>=0} Product_{k=n..2*n-1} ( (1+x)^k - A(x) ).

The programs for A338178, there is no canonical definition to state claims against.
-/

/-! ## A338178.P12323148903313240332

`A096607(n!²)`
-/

namespace A338178.P12323148903313240332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096607 (Nat.factorial n ^ 2)

end

end A338178.P12323148903313240332

/-!
# A338179: G.f.: Sum_{n>=0} x^n * Product_{k=0..n-1} ( 1 + (1+x)^(n+k) ).

The programs for A338179, there is no canonical definition to state claims against.
-/

/-! ## A338179.P3424490235200313808

`A338251(n)+A014200(A206639(n))`
-/

namespace A338179.P3424490235200313808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 n + A014200 (A206639 n).toNat

end

end A338179.P3424490235200313808

/-! ## A338179.P13310439433740620007

`A165707(A116713(n+1))`
-/

namespace A338179.P13310439433740620007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165707 (A116713 (n + 1)).toNat

end

end A338179.P13310439433740620007

/-!
# A338180: G.f.: Sum_{n>=0} x^n * Product_{k=0..n-1} ( 1 + (1+x)^(2*n+k) ).

The programs for A338180, there is no canonical definition to state claims against.
-/

/-! ## A338180.P17458677588186684874

`A008616(7*A275707(n))`
-/

namespace A338180.P17458677588186684874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (7 * A275707 n).toNat

end

end A338180.P17458677588186684874

/-! ## A338180.P4984411962295803151

`A008616(lcm(7, A275707(n)))`
-/

namespace A338180.P4984411962295803151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lcm 7 (A275707 n))

end

end A338180.P4984411962295803151

/-!
# A338181: G.f.: A(x) satisfies 1 = Sum_{n>=0} Product_{k=2*n..3*n-1} ( (1+x)^k - A(x) ).

The programs for A338181, there is no canonical definition to state claims against.
-/

/-! ## A338181.P14801875500581094772

`A196839(n)+A003796(A020556(n))`
-/

namespace A338181.P14801875500581094772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196839 n + A003796 (A020556 n).toNat

end

end A338181.P14801875500581094772

/-!
# A338182: G.f.: Sum_{n>=0} x^n * Product_{k=3*n..4*n-1} (1 + (1+x)^k).

The programs for A338182, there is no canonical definition to state claims against.
-/

/-! ## A338182.P5693476894422975019

`A367263(n)+A038722(A367281(n))`
-/

namespace A338182.P5693476894422975019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367263 n + A038722 (A367281 n).toNat

end

end A338182.P5693476894422975019

/-! ## A338182.P17485668035254842255

`A287727(A203000(n))-A000001(n)`
-/

namespace A338182.P17485668035254842255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (A203000 n).toNat - A000001 n

end

end A338182.P17485668035254842255

/-!
# A338183: G.f.: A(x) satisfies 1 = Sum_{n>=0} Product_{k=3*n..4*n-1} ( (1+x)^k - A(x) ).

The programs for A338183, there is no canonical definition to state claims against.
-/

/-! ## A338183.P7777260819652168971

`A287947(n)+A249331(A006153(n))`
-/

namespace A338183.P7777260819652168971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287947 n + A249331 (A006153 n).toNat

end

end A338183.P7777260819652168971

/-!
# A338184: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-1)^n * x^(n*(n+1)/2) * A(x)^(n+1) /( Product_{k=1..n+1} 1 + x^k*A(x) ).

The programs for A338184, there is no canonical definition to state claims against.
-/

/-! ## A338184.P7344516683432394050

`A308182(A270561(n))`
-/

namespace A338184.P7344516683432394050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308182 (A270561 n).toNat

end

end A338184.P7344516683432394050

/-! ## A338184.P15897490038089976421

`A348351(n+1)-A025442(A035088(n))`
-/

namespace A338184.P15897490038089976421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348351 (n + 1) - A025442 (A035088 n).toNat

end

end A338184.P15897490038089976421

/-! ## A338184.P8199032279176516970

`A348351(n+1)-A348326(A348377(n))`
-/

namespace A338184.P8199032279176516970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348351 (n + 1) - A348326 (A348377 n).toNat

end

end A338184.P8199032279176516970

/-! ## A338184.P8237845550664171337

`xor(A034330(A034348(n+1)), A348351(n+1))`
-/

namespace A338184.P8237845550664171337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034330 (A034348 (n + 1)).toNat) (A348351 (n + 1))

end

end A338184.P8237845550664171337

/-!
# A338185: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-1)^n * (n+1) * x^(n*(n+1)/2) * A(x)^(n+1) /( Product_{k=1..n+1} 1 - x^k*A(x) ).

The programs for A338185, there is no canonical definition to state claims against.
-/

/-! ## A338185.P12894429523780649055

`A034887(A389439(n+1))`
-/

namespace A338185.P12894429523780649055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A389439 (n + 1)).toNat

end

end A338185.P12894429523780649055

/-! ## A338185.P14961794159278183310

`A261221(A274483(n+1))`
-/

namespace A338185.P14961794159278183310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A274483 (n + 1)).toNat

end

end A338185.P14961794159278183310

/-! ## A338185.P5935932727957675944

`A137588(A054667(n+1)+2)`
-/

namespace A338185.P5935932727957675944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A054667 (n + 1) + 2).toNat

end

end A338185.P5935932727957675944

/-!
# A338186: Expansion of (2-6*x-12*x^2)/((1-x)^2*(1-9*x)).

The programs for A338186, the canonical program `A338186.P16273133945813133395` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338186 has offset 0).

The definition of A338186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338186.P16273133945813133395

`11*a(n-1)-19*a(n-2)+9*a(n-3)` with `a(0)=2, a(1)=16, a(2)=126`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A338186

/-- `11*a(n-1)-19*a(n-2)+9*a(n-3)` -/
def P16273133945813133395.Spec : Prop :=
  ∀ n, P16273133945813133395.a n = A338186 n

theorem P16273133945813133395.correct : P16273133945813133395.Spec := by
  intro n
  simp only [A338186]

end A338186

/-! ## A338186.P4997481509334323938

`ceil(3/2*9^n+2*n)`
-/

namespace A338186.P4997481509334323938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 2 * (9 ^ n : ℚ) + (2 * n : ℚ)⌉

end

end A338186.P4997481509334323938

namespace A338186

/-- `ceil(3/2*9^n+2*n)` -/
def P4997481509334323938.Spec : Prop :=
  ∀ n, P4997481509334323938.a n = A338186 n

end A338186

/-! ## A338186.P5417703542533061511

`record[∑[3^n+1]*char[2*n]]`
-/

namespace A338186.P5417703542533061511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338186.P5417703542533061511

namespace A338186

/-- `record[∑[3^n+1]*char[2*n]]` -/
def P5417703542533061511.Spec : Prop :=
  ∀ n, (P5417703542533061511.a n : ℤ) = A338186 n

end A338186

/-! ## A338186.P3060295420983955318

`2*A047926(2*n)`
-/

namespace A338186.P3060295420983955318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047926 (2 * n)

end

end A338186.P3060295420983955318

namespace A338186

/-- `2*A047926(2*n)` -/
def P3060295420983955318.Spec : Prop :=
  ∀ n, P3060295420983955318.a n = A338186 n

end A338186

/-! ## A338186.P2269142824044466761

`2*(A066443(n)+n)`
-/

namespace A338186.P2269142824044466761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066443 n + (n : ℤ))

end

end A338186.P2269142824044466761

namespace A338186

/-- `2*(A066443(n)+n)` -/
def P2269142824044466761.Spec : Prop :=
  ∀ n, P2269142824044466761.a n = A338186 n

end A338186

/-! ## A338186.P15497806721425420789

`A199560(n)+2*n`
-/

namespace A338186.P15497806721425420789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199560 n + (2 * n : ℤ)

end

end A338186.P15497806721425420789

namespace A338186

/-- `A199560(n)+2*n` -/
def P15497806721425420789.Spec : Prop :=
  ∀ n, P15497806721425420789.a n = A338186 n

end A338186

/-! ## A338186.P11840571345379730909

`A378796(Δ[n²])+1`
-/

namespace A338186.P11840571345379730909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378796 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A338186.P11840571345379730909

namespace A338186

/-- `A378796(Δ[n²])+1` -/
def P11840571345379730909.Spec : Prop :=
  ∀ n, P11840571345379730909.a n = A338186 n

end A338186

/-! ## A338186.P5562387405802747469

`A233656(Δ[n²])-1`
-/

namespace A338186.P5562387405802747469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A338186.P5562387405802747469

namespace A338186

/-- `A233656(Δ[n²])-1` -/
def P5562387405802747469.Spec : Prop :=
  ∀ n, P5562387405802747469.a n = A338186 n

end A338186

/-! ## A338186.P18399214619707731510

`Δ[A004004(n)+n²]`
-/

namespace A338186.P18399214619707731510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004004 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338186.P18399214619707731510

namespace A338186

/-- `Δ[A004004(n)+n²]` -/
def P18399214619707731510.Spec : Prop :=
  ∀ n, P18399214619707731510.a n = A338186 n

end A338186

/-! ## A338186.P17515289357951692433

`∑[2*A100702(2*n)]`
-/

namespace A338186.P17515289357951692433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100702 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338186.P17515289357951692433

namespace A338186

/-- `∑[2*A100702(2*n)]` -/
def P17515289357951692433.Spec : Prop :=
  ∀ n, P17515289357951692433.a n = A338186 n

end A338186

/-! ## A338186.P16790982164826541932

`∑[lcm(2, A052919(2*n))]`
-/

namespace A338186.P16790982164826541932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A052919 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338186.P16790982164826541932

namespace A338186

/-- `∑[lcm(2, A052919(2*n))]` -/
def P16790982164826541932.Spec : Prop :=
  ∀ n, (P16790982164826541932.a n : ℤ) = A338186 n

end A338186

/-! ## A338186.P14023683750150244125

`2*(∑[A092810(n)]+n)`
-/

namespace A338186.P14023683750150244125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A338186.P14023683750150244125

namespace A338186

/-- `2*(∑[A092810(n)]+n)` -/
def P14023683750150244125.Spec : Prop :=
  ∀ n, P14023683750150244125.a n = A338186 n

end A338186

/-! ## A338186.P17939229304216886724

`A096053(n)+2*n+1`
-/

namespace A338186.P17939229304216886724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096053 n + (2 * n + 1 : ℤ)

end

end A338186.P17939229304216886724

namespace A338186

/-- `A096053(n)+2*n+1` -/
def P17939229304216886724.Spec : Prop :=
  ∀ n, P17939229304216886724.a n = A338186 n

end A338186

/-! ## A338186.P1690453273372368236

`A007051(Δ[n²])+2*n`
-/

namespace A338186.P1690453273372368236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (2 * n : ℤ)

end

end A338186.P1690453273372368236

namespace A338186

/-- `A007051(Δ[n²])+2*n` -/
def P1690453273372368236.Spec : Prop :=
  ∀ n, P1690453273372368236.a n = A338186 n

end A338186

/-! ## A338186.P2664599191006205227

`Δ[A097137(2*n)+n²]`
-/

namespace A338186.P2664599191006205227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 (2 * n) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338186.P2664599191006205227

namespace A338186

/-- `Δ[A097137(2*n)+n²]` -/
def P2664599191006205227.Spec : Prop :=
  ∀ n, P2664599191006205227.a n = A338186 n

end A338186

/-! ## A338186.P3258932544806852955

`∑[A079003(2*n+1)]-1`
-/

namespace A338186.P3258932544806852955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079003 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A338186.P3258932544806852955

namespace A338186

/-- `∑[A079003(2*n+1)]-1` -/
def P3258932544806852955.Spec : Prop :=
  ∀ n, P3258932544806852955.a n = A338186 n

end A338186

/-! ## A338186.P3322020686420103522

`2*(A164039(2*n+1)-1)`
-/

namespace A338186.P3322020686420103522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164039 (2 * n + 1) - 1)

end

end A338186.P3322020686420103522

namespace A338186

/-- `2*(A164039(2*n+1)-1)` -/
def P3322020686420103522.Spec : Prop :=
  ∀ n, P3322020686420103522.a n = A338186 n

end A338186

/-! ## A338186.P17179133137542352957

`2*(A243513(2*n+1)-2)`
-/

namespace A338186.P17179133137542352957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A243513 (2 * n + 1) - 2)

end

end A338186.P17179133137542352957

namespace A338186

/-- `2*(A243513(2*n+1)-2)` -/
def P17179133137542352957.Spec : Prop :=
  ∀ n, P17179133137542352957.a n = A338186 n

end A338186

/-! ## A338186.P11490201532712557455

`2*(A014983(2*n+1)+n)`
-/

namespace A338186.P11490201532712557455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014983 (2 * n + 1) + (n : ℤ))

end

end A338186.P11490201532712557455

namespace A338186

/-- `2*(A014983(2*n+1)+n)` -/
def P11490201532712557455.Spec : Prop :=
  ∀ n, P11490201532712557455.a n = A338186 n

end A338186

/-! ## A338186.P12263195618282431550

`2*(A015518(2*n+1)+n)`
-/

namespace A338186.P12263195618282431550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A015518 (2 * n + 1) + (n : ℤ))

end

end A338186.P12263195618282431550

namespace A338186

/-- `2*(A015518(2*n+1)+n)` -/
def P12263195618282431550.Spec : Prop :=
  ∀ n, P12263195618282431550.a n = A338186 n

end A338186

/-!
# A338187: E.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x)^3)' / (x/A(x)^4)' dx.

The programs for A338187, there is no canonical definition to state claims against.
-/

/-! ## A338187.P15045861754811872055

`A181293(A000166(n))+A082491(n)`
-/

namespace A338187.P15045861754811872055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181293 (A000166 n).toNat + A082491 n

end

end A338187.P15045861754811872055

/-! ## A338187.P8775847267031285164

`A181293(A260074(n))+A082491(n)`
-/

namespace A338187.P8775847267031285164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181293 (A260074 n).toNat + A082491 n

end

end A338187.P8775847267031285164

/-!
# A338188: E.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x)^8)' / (x/A(x)^9)' dx.

The programs for A338188, there is no canonical definition to state claims against.
-/

/-! ## A338188.P15781411785061852883

`∑[round(a(n-1)/n)!]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=22`
-/

namespace A338188.P15781411785061852883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 22] fun n f1 =>
  Nat.factorial (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / (n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338188.P15781411785061852883

/-!
# A338189: Integers m such that A337454(m) = 1.

The programs for A338189, there is no canonical definition to state claims against.
-/

/-! ## A338189.P11751233651644927828

`eq[1, A337454(n+1)]+1`
-/

namespace A338189.P11751233651644927828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338189.P11751233651644927828

/-! ## A338189.P7274812920522292542

`A004442(eq[1, A337454(n+1)])`
-/

namespace A338189.P7274812920522292542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338189.P7274812920522292542

/-! ## A338189.P10448810506895240330

`eq[A000035(n), A337454(A028310(n))]`
-/

namespace A338189.P10448810506895240330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338189.P10448810506895240330

/-! ## A338189.P16405195666669791989

`eq[A057427(n), A337454(A028310(n))]`
-/

namespace A338189.P16405195666669791989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338189.P16405195666669791989

/-! ## A338189.P4504548102902577998

`eq[-A337454(A028310(n)), A033999(n)]`
-/

namespace A338189.P4504548102902577998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A337454 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338189.P4504548102902577998

/-!
# A338190: Integers m such that A337454(m) = tau(m), the number of divisors of n.

The programs for A338190, there is no canonical definition to state claims against.
-/

/-! ## A338190.P1232164171100956168

`eq[Δ[A006218(n)], A337454(n+1)]+1`
-/

namespace A338190.P1232164171100956168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A338190.P1232164171100956168

/-! ## A338190.P5160693333297052897

`eq[A000005(n+1), A337454(n+1)]+1`
-/

namespace A338190.P5160693333297052897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338190.P5160693333297052897

/-! ## A338190.P87712946486961837

`eq[A032741(n+1)+1, A337454(n+1)]+1`
-/

namespace A338190.P87712946486961837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338190.P87712946486961837

/-! ## A338190.P10644282827514676501

`A000027(eq[∏{e}[n+1, #+1], A337454(n+1)]+1)`
-/

namespace A338190.P10644282827514676501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1)

end

end A338190.P10644282827514676501

/-! ## A338190.P16470137628464823778

`lt[A346607(n+1), A110632(3*n)]+1`
-/

namespace A338190.P16470137628464823778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110632 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A338190.P16470137628464823778

/-!
# A338191: a(1) = 1, a(n) is the least m not already in a(n) such that m mod 10 = decimal digital root of a(n - 1).

The programs for A338191, there is no canonical definition to state claims against.
-/

/-! ## A338191.P13461180113764547737

`A000041(A151620(n))*A340138(n+3)`
-/

namespace A338191.P13461180113764547737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A151620 n).toNat * A340138 (n + 3)

end

end A338191.P13461180113764547737

/-! ## A338191.P9181539222939638733

`A340138(n+3)+A340090(A000043(n+1))`
-/

namespace A338191.P9181539222939638733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340138 (n + 3) + A340090 (A000043 (n + 1)).toNat

end

end A338191.P9181539222939638733

/-! ## A338191.P1107306884806157621

`A340138(n+3)+A036987(A096452(n+4))`
-/

namespace A338191.P1107306884806157621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340138 (n + 3) + A036987 (A096452 (n + 4)).toNat

end

end A338191.P1107306884806157621

/-! ## A338191.P6908764948472232176

`A340138(n+3)+A296604(A340096(n+5))`
-/

namespace A338191.P6908764948472232176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340138 (n + 3) + A296604 (A340096 (n + 5)).toNat

end

end A338191.P6908764948472232176

/-! ## A338191.P16798203822522983817

`A330521(comp[A121373(n+1)*A304792(2*(n+2))])`
-/

namespace A338191.P16798203822522983817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (n + 1) * A304792 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330521 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338191.P16798203822522983817

/-!
# A338192: Sum of Fibonacci and tribonacci numbers: a(n) = A000073(n) + A000045(n).

The programs for A338192, the canonical program `A338192.P8906844135182273752` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338192 has offset 0).

The definition of A338192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n)+A000045(n)` (program `A338192.P8906844135182273752`, by `A338192.P8906844135182273752.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A338192.P6898680253222432516

`2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A338192.P6898680253222432516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) - 2 * a (n - 4) - a (n - 5)

end

end A338192.P6898680253222432516

namespace A338192

/-- `2*a(n-1)+a(n-2)-a(n-3)-2*a(n-4)-a(n-5)` -/
def P6898680253222432516.Spec : Prop :=
  ∀ n, P6898680253222432516.a n = A338192 n

end A338192

/-! ## A338192.P8906844135182273752

`A000073(n)+A000045(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A338192

/-- `A000073(n)+A000045(n)` -/
def P8906844135182273752.Spec : Prop :=
  ∀ n, P8906844135182273752.a n = A338192 n

theorem P8906844135182273752.correct : P8906844135182273752.Spec := by
  intro n
  simp only [A338192]

end A338192

/-! ## A338192.P14644919394786581074

`A000073(n)+abs(A236191(n))`
-/

namespace A338192.P14644919394786581074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + |A236191 n|

end

end A338192.P14644919394786581074

namespace A338192

/-- `A000073(n)+abs(A236191(n))` -/
def P14644919394786581074.Spec : Prop :=
  ∀ n, P14644919394786581074.a n = A338192 n

end A338192

/-! ## A338192.P3692183010940801146

`A212804(n+1)+A000073(n)`
-/

namespace A338192.P3692183010940801146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A000073 n

end

end A338192.P3692183010940801146

namespace A338192

/-- `A212804(n+1)+A000073(n)` -/
def P3692183010940801146.Spec : Prop :=
  ∀ n, P3692183010940801146.a n = A338192 n

end A338192

/-! ## A338192.P12511621822051611580

`A000073(n)+A001611(n)-1`
-/

namespace A338192.P12511621822051611580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A001611 n - 1)

end

end A338192.P12511621822051611580

namespace A338192

/-- `A000073(n)+A001611(n)-1` -/
def P12511621822051611580.Spec : Prop :=
  ∀ n, P12511621822051611580.a n = A338192 n

end A338192

/-! ## A338192.P1039368501469521356

`A000073(n)+A157725(n)-2`
-/

namespace A338192.P1039368501469521356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A157725 n - 2)

end

end A338192.P1039368501469521356

namespace A338192

/-- `A000073(n)+A157725(n)-2` -/
def P1039368501469521356.Spec : Prop :=
  ∀ n, P1039368501469521356.a n = A338192 n

end A338192

/-! ## A338192.P17051052034639556897

`A053602(2*n)+A000073(n)`
-/

namespace A338192.P17051052034639556897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n) + A000073 n

end

end A338192.P17051052034639556897

namespace A338192

/-- `A053602(2*n)+A000073(n)` -/
def P17051052034639556897.Spec : Prop :=
  ∀ n, P17051052034639556897.a n = A338192 n

end A338192

/-! ## A338192.P4281851490845756346

`A103609(2*n)+A000073(n)`
-/

namespace A338192.P4281851490845756346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + A000073 n

end

end A338192.P4281851490845756346

namespace A338192

/-- `A103609(2*n)+A000073(n)` -/
def P4281851490845756346.Spec : Prop :=
  ∀ n, P4281851490845756346.a n = A338192 n

end A338192

/-! ## A338192.P14498081024151600832

`A000073(n)+Δ[A000071(n+1)]`
-/

namespace A338192.P14498081024151600832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (f1 (n + 1) - f1 n)

end

end A338192.P14498081024151600832

namespace A338192

/-- `A000073(n)+Δ[A000071(n+1)]` -/
def P14498081024151600832.Spec : Prop :=
  ∀ n, P14498081024151600832.a n = A338192 n

end A338192

/-! ## A338192.P5504721563677983856

`A000073(n)+Δ[A001611(n+1)]`
-/

namespace A338192.P5504721563677983856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (f1 (n + 1) - f1 n)

end

end A338192.P5504721563677983856

namespace A338192

/-- `A000073(n)+Δ[A001611(n+1)]` -/
def P5504721563677983856.Spec : Prop :=
  ∀ n, P5504721563677983856.a n = A338192 n

end A338192

/-! ## A338192.P4522566690057785182

`A000071(n+2)+A000073(n)-A000071(n+1)`
-/

namespace A338192.P4522566690057785182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A000073 n - A000071 (n + 1))

end

end A338192.P4522566690057785182

namespace A338192

/-- `A000071(n+2)+A000073(n)-A000071(n+1)` -/
def P4522566690057785182.Spec : Prop :=
  ∀ n, P4522566690057785182.a n = A338192 n

end A338192

/-! ## A338192.P18153123237742706649

`A000045(n)+Δ[A192804(n)]`
-/

namespace A338192.P18153123237742706649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A338192.P18153123237742706649

namespace A338192

/-- `A000045(n)+Δ[A192804(n)]` -/
def P18153123237742706649.Spec : Prop :=
  ∀ n, P18153123237742706649.a n = A338192 n

end A338192

/-! ## A338192.P17501202135580653373

`A000045(n)+A354784(n)/2`
-/

namespace A338192.P17501202135580653373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) + (A354784 n : ℚ) / 2

end

end A338192.P17501202135580653373

namespace A338192

/-- `A000045(n)+A354784(n)/2` -/
def P17501202135580653373.Spec : Prop :=
  ∀ n, P17501202135580653373.a n = (A338192 n : ℚ)

end A338192

/-! ## A338192.P10174681451794027455

`A000045(n)+A000213(n)-A081172(n)`
-/

namespace A338192.P10174681451794027455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000213 n - A081172 n)

end

end A338192.P10174681451794027455

namespace A338192

/-- `A000045(n)+A000213(n)-A081172(n)` -/
def P10174681451794027455.Spec : Prop :=
  ∀ n, P10174681451794027455.a n = A338192 n

end A338192

/-! ## A338192.P16671301111540777245

`A000045(n)+∑[A001590(n)]-A001590(n)`
-/

namespace A338192.P16671301111540777245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (∑ j ∈ Finset.range (n + 1), f1 j - A001590 n)

end

end A338192.P16671301111540777245

namespace A338192

/-- `A000045(n)+∑[A001590(n)]-A001590(n)` -/
def P16671301111540777245.Spec : Prop :=
  ∀ n, P16671301111540777245.a n = A338192 n

end A338192

/-! ## A338192.P11212304903671344392

`A000045(n)+A192804(n+1)-A192804(n)`
-/

namespace A338192.P11212304903671344392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A192804 (n + 1) - A192804 n)

end

end A338192.P11212304903671344392

namespace A338192

/-- `A000045(n)+A192804(n+1)-A192804(n)` -/
def P11212304903671344392.Spec : Prop :=
  ∀ n, P11212304903671344392.a n = A338192 n

end A338192

/-! ## A338192.P1105691611572911409

`Δ[A000071(n+1)+A000213(n)/2]`
-/

namespace A338192.P1105691611572911409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) : ℚ) + (A000213 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338192.P1105691611572911409

namespace A338192

/-- `Δ[A000071(n+1)+A000213(n)/2]` -/
def P1105691611572911409.Spec : Prop :=
  ∀ n, P1105691611572911409.a n = (A338192 n : ℚ)

end A338192

/-! ## A338192.P6853621139505357925

`A000045(n)+A214899(n)-A141036(n)`
-/

namespace A338192.P6853621139505357925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A214899 n - A141036 n)

end

end A338192.P6853621139505357925

namespace A338192

/-- `A000045(n)+A214899(n)-A141036(n)` -/
def P6853621139505357925.Spec : Prop :=
  ∀ n, P6853621139505357925.a n = A338192 n

end A338192

/-! ## A338192.P15150421259573795075

`A000073(n)+A027934(n)-A008466(n)`
-/

namespace A338192.P15150421259573795075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + (A027934 n - A008466 n)

end

end A338192.P15150421259573795075

namespace A338192

/-- `A000073(n)+A027934(n)-A008466(n)` -/
def P15150421259573795075.Spec : Prop :=
  ∀ n, P15150421259573795075.a n = A338192 n

end A338192

/-!
# A338193: E.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x))' / (x/A(x)^2)' dx.

The programs for A338193, there is no canonical definition to state claims against.
-/

/-! ## A338193.P178335691550105984

`A249816(∏[A293324(n)])`
-/

namespace A338193.P178335691550105984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249816 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338193.P178335691550105984

/-! ## A338193.P736642535635865424

`A230240(A206830(n))+1`
-/

namespace A338193.P736642535635865424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230240 (A206830 n).toNat + 1

end

end A338193.P736642535635865424

/-!
# A338194: E.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x))' / (x/A(x)^3)' dx.

The programs for A338194, there is no canonical definition to state claims against.
-/

/-! ## A338194.P14570067023887864855

`A023022(xor((10^n+26)/9, ∑[floor(10^n/5)]))`
-/

namespace A338194.P14570067023887864855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (Int.xor (SequenceMachineLib.roundAway ((10 ^ n + 26 : ℚ) / 9)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338194.P14570067023887864855

/-!
# A338195: Numbers k such that 3/k = 1/x + 1/y has a solution with 0 < x < y < k.

The programs for A338195, there is no canonical definition to state claims against.
-/

/-! ## A338195.P11158020547229076836

`lt[1, A351532(n+1)]+1`
-/

namespace A338195.P11158020547229076836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A338195.P11158020547229076836

/-! ## A338195.P2402736051025183618

`lt[1, A351532(A028310(n))]`
-/

namespace A338195.P2402736051025183618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338195.P2402736051025183618

/-! ## A338195.P6748905964142939920

`A020725(lt[1, A351532(n+1)])`
-/

namespace A338195.P6748905964142939920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338195.P6748905964142939920

/-! ## A338195.P16236586723913110210

`A153152(lt[1, A351532(n+1)])`
-/

namespace A338195.P16236586723913110210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A338195.P16236586723913110210

/-! ## A338195.P8077101507664393735

`lt[1, A351532(A000007(n)+n)]`
-/

namespace A338195.P8077101507664393735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351532 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338195.P8077101507664393735

/-!
# A338197: a(n) is the number of distinct resistances that can be obtained by a network of exactly n equal resistors, but not by any network with fewer than n equal resistors.

The programs for A338197, there is no canonical definition to state claims against.
-/

/-! ## A338197.P12737571839622562992

`Δ[A180414(n)]`
-/

namespace A338197.P12737571839622562992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338197.P12737571839622562992

/-! ## A338197.P770574566008874888

`A180414(n+1)-A180414(n)`
-/

namespace A338197.P770574566008874888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 (n + 1) - A180414 n

end

end A338197.P770574566008874888

/-! ## A338197.P6621451283632008677

`A180414(A077168(n))-A340921(A002998(n))`
-/

namespace A338197.P6621451283632008677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 (A077168 n).toNat - A340921 (A002998 n).toNat

end

end A338197.P6621451283632008677

/-! ## A338197.P4296942062473133587

`Δ[A340921(A002998(n))]`
-/

namespace A338197.P4296942062473133587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340921 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338197.P4296942062473133587

/-! ## A338197.P8732628344113629018

`Δ[A340921(A038178(n+1))]`
-/

namespace A338197.P8732628344113629018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340921 (A038178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338197.P8732628344113629018

/-!
# A338198: Triangle read by rows, T(n,k) = ((k+1)*2^(n-k)-(k-2)*(-1)^(n-k))/3 for 0 <= k <= n.

The programs for A338198, there is no canonical definition to state claims against.
-/

/-! ## A338198.P12336272690899798775

`A091598(n)-A126304(A266921(n+1))`
-/

namespace A338198.P12336272690899798775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n - A126304 (A266921 (n + 1)).toNat

end

end A338198.P12336272690899798775

/-! ## A338198.P18078689779164057623

`A091598(n)+A016389(A022166(n))`
-/

namespace A338198.P18078689779164057623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n + A016389 (A022166 n).toNat

end

end A338198.P18078689779164057623

/-! ## A338198.P2078941859208669834

`A091598(n)+A016389(A027336(n))`
-/

namespace A338198.P2078941859208669834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n + A016389 (A027336 n).toNat

end

end A338198.P2078941859208669834

/-! ## A338198.P4397479981935546747

`A091598(n)-A212619(A143007(n))`
-/

namespace A338198.P4397479981935546747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n - A212619 (A143007 n).toNat

end

end A338198.P4397479981935546747

/-! ## A338198.P14835268011214202710

`A091598(n)-A085974(A157385(n+1))`
-/

namespace A338198.P14835268011214202710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091598 n - A085974 (A157385 (n + 1)).toNat

end

end A338198.P14835268011214202710

/-!
# A338199: a(n) = v(1 + F(4*n - 3)), where F(x) = (3*x + 1)/2^v(3*x + 1), x is any odd natural number, and v(y) is the 2-adic valuation of y.

The programs for A338199, there is no canonical definition to state claims against.
-/

/-! ## A338199.P12620760503159881774

`A385507(Δ[n²])`
-/

namespace A338199.P12620760503159881774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A338199.P12620760503159881774

/-! ## A338199.P7326725274201316302

`A089309(3*n+1)`
-/

namespace A338199.P7326725274201316302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (3 * n + 1)

end

end A338199.P7326725274201316302

/-! ## A338199.P11150235635500380974

`dr(A385507(2*n+1))`
-/

namespace A338199.P11150235635500380974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A385507 (2 * n + 1))

end

end A338199.P11150235635500380974

/-! ## A338199.P18332756801963202070

`A337821(3*n+1)+1`
-/

namespace A338199.P18332756801963202070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337821 (3 * n + 1) + 1

end

end A338199.P18332756801963202070

/-! ## A338199.P16557604039636929441

`val(A067745(n+1)+1, 2)`
-/

namespace A338199.P16557604039636929441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067745 (n + 1) + 1).toNat 2

end

end A338199.P16557604039636929441

/-! ## A338199.P16335582751112589462

`val(A153733(3*n)+2, 2)`
-/

namespace A338199.P16335582751112589462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A153733 (3 * n) + 2).toNat 2

end

end A338199.P16335582751112589462

/-! ## A338199.P17188842119389830087

`val(A332815(3*n), 3)+1`
-/

namespace A338199.P17188842119389830087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332815 (3 * n)).toNat 3 + 1

end

end A338199.P17188842119389830087

/-! ## A338199.P18273230264109064678

`val(A336962(6*n+2), 2)`
-/

namespace A338199.P18273230264109064678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336962 (6 * n + 2)).toNat 2

end

end A338199.P18273230264109064678

/-! ## A338199.P5598309231128785460

`val(A075677(Δ[n²])+1, 2)`
-/

namespace A338199.P5598309231128785460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A075677 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat 2

end

end A338199.P5598309231128785460

/-! ## A338199.P8927077632179040753

`dr(A089309(Δ[C(n, 2)+n²]))`
-/

namespace A338199.P8927077632179040753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A089309 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A338199.P8927077632179040753

