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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A094500: Least number k such that (n+1)^k / n^k >= 2.

The programs for A094500, the canonical program `A094500.P13845944973924360719` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094500 has offset 1).

The definition of A094500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094500.P13845944973924360719

`ceil(log(2)/log(1+1/(n+1)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094500

/-- `ceil(log(2)/log(1+1/(n+1)))` -/
def P13845944973924360719.Spec : Prop :=
  ∀ n, P13845944973924360719.a n = A094500 (n + 1)

theorem P13845944973924360719.correct : P13845944973924360719.Spec := by
  intro n
  simp only [A094500, Nat.add_sub_cancel]

end A094500

/-! ## A094500.P2356175313733744067

`∑[char[round(log2(cosh(n)))]]`
-/

namespace A094500.P2356175313733744067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.cosh (n : ℝ)))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094500.P2356175313733744067

namespace A094500

/-- `∑[char[round(log2(cosh(n)))]]` -/
def P2356175313733744067.Spec : Prop :=
  ∀ n, (P2356175313733744067.a n : ℤ) = A094500 (n + 1)

end A094500

/-! ## A094500.P2279684152635987073

`round(log(∑[2*a(n-1)-(-1)^n]))` with `a(0)=2`
-/

namespace A094500.P2279684152635987073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A094500.P2279684152635987073

namespace A094500

/-- `round(log(∑[2*a(n-1)-(-1)^n]))` -/
def P2279684152635987073.Spec : Prop :=
  ∀ n, P2279684152635987073.a n = A094500 (n + 1)

end A094500

/-! ## A094500.P5381236707369661449

`floor(log2(A022120(n)))`
-/

namespace A094500.P5381236707369661449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A022120 n).toNat

end

end A094500.P5381236707369661449

namespace A094500

/-- `floor(log2(A022120(n)))` -/
def P5381236707369661449.Spec : Prop :=
  ∀ n, (P5381236707369661449.a n : ℤ) = A094500 (n + 1)

end A094500

/-! ## A094500.P9351068185944463930

`round(log(A133649(n+1)))`
-/

namespace A094500.P9351068185944463930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A133649 (n + 1) : ℝ))

end

end A094500.P9351068185944463930

namespace A094500

/-- `round(log(A133649(n+1)))` -/
def P9351068185944463930.Spec : Prop :=
  ∀ n, P9351068185944463930.a n = A094500 (n + 1)

end A094500

/-! ## A094500.P16196793439315957664

`round(log(A168673(n+1)))`
-/

namespace A094500.P16196793439315957664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A168673 (n + 1) : ℝ))

end

end A094500.P16196793439315957664

namespace A094500

/-- `round(log(A168673(n+1)))` -/
def P16196793439315957664.Spec : Prop :=
  ∀ n, P16196793439315957664.a n = A094500 (n + 1)

end A094500

/-! ## A094500.P13110266312160932558

`round(log(A171160(n+1)))`
-/

namespace A094500.P13110266312160932558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A171160 (n + 1) : ℝ))

end

end A094500.P13110266312160932558

namespace A094500

/-- `round(log(A171160(n+1)))` -/
def P13110266312160932558.Spec : Prop :=
  ∀ n, P13110266312160932558.a n = A094500 (n + 1)

end A094500

/-! ## A094500.P9190366775525244034

`round(log(A288170(n+1)))`
-/

namespace A094500.P9190366775525244034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A288170 (n + 1) : ℝ))

end

end A094500.P9190366775525244034

namespace A094500

/-- `round(log(A288170(n+1)))` -/
def P9190366775525244034.Spec : Prop :=
  ∀ n, P9190366775525244034.a n = A094500 (n + 1)

end A094500

/-! ## A094500.P11629784552679575298

`round(log(A290604(n+1)))`
-/

namespace A094500.P11629784552679575298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A290604 (n + 1) : ℝ))

end

end A094500.P11629784552679575298

namespace A094500

/-- `round(log(A290604(n+1)))` -/
def P11629784552679575298.Spec : Prop :=
  ∀ n, P11629784552679575298.a n = A094500 (n + 1)

end A094500

/-!
# A094502: a(n) = A000203(A046528(n)): sigma of those numbers whose sigma is a power of 2, in order of appearance.

The programs for A094502, there is no canonical definition to state claims against.
-/

/-! ## A094502.P9885935555236190245

`2^A048947(n+1)`
-/

namespace A094502.P9885935555236190245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048947 (n + 1) : ℤ)

end

end A094502.P9885935555236190245

/-! ## A094502.P521496572440985523

`2^ceil(log2(A046528(n+1)))`
-/

namespace A094502.P521496572440985523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (A046528 (n + 1) : ℝ)⌉ : ℤ)

end

end A094502.P521496572440985523

/-! ## A094502.P2678022372843471565

`A000079(A048947(n+1))`
-/

namespace A094502.P2678022372843471565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A048947 (n + 1)).toNat

end

end A094502.P2678022372843471565

/-! ## A094502.P16272413737217993962

`A011782(A048947(n+1)+1)`
-/

namespace A094502.P16272413737217993962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A048947 (n + 1) + 1).toNat

end

end A094502.P16272413737217993962

/-! ## A094502.P3741954793018823443

`A000079(ceil(log2(A046528(n+1))))`
-/

namespace A094502.P3741954793018823443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈Real.logb 2 (A046528 (n + 1) : ℝ)⌉.toNat

end

end A094502.P3741954793018823443

/-! ## A094502.P13876987857782035773

`A186949(A048947(n+1)%(n+5))`
-/

namespace A094502.P13876987857782035773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 (Int.tmod (A048947 (n + 1)) (n + 5 : ℤ)).toNat

end

end A094502.P13876987857782035773

/-! ## A094502.P15237947143531848116

`or(A000007(n), A186949(A048947(n+1)))`
-/

namespace A094502.P15237947143531848116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186949 (A048947 (n + 1)).toNat)

end

end A094502.P15237947143531848116

/-!
# A094503: Triangle read by rows: coefficients d(n,k) of André polynomials D(x,n) = Sum_{k>0} d(n,k)*x^k.

The programs for A094503, there is no canonical definition to state claims against.
-/

/-! ## A094503.P5876043077327221070

`A113897(gcd(n, Δ[A135034(n)]))`
-/

namespace A094503.P5876043077327221070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113897 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A094503.P5876043077327221070

/-! ## A094503.P17844535820954892479

`A113897(floor(acot(n)+n))`
-/

namespace A094503.P17844535820954892479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113897 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A094503.P17844535820954892479

/-! ## A094503.P14724671650541209044

`A113897(round(acot(n)+n))`
-/

namespace A094503.P14724671650541209044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113897 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A094503.P14724671650541209044

/-! ## A094503.P8440861047898495333

`A113897(n^floor(atan(n)))`
-/

namespace A094503.P8440861047898495333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113897 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A094503.P8440861047898495333

/-! ## A094503.P12650049770637077477

`A113897(or(n, floor(acot(n))))`
-/

namespace A094503.P12650049770637077477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113897 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A094503.P12650049770637077477

/-!
# A094506: Numerator of I(n) = (-1) * Integral_{x=0..4^n} (1-x^(3/2)) dx.

The programs for A094506, the canonical program `A094506.P18039102651522549648` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094506 has offset 1).

The definition of A094506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094506.P14090444238381392703

`ogf((44+384x)/(1-36x+128x^2))`
-/

namespace A094506.P14090444238381392703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [44, 384] [1, -36, 128] n

end

end A094506.P14090444238381392703

namespace A094506

/-- `ogf((44+384x)/(1-36x+128x^2))` -/
def P14090444238381392703.Spec : Prop :=
  ∀ n, P14090444238381392703.a n = A094506 (n + 1)

end A094506

/-! ## A094506.P18039102651522549648

`64*2^(5*(n+1)-5)-20*4^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094506

/-- `64*2^(5*(n+1)-5)-20*4^n` -/
def P18039102651522549648.Spec : Prop :=
  ∀ n, P18039102651522549648.a n = (A094506 (n + 1) : ℚ)

end A094506

/-! ## A094506.P382061942429430390

`A167784(2*(n+1))*A168616(3*n+4)`
-/

namespace A094506.P382061942429430390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167784 (2 * (n + 1)) * A168616 (3 * n + 4)

end

end A094506.P382061942429430390

namespace A094506

/-- `A167784(2*(n+1))*A168616(3*n+4)` -/
def P382061942429430390.Spec : Prop :=
  ∀ n, P382061942429430390.a n = A094506 (n + 1)

end A094506

/-! ## A094506.P12018065219822741920

`(A171449(3*n+4)-5)*A000079(n+1)²`
-/

namespace A094506.P12018065219822741920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171449 (3 * n + 4) - 5) * A000079 (n + 1) ^ 2

end

end A094506.P12018065219822741920

namespace A094506

/-- `(A171449(3*n+4)-5)*A000079(n+1)²` -/
def P12018065219822741920.Spec : Prop :=
  ∀ n, P12018065219822741920.a n = A094506 (n + 1)

end A094506

/-! ## A094506.P7457494496084015914

`(A220172(3*n+4)-5)*A000079(n+1)²`
-/

namespace A094506.P7457494496084015914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A220172 (3 * n + 4) - 5) * A000079 (n + 1) ^ 2

end

end A094506.P7457494496084015914

namespace A094506

/-- `(A220172(3*n+4)-5)*A000079(n+1)²` -/
def P7457494496084015914.Spec : Prop :=
  ∀ n, P7457494496084015914.a n = A094506 (n + 1)

end A094506

/-! ## A094506.P2610585495194161325

`(A171449(3*n+4)-5)*A000079(2*(n+1))`
-/

namespace A094506.P2610585495194161325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171449 (3 * n + 4) - 5) * A000079 (2 * (n + 1))

end

end A094506.P2610585495194161325

namespace A094506

/-- `(A171449(3*n+4)-5)*A000079(2*(n+1))` -/
def P2610585495194161325.Spec : Prop :=
  ∀ n, P2610585495194161325.a n = A094506 (n + 1)

end A094506

/-! ## A094506.P18294761027508153503

`(A220172(3*n+4)-5)*A000079(2*(n+1))`
-/

namespace A094506.P18294761027508153503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A220172 (3 * n + 4) - 5) * A000079 (2 * (n + 1))

end

end A094506.P18294761027508153503

namespace A094506

/-- `(A220172(3*n+4)-5)*A000079(2*(n+1))` -/
def P18294761027508153503.Spec : Prop :=
  ∀ n, P18294761027508153503.a n = A094506 (n + 1)

end A094506

/-!
# A094507: Triangle read by rows: T(n,k) is number of Dyck paths of semilength n and having k UDUD's (here U=(1,1), D=(1,-1)).

The programs for A094507, there is no canonical definition to state claims against.
-/

/-! ## A094507.P12873089303182997268

`A107315(A294082(n+1)%A167499(n))`
-/

namespace A094507.P12873089303182997268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (Int.tmod (A294082 (n + 1)) (A167499 n)).toNat

end

end A094507.P12873089303182997268

/-! ## A094507.P2027344577104106557

`A107315(A294082(n+1))`
-/

namespace A094507.P2027344577104106557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107315 (A294082 (n + 1)).toNat

end

end A094507.P2027344577104106557

/-! ## A094507.P7998631327647487950

`A242357(A009998(n)^3)`
-/

namespace A094507.P7998631327647487950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242357 (A009998 n ^ 3).toNat

end

end A094507.P7998631327647487950

/-! ## A094507.P14760451667511005669

`A226130(A090238(n)²+n)`
-/

namespace A094507.P14760451667511005669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (A090238 n ^ 2 + (n : ℤ)).toNat

end

end A094507.P14760451667511005669

/-! ## A094507.P1769864472725224566

`A242357(A009998(n)²*A009998(n))`
-/

namespace A094507.P1769864472725224566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242357 (A009998 n ^ 2 * A009998 n).toNat

end

end A094507.P1769864472725224566

/-!
# A094509: Numbers which are numerators of at least one reduced rational sum{k=1 to m} 1/k^n, taken over all positive integers m and n.

The programs for A094509, there is no canonical definition to state claims against.
-/

/-! ## A094509.P9118529535022918102

`or(1, A239086(A317804(n+1)))`
-/

namespace A094509.P9118529535022918102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A239086 (A317804 (n + 1)).toNat)

end

end A094509.P9118529535022918102

/-! ## A094509.P10597852050302012385

`or(1, A239086(A336496(n+1)))`
-/

namespace A094509.P10597852050302012385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A239086 (A336496 (n + 1)).toNat)

end

end A094509.P10597852050302012385

/-! ## A094509.P14332218419016661336

`∑[∑{d}[A000325(2*n+1)-A294894(n+3), #%2]]+1`
-/

namespace A094509.P14332218419016661336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (2 * n + 1) - A294894 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094509.P14332218419016661336

/-! ## A094509.P10972780138918557337

`record[or(1, A000005(A049632(n)))]`
-/

namespace A094509.P10972780138918557337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000005 (A049632 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094509.P10972780138918557337

/-! ## A094509.P935743359809940750

`A307409(A060114(n))+Δ[n²]`
-/

namespace A094509.P935743359809940750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (A060114 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A094509.P935743359809940750

/-!
# A094510: Smallest number distinct from n, not occurring earlier and having in binary representation exactly as many ones as n.

The programs for A094510, there is no canonical definition to state claims against.
-/

/-! ## A094510.P1434935368736205832

`A298847(A112411(A298847(n+1)))`
-/

namespace A094510.P1434935368736205832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (A112411 (A298847 (n + 1)).toNat).toNat

end

end A094510.P1434935368736205832

/-!
# A094511: Smallest number distinct from n, not occurring earlier and having in binary representation not more ones than n.

The programs for A094511, there is no canonical definition to state claims against.
-/

/-! ## A094511.P10337589171769870100

`A094513(A094512(n+1))`
-/

namespace A094511.P10337589171769870100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094513 (A094512 (n + 1)).toNat

end

end A094511.P10337589171769870100

/-! ## A094511.P5309132172285576134

`A094512(A094513(abs(xor(n, -1))))`
-/

namespace A094511.P5309132172285576134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094512 (A094513 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A094511.P5309132172285576134

/-! ## A094511.P15686432019545770496

`A094512(A094513(-xor(n, -1)))`
-/

namespace A094511.P15686432019545770496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094512 (A094513 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A094511.P15686432019545770496

/-!
# A094512: Inverse of A094511.

The programs for A094512, there is no canonical definition to state claims against.
-/

/-! ## A094512.P11037668375810350683

`A094514(A094511(n+1))`
-/

namespace A094512.P11037668375810350683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094514 (A094511 (n + 1)).toNat

end

end A094512.P11037668375810350683

/-! ## A094512.P14519485909477583281

`A094511(A094514(abs(xor(n, -1))))`
-/

namespace A094512.P14519485909477583281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094511 (A094514 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A094512.P14519485909477583281

/-! ## A094512.P6876875804792503977

`A094511(A094514(-xor(n, -1)))`
-/

namespace A094512.P6876875804792503977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094511 (A094514 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A094512.P6876875804792503977

/-!
# A094513: A094511(A094511(n)).

The programs for A094513, there is no canonical definition to state claims against.
-/

/-! ## A094513.P383940007548127315

`A094511(A094511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094513.P383940007548127315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094511 (A094511 (n + 1)).toNat

end

end A094513.P383940007548127315

/-!
# A094514: A094512(A094512(n)).

The programs for A094514, there is no canonical definition to state claims against.
-/

/-! ## A094514.P8574213192830698784

`A094512(A094512(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094514.P8574213192830698784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094512 (A094512 (n + 1)).toNat

end

end A094514.P8574213192830698784

/-!
# A094516: Primes p such that q=(p^2+1)/2 is not a prime.

The programs for A094516, the canonical program `A094516.P16943004974981708111` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094516 has offset 1).

The definition of A094516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094516.P17468426771057103719

`p?[comp[A085722(n+1)]]`
-/

namespace A094516.P17468426771057103719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094516.P17468426771057103719

namespace A094516

/-- `p?[comp[A085722(n+1)]]` -/
def P17468426771057103719.Spec : Prop :=
  ∀ n, (P17468426771057103719.a n : ℤ) = A094516 (n + 1)

end A094516

/-! ## A094516.P2327428976279299119

`record[A000010(A050796(n+1))+1]`
-/

namespace A094516.P2327428976279299119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050796 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094516.P2327428976279299119

namespace A094516

/-- `record[A000010(A050796(n+1))+1]` -/
def P2327428976279299119.Spec : Prop :=
  ∀ n, P2327428976279299119.a n = A094516 (n + 1)

end A094516

/-! ## A094516.P16943004974981708111

`record[A006530(2*A050796(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A094516

/-- `record[A006530(2*A050796(n+1))]` -/
def P16943004974981708111.Spec : Prop :=
  ∀ n, P16943004974981708111.a n = A094516 (n + 1)

theorem P16943004974981708111.correct : P16943004974981708111.Spec := by
  intro n
  simp only [A094516, Nat.add_sub_cancel]

end A094516

/-! ## A094516.P10148612821231509339

`p?[comp[A002731(n+1)]]`
-/

namespace A094516.P10148612821231509339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094516.P10148612821231509339

namespace A094516

/-- `p?[comp[A002731(n+1)]]` -/
def P10148612821231509339.Spec : Prop :=
  ∀ n, (P10148612821231509339.a n : ℤ) = A094516 (n + 1)

end A094516

/-! ## A094516.P14478297298283261203

`p?[comp[A172438(n+1)]]`
-/

namespace A094516.P14478297298283261203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094516.P14478297298283261203

namespace A094516

/-- `p?[comp[A172438(n+1)]]` -/
def P14478297298283261203.Spec : Prop :=
  ∀ n, (P14478297298283261203.a n : ℤ) = A094516 (n + 1)

end A094516

/-! ## A094516.P7929094252900547567

`p?[comp[A048161(n+1)]]`
-/

namespace A094516.P7929094252900547567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094516.P7929094252900547567

namespace A094516

/-- `p?[comp[A048161(n+1)]]` -/
def P7929094252900547567.Spec : Prop :=
  ∀ n, (P7929094252900547567.a n : ℤ) = A094516 (n + 1)

end A094516

/-! ## A094516.P7282628722048056222

`p?[comp[p?[2*A027861(n+1)+1]]]`
-/

namespace A094516.P7282628722048056222
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094516.P7282628722048056222

namespace A094516

/-- `p?[comp[p?[2*A027861(n+1)+1]]]` -/
def P7282628722048056222.Spec : Prop :=
  ∀ n, (P7282628722048056222.a n : ℤ) = A094516 (n + 1)

end A094516

/-! ## A094516.P16868965228319563691

`record[A000040(A290103(A050796(n+1)))]`
-/

namespace A094516.P16868965228319563691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A290103 (A050796 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094516.P16868965228319563691

namespace A094516

/-- `record[A000040(A290103(A050796(n+1)))]` -/
def P16868965228319563691.Spec : Prop :=
  ∀ n, P16868965228319563691.a n = A094516 (n + 1)

end A094516

/-! ## A094516.P16498021052735418021

`p?[A050796(n)*A133707(A133707(a(n-1)))]` with `a(0)=2`
-/

namespace A094516.P16498021052735418021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A050796 n * A133707 (A133707 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094516.P16498021052735418021

namespace A094516

/-- `p?[A050796(n)*A133707(A133707(a(n-1)))]` -/
def P16498021052735418021.Spec : Prop :=
  ∀ n, P16498021052735418021.a n = A094516 (n + 1)

end A094516

/-! ## A094516.P5985943959882493045

`record[A006530(2*A180263(n+1))]`
-/

namespace A094516.P5985943959882493045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A180263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094516.P5985943959882493045

namespace A094516

/-- `record[A006530(2*A180263(n+1))]` -/
def P5985943959882493045.Spec : Prop :=
  ∀ n, P5985943959882493045.a n = A094516 (n + 1)

end A094516

/-! ## A094516.P15787074009252672393

`p?[A180263(n+1)*A345999(A000015(n+1))]`
-/

namespace A094516.P15787074009252672393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180263 (n + 1) * A345999 (A000015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094516.P15787074009252672393

namespace A094516

/-- `p?[A180263(n+1)*A345999(A000015(n+1))]` -/
def P15787074009252672393.Spec : Prop :=
  ∀ n, P15787074009252672393.a n = A094516 (n + 1)

end A094516

/-! ## A094516.P15919549957754246858

`p?[gcd(2, A163985(A248516(n+1)))+n]`
-/

namespace A094516.P15919549957754246858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A163985 (A248516 (n + 1)).toNat) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094516.P15919549957754246858

namespace A094516

/-- `p?[gcd(2, A163985(A248516(n+1)))+n]` -/
def P15919549957754246858.Spec : Prop :=
  ∀ n, (P15919549957754246858.a n : ℤ) = A094516 (n + 1)

end A094516

/-!
# A094517: Primes p such that 6p+11 is not a prime.

The programs for A094517, the canonical program `A094517.P18314110436842178638` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094517 has offset 1).

The definition of A094517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094517.P17830596729953578002

`p?[A059324(n+1)-1]`
-/

namespace A094517.P17830596729953578002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059324 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P17830596729953578002

namespace A094517

/-- `p?[A059324(n+1)-1]` -/
def P17830596729953578002.Spec : Prop :=
  ∀ n, P17830596729953578002.a n = A094517 (n + 1)

end A094517

/-! ## A094517.P7356439342406110878

`p?[A046953(n+1)-2]`
-/

namespace A094517.P7356439342406110878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P7356439342406110878

namespace A094517

/-- `p?[A046953(n+1)-2]` -/
def P7356439342406110878.Spec : Prop :=
  ∀ n, P7356439342406110878.a n = A094517 (n + 1)

end A094517

/-! ## A094517.P9745976712290998945

`p?[A153245(n+1)-3]`
-/

namespace A094517.P9745976712290998945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P9745976712290998945

namespace A094517

/-- `p?[A153245(n+1)-3]` -/
def P9745976712290998945.Spec : Prop :=
  ∀ n, P9745976712290998945.a n = A094517 (n + 1)

end A094517

/-! ## A094517.P18314110436842178638

`p?[n*(1-A075743(2*n+3))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094517

/-- `p?[n*(1-A075743(2*n+3))]` -/
def P18314110436842178638.Spec : Prop :=
  ∀ n, P18314110436842178638.a n = A094517 (n + 1)

theorem P18314110436842178638.correct : P18314110436842178638.Spec := by
  intro n
  simp only [A094517, Nat.add_sub_cancel]

end A094517

/-! ## A094517.P16989131436069783186

`p?[and(n, A167020(n+2)-1)]`
-/

namespace A094517.P16989131436069783186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A167020 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P16989131436069783186

namespace A094517

/-- `p?[and(n, A167020(n+2)-1)]` -/
def P16989131436069783186.Spec : Prop :=
  ∀ n, P16989131436069783186.a n = A094517 (n + 1)

end A094517

/-! ## A094517.P16051520042351388556

`p?[lt[1, A001222(A016969(n+1))]]`
-/

namespace A094517.P16051520042351388556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094517.P16051520042351388556

namespace A094517

/-- `p?[lt[1, A001222(A016969(n+1))]]` -/
def P16051520042351388556.Spec : Prop :=
  ∀ n, (P16051520042351388556.a n : ℤ) = A094517 (n + 1)

end A094517

/-! ## A094517.P8062592520318622517

`p?[eq[2, A228518(3*n+5)]]`
-/

namespace A094517.P8062592520318622517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228518 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094517.P8062592520318622517

namespace A094517

/-- `p?[eq[2, A228518(3*n+5)]]` -/
def P8062592520318622517.Spec : Prop :=
  ∀ n, (P8062592520318622517.a n : ℤ) = A094517 (n + 1)

end A094517

/-! ## A094517.P3471589116558353291

`p?[(n+1)*A088423(3*(n+1))]`
-/

namespace A094517.P3471589116558353291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088423 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P3471589116558353291

namespace A094517

/-- `p?[(n+1)*A088423(3*(n+1))]` -/
def P3471589116558353291.Spec : Prop :=
  ∀ n, P3471589116558353291.a n = A094517 (n + 1)

end A094517

/-! ## A094517.P11840465685787419622

`p?[n-A110560(3*(2*n+1))]`
-/

namespace A094517.P11840465685787419622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110560 (3 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P11840465685787419622

namespace A094517

/-- `p?[n-A110560(3*(2*n+1))]` -/
def P11840465685787419622.Spec : Prop :=
  ∀ n, P11840465685787419622.a n = A094517 (n + 1)

end A094517

/-! ## A094517.P1283809140051259238

`p?[abs((n+1)%A014963(6*n+11)-n)]`
-/

namespace A094517.P1283809140051259238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (n + 1 : ℤ) (A014963 (6 * n + 11)) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094517.P1283809140051259238

namespace A094517

/-- `p?[abs((n+1)%A014963(6*n+11)-n)]` -/
def P1283809140051259238.Spec : Prop :=
  ∀ n, P1283809140051259238.a n = A094517 (n + 1)

end A094517

/-!
# A094518: Number of pairs (x,y) of divisors of n with x<y such that also x+y is a divisor of n.

The programs for A094518, there is no canonical definition to state claims against.
-/

/-! ## A094518.P10236559767325474131

`and(A268926(n+1)-A068921(n), A174903(n+1))`
-/

namespace A094518.P10236559767325474131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A268926 (n + 1) - A068921 n) (A174903 (n + 1))

end

end A094518.P10236559767325474131

/-! ## A094518.P6136818058953492644

`and(A101150(n+1), A174903(n+1))`
-/

namespace A094518.P6136818058953492644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101150 (n + 1)) (A174903 (n + 1))

end

end A094518.P6136818058953492644

/-! ## A094518.P2969372162824939745

`and(A101150(n+1), A399440(n+1))`
-/

namespace A094518.P2969372162824939745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101150 (n + 1)) (A399440 (n + 1))

end

end A094518.P2969372162824939745

/-! ## A094518.P2309861776795749696

`∑{d}[n+1, A088722(#)*A205958((n+1)/#-1)]`
-/

namespace A094518.P2309861776795749696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088722 d * A205958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A094518.P2309861776795749696

/-! ## A094518.P6000970936286880109

`and(A174903(n+1), A352931(A317245(2*n+1)))`
-/

namespace A094518.P6000970936286880109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174903 (n + 1)) (A352931 (A317245 (2 * n + 1)).toNat)

end

end A094518.P6000970936286880109

/-!
# A094519: Numbers having at least one pair (x,y) of divisors with x<y such that x+y is also a divisor.

The programs for A094519, there is no canonical definition to state claims against.
-/

/-! ## A094519.P10782190482578058069

`lt[0, A094518(n+1)]+1`
-/

namespace A094519.P10782190482578058069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094519.P10782190482578058069

/-! ## A094519.P8844419532752545088

`eq[1, A000010(a(A094518(n)))]` with `a(0)=3`
-/

namespace A094519.P8844419532752545088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A094518 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094519.P8844419532752545088

/-! ## A094519.P448436424670789420

`eq[1, A000045(a(A094518(n)))]` with `a(0)=3`
-/

namespace A094519.P448436424670789420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A094518 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094519.P448436424670789420

/-! ## A094519.P16162437723964677320

`eq[1, A206463(a(A094518(n)))]` with `a(0)=3`
-/

namespace A094519.P16162437723964677320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A206463 (f2 (A094518 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094519.P16162437723964677320

/-! ## A094519.P11726989522466051989

`eq[1, A007318(a(A094518(n)))]` with `a(0)=4`
-/

namespace A094519.P11726989522466051989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A094518 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094519.P11726989522466051989

/-! ## A094519.P12075828611547730366

`eq[1, A014963(a(A094518(n)))!]` with `a(0)=3`
-/

namespace A094519.P12075828611547730366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  Nat.factorial (A014963 (f2 (A094518 n).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094519.P12075828611547730366

/-!
# A094520: Numbers such that all sums of two distinct divisors are not divisors.

The programs for A094520, there is no canonical definition to state claims against.
-/

/-! ## A094520.P14365653843435614624

`eq[0, A094518(n+1)]+1`
-/

namespace A094520.P14365653843435614624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094520.P14365653843435614624

/-! ## A094520.P2144744539203896906

`eq[1, A091014(a(A094518(n)))]` with `a(0)=0`
-/

namespace A094520.P2144744539203896906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A091014 (f2 (A094518 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094520.P2144744539203896906

/-! ## A094520.P9932759252477650283

`eq[2, A002378(a(A094518(n)))]` with `a(0)=1`
-/

namespace A094520.P9932759252477650283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002378 (f2 (A094518 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094520.P9932759252477650283

/-! ## A094520.P7079286873325516953

`comp[∪[A094519(n+1), A059986(n)]]`
-/

namespace A094520.P7079286873325516953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094519 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A094520.P7079286873325516953

/-! ## A094520.P9646922648121298660

`record[A053622(A094518(n+1)+4)+n]`
-/

namespace A094520.P9646922648121298660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053622 (A094518 (n + 1) + 4).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094520.P9646922648121298660

/-! ## A094520.P4963266877085843037

`record[n+1-A002378(A094518(n+1)²)]`
-/

namespace A094520.P4963266877085843037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002378 (A094518 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094520.P4963266877085843037

/-! ## A094520.P11526514624226961306

`lt[A211111(n²), n]`
-/

namespace A094520.P11526514624226961306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094520.P11526514624226961306

/-! ## A094520.P12572500962836668467

`lt[A033630(n²), record[A071785(n+1)]]`
-/

namespace A094520.P12572500962836668467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094520.P12572500962836668467

/-! ## A094520.P5239972734230926141

`record[(n+1)%(2*A002024(A348061(n+1)+1))]`
-/

namespace A094520.P5239972734230926141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (2 * A002024 (A348061 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094520.P5239972734230926141

/-! ## A094520.P3839563336701399381

`filter[A357873(n+1), A360128(#)]`
-/

namespace A094520.P3839563336701399381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A094520.P3839563336701399381

/-!
# A094521: a(n) = gcd(n, A094457(n)).

The programs for A094521, there is no canonical definition to state claims against.
-/

/-! ## A094521.P1946787200411733776

`gcd(n+2, A094457(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094521.P1946787200411733776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A094457 (n + 2))

end

end A094521.P1946787200411733776

/-! ## A094521.P15688974259851432702

`A003989(A094457(n+2)+∑[n])`
-/

namespace A094521.P15688974259851432702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A094457 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A094521.P15688974259851432702

/-! ## A094521.P5643396621016693665

`A109004(A094457(n+2)+A000217(n+2))`
-/

namespace A094521.P5643396621016693665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A094457 (n + 2) + A000217 (n + 2)).toNat

end

end A094521.P5643396621016693665

/-! ## A094521.P1459070579434357386

`A000188(A094457(n+2)*A181569(n+1))`
-/

namespace A094521.P1459070579434357386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A094457 (n + 2) * A181569 (n + 1)).toNat

end

end A094521.P1459070579434357386

/-! ## A094521.P7663433383222858465

`A000188((n+2)*A094457(n+2))`
-/

namespace A094521.P7663433383222858465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((n + 2 : ℤ) * A094457 (n + 2)).toNat

end

end A094521.P7663433383222858465

/-! ## A094521.P14986835816377473735

`A000188(A094457((n+2)²))`
-/

namespace A094521.P14986835816377473735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A094457 ((n + 2) ^ 2)).toNat

end

end A094521.P14986835816377473735

/-!
# A094522: a(n) = gcd(n, A064802(n)).

The programs for A094522, there is no canonical definition to state claims against.
-/

/-! ## A094522.P9346553357799741943

`gcd(n+1, A064802(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094522.P9346553357799741943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A064802 (n + 1))

end

end A094522.P9346553357799741943

/-! ## A094522.P10778065387145064204

`gcd(A064802(n+1), A103517(n))`
-/

namespace A094522.P10778065387145064204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064802 (n + 1)) (A103517 n)

end

end A094522.P10778065387145064204

/-! ## A094522.P10616647992093686715

`A064989(A094521(2*A003961(n+1)))`
-/

namespace A094522.P10616647992093686715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A094521 (2 * A003961 (n + 1)).toNat).toNat

end

end A094522.P10616647992093686715

/-! ## A094522.P156948601264421392

`A109004(A064802(n+1)+∑[n])`
-/

namespace A094522.P156948601264421392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A064802 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A094522.P156948601264421392

/-! ## A094522.P15290336937259783647

`A064802((n+1)²)/lcm(n+1, A064802(n+1))`
-/

namespace A094522.P15290336937259783647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064802 ((n + 1) ^ 2) : ℚ) / (Int.lcm (n + 1 : ℤ) (A064802 (n + 1)) : ℚ)

end

end A094522.P15290336937259783647

/-!
# A094523: Numbers n not of the form i^2+(i+1)^2 such that there are integers a < b with a^2+(a+1)^2+...+(n-1)^2 = n^2+(n+1)^2+...+b^2.

The programs for A094523, there is no canonical definition to state claims against.
-/

/-! ## A094523.P17246839696959496656

`∩[A014601(n), A094553(n+1)]`
-/

namespace A094523.P17246839696959496656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094523.P17246839696959496656

/-! ## A094523.P7714845650044388777

`∩[A094553(n+1), A254311(n+1)]`
-/

namespace A094523.P7714845650044388777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094523.P7714845650044388777

/-!
# A094524: Primes of form 3*prime(m) + 2.

The programs for A094524, there is no canonical definition to state claims against.
-/

/-! ## A094524.P2890529061939294200

`3*A023208(n+1)+2`
-/

namespace A094524.P2890529061939294200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023208 (n + 1) + 2

end

end A094524.P2890529061939294200

/-! ## A094524.P17328779634705268700

`∪[A370156(n+1), A152292(n+1)]`
-/

namespace A094524.P17328779634705268700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094524.P17328779634705268700

/-! ## A094524.P5875110581569912900

`A162337(n+2)`
-/

namespace A094524.P5875110581569912900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162337 (n + 2)

end

end A094524.P5875110581569912900

/-! ## A094524.P11745867239062244350

`3*A162338(n+2)+2`
-/

namespace A094524.P11745867239062244350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162338 (n + 2) + 2

end

end A094524.P11745867239062244350

/-! ## A094524.P5594066651705462953

`p?[A001748(n+1)+2]`
-/

namespace A094524.P5594066651705462953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P5594066651705462953

/-! ## A094524.P18025727179694619165

`p?[3*p?[2*n+1]+2]`
-/

namespace A094524.P18025727179694619165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A094524.P18025727179694619165

/-! ## A094524.P3531091909776948048

`p?[A129075(n+1)-2]`
-/

namespace A094524.P3531091909776948048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P3531091909776948048

/-! ## A094524.P8008275352009623799

`p?[3*A000040(n+1)+2]`
-/

namespace A094524.P8008275352009623799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P8008275352009623799

/-! ## A094524.P6297478895415813290

`p?[A072055(n+1)+A008864(n+1)]`
-/

namespace A094524.P6297478895415813290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P6297478895415813290

/-! ## A094524.P4203127769506722054

`p?[A089241(n+1)+A000040(n+1)]`
-/

namespace A094524.P4203127769506722054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P4203127769506722054

/-! ## A094524.P10997126042154892887

`p?[A072055(n+1)+A055670(n+1)]`
-/

namespace A094524.P10997126042154892887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A055670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P10997126042154892887

/-! ## A094524.P11835842051566695804

`p?[A000040(n+1)+A100484(n+1)+2]`
-/

namespace A094524.P11835842051566695804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100484 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P11835842051566695804

/-! ## A094524.P3653387030397699788

`p?[A112773(n+2)+2]`
-/

namespace A094524.P3653387030397699788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P3653387030397699788

/-! ## A094524.P16701425708637166230

`p?[3*record[A020639(n+2)]+2]`
-/

namespace A094524.P16701425708637166230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094524.P16701425708637166230

/-! ## A094524.P15531923678035197860

`3*p?[A024893(n+1)]+2`
-/

namespace A094524.P15531923678035197860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A094524.P15531923678035197860

/-! ## A094524.P6649409304359403601

`∩[A003627(n+1), A063638(n+1)]`
-/

namespace A094524.P6649409304359403601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094524.P6649409304359403601

/-! ## A094524.P17784567197745594652

`∩[A007528(n+1), A063638(n+1)]`
-/

namespace A094524.P17784567197745594652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094524.P17784567197745594652

/-! ## A094524.P9080398568401981024

`∩[A045309(n+1), A063638(n+1)]`
-/

namespace A094524.P9080398568401981024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094524.P9080398568401981024

/-! ## A094524.P14499572715605813360

`∩[A045410(n+1), A063638(n+1)]`
-/

namespace A094524.P14499572715605813360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094524.P14499572715605813360

/-!
# A094525: Square array of binomial transforms read by antidiagonals.

The programs for A094525, there is no canonical definition to state claims against.
-/

/-! ## A094525.P13141786348535612719

`A361682(n)-A062707(n)`
-/

namespace A094525.P13141786348535612719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361682 n - A062707 n

end

end A094525.P13141786348535612719

/-! ## A094525.P6670092595175126666

`A361521(n)+1-A062707(n)`
-/

namespace A094525.P6670092595175126666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361521 n + (1 - A062707 n)

end

end A094525.P6670092595175126666

/-! ## A094525.P5722738698130144930

`A239331(A061579(n))-A062707(n)`
-/

namespace A094525.P5722738698130144930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 (A061579 n).toNat - A062707 n

end

end A094525.P5722738698130144930

/-! ## A094525.P5130066617105241755

`A361521(n)-A023443(A062707(n))`
-/

namespace A094525.P5130066617105241755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361521 n - A023443 (A062707 n).toNat

end

end A094525.P5130066617105241755

/-! ## A094525.P15303407487859478025

`A008619(2*A361521(n))-A062707(n)`
-/

namespace A094525.P15303407487859478025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A361521 n).toNat - A062707 n

end

end A094525.P15303407487859478025

/-! ## A094525.P12924575388227740381

`A028242(2*A361521(n))-A062707(n)`
-/

namespace A094525.P12924575388227740381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A361521 n).toNat - A062707 n

end

end A094525.P12924575388227740381

/-! ## A094525.P3342832911511302838

`A239331(A038722(n+1)-1)-A062707(n)`
-/

namespace A094525.P3342832911511302838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239331 (A038722 (n + 1) - 1).toNat - A062707 n

end

end A094525.P3342832911511302838

/-!
# A094527: Triangle T(n,k), read by rows, defined by T(n,k) = binomial(2*n,n-k).

The programs for A094527, the canonical program `A094527.P8702024133235027674` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094527 has offset 0).

The definition of A094527 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n), row(n)-col(n))` (program `A094527.P8702024133235027674`, by `A094527.P8702024133235027674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094527.P8702024133235027674

`C(2*row(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094527

/-- `C(2*row(n), row(n)-col(n))` -/
def P8702024133235027674.Spec : Prop :=
  ∀ n, (P8702024133235027674.a n : ℤ) = A094527 n

theorem P8702024133235027674.correct : P8702024133235027674.Spec := by
  intro n
  simp only [A094527]

end A094527

/-! ## A094527.P602335570425391904

`A034870(Δ[n²]-(col(n)+1))`
-/

namespace A094527.P602335570425391904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)).toNat

end

end A094527.P602335570425391904

namespace A094527

/-- `A034870(Δ[n²]-(col(n)+1))` -/
def P602335570425391904.Spec : Prop :=
  ∀ n, P602335570425391904.a n = A094527 n

end A094527

/-! ## A094527.P7532497907685993384

`(A111418(n)+A039599(n))/2`
-/

namespace A094527.P7532497907685993384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111418 n + A039599 n : ℚ) / 2

end

end A094527.P7532497907685993384

namespace A094527

/-- `(A111418(n)+A039599(n))/2` -/
def P7532497907685993384.Spec : Prop :=
  ∀ n, P7532497907685993384.a n = (A094527 n : ℚ)

end A094527

/-! ## A094527.P9061328716043493289

`(A039599(n)+abs(A113187(n)))/2`
-/

namespace A094527.P9061328716043493289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039599 n + |A113187 n| : ℚ) / 2

end

end A094527.P9061328716043493289

namespace A094527

/-- `(A039599(n)+abs(A113187(n)))/2` -/
def P9061328716043493289.Spec : Prop :=
  ∀ n, P9061328716043493289.a n = (A094527 n : ℚ)

end A094527

/-! ## A094527.P5153745257800255692

`A053122(n)/A111125(n)*A113187(n)`
-/

namespace A094527.P5153745257800255692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053122 n : ℚ) / (A111125 n : ℚ) * (A113187 n : ℚ)

end

end A094527.P5153745257800255692

namespace A094527

/-- `A053122(n)/A111125(n)*A113187(n)` -/
def P5153745257800255692.Spec : Prop :=
  ∀ n, P5153745257800255692.a n = (A094527 n : ℚ)

end A094527

/-! ## A094527.P14610792163670534615

`A062344(A061579(n))`
-/

namespace A094527.P14610792163670534615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A061579 n).toNat

end

end A094527.P14610792163670534615

namespace A094527

/-- `A062344(A061579(n))` -/
def P14610792163670534615.Spec : Prop :=
  ∀ n, P14610792163670534615.a n = A094527 n

end A094527

/-! ## A094527.P982662168799740937

`A062344(A114327(n)+n)`
-/

namespace A094527.P982662168799740937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A114327 n + (n : ℤ)).toNat

end

end A094527.P982662168799740937

namespace A094527

/-- `A062344(A114327(n)+n)` -/
def P982662168799740937.Spec : Prop :=
  ∀ n, P982662168799740937.a n = A094527 n

end A094527

/-! ## A094527.P2225746837478697324

`A062344(A038722(n+1)-1)`
-/

namespace A094527.P2225746837478697324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A038722 (n + 1) - 1).toNat

end

end A094527.P2225746837478697324

namespace A094527

/-- `A062344(A038722(n+1)-1)` -/
def P2225746837478697324.Spec : Prop :=
  ∀ n, P2225746837478697324.a n = A094527 n

end A094527

/-! ## A094527.P7821113810231721716

`A062344(A038722(n+2))`
-/

namespace A094527.P7821113810231721716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 (A038722 (n + 2)).toNat

end

end A094527.P7821113810231721716

namespace A094527

/-- `A062344(A038722(n+2))` -/
def P7821113810231721716.Spec : Prop :=
  ∀ n, P7821113810231721716.a n = A094527 n

end A094527

/-! ## A094527.P11518508935451345501

`C(2*row(n), col(n)+row(n))`
-/

namespace A094527.P11518508935451345501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n)

end

end A094527.P11518508935451345501

namespace A094527

/-- `C(2*row(n), col(n)+row(n))` -/
def P11518508935451345501.Spec : Prop :=
  ∀ n, (P11518508935451345501.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P1345912474782475587

`C(2*row(n), A025581(n))`
-/

namespace A094527.P1345912474782475587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triRow n) (A025581 n).toNat

end

end A094527.P1345912474782475587

namespace A094527

/-- `C(2*row(n), A025581(n))` -/
def P1345912474782475587.Spec : Prop :=
  ∀ n, (P1345912474782475587.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P6572765420975766966

`C(2*A003056(n), A025581(n))`
-/

namespace A094527.P6572765420975766966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A003056 n).toNat (A025581 n).toNat

end

end A094527.P6572765420975766966

namespace A094527

/-- `C(2*A003056(n), A025581(n))` -/
def P6572765420975766966.Spec : Prop :=
  ∀ n, (P6572765420975766966.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P11744213158244510144

`C(2*A003056(n), A051162(n))`
-/

namespace A094527.P11744213158244510144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A003056 n).toNat (A051162 n).toNat

end

end A094527.P11744213158244510144

namespace A094527

/-- `C(2*A003056(n), A051162(n))` -/
def P11744213158244510144.Spec : Prop :=
  ∀ n, (P11744213158244510144.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P18391261686010825792

`C(2*A003056(n+1), A057554(2*(n+1)))`
-/

namespace A094527.P18391261686010825792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A003056 (n + 1)).toNat (A057554 (2 * (n + 1))).toNat

end

end A094527.P18391261686010825792

namespace A094527

/-- `C(2*A003056(n+1), A057554(2*(n+1)))` -/
def P18391261686010825792.Spec : Prop :=
  ∀ n, (P18391261686010825792.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P1469525308282105560

`C(A004277(A003056(n)), A025581(n))`
-/

namespace A094527.P1469525308282105560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 (A003056 n).toNat).toNat (A025581 n).toNat

end

end A094527.P1469525308282105560

namespace A094527

/-- `C(A004277(A003056(n)), A025581(n))` -/
def P1469525308282105560.Spec : Prop :=
  ∀ n, (P1469525308282105560.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P8017949248163714408

`C(2*A025581(A057944(n)), A025581(n))`
-/

namespace A094527.P8017949248163714408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A025581 (A057944 n).toNat).toNat (A025581 n).toNat

end

end A094527.P8017949248163714408

namespace A094527

/-- `C(2*A025581(A057944(n)), A025581(n))` -/
def P8017949248163714408.Spec : Prop :=
  ∀ n, (P8017949248163714408.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P7515864838564415157

`C(A051162(A025581(n)+n), A025581(n))`
-/

namespace A094527.P7515864838564415157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051162 (A025581 n + (n : ℤ)).toNat).toNat (A025581 n).toNat

end

end A094527.P7515864838564415157

namespace A094527

/-- `C(A051162(A025581(n)+n), A025581(n))` -/
def P7515864838564415157.Spec : Prop :=
  ∀ n, (P7515864838564415157.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P17543754230688293214

`C(A134478(A025581(n)+n), A025581(n))`
-/

namespace A094527.P17543754230688293214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134478 (A025581 n + (n : ℤ)).toNat).toNat (A025581 n).toNat

end

end A094527.P17543754230688293214

namespace A094527

/-- `C(A134478(A025581(n)+n), A025581(n))` -/
def P17543754230688293214.Spec : Prop :=
  ∀ n, (P17543754230688293214.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P1977991401546976911

`C(A004277(A003056(n+1)), A057554(2*(n+1)))`
-/

namespace A094527.P1977991401546976911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004277 (A003056 (n + 1)).toNat).toNat (A057554 (2 * (n + 1))).toNat

end

end A094527.P1977991401546976911

namespace A094527

/-- `C(A004277(A003056(n+1)), A057554(2*(n+1)))` -/
def P1977991401546976911.Spec : Prop :=
  ∀ n, (P1977991401546976911.a n : ℤ) = A094527 n

end A094527

/-! ## A094527.P5628180271358102139

`A110608(n)/A007318(n)`
-/

namespace A094527.P5628180271358102139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A007318 n : ℚ)

end

end A094527.P5628180271358102139

namespace A094527

/-- `A110608(n)/A007318(n)` -/
def P5628180271358102139.Spec : Prop :=
  ∀ n, P5628180271358102139.a n = (A094527 n : ℚ)

end A094527

/-!
# A094528: Triangle T(n,k) read by rows related to A004001.

The programs for A094528, there is no canonical definition to state claims against.
-/

/-! ## A094528.P15967513507526513493

`A043536(3*A192969(n))`
-/

namespace A094528.P15967513507526513493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (3 * A192969 n).toNat

end

end A094528.P15967513507526513493

/-! ## A094528.P4135622232238917921

`A001221(lcm(A171435(n+1), A321048(n+3)))`
-/

namespace A094528.P4135622232238917921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A171435 (n + 1)) (A321048 (n + 3)))

end

end A094528.P4135622232238917921

/-! ## A094528.P1752279777312577501

`A297774(or(A000010(3*n+2), A000032(n+3)))`
-/

namespace A094528.P1752279777312577501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297774 (Int.lor (A000010 (3 * n + 2)) (A000032 (n + 3))).toNat

end

end A094528.P1752279777312577501

/-!
# A094529: Numbers with at least one arithmetic progression of four divisors (not necessarily consecutive).

The programs for A094529, there is no canonical definition to state claims against.
-/

/-! ## A094529.P1289330856807513487

`lt[3, A067131(n+1)]+1`
-/

namespace A094529.P1289330856807513487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094529.P1289330856807513487

/-! ## A094529.P3492925878771044022

`lt[A160752(n+1), A091009(n+1)]+1`
-/

namespace A094529.P3492925878771044022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091009 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A094529.P3492925878771044022

/-! ## A094529.P8484878660715476368

`lt[3, A067131(A028310(n))]`
-/

namespace A094529.P8484878660715476368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094529.P8484878660715476368

/-! ## A094529.P11815775844093096122

`lt[3, A067131(A233583(n+1))]`
-/

namespace A094529.P11815775844093096122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094529.P11815775844093096122

/-! ## A094529.P1162077634403929317

`∪[A094530(n+1), A270571(n+1)]%A091013(3*n+4)`
-/

namespace A094529.P1162077634403929317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A091013 (3 * n + 4))

end

end A094529.P1162077634403929317

/-!
# A094531: Array read by rows: right-hand side of triangle A027907 of trinomial coefficients.

The programs for A094531, the canonical program `A094531.P800808648712682250` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094531 has offset 0).

The definition of A094531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094531.P15947250106890694020

`(A089942(n)+A038622(n))/2`
-/

namespace A094531.P15947250106890694020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089942 n + A038622 n : ℚ) / 2

end

end A094531.P15947250106890694020

namespace A094531

/-- `(A089942(n)+A038622(n))/2` -/
def P15947250106890694020.Spec : Prop :=
  ∀ n, P15947250106890694020.a n = (A094531 n : ℚ)

end A094531

/-! ## A094531.P1582291251057688166

`A111808(∑[char[∑[n]]]²-n)`
-/

namespace A094531.P1582291251057688166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111808 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A094531.P1582291251057688166

namespace A094531

/-- `A111808(∑[char[∑[n]]]²-n)` -/
def P1582291251057688166.Spec : Prop :=
  ∀ n, P1582291251057688166.a n = A094531 n

end A094531

/-! ## A094531.P2355818954956583955

`A220178(n)/A046899(n)`
-/

namespace A094531.P2355818954956583955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220178 n : ℚ) / (A046899 n : ℚ)

end

end A094531.P2355818954956583955

namespace A094531

/-- `A220178(n)/A046899(n)` -/
def P2355818954956583955.Spec : Prop :=
  ∀ n, P2355818954956583955.a n = (A094531 n : ℚ)

end A094531

/-! ## A094531.P1118638458929811333

`A027907(C(∑[char[∑[n]]], 2)+n)`
-/

namespace A094531.P1118638458929811333
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n)

end

end A094531.P1118638458929811333

namespace A094531

/-- `A027907(C(∑[char[∑[n]]], 2)+n)` -/
def P1118638458929811333.Spec : Prop :=
  ∀ n, P1118638458929811333.a n = A094531 n

end A094531

/-! ## A094531.P800808648712682250

`A027907(Δ[n²]-col(n)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094531

/-- `A027907(Δ[n²]-col(n)-1)` -/
def P800808648712682250.Spec : Prop :=
  ∀ n, P800808648712682250.a n = A094531 n

theorem P800808648712682250.correct : P800808648712682250.Spec := by
  intro n
  simp only [A094531]

end A094531

/-! ## A094531.P2318700451256447297

`A027907(comp[C(comp[∑[n]]-n, 2)+n])`
-/

namespace A094531.P2318700451256447297
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A094531.P2318700451256447297

namespace A094531

/-- `A027907(comp[C(comp[∑[n]]-n, 2)+n])` -/
def P2318700451256447297.Spec : Prop :=
  ∀ n, P2318700451256447297.a n = A094531 n

end A094531

/-! ## A094531.P11951039942625619298

`A027907(eq[0, ceil(2*sqrt(n+1))%2])`
-/

namespace A094531.P11951039942625619298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094531.P11951039942625619298

namespace A094531

/-- `A027907(eq[0, ceil(2*sqrt(n+1))%2])` -/
def P11951039942625619298.Spec : Prop :=
  ∀ n, P11951039942625619298.a n = A094531 n

end A094531

/-! ## A094531.P16319908579363837112

`A027907(lt[(ceil(sqrt(n))²-n)², n]-1)`
-/

namespace A094531.P16319908579363837112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A094531.P16319908579363837112

namespace A094531

/-- `A027907(lt[(ceil(sqrt(n))²-n)², n]-1)` -/
def P16319908579363837112.Spec : Prop :=
  ∀ n, P16319908579363837112.a n = A094531 n

end A094531

/-! ## A094531.P5132015716201451872

`A027907(2*n-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A094531.P5132015716201451872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((2 * n : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ))).toNat

end

end A094531.P5132015716201451872

namespace A094531

/-- `A027907(2*n-(n-C(∑[char[∑[n]]], 2)))` -/
def P5132015716201451872.Spec : Prop :=
  ∀ n, P5132015716201451872.a n = A094531 n

end A094531

/-! ## A094531.P9436974362376441250

`A027907(A061885(n))`
-/

namespace A094531.P9436974362376441250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A061885 n).toNat

end

end A094531.P9436974362376441250

namespace A094531

/-- `A027907(A061885(n))` -/
def P9436974362376441250.Spec : Prop :=
  ∀ n, P9436974362376441250.a n = A094531 n

end A094531

/-! ## A094531.P14007135845200440195

`A027907(eq[1, A118175(n)])`
-/

namespace A094531.P14007135845200440195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094531.P14007135845200440195

namespace A094531

/-- `A027907(eq[1, A118175(n)])` -/
def P14007135845200440195.Spec : Prop :=
  ∀ n, P14007135845200440195.a n = A094531 n

end A094531

/-! ## A094531.P2024175973521096520

`A027907(A057944(n)+n)`
-/

namespace A094531.P2024175973521096520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A057944 n + (n : ℤ)).toNat

end

end A094531.P2024175973521096520

namespace A094531

/-- `A027907(A057944(n)+n)` -/
def P2024175973521096520.Spec : Prop :=
  ∀ n, P2024175973521096520.a n = A094531 n

end A094531

/-! ## A094531.P1161832801796255671

`A027907(A004201(n+1)-1)`
-/

namespace A094531.P1161832801796255671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A004201 (n + 1) - 1).toNat

end

end A094531.P1161832801796255671

namespace A094531

/-- `A027907(A004201(n+1)-1)` -/
def P1161832801796255671.Spec : Prop :=
  ∀ n, P1161832801796255671.a n = A094531 n

end A094531

/-! ## A094531.P17220578237334969549

`A027907(2*n+1-A002260(n+1))`
-/

namespace A094531.P17220578237334969549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 ((2 * n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A094531.P17220578237334969549

namespace A094531

/-- `A027907(2*n+1-A002260(n+1))` -/
def P17220578237334969549.Spec : Prop :=
  ∀ n, P17220578237334969549.a n = A094531 n

theorem P17220578237334969549.correct : P17220578237334969549.Spec := by
  intro n
  simp only [A094531, Nat.add_sub_cancel, A094531.P17220578237334969549.a, A094531.P800808648712682250.f1, A094531.P800808648712682250.a, A002260, A002260.P9170571874073898642.a, A027907, A027907.P16049525766680264518.a, A161983, A161983.P7486085872780093251.a, A169623, A169623.P16916263212126824614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094531

/-!
# A094533: Number of one-element transitions among partitions of the integer n for labeled parts.

The programs for A094533, there is no canonical definition to state claims against.
-/

/-! ## A094533.P17563440320395386029

`A296010(n)-A006128(n)`
-/

namespace A094533.P17563440320395386029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - A006128 n

end

end A094533.P17563440320395386029

/-! ## A094533.P16357169176952261271

`A296010(n)-A211978(n)/2`
-/

namespace A094533.P16357169176952261271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296010 n : ℚ) - (A211978 n : ℚ) / 2

end

end A094533.P16357169176952261271

/-! ## A094533.P3091623264146975013

`A296010(n)-A278355(n)/4`
-/

namespace A094533.P3091623264146975013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296010 n : ℚ) - (A278355 n : ℚ) / 4

end

end A094533.P3091623264146975013

/-! ## A094533.P3877006098195256136

`A296010(n)+n-A225596(n)`
-/

namespace A094533.P3877006098195256136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n + ((n : ℤ) - A225596 n)

end

end A094533.P3877006098195256136

/-! ## A094533.P8571625066323685563

`A296010(n)-(A210970(n)-∑[n])/2`
-/

namespace A094533.P8571625066323685563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296010 n : ℚ) - (A210970 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A094533.P8571625066323685563

/-! ## A094533.P1539526596507741027

`A000041(n)+A296010(n)-A093694(n)`
-/

namespace A094533.P1539526596507741027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A296010 n - A093694 n)

end

end A094533.P1539526596507741027

/-! ## A094533.P5350541921703094587

`A296010(n)-(A194452(n)+A024786(n+1))`
-/

namespace A094533.P5350541921703094587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - (A194452 n + A024786 (n + 1))

end

end A094533.P5350541921703094587

/-! ## A094533.P6314151041766068219

`A296010(n)-(A093694(n)-(A000065(n)+1))`
-/

namespace A094533.P6314151041766068219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - (A093694 n - (A000065 n + 1))

end

end A094533.P6314151041766068219

/-! ## A094533.P658496901287033580

`A296010(n)-(A000070(n)+A198381(n)-1)`
-/

namespace A094533.P658496901287033580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - (A000070 n + (A198381 n - 1))

end

end A094533.P658496901287033580

/-! ## A094533.P6868026792407485889

`A296010(n)-(A222048(n)+A222047(n))`
-/

namespace A094533.P6868026792407485889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - (A222048 n + A222047 n)

end

end A094533.P6868026792407485889

/-! ## A094533.P779290696124752051

`A296010(n)-(A222049(n)+2*A222048(n))`
-/

namespace A094533.P779290696124752051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - (A222049 n + 2 * A222048 n)

end

end A094533.P779290696124752051

/-! ## A094533.P13040584800884056628

`A296010(n)-(2*A222047(n)-A222049(n))`
-/

namespace A094533.P13040584800884056628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - (2 * A222047 n - A222049 n)

end

end A094533.P13040584800884056628

/-! ## A094533.P13684942679879738765

`A296010(n)-A210485(A000096(n))`
-/

namespace A094533.P13684942679879738765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - A210485 (A000096 n).toNat

end

end A094533.P13684942679879738765

/-! ## A094533.P14632391545379711676

`A002262(A133263(n))*A256193(A133263(n))`
-/

namespace A094533.P14632391545379711676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A133263 n).toNat * A256193 (A133263 n).toNat

end

end A094533.P14632391545379711676

/-! ## A094533.P12318415499082319482

`A296010(n)-A327618(A034856(n+1))`
-/

namespace A094533.P12318415499082319482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296010 n - A327618 (A034856 (n + 1)).toNat

end

end A094533.P12318415499082319482

/-!
# A094534: Centered hexamorphic numbers: the k-th centered hexagonal number, 3k(k-1)+1, ends in k.

The programs for A094534, there is no canonical definition to state claims against.
-/

/-! ## A094534.P14926623982781752131

`A304713(A331683(n+1)+A192425(n))`
-/

namespace A094534.P14926623982781752131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304713 (A331683 (n + 1) + A192425 n).toNat

end

end A094534.P14926623982781752131

/-!
# A094535: a(n) is the smallest integer m such that A039995(m)=n.

The programs for A094535, there is no canonical definition to state claims against.
-/

/-! ## A094535.P16915567277635322129

`∩[A033054(n+1), A109640(n+1)]`
-/

namespace A094535.P16915567277635322129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094535.P16915567277635322129

/-! ## A094535.P7219205636066738234

`A239017(eq[floor(n/4), A339846(n+1)])`
-/

namespace A094535.P7219205636066738234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094535.P7219205636066738234

/-!
# A094536: Number of binary words of length n that are not "bifix-free".

The programs for A094536, the canonical program `A094536.P13205701209881568815` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094536 has offset 0).

The definition of A094536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094536.P13205701209881568815

`2^n-A003000(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094536

/-- `2^n-A003000(n)` -/
def P13205701209881568815.Spec : Prop :=
  ∀ n, P13205701209881568815.a n = A094536 n

theorem P13205701209881568815.correct : P13205701209881568815.Spec := by
  intro n
  simp only [A094536]

end A094536

/-! ## A094536.P12843017811792884335

`2*A094537(n)`
-/

namespace A094536.P12843017811792884335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094537 n

end

end A094536.P12843017811792884335

namespace A094536

/-- `2*A094537(n)` -/
def P12843017811792884335.Spec : Prop :=
  ∀ n, P12843017811792884335.a n = A094536 n

end A094536

/-! ## A094536.P12301144988902242469

`lcm(A001316(n), A094537(n))`
-/

namespace A094536.P12301144988902242469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A094537 n)

end

end A094536.P12301144988902242469

namespace A094536

/-- `lcm(A001316(n), A094537(n))` -/
def P12301144988902242469.Spec : Prop :=
  ∀ n, (P12301144988902242469.a n : ℤ) = A094536 n

end A094536

/-! ## A094536.P2001905742239037556

`A000051(n)-(A003000(n)+1)`
-/

namespace A094536.P2001905742239037556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A003000 n + 1)

end

end A094536.P2001905742239037556

namespace A094536

/-- `A000051(n)-(A003000(n)+1)` -/
def P2001905742239037556.Spec : Prop :=
  ∀ n, P2001905742239037556.a n = A094536 n

theorem P2001905742239037556.correct : P2001905742239037556.Spec := by
  intro n
  simp only [A094536, Nat.add_sub_cancel, A094536.P2001905742239037556.a, A094536.P13205701209881568815.a, A000051, A000051.P14067217022188782580.a, A003000, A003000.P6557006647586866412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094536

/-! ## A094536.P17338477852763981291

`A000225(n)+1-A003000(n)`
-/

namespace A094536.P17338477852763981291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A003000 n)

end

end A094536.P17338477852763981291

namespace A094536

/-- `A000225(n)+1-A003000(n)` -/
def P17338477852763981291.Spec : Prop :=
  ∀ n, P17338477852763981291.a n = A094536 n

theorem P17338477852763981291.correct : P17338477852763981291.Spec := by
  intro n
  simp only [A094536, Nat.add_sub_cancel, A094536.P17338477852763981291.a, A094536.P13205701209881568815.a, A000225, A000225.P6535533121115206393.a, A003000, A003000.P6557006647586866412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094536

/-! ## A094536.P2988760876554616365

`A006127(n)-(A003000(n)+n)`
-/

namespace A094536.P2988760876554616365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - (A003000 n + (n : ℤ))

end

end A094536.P2988760876554616365

namespace A094536

/-- `A006127(n)-(A003000(n)+n)` -/
def P2988760876554616365.Spec : Prop :=
  ∀ n, P2988760876554616365.a n = A094536 n

theorem P2988760876554616365.correct : P2988760876554616365.Spec := by
  intro n
  simp only [A094536, Nat.add_sub_cancel, A094536.P2988760876554616365.a, A094536.P13205701209881568815.a, A003000, A003000.P6557006647586866412.a, A006127, A006127.P13800088188431216723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094536

/-! ## A094536.P312563899274084039

`A094537(A005843(n)/2)+A094537(n)`
-/

namespace A094536.P312563899274084039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094537 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A094537 n

end

end A094536.P312563899274084039

namespace A094536

/-- `A094537(A005843(n)/2)+A094537(n)` -/
def P312563899274084039.Spec : Prop :=
  ∀ n, P312563899274084039.a n = A094536 n

end A094536

/-! ## A094536.P8740582998314380812

`A094537(A005843(n)-n)+A094537(n)`
-/

namespace A094536.P8740582998314380812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094537 (A005843 n - (n : ℤ)).toNat + A094537 n

end

end A094536.P8740582998314380812

namespace A094536

/-- `A094537(A005843(n)-n)+A094537(n)` -/
def P8740582998314380812.Spec : Prop :=
  ∀ n, P8740582998314380812.a n = A094536 n

end A094536

/-! ## A094536.P12854922509781502371

`A045690(n+1)+A094537(n+1)-A003000(n)`
-/

namespace A094536.P12854922509781502371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045690 (n + 1) + (A094537 (n + 1) - A003000 n)

end

end A094536.P12854922509781502371

namespace A094536

/-- `A045690(n+1)+A094537(n+1)-A003000(n)` -/
def P12854922509781502371.Spec : Prop :=
  ∀ n, P12854922509781502371.a n = A094536 n

end A094536

/-! ## A094536.P10273414231762589201

`A254128(n+1)/2`
-/

namespace A094536.P10273414231762589201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254128 (n + 1) : ℚ) / 2

end

end A094536.P10273414231762589201

namespace A094536

/-- `A254128(n+1)/2` -/
def P10273414231762589201.Spec : Prop :=
  ∀ n, P10273414231762589201.a n = (A094536 n : ℚ)

end A094536

/-! ## A094536.P14220245556672348054

`∑[Δ[A254128(n)]/2]`
-/

namespace A094536.P14220245556672348054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254128 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094536.P14220245556672348054

namespace A094536

/-- `∑[Δ[A254128(n)]/2]` -/
def P14220245556672348054.Spec : Prop :=
  ∀ n, P14220245556672348054.a n = (A094536 n : ℚ)

end A094536

/-! ## A094536.P11003302239476745738

`A254128(n+1)-A094537(n)-A094537(n)`
-/

namespace A094536.P11003302239476745738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254128 (n + 1) - A094537 n - A094537 n

end

end A094536.P11003302239476745738

namespace A094536

/-- `A254128(n+1)-A094537(n)-A094537(n)` -/
def P11003302239476745738.Spec : Prop :=
  ∀ n, P11003302239476745738.a n = A094536 n

end A094536

/-!
# A094537: A094536/2.

The programs for A094537, the canonical program `A094537.P10446689447530711500` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094537 has offset 0).

The definition of A094537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094537.P10446689447530711500

`A094536(n)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094537

/-- `A094536(n)/2` -/
def P10446689447530711500.Spec : Prop :=
  ∀ n, P10446689447530711500.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P2000374356353373777

`(2^n-A003000(n))/2`
-/

namespace A094537.P2000374356353373777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A003000 n : ℚ) / 2

end

end A094537.P2000374356353373777

namespace A094537

/-- `(2^n-A003000(n))/2` -/
def P2000374356353373777.Spec : Prop :=
  ∀ n, P2000374356353373777.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P3795198677050342422

`(A000051(n)-(A003000(n)+1))/2`
-/

namespace A094537.P3795198677050342422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n - (A003000 n + 1) : ℚ) / 2

end

end A094537.P3795198677050342422

namespace A094537

/-- `(A000051(n)-(A003000(n)+1))/2` -/
def P3795198677050342422.Spec : Prop :=
  ∀ n, P3795198677050342422.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P15696428769521487255

`(A000225(n)+1-A003000(n))/2`
-/

namespace A094537.P15696428769521487255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n + (1 - A003000 n) : ℚ) / 2

end

end A094537.P15696428769521487255

namespace A094537

/-- `(A000225(n)+1-A003000(n))/2` -/
def P15696428769521487255.Spec : Prop :=
  ∀ n, P15696428769521487255.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P2311038180855728836

`A254128(n+1)/4`
-/

namespace A094537.P2311038180855728836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254128 (n + 1) : ℚ) / 4

end

end A094537.P2311038180855728836

namespace A094537

/-- `A254128(n+1)/4` -/
def P2311038180855728836.Spec : Prop :=
  ∀ n, P2311038180855728836.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P3813811004957097929

`Δ[∑[A254128(n)]/4]`
-/

namespace A094537.P3813811004957097929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254128 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094537.P3813811004957097929

namespace A094537

/-- `Δ[∑[A254128(n)]/4]` -/
def P3813811004957097929.Spec : Prop :=
  ∀ n, P3813811004957097929.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P18095860147575521803

`A342240(A212342(n+1))/2`
-/

namespace A094537.P18095860147575521803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342240 (A212342 (n + 1)).toNat : ℚ) / 2

end

end A094537.P18095860147575521803

namespace A094537

/-- `A342240(A212342(n+1))/2` -/
def P18095860147575521803.Spec : Prop :=
  ∀ n, P18095860147575521803.a n = (A094537 n : ℚ)

end A094537

/-! ## A094537.P3365596448536290867

`A342240(A347553(n+3))/2`
-/

namespace A094537.P3365596448536290867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342240 (A347553 (n + 3)).toNat : ℚ) / 2

end

end A094537.P3365596448536290867

namespace A094537

/-- `A342240(A347553(n+3))/2` -/
def P3365596448536290867.Spec : Prop :=
  ∀ n, P3365596448536290867.a n = (A094537 n : ℚ)

end A094537

/-!
# A094538: Number of ternary words of length n that are not "bifix-free".

The programs for A094538, the canonical program `A094538.P4112405845201570244` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094538 has offset 0).

The definition of A094538 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019308, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094538.P4112405845201570244

`3^n-A019308(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094538

/-- `3^n-A019308(n)` -/
def P4112405845201570244.Spec : Prop :=
  ∀ n, P4112405845201570244.a n = A094538 n

theorem P4112405845201570244.correct : P4112405845201570244.Spec := by
  intro n
  simp only [A094538]

end A094538

/-! ## A094538.P2317489392547792590

`3*A094539(n)`
-/

namespace A094538.P2317489392547792590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A094539 n

end

end A094538.P2317489392547792590

namespace A094538

/-- `3*A094539(n)` -/
def P2317489392547792590.Spec : Prop :=
  ∀ n, P2317489392547792590.a n = A094538 n

end A094538

/-! ## A094538.P2730572084841739162

`lcm(A048883(n), A094539(n))`
-/

namespace A094538.P2730572084841739162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048883 n) (A094539 n)

end

end A094538.P2730572084841739162

namespace A094538

/-- `lcm(A048883(n), A094539(n))` -/
def P2730572084841739162.Spec : Prop :=
  ∀ n, (P2730572084841739162.a n : ℤ) = A094538 n

end A094538

/-! ## A094538.P16682826035759836587

`A045694(n+1)+A094539(n+1)-A019308(n)`
-/

namespace A094538.P16682826035759836587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045694 (n + 1) + (A094539 (n + 1) - A019308 n)

end

end A094538.P16682826035759836587

namespace A094538

/-- `A045694(n+1)+A094539(n+1)-A019308(n)` -/
def P16682826035759836587.Spec : Prop :=
  ∀ n, P16682826035759836587.a n = A094538 n

end A094538

/-! ## A094538.P14631284107175953613

`A000244(n)%A019308(n)`
-/

namespace A094538.P14631284107175953613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A019308 n)

end

end A094538.P14631284107175953613

namespace A094538

/-- `A000244(n)%A019308(n)` -/
def P14631284107175953613.Spec : Prop :=
  ∀ n, P14631284107175953613.a n = A094538 n

end A094538

/-! ## A094538.P3463954192157182632

`Δ[A248122(n)]%(3^n)`
-/

namespace A094538.P3463954192157182632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (3 ^ n : ℤ)

end

end A094538.P3463954192157182632

namespace A094538

/-- `Δ[A248122(n)]%(3^n)` -/
def P3463954192157182632.Spec : Prop :=
  ∀ n, P3463954192157182632.a n = A094538 n

end A094538

/-! ## A094538.P9542868773359892883

`A342240(∑[n+2]-1)`
-/

namespace A094538.P9542868773359892883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342240 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A094538.P9542868773359892883

namespace A094538

/-- `A342240(∑[n+2]-1)` -/
def P9542868773359892883.Spec : Prop :=
  ∀ n, P9542868773359892883.a n = A094538 n

end A094538

/-!
# A094539: a(n) = A094538(n)/3.

The programs for A094539, the canonical program `A094539.P16752972106222037044` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094539 has offset 0).

The definition of A094539 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094538, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094539.P16752972106222037044

`A094538(n)/3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094539

/-- `A094538(n)/3` -/
def P16752972106222037044.Spec : Prop :=
  ∀ n, P16752972106222037044.a n = (A094539 n : ℚ)

end A094539

/-! ## A094539.P817695203385132596

`(3^n-A019308(n))/3`
-/

namespace A094539.P817695203385132596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - A019308 n : ℚ) / 3

end

end A094539.P817695203385132596

namespace A094539

/-- `(3^n-A019308(n))/3` -/
def P817695203385132596.Spec : Prop :=
  ∀ n, P817695203385132596.a n = (A094539 n : ℚ)

end A094539

/-! ## A094539.P12805254666774120111

`A000244(n)%A019308(n)/3`
-/

namespace A094539.P12805254666774120111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000244 n) (A019308 n) : ℚ) / 3

end

end A094539.P12805254666774120111

namespace A094539

/-- `A000244(n)%A019308(n)/3` -/
def P12805254666774120111.Spec : Prop :=
  ∀ n, P12805254666774120111.a n = (A094539 n : ℚ)

end A094539

/-! ## A094539.P6144779375679208534

`A342240(Δ[A074742(n)])/3`
-/

namespace A094539.P6144779375679208534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074742 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342240 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A094539.P6144779375679208534

namespace A094539

/-- `A342240(Δ[A074742(n)])/3` -/
def P6144779375679208534.Spec : Prop :=
  ∀ n, P6144779375679208534.a n = (A094539 n : ℚ)

end A094539

/-! ## A094539.P11484650834750713740

`A342240(A034856(n+1))/3`
-/

namespace A094539.P11484650834750713740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342240 (A034856 (n + 1)).toNat : ℚ) / 3

end

end A094539.P11484650834750713740

namespace A094539

/-- `A342240(A034856(n+1))/3` -/
def P11484650834750713740.Spec : Prop :=
  ∀ n, P11484650834750713740.a n = (A094539 n : ℚ)

end A094539

/-! ## A094539.P17077539594250494746

`A342240(∑[A065475(n+1)])/3`
-/

namespace A094539.P17077539594250494746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342240 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A094539.P17077539594250494746

namespace A094539

/-- `A342240(∑[A065475(n+1)])/3` -/
def P17077539594250494746.Spec : Prop :=
  ∀ n, P17077539594250494746.a n = (A094539 n : ℚ)

end A094539

/-!
# A094540: Last digit of the n-th perfect number.

The programs for A094540, there is no canonical definition to state claims against.
-/

/-! ## A094540.P6401261985073740165

`8-and(2, -∑[∑{e}[n+1, #]+1])`
-/

namespace A094540.P6401261985073740165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - Int.land 2 (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A094540.P6401261985073740165

/-! ## A094540.P17643646749813389738

`and(2, ∑[∑{e}[n+1, #]+1]-1)+6`
-/

namespace A094540.P17643646749813389738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) + 6

end

end A094540.P17643646749813389738

/-! ## A094540.P10951419664380404093

`A104511(n+1)%10`
-/

namespace A094540.P10951419664380404093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104511 (n + 1)) 10

end

end A094540.P10951419664380404093

/-! ## A094540.P17405933288314318329

`A138817(n+1)%10`
-/

namespace A094540.P17405933288314318329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138817 (n + 1)) 10

end

end A094540.P17405933288314318329

/-! ## A094540.P9239196482280953045

`A138819(n+1)%10`
-/

namespace A094540.P9239196482280953045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138819 (n + 1)) 10

end

end A094540.P9239196482280953045

/-!
# A094541: Numerator of Product_{k=0..n} ((2*k+1)/(2*k+2))^((-1)^t(k)) where t(k)=A010060(k) (Thue-Morse sequence).

The programs for A094541, there is no canonical definition to state claims against.
-/

/-! ## A094541.P3920720892996455827

`gcd(A057361(A145614(n+1)), A145636(n+1))`
-/

namespace A094541.P3920720892996455827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057361 (A145614 (n + 1)).toNat) (A145636 (n + 1))

end

end A094541.P3920720892996455827

/-!
# A094542: Denominator of Product_{k=0..n} ((2*k+1)/(2*k+2))^((-1)^t(k)) where t(k)=A010060(k) (Thue-Morse sequence).

The programs for A094542, there is no canonical definition to state claims against.
-/

/-! ## A094542.P4995210990176626792

`A153687(A002583(n))+n`
-/

namespace A094542.P4995210990176626792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153687 (A002583 n).toNat + (n : ℤ)

end

end A094542.P4995210990176626792

/-! ## A094542.P11743149087702587484

`A224416(A002868(n))+n`
-/

namespace A094542.P11743149087702587484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224416 (A002868 n).toNat + (n : ℤ)

end

end A094542.P11743149087702587484

/-!
# A094543: Smallest perfect power of n containing n in binary representation.

The programs for A094543, there is no canonical definition to state claims against.
-/

/-! ## A094543.P8070789423291857771

`n^A086063(n)`
-/

namespace A094543.P8070789423291857771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A086063 n : ℤ)

end

end A094543.P8070789423291857771

/-! ## A094543.P4728325131659887027

`n^A136510(round(acot(n)+n))`
-/

namespace A094543.P4728325131659887027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A136510 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℤ)

end

end A094543.P4728325131659887027

/-! ## A094543.P2815035258114126115

`n^A136510(abs(1-n)+1)`
-/

namespace A094543.P2815035258114126115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A136510 (|1 - (n : ℤ)| + 1).toNat : ℤ)

end

end A094543.P2815035258114126115

/-! ## A094543.P9435488817478432136

`lcm(n, A136511(round(sqrt(n²+1))))`
-/

namespace A094543.P9435488817478432136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A136511 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A094543.P9435488817478432136

/-! ## A094543.P6443789491623582146

`n^(A136510(round(sqrt(n²+1)))-char[1-n²])`
-/

namespace A094543.P6443789491623582146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A136510 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A094543.P6443789491623582146

/-!
# A094544: Triangle of a(n,m) = number of m-member minimal T_0-covers of an n-set (n >= 0, 0<= m <=n).

The programs for A094544, the canonical program `A094544.P13247101255499980839` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094544 has offset 0).

The definition of A094544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094544.P13247101255499980839

`row(n)!/col(n)!*C(2^col(n)-col(n)-1, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094544

/-- `row(n)!/col(n)!*C(2^col(n)-col(n)-1, row(n)-col(n))` -/
def P13247101255499980839.Spec : Prop :=
  ∀ n, P13247101255499980839.a n = (A094544 n : ℚ)

end A094544

/-! ## A094544.P14706928173259717322

`A062756(A008958(n))*A098172(n)`
-/

namespace A094544.P14706928173259717322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A008958 n).toNat * A098172 n

end

end A094544.P14706928173259717322

namespace A094544

/-- `A062756(A008958(n))*A098172(n)` -/
def P14706928173259717322.Spec : Prop :=
  ∀ n, P14706928173259717322.a n = A094544 n

end A094544

/-! ## A094544.P13689539590740581571

`A062756(A008958(n))*A137252(n)`
-/

namespace A094544.P13689539590740581571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A008958 n).toNat * A137252 n

end

end A094544.P13689539590740581571

namespace A094544

/-- `A062756(A008958(n))*A137252(n)` -/
def P13689539590740581571.Spec : Prop :=
  ∀ n, P13689539590740581571.a n = A094544 n

end A094544

/-! ## A094544.P2535602205503509454

`A103298(A008300(n)*A137252(n))`
-/

namespace A094544.P2535602205503509454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A008300 n * A137252 n).toNat

end

end A094544.P2535602205503509454

namespace A094544

/-- `A103298(A008300(n)*A137252(n))` -/
def P2535602205503509454.Spec : Prop :=
  ∀ n, P2535602205503509454.a n = A094544 n

end A094544

/-! ## A094544.P18265397315808523447

`A071417(A059607(n)*A118190(n))`
-/

namespace A094544.P18265397315808523447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071417 (A059607 n * A118190 n).toNat

end

end A094544.P18265397315808523447

namespace A094544

/-- `A071417(A059607(n)*A118190(n))` -/
def P18265397315808523447.Spec : Prop :=
  ∀ n, P18265397315808523447.a n = A094544 n

end A094544

/-!
# A094545: Number of minimal T_0-covers of an n-set.

The programs for A094545, the canonical program `A094545.P2068455800057401795` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094545 has offset 0).

The definition of A094545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094545.P2068455800057401795

`∑{#}[n, n!/#!*C(2^#-#-1, n-#)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094545

/-- `∑{#}[n, n!/#!*C(2^#-#-1, n-#)]` -/
def P2068455800057401795.Spec : Prop :=
  ∀ n, P2068455800057401795.a n = (A094545 n : ℚ)

end A094545

/-! ## A094545.P17313801522971175622

`A296339(C(n, 2)^and(n, -2))`
-/

namespace A094545.P17313801522971175622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296339 (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ))).toNat

end

end A094545.P17313801522971175622

namespace A094545

/-- `A296339(C(n, 2)^and(n, -2))` -/
def P17313801522971175622.Spec : Prop :=
  ∀ n, P17313801522971175622.a n = A094545 n

end A094545

/-!
# A094546: Number of n-member minimal T_0-covers.

The programs for A094546, the canonical program `A094546.P1448824432985249522` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094546 has offset 0).

The definition of A094546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094546.P1448824432985249522

`∑{#}[2^n-1-n, (#+n)!/n!*C(2^n-n-1, #)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094546

/-- `∑{#}[2^n-1-n, (#+n)!/n!*C(2^n-n-1, #)]` -/
def P1448824432985249522.Spec : Prop :=
  ∀ n, P1448824432985249522.a n = (A094546 n : ℚ)

end A094546

/-! ## A094546.P14069734811406519339

`A143409(eq[A003506(n+1), A013609(n)])`
-/

namespace A094546.P14069734811406519339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094546.P14069734811406519339

namespace A094546

/-- `A143409(eq[A003506(n+1), A013609(n)])` -/
def P14069734811406519339.Spec : Prop :=
  ∀ n, P14069734811406519339.a n = A094546 n

end A094546

/-!
# A094547: a(n) = A019309(n)/4 for n >= 1.

The programs for A094547, there is no canonical definition to state claims against.
-/

/-! ## A094547.P1149417024489719551

`A019309(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094547.P1149417024489719551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019309 (n + 1) : ℚ) / 4

end

end A094547.P1149417024489719551

/-! ## A094547.P17539914943391422239

`Δ[∑[A019309(n)]/4]`
-/

namespace A094547.P17539914943391422239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019309 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094547.P17539914943391422239

/-! ## A094547.P2808911689680846753

`Δ[A252697(n+1)/8]`
-/

namespace A094547.P2808911689680846753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252697 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094547.P2808911689680846753

/-! ## A094547.P12241976976447379127

`4^n-A094578(n+1)`
-/

namespace A094547.P12241976976447379127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A094578 (n + 1)

end

end A094547.P12241976976447379127

/-! ## A094547.P12685066518403791807

`A019309(n)+A094559(n)-A094578(n+1)`
-/

namespace A094547.P12685066518403791807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019309 n + (A094559 n - A094578 (n + 1))

end

end A094547.P12685066518403791807

/-!
# A094550: Numbers n such that there are integers a < b with a+(a+1)+...+(n-1) = (n+1)+(n+2)+...+b.

The programs for A094550, the canonical program `A094550.P16660763178364063015` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094550 has offset 1).

The definition of A094550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094550.P16660763178364063015

`sqrt(A229134(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A094550

/-- `sqrt(A229134(n+1))` -/
def P16660763178364063015.Spec : Prop :=
  ∀ n, P16660763178364063015.a n = (A094550 (n + 1) : ℝ)

end A094550

/-! ## A094550.P15373014285488470220

`comp[floor(A005574(n+1)/2)]`
-/

namespace A094550.P15373014285488470220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005574 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A094550.P15373014285488470220

namespace A094550

/-- `comp[floor(A005574(n+1)/2)]` -/
def P15373014285488470220.Spec : Prop :=
  ∀ n, (P15373014285488470220.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P2067233983909586806

`comp[ceil(A089593(n+1)/2)]`
-/

namespace A094550.P2067233983909586806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089593 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A094550.P2067233983909586806

namespace A094550

/-- `comp[ceil(A089593(n+1)/2)]` -/
def P2067233983909586806.Spec : Prop :=
  ∀ n, (P2067233983909586806.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P3929947684790107837

`comp[A001912(n+1)-1]+1`
-/

namespace A094550.P3929947684790107837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094550.P3929947684790107837

namespace A094550

/-- `comp[A001912(n+1)-1]+1` -/
def P3929947684790107837.Spec : Prop :=
  ∀ n, (P3929947684790107837.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P6320110902714485048

`comp[∑[ceil(A214516(n+1)/2)]-1]+1`
-/

namespace A094550.P6320110902714485048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A214516 (n + 1) : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094550.P6320110902714485048

namespace A094550

/-- `comp[∑[ceil(A214516(n+1)/2)]-1]+1` -/
def P6320110902714485048.Spec : Prop :=
  ∀ n, (P6320110902714485048.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P9309497224890668641

`comp[A102283(3*n+2)+A001912(n+1)]+1`
-/

namespace A094550.P9309497224890668641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n + 2) + A001912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094550.P9309497224890668641

namespace A094550

/-- `comp[A102283(3*n+2)+A001912(n+1)]+1` -/
def P9309497224890668641.Spec : Prop :=
  ∀ n, (P9309497224890668641.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P16825257905070422651

`lt[A256970(n+1), n²]+1`
-/

namespace A094550.P16825257905070422651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A094550.P16825257905070422651

namespace A094550

/-- `lt[A256970(n+1), n²]+1` -/
def P16825257905070422651.Spec : Prop :=
  ∀ n, (P16825257905070422651.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P16564579847394866570

`lt[1, A193330(2*n)]`
-/

namespace A094550.P16564579847394866570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094550.P16564579847394866570

namespace A094550

/-- `lt[1, A193330(2*n)]` -/
def P16564579847394866570.Spec : Prop :=
  ∀ n, (P16564579847394866570.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P1448769912868157172

`lt[2, A053000(2*n)]`
-/

namespace A094550.P1448769912868157172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094550.P1448769912868157172

namespace A094550

/-- `lt[2, A053000(2*n)]` -/
def P1448769912868157172.Spec : Prop :=
  ∀ n, (P1448769912868157172.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P16311578556070985117

`lt[2, A193432(2*n)]`
-/

namespace A094550.P16311578556070985117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094550.P16311578556070985117

namespace A094550

/-- `lt[2, A193432(2*n)]` -/
def P16311578556070985117.Spec : Prop :=
  ∀ n, (P16311578556070985117.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P1979048869953671295

`lt[2, A278162(2*n)]`
-/

namespace A094550.P1979048869953671295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094550.P1979048869953671295

namespace A094550

/-- `lt[2, A278162(2*n)]` -/
def P1979048869953671295.Spec : Prop :=
  ∀ n, (P1979048869953671295.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P17334193623665570428

`lt[A259036(2*n), n²]`
-/

namespace A094550.P17334193623665570428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094550.P17334193623665570428

namespace A094550

/-- `lt[A259036(2*n), n²]` -/
def P17334193623665570428.Spec : Prop :=
  ∀ n, (P17334193623665570428.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P8763335359244874695

`lt[n, n*A284376(2*n)]`
-/

namespace A094550.P8763335359244874695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284376 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094550.P8763335359244874695

namespace A094550

/-- `lt[n, n*A284376(2*n)]` -/
def P8763335359244874695.Spec : Prop :=
  ∀ n, (P8763335359244874695.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P16936444164288364004

`lt[1, A060272(2*(n+1))]+1`
-/

namespace A094550.P16936444164288364004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094550.P16936444164288364004

namespace A094550

/-- `lt[1, A060272(2*(n+1))]+1` -/
def P16936444164288364004.Spec : Prop :=
  ∀ n, (P16936444164288364004.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P6085824980997265368

`lt[A247339(2*(n+1)), n]+1`
-/

namespace A094550.P6085824980997265368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A094550.P6085824980997265368

namespace A094550

/-- `lt[A247339(2*(n+1)), n]+1` -/
def P6085824980997265368.Spec : Prop :=
  ∀ n, (P6085824980997265368.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P2511920356620783322

`lt[A247339(A004277(n)), n]`
-/

namespace A094550.P2511920356620783322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094550.P2511920356620783322

namespace A094550

/-- `lt[A247339(A004277(n)), n]` -/
def P2511920356620783322.Spec : Prop :=
  ∀ n, (P2511920356620783322.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P7295726189857716924

`eq[2, A257260(A278162(2*n)+1)]`
-/

namespace A094550.P7295726189857716924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257260 (A278162 (2 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094550.P7295726189857716924

namespace A094550

/-- `eq[2, A257260(A278162(2*n)+1)]` -/
def P7295726189857716924.Spec : Prop :=
  ∀ n, (P7295726189857716924.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P12316135073775901321

`lt[A089120(A004277(n)), A002522(n)]`
-/

namespace A094550.P12316135073775901321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094550.P12316135073775901321

namespace A094550

/-- `lt[A089120(A004277(n)), A002522(n)]` -/
def P12316135073775901321.Spec : Prop :=
  ∀ n, (P12316135073775901321.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P15230517210489888294

`eq[2, A020639(A013632(A053000(n+n)))]`
-/

namespace A094550.P15230517210489888294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013632 (A053000 (n + n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094550.P15230517210489888294

namespace A094550

/-- `eq[2, A020639(A013632(A053000(n+n)))]` -/
def P15230517210489888294.Spec : Prop :=
  ∀ n, (P15230517210489888294.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P16899977001288206340

`lt[A089120(A004277(n)), A005574(n+1)]`
-/

namespace A094550.P16899977001288206340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094550.P16899977001288206340

namespace A094550

/-- `lt[A089120(A004277(n)), A005574(n+1)]` -/
def P16899977001288206340.Spec : Prop :=
  ∀ n, (P16899977001288206340.a n : ℤ) = A094550 (n + 1)

end A094550

/-! ## A094550.P11092695368232994472

`lt[1, ∑{e}[(2*n)²+1, #]]`
-/

namespace A094550.P11092695368232994472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094550.P11092695368232994472

namespace A094550

/-- `lt[1, ∑{e}[(2*n)²+1, #]]` -/
def P11092695368232994472.Spec : Prop :=
  ∀ n, (P11092695368232994472.a n : ℤ) = A094550 (n + 1)

end A094550

/-!
# A094551: Numbers k such that there are integers a < b with a+(a+1)+...+(k-1) = k+(k+1)+...+b.

The programs for A094551, the canonical program `A094551.P6308246149469362134` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094551 has offset 1).

The definition of A094551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094551.P17499284734539252192

`ceil(A309812(n+1)/2)`
-/

namespace A094551.P17499284734539252192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A309812 (n + 1) : ℚ) / 2⌉

end

end A094551.P17499284734539252192

namespace A094551

/-- `ceil(A309812(n+1)/2)` -/
def P17499284734539252192.Spec : Prop :=
  ∀ n, P17499284734539252192.a n = A094551 (n + 1)

end A094551

/-! ## A094551.P6308246149469362134

`lt[2, A046110(n)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A094551

/-- `lt[2, A046110(n)]+1` -/
def P6308246149469362134.Spec : Prop :=
  ∀ n, (P6308246149469362134.a n : ℤ) = A094551 (n + 1)

theorem P6308246149469362134.correct : P6308246149469362134.Spec := by
  intro n
  simp only [A094551, Nat.add_sub_cancel]

end A094551

/-! ## A094551.P12917890389812073741

`lt[2, A046110(abs(1-n))]`
-/

namespace A094551.P12917890389812073741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094551.P12917890389812073741

namespace A094551

/-- `lt[2, A046110(abs(1-n))]` -/
def P12917890389812073741.Spec : Prop :=
  ∀ n, (P12917890389812073741.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P10402920365057590288

`lt[0, A046080(2*n+1)]+1`
-/

namespace A094551.P10402920365057590288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094551.P10402920365057590288

namespace A094551

/-- `lt[0, A046080(2*n+1)]+1` -/
def P10402920365057590288.Spec : Prop :=
  ∀ n, (P10402920365057590288.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P9759579184553714182

`lt[1, A256452(abs(1-2*n))]`
-/

namespace A094551.P9759579184553714182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094551.P9759579184553714182

namespace A094551

/-- `lt[1, A256452(abs(1-2*n))]` -/
def P9759579184553714182.Spec : Prop :=
  ∀ n, (P9759579184553714182.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P8749000081839631451

`eq[0, A275966(2*n+1)]+1`
-/

namespace A094551.P8749000081839631451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275966 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094551.P8749000081839631451

namespace A094551

/-- `eq[0, A275966(2*n+1)]+1` -/
def P8749000081839631451.Spec : Prop :=
  ∀ n, (P8749000081839631451.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P17395751631466728839

`eq[0, A284059(2*n+1)]+1`
-/

namespace A094551.P17395751631466728839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284059 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094551.P17395751631466728839

namespace A094551

/-- `eq[0, A284059(2*n+1)]+1` -/
def P17395751631466728839.Spec : Prop :=
  ∀ n, (P17395751631466728839.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P4178892881877541600

`lt[1, A005080(2*n+1)]+1`
-/

namespace A094551.P4178892881877541600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094551.P4178892881877541600

namespace A094551

/-- `lt[1, A005080(2*n+1)]+1` -/
def P4178892881877541600.Spec : Prop :=
  ∀ n, (P4178892881877541600.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P2096675887057353149

`A000463(A309812(n+1))`
-/

namespace A094551.P2096675887057353149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A309812 (n + 1)).toNat

end

end A094551.P2096675887057353149

namespace A094551

/-- `A000463(A309812(n+1))` -/
def P2096675887057353149.Spec : Prop :=
  ∀ n, P2096675887057353149.a n = A094551 (n + 1)

end A094551

/-! ## A094551.P12242514476518489441

`lt[1, A078911(abs(1-2*n))]`
-/

namespace A094551.P12242514476518489441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094551.P12242514476518489441

namespace A094551

/-- `lt[1, A078911(abs(1-2*n))]` -/
def P12242514476518489441.Spec : Prop :=
  ∀ n, (P12242514476518489441.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P14426169551121397096

`lt[0, A078911(2*n+1)]+1`
-/

namespace A094551.P14426169551121397096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078911 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094551.P14426169551121397096

namespace A094551

/-- `lt[0, A078911(2*n+1)]+1` -/
def P14426169551121397096.Spec : Prop :=
  ∀ n, (P14426169551121397096.a n : ℤ) = A094551 (n + 1)

end A094551

/-! ## A094551.P3296666095508675687

`A382339(A083510(n+1))`
-/

namespace A094551.P3296666095508675687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382339 (A083510 (n + 1)).toNat

end

end A094551.P3296666095508675687

namespace A094551

/-- `A382339(A083510(n+1))` -/
def P3296666095508675687.Spec : Prop :=
  ∀ n, P3296666095508675687.a n = A094551 (n + 1)

end A094551

/-!
# A094553: Numbers n such that there are integers a < b with a^2+(a+1)^2+...+(n-1)^2 = n^2+(n+1)^2+...+b^2.

The programs for A094553, there is no canonical definition to state claims against.
-/

/-! ## A094553.P3384094403199082245

`∪[A094523(n+1), A099776(n+1)]`
-/

namespace A094553.P3384094403199082245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094553.P3384094403199082245

/-!
# A094554: Number of closed walks of length n at a base vertex of a truncated tetrahedron (triangular prism).

The programs for A094554, the canonical program `A094554.P7525047639029798190` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094554 has offset 0).

The definition of A094554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094554.P16932003520522344439

`ogf((1-2x-2x^2+2x^3)/(1-2x-5x^2+6x^3))`
-/

namespace A094554.P16932003520522344439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, 2] [1, -2, -5, 6] n

end

end A094554.P16932003520522344439

namespace A094554

/-- `ogf((1-2x-2x^2+2x^3)/(1-2x-5x^2+6x^3))` -/
def P16932003520522344439.Spec : Prop :=
  ∀ n, P16932003520522344439.a n = A094554 n

end A094554

/-! ## A094554.P7525047639029798190

`2*a(n-1)+5*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094554

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)` -/
def P7525047639029798190.Spec : Prop :=
  ∀ n, P7525047639029798190.a n = A094554 n

theorem P7525047639029798190.correct : P7525047639029798190.Spec := by
  intro n
  simp only [A094554]

end A094554

/-! ## A094554.P15765746246947400608

`∑[ogf((-1+2x+2x^2-2x^3)/(-1+x+6x^2))]`
-/

namespace A094554.P15765746246947400608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -2, 2] [1, -1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094554.P15765746246947400608

namespace A094554

/-- `∑[ogf((-1+2x+2x^2-2x^3)/(-1+x+6x^2))]` -/
def P15765746246947400608.Spec : Prop :=
  ∀ n, P15765746246947400608.a n = A094554 n

end A094554

/-! ## A094554.P17895580869845171869

`6*a(n-2)+a(n-1)-1` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A094554.P17895580869845171869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  6 * a (n - 2) + (a (n - 1) - 1)

end

end A094554.P17895580869845171869

namespace A094554

/-- `6*a(n-2)+a(n-1)-1` -/
def P17895580869845171869.Spec : Prop :=
  ∀ n, P17895580869845171869.a n = A094554 n

end A094554

/-! ## A094554.P8586968142754726036

`6*a(n-2)-(1-a(n-1))` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A094554.P8586968142754726036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  6 * a (n - 2) - (1 - a (n - 1))

end

end A094554.P8586968142754726036

namespace A094554

/-- `6*a(n-2)-(1-a(n-1))` -/
def P8586968142754726036.Spec : Prop :=
  ∀ n, P8586968142754726036.a n = A094554 n

end A094554

/-! ## A094554.P3436058521290641382

`A094556(n)+A077925(n)`
-/

namespace A094554.P3436058521290641382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + A077925 n

end

end A094554.P3436058521290641382

namespace A094554

/-- `A094556(n)+A077925(n)` -/
def P3436058521290641382.Spec : Prop :=
  ∀ n, P3436058521290641382.a n = A094554 n

end A094554

/-! ## A094554.P12498544278896444467

`abs(A094555(n)-A123344(n))`
-/

namespace A094554.P12498544278896444467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094555 n - A123344 n|

end

end A094554.P12498544278896444467

namespace A094554

/-- `abs(A094555(n)-A123344(n))` -/
def P12498544278896444467.Spec : Prop :=
  ∀ n, P12498544278896444467.a n = A094554 n

end A094554

/-! ## A094554.P5052558109189167338

`A094556(n)+∑[A122803(n)]`
-/

namespace A094554.P5052558109189167338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094554.P5052558109189167338

namespace A094554

/-- `A094556(n)+∑[A122803(n)]` -/
def P5052558109189167338.Spec : Prop :=
  ∀ n, P5052558109189167338.a n = A094554 n

end A094554

/-! ## A094554.P17821311539995870001

`A124302(n)+1-A084247(n)`
-/

namespace A094554.P17821311539995870001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + (1 - A084247 n)

end

end A094554.P17821311539995870001

namespace A094554

/-- `A124302(n)+1-A084247(n)` -/
def P17821311539995870001.Spec : Prop :=
  ∀ n, P17821311539995870001.a n = A094554 n

end A094554

/-! ## A094554.P16496252068794330998

`A124302(n)+A151575(n)-1`
-/

namespace A094554.P16496252068794330998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + (A151575 n - 1)

end

end A094554.P16496252068794330998

namespace A094554

/-- `A124302(n)+A151575(n)-1` -/
def P16496252068794330998.Spec : Prop :=
  ∀ n, P16496252068794330998.a n = A094554 n

end A094554

/-! ## A094554.P17902953267884807886

`A094556(n)+A077953(2*n)`
-/

namespace A094554.P17902953267884807886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + A077953 (2 * n)

end

end A094554.P17902953267884807886

namespace A094554

/-- `A094556(n)+A077953(2*n)` -/
def P17902953267884807886.Spec : Prop :=
  ∀ n, P17902953267884807886.a n = A094554 n

end A094554

/-! ## A094554.P18282782782574182371

`A124302(n)-(Δ[A140962(n)]+1)`
-/

namespace A094554.P18282782782574182371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - (f1 (n + 1) - f1 n + 1)

end

end A094554.P18282782782574182371

namespace A094554

/-- `A124302(n)-(Δ[A140962(n)]+1)` -/
def P18282782782574182371.Spec : Prop :=
  ∀ n, P18282782782574182371.a n = A094554 n

end A094554

/-! ## A094554.P17603208922452166790

`A078052(A005843(n))+A124302(n)-1`
-/

namespace A094554.P17603208922452166790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 (A005843 n).toNat + (A124302 n - 1)

end

end A094554.P17603208922452166790

namespace A094554

/-- `A078052(A005843(n))+A124302(n)-1` -/
def P17603208922452166790.Spec : Prop :=
  ∀ n, P17603208922452166790.a n = A094554 n

end A094554

/-! ## A094554.P12187896046067031548

`A091002(n)+A124302(n)-A091001(n)`
-/

namespace A094554.P12187896046067031548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n + (A124302 n - A091001 n)

end

end A094554.P12187896046067031548

namespace A094554

/-- `A091002(n)+A124302(n)-A091001(n)` -/
def P12187896046067031548.Spec : Prop :=
  ∀ n, P12187896046067031548.a n = A094554 n

end A094554

/-! ## A094554.P17175113316189119116

`A007051(n)-A140431(n)`
-/

namespace A094554.P17175113316189119116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A140431 n

end

end A094554.P17175113316189119116

namespace A094554

/-- `A007051(n)-A140431(n)` -/
def P17175113316189119116.Spec : Prop :=
  ∀ n, P17175113316189119116.a n = A094554 n

end A094554

/-! ## A094554.P12576406932018011764

`A133494(n)-A094556(n)`
-/

namespace A094554.P12576406932018011764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n - A094556 n

end

end A094554.P12576406932018011764

namespace A094554

/-- `A133494(n)-A094556(n)` -/
def P12576406932018011764.Spec : Prop :=
  ∀ n, P12576406932018011764.a n = A094554 n

end A094554

/-! ## A094554.P2015420478261835331

`A094555(n+1)-A140429(n)`
-/

namespace A094554.P2015420478261835331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) - A140429 n

end

end A094554.P2015420478261835331

namespace A094554

/-- `A094555(n+1)-A140429(n)` -/
def P2015420478261835331.Spec : Prop :=
  ∀ n, P2015420478261835331.a n = A094554 n

end A094554

/-! ## A094554.P7386495050831624010

`A017913(A004275(n))-A094556(n)`
-/

namespace A094554.P7386495050831624010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (A004275 n).toNat - A094556 n

end

end A094554.P7386495050831624010

namespace A094554

/-- `A017913(A004275(n))-A094556(n)` -/
def P7386495050831624010.Spec : Prop :=
  ∀ n, P7386495050831624010.a n = A094554 n

end A094554

/-! ## A094554.P5309930025728678124

`A074324(A004273(n))-A094556(n)`
-/

namespace A094554.P5309930025728678124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (A004273 n).toNat - A094556 n

end

end A094554.P5309930025728678124

namespace A094554

/-- `A074324(A004273(n))-A094556(n)` -/
def P5309930025728678124.Spec : Prop :=
  ∀ n, P5309930025728678124.a n = A094554 n

end A094554

/-! ## A094554.P1318374459637784181

`A094555(n+1)+A094556(n)-A344747(n+1)`
-/

namespace A094554.P1318374459637784181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) + (A094556 n - A344747 (n + 1))

end

end A094554.P1318374459637784181

namespace A094554

/-- `A094555(n+1)+A094556(n)-A344747(n+1)` -/
def P1318374459637784181.Spec : Prop :=
  ∀ n, P1318374459637784181.a n = A094554 n

end A094554

/-!
# A094555: Number of walks of length n between two vertices on the same triangular face of a truncated tetrahedron (triangular prism).

The programs for A094555, the canonical program `A094555.P5545193610771669695` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094555 has offset 0).

The definition of A094555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094555.P124804591694194901

`ogf((x-x^2-x^3)/(1-2x-5x^2+6x^3))`
-/

namespace A094555.P124804591694194901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -2, -5, 6] n

end

end A094555.P124804591694194901

namespace A094555

/-- `ogf((x-x^2-x^3)/(1-2x-5x^2+6x^3))` -/
def P124804591694194901.Spec : Prop :=
  ∀ n, P124804591694194901.a n = A094555 n

end A094555

/-! ## A094555.P5545193610771669695

`2*a(n-1)+5*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094555

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)` -/
def P5545193610771669695.Spec : Prop :=
  ∀ n, P5545193610771669695.a n = A094555 n

theorem P5545193610771669695.correct : P5545193610771669695.Spec := by
  intro n
  simp only [A094555]

end A094555

/-! ## A094555.P12329500728321974615

`∑[ogf((-x+x^2+x^3)/(-1+x+6x^2))]`
-/

namespace A094555.P12329500728321974615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, -1] [1, -1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094555.P12329500728321974615

namespace A094555

/-- `∑[ogf((-x+x^2+x^3)/(-1+x+6x^2))]` -/
def P12329500728321974615.Spec : Prop :=
  ∀ n, P12329500728321974615.a n = A094555 n

end A094555

/-! ## A094555.P11897586421515522935

`6*a(n-2)+a(n-1)-1` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A094555.P11897586421515522935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  6 * a (n - 2) + (a (n - 1) - 1)

end

end A094555.P11897586421515522935

namespace A094555

/-- `6*a(n-2)+a(n-1)-1` -/
def P11897586421515522935.Spec : Prop :=
  ∀ n, P11897586421515522935.a n = A094555 n

end A094555

/-! ## A094555.P17676007681879679714

`6*a(n-2)-(1-a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A094555.P17676007681879679714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  6 * a (n - 2) - (1 - a (n - 1))

end

end A094555.P17676007681879679714

namespace A094555

/-- `6*a(n-2)-(1-a(n-1))` -/
def P17676007681879679714.Spec : Prop :=
  ∀ n, P17676007681879679714.a n = A094555 n

end A094555

/-! ## A094555.P8130409866066861359

`A091001(n)+abs(A091005(n))`
-/

namespace A094555.P8130409866066861359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 n + |A091005 n|

end

end A094555.P8130409866066861359

namespace A094555

/-- `A091001(n)+abs(A091005(n))` -/
def P8130409866066861359.Spec : Prop :=
  ∀ n, P8130409866066861359.a n = A094555 n

end A094555

/-! ## A094555.P3116565220558162689

`A015441(n)-floor(A015441(n)/6)`
-/

namespace A094555.P3116565220558162689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n - ⌊(A015441 n : ℚ) / 6⌋

end

end A094555.P3116565220558162689

namespace A094555

/-- `A015441(n)-floor(A015441(n)/6)` -/
def P3116565220558162689.Spec : Prop :=
  ∀ n, P3116565220558162689.a n = A094555 n

end A094555

/-! ## A094555.P3181808169058515363

`A001045(log2(A056450(n)))+A000392(n)`
-/

namespace A094555.P3181808169058515363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.roundAway (Real.logb 2 (A056450 n : ℝ))).toNat + A000392 n

end

end A094555.P3181808169058515363

namespace A094555

/-- `A001045(log2(A056450(n)))+A000392(n)` -/
def P3181808169058515363.Spec : Prop :=
  ∀ n, P3181808169058515363.a n = A094555 n

end A094555

/-! ## A094555.P6417885022899424467

`A140431(n)/2`
-/

namespace A094555.P6417885022899424467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140431 n : ℚ) / 2

end

end A094555.P6417885022899424467

namespace A094555

/-- `A140431(n)/2` -/
def P6417885022899424467.Spec : Prop :=
  ∀ n, P6417885022899424467.a n = (A094555 n : ℚ)

theorem P6417885022899424467.correct : P6417885022899424467.Spec := by
  intro n
  simp only [A094555, Nat.add_sub_cancel, A094555.P6417885022899424467.a, A094555.P5545193610771669695.a, A140431, A140431.P4392069254811655813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094555

/-! ## A094555.P898546454398787086

`abs(A091004(n))-A091002(n)`
-/

namespace A094555.P898546454398787086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091004 n| - A091002 n

end

end A094555.P898546454398787086

namespace A094555

/-- `abs(A091004(n))-A091002(n)` -/
def P898546454398787086.Spec : Prop :=
  ∀ n, P898546454398787086.a n = A094555 n

end A094555

/-! ## A094555.P3008798231813732915

`(A007051(n)-A094554(n))/2`
-/

namespace A094555.P3008798231813732915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007051 n - A094554 n : ℚ) / 2

end

end A094555.P3008798231813732915

namespace A094555

/-- `(A007051(n)-A094554(n))/2` -/
def P3008798231813732915.Spec : Prop :=
  ∀ n, P3008798231813732915.a n = (A094555 n : ℚ)

end A094555

/-! ## A094555.P6082224469678751928

`(A085279(n)-A052992(n))/2`
-/

namespace A094555.P6082224469678751928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085279 n - A052992 n : ℚ) / 2

end

end A094555.P6082224469678751928

namespace A094555

/-- `(A085279(n)-A052992(n))/2` -/
def P6082224469678751928.Spec : Prop :=
  ∀ n, P6082224469678751928.a n = (A094555 n : ℚ)

end A094555

/-! ## A094555.P61499249772572686

`(A094388(n)-A151575(n))/2`
-/

namespace A094555.P61499249772572686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094388 n - A151575 n : ℚ) / 2

end

end A094555.P61499249772572686

namespace A094555

/-- `(A094388(n)-A151575(n))/2` -/
def P61499249772572686.Spec : Prop :=
  ∀ n, P61499249772572686.a n = (A094555 n : ℚ)

end A094555

/-! ## A094555.P13243725389718172018

`(A087433(n)-A054881(n))/2`
-/

namespace A094555.P13243725389718172018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 n - A054881 n : ℚ) / 2

end

end A094555.P13243725389718172018

namespace A094555

/-- `(A087433(n)-A054881(n))/2` -/
def P13243725389718172018.Spec : Prop :=
  ∀ n, P13243725389718172018.a n = (A094555 n : ℚ)

end A094555

/-! ## A094555.P5200153459873369517

`A000392(n)+∑[A006516(n)%A003945(n)]`
-/

namespace A094555.P5200153459873369517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006516 n) (A003945 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094555.P5200153459873369517

namespace A094555

/-- `A000392(n)+∑[A006516(n)%A003945(n)]` -/
def P5200153459873369517.Spec : Prop :=
  ∀ n, P5200153459873369517.a n = A094555 n

end A094555

/-!
# A094556: Number of walks of length n between opposite vertices on a triangular prism.

The programs for A094556, the canonical program `A094556.P13218273102776200029` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094556 has offset 0).

The definition of A094556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094556.P11757702434081842200

`ogf((x-2x^2+2x^3)/(1-2x-5x^2+6x^3))`
-/

namespace A094556.P11757702434081842200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -2, -5, 6] n

end

end A094556.P11757702434081842200

namespace A094556

/-- `ogf((x-2x^2+2x^3)/(1-2x-5x^2+6x^3))` -/
def P11757702434081842200.Spec : Prop :=
  ∀ n, P11757702434081842200.a n = A094556 n

end A094556

/-! ## A094556.P13218273102776200029

`2*a(n-1)+5*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094556

/-- `2*a(n-1)+5*a(n-2)-6*a(n-3)` -/
def P13218273102776200029.Spec : Prop :=
  ∀ n, P13218273102776200029.a n = A094556 n

theorem P13218273102776200029.correct : P13218273102776200029.Spec := by
  intro n
  simp only [A094556]

end A094556

/-! ## A094556.P16157109340841874669

`6*a(n-2)+a(n-1)+1` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A094556.P16157109340841874669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  6 * a (n - 2) + (a (n - 1) + 1)

end

end A094556.P16157109340841874669

namespace A094556

/-- `6*a(n-2)+a(n-1)+1` -/
def P16157109340841874669.Spec : Prop :=
  ∀ n, (P16157109340841874669.a n : ℤ) = A094556 n

end A094556

/-! ## A094556.P8784407157897737699

`A094554(n)-A077925(n)`
-/

namespace A094556.P8784407157897737699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 n - A077925 n

end

end A094556.P8784407157897737699

namespace A094556

/-- `A094554(n)-A077925(n)` -/
def P8784407157897737699.Spec : Prop :=
  ∀ n, P8784407157897737699.a n = A094556 n

end A094556

/-! ## A094556.P15171010378454385276

`A124302(n)-A151575(n)`
-/

namespace A094556.P15171010378454385276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A151575 n

end

end A094556.P15171010378454385276

namespace A094556

/-- `A124302(n)-A151575(n)` -/
def P15171010378454385276.Spec : Prop :=
  ∀ n, P15171010378454385276.a n = A094556 n

end A094556

/-! ## A094556.P4996063561654634073

`A094554(n)-∑[A122803(n)]`
-/

namespace A094556.P4996063561654634073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094556.P4996063561654634073

namespace A094556

/-- `A094554(n)-∑[A122803(n)]` -/
def P4996063561654634073.Spec : Prop :=
  ∀ n, P4996063561654634073.a n = A094556 n

end A094556

/-! ## A094556.P1145244758201164242

`A124302(n)+Δ[A140962(n)]`
-/

namespace A094556.P1145244758201164242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + (f1 (n + 1) - f1 n)

end

end A094556.P1145244758201164242

namespace A094556

/-- `A124302(n)+Δ[A140962(n)]` -/
def P1145244758201164242.Spec : Prop :=
  ∀ n, P1145244758201164242.a n = A094556 n

end A094556

/-! ## A094556.P3013122073951039813

`A084247(n)+A124302(n)-2`
-/

namespace A094556.P3013122073951039813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n + (A124302 n - 2)

end

end A094556.P3013122073951039813

namespace A094556

/-- `A084247(n)+A124302(n)-2` -/
def P3013122073951039813.Spec : Prop :=
  ∀ n, P3013122073951039813.a n = A094556 n

end A094556

/-! ## A094556.P2202364043298182273

`A094554(n)-A077953(2*n)`
-/

namespace A094556.P2202364043298182273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 n - A077953 (2 * n)

end

end A094556.P2202364043298182273

namespace A094556

/-- `A094554(n)-A077953(2*n)` -/
def P2202364043298182273.Spec : Prop :=
  ∀ n, P2202364043298182273.a n = A094556 n

end A094556

/-! ## A094556.P11841474639346242456

`A124302(n)-A078052(2*n)`
-/

namespace A094556.P11841474639346242456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A078052 (2 * n)

end

end A094556.P11841474639346242456

namespace A094556

/-- `A124302(n)-A078052(2*n)` -/
def P11841474639346242456.Spec : Prop :=
  ∀ n, P11841474639346242456.a n = A094556 n

end A094556

/-! ## A094556.P17926978637848249054

`A133494(n)-A094554(n)`
-/

namespace A094556.P17926978637848249054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n - A094554 n

end

end A094556.P17926978637848249054

namespace A094556

/-- `A133494(n)-A094554(n)` -/
def P17926978637848249054.Spec : Prop :=
  ∀ n, P17926978637848249054.a n = A094556 n

end A094556

/-! ## A094556.P15036655391497299810

`A094554(n+1)-A140431(n)`
-/

namespace A094556.P15036655391497299810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 (n + 1) - A140431 n

end

end A094556.P15036655391497299810

namespace A094556

/-- `A094554(n+1)-A140431(n)` -/
def P15036655391497299810.Spec : Prop :=
  ∀ n, P15036655391497299810.a n = A094556 n

end A094556

/-! ## A094556.P10453395806601717769

`A344747(n+1)-A140429(n)`
-/

namespace A094556.P10453395806601717769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) - A140429 n

end

end A094556.P10453395806601717769

namespace A094556

/-- `A344747(n+1)-A140429(n)` -/
def P10453395806601717769.Spec : Prop :=
  ∀ n, P10453395806601717769.a n = A094556 n

end A094556

/-! ## A094556.P15304272552575110707

`A094554(n+1)-2*A094555(n)`
-/

namespace A094556.P15304272552575110707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094554 (n + 1) - 2 * A094555 n

end

end A094556.P15304272552575110707

namespace A094556

/-- `A094554(n+1)-2*A094555(n)` -/
def P15304272552575110707.Spec : Prop :=
  ∀ n, P15304272552575110707.a n = A094556 n

end A094556

/-! ## A094556.P17742138171914987849

`A133494(n)+A140429(n)-A094555(n+1)`
-/

namespace A094556.P17742138171914987849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + (A140429 n - A094555 (n + 1))

end

end A094556.P17742138171914987849

namespace A094556

/-- `A133494(n)+A140429(n)-A094555(n+1)` -/
def P17742138171914987849.Spec : Prop :=
  ∀ n, P17742138171914987849.a n = A094556 n

end A094556

/-! ## A094556.P2749720448376959925

`A025192(n)-A094555(n+1)`
-/

namespace A094556.P2749720448376959925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - A094555 (n + 1)

end

end A094556.P2749720448376959925

namespace A094556

/-- `A025192(n)-A094555(n+1)` -/
def P2749720448376959925.Spec : Prop :=
  ∀ n, P2749720448376959925.a n = A094556 n

end A094556

/-! ## A094556.P16780241843327103768

`A000244(n)-(A140429(n)+A094555(n+1))`
-/

namespace A094556.P16780241843327103768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A140429 n + A094555 (n + 1))

end

end A094556.P16780241843327103768

namespace A094556

/-- `A000244(n)-(A140429(n)+A094555(n+1))` -/
def P16780241843327103768.Spec : Prop :=
  ∀ n, P16780241843327103768.a n = A094556 n

end A094556

/-! ## A094556.P3449423532172252038

`A140429(n+1)-(A140429(n)+A094555(n+1))`
-/

namespace A094556.P3449423532172252038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (n + 1) - (A140429 n + A094555 (n + 1))

end

end A094556.P3449423532172252038

namespace A094556

/-- `A140429(n+1)-(A140429(n)+A094555(n+1))` -/
def P3449423532172252038.Spec : Prop :=
  ∀ n, P3449423532172252038.a n = A094556 n

end A094556

/-! ## A094556.P3566432398524245495

`A344747(n+1)+A094554(n)-A094555(n+1)`
-/

namespace A094556.P3566432398524245495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 1) + A094554 n - A094555 (n + 1)

end

end A094556.P3566432398524245495

namespace A094556

/-- `A344747(n+1)+A094554(n)-A094555(n+1)` -/
def P3566432398524245495.Spec : Prop :=
  ∀ n, P3566432398524245495.a n = A094556 n

end A094556

/-!
# A094558: G.f. satisfies A(x) = F(x*A(x)), where F(x) is the g.f. of A094557.

The programs for A094558, there is no canonical definition to state claims against.
-/

/-! ## A094558.P18374511823696143716

`A094557(2*n)/(n+1)`
-/

namespace A094558.P18374511823696143716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094557 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A094558.P18374511823696143716

/-! ## A094558.P15820218887669673905

`floor(A094557(2*n)/A000005(2^n))`
-/

namespace A094558.P15820218887669673905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094557 (2 * n) : ℚ) / (A000005 (2 ^ n) : ℚ)⌋

end

end A094558.P15820218887669673905

/-! ## A094558.P18322964634094920162

`A070939(A262046(n))+A058681(n)`
-/

namespace A094558.P18322964634094920162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A262046 n).toNat + A058681 n

end

end A094558.P18322964634094920162

/-!
# A094559: Number of words of length n over an alphabet of size 4 that are not "bifix-free".

The programs for A094559, there is no canonical definition to state claims against.
-/

/-! ## A094559.P3205264731129455547

`4^n-A019309(n)`
-/

namespace A094559.P3205264731129455547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A019309 n

end

end A094559.P3205264731129455547

/-! ## A094559.P14690832120668632435

`A000302(n)%A019309(n)`
-/

namespace A094559.P14690832120668632435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000302 n) (A019309 n)

end

end A094559.P14690832120668632435

/-! ## A094559.P2209890085556397144

`A155543(n)%A019309(n)`
-/

namespace A094559.P2209890085556397144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155543 n) (A019309 n)

end

end A094559.P2209890085556397144

/-! ## A094559.P11285370646215117017

`A000079(n)²%A019309(n)`
-/

namespace A094559.P11285370646215117017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n ^ 2) (A019309 n)

end

end A094559.P11285370646215117017

/-! ## A094559.P8763488288434299263

`A342240(A065475(n+1)+∑[A065475(n+1)])`
-/

namespace A094559.P8763488288434299263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342240 (A065475 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094559.P8763488288434299263

/-!
# A094560: Initial decimal digit of Pi*n, Pi=3.1415...

The programs for A094560, there is no canonical definition to state claims against.
-/

/-! ## A094560.P5748559660909880631

`A004086(floor(π*(n+1)))%10`
-/

namespace A094560.P5748559660909880631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 ⌊Real.pi * (n + 1 : ℝ)⌋.toNat) 10

end

end A094560.P5748559660909880631

/-! ## A094560.P17561502023082260507

`A000030(floor(π*(n+1)))`
-/

namespace A094560.P17561502023082260507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ⌊Real.pi * (n + 1 : ℝ)⌋.toNat

end

end A094560.P17561502023082260507

/-! ## A094560.P9421830197535889335

`A182324(floor(π*(n+1)))-floor(π*(n+1))`
-/

namespace A094560.P9421830197535889335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 ⌊Real.pi * (n + 1 : ℝ)⌋.toNat - ⌊Real.pi * (n + 1 : ℝ)⌋

end

end A094560.P9421830197535889335

/-! ## A094560.P8872114908444480739

`A000030(A022844(n+1))%10`
-/

namespace A094560.P8872114908444480739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 (A022844 (n + 1)).toNat) 10

end

end A094560.P8872114908444480739

/-! ## A094560.P341484689322912058

`A255873(11*2*(n+1))`
-/

namespace A094560.P341484689322912058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255873 (11 * (2 * (n + 1)))

end

end A094560.P341484689322912058

/-! ## A094560.P1131897605663809221

`dr(A000030(A138252(n+1)))`
-/

namespace A094560.P1131897605663809221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000030 (A138252 (n + 1)).toNat)

end

end A094560.P1131897605663809221

/-! ## A094560.P14640618142103567194

`A001222(A116671(n+1))*A000030(A138252(n+1))`
-/

namespace A094560.P14640618142103567194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116671 (n + 1)).toNat * A000030 (A138252 (n + 1)).toNat

end

end A094560.P14640618142103567194

/-! ## A094560.P17169067230370327985

`A001222(A117763(n+1))*A000030(A138252(n+1))`
-/

namespace A094560.P17169067230370327985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117763 (n + 1)).toNat * A000030 (A138252 (n + 1)).toNat

end

end A094560.P17169067230370327985

/-! ## A094560.P6943899741354144873

`A001222(A118484(n+1))*A000030(A138252(n+1))`
-/

namespace A094560.P6943899741354144873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A118484 (n + 1)).toNat * A000030 (A138252 (n + 1)).toNat

end

end A094560.P6943899741354144873

/-!
# A094561: Final decimal digit of floor(Pi*n), Pi=3.1415...

The programs for A094561, the canonical program `A094561.P2468363162827477283` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094561 has offset 1).

The definition of A094561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094561.P2468363162827477283

`floor(π*(n+1))%10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094561

/-- `floor(π*(n+1))%10` -/
def P2468363162827477283.Spec : Prop :=
  ∀ n, P2468363162827477283.a n = A094561 (n + 1)

theorem P2468363162827477283.correct : P2468363162827477283.Spec := by
  intro n
  simp only [A094561, Nat.add_sub_cancel]

end A094561

/-!
# A094562: Initial decimal digit of fractional part of Pi*n, Pi=3.1415...

The programs for A094562, the canonical program `A094562.P563497523011404005` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094562 has offset 1).

The definition of A094562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094562.P563497523011404005

`floor(10*π*(n+1))%10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094562

/-- `floor(10*π*(n+1))%10` -/
def P563497523011404005.Spec : Prop :=
  ∀ n, P563497523011404005.a n = A094562 (n + 1)

theorem P563497523011404005.correct : P563497523011404005.Spec := by
  intro n
  simp only [A094562, Nat.add_sub_cancel]

end A094562

/-! ## A094562.P1902058335030060724

`floor(A145951(n+1)/A008486(n+1))`
-/

namespace A094562.P1902058335030060724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145951 (n + 1) : ℚ) / (A008486 (n + 1) : ℚ)⌋

end

end A094562.P1902058335030060724

namespace A094562

/-- `floor(A145951(n+1)/A008486(n+1))` -/
def P1902058335030060724.Spec : Prop :=
  ∀ n, P1902058335030060724.a n = A094562 (n + 1)

end A094562

/-! ## A094562.P11918018920484920047

`floor(A145951(n+1)/A022844(n+1))`
-/

namespace A094562.P11918018920484920047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145951 (n + 1) : ℚ) / (A022844 (n + 1) : ℚ)⌋

end

end A094562.P11918018920484920047

namespace A094562

/-- `floor(A145951(n+1)/A022844(n+1))` -/
def P11918018920484920047.Spec : Prop :=
  ∀ n, P11918018920484920047.a n = A094562 (n + 1)

end A094562

/-! ## A094562.P9349740723448468095

`floor(A145951(n+1)/A120701(n+1))`
-/

namespace A094562.P9349740723448468095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145951 (n + 1) : ℚ) / (A120701 (n + 1) : ℚ)⌋

end

end A094562.P9349740723448468095

namespace A094562

/-- `floor(A145951(n+1)/A120701(n+1))` -/
def P9349740723448468095.Spec : Prop :=
  ∀ n, P9349740723448468095.a n = A094562 (n + 1)

end A094562

/-! ## A094562.P10493516206072131111

`floor(A145951(n+1)/A127451(n+1))`
-/

namespace A094562.P10493516206072131111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145951 (n + 1) : ℚ) / (A127451 (n + 1) : ℚ)⌋

end

end A094562.P10493516206072131111

namespace A094562

/-- `floor(A145951(n+1)/A127451(n+1))` -/
def P10493516206072131111.Spec : Prop :=
  ∀ n, P10493516206072131111.a n = A094562 (n + 1)

end A094562

/-! ## A094562.P2030158128969828863

`round(A145951(n+1)/A248524(n+1))`
-/

namespace A094562.P2030158128969828863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A145951 (n + 1) : ℚ) / (A248524 (n + 1) : ℚ))

end

end A094562.P2030158128969828863

namespace A094562

/-- `round(A145951(n+1)/A248524(n+1))` -/
def P2030158128969828863.Spec : Prop :=
  ∀ n, P2030158128969828863.a n = A094562 (n + 1)

end A094562

/-! ## A094562.P16646175561607900546

`A094561(10*(n+1))`
-/

namespace A094562.P16646175561607900546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094561 (10 * (n + 1))

end

end A094562.P16646175561607900546

namespace A094562

/-- `A094561(10*(n+1))` -/
def P16646175561607900546.Spec : Prop :=
  ∀ n, P16646175561607900546.a n = A094562 (n + 1)

end A094562

/-! ## A094562.P17858956197377895320

`round(A145951(n+1)/A138252(n+1))`
-/

namespace A094562.P17858956197377895320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A145951 (n + 1) : ℚ) / (A138252 (n + 1) : ℚ))

end

end A094562.P17858956197377895320

namespace A094562

/-- `round(A145951(n+1)/A138252(n+1))` -/
def P17858956197377895320.Spec : Prop :=
  ∀ n, P17858956197377895320.a n = A094562 (n + 1)

end A094562

/-!
# A094564: Triple products of distinct Fibonacci numbers: F(i)F(j)F(k), 2<=i<j<k.

The programs for A094564, there is no canonical definition to state claims against.
-/

/-! ## A094564.P4389145677284024306

`∪[A271354(n+1), A272949(n+1)]`
-/

namespace A094564.P4389145677284024306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094564.P4389145677284024306

/-! ## A094564.P3184780684334203786

`A160009(eq[2, and(2, A272947(n+1))]+1)`
-/

namespace A094564.P3184780684334203786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A272947 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A094564.P3184780684334203786

/-! ## A094564.P3474998528142648759

`∪[A049862(A183569(n+1)+4), A272949(n+1)]`
-/

namespace A094564.P3474998528142648759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (A183569 (n + 1) + 4).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094564.P3474998528142648759

/-! ## A094564.P1630695050418218317

`∩[A160009(n+1), A169692(n+1)]`
-/

namespace A094564.P1630695050418218317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094564.P1630695050418218317

/-! ## A094564.P657751743198615283

`A179751(A067142(n))+A006881(n+1)`
-/

namespace A094564.P657751743198615283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (A067142 n).toNat + A006881 (n + 1)

end

end A094564.P657751743198615283

/-!
# A094565: Triangle read by rows: binary products of Fibonacci numbers.

The programs for A094565, the canonical program `A094565.P10986564490219607756` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094565 has offset 1).

The definition of A094565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094565.P10986564490219607756

`record[A058071(A002262(n)+n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094565

/-- `record[A058071(A002262(n)+n)]` -/
def P10986564490219607756.Spec : Prop :=
  ∀ n, P10986564490219607756.a n = A094565 (n + 1)

theorem P10986564490219607756.correct : P10986564490219607756.Spec := by
  intro n
  simp only [A094565, Nat.add_sub_cancel]

end A094565

/-! ## A094565.P16563339591951359621

`A058071(eq[1, -or(-T(n-2,k), T(n-1,k-1))])` with `a(0)=-1`
-/

namespace A094565.P16563339591951359621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  -Int.lor (-SequenceMachineLib.triUp2 f2 n) (SequenceMachineLib.triUpLeft f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094565.P16563339591951359621

namespace A094565

/-- `A058071(eq[1, -or(-T(n-2,k), T(n-1,k-1))])` -/
def P16563339591951359621.Spec : Prop :=
  ∀ n, P16563339591951359621.a n = A094565 (n + 1)

end A094565

/-! ## A094565.P8082691997443262525

`A058071(A185869(n+1))`
-/

namespace A094565.P8082691997443262525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A185869 (n + 1)).toNat

end

end A094565.P8082691997443262525

namespace A094565

/-- `A058071(A185869(n+1))` -/
def P8082691997443262525.Spec : Prop :=
  ∀ n, P8082691997443262525.a n = A094565 (n + 1)

end A094565

/-! ## A094565.P17811197409041533157

`A058071(A185870(n+1)-1)`
-/

namespace A094565.P17811197409041533157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A185870 (n + 1) - 1).toNat

end

end A094565.P17811197409041533157

namespace A094565

/-- `A058071(A185870(n+1)-1)` -/
def P17811197409041533157.Spec : Prop :=
  ∀ n, P17811197409041533157.a n = A094565 (n + 1)

end A094565

/-! ## A094565.P13849480977409106620

`A058071(A061579(n)+A016789(n))`
-/

namespace A094565.P13849480977409106620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A061579 n + A016789 n).toNat

end

end A094565.P13849480977409106620

namespace A094565

/-- `A058071(A061579(n)+A016789(n))` -/
def P13849480977409106620.Spec : Prop :=
  ∀ n, P13849480977409106620.a n = A094565 (n + 1)

end A094565

/-! ## A094565.P7758654520033837587

`A058071(A093995(n+1)+A005408(n))`
-/

namespace A094565.P7758654520033837587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A093995 (n + 1) + A005408 n).toNat

end

end A094565.P7758654520033837587

namespace A094565

/-- `A058071(A093995(n+1)+A005408(n))` -/
def P7758654520033837587.Spec : Prop :=
  ∀ n, P7758654520033837587.a n = A094565 (n + 1)

end A094565

/-! ## A094565.P15185320667914776876

`A005206(A094568(n+1))`
-/

namespace A094565.P15185320667914776876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A094568 (n + 1)).toNat

end

end A094565.P15185320667914776876

namespace A094565

/-- `A005206(A094568(n+1))` -/
def P15185320667914776876.Spec : Prop :=
  ∀ n, P15185320667914776876.a n = A094565 (n + 1)

end A094565

/-! ## A094565.P13900971319218303938

`A094568(n+1)-A094566(n+1)`
-/

namespace A094565.P13900971319218303938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094568 (n + 1) - A094566 (n + 1)

end

end A094565.P13900971319218303938

namespace A094565

/-- `A094568(n+1)-A094566(n+1)` -/
def P13900971319218303938.Spec : Prop :=
  ∀ n, P13900971319218303938.a n = A094565 (n + 1)

end A094565

/-!
# A094566: Triangle of binary products of Fibonacci numbers.

The programs for A094566, there is no canonical definition to state claims against.
-/

/-! ## A094566.P15792714095299069503

`round(A094565(n+1)/ϕ)`
-/

namespace A094566.P15792714095299069503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094565 (n + 1) : ℝ) / Real.goldenRatio)

end

end A094566.P15792714095299069503

/-! ## A094566.P16585835052222064560

`A005206(A094565(n+1))`
-/

namespace A094566.P16585835052222064560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A094565 (n + 1)).toNat

end

end A094566.P16585835052222064560

/-! ## A094566.P1648072516790483255

`A060143(A094565(n+1)+1)`
-/

namespace A094566.P1648072516790483255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A094565 (n + 1) + 1).toNat

end

end A094566.P1648072516790483255

/-! ## A094566.P13029492349446275163

`round(A058071(A185869(n+1))/ϕ)`
-/

namespace A094566.P13029492349446275163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058071 (A185869 (n + 1)).toNat : ℝ) / Real.goldenRatio)

end

end A094566.P13029492349446275163

/-! ## A094566.P17553404721054291461

`round(record[A058071(A002262(n)+n)]/ϕ)`
-/

namespace A094566.P17553404721054291461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A002262 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) / Real.goldenRatio)

end

end A094566.P17553404721054291461

/-! ## A094566.P11343771370373575878

`A005378(A094565(n+1)%A240877(n))`
-/

namespace A094566.P11343771370373575878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (Int.tmod (A094565 (n + 1)) (A240877 n)).toNat

end

end A094566.P11343771370373575878

/-! ## A094566.P10568124086757202160

`A049862(A063656(n)+3)-A094565(n+1)`
-/

namespace A094566.P10568124086757202160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (A063656 n + 3).toNat - A094565 (n + 1)

end

end A094566.P10568124086757202160

/-! ## A094566.P12531163306134836853

`A022342(A094565(n+1)+1)-A094565(n+1)`
-/

namespace A094566.P12531163306134836853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A094565 (n + 1) + 1).toNat - A094565 (n + 1)

end

end A094566.P12531163306134836853

/-! ## A094566.P17389761740346831503

`A094565(n+1)-A060144(A094565(n+1)+1)`
-/

namespace A094566.P17389761740346831503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094565 (n + 1) - A060144 (A094565 (n + 1) + 1).toNat

end

end A094566.P17389761740346831503

/-! ## A094566.P5053701508473580001

`round(ϕ*A094565(n+1))-A058071(A185869(n+1))`
-/

namespace A094566.P5053701508473580001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A094565 (n + 1) : ℝ)) - A058071 (A185869 (n + 1)).toNat

end

end A094566.P5053701508473580001

/-!
# A094567: Associated with alternating row sums of array in A094566.

The programs for A094567, the canonical program `A094567.P14201213644824112636` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094567 has offset 0).

The definition of A094567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094567.P11139197842249177238

`ogf((1-2x)/(1-6x-6x^2+x^3))`
-/

namespace A094567.P11139197842249177238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -6, -6, 1] n

end

end A094567.P11139197842249177238

namespace A094567

/-- `ogf((1-2x)/(1-6x-6x^2+x^3))` -/
def P11139197842249177238.Spec : Prop :=
  ∀ n, P11139197842249177238.a n = A094567 n

end A094567

/-! ## A094567.P14201213644824112636

`6*a(n-1)+6*a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=30`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094567

/-- `6*a(n-1)+6*a(n-2)-a(n-3)` -/
def P14201213644824112636.Spec : Prop :=
  ∀ n, P14201213644824112636.a n = A094567 n

theorem P14201213644824112636.correct : P14201213644824112636.Spec := by
  intro n
  simp only [A094567]

end A094567

/-! ## A094567.P2508364114705362887

`A000045(4*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A094567.P2508364114705362887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (4 * n + 1) - a (n - 1)

end

end A094567.P2508364114705362887

namespace A094567

/-- `A000045(4*n+1)-a(n-1)` -/
def P2508364114705362887.Spec : Prop :=
  ∀ n, P2508364114705362887.a n = A094567 n

end A094567

/-! ## A094567.P11427023326770932001

`(A000045(4*n+3)+(-1)^n)/3`
-/

namespace A094567.P11427023326770932001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * n + 3) + (-1) ^ n : ℚ) / 3

end

end A094567.P11427023326770932001

namespace A094567

/-- `(A000045(4*n+3)+(-1)^n)/3` -/
def P11427023326770932001.Spec : Prop :=
  ∀ n, P11427023326770932001.a n = (A094567 n : ℚ)

end A094567

/-! ## A094567.P4633980925581706547

`floor(A081005(n)/3)`
-/

namespace A094567.P4633980925581706547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081005 n : ℚ) / 3⌋

end

end A094567.P4633980925581706547

namespace A094567

/-- `floor(A081005(n)/3)` -/
def P4633980925581706547.Spec : Prop :=
  ∀ n, P4633980925581706547.a n = A094567 n

end A094567

/-! ## A094567.P6641183865737145027

`ceil(A081009(n)/3)`
-/

namespace A094567.P6641183865737145027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081009 n : ℚ) / 3⌉

end

end A094567.P6641183865737145027

namespace A094567

/-- `ceil(A081009(n)/3)` -/
def P6641183865737145027.Spec : Prop :=
  ∀ n, P6641183865737145027.a n = A094567 n

end A094567

/-! ## A094567.P1304487973048351928

`round(A033891(n)/3)`
-/

namespace A094567.P1304487973048351928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A033891 n : ℚ) / 3)

end

end A094567.P1304487973048351928

namespace A094567

/-- `round(A033891(n)/3)` -/
def P1304487973048351928.Spec : Prop :=
  ∀ n, P1304487973048351928.a n = A094567 n

end A094567

/-! ## A094567.P7283898138366208976

`A293544(4*n+3)`
-/

namespace A094567.P7283898138366208976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (4 * n + 3)

end

end A094567.P7283898138366208976

namespace A094567

/-- `A293544(4*n+3)` -/
def P7283898138366208976.Spec : Prop :=
  ∀ n, P7283898138366208976.a n = A094567 n

end A094567

/-! ## A094567.P16674084728544487017

`round(A048575(2*n)/3)`
-/

namespace A094567.P16674084728544487017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048575 (2 * n) : ℚ) / 3)

end

end A094567.P16674084728544487017

namespace A094567

/-- `round(A048575(2*n)/3)` -/
def P16674084728544487017.Spec : Prop :=
  ∀ n, P16674084728544487017.a n = A094567 n

end A094567

/-! ## A094567.P7443772270586950067

`A033889(n)-a(n-1)` with `a(0)=1`
-/

namespace A094567.P7443772270586950067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033889 n - a (n - 1)

end

end A094567.P7443772270586950067

namespace A094567

/-- `A033889(n)-a(n-1)` -/
def P7443772270586950067.Spec : Prop :=
  ∀ n, P7443772270586950067.a n = A094567 n

end A094567

/-! ## A094567.P11924050701664492490

`floor(A081714(2*n+1)/3)`
-/

namespace A094567.P11924050701664492490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081714 (2 * n + 1) : ℚ) / 3⌋

end

end A094567.P11924050701664492490

namespace A094567

/-- `floor(A081714(2*n+1)/3)` -/
def P11924050701664492490.Spec : Prop :=
  ∀ n, P11924050701664492490.a n = A094567 n

end A094567

/-! ## A094567.P17765849099471375046

`floor(A246640(2*n+1)/3)`
-/

namespace A094567.P17765849099471375046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246640 (2 * n + 1) : ℚ) / 3⌋

end

end A094567.P17765849099471375046

namespace A094567

/-- `floor(A246640(2*n+1)/3)` -/
def P17765849099471375046.Spec : Prop :=
  ∀ n, P17765849099471375046.a n = A094567 n

end A094567

/-! ## A094567.P39112208174226386

`ceil(A027941(2*n+1)/3)`
-/

namespace A094567.P39112208174226386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027941 (2 * n + 1) : ℚ) / 3⌉

end

end A094567.P39112208174226386

namespace A094567

/-- `ceil(A027941(2*n+1)/3)` -/
def P39112208174226386.Spec : Prop :=
  ∀ n, P39112208174226386.a n = A094567 n

end A094567

/-! ## A094567.P4191726772590045394

`round(A122367(2*n+1)/3)`
-/

namespace A094567.P4191726772590045394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122367 (2 * n + 1) : ℚ) / 3)

end

end A094567.P4191726772590045394

namespace A094567

/-- `round(A122367(2*n+1)/3)` -/
def P4191726772590045394.Spec : Prop :=
  ∀ n, P4191726772590045394.a n = A094567 n

end A094567

/-! ## A094567.P7497109275753784341

`ceil(A052952(4*n+1)/3)`
-/

namespace A094567.P7497109275753784341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052952 (4 * n + 1) : ℚ) / 3⌉

end

end A094567.P7497109275753784341

namespace A094567

/-- `ceil(A052952(4*n+1)/3)` -/
def P7497109275753784341.Spec : Prop :=
  ∀ n, P7497109275753784341.a n = A094567 n

end A094567

/-! ## A094567.P93447917169525353

`round(A142880(3*n+2)/3)`
-/

namespace A094567.P93447917169525353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142880 (3 * n + 2) : ℚ) / 3)

end

end A094567.P93447917169525353

namespace A094567

/-- `round(A142880(3*n+2)/3)` -/
def P93447917169525353.Spec : Prop :=
  ∀ n, P93447917169525353.a n = A094567 n

end A094567

/-! ## A094567.P16973514452079661048

`round(A142881(3*n+2)/3)`
-/

namespace A094567.P16973514452079661048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142881 (3 * n + 2) : ℚ) / 3)

end

end A094567.P16973514452079661048

namespace A094567

/-- `round(A142881(3*n+2)/3)` -/
def P16973514452079661048.Spec : Prop :=
  ∀ n, P16973514452079661048.a n = A094567 n

end A094567

/-! ## A094567.P14409410266761073049

`A099496(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A094567.P14409410266761073049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099496 (2 * n) - a (n - 1)

end

end A094567.P14409410266761073049

namespace A094567

/-- `A099496(2*n)-a(n-1)` -/
def P14409410266761073049.Spec : Prop :=
  ∀ n, P14409410266761073049.a n = A094567 n

end A094567

/-! ## A094567.P15571527929710074730

`A122367(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A094567.P15571527929710074730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122367 (2 * n) - a (n - 1)

end

end A094567.P15571527929710074730

namespace A094567

/-- `A122367(2*n)-a(n-1)` -/
def P15571527929710074730.Spec : Prop :=
  ∀ n, P15571527929710074730.a n = A094567 n

end A094567

/-! ## A094567.P12115099603059514696

`ceil(∑[A000032(4*n+1)]/3)`
-/

namespace A094567.P12115099603059514696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A094567.P12115099603059514696

namespace A094567

/-- `ceil(∑[A000032(4*n+1)]/3)` -/
def P12115099603059514696.Spec : Prop :=
  ∀ n, P12115099603059514696.a n = A094567 n

end A094567

/-!
# A094568: Triangle of binary products of Fibonacci numbers.

The programs for A094568, there is no canonical definition to state claims against.
-/

/-! ## A094568.P8423553862929875286

`round(ϕ*A094565(n+1))`
-/

namespace A094568.P8423553862929875286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A094565 (n + 1) : ℝ))

end

end A094568.P8423553862929875286

/-! ## A094568.P8275060814874353225

`A049862(eq[0, floor(2*sqrt(n))%2]+3)`
-/

namespace A094568.P8275060814874353225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A094568.P8275060814874353225

/-! ## A094568.P10951697303720877981

`A003258(A094565(n+1))`
-/

namespace A094568.P10951697303720877981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003258 (A094565 (n + 1)).toNat

end

end A094568.P10951697303720877981

/-! ## A094568.P14016308964202699254

`A049862(A063656(n)+3)`
-/

namespace A094568.P14016308964202699254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (A063656 n + 3).toNat

end

end A094568.P14016308964202699254

/-! ## A094568.P13111259906759685669

`A022342(A094565(n+1)+1)`
-/

namespace A094568.P13111259906759685669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A094565 (n + 1) + 1).toNat

end

end A094568.P13111259906759685669

/-! ## A094568.P11446575415894689481

`round(ϕ*A058071(A185869(n+1)))`
-/

namespace A094568.P11446575415894689481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A058071 (A185869 (n + 1)).toNat : ℝ))

end

end A094568.P11446575415894689481

/-! ## A094568.P12258184650999892368

`A000201(A094565(n+1)+1)-1`
-/

namespace A094568.P12258184650999892368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A094565 (n + 1) + 1).toNat - 1

end

end A094568.P12258184650999892368

/-! ## A094568.P5318090576092531873

`A094566(n+1)+A094565(n+1)`
-/

namespace A094568.P5318090576092531873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094566 (n + 1) + A094565 (n + 1)

end

end A094568.P5318090576092531873

/-! ## A094568.P17384315177035842265

`A099267(or(A000007(n), A094565(n+1)))`
-/

namespace A094568.P17384315177035842265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (Int.lor (A000007 n) (A094565 (n + 1))).toNat

end

end A094568.P17384315177035842265

/-! ## A094568.P13288250010301066549

`A099267(A094565(n+1)%A030078(n+1))`
-/

namespace A094568.P13288250010301066549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (Int.tmod (A094565 (n + 1)) (A030078 (n + 1))).toNat

end

end A094568.P13288250010301066549

/-!
# A094569: Associated with alternating row sums of array in A094568.

The programs for A094569, the canonical program `A094569.P12558136746888704553` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094569 has offset 0).

The definition of A094569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094569.P9564572898989638770

`ogf((2-x)/(1-6x-6x^2+x^3))`
-/

namespace A094569.P9564572898989638770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -6, -6, 1] n

end

end A094569.P9564572898989638770

namespace A094569

/-- `ogf((2-x)/(1-6x-6x^2+x^3))` -/
def P9564572898989638770.Spec : Prop :=
  ∀ n, P9564572898989638770.a n = A094569 n

end A094569

/-! ## A094569.P12558136746888704553

`6*a(n-1)+6*a(n-2)-a(n-3)` with `a(0)=2, a(1)=11, a(2)=78`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094569

/-- `6*a(n-1)+6*a(n-2)-a(n-3)` -/
def P12558136746888704553.Spec : Prop :=
  ∀ n, P12558136746888704553.a n = A094569 n

theorem P12558136746888704553.correct : P12558136746888704553.Spec := by
  intro n
  simp only [A094569]

end A094569

/-! ## A094569.P11001402303521464472

`A000045(4*n+3)-a(n-1)` with `a(0)=2`
-/

namespace A094569.P11001402303521464472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000045 (4 * n + 3) - a (n - 1)

end

end A094569.P11001402303521464472

namespace A094569

/-- `A000045(4*n+3)-a(n-1)` -/
def P11001402303521464472.Spec : Prop :=
  ∀ n, P11001402303521464472.a n = A094569 n

end A094569

/-! ## A094569.P10023657192723980605

`(A000045(4*n+5)+(-1)^n)/3`
-/

namespace A094569.P10023657192723980605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * n + 5) + (-1) ^ n : ℚ) / 3

end

end A094569.P10023657192723980605

namespace A094569

/-- `(A000045(4*n+5)+(-1)^n)/3` -/
def P10023657192723980605.Spec : Prop :=
  ∀ n, P10023657192723980605.a n = (A094569 n : ℚ)

end A094569

/-! ## A094569.P976165417750659886

`round(ϕ*A004187(n+1))`
-/

namespace A094569.P976165417750659886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A004187 (n + 1) : ℝ))

end

end A094569.P976165417750659886

namespace A094569

/-- `round(ϕ*A004187(n+1))` -/
def P976165417750659886.Spec : Prop :=
  ∀ n, P976165417750659886.a n = A094569 n

end A094569

/-! ## A094569.P15008649508318167724

`A293544(4*(n+1)+1)`
-/

namespace A094569.P15008649508318167724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (4 * (n + 1) + 1)

end

end A094569.P15008649508318167724

namespace A094569

/-- `A293544(4*(n+1)+1)` -/
def P15008649508318167724.Spec : Prop :=
  ∀ n, P15008649508318167724.a n = A094569 n

end A094569

/-! ## A094569.P39424234495520852

`A033891(n)-a(n-1)` with `a(0)=2`
-/

namespace A094569.P39424234495520852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A033891 n - a (n - 1)

end

end A094569.P39424234495520852

namespace A094569

/-- `A033891(n)-a(n-1)` -/
def P39424234495520852.Spec : Prop :=
  ∀ n, P39424234495520852.a n = A094569 n

end A094569

/-! ## A094569.P4204003890737830347

`A172968(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A094569.P4204003890737830347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A172968 (n + 1) - a (n - 1)

end

end A094569.P4204003890737830347

namespace A094569

/-- `A172968(n+1)-a(n-1)` -/
def P4204003890737830347.Spec : Prop :=
  ∀ n, P4204003890737830347.a n = A094569 n

end A094569

/-! ## A094569.P17951584760922712812

`A081011(n)-2-a(n-1)` with `a(0)=2`
-/

namespace A094569.P17951584760922712812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A081011 n - 2 - a (n - 1)

end

end A094569.P17951584760922712812

namespace A094569

/-- `A081011(n)-2-a(n-1)` -/
def P17951584760922712812.Spec : Prop :=
  ∀ n, P17951584760922712812.a n = A094569 n

end A094569

/-! ## A094569.P17019068637913515546

`A048575(2*n)-a(n-1)` with `a(0)=2`
-/

namespace A094569.P17019068637913515546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A048575 (2 * n) - a (n - 1)

end

end A094569.P17019068637913515546

namespace A094569

/-- `A048575(2*n)-a(n-1)` -/
def P17019068637913515546.Spec : Prop :=
  ∀ n, P17019068637913515546.a n = A094569 n

end A094569

/-! ## A094569.P17716879389160601149

`Δ[A001654(2*n)]-a(n-1)` with `a(0)=2`
-/

namespace A094569.P17716879389160601149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A094569.P17716879389160601149

namespace A094569

/-- `Δ[A001654(2*n)]-a(n-1)` -/
def P17716879389160601149.Spec : Prop :=
  ∀ n, P17716879389160601149.a n = A094569 n

end A094569

/-! ## A094569.P13496684453858692335

`A001519(2*(n+1))-a(n-1)` with `a(0)=2`
-/

namespace A094569.P13496684453858692335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001519 (2 * (n + 1)) - a (n - 1)

end

end A094569.P13496684453858692335

namespace A094569

/-- `A001519(2*(n+1))-a(n-1)` -/
def P13496684453858692335.Spec : Prop :=
  ∀ n, P13496684453858692335.a n = A094569 n

end A094569

/-! ## A094569.P17586135599035221362

`∑[A000032(2*n+2*n+1)-a(n-1)]` with `a(0)=2`
-/

namespace A094569.P17586135599035221362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000032 (2 * n + (2 * n + 1)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094569.P17586135599035221362

namespace A094569

/-- `∑[A000032(2*n+2*n+1)-a(n-1)]` -/
def P17586135599035221362.Spec : Prop :=
  ∀ n, P17586135599035221362.a n = A094569 n

end A094569

/-! ## A094569.P11450000584576251623

`A094567(n)+A004187(n+1)`
-/

namespace A094569.P11450000584576251623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094567 n + A004187 (n + 1)

end

end A094569.P11450000584576251623

namespace A094569

/-- `A094567(n)+A004187(n+1)` -/
def P11450000584576251623.Spec : Prop :=
  ∀ n, P11450000584576251623.a n = A094569 n

end A094569

/-! ## A094569.P3804490841369938682

`A098305(n+1)+∑[A098305(n+1)]`
-/

namespace A094569.P3804490841369938682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098305 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094569.P3804490841369938682

namespace A094569

/-- `A098305(n+1)+∑[A098305(n+1)]` -/
def P3804490841369938682.Spec : Prop :=
  ∀ n, P3804490841369938682.a n = A094569 n

end A094569

/-! ## A094569.P6373039204395443093

`floor(A000045(A004767(n))-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A094569.P6373039204395443093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000045 (A004767 n).toNat - a (n - 1)

end

end A094569.P6373039204395443093

namespace A094569

/-- `floor(A000045(A004767(n))-a(n-1))` -/
def P6373039204395443093.Spec : Prop :=
  ∀ n, P6373039204395443093.a n = A094569 n

end A094569

/-! ## A094569.P12309539432691414411

`A140824(2*n+1)+A099485(2*n)`
-/

namespace A094569.P12309539432691414411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140824 (2 * n + 1) + A099485 (2 * n)

end

end A094569.P12309539432691414411

namespace A094569

/-- `A140824(2*n+1)+A099485(2*n)` -/
def P12309539432691414411.Spec : Prop :=
  ∀ n, P12309539432691414411.a n = A094569 n

end A094569

/-! ## A094569.P15582350053470571753

`2*A004187(n+1)-A099483(2*n)`
-/

namespace A094569.P15582350053470571753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004187 (n + 1) - A099483 (2 * n)

end

end A094569.P15582350053470571753

namespace A094569

/-- `2*A004187(n+1)-A099483(2*n)` -/
def P15582350053470571753.Spec : Prop :=
  ∀ n, P15582350053470571753.a n = A094569 n

end A094569

/-! ## A094569.P8483864758800453931

`A099485(2*n+1)-A099483(2*n)`
-/

namespace A094569.P8483864758800453931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099485 (2 * n + 1) - A099483 (2 * n)

end

end A094569.P8483864758800453931

namespace A094569

/-- `A099485(2*n+1)-A099483(2*n)` -/
def P8483864758800453931.Spec : Prop :=
  ∀ n, P8483864758800453931.a n = A094569 n

end A094569

/-! ## A094569.P3978256113585617445

`∑[A099484(2*n+1)+A099484(2*n)]`
-/

namespace A094569.P3978256113585617445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 (2 * n + 1) + A099484 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094569.P3978256113585617445

namespace A094569

/-- `∑[A099484(2*n+1)+A099484(2*n)]` -/
def P3978256113585617445.Spec : Prop :=
  ∀ n, P3978256113585617445.a n = A094569 n

end A094569

/-!
# A094570: Triangle T(n,k) read by rows: T(n,k) = F(k) + F(n-k) where F(n) is the n-th Fibonacci number.

The programs for A094570, the canonical program `A094570.P3986118265143710458` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094570 has offset 0).

The definition of A094570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n))+A000045(row(n)-col(n))` (program `A094570.P3986118265143710458`, by `A094570.P3986118265143710458.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094570.P3986118265143710458

`A000045(col(n))+A000045(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094570

/-- `A000045(col(n))+A000045(row(n)-col(n))` -/
def P3986118265143710458.Spec : Prop :=
  ∀ n, P3986118265143710458.a n = A094570 n

theorem P3986118265143710458.correct : P3986118265143710458.Spec := by
  intro n
  simp only [A094570]

end A094570

/-! ## A094570.P15199938021017730270

`A000045(row(n)-col(n))+A000045(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094570.P15199938021017730270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + A000045 (SequenceMachineLib.triCol n)

end

end A094570.P15199938021017730270

namespace A094570

/-- `A000045(row(n)-col(n))+A000045(col(n))` -/
def P15199938021017730270.Spec : Prop :=
  ∀ n, P15199938021017730270.a n = A094570 n

theorem P15199938021017730270.correct : P15199938021017730270.Spec := by
  intro n
  simp only [A094570, Nat.add_sub_cancel, A094570.P15199938021017730270.a, A094570.P3986118265143710458.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094570

/-! ## A094570.P2136664076418204060

`A141169(C(row(n)+1, 2)+col(n))+A141169(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A094570.P2136664076418204060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A141169 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A094570.P2136664076418204060

namespace A094570

/-- `A141169(C(row(n)+1, 2)+col(n))+A141169(C(row(n)+1, 2)+row(n)-col(n))` -/
def P2136664076418204060.Spec : Prop :=
  ∀ n, P2136664076418204060.a n = A094570 n

end A094570

/-! ## A094570.P664804763916831742

`A141169(n)+A000045(A025581(n))`
-/

namespace A094570.P664804763916831742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A000045 (A025581 n).toNat

end

end A094570.P664804763916831742

namespace A094570

/-- `A141169(n)+A000045(A025581(n))` -/
def P664804763916831742.Spec : Prop :=
  ∀ n, P664804763916831742.a n = A094570 n

end A094570

/-! ## A094570.P4189172669734977694

`A000045(A003984(n))+A000045(A004197(n))`
-/

namespace A094570.P4189172669734977694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003984 n).toNat + A000045 (A004197 n).toNat

end

end A094570.P4189172669734977694

namespace A094570

/-- `A000045(A003984(n))+A000045(A004197(n))` -/
def P4189172669734977694.Spec : Prop :=
  ∀ n, P4189172669734977694.a n = A094570 n

end A094570

/-! ## A094570.P6223897866103054201

`A000045(A002262(n))+A000045(A025581(n))`
-/

namespace A094570.P6223897866103054201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n).toNat + A000045 (A025581 n).toNat

end

end A094570.P6223897866103054201

namespace A094570

/-- `A000045(A002262(n))+A000045(A025581(n))` -/
def P6223897866103054201.Spec : Prop :=
  ∀ n, P6223897866103054201.a n = A094570 n

end A094570

/-! ## A094570.P11432209028652726019

`A212804(A002260(n+1))+A212804(A004736(n+1))`
-/

namespace A094570.P11432209028652726019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A002260 (n + 1)).toNat + A212804 (A004736 (n + 1)).toNat

end

end A094570.P11432209028652726019

namespace A094570

/-- `A212804(A002260(n+1))+A212804(A004736(n+1))` -/
def P11432209028652726019.Spec : Prop :=
  ∀ n, P11432209028652726019.a n = A094570 n

end A094570

/-! ## A094570.P6395442288107191960

`A000045(A057554(2*n+1))+A000045(A057554(2*(n+1)))`
-/

namespace A094570.P6395442288107191960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057554 (2 * n + 1)).toNat + A000045 (A057554 (2 * (n + 1))).toNat

end

end A094570.P6395442288107191960

namespace A094570

/-- `A000045(A057554(2*n+1))+A000045(A057554(2*(n+1)))` -/
def P6395442288107191960.Spec : Prop :=
  ∀ n, P6395442288107191960.a n = A094570 n

end A094570

/-! ## A094570.P8908621194359582608

`A141169(A061579(n))+A141169(n)`
-/

namespace A094570.P8908621194359582608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A061579 n).toNat + A141169 n

end

end A094570.P8908621194359582608

namespace A094570

/-- `A141169(A061579(n))+A141169(n)` -/
def P8908621194359582608.Spec : Prop :=
  ∀ n, P8908621194359582608.a n = A094570 n

end A094570

/-! ## A094570.P6376694095800730890

`A141169(A038722(n+2))+A141169(n)`
-/

namespace A094570.P6376694095800730890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A038722 (n + 2)).toNat + A141169 n

end

end A094570.P6376694095800730890

namespace A094570

/-- `A141169(A038722(n+2))+A141169(n)` -/
def P6376694095800730890.Spec : Prop :=
  ∀ n, P6376694095800730890.a n = A094570 n

end A094570

/-! ## A094570.P17632965453333447138

`A141169(A099375(n)+n)+A141169(n)`
-/

namespace A094570.P17632965453333447138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A099375 n + (n : ℤ)).toNat + A141169 n

end

end A094570.P17632965453333447138

namespace A094570

/-- `A141169(A099375(n)+n)+A141169(n)` -/
def P17632965453333447138.Spec : Prop :=
  ∀ n, P17632965453333447138.a n = A094570 n

end A094570

/-! ## A094570.P6365079820014601808

`A000045(A319571(2*n+1))+A000045(A319571(2*n))`
-/

namespace A094570.P6365079820014601808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A319571 (2 * n + 1)).toNat + A000045 (A319571 (2 * n)).toNat

end

end A094570.P6365079820014601808

namespace A094570

/-- `A000045(A319571(2*n+1))+A000045(A319571(2*n))` -/
def P6365079820014601808.Spec : Prop :=
  ∀ n, P6365079820014601808.a n = A094570 n

end A094570

/-! ## A094570.P645107182380165410

`A141169(2*A095831(n+1))+A141169(n)`
-/

namespace A094570.P645107182380165410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (2 * A095831 (n + 1)).toNat + A141169 n

end

end A094570.P645107182380165410

namespace A094570

/-- `A141169(2*A095831(n+1))+A141169(n)` -/
def P645107182380165410.Spec : Prop :=
  ∀ n, P645107182380165410.a n = A094570 n

end A094570

/-! ## A094570.P5115572767755104122

`A265753(A073060(n))`
-/

namespace A094570.P5115572767755104122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A073060 n).toNat

end

end A094570.P5115572767755104122

namespace A094570

/-- `A265753(A073060(n))` -/
def P5115572767755104122.Spec : Prop :=
  ∀ n, P5115572767755104122.a n = A094570 n

end A094570

/-! ## A094570.P15171760765332917436

`A265753(A098350(n+1))`
-/

namespace A094570.P15171760765332917436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A098350 (n + 1)).toNat

end

end A094570.P15171760765332917436

namespace A094570

/-- `A265753(A098350(n+1))` -/
def P15171760765332917436.Spec : Prop :=
  ∀ n, P15171760765332917436.a n = A094570 n

end A094570

/-! ## A094570.P12764003496328473620

`∑{e}[A036561(n), A000045(#)]`
-/

namespace A094570.P12764003496328473620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A094570.P12764003496328473620

namespace A094570

/-- `∑{e}[A036561(n), A000045(#)]` -/
def P12764003496328473620.Spec : Prop :=
  ∀ n, P12764003496328473620.a n = A094570 n

end A094570

/-! ## A094570.P15095329989466066034

`∑{e}[A036561(n), A001611(#)-1]`
-/

namespace A094570.P15095329989466066034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A001611 (Nat.factorization (f1 n).natAbs p) - 1)

end

end A094570.P15095329989466066034

namespace A094570

/-- `∑{e}[A036561(n), A001611(#)-1]` -/
def P15095329989466066034.Spec : Prop :=
  ∀ n, P15095329989466066034.a n = A094570 n

end A094570

/-!
# A094571: Triangle of binary sums of squares of Fibonacci numbers.

The programs for A094571, the canonical program `A094571.P6651088130842317953` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094571 has offset 0).

The definition of A094571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094571.P3297184505010022484

`A007598(A025581(n))+A141169(n)²`
-/

namespace A094571.P3297184505010022484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A025581 n).toNat + A141169 n ^ 2

end

end A094571.P3297184505010022484

namespace A094571

/-- `A007598(A025581(n))+A141169(n)²` -/
def P3297184505010022484.Spec : Prop :=
  ∀ n, P3297184505010022484.a n = A094571 n

end A094571

/-! ## A094571.P6651088130842317953

`A007598(A002262(n))+A007598(A025581(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094571

/-- `A007598(A002262(n))+A007598(A025581(n))` -/
def P6651088130842317953.Spec : Prop :=
  ∀ n, P6651088130842317953.a n = A094571 n

theorem P6651088130842317953.correct : P6651088130842317953.Spec := by
  intro n
  simp only [A094571]

end A094571

/-! ## A094571.P10356303872746787304

`A141169(A061579(n))²+A141169(n)²`
-/

namespace A094571.P10356303872746787304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 (A061579 n).toNat ^ 2 + A141169 n ^ 2

end

end A094571.P10356303872746787304

namespace A094571

/-- `A141169(A061579(n))²+A141169(n)²` -/
def P10356303872746787304.Spec : Prop :=
  ∀ n, P10356303872746787304.a n = A094571 n

end A094571

/-! ## A094571.P17043391420464705705

`∑{e}[A036561(n), A007598(#)]`
-/

namespace A094571.P17043391420464705705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007598 (Nat.factorization (f1 n).natAbs p)

end

end A094571.P17043391420464705705

namespace A094571

/-- `∑{e}[A036561(n), A007598(#)]` -/
def P17043391420464705705.Spec : Prop :=
  ∀ n, P17043391420464705705.a n = A094571 n

end A094571

/-! ## A094571.P11981467299115598925

`∑{e}[A036561(n), A000045(#)²]`
-/

namespace A094571.P11981467299115598925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p) ^ 2

end

end A094571.P11981467299115598925

namespace A094571

/-- `∑{e}[A036561(n), A000045(#)²]` -/
def P11981467299115598925.Spec : Prop :=
  ∀ n, P11981467299115598925.a n = A094571 n

end A094571

/-! ## A094571.P2801573734116661454

`∑{e}[A175840(n), A007598(#)]`
-/

namespace A094571.P2801573734116661454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007598 (Nat.factorization (f1 n).natAbs p)

end

end A094571.P2801573734116661454

namespace A094571

/-- `∑{e}[A175840(n), A007598(#)]` -/
def P2801573734116661454.Spec : Prop :=
  ∀ n, P2801573734116661454.a n = A094571 n

end A094571

/-! ## A094571.P6900433199581345558

`∑{e}[A175840(n), A000045(#)²]`
-/

namespace A094571.P6900433199581345558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p) ^ 2

end

end A094571.P6900433199581345558

namespace A094571

/-- `∑{e}[A175840(n), A000045(#)²]` -/
def P6900433199581345558.Spec : Prop :=
  ∀ n, P6900433199581345558.a n = A094571 n

end A094571

/-!
# A094572: Number of pairs of integers x, y (of either sign) with x^2 - y^2 = n.

The programs for A094572, the canonical program `A094572.P824634437400607663` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094572 has offset 1).

The definition of A094572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094572.P824634437400607663

`2*A112329(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094572

/-- `2*A112329(n+1)` -/
def P824634437400607663.Spec : Prop :=
  ∀ n, P824634437400607663.a n = A094572 (n + 1)

theorem P824634437400607663.correct : P824634437400607663.Spec := by
  intro n
  simp only [A094572, Nat.add_sub_cancel]

end A094572

/-! ## A094572.P10849570997538913090

`∑{d}[n+1, 2-and(4, #²)]`
-/

namespace A094572.P10849570997538913090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 - (Nat.land 4 (d ^ 2) : ℤ))

end

end A094572.P10849570997538913090

namespace A094572

/-- `∑{d}[n+1, 2-and(4, #²)]` -/
def P10849570997538913090.Spec : Prop :=
  ∀ n, P10849570997538913090.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P2926360746168417784

`2*abs(∑{d}[n+1, (-1)^#])`
-/

namespace A094572.P2926360746168417784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d|

end

end A094572.P2926360746168417784

namespace A094572

/-- `2*abs(∑{d}[n+1, (-1)^#])` -/
def P2926360746168417784.Spec : Prop :=
  ∀ n, P2926360746168417784.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P630287112197094693

`2*∑{d}[n+1, (-1)^(n*#)]`
-/

namespace A094572.P630287112197094693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (-1) ^ (n * d))

end

end A094572.P630287112197094693

namespace A094572

/-- `2*∑{d}[n+1, (-1)^(n*#)]` -/
def P630287112197094693.Spec : Prop :=
  ∀ n, P630287112197094693.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P17725174580134123447

`abs(∑{d}[n+1, (-1)^#])+abs(∑{d}[n+1, (-1)^#])`
-/

namespace A094572.P17725174580134123447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d| + |∑ d ∈ Nat.divisors (f2 n), (-1) ^ d|

end

end A094572.P17725174580134123447

namespace A094572

/-- `abs(∑{d}[n+1, (-1)^#])+abs(∑{d}[n+1, (-1)^#])` -/
def P17725174580134123447.Spec : Prop :=
  ∀ n, P17725174580134123447.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P15963517204494295279

`abs(Δ[2*A059851(n)])`
-/

namespace A094572.P15963517204494295279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A094572.P15963517204494295279

namespace A094572

/-- `abs(Δ[2*A059851(n)])` -/
def P15963517204494295279.Spec : Prop :=
  ∀ n, P15963517204494295279.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P204925598708070772

`abs(2*A048272(n+1))`
-/

namespace A094572.P204925598708070772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A048272 (n + 1)|

end

end A094572.P204925598708070772

namespace A094572

/-- `abs(2*A048272(n+1))` -/
def P204925598708070772.Spec : Prop :=
  ∀ n, P204925598708070772.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P2423603701351899322

`abs(2*(1-A325939(n+1)))`
-/

namespace A094572.P2423603701351899322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - A325939 (n + 1))|

end

end A094572.P2423603701351899322

namespace A094572

/-- `abs(2*(1-A325939(n+1)))` -/
def P2423603701351899322.Spec : Prop :=
  ∀ n, P2423603701351899322.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P3967076663078502520

`2/(n+1)*A143520(n+1)`
-/

namespace A094572.P3967076663078502520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A143520 (n + 1) : ℚ)

end

end A094572.P3967076663078502520

namespace A094572

/-- `2/(n+1)*A143520(n+1)` -/
def P3967076663078502520.Spec : Prop :=
  ∀ n, P3967076663078502520.a n = (A094572 (n + 1) : ℚ)

end A094572

/-! ## A094572.P1353554571966250178

`2*abs(A325937(n+1)-(n-xor(1, n)))`
-/

namespace A094572.P1353554571966250178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A325937 (n + 1) - ((n : ℤ) - (Nat.xor 1 n : ℤ))|

end

end A094572.P1353554571966250178

namespace A094572

/-- `2*abs(A325937(n+1)-(n-xor(1, n)))` -/
def P1353554571966250178.Spec : Prop :=
  ∀ n, P1353554571966250178.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P4563708719116044728

`A005843(A112329(n+1))`
-/

namespace A094572.P4563708719116044728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A112329 (n + 1)).toNat

end

end A094572.P4563708719116044728

namespace A094572

/-- `A005843(A112329(n+1))` -/
def P4563708719116044728.Spec : Prop :=
  ∀ n, P4563708719116044728.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P12483564651225449126

`A000196((2*A048272(n+1))²)`
-/

namespace A094572.P12483564651225449126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((2 * A048272 (n + 1)) ^ 2).toNat

end

end A094572.P12483564651225449126

namespace A094572

/-- `A000196((2*A048272(n+1))²)` -/
def P12483564651225449126.Spec : Prop :=
  ∀ n, P12483564651225449126.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P4030302551977427757

`A037213((2*A048272(n+1))²)`
-/

namespace A094572.P4030302551977427757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((2 * A048272 (n + 1)) ^ 2).toNat

end

end A094572.P4030302551977427757

namespace A094572

/-- `A037213((2*A048272(n+1))²)` -/
def P4030302551977427757.Spec : Prop :=
  ∀ n, P4030302551977427757.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P9383750987206057172

`A004273(A112329(n+1)+1)-1`
-/

namespace A094572.P9383750987206057172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112329 (n + 1) + 1).toNat - 1

end

end A094572.P9383750987206057172

namespace A094572

/-- `A004273(A112329(n+1)+1)-1` -/
def P9383750987206057172.Spec : Prop :=
  ∀ n, P9383750987206057172.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P2482405383168803079

`A004277(A112329(n+1)+1)-2`
-/

namespace A094572.P2482405383168803079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A112329 (n + 1) + 1).toNat - 2

end

end A094572.P2482405383168803079

namespace A094572

/-- `A004277(A112329(n+1)+1)-2` -/
def P2482405383168803079.Spec : Prop :=
  ∀ n, P2482405383168803079.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P11472196911081739968

`A119432(A112329(n+1)+1)-2`
-/

namespace A094572.P11472196911081739968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (A112329 (n + 1) + 1).toNat - 2

end

end A094572.P11472196911081739968

namespace A094572

/-- `A119432(A112329(n+1)+1)-2` -/
def P11472196911081739968.Spec : Prop :=
  ∀ n, P11472196911081739968.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P17019845718218602912

`A122080(A112329(n+1)+1)-2`
-/

namespace A094572.P17019845718218602912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A112329 (n + 1) + 1).toNat - 2

end

end A094572.P17019845718218602912

namespace A094572

/-- `A122080(A112329(n+1)+1)-2` -/
def P17019845718218602912.Spec : Prop :=
  ∀ n, P17019845718218602912.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P3084536878179280295

`A004275(A112329(n+1)+2)-2`
-/

namespace A094572.P3084536878179280295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A112329 (n + 1) + 2).toNat - 2

end

end A094572.P3084536878179280295

namespace A094572

/-- `A004275(A112329(n+1)+2)-2` -/
def P3084536878179280295.Spec : Prop :=
  ∀ n, P3084536878179280295.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P17366540248362863571

`A228441(n+1)+A000005(n+1)`
-/

namespace A094572.P17366540248362863571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228441 (n + 1) + A000005 (n + 1)

end

end A094572.P17366540248362863571

namespace A094572

/-- `A228441(n+1)+A000005(n+1)` -/
def P17366540248362863571.Spec : Prop :=
  ∀ n, P17366540248362863571.a n = A094572 (n + 1)

end A094572

/-! ## A094572.P5827610320529366316

`2*A048272(n+1)*A033999(n)`
-/

namespace A094572.P5827610320529366316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048272 (n + 1) * A033999 n

end

end A094572.P5827610320529366316

namespace A094572

/-- `2*A048272(n+1)*A033999(n)` -/
def P5827610320529366316.Spec : Prop :=
  ∀ n, P5827610320529366316.a n = A094572 (n + 1)

end A094572

/-!
# A094574: Number of (<=2)-covers of an n-set.

The programs for A094574, there is no canonical definition to state claims against.
-/

/-! ## A094574.P13280736808088140995

`A322770(∑[n]+n)`
-/

namespace A094574.P13280736808088140995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322770 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A094574.P13280736808088140995

/-! ## A094574.P13462858591632523816

`A346517(∑[4*n])`
-/

namespace A094574.P13462858591632523816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094574.P13462858591632523816

/-! ## A094574.P5916344531156086676

`A304042(n)*A346517(A046092(n))`
-/

namespace A094574.P5916344531156086676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A346517 (A046092 n).toNat

end

end A094574.P5916344531156086676

/-! ## A094574.P9746165463078691936

`gcd(A000038(n), A346517(A046092(n)))`
-/

namespace A094574.P9746165463078691936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A346517 (A046092 n).toNat)

end

end A094574.P9746165463078691936

/-! ## A094574.P545730332424949720

`lcm(A033999(n), A346517(A046092(n)))`
-/

namespace A094574.P545730332424949720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A346517 (A046092 n).toNat)

end

end A094574.P545730332424949720

/-!
# A094575: Numbers k with property that binomial(2k, k) / (k-1) is an integer.

The programs for A094575, there is no canonical definition to state claims against.
-/

/-! ## A094575.P16399728618877511230

`A227902(n+1)+1`
-/

namespace A094575.P16399728618877511230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227902 (n + 1) + 1

end

end A094575.P16399728618877511230

/-! ## A094575.P5677444588701039596

`record[gcd(2*A059288(n+1), n+1)]+1`
-/

namespace A094575.P5677444588701039596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A059288 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A094575.P5677444588701039596

/-! ## A094575.P9164105789863843821

`record[gcd(2*A071416(n+1), 3*(n+1))]+1`
-/

namespace A094575.P9164105789863843821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A071416 (n + 1)) (3 * (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A094575.P9164105789863843821

/-! ## A094575.P7848324228924412450

`A020725(A227902(n+1))`
-/

namespace A094575.P7848324228924412450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A227902 (n + 1)).toNat

end

end A094575.P7848324228924412450

/-! ## A094575.P8850699380525306455

`record[gcd(n+1, A005843(A071416(n+1)))]+1`
-/

namespace A094575.P8850699380525306455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005843 (A071416 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A094575.P8850699380525306455

/-! ## A094575.P994196583974535337

`record[gcd(n, A042948(A053214(n)))+1]`
-/

namespace A094575.P994196583974535337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A042948 (A053214 n).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094575.P994196583974535337

/-!
# A094577: Central Peirce numbers. Number of set partitions of {1,2,..,2n+1} in which n+1 is the smallest of its block.

The programs for A094577, the canonical program `A094577.P1451039708068514340` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094577 has offset 0).

The definition of A094577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094577.P1451039708068514340

`∑{#}[n, C(n, #)*A000110(n+#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094577

/-- `∑{#}[n, C(n, #)*A000110(n+#)]` -/
def P1451039708068514340.Spec : Prop :=
  ∀ n, P1451039708068514340.a n = A094577 n

theorem P1451039708068514340.correct : P1451039708068514340.Spec := by
  intro n
  simp only [A094577]

end A094577

/-! ## A094577.P8366113341226121829

`A216078(Δ[n²])`
-/

namespace A094577.P8366113341226121829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094577.P8366113341226121829

namespace A094577

/-- `A216078(Δ[n²])` -/
def P8366113341226121829.Spec : Prop :=
  ∀ n, P8366113341226121829.a n = A094577 n

end A094577

/-! ## A094577.P7561251441924707228

`A216332(Δ[n²])`
-/

namespace A094577.P7561251441924707228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216332 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094577.P7561251441924707228

namespace A094577

/-- `A216332(Δ[n²])` -/
def P7561251441924707228.Spec : Prop :=
  ∀ n, P7561251441924707228.a n = A094577 n

end A094577

/-! ## A094577.P12834875890896330822

`A011972(2*n²)`
-/

namespace A094577.P12834875890896330822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (2 * n ^ 2)

end

end A094577.P12834875890896330822

namespace A094577

/-- `A011972(2*n²)` -/
def P12834875890896330822.Spec : Prop :=
  ∀ n, P12834875890896330822.a n = A094577 n

end A094577

/-! ## A094577.P11588591568026135782

`A011971(∑[4*n])`
-/

namespace A094577.P11588591568026135782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094577.P11588591568026135782

namespace A094577

/-- `A011971(∑[4*n])` -/
def P11588591568026135782.Spec : Prop :=
  ∀ n, P11588591568026135782.a n = A094577 n

end A094577

/-!
# A094578: A094559/4.

The programs for A094578, there is no canonical definition to state claims against.
-/

/-! ## A094578.P11195380851686664526

`A094559(n)/4`
-/

namespace A094578.P11195380851686664526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094559 n : ℚ) / 4

end

end A094578.P11195380851686664526

/-! ## A094578.P9554460293704441686

`(4^n-A019309(n))/4`
-/

namespace A094578.P9554460293704441686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - A019309 n : ℚ) / 4

end

end A094578.P9554460293704441686

/-! ## A094578.P5321909756689274085

`floor(A342240(A141214(n))/4)`
-/

namespace A094578.P5321909756689274085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342240 (A141214 n).toNat : ℚ) / 4⌋

end

end A094578.P5321909756689274085

/-! ## A094578.P8237157137171007582

`A000302(n)%A019309(n)/4`
-/

namespace A094578.P8237157137171007582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000302 n) (A019309 n) : ℚ) / 4

end

end A094578.P8237157137171007582

/-! ## A094578.P7278349834254978576

`A155543(n)%A019309(n)/4`
-/

namespace A094578.P7278349834254978576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A155543 n) (A019309 n) : ℚ) / 4

end

end A094578.P7278349834254978576

/-!
# A094580: In decimal expansion of Pi=3.1415...: smallest k > n such that the k-th digit equals the n-th digit.

The programs for A094580, there is no canonical definition to state claims against.
-/

/-! ## A094580.P4237794204907995872

`A094581(n+1)+n+1`
-/

namespace A094580.P4237794204907995872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094581 (n + 1) + (n + 1 : ℤ)

end

end A094580.P4237794204907995872

/-! ## A094580.P18272432665498077133

`A094581(n+1)+1+n`
-/

namespace A094580.P18272432665498077133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094581 (n + 1) + 1 + (n : ℤ)

end

end A094580.P18272432665498077133

/-! ## A094580.P16666435537097900475

`A065254(A065253(n+1)+10)`
-/

namespace A094580.P16666435537097900475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A065253 (n + 1) + 10).toNat

end

end A094580.P16666435537097900475

/-! ## A094580.P16265450322605333356

`A020725(A094581(n+1)+n)`
-/

namespace A094580.P16265450322605333356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A094581 (n + 1) + (n : ℤ)).toNat

end

end A094580.P16265450322605333356

/-! ## A094580.P14214530178078106400

`A114637(A094581(n+1)+n)`
-/

namespace A094580.P14214530178078106400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (A094581 (n + 1) + (n : ℤ)).toNat

end

end A094580.P14214530178078106400

/-! ## A094580.P9866165600406150648

`A326178(A094581(n+1)+n)`
-/

namespace A094580.P9866165600406150648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A094581 (n + 1) + (n : ℤ)).toNat

end

end A094580.P9866165600406150648

/-!
# A094581: In decimal expansion of Pi=3.1415...: smallest k > 0 such that the (n+k)-th digit equals the n-th digit.

The programs for A094581, there is no canonical definition to state claims against.
-/

/-! ## A094581.P4458953643624559111

`A094580(n+1)-(n+1)`
-/

namespace A094581.P4458953643624559111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094580 (n + 1) - (n + 1 : ℤ)

end

end A094581.P4458953643624559111

/-! ## A094581.P12205158525954723473

`A065254(A065253(n+1)+10)-(n+1)`
-/

namespace A094581.P12205158525954723473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A065253 (n + 1) + 10).toNat - (n + 1 : ℤ)

end

end A094581.P12205158525954723473

/-! ## A094581.P2154174386514334149

`A002837(A094580(n+1)-n)`
-/

namespace A094581.P2154174386514334149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P2154174386514334149

/-! ## A094581.P14238897181638128450

`A023443(A094580(n+1)-n)`
-/

namespace A094581.P14238897181638128450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P14238897181638128450

/-! ## A094581.P14682835206470833209

`A033619(A094580(n+1)-n)`
-/

namespace A094581.P14682835206470833209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P14682835206470833209

/-! ## A094581.P16581689188185942097

`A130696(A094580(n+1)-n)`
-/

namespace A094581.P16581689188185942097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P16581689188185942097

/-! ## A094581.P17558511912182132122

`A130734(A094580(n+1)-n)`
-/

namespace A094581.P17558511912182132122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P17558511912182132122

/-! ## A094581.P1458122403315043291

`A136602(A094580(n+1)-n)`
-/

namespace A094581.P1458122403315043291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P1458122403315043291

/-! ## A094581.P3948084402332647761

`A308702(A094580(n+1)-n)`
-/

namespace A094581.P3948084402332647761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308702 (A094580 (n + 1) - (n : ℤ)).toNat

end

end A094581.P3948084402332647761

/-!
# A094584: Dot product of (1,2,...,n) and first n distinct Fibonacci numbers.

The programs for A094584, the canonical program `A094584.P6183140467260434020` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094584 has offset 1).

The definition of A094584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094584.P3627284375253449666

`ogf((1+2x)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A094584.P3627284375253449666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 1, 3, -1, -1] n

end

end A094584.P3627284375253449666

namespace A094584

/-- `ogf((1+2x)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P3627284375253449666.Spec : Prop :=
  ∀ n, P3627284375253449666.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P13534640880549317118

`(n+1)*A000045(n+4)-A000045(n+5)+3`
-/

namespace A094584.P13534640880549317118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (n + 4) - A000045 (n + 5) + 3

end

end A094584.P13534640880549317118

namespace A094584

/-- `(n+1)*A000045(n+4)-A000045(n+5)+3` -/
def P13534640880549317118.Spec : Prop :=
  ∀ n, P13534640880549317118.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P6183140467260434020

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=34, a(4)=74`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094584

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P6183140467260434020.Spec : Prop :=
  ∀ n, P6183140467260434020.a n = A094584 (n + 1)

theorem P6183140467260434020.correct : P6183140467260434020.Spec := by
  intro n
  simp only [A094584, Nat.add_sub_cancel]

end A094584

/-! ## A094584.P17274315605619162619

`∑[ogf((1+2x)/(1-2x-x^2+2x^3+x^4))]`
-/

namespace A094584.P17274315605619162619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P17274315605619162619

namespace A094584

/-- `∑[ogf((1+2x)/(1-2x-x^2+2x^3+x^4))]` -/
def P17274315605619162619.Spec : Prop :=
  ∀ n, P17274315605619162619.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P17659892229023468887

`∑[(n+1)*∑[a(n-1)+a(n-2)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A094584.P17659892229023468887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P17659892229023468887

namespace A094584

/-- `∑[(n+1)*∑[a(n-1)+a(n-2)]]` -/
def P17659892229023468887.Spec : Prop :=
  ∀ n, (P17659892229023468887.a n : ℤ) = A094584 (n + 1)

end A094584

/-! ## A094584.P16823256227583957560

`∑[A023607(n+1)]`
-/

namespace A094584.P16823256227583957560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P16823256227583957560

namespace A094584

/-- `∑[A023607(n+1)]` -/
def P16823256227583957560.Spec : Prop :=
  ∀ n, P16823256227583957560.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P9543305566687883831

`∑[A123194(n)-3]`
-/

namespace A094584.P9543305566687883831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123194 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P9543305566687883831

namespace A094584

/-- `∑[A123194(n)-3]` -/
def P9543305566687883831.Spec : Prop :=
  ∀ n, P9543305566687883831.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P6459342531870367025

`∑[∑[A094588(n+1)]]`
-/

namespace A094584.P6459342531870367025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P6459342531870367025

namespace A094584

/-- `∑[∑[A094588(n+1)]]` -/
def P6459342531870367025.Spec : Prop :=
  ∀ n, P6459342531870367025.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P10828327119638885114

`∑[(n+1)*A000045(n+2)]`
-/

namespace A094584.P10828327119638885114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P10828327119638885114

namespace A094584

/-- `∑[(n+1)*A000045(n+2)]` -/
def P10828327119638885114.Spec : Prop :=
  ∀ n, P10828327119638885114.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P15926588262460968958

`∑[(n+1)*A212804(n+3)]`
-/

namespace A094584.P15926588262460968958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212804 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P15926588262460968958

namespace A094584

/-- `∑[(n+1)*A212804(n+3)]` -/
def P15926588262460968958.Spec : Prop :=
  ∀ n, P15926588262460968958.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P11484373782954409398

`∑[(n+1)*A324969(n+3)]`
-/

namespace A094584.P11484373782954409398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324969 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P11484373782954409398

namespace A094584

/-- `∑[(n+1)*A324969(n+3)]` -/
def P11484373782954409398.Spec : Prop :=
  ∀ n, P11484373782954409398.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P11169054333922859585

`∑[(n+1)*A096748(2*n)]`
-/

namespace A094584.P11169054333922859585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A096748 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P11169054333922859585

namespace A094584

/-- `∑[(n+1)*A096748(2*n)]` -/
def P11169054333922859585.Spec : Prop :=
  ∀ n, P11169054333922859585.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P1907766140544561655

`∑[(n+1)*A211228(2*n)]`
-/

namespace A094584.P1907766140544561655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211228 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P1907766140544561655

namespace A094584

/-- `∑[(n+1)*A211228(2*n)]` -/
def P1907766140544561655.Spec : Prop :=
  ∀ n, P1907766140544561655.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P17299973433576221479

`∑[A053602(2*n+1)*(n+1)]`
-/

namespace A094584.P17299973433576221479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P17299973433576221479

namespace A094584

/-- `∑[A053602(2*n+1)*(n+1)]` -/
def P17299973433576221479.Spec : Prop :=
  ∀ n, P17299973433576221479.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P15847736399484110706

`∑[(n+1)*A115339(2*n+1)]`
-/

namespace A094584.P15847736399484110706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115339 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P15847736399484110706

namespace A094584

/-- `∑[(n+1)*A115339(2*n+1)]` -/
def P15847736399484110706.Spec : Prop :=
  ∀ n, P15847736399484110706.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P9584024232792210890

`∑[(n+1)*A103609(2*(n+2))]`
-/

namespace A094584.P9584024232792210890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103609 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P9584024232792210890

namespace A094584

/-- `∑[(n+1)*A103609(2*(n+2))]` -/
def P9584024232792210890.Spec : Prop :=
  ∀ n, P9584024232792210890.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P6532371725022140511

`∑[(∑[A001611(n)-1]+1)*(n+1)]`
-/

namespace A094584.P6532371725022140511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P6532371725022140511

namespace A094584

/-- `∑[(∑[A001611(n)-1]+1)*(n+1)]` -/
def P6532371725022140511.Spec : Prop :=
  ∀ n, P6532371725022140511.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P12598268346807997648

`∑[∑[A131913(n)-A001629(n)]]`
-/

namespace A094584.P12598268346807997648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n - A001629 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094584.P12598268346807997648

namespace A094584

/-- `∑[∑[A131913(n)-A001629(n)]]` -/
def P12598268346807997648.Spec : Prop :=
  ∀ n, P12598268346807997648.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P13975264127277263548

`A178525(n+1)+A045925(n+1)`
-/

namespace A094584.P13975264127277263548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178525 (n + 1) + A045925 (n + 1)

end

end A094584.P13975264127277263548

namespace A094584

/-- `A178525(n+1)+A045925(n+1)` -/
def P13975264127277263548.Spec : Prop :=
  ∀ n, P13975264127277263548.a n = A094584 (n + 1)

end A094584

/-! ## A094584.P2687630374339120114

`A192306(n+1)+A190062(n+1)`
-/

namespace A094584.P2687630374339120114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192306 (n + 1) + A190062 (n + 1)

end

end A094584.P2687630374339120114

namespace A094584

/-- `A192306(n+1)+A190062(n+1)` -/
def P2687630374339120114.Spec : Prop :=
  ∀ n, P2687630374339120114.a n = A094584 (n + 1)

end A094584

/-!
# A094585: Triangle T of all positive differences of distinct Fibonacci numbers; also, triangle of all sums of consecutive distinct Fibonacci numbers.

The programs for A094585, the canonical program `A094585.P14412693458980172051` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094585 has offset 1).

The definition of A094585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094585.P11800800648773515535

`T(row(n)-2, row(n)-2)+T(n-1,k-1)+2` with `a(0)=1`
-/

namespace A094585.P11800800648773515535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triRow n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n + 2

end

end A094585.P11800800648773515535

namespace A094585

/-- `T(row(n)-2, row(n)-2)+T(n-1,k-1)+2` -/
def P11800800648773515535.Spec : Prop :=
  ∀ n, (P11800800648773515535.a n : ℤ) = A094585 (n + 1)

end A094585

/-! ## A094585.P4901522473354293657

`A108035(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A094585.P4901522473354293657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108035 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A094585.P4901522473354293657

namespace A094585

/-- `A108035(n+1)+T(n-1,k-1)` -/
def P4901522473354293657.Spec : Prop :=
  ∀ n, P4901522473354293657.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P17214650355334496084

`A193999(A038722(n+1))`
-/

namespace A094585.P17214650355334496084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193999 (A038722 (n + 1)).toNat

end

end A094585.P17214650355334496084

namespace A094585

/-- `A193999(A038722(n+1))` -/
def P17214650355334496084.Spec : Prop :=
  ∀ n, P17214650355334496084.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P17507216683329358165

`A193999(A061579(n)+1)`
-/

namespace A094585.P17507216683329358165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193999 (A061579 n + 1).toNat

end

end A094585.P17507216683329358165

namespace A094585

/-- `A193999(A061579(n)+1)` -/
def P17507216683329358165.Spec : Prop :=
  ∀ n, P17507216683329358165.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P2882982553373010313

`A193999(A093995(n+1)-n)`
-/

namespace A094585.P2882982553373010313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193999 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A094585.P2882982553373010313

namespace A094585

/-- `A193999(A093995(n+1)-n)` -/
def P2882982553373010313.Spec : Prop :=
  ∀ n, P2882982553373010313.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P17730237337266028984

`A193999(A127739(n+1)-A002262(n))`
-/

namespace A094585.P17730237337266028984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193999 (A127739 (n + 1) - A002262 n).toNat

end

end A094585.P17730237337266028984

namespace A094585

/-- `A193999(A127739(n+1)-A002262(n))` -/
def P17730237337266028984.Spec : Prop :=
  ∀ n, P17730237337266028984.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P6436373431694568158

`A143061(comp[∑[n]])`
-/

namespace A094585.P6436373431694568158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A094585.P6436373431694568158

namespace A094585

/-- `A143061(comp[∑[n]])` -/
def P6436373431694568158.Spec : Prop :=
  ∀ n, P6436373431694568158.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P16695880495880959015

`or(char[2], A143061(A014132(n+1)))`
-/

namespace A094585.P16695880495880959015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A143061 (A014132 (n + 1)).toNat)

end

end A094585.P16695880495880959015

namespace A094585

/-- `or(char[2], A143061(A014132(n+1)))` -/
def P16695880495880959015.Spec : Prop :=
  ∀ n, P16695880495880959015.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P14412693458980172051

`gcd(A000038(n), A143061(A014132(n+1)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A094585

/-- `gcd(A000038(n), A143061(A014132(n+1)))` -/
def P14412693458980172051.Spec : Prop :=
  ∀ n, (P14412693458980172051.a n : ℤ) = A094585 (n + 1)

theorem P14412693458980172051.correct : P14412693458980172051.Spec := by
  intro n
  simp only [A094585, Nat.add_sub_cancel]

end A094585

/-! ## A094585.P13321499710629876951

`A204922(A099375(n)+2+n)`
-/

namespace A094585.P13321499710629876951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A099375 n + 2 + (n : ℤ)).toNat

end

end A094585.P13321499710629876951

namespace A094585

/-- `A204922(A099375(n)+2+n)` -/
def P13321499710629876951.Spec : Prop :=
  ∀ n, P13321499710629876951.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P13222603152188564234

`A204922(A114327(n)+∑[A035214(n)]+1)`
-/

namespace A094585.P13222603152188564234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A114327 n + ∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A094585.P13222603152188564234

namespace A094585

/-- `A204922(A114327(n)+∑[A035214(n)]+1)` -/
def P13222603152188564234.Spec : Prop :=
  ∀ n, P13222603152188564234.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P4376086383111428395

`A143061(eq[0, A103452(n)])-A143061(n+1)`
-/

namespace A094585.P4376086383111428395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A143061 (n + 1)

end

end A094585.P4376086383111428395

namespace A094585

/-- `A143061(eq[0, A103452(n)])-A143061(n+1)` -/
def P4376086383111428395.Spec : Prop :=
  ∀ n, P4376086383111428395.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P12916958566981129928

`A143061(n+1)+A005206(A143061(n+1)-A023531(n))`
-/

namespace A094585.P12916958566981129928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1) + A005206 (A143061 (n + 1) - A023531 n).toNat

end

end A094585.P12916958566981129928

namespace A094585

/-- `A143061(n+1)+A005206(A143061(n+1)-A023531(n))` -/
def P12916958566981129928.Spec : Prop :=
  ∀ n, P12916958566981129928.a n = A094585 (n + 1)

end A094585

/-! ## A094585.P18414831665499021377

`A143061(A014132(n+1))+A000038(A143061(n+1))`
-/

namespace A094585.P18414831665499021377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A014132 (n + 1)).toNat + A000038 (A143061 (n + 1)).toNat

end

end A094585.P18414831665499021377

namespace A094585

/-- `A143061(A014132(n+1))+A000038(A143061(n+1))` -/
def P18414831665499021377.Spec : Prop :=
  ∀ n, P18414831665499021377.a n = A094585 (n + 1)

end A094585

/-!
# A094586: Central numbers of the triangle T of all positive differences of distinct Fibonacci numbers.

The programs for A094586, the canonical program `A094586.P9585385224989447790` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094586 has offset 1).

The definition of A094586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094586.P6550783349527324686

`ogf((1+x-x^2)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A094586.P6550783349527324686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -4, 3, 2, -1] n

end

end A094586.P6550783349527324686

namespace A094586

/-- `ogf((1+x-x^2)/(1-4x+3x^2+2x^3-x^4))` -/
def P6550783349527324686.Spec : Prop :=
  ∀ n, P6550783349527324686.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P9585385224989447790

`A000045(2*(n+1)+2)-A000045(n+3)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A094586

/-- `A000045(2*(n+1)+2)-A000045(n+3)` -/
def P9585385224989447790.Spec : Prop :=
  ∀ n, P9585385224989447790.a n = A094586 (n + 1)

theorem P9585385224989447790.correct : P9585385224989447790.Spec := by
  intro n
  simp only [A094586, Nat.add_sub_cancel]

end A094586

/-! ## A094586.P13342300376659295476

`A094585(C(2*(n+1)-1, 2)+n+1)`
-/

namespace A094586.P13342300376659295476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A094586.P13342300376659295476

namespace A094586

/-- `A094585(C(2*(n+1)-1, 2)+n+1)` -/
def P13342300376659295476.Spec : Prop :=
  ∀ n, P13342300376659295476.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P12809241488552262600

`A129361(Δ[n²])`
-/

namespace A094586.P12809241488552262600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A094586.P12809241488552262600

namespace A094586

/-- `A129361(Δ[n²])` -/
def P12809241488552262600.Spec : Prop :=
  ∀ n, P12809241488552262600.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P10266193726051327995

`∑{#}[n, A000045(#+n+2)]`
-/

namespace A094586.P10266193726051327995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000045 (k + n + 2)

end

end A094586.P10266193726051327995

namespace A094586

/-- `∑{#}[n, A000045(#+n+2)]` -/
def P10266193726051327995.Spec : Prop :=
  ∀ n, P10266193726051327995.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P5809745814993840070

`a(n-1)+A087124(n)+a(n-1)` with `a(0)=1`
-/

namespace A094586.P5809745814993840070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A087124 n + a (n - 1))

end

end A094586.P5809745814993840070

namespace A094586

/-- `a(n-1)+A087124(n)+a(n-1)` -/
def P5809745814993840070.Spec : Prop :=
  ∀ n, P5809745814993840070.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P639066893217518753

`A362067(n)+A096140(n+1)`
-/

namespace A094586.P639066893217518753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n + A096140 (n + 1)

end

end A094586.P639066893217518753

namespace A094586

/-- `A362067(n)+A096140(n+1)` -/
def P639066893217518753.Spec : Prop :=
  ∀ n, P639066893217518753.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P15559896652998707

`A020701(2*n)-A020695(n)`
-/

namespace A094586.P15559896652998707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) - A020695 n

end

end A094586.P15559896652998707

namespace A094586

/-- `A020701(2*n)-A020695(n)` -/
def P15559896652998707.Spec : Prop :=
  ∀ n, P15559896652998707.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P13545290333764288902

`A048584(2*n)-A018910(n)`
-/

namespace A094586.P13545290333764288902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 (2 * n) - A018910 n

end

end A094586.P13545290333764288902

namespace A094586

/-- `A048584(2*n)-A018910(n)` -/
def P13545290333764288902.Spec : Prop :=
  ∀ n, P13545290333764288902.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P6631978752695362009

`A020706(2*n)-A048577(n)`
-/

namespace A094586.P6631978752695362009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 (2 * n) - A048577 n

end

end A094586.P6631978752695362009

namespace A094586

/-- `A020706(2*n)-A048577(n)` -/
def P6631978752695362009.Spec : Prop :=
  ∀ n, P6631978752695362009.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P9827059987514955026

`A001911(Δ[n²])-A001911(n)`
-/

namespace A094586.P9827059987514955026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A001911 n

end

end A094586.P9827059987514955026

namespace A094586

/-- `A001911(Δ[n²])-A001911(n)` -/
def P9827059987514955026.Spec : Prop :=
  ∀ n, P9827059987514955026.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P10359068786590472228

`A018910(Δ[n²])-A018910(n)`
-/

namespace A094586.P10359068786590472228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A018910 n

end

end A094586.P10359068786590472228

namespace A094586

/-- `A018910(Δ[n²])-A018910(n)` -/
def P10359068786590472228.Spec : Prop :=
  ∀ n, P10359068786590472228.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P8977325519731000607

`A020695(Δ[n²])-A020695(n)`
-/

namespace A094586.P8977325519731000607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A020695 n

end

end A094586.P8977325519731000607

namespace A094586

/-- `A020695(Δ[n²])-A020695(n)` -/
def P8977325519731000607.Spec : Prop :=
  ∀ n, P8977325519731000607.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P6838198421810598512

`A048577(Δ[n²])-A048577(n)`
-/

namespace A094586.P6838198421810598512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A048577 n

end

end A094586.P6838198421810598512

namespace A094586

/-- `A048577(Δ[n²])-A048577(n)` -/
def P6838198421810598512.Spec : Prop :=
  ∀ n, P6838198421810598512.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P7901800088633053174

`A020701(2*n)-Δ[A020701(n)]`
-/

namespace A094586.P7901800088633053174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) - (f1 (n + 1) - f1 n)

end

end A094586.P7901800088633053174

namespace A094586

/-- `A020701(2*n)-Δ[A020701(n)]` -/
def P7901800088633053174.Spec : Prop :=
  ∀ n, P7901800088633053174.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P9757353308903291388

`A362067(n+1)-A000045(n+1)`
-/

namespace A094586.P9757353308903291388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 (n + 1) - A000045 (n + 1)

end

end A094586.P9757353308903291388

namespace A094586

/-- `A362067(n+1)-A000045(n+1)` -/
def P9757353308903291388.Spec : Prop :=
  ∀ n, P9757353308903291388.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P18102174269500319476

`A035508(n+1)-A000071(n+3)`
-/

namespace A094586.P18102174269500319476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 (n + 1) - A000071 (n + 3)

end

end A094586.P18102174269500319476

namespace A094586

/-- `A035508(n+1)-A000071(n+3)` -/
def P18102174269500319476.Spec : Prop :=
  ∀ n, P18102174269500319476.a n = A094586 (n + 1)

theorem P18102174269500319476.correct : P18102174269500319476.Spec := by
  intro n
  simp only [A094586, Nat.add_sub_cancel, A094586.P18102174269500319476.a, A094586.P9585385224989447790.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A035508, A035508.P9420847389558792345.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094586

/-! ## A094586.P14694916284505209397

`A097040(n+2)+A052952(2*n)`
-/

namespace A094586.P14694916284505209397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097040 (n + 2) + A052952 (2 * n)

end

end A094586.P14694916284505209397

namespace A094586

/-- `A097040(n+2)+A052952(2*n)` -/
def P14694916284505209397.Spec : Prop :=
  ∀ n, P14694916284505209397.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P10725816638774762038

`A147600(2*n)+A097040(n+2)`
-/

namespace A094586.P10725816638774762038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) + A097040 (n + 2)

end

end A094586.P10725816638774762038

namespace A094586

/-- `A147600(2*n)+A097040(n+2)` -/
def P10725816638774762038.Spec : Prop :=
  ∀ n, P10725816638774762038.a n = A094586 (n + 1)

end A094586

/-! ## A094586.P9343308799038412832

`A020701(2*n)-A000045(n+3)`
-/

namespace A094586.P9343308799038412832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (2 * n) - A000045 (n + 3)

end

end A094586.P9343308799038412832

namespace A094586

/-- `A020701(2*n)-A000045(n+3)` -/
def P9343308799038412832.Spec : Prop :=
  ∀ n, P9343308799038412832.a n = A094586 (n + 1)

end A094586

/-!
# A094587: Triangle of permutation coefficients arranged with 1's on the diagonal. Also, triangle of permutations on n letters with exactly k+1 cycles and with the first k+1 letters in separate cycles.

The programs for A094587, the canonical program `A094587.P6750998556998478269` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094587 has offset 0).

The definition of A094587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094587.P15771479810762564581

`row(n)!/col(n)!`
-/

namespace A094587.P15771479810762564581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A094587.P15771479810762564581

namespace A094587

/-- `row(n)!/col(n)!` -/
def P15771479810762564581.Spec : Prop :=
  ∀ n, P15771479810762564581.a n = (A094587 n : ℚ)

end A094587

/-! ## A094587.P6750998556998478269

`(row(n)-col(n))*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094587

/-- `(row(n)-col(n))*T(n-1,k)+T(n-1,k-1)` -/
def P6750998556998478269.Spec : Prop :=
  ∀ n, P6750998556998478269.a n = A094587 n

theorem P6750998556998478269.correct : P6750998556998478269.Spec := by
  intro n
  simp only [A094587]

end A094587

/-! ## A094587.P10367225766629653925

`T(n-1,k-1)-(col(n)-row(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A094587.P10367225766629653925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp a n

end

end A094587.P10367225766629653925

namespace A094587

/-- `T(n-1,k-1)-(col(n)-row(n))*T(n-1,k)` -/
def P10367225766629653925.Spec : Prop :=
  ∀ n, P10367225766629653925.a n = A094587 n

end A094587

/-! ## A094587.P5344531253921063893

`T(1, 2*T(n-1,k))+row(n)*T(n-1,k)` with `a(0)=1`
-/

namespace A094587.P5344531253921063893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a 1 (2 * SequenceMachineLib.triUp a n : ℤ) + SequenceMachineLib.triRow n * SequenceMachineLib.triUp a n

end

end A094587.P5344531253921063893

namespace A094587

/-- `T(1, 2*T(n-1,k))+row(n)*T(n-1,k)` -/
def P5344531253921063893.Spec : Prop :=
  ∀ n, (P5344531253921063893.a n : ℤ) = A094587 n

end A094587

/-! ## A094587.P6936947914925500341

`T(n-2,k-1)+T(n-1,k-1)+(T(n-1,k)-T(n-2,k-1))*row(n)` with `a(0)=1`
-/

namespace A094587.P6936947914925500341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ)

end

end A094587.P6936947914925500341

namespace A094587

/-- `T(n-2,k-1)+T(n-1,k-1)+(T(n-1,k)-T(n-2,k-1))*row(n)` -/
def P6936947914925500341.Spec : Prop :=
  ∀ n, P6936947914925500341.a n = A094587 n

end A094587

/-! ## A094587.P9487597403380366628

`(row(n)-col(n))!*C(row(n), col(n))`
-/

namespace A094587.P9487597403380366628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A094587.P9487597403380366628

namespace A094587

/-- `(row(n)-col(n))!*C(row(n), col(n))` -/
def P9487597403380366628.Spec : Prop :=
  ∀ n, (P9487597403380366628.a n : ℤ) = A094587 n

end A094587

/-! ## A094587.P12203148142936307174

`(C(comp[∑[n]]-n, 2)-(n+1))!*A007318(n)`
-/

namespace A094587.P12203148142936307174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A007318 n

end

end A094587.P12203148142936307174

namespace A094587

/-- `(C(comp[∑[n]]-n, 2)-(n+1))!*A007318(n)` -/
def P12203148142936307174.Spec : Prop :=
  ∀ n, P12203148142936307174.a n = A094587 n

end A094587

/-! ## A094587.P14878234686992178424

`A008279(A061579(n))`
-/

namespace A094587.P14878234686992178424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat

end

end A094587.P14878234686992178424

namespace A094587

/-- `A008279(A061579(n))` -/
def P14878234686992178424.Spec : Prop :=
  ∀ n, P14878234686992178424.a n = A094587 n

end A094587

/-! ## A094587.P3840244283484923367

`A138108(A133280(n))`
-/

namespace A094587.P3840244283484923367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138108 (A133280 n).toNat

end

end A094587.P3840244283484923367

namespace A094587

/-- `A138108(A133280(n))` -/
def P3840244283484923367.Spec : Prop :=
  ∀ n, P3840244283484923367.a n = A094587 n

end A094587

/-! ## A094587.P13861842382947910630

`A155162(n)-A008279(n)`
-/

namespace A094587.P13861842382947910630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 n - A008279 n

end

end A094587.P13861842382947910630

namespace A094587

/-- `A155162(n)-A008279(n)` -/
def P13861842382947910630.Spec : Prop :=
  ∀ n, P13861842382947910630.a n = A094587 n

end A094587

/-! ## A094587.P2853756265026833477

`A007318(n)*A119502(n)`
-/

namespace A094587.P2853756265026833477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A119502 n

end

end A094587.P2853756265026833477

namespace A094587

/-- `A007318(n)*A119502(n)` -/
def P2853756265026833477.Spec : Prop :=
  ∀ n, P2853756265026833477.a n = A094587 n

end A094587

/-! ## A094587.P2330132118125640884

`A126064(n)/A059268(n)`
-/

namespace A094587.P2330132118125640884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126064 n : ℚ) / (A059268 n : ℚ)

end

end A094587.P2330132118125640884

namespace A094587

/-- `A126064(n)/A059268(n)` -/
def P2330132118125640884.Spec : Prop :=
  ∀ n, P2330132118125640884.a n = (A094587 n : ℚ)

end A094587

/-! ## A094587.P11683367537936143267

`sqrt(A008459(n))*A119502(n)`
-/

namespace A094587.P11683367537936143267
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A119502 n : ℝ)

end

end A094587.P11683367537936143267

namespace A094587

/-- `sqrt(A008459(n))*A119502(n)` -/
def P11683367537936143267.Spec : Prop :=
  ∀ n, P11683367537936143267.a n = (A094587 n : ℝ)

end A094587

/-! ## A094587.P8027707690506183549

`A025581(n)!*A007318(n)`
-/

namespace A094587.P8027707690506183549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A007318 n

end

end A094587.P8027707690506183549

namespace A094587

/-- `A025581(n)!*A007318(n)` -/
def P8027707690506183549.Spec : Prop :=
  ∀ n, P8027707690506183549.a n = A094587 n

end A094587

/-! ## A094587.P11145953191072895941

`A008279(A038722(n+1)-1)`
-/

namespace A094587.P11145953191072895941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A038722 (n + 1) - 1).toNat

end

end A094587.P11145953191072895941

namespace A094587

/-- `A008279(A038722(n+1)-1)` -/
def P11145953191072895941.Spec : Prop :=
  ∀ n, P11145953191072895941.a n = A094587 n

end A094587

/-! ## A094587.P12095084474583536803

`A028326(n)/2*A119502(n)`
-/

namespace A094587.P12095084474583536803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A119502 n : ℚ)

end

end A094587.P12095084474583536803

namespace A094587

/-- `A028326(n)/2*A119502(n)` -/
def P12095084474583536803.Spec : Prop :=
  ∀ n, P12095084474583536803.a n = (A094587 n : ℚ)

end A094587

/-! ## A094587.P6591810687346752345

`(A004736(n+1)-1)!*ceil(A134059(n)/3)`
-/

namespace A094587.P6591810687346752345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1) - 1).toNat : ℤ) * ⌈(A134059 n : ℚ) / 3⌉

end

end A094587.P6591810687346752345

namespace A094587

/-- `(A004736(n+1)-1)!*ceil(A134059(n)/3)` -/
def P6591810687346752345.Spec : Prop :=
  ∀ n, P6591810687346752345.a n = A094587 n

end A094587

/-! ## A094587.P17449600384485760016

`A007318(n)*A081123(A099375(n))`
-/

namespace A094587.P17449600384485760016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A081123 (A099375 n).toNat

end

end A094587.P17449600384485760016

namespace A094587

/-- `A007318(n)*A081123(A099375(n))` -/
def P17449600384485760016.Spec : Prop :=
  ∀ n, P17449600384485760016.a n = A094587 n

end A094587

/-! ## A094587.P16202003682590018753

`A007318(n)*A081123(2*A025581(n))`
-/

namespace A094587.P16202003682590018753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A081123 (2 * A025581 n).toNat

end

end A094587.P16202003682590018753

namespace A094587

/-- `A007318(n)*A081123(2*A025581(n))` -/
def P16202003682590018753.Spec : Prop :=
  ∀ n, P16202003682590018753.a n = A094587 n

end A094587

/-! ## A094587.P2907165932401096034

`A025581(n)!*C(A003056(n), A002262(n))`
-/

namespace A094587.P2907165932401096034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025581 n).toNat * Nat.choose (A003056 n).toNat (A002262 n).toNat

end

end A094587.P2907165932401096034

namespace A094587

/-- `A025581(n)!*C(A003056(n), A002262(n))` -/
def P2907165932401096034.Spec : Prop :=
  ∀ n, (P2907165932401096034.a n : ℤ) = A094587 n

end A094587

/-!
# A094588: a(n) = n*F(n-1) + F(n), where F = A000045.

The programs for A094588, the canonical program `A094588.P7499974636102139960` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094588 has offset 0).

The definition of A094588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094588.P7499974636102139960

`ogf((x+x^2-2x^3)/(1-2x-x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A094588

/-- `ogf((x+x^2-2x^3)/(1-2x-x^2+2x^3+x^4))` -/
def P7499974636102139960.Spec : Prop :=
  ∀ n, P7499974636102139960.a n = A094588 n

theorem P7499974636102139960.correct : P7499974636102139960.Spec := by
  intro n
  simp only [A094588]

end A094588

/-! ## A094588.P1207723889033315856

`A109754(C(n+n+1, 2)+n)`
-/

namespace A094588.P1207723889033315856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109754 (Nat.choose (n + n + 1) 2 + n)

end

end A094588.P1207723889033315856

namespace A094588

/-- `A109754(C(n+n+1, 2)+n)` -/
def P1207723889033315856.Spec : Prop :=
  ∀ n, P1207723889033315856.a n = A094588 n

end A094588

/-! ## A094588.P2206646666125685981

`a(n-1)+A000032(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A094588.P2206646666125685981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (A000032 (n - 2) + a (n - 2))

end

end A094588.P2206646666125685981

namespace A094588

/-- `a(n-1)+A000032(n-2)+a(n-2)` -/
def P2206646666125685981.Spec : Prop :=
  ∀ n, P2206646666125685981.a n = A094588 n

end A094588

/-! ## A094588.P10288242851874573499

`A001629(n)+Δ[A208354(n)]`
-/

namespace A094588.P10288242851874573499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (f1 (n + 1) - f1 n)

end

end A094588.P10288242851874573499

namespace A094588

/-- `A001629(n)+Δ[A208354(n)]` -/
def P10288242851874573499.Spec : Prop :=
  ∀ n, P10288242851874573499.a n = A094588 n

end A094588

/-! ## A094588.P1587595010906922716

`A240847(n)+A001629(n+1)`
-/

namespace A094588.P1587595010906922716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 n + A001629 (n + 1)

end

end A094588.P1587595010906922716

namespace A094588

/-- `A240847(n)+A001629(n+1)` -/
def P1587595010906922716.Spec : Prop :=
  ∀ n, P1587595010906922716.a n = A094588 n

end A094588

/-! ## A094588.P8132156670070446844

`A006490(n+1)-A152163(n)`
-/

namespace A094588.P8132156670070446844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - A152163 n

end

end A094588.P8132156670070446844

namespace A094588

/-- `A006490(n+1)-A152163(n)` -/
def P8132156670070446844.Spec : Prop :=
  ∀ n, P8132156670070446844.a n = A094588 n

end A094588

/-! ## A094588.P5384559525036325821

`A029907(n+1)-A206268(n)`
-/

namespace A094588.P5384559525036325821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) - A206268 n

end

end A094588.P5384559525036325821

namespace A094588

/-- `A029907(n+1)-A206268(n)` -/
def P5384559525036325821.Spec : Prop :=
  ∀ n, P5384559525036325821.a n = A094588 n

end A094588

/-! ## A094588.P16087769177494363943

`A136391(n+1)-A212804(n)`
-/

namespace A094588.P16087769177494363943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) - A212804 n

end

end A094588.P16087769177494363943

namespace A094588

/-- `A136391(n+1)-A212804(n)` -/
def P16087769177494363943.Spec : Prop :=
  ∀ n, P16087769177494363943.a n = A094588 n

end A094588

/-! ## A094588.P4772834286535222285

`A271785(n)-A191830(n+1)`
-/

namespace A094588.P4772834286535222285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271785 n - A191830 (n + 1)

end

end A094588.P4772834286535222285

namespace A094588

/-- `A271785(n)-A191830(n+1)` -/
def P4772834286535222285.Spec : Prop :=
  ∀ n, P4772834286535222285.a n = A094588 n

end A094588

/-! ## A094588.P6385592686308379842

`A264147(n)+2*A000045(n)`
-/

namespace A094588.P6385592686308379842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 n + 2 * A000045 n

end

end A094588.P6385592686308379842

namespace A094588

/-- `A264147(n)+2*A000045(n)` -/
def P6385592686308379842.Spec : Prop :=
  ∀ n, P6385592686308379842.a n = A094588 n

end A094588

/-! ## A094588.P9869438886688358483

`A000045(n)+n*A212804(n)`
-/

namespace A094588.P9869438886688358483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (n : ℤ) * A212804 n

end

end A094588.P9869438886688358483

namespace A094588

/-- `A000045(n)+n*A212804(n)` -/
def P9869438886688358483.Spec : Prop :=
  ∀ n, P9869438886688358483.a n = A094588 n

end A094588

/-! ## A094588.P5064576241027719896

`A212804(n+1)+n*A212804(n)`
-/

namespace A094588.P5064576241027719896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (n : ℤ) * A212804 n

end

end A094588.P5064576241027719896

namespace A094588

/-- `A212804(n+1)+n*A212804(n)` -/
def P5064576241027719896.Spec : Prop :=
  ∀ n, P5064576241027719896.a n = A094588 n

end A094588

/-! ## A094588.P4114366648706318056

`A029907(n)+A029907(n)-A010049(n)`
-/

namespace A094588.P4114366648706318056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n + (A029907 n - A010049 n)

end

end A094588.P4114366648706318056

namespace A094588

/-- `A029907(n)+A029907(n)-A010049(n)` -/
def P4114366648706318056.Spec : Prop :=
  ∀ n, P4114366648706318056.a n = A094588 n

end A094588

/-! ## A094588.P5451529906786277486

`∑[A212804(n)]-A024000(n)*A212804(n)`
-/

namespace A094588.P5451529906786277486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024000 n * A212804 n

end

end A094588.P5451529906786277486

namespace A094588

/-- `∑[A212804(n)]-A024000(n)*A212804(n)` -/
def P5451529906786277486.Spec : Prop :=
  ∀ n, P5451529906786277486.a n = A094588 n

end A094588

/-! ## A094588.P2393502506324049064

`A001595(n+1)+A264147(n)-A001595(n)`
-/

namespace A094588.P2393502506324049064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) + (A264147 n - A001595 n)

end

end A094588.P2393502506324049064

namespace A094588

/-- `A001595(n+1)+A264147(n)-A001595(n)` -/
def P2393502506324049064.Spec : Prop :=
  ∀ n, P2393502506324049064.a n = A094588 n

end A094588

/-! ## A094588.P8632905944678071783

`A000045(n)+A029907(n)-A240847(n+1)`
-/

namespace A094588.P8632905944678071783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A029907 n - A240847 (n + 1))

end

end A094588.P8632905944678071783

namespace A094588

/-- `A000045(n)+A029907(n)-A240847(n+1)` -/
def P8632905944678071783.Spec : Prop :=
  ∀ n, P8632905944678071783.a n = A094588 n

end A094588

/-! ## A094588.P7775938796854118935

`A208354(n+1)+A001629(n)-A208354(n)`
-/

namespace A094588.P7775938796854118935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1) + (A001629 n - A208354 n)

end

end A094588.P7775938796854118935

namespace A094588

/-- `A208354(n+1)+A001629(n)-A208354(n)` -/
def P7775938796854118935.Spec : Prop :=
  ∀ n, P7775938796854118935.a n = A094588 n

end A094588

/-! ## A094588.P5712112379823890174

`A240847(n)+A271785(n)-A006355(n+1)`
-/

namespace A094588.P5712112379823890174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240847 n + (A271785 n - A006355 (n + 1))

end

end A094588.P5712112379823890174

namespace A094588

/-- `A240847(n)+A271785(n)-A006355(n+1)` -/
def P5712112379823890174.Spec : Prop :=
  ∀ n, P5712112379823890174.a n = A094588 n

end A094588

/-! ## A094588.P1290604084050159014

`A000045(n+1)+A136391(n+1)-A000032(n)`
-/

namespace A094588.P1290604084050159014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A136391 (n + 1) - A000032 n)

end

end A094588.P1290604084050159014

namespace A094588

/-- `A000045(n+1)+A136391(n+1)-A000032(n)` -/
def P1290604084050159014.Spec : Prop :=
  ∀ n, P1290604084050159014.a n = A094588 n

end A094588

/-! ## A094588.P9245149747893837482

`A136391(n+1)+A000045(n)-A000045(n+1)`
-/

namespace A094588.P9245149747893837482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) + (A000045 n - A000045 (n + 1))

end

end A094588.P9245149747893837482

namespace A094588

/-- `A136391(n+1)+A000045(n)-A000045(n+1)` -/
def P9245149747893837482.Spec : Prop :=
  ∀ n, P9245149747893837482.a n = A094588 n

end A094588

/-!
# A094589: a(1) = 1; a(n+1) = a(n) + (largest element of {a} <= n).

The programs for A094589, there is no canonical definition to state claims against.
-/

/-! ## A094589.P1031332023774678245

`A250983(n)+a(n-1)` with `a(0)=1`
-/

namespace A094589.P1031332023774678245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250983 n + a (n - 1)

end

end A094589.P1031332023774678245

/-! ## A094589.P17999196011921359948

`∑[A250983((n+1)%2+n)]`
-/

namespace A094589.P17999196011921359948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 ((n + 1) % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094589.P17999196011921359948

/-! ## A094589.P3142299415061598564

`∑[A250983(and(1, n+1)+n)]`
-/

namespace A094589.P3142299415061598564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (Nat.land 1 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094589.P3142299415061598564

/-! ## A094589.P2093673025302094444

`∑[A250983(A052928(n)+1)]`
-/

namespace A094589.P2093673025302094444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A052928 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094589.P2093673025302094444

/-! ## A094589.P3232599803308441333

`∑[A250983(val(A000040(n+1), 2)+n)]`
-/

namespace A094589.P3232599803308441333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094589.P3232599803308441333

/-! ## A094589.P4569106499521719413

`∑[A250983(n+1)]+1-A250983(n+1)`
-/

namespace A094589.P4569106499521719413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A250983 (n + 1))

end

end A094589.P4569106499521719413

/-! ## A094589.P17391402143985496709

`lt[0, char[A250983(n+1)]]`
-/

namespace A094589.P17391402143985496709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A094589.P17391402143985496709

/-! ## A094589.P11693916166743748418

`A250983(a(n-1)+n)` with `a(0)=1`
-/

namespace A094589.P11693916166743748418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250983 (a (n - 1) + (n : ℤ)).toNat

end

end A094589.P11693916166743748418

/-! ## A094589.P8352931687858679685

`record[A250983(A000010(n+1))]`
-/

namespace A094589.P8352931687858679685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094589.P8352931687858679685

/-! ## A094589.P11899987229646184940

`record[A250983(A006530(n+1))]`
-/

namespace A094589.P11899987229646184940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094589.P11899987229646184940

/-! ## A094589.P13340060349257165545

`record[A250983(A014963(n+1))]`
-/

namespace A094589.P13340060349257165545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A014963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094589.P13340060349257165545

/-! ## A094589.P4520462473320955852

`record[A250983(A020639(n+1))]`
-/

namespace A094589.P4520462473320955852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094589.P4520462473320955852

/-! ## A094589.P6788036608403327919

`eq[A109043(n), A250983(n+1)]`
-/

namespace A094589.P6788036608403327919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094589.P6788036608403327919

/-! ## A094589.P17149298907533523993

`record[A250983(A283988(n+2)+n)]`
-/

namespace A094589.P17149298907533523993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A283988 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094589.P17149298907533523993

/-! ## A094589.P2821582130728608068

`A250983(∑[A250983(n+1)])`
-/

namespace A094589.P2821582130728608068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094589.P2821582130728608068

/-! ## A094589.P12907355678542145707

`record[A250983(A250983(4*n+1)-n)]`
-/

namespace A094589.P12907355678542145707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250983 (A250983 (4 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094589.P12907355678542145707

/-!
# A094590: a(1) = 1; a(n+1) = a(n) * k(n), where k(n) is the number of elements of {a(j)}, 1<=j<=n, which are <= n.

The programs for A094590, there is no canonical definition to state claims against.
-/

/-! ## A094590.P7541025036152983030

`∏[runs[A084520(n)]]`
-/

namespace A094590.P7541025036152983030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084520 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094590.P7541025036152983030

/-! ## A094590.P4161515597952731120

`a(n-1)*A084526(n)` with `a(0)=1`
-/

namespace A094590.P4161515597952731120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A084526 n

end

end A094590.P4161515597952731120

/-! ## A094590.P13650689664886621007

`a(n-1)*A303370(2*n²)` with `a(0)=1`
-/

namespace A094590.P13650689664886621007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A303370 (2 * n ^ 2)

end

end A094590.P13650689664886621007

/-! ## A094590.P17834605309372360367

`∏[A084526(A028310(n))]`
-/

namespace A094590.P17834605309372360367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084526 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A094590.P17834605309372360367

/-! ## A094590.P7559395598773056169

`a(n-1)*A084556(A004275(n))` with `a(0)=1`
-/

namespace A094590.P7559395598773056169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A084556 (A004275 n).toNat

end

end A094590.P7559395598773056169

/-!
# A094591: a(0) = 1; a(n) = n + (largest element of {a} <= n).

The programs for A094591, there is no canonical definition to state claims against.
-/

/-! ## A094591.P11700405383098868775

`A272729(n)+a(n-1)` with `a(0)=1`
-/

namespace A094591.P11700405383098868775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272729 n + a (n - 1)

end

end A094591.P11700405383098868775

/-! ## A094591.P13996456963933381914

`∑[A272729(A000007(n)+n)]`
-/

namespace A094591.P13996456963933381914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094591.P13996456963933381914

/-! ## A094591.P6952714698830421437

`∑[A272729(A255308(2*n+1)+n)]`
-/

namespace A094591.P6952714698830421437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (A255308 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094591.P6952714698830421437

/-! ## A094591.P6473065199410438925

`and(-A272729(n+1), ∑[A272729(n+1)])`
-/

namespace A094591.P6473065199410438925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A272729 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094591.P6473065199410438925

/-! ## A094591.P1580830428203527923

`A359807(A037988(n))+1`
-/

namespace A094591.P1580830428203527923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359807 (A037988 n).toNat + 1

end

end A094591.P1580830428203527923

/-! ## A094591.P750961977631248361

`lt[A272729(2*n+1), A272729(2*(n+1))]+1`
-/

namespace A094591.P750961977631248361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A094591.P750961977631248361

/-! ## A094591.P13620387616621319626

`A008619(eq[0, A272728(n+1)])`
-/

namespace A094591.P13620387616621319626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094591.P13620387616621319626

/-! ## A094591.P11566283189235063330

`record[A008619(gcd(n, A272728(n+1)))]`
-/

namespace A094591.P11566283189235063330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.gcd (n : ℤ) (A272728 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094591.P11566283189235063330

/-! ## A094591.P7882279138740354294

`record[(1-A272728(n+1))*A008619(n)]`
-/

namespace A094591.P7882279138740354294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A272728 (n + 1)) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094591.P7882279138740354294

/-! ## A094591.P15662960654353130884

`record[(n+1)/A008619(A272728(2*n+1))]`
-/

namespace A094591.P15662960654353130884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008619 (A272728 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094591.P15662960654353130884

/-! ## A094591.P5456289192450320766

`∑[A272729(A002260(∑[n+2]-1))]`
-/

namespace A094591.P5456289192450320766
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (A002260 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094591.P5456289192450320766

/-!
# A094593: a(n) = (p-1)/x, where p = prime(n) and x = ord(3,p), the smallest positive integer such that 3^x == 1 mod p.

The programs for A094593, there is no canonical definition to state claims against.
-/

/-! ## A094593.P2511959082022308783

`(A000040(n+3)-1)/A062117(n+3)`
-/

namespace A094593.P2511959082022308783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) - 1 : ℚ) / (A062117 (n + 3) : ℚ)

end

end A094593.P2511959082022308783

/-! ## A094593.P14364200784714914406

`A006093(n+3)/A062117(n+3)`
-/

namespace A094593.P14364200784714914406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 3) : ℚ) / (A062117 (n + 3) : ℚ)

end

end A094593.P14364200784714914406

/-! ## A094593.P7211340756726209145

`ceil(A045319(n+1)/A062117(n+3))`
-/

namespace A094593.P7211340756726209145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045319 (n + 1) : ℚ) / (A062117 (n + 3) : ℚ)⌉

end

end A094593.P7211340756726209145

/-! ## A094593.P7066801968548149689

`ceil(A065091(n+1)/A062117(n+3))`
-/

namespace A094593.P7066801968548149689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065091 (n + 1) : ℚ) / (A062117 (n + 3) : ℚ)⌉

end

end A094593.P7066801968548149689

/-! ## A094593.P11239630856165544402

`ceil(A008578(n+3)/A062117(n+3))`
-/

namespace A094593.P11239630856165544402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008578 (n + 3) : ℚ) / (A062117 (n + 3) : ℚ)⌉

end

end A094593.P11239630856165544402

/-! ## A094593.P8532367787017434419

`round(A045319(n+2)/A062117(n+3))`
-/

namespace A094593.P8532367787017434419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045319 (n + 2) : ℚ) / (A062117 (n + 3) : ℚ))

end

end A094593.P8532367787017434419

/-! ## A094593.P10606196125842599912

`(A102781(n+3)+A102781(n+3))/A062117(n+3)`
-/

namespace A094593.P10606196125842599912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102781 (n + 3) + A102781 (n + 3) : ℚ) / (A062117 (n + 3) : ℚ)

end

end A094593.P10606196125842599912

/-! ## A094593.P12461838490079394251

`floor(A008578(n+4)/A062117(n+3))`
-/

namespace A094593.P12461838490079394251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 4) : ℚ) / (A062117 (n + 3) : ℚ)⌋

end

end A094593.P12461838490079394251

/-! ## A094593.P3580615413790045489

`A337714(A296058(n+2))`
-/

namespace A094593.P3580615413790045489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337714 (A296058 (n + 2)).toNat

end

end A094593.P3580615413790045489

/-! ## A094593.P3855056630578039647

`A327812(A215848(n+1))`
-/

namespace A094593.P3855056630578039647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (A215848 (n + 1)).toNat

end

end A094593.P3855056630578039647

/-! ## A094593.P3797895946543597045

`A327812(A045344(n+2))`
-/

namespace A094593.P3797895946543597045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (A045344 (n + 2)).toNat

end

end A094593.P3797895946543597045

/-! ## A094593.P13463588276029041871

`A327812(A065091(n+2))`
-/

namespace A094593.P13463588276029041871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (A065091 (n + 2)).toNat

end

end A094593.P13463588276029041871

/-! ## A094593.P1977898762451133605

`A327812(A140475(n+2))`
-/

namespace A094593.P1977898762451133605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (A140475 (n + 2)).toNat

end

end A094593.P1977898762451133605

/-! ## A094593.P3278586900979279478

`A023135(A000040(n+3))-1`
-/

namespace A094593.P3278586900979279478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023135 (A000040 (n + 3)).toNat - 1

end

end A094593.P3278586900979279478

/-! ## A094593.P12204457160659117260

`A327812(A197638(n+1)/2)`
-/

namespace A094593.P12204457160659117260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (SequenceMachineLib.roundAway ((A197638 (n + 1) : ℚ) / 2)).toNat

end

end A094593.P12204457160659117260

/-! ## A094593.P3272489140364605511

`A327812(A197638(n+1))`
-/

namespace A094593.P3272489140364605511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327812 (A197638 (n + 1)).toNat

end

end A094593.P3272489140364605511

/-!
# A094594: Total number of edges in all connected labeled graphs on n nodes.

The programs for A094594, there is no canonical definition to state claims against.
-/

/-! ## A094594.P7540260430016067402

`A351988(Δ[A020125(n)]²)`
-/

namespace A094594.P7540260430016067402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351988 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A094594.P7540260430016067402

/-!
# A094596: Number of solutions to the Lebesgue-Nagell equation x^2 + n = y^k with k > 2.

The programs for A094596, there is no canonical definition to state claims against.
-/

/-! ## A094596.P5412870450578906895

`A219648(A094597(n+2)^A086646(n))`
-/

namespace A094596.P5412870450578906895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 (SequenceMachineLib.roundAway ((A094597 (n + 2) : ℚ) ^ (A086646 n : ℤ))).toNat

end

end A094596.P5412870450578906895

/-! ## A094596.P11066061311821977223

`A085164(A094597(n+2)^A274391(n))`
-/

namespace A094596.P11066061311821977223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085164 (SequenceMachineLib.roundAway ((A094597 (n + 2) : ℚ) ^ (A274391 n : ℤ))).toNat

end

end A094596.P11066061311821977223

/-! ## A094596.P7836272003554226675

`A321142(A094597(n+2)^A092437(n))`
-/

namespace A094596.P7836272003554226675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321142 (SequenceMachineLib.roundAway ((A094597 (n + 2) : ℚ) ^ (A092437 n : ℤ))).toNat

end

end A094596.P7836272003554226675

/-! ## A094596.P16042330981872260024

`A219648(A094597(n+2)^A308498(n+1))`
-/

namespace A094596.P16042330981872260024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 (SequenceMachineLib.roundAway ((A094597 (n + 2) : ℚ) ^ (A308498 (n + 1) : ℤ))).toNat

end

end A094596.P16042330981872260024

/-! ## A094596.P11688283098063413871

`A321142(A094597(n+2)^A305685(n+1))`
-/

namespace A094596.P11688283098063413871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321142 (SequenceMachineLib.roundAway ((A094597 (n + 2) : ℚ) ^ (A305685 (n + 1) : ℤ))).toNat

end

end A094596.P11688283098063413871

/-!
# A094597: Number of solutions to the Lebesgue-Nagell equation x^2 + n = y^k with k > 2 and unique x.

The programs for A094597, there is no canonical definition to state claims against.
-/

/-! ## A094597.P11923563700298473857

`and(A069897(A008489(n)), A094596(n+2))`
-/

namespace A094597.P11923563700298473857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069897 (A008489 n).toNat) (A094596 (n + 2))

end

end A094597.P11923563700298473857

/-! ## A094597.P7160840909057270595

`and(A094596(n+2), A163398(A255005(n+1)))`
-/

namespace A094597.P7160840909057270595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094596 (n + 2)) (A163398 (A255005 (n + 1)).toNat)

end

end A094597.P7160840909057270595

/-! ## A094597.P17494288264053193058

`and(A030303(A347487(n+1)), A094596(n+2))`
-/

namespace A094597.P17494288264053193058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030303 (A347487 (n + 1)).toNat) (A094596 (n + 2))

end

end A094597.P17494288264053193058

/-! ## A094597.P8237768420116420916

`A007814(A244709(n+9)+A049310(n))`
-/

namespace A094597.P8237768420116420916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A244709 (n + 9) + A049310 n).toNat

end

end A094597.P8237768420116420916

/-!
# A094598: Numbers n such that the Lebesgue-Nagell equation x^2 + n = y^k, with k > 2, has no integer solutions.

The programs for A094598, there is no canonical definition to state claims against.
-/

/-! ## A094598.P13569484107883324977

`eq[0, A094596(n+2)]+2`
-/

namespace A094598.P13569484107883324977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094596 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A094598.P13569484107883324977

/-! ## A094598.P3086397569738959818

`eq[0, A094597(n+2)]+2`
-/

namespace A094598.P3086397569738959818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094597 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A094598.P3086397569738959818

/-! ## A094598.P16144821275738635153

`lt[A094597(n+3), 1]+3`
-/

namespace A094598.P16144821275738635153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094597 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A094598.P16144821275738635153

/-! ## A094598.P501094900466661989

`comp[A094599(n+1)-1]+1`
-/

namespace A094598.P501094900466661989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094599 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094598.P501094900466661989

/-! ## A094598.P13755217137700057140

`eq[0, A094596(A233583(n+1))]`
-/

namespace A094598.P13755217137700057140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094596 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094598.P13755217137700057140

/-!
# A094599: Numbers n such that the Lebesgue-Nagell equation x^2 + n = y^k, with k > 2, has an integer solution.

The programs for A094599, there is no canonical definition to state claims against.
-/

/-! ## A094599.P9095640687176376421

`comp[A094598(n+1)-1]+1`
-/

namespace A094599.P9095640687176376421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094598 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P9095640687176376421

/-! ## A094599.P4620502609105573643

`comp[A233583(A094598(n+1))]+1`
-/

namespace A094599.P4620502609105573643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A094598 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P4620502609105573643

/-! ## A094599.P16032266279386944401

`comp[eq[0, A094596(A233583(n+1))]-1]+1`
-/

namespace A094599.P16032266279386944401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094596 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P16032266279386944401

/-! ## A094599.P6197668940751081280

`comp[A009056(eq[0, A094596(n+2)])-1]+1`
-/

namespace A094599.P6197668940751081280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094596 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P6197668940751081280

/-! ## A094599.P5958187339151233991

`comp[A009056(eq[0, A094597(n+2)])-1]+1`
-/

namespace A094599.P5958187339151233991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094597 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P5958187339151233991

/-! ## A094599.P3148767471862483005

`comp[A233583(eq[0, A094596(n+2)]+2)]+1`
-/

namespace A094599.P3148767471862483005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094596 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P3148767471862483005

/-! ## A094599.P11920283194034825126

`comp[A233583(eq[0, A094597(n+2)]+2)]+1`
-/

namespace A094599.P11920283194034825126
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094597 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A094599.P11920283194034825126

