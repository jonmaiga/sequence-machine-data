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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A180701: Smallest power of 17 that begins with n.

The programs for A180701, there is no canonical definition to state claims against.
-/

/-! ## A180701.P6757819151559079161

`A001026(A180702(n+1))`
-/

namespace A180701.P6757819151559079161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (A180702 (n + 1)).toNat

end

end A180701.P6757819151559079161

/-!
# A180703: 

The programs for A180703, there is no canonical definition to state claims against.
-/

/-! ## A180703.P9234119078989067574

`A001027(A180704(n+1))`
-/

namespace A180703.P9234119078989067574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001027 (A180704 (n + 1)).toNat

end

end A180703.P9234119078989067574

/-!
# A180705: 

The programs for A180705, there is no canonical definition to state claims against.
-/

/-! ## A180705.P4939082660689359329

`A001029(A180706(n+1))`
-/

namespace A180705.P4939082660689359329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (A180706 (n + 1)).toNat

end

end A180705.P4939082660689359329

/-!
# A180707: a(n) = sigma(2*a(n-1)) for n>1 with a(1)=1.

The programs for A180707, the canonical program `A180707.P16372113453635177381` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180707 has offset 1).

The definition of A180707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(2*a(n-1))` (program `A180707.P16372113453635177381`, by `A180707.P16372113453635177381.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180707.P16372113453635177381

`A000203(2*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180707

/-- `A000203(2*a(n-1))` -/
def P16372113453635177381.Spec : Prop :=
  ∀ n, P16372113453635177381.a n = A180707 (n + 1)

theorem P16372113453635177381.correct : P16372113453635177381.Spec := by
  intro n
  simp only [A180707, Nat.add_sub_cancel]

end A180707

/-! ## A180707.P9392989867308341256

`A062731(a(n-1))` with `a(0)=1`
-/

namespace A180707.P9392989867308341256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062731 (a (n - 1)).toNat

end

end A180707.P9392989867308341256

namespace A180707

/-- `A062731(a(n-1))` -/
def P9392989867308341256.Spec : Prop :=
  ∀ n, P9392989867308341256.a n = A180707 (n + 1)

end A180707

/-! ## A180707.P17592059057126472979

`∑{d}[A074400(a(n-1)), #]` with `a(0)=1`
-/

namespace A180707.P17592059057126472979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A074400 (f1 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A180707.P17592059057126472979

namespace A180707

/-- `∑{d}[A074400(a(n-1)), #]` -/
def P17592059057126472979.Spec : Prop :=
  ∀ n, (P17592059057126472979.a n : ℤ) = A180707 (n + 1)

end A180707

/-!
# A180708: a(n) = sigma(3*a(n-1)) for n>1 with a(1)=1.

The programs for A180708, the canonical program `A180708.P15979864706130335382` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180708 has offset 1).

The definition of A180708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(3*a(n-1))` (program `A180708.P15979864706130335382`, by `A180708.P15979864706130335382.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180708.P15979864706130335382

`A000203(3*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180708

/-- `A000203(3*a(n-1))` -/
def P15979864706130335382.Spec : Prop :=
  ∀ n, P15979864706130335382.a n = A180708 (n + 1)

theorem P15979864706130335382.correct : P15979864706130335382.Spec := by
  intro n
  simp only [A180708, Nat.add_sub_cancel]

end A180708

/-!
# A180709: a(n) = sigma(n*a(n-1)) for n>1 with a(1)=1.

The programs for A180709, the canonical program `A180709.P7833574477815305516` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180709 has offset 1).

The definition of A180709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((n+1)*a(n-1))` (program `A180709.P7833574477815305516`, by `A180709.P7833574477815305516.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180709.P7833574477815305516

`A000203((n+1)*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180709

/-- `A000203((n+1)*a(n-1))` -/
def P7833574477815305516.Spec : Prop :=
  ∀ n, P7833574477815305516.a n = A180709 (n + 1)

theorem P7833574477815305516.correct : P7833574477815305516.Spec := by
  intro n
  simp only [A180709, Nat.add_sub_cancel]

end A180709

/-! ## A180709.P18189831310878215143

`A097863((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A180709.P18189831310878215143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097863 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A180709.P18189831310878215143

namespace A180709

/-- `A097863((n+1)*a(n-1))` -/
def P18189831310878215143.Spec : Prop :=
  ∀ n, P18189831310878215143.a n = A180709 (n + 1)

end A180709

/-!
# A180710: a(n) = sigma(2^(n-1)*a(n-1)) for n>1 with a(1)=1.

The programs for A180710, there is no canonical definition to state claims against.
-/

/-! ## A180710.P3410259975693942662

`A000203(2^n*a(n-1))` with `a(0)=1`
-/

namespace A180710.P3410259975693942662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 ((2 ^ n : ℤ) * a (n - 1)).toNat

end

end A180710.P3410259975693942662

/-!
# A180711: a(n) = [x^n] A(x) = floor(sqrt( b(n) )) where b(n) = [x^n] A(x)^2.

The programs for A180711, there is no canonical definition to state claims against.
-/

/-! ## A180711.P12775392342967863649

`floor(sqrt(A180712(n)))`
-/

namespace A180711.P12775392342967863649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A180712 n)

end

end A180711.P12775392342967863649

/-! ## A180711.P3064568277637600044

`ceil(sqrt(A180712(abs(1-n)+1)))-1`
-/

namespace A180711.P3064568277637600044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A180712 (|1 - (n : ℤ)| + 1).toNat : ℝ)⌉ - 1

end

end A180711.P3064568277637600044

/-! ## A180711.P7646999861223331372

`A000007(n)+ceil(sqrt(A180712(n)))-1`
-/

namespace A180711.P7646999861223331372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (⌈Real.sqrt (A180712 n : ℝ)⌉ - 1)

end

end A180711.P7646999861223331372

/-! ## A180711.P5380240415712447722

`floor(A180712(n)^2^A321804(A007318(n)))`
-/

namespace A180711.P5380240415712447722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180712 n : ℝ) ^ ((2 : ℚ) ^ (A321804 (A007318 n).toNat : ℤ) : ℝ)⌋

end

end A180711.P5380240415712447722

/-!
# A180712: Self-convolution of A180711.

The programs for A180712, there is no canonical definition to state claims against.
-/

/-! ## A180712.P6768468123227096237

`A003056(∑[∑[A363045(3*n)]])`
-/

namespace A180712.P6768468123227096237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363045 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180712.P6768468123227096237

/-! ## A180712.P16787621736064715810

`A000196(A100506(n))`
-/

namespace A180712.P16787621736064715810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A100506 n).toNat

end

end A180712.P16787621736064715810

/-! ## A180712.P3740029759576149625

`A137735(or(1, A100506(n)))`
-/

namespace A180712.P3740029759576149625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.lor 1 (A100506 n)).toNat

end

end A180712.P3740029759576149625

/-! ## A180712.P1403766193079241883

`A137735(xor(1, A100506(n)))`
-/

namespace A180712.P1403766193079241883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.xor 1 (A100506 n)).toNat

end

end A180712.P1403766193079241883

/-!
# A180713: If n is even then a(n) = 3n, if n == 1 mod 4 then a(n) = 3n+1, if n == 3 mod 4 then a(n) = 3n+2.

The programs for A180713, the canonical program `A180713.P7632895049826476937` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180713 has offset 0).

The definition of A180713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180713.P7632895049826476937

`A131743(n)+3*n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180713

/-- `A131743(n)+3*n` -/
def P7632895049826476937.Spec : Prop :=
  ∀ n, P7632895049826476937.a n = A180713 n

theorem P7632895049826476937.correct : P7632895049826476937.Spec := by
  intro n
  simp only [A180713]

end A180713

/-! ## A180713.P9731974938972155115

`a(n-4)+12` with `a(0)=0, a(1)=4, a(2)=6, a(3)=11`
-/

namespace A180713.P9731974938972155115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6, 11] fun n a =>
  a (n - 4) + 12

end

end A180713.P9731974938972155115

namespace A180713

/-- `a(n-4)+12` -/
def P9731974938972155115.Spec : Prop :=
  ∀ n, (P9731974938972155115.a n : ℤ) = A180713 n

end A180713

/-! ## A180713.P4663033563854841748

`log2(gcd(4, n+1))+3*n`
-/

namespace A180713.P4663033563854841748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 4 (n + 1) : ℝ) + (3 * n : ℝ)

end

end A180713.P4663033563854841748

namespace A180713

/-- `log2(gcd(4, n+1))+3*n` -/
def P4663033563854841748.Spec : Prop :=
  ∀ n, P4663033563854841748.a n = (A180713 n : ℝ)

end A180713

/-! ## A180713.P9268645764647542264

`∑[(3*n%4)%5]+n`
-/

namespace A180713.P9268645764647542264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 4) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A180713.P9268645764647542264

namespace A180713

/-- `∑[(3*n%4)%5]+n` -/
def P9268645764647542264.Spec : Prop :=
  ∀ n, (P9268645764647542264.a n : ℤ) = A180713 n

end A180713

/-! ## A180713.P651065912997388190

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=4, a(2)=2, a(3)=5, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A180713.P651065912997388190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2, 5, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180713.P651065912997388190

namespace A180713

/-- `∑[floor(a(n-4))]` -/
def P651065912997388190.Spec : Prop :=
  ∀ n, (P651065912997388190.a n : ℤ) = A180713 n

end A180713

/-! ## A180713.P8746529627037036664

`∑[a(n-4)%6]` with `a(0)=0, a(1)=4, a(2)=2, a(3)=5, a(4)=1`
-/

namespace A180713.P8746529627037036664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 2, 5, 1] fun n f1 =>
  f1 (n - 4) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180713.P8746529627037036664

namespace A180713

/-- `∑[a(n-4)%6]` -/
def P8746529627037036664.Spec : Prop :=
  ∀ n, (P8746529627037036664.a n : ℤ) = A180713 n

end A180713

/-! ## A180713.P15243646856650061611

`and(n, Δ[floor(n/4)]+1)+3*n`
-/

namespace A180713.P15243646856650061611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n + 1) + (3 * n : ℤ)

end

end A180713.P15243646856650061611

namespace A180713

/-- `and(n, Δ[floor(n/4)]+1)+3*n` -/
def P15243646856650061611.Spec : Prop :=
  ∀ n, P15243646856650061611.a n = A180713 n

end A180713

/-! ## A180713.P793086117753361496

`∑[∑[ogf((1+4x+2x^2+5x^3)/(1+x+x^2+x^3))]]-1`
-/

namespace A180713.P793086117753361496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 5] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A180713.P793086117753361496

namespace A180713

/-- `∑[∑[ogf((1+4x+2x^2+5x^3)/(1+x+x^2+x^3))]]-1` -/
def P793086117753361496.Spec : Prop :=
  ∀ n, P793086117753361496.a n = A180713 n

end A180713

/-! ## A180713.P9442252789016544148

`xor(3*n+1, char[3*n-lcm(2, n+1)+2])`
-/

namespace A180713.P9442252789016544148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.lcm 2 (n + 1) : ℤ) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * n + 1) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A180713.P9442252789016544148

namespace A180713

/-- `xor(3*n+1, char[3*n-lcm(2, n+1)+2])` -/
def P9442252789016544148.Spec : Prop :=
  ∀ n, (P9442252789016544148.a n : ℤ) = A180713 n

end A180713

/-! ## A180713.P2779187396853438057

`xor(A166486(n+3), 3*n+1)`
-/

namespace A180713.P2779187396853438057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166486 (n + 3)) (3 * n + 1 : ℤ)

end

end A180713.P2779187396853438057

namespace A180713

/-- `xor(A166486(n+3), 3*n+1)` -/
def P2779187396853438057.Spec : Prop :=
  ∀ n, P2779187396853438057.a n = A180713 n

end A180713

/-! ## A180713.P10799018078711706771

`and(n, A177704(n))+2*n+n`
-/

namespace A180713.P10799018078711706771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A177704 n) + (2 * n : ℤ) + (n : ℤ)

end

end A180713.P10799018078711706771

namespace A180713

/-- `and(n, A177704(n))+2*n+n` -/
def P10799018078711706771.Spec : Prop :=
  ∀ n, P10799018078711706771.a n = A180713 n

end A180713

/-! ## A180713.P8157858260592129271

`2*n+1-A008683(gcd(n+3, n-1))+n`
-/

namespace A180713.P8157858260592129271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A008683 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) + (n : ℤ)

end

end A180713.P8157858260592129271

namespace A180713

/-- `2*n+1-A008683(gcd(n+3, n-1))+n` -/
def P8157858260592129271.Spec : Prop :=
  ∀ n, P8157858260592129271.a n = A180713 n

end A180713

/-! ## A180713.P70862436936544554

`A140201(n)+A014601(n)`
-/

namespace A180713.P70862436936544554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 n + A014601 n

end

end A180713.P70862436936544554

namespace A180713

/-- `A140201(n)+A014601(n)` -/
def P70862436936544554.Spec : Prop :=
  ∀ n, P70862436936544554.a n = A180713 n

end A180713

/-! ## A180713.P14412616165768463587

`A319452(n+1)+A000035(n)`
-/

namespace A180713.P14412616165768463587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319452 (n + 1) + A000035 n

end

end A180713.P14412616165768463587

namespace A180713

/-- `A319452(n+1)+A000035(n)` -/
def P14412616165768463587.Spec : Prop :=
  ∀ n, P14412616165768463587.a n = A180713 n

end A180713

/-! ## A180713.P4264383590792802095

`A319279(n+1)+A131729(n)`
-/

namespace A180713.P4264383590792802095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319279 (n + 1) + A131729 n

end

end A180713.P4264383590792802095

namespace A180713

/-- `A319279(n+1)+A131729(n)` -/
def P4264383590792802095.Spec : Prop :=
  ∀ n, P4264383590792802095.a n = A180713 n

end A180713

/-! ## A180713.P3338507375006065837

`A047382(n+1)-A004525(n)`
-/

namespace A180713.P3338507375006065837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) - A004525 n

end

end A180713.P3338507375006065837

namespace A180713

/-- `A047382(n+1)-A004525(n)` -/
def P3338507375006065837.Spec : Prop :=
  ∀ n, P3338507375006065837.a n = A180713 n

end A180713

/-! ## A180713.P9031638531380506417

`A047482(n+1)-A114285(n)`
-/

namespace A180713.P9031638531380506417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (n + 1) - A114285 n

end

end A180713.P9031638531380506417

namespace A180713

/-- `A047482(n+1)-A114285(n)` -/
def P9031638531380506417.Spec : Prop :=
  ∀ n, P9031638531380506417.a n = A180713 n

end A180713

/-! ## A180713.P1812441591608554172

`A146951(n)-A047612(n+1)`
-/

namespace A180713.P1812441591608554172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n - A047612 (n + 1)

end

end A180713.P1812441591608554172

namespace A180713

/-- `A146951(n)-A047612(n+1)` -/
def P1812441591608554172.Spec : Prop :=
  ∀ n, P1812441591608554172.a n = A180713 n

end A180713

/-! ## A180713.P7374320581270019448

`A219721(n)-A056991(n+1)`
-/

namespace A180713.P7374320581270019448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219721 n - A056991 (n + 1)

end

end A180713.P7374320581270019448

namespace A180713

/-- `A219721(n)-A056991(n+1)` -/
def P7374320581270019448.Spec : Prop :=
  ∀ n, P7374320581270019448.a n = A180713 n

end A180713

/-! ## A180713.P6446663633446399669

`xor(A021913(n), A083032(n+1))`
-/

namespace A180713.P6446663633446399669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A021913 n) (A083032 (n + 1))

end

end A180713.P6446663633446399669

namespace A180713

/-- `xor(A021913(n), A083032(n+1))` -/
def P6446663633446399669.Spec : Prop :=
  ∀ n, P6446663633446399669.a n = A180713 n

end A180713

/-!
# A180714: Sum of the x- and y-coordinates of a point moving in a clockwise spiral.

The programs for A180714, the canonical program `A180714.P5061028925191492414` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180714 has offset 0).

The definition of A180714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180714.P11589857960783142721

`2*∑[round(sqrt(n))%2]-n`
-/

namespace A180714.P11589857960783142721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A180714.P11589857960783142721

namespace A180714

/-- `2*∑[round(sqrt(n))%2]-n` -/
def P11589857960783142721.Spec : Prop :=
  ∀ n, P11589857960783142721.a n = A180714 n

end A180714

/-! ## A180714.P5061028925191492414

`∑[A062157(A000194(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A180714

/-- `∑[A062157(A000194(n))]` -/
def P5061028925191492414.Spec : Prop :=
  ∀ n, P5061028925191492414.a n = A180714 n

theorem P5061028925191492414.correct : P5061028925191492414.Spec := by
  intro n
  simp only [A180714]

end A180714

/-! ## A180714.P2006799581870508401

`A053615(n)+2*A329972(n)`
-/

namespace A180714.P2006799581870508401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + 2 * A329972 n

end

end A180714.P2006799581870508401

namespace A180714

/-- `A053615(n)+2*A329972(n)` -/
def P2006799581870508401.Spec : Prop :=
  ∀ n, P2006799581870508401.a n = A180714 n

end A180714

/-! ## A180714.P5134989890765232657

`1-∑[A033999(A000194(n)²)]`
-/

namespace A180714.P5134989890765232657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000194 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180714.P5134989890765232657

namespace A180714

/-- `1-∑[A033999(A000194(n)²)]` -/
def P5134989890765232657.Spec : Prop :=
  ∀ n, P5134989890765232657.a n = A180714 n

end A180714

/-! ## A180714.P10027225694789540418

`A274923(n+1)+A174344(n+1)`
-/

namespace A180714.P10027225694789540418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (n + 1) + A174344 (n + 1)

end

end A180714.P10027225694789540418

namespace A180714

/-- `A274923(n+1)+A174344(n+1)` -/
def P10027225694789540418.Spec : Prop :=
  ∀ n, P10027225694789540418.a n = A180714 n

end A180714

/-! ## A180714.P6593451573205108597

`A174344(n+1)-A268038(n+1)`
-/

namespace A180714.P6593451573205108597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A268038 (n + 1)

end

end A180714.P6593451573205108597

namespace A180714

/-- `A174344(n+1)-A268038(n+1)` -/
def P6593451573205108597.Spec : Prop :=
  ∀ n, P6593451573205108597.a n = A180714 n

end A180714

/-! ## A180714.P11178829599050535331

`A329116(n)+2*A274923(n+1)`
-/

namespace A180714.P11178829599050535331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n + 2 * A274923 (n + 1)

end

end A180714.P11178829599050535331

namespace A180714

/-- `A329116(n)+2*A274923(n+1)` -/
def P11178829599050535331.Spec : Prop :=
  ∀ n, P11178829599050535331.a n = A180714 n

end A180714

/-! ## A180714.P18329887285187455051

`2*A174344(n+1)-A329116(n)`
-/

namespace A180714.P18329887285187455051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174344 (n + 1) - A329116 n

end

end A180714.P18329887285187455051

namespace A180714

/-- `2*A174344(n+1)-A329116(n)` -/
def P18329887285187455051.Spec : Prop :=
  ∀ n, P18329887285187455051.a n = A180714 n

end A180714

/-! ## A180714.P1678582004991955597

`A329116(n)-2*A268038(n+1)`
-/

namespace A180714.P1678582004991955597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n - 2 * A268038 (n + 1)

end

end A180714.P1678582004991955597

namespace A180714

/-- `A329116(n)-2*A268038(n+1)` -/
def P1678582004991955597.Spec : Prop :=
  ∀ n, P1678582004991955597.a n = A180714 n

end A180714

/-! ## A180714.P8261696922747548446

`A296030(2*(n+1))+A174344(n+1)`
-/

namespace A180714.P8261696922747548446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (n + 1)) + A174344 (n + 1)

end

end A180714.P8261696922747548446

namespace A180714

/-- `A296030(2*(n+1))+A174344(n+1)` -/
def P8261696922747548446.Spec : Prop :=
  ∀ n, P8261696922747548446.a n = A180714 n

end A180714

/-! ## A180714.P8104048312726225393

`A296030(2*n+1)+A274923(n+1)`
-/

namespace A180714.P8104048312726225393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) + A274923 (n + 1)

end

end A180714.P8104048312726225393

namespace A180714

/-- `A296030(2*n+1)+A274923(n+1)` -/
def P8104048312726225393.Spec : Prop :=
  ∀ n, P8104048312726225393.a n = A180714 n

end A180714

/-! ## A180714.P4095458072259359208

`A296030(2*n+1)-A268038(n+1)`
-/

namespace A180714.P4095458072259359208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) - A268038 (n + 1)

end

end A180714.P4095458072259359208

namespace A180714

/-- `A296030(2*n+1)-A268038(n+1)` -/
def P4095458072259359208.Spec : Prop :=
  ∀ n, P4095458072259359208.a n = A180714 n

end A180714

/-! ## A180714.P14813514533171987748

`A296030(2*(n+1))+A296030(2*n+1)`
-/

namespace A180714.P14813514533171987748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * (n + 1)) + A296030 (2 * n + 1)

end

end A180714.P14813514533171987748

namespace A180714

/-- `A296030(2*(n+1))+A296030(2*n+1)` -/
def P14813514533171987748.Spec : Prop :=
  ∀ n, P14813514533171987748.a n = A180714 n

end A180714

/-! ## A180714.P17596351805021700446

`A174344(A020703(n+1))+A174344(n+1)`
-/

namespace A180714.P17596351805021700446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A020703 (n + 1)).toNat + A174344 (n + 1)

end

end A180714.P17596351805021700446

namespace A180714

/-- `A174344(A020703(n+1))+A174344(n+1)` -/
def P17596351805021700446.Spec : Prop :=
  ∀ n, P17596351805021700446.a n = A180714 n

end A180714

/-! ## A180714.P7340503198179275374

`A174344(n+1)+A174344(A028391(n)+1)`
-/

namespace A180714.P7340503198179275374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + A174344 (A028391 n + 1).toNat

end

end A180714.P7340503198179275374

namespace A180714

/-- `A174344(n+1)+A174344(A028391(n)+1)` -/
def P7340503198179275374.Spec : Prop :=
  ∀ n, P7340503198179275374.a n = A180714 n

end A180714

/-! ## A180714.P9593060709118817766

`A174344(n+1)+A174344(A056847(n)+1)`
-/

namespace A180714.P9593060709118817766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + A174344 (A056847 n + 1).toNat

end

end A180714.P9593060709118817766

namespace A180714

/-- `A174344(n+1)+A174344(A056847(n)+1)` -/
def P9593060709118817766.Spec : Prop :=
  ∀ n, P9593060709118817766.a n = A180714 n

end A180714

/-! ## A180714.P421202270821825031

`A274923(A020703(n+1))+A274923(n+1)`
-/

namespace A180714.P421202270821825031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A020703 (n + 1)).toNat + A274923 (n + 1)

end

end A180714.P421202270821825031

namespace A180714

/-- `A274923(A020703(n+1))+A274923(n+1)` -/
def P421202270821825031.Spec : Prop :=
  ∀ n, P421202270821825031.a n = A180714 n

end A180714

/-! ## A180714.P2880264107222395047

`A305576(A308081(n+1))+A174344(n+1)`
-/

namespace A180714.P2880264107222395047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 (A308081 (n + 1)).toNat + A174344 (n + 1)

end

end A180714.P2880264107222395047

namespace A180714

/-- `A305576(A308081(n+1))+A174344(n+1)` -/
def P2880264107222395047.Spec : Prop :=
  ∀ n, P2880264107222395047.a n = A180714 n

end A180714

/-! ## A180714.P13924264781430091725

`A305575(A308081(n+1))+A274923(n+1)`
-/

namespace A180714.P13924264781430091725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A308081 (n + 1)).toNat + A274923 (n + 1)

end

end A180714.P13924264781430091725

namespace A180714

/-- `A305575(A308081(n+1))+A274923(n+1)` -/
def P13924264781430091725.Spec : Prop :=
  ∀ n, P13924264781430091725.a n = A180714 n

end A180714

/-! ## A180714.P4745816811614672768

`A274923(A164386(n+1))+A274923(n+1)`
-/

namespace A180714.P4745816811614672768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A164386 (n + 1)).toNat + A274923 (n + 1)

end

end A180714.P4745816811614672768

namespace A180714

/-- `A274923(A164386(n+1))+A274923(n+1)` -/
def P4745816811614672768.Spec : Prop :=
  ∀ n, P4745816811614672768.a n = A180714 n

end A180714

/-!
# A180715: E.g.f.: A(x) = Series_Reversion[ x - Sum_{n>=2} (-x)^n/(n(n-1)/2) ].

The programs for A180715, there is no canonical definition to state claims against.
-/

/-! ## A180715.P7260823177867101906

`A130988(C(n*(n+3)/2, n))`
-/

namespace A180715.P7260823177867101906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130988 (Nat.choose (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat n)

end

end A180715.P7260823177867101906

/-!
# A180716: G.f.: 1 = Sum_{n>=0} a(n)*x^n * Sum_{k=0..n+1} C(n+1,k)^2*(-x)^k.

The programs for A180716, there is no canonical definition to state claims against.
-/

/-! ## A180716.P11014897959550473864

`A224214(n!)-2`
-/

namespace A180716.P11014897959550473864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224214 (Nat.factorial n) - 2

end

end A180716.P11014897959550473864

/-!
# A180717: G.f.: Sum_{n>=0} [Sum_{k=0..n} C(n,k)^2*x^k]^2 * x^n.

The programs for A180717, there is no canonical definition to state claims against.
-/

/-! ## A180717.P8804144646809445486

`A066508(A119021(n))`
-/

namespace A180717.P8804144646809445486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A119021 n).toNat

end

end A180717.P8804144646809445486

/-! ## A180717.P10956147956134773301

`A264749(∑[A270786(n)])`
-/

namespace A180717.P10956147956134773301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180717.P10956147956134773301

/-! ## A180717.P2610118813845831337

`A070098(5*A122448(n))`
-/

namespace A180717.P2610118813845831337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (5 * A122448 n).toNat

end

end A180717.P2610118813845831337

/-!
# A180718: G.f.: exp( Sum_{n>=0} [ Sum_{k=0..n} C(n,k)^2*x^k ]^2* x^n/n ).

The programs for A180718, there is no canonical definition to state claims against.
-/

/-! ## A180718.P16868394022076921493

`A062300(A164231(n)+A151283(n))`
-/

namespace A180718.P16868394022076921493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A164231 n + A151283 n).toNat

end

end A180718.P16868394022076921493

/-! ## A180718.P3017299451458678337

`A226190(A149907(n))`
-/

namespace A180718.P3017299451458678337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149907 n).toNat

end

end A180718.P3017299451458678337

/-! ## A180718.P10173311825367066987

`A157271(A148384(n+1))`
-/

namespace A180718.P10173311825367066987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148384 (n + 1)).toNat

end

end A180718.P10173311825367066987

/-!
# A180719: Logarithmic derivative of A180718.

The programs for A180719, there is no canonical definition to state claims against.
-/

/-! ## A180719.P1463675435224373514

`A002264(or(A005251(n+2), A337522(n+3)))`
-/

namespace A180719.P1463675435224373514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor (A005251 (n + 2)) (A337522 (n + 3))).toNat

end

end A180719.P1463675435224373514

/-!
# A180720: G.f: A(x) = exp(Sum_{n>=1} A(L(n)*x)^n*x^n/n) = exp(Sum_{n>=1} L(n)*x^n/n) where L(n) = A180721(n).

The programs for A180720, there is no canonical definition to state claims against.
-/

/-! ## A180720.P5027027197853491686

`A157674(n)+A003415(A005016(n))`
-/

namespace A180720.P5027027197853491686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157674 n + A003415 (A005016 n).toNat

end

end A180720.P5027027197853491686

/-!
# A180721: L.g.f: A(x) = Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} E( a(n)*x )^n*x^n/n where E(x) = exp(A(x)) is the g.f. of A180720.

The programs for A180721, there is no canonical definition to state claims against.
-/

/-! ## A180721.P17205490754579344039

`∑[A066720(∏[A325683(2*n+1)])]`
-/

namespace A180721.P17205490754579344039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325683 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180721.P17205490754579344039

/-!
# A180723: p(p(p(n))), p = partition numbers A000041.

The programs for A180723, there is no canonical definition to state claims against.
-/

/-! ## A180723.P17900958243811286026

`A000041(A058699(n))`
-/

namespace A180723.P17900958243811286026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A058699 n).toNat

end

end A180723.P17900958243811286026

/-! ## A180723.P17984421550959240132

`A000041(A000041(A000041(n)))`
-/

namespace A180723.P17984421550959240132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000041 (A000041 n).toNat).toNat

end

end A180723.P17984421550959240132

/-! ## A180723.P4822898211894994001

`A058699(A213598(n))`
-/

namespace A180723.P4822898211894994001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058699 (A213598 n).toNat

end

end A180723.P4822898211894994001

/-! ## A180723.P8250363429904372662

`A058699(A309058(n))`
-/

namespace A180723.P8250363429904372662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058699 (A309058 n).toNat

end

end A180723.P8250363429904372662

/-! ## A180723.P9493837907664099388

`A058699(∑[A002865(n)])`
-/

namespace A180723.P9493837907664099388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A180723.P9493837907664099388

/-!
# A180724: a(n) = n^2 + largest prime < n^2.

The programs for A180724, the canonical program `A180724.P9375854494318249923` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180724 has offset 2).

The definition of A180724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A180724.P9375854494318249923

`(n+2)²+A053001(n+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A180724

/-- `(n+2)²+A053001(n+2)` -/
def P9375854494318249923.Spec : Prop :=
  ∀ n, P9375854494318249923.a n = A180724 (n + 2)

theorem P9375854494318249923.correct : P9375854494318249923.Spec := by
  intro n
  simp only [A180724, Nat.add_sub_cancel]

end A180724

/-! ## A180724.P13336819120972798648

`(n+2)²+A007917((n+2)²)`
-/

namespace A180724.P13336819120972798648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + A007917 ((n + 2) ^ 2)

end

end A180724.P13336819120972798648

namespace A180724

/-- `(n+2)²+A007917((n+2)²)` -/
def P13336819120972798648.Spec : Prop :=
  ∀ n, P13336819120972798648.a n = A180724 (n + 2)

end A180724

/-! ## A180724.P18348766667098826658

`A056927(n+2)+2*A053001(n+2)`
-/

namespace A180724.P18348766667098826658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 2) + 2 * A053001 (n + 2)

end

end A180724.P18348766667098826658

namespace A180724

/-- `A056927(n+2)+2*A053001(n+2)` -/
def P18348766667098826658.Spec : Prop :=
  ∀ n, P18348766667098826658.a n = A180724 (n + 2)

theorem P18348766667098826658.correct : P18348766667098826658.Spec := by
  intro n
  simp only [A180724, Nat.add_sub_cancel, A180724.P18348766667098826658.a, A180724.P9375854494318249923.a, A053001, A053001.P15315627047163016254.a, A056927, A056927.P15198729554865341557.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180724

/-! ## A180724.P3589446392972570166

`A007491(n+1)+A144831(n+1)+A053001(n+2)`
-/

namespace A180724.P3589446392972570166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) + (A144831 (n + 1) + A053001 (n + 2))

end

end A180724.P3589446392972570166

namespace A180724

/-- `A007491(n+1)+A144831(n+1)+A053001(n+2)` -/
def P3589446392972570166.Spec : Prop :=
  ∀ n, P3589446392972570166.a n = A180724 (n + 2)

theorem P3589446392972570166.correct : P3589446392972570166.Spec := by
  intro n
  simp only [A180724, Nat.add_sub_cancel, A180724.P3589446392972570166.a, A180724.P9375854494318249923.a, A007491, A007491.P2456272852996360084.a, A053001, A053001.P15315627047163016254.a, A144831, A144831.P7474642275724404831.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180724

/-! ## A180724.P2225087622947202156

`A053001(n+2)+A056929(n+2)+A056928(n+2)`
-/

namespace A180724.P2225087622947202156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + (A056929 (n + 2) + A056928 (n + 2))

end

end A180724.P2225087622947202156

namespace A180724

/-- `A053001(n+2)+A056929(n+2)+A056928(n+2)` -/
def P2225087622947202156.Spec : Prop :=
  ∀ n, P2225087622947202156.a n = A180724 (n + 2)

theorem P2225087622947202156.correct : P2225087622947202156.Spec := by
  intro n
  simp only [A180724, Nat.add_sub_cancel, A180724.P2225087622947202156.a, A180724.P9375854494318249923.a, A053001, A053001.P15315627047163016254.a, A056928, A056928.P1059956196817698277.a, A056929, A056929.P6975652131116657014.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053000, A053000.P7278427673394138104.a, A056927, A056927.P15198729554865341557.a, A013632, A013632.P6559946879985956067.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180724

/-! ## A180724.P13325834603895033450

`A053001(n+2)+A000290(n+2)`
-/

namespace A180724.P13325834603895033450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + A000290 (n + 2)

end

end A180724.P13325834603895033450

namespace A180724

/-- `A053001(n+2)+A000290(n+2)` -/
def P13325834603895033450.Spec : Prop :=
  ∀ n, P13325834603895033450.a n = A180724 (n + 2)

theorem P13325834603895033450.correct : P13325834603895033450.Spec := by
  intro n
  simp only [A180724, Nat.add_sub_cancel, A180724.P13325834603895033450.a, A180724.P9375854494318249923.a, A000290, A000290.P12206242496348924484.a, A053001, A053001.P15315627047163016254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180724

/-! ## A180724.P16437842752167173668

`Δ[A006331(n+1)]-A056927(n+2)`
-/

namespace A180724.P16437842752167173668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056927 (n + 2)

end

end A180724.P16437842752167173668

namespace A180724

/-- `Δ[A006331(n+1)]-A056927(n+2)` -/
def P16437842752167173668.Spec : Prop :=
  ∀ n, P16437842752167173668.a n = A180724 (n + 2)

end A180724

/-! ## A180724.P10126554686586220043

`A000040(A038107(n+2))+(n+2)²`
-/

namespace A180724.P10126554686586220043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 2)).toNat + ((n + 2) ^ 2 : ℤ)

end

end A180724.P10126554686586220043

namespace A180724

/-- `A000040(A038107(n+2))+(n+2)²` -/
def P10126554686586220043.Spec : Prop :=
  ∀ n, P10126554686586220043.a n = A180724 (n + 2)

end A180724

/-! ## A180724.P10176041947958864347

`A089237(A161187(n+2))+(n+2)²`
-/

namespace A180724.P10176041947958864347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (A161187 (n + 2)).toNat + ((n + 2) ^ 2 : ℤ)

end

end A180724.P10176041947958864347

namespace A180724

/-- `A089237(A161187(n+2))+(n+2)²` -/
def P10176041947958864347.Spec : Prop :=
  ∀ n, P10176041947958864347.a n = A180724 (n + 2)

end A180724

/-! ## A180724.P2598006622645200209

`A000040(A000720((n+2)²))+(n+2)²`
-/

namespace A180724.P2598006622645200209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ((n + 2) ^ 2)).toNat + ((n + 2) ^ 2 : ℤ)

end

end A180724.P2598006622645200209

namespace A180724

/-- `A000040(A000720((n+2)²))+(n+2)²` -/
def P2598006622645200209.Spec : Prop :=
  ∀ n, P2598006622645200209.a n = A180724 (n + 2)

theorem P2598006622645200209.correct : P2598006622645200209.Spec := by
  intro n
  simp only [A180724, Nat.add_sub_cancel, A180724.P2598006622645200209.a, A180724.P9375854494318249923.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053001, A053001.P15315627047163016254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A180724

/-!
# A180725: Smallest power of 20 that begins with n.

The programs for A180725, there is no canonical definition to state claims against.
-/

/-! ## A180725.P11955354401502232850

`A009964(A180726(n+1))`
-/

namespace A180725.P11955354401502232850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (A180726 (n + 1)).toNat

end

end A180725.P11955354401502232850

/-!
# A180726: 20^a(n) is smallest power of 20 beginning with n.

The programs for A180726, there is no canonical definition to state claims against.
-/

/-! ## A180726.P3931243245570142922

`gcd(A018856(n+1), A080101(A007811(n+1)))`
-/

namespace A180726.P3931243245570142922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018856 (n + 1)) (A080101 (A007811 (n + 1)).toNat)

end

end A180726.P3931243245570142922

/-! ## A180726.P9444832376572530012

`gcd(A018856(n+1), A118917(A275627(n)))`
-/

namespace A180726.P9444832376572530012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018856 (n + 1)) (A118917 (A275627 n).toNat)

end

end A180726.P9444832376572530012

/-! ## A180726.P4787439780379615802

`A018856(n+1)%A255126(A005869(n+1))`
-/

namespace A180726.P4787439780379615802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018856 (n + 1)) (A255126 (A005869 (n + 1)).toNat)

end

end A180726.P4787439780379615802

/-!
# A180729: 

The programs for A180729, there is no canonical definition to state claims against.
-/

/-! ## A180729.P7460058591448116113

`A009966(A180730(n+1))`
-/

namespace A180729.P7460058591448116113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 (A180730 (n + 1)).toNat

end

end A180729.P7460058591448116113

/-!
# A180731: Smallest power of 23 that begins with n.

The programs for A180731, there is no canonical definition to state claims against.
-/

/-! ## A180731.P13980173253028690178

`23^A180732(n+1)`
-/

namespace A180731.P13980173253028690178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ (A180732 (n + 1) : ℤ)

end

end A180731.P13980173253028690178

/-! ## A180731.P662741757546538450

`A009967(A180732(n+1))`
-/

namespace A180731.P662741757546538450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 (A180732 (n + 1)).toNat

end

end A180731.P662741757546538450

/-! ## A180731.P8580246894443163447

`A018042(3*A180732(n+1))`
-/

namespace A180731.P8580246894443163447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018042 (3 * A180732 (n + 1)).toNat

end

end A180731.P8580246894443163447

/-! ## A180731.P7187765366257225042

`A018043(3*A180732(n+1))`
-/

namespace A180731.P7187765366257225042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018043 (3 * A180732 (n + 1)).toNat

end

end A180731.P7187765366257225042

/-! ## A180731.P7974345793490980942

`A018111(4*A180732(n+1))`
-/

namespace A180731.P7974345793490980942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018111 (4 * A180732 (n + 1)).toNat

end

end A180731.P7974345793490980942

/-!
# A180733: Largest element of n-th row of Pascal's triangle that is not a multiple of n.

The programs for A180733, there is no canonical definition to state claims against.
-/

/-! ## A180733.P16183281755188523951

`C(A077168(n+1), A033677(A077168(n+1)))`
-/

namespace A180733.P16183281755188523951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077168 (n + 1)).toNat (A033677 (A077168 (n + 1)).toNat).toNat

end

end A180733.P16183281755188523951

/-! ## A180733.P666934109201651854

`C(A252464(A007283(n)), A033677(n+2))`
-/

namespace A180733.P666934109201651854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A252464 (A007283 n).toNat).toNat (A033677 (n + 2)).toNat

end

end A180733.P666934109201651854

/-! ## A180733.P17792145704070461642

`C(A056239(A000079(n+2)), A033677(n+2))`
-/

namespace A180733.P17792145704070461642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056239 (A000079 (n + 2)).toNat).toNat (A033677 (n + 2)).toNat

end

end A180733.P17792145704070461642

/-! ## A180733.P8165555652005945121

`A007318(A323393(n+5)^A323423(n))`
-/

namespace A180733.P8165555652005945121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((A323393 (n + 5) : ℚ) ^ (A323423 n : ℤ))).toNat

end

end A180733.P8165555652005945121

/-! ## A180733.P3890638389146214234

`A007318(C(A323393(n+5), A323423(n)))`
-/

namespace A180733.P3890638389146214234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A323393 (n + 5)).toNat (A323423 n).toNat)

end

end A180733.P3890638389146214234

/-!
# A180735: Expansion of (1+x)*(1-x)/(1 - x + x^2 + x^3).

The programs for A180735, the canonical program `A180735.P17258631466494082503` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180735 has offset 0).

The definition of A180735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x+x^2+x^3))` (program `A180735.P17258631466494082503`, by `A180735.P17258631466494082503.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A180735.P183157804581085159

`a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A180735.P183157804581085159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 3)

end

end A180735.P183157804581085159

namespace A180735

/-- `a(n-1)-a(n-2)-a(n-3)` -/
def P183157804581085159.Spec : Prop :=
  ∀ n, P183157804581085159.a n = A180735 n

end A180735

/-! ## A180735.P17236844821775561809

`(-1)^n*(A057597(n+2)-A057597(n))`
-/

namespace A180735.P17236844821775561809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A057597 (n + 2) - A057597 n)

end

end A180735.P17236844821775561809

namespace A180735

/-- `(-1)^n*(A057597(n+2)-A057597(n))` -/
def P17236844821775561809.Spec : Prop :=
  ∀ n, P17236844821775561809.a n = A180735 n

end A180735

/-! ## A180735.P17258631466494082503

`ogf((1-x^2)/(1-x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180735

/-- `ogf((1-x^2)/(1-x+x^2+x^3))` -/
def P17258631466494082503.Spec : Prop :=
  ∀ n, P17258631466494082503.a n = A180735 n

theorem P17258631466494082503.correct : P17258631466494082503.Spec := by
  intro n
  simp only [A180735]

end A180735

/-! ## A180735.P17289099570125356174

`Δ[-A078016(n+1)]`
-/

namespace A180735.P17289099570125356174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180735.P17289099570125356174

namespace A180735

/-- `Δ[-A078016(n+1)]` -/
def P17289099570125356174.Spec : Prop :=
  ∀ n, P17289099570125356174.a n = A180735 n

end A180735

/-! ## A180735.P2162199057312302324

`A078016(n+1)-A078016(n+2)`
-/

namespace A180735.P2162199057312302324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078016 (n + 1) - A078016 (n + 2)

end

end A180735.P2162199057312302324

namespace A180735

/-- `A078016(n+1)-A078016(n+2)` -/
def P2162199057312302324.Spec : Prop :=
  ∀ n, P2162199057312302324.a n = A180735 n

end A180735

/-! ## A180735.P224168911784244657

`Δ[(-1)^n*A319200(n)]`
-/

namespace A180735.P224168911784244657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A319200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A180735.P224168911784244657

namespace A180735

/-- `Δ[(-1)^n*A319200(n)]` -/
def P224168911784244657.Spec : Prop :=
  ∀ n, P224168911784244657.a n = A180735 n

end A180735

/-!
# A180736: a(n) = [r]*[2*r]*...*[n*r], where r=sqrt(2) and []=floor.

The programs for A180736, there is no canonical definition to state claims against.
-/

/-! ## A180736.P9253138129038941897

`∏[floor((n+1)*sqrt(2))]`
-/

namespace A180736.P9253138129038941897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A180736.P9253138129038941897

/-! ## A180736.P6367118142896486400

`floor((n+1)*sqrt(2))*a(n-1)` with `a(0)=1`
-/

namespace A180736.P6367118142896486400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ * a (n - 1)

end

end A180736.P6367118142896486400

/-! ## A180736.P8359188926331923666

`abs(∏[-A001951(n+1)])`
-/

namespace A180736.P8359188926331923666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A180736.P8359188926331923666

/-! ## A180736.P17338565880781067263

`floor(∏[sqrt(A087055(n+1))])`
-/

namespace A180736.P17338565880781067263
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A180736.P17338565880781067263

/-! ## A180736.P5700849669406069719

`record[a(n-2)*A049472(n)]` with `a(0)=1, a(1)=0`
-/

namespace A180736.P5700849669406069719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) * A049472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180736.P5700849669406069719

/-! ## A180736.P18069573019036553359

`a(n-1)*A049472(2*(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A180736.P18069573019036553359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A049472 (2 * (n + 1))

end

end A180736.P18069573019036553359

/-! ## A180736.P9120982079052756304

`a(n-1)*A001951(2*n+1-n)` with `a(0)=1`
-/

namespace A180736.P9120982079052756304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001951 (2 * n + 1 - n)

end

end A180736.P9120982079052756304

/-! ## A180736.P480409351524268607

`lcm(∏[A001951(n+1)], A001316(n))`
-/

namespace A180736.P480409351524268607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (A001316 n)

end

end A180736.P480409351524268607

/-! ## A180736.P5910894329446424575

`a(n-1)*A194921(2*n²)` with `a(0)=1`
-/

namespace A180736.P5910894329446424575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A194921 (2 * n ^ 2)

end

end A180736.P5910894329446424575

/-!
# A180737: a(n) is the largest n-digit square whose sum of digits is also a square.

The programs for A180737, there is no canonical definition to state claims against.
-/

/-! ## A180737.P10739975663931414361

`or(A018370(n+2), A149045(n))²`
-/

namespace A180737.P10739975663931414361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018370 (n + 2)) (A149045 n) ^ 2

end

end A180737.P10739975663931414361

/-!
# A180738: Largest n-digit cube whose sum of digits is also a cube, or 0 if there is no such number.

The programs for A180738, there is no canonical definition to state claims against.
-/

/-! ## A180738.P10638094935171423991

`A000578(xor(A020475(n+4), A357620(2*n+1)))`
-/

namespace A180738.P10638094935171423991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (Int.xor (A020475 (n + 4)) (A357620 (2 * n + 1))).toNat

end

end A180738.P10638094935171423991

/-!
# A180739: Number of numerical semigroups of multiplicity n and genus n+2.

The programs for A180739, the canonical program `A180739.P13207891884943685947` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180739 has offset 2).

The definition of A180739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180739.P14220053915734926690

`∑[C(char[2]+n, 2)+1]`
-/

namespace A180739.P14220053915734926690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f2 j = n then 1 else 0) + n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180739.P14220053915734926690

namespace A180739

/-- `∑[C(char[2]+n, 2)+1]` -/
def P14220053915734926690.Spec : Prop :=
  ∀ n, (P14220053915734926690.a n : ℤ) = A180739 (n + 2)

end A180739

/-! ## A180739.P13207891884943685947

`∑[C(n, 2)+1]+2%(n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180739

/-- `∑[C(n, 2)+1]+2%(n+1)` -/
def P13207891884943685947.Spec : Prop :=
  ∀ n, (P13207891884943685947.a n : ℤ) = A180739 (n + 2)

theorem P13207891884943685947.correct : P13207891884943685947.Spec := by
  intro n
  simp only [A180739, Nat.add_sub_cancel]

end A180739

/-! ## A180739.P2405156620734616539

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=3`
-/

namespace A180739.P2405156620734616539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 0, 3] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180739.P2405156620734616539

namespace A180739

/-- `∑[∑[a(n-1)+1]]` -/
def P2405156620734616539.Spec : Prop :=
  ∀ n, (P2405156620734616539.a n : ℤ) = A180739 (n + 2)

end A180739

/-! ## A180739.P15061701256425480302

`∑[n-(1-a(n-1))]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=4`
-/

namespace A180739.P15061701256425480302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 4] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180739.P15061701256425480302

namespace A180739

/-- `∑[n-(1-a(n-1))]` -/
def P15061701256425480302.Spec : Prop :=
  ∀ n, P15061701256425480302.a n = A180739 (n + 2)

end A180739

/-! ## A180739.P2614045373216686292

`A283551(n)+A267649(n)`
-/

namespace A180739.P2614045373216686292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283551 n + A267649 n

end

end A180739.P2614045373216686292

namespace A180739

/-- `A283551(n)+A267649(n)` -/
def P2614045373216686292.Spec : Prop :=
  ∀ n, P2614045373216686292.a n = A180739 (n + 2)

end A180739

/-! ## A180739.P8298506901178317278

`A038793(n+3)-A254667(n)`
-/

namespace A180739.P8298506901178317278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038793 (n + 3) - A254667 n

end

end A180739.P8298506901178317278

namespace A180739

/-- `A038793(n+3)-A254667(n)` -/
def P8298506901178317278.Spec : Prop :=
  ∀ n, P8298506901178317278.a n = A180739 (n + 2)

end A180739

/-! ## A180739.P16313653199958292281

`A201347(n+1)-A300576(n+1)`
-/

namespace A180739.P16313653199958292281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201347 (n + 1) - A300576 (n + 1)

end

end A180739.P16313653199958292281

namespace A180739

/-- `A201347(n+1)-A300576(n+1)` -/
def P16313653199958292281.Spec : Prop :=
  ∀ n, P16313653199958292281.a n = A180739 (n + 2)

end A180739

/-!
# A180740: Numbers k such that 7^k + 5^k + 1 is prime.

The programs for A180740, there is no canonical definition to state claims against.
-/

/-! ## A180740.P12051628587284969286

`xor(A004086(A006723(3*(n+1))), A126869(n))`
-/

namespace A180740.P12051628587284969286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004086 (A006723 (3 * (n + 1))).toNat) (A126869 n)

end

end A180740.P12051628587284969286

/-!
# A180741: Numbers k such that 5^k + 3^k - 1 is prime.

The programs for A180741, there is no canonical definition to state claims against.
-/

/-! ## A180741.P7971372239488856470

`A197625(∑[n!])`
-/

namespace A180741.P7971372239488856470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197625 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180741.P7971372239488856470

/-!
# A180742: Numbers n such that n^7-n^5+1 is prime.

The programs for A180742, there is no canonical definition to state claims against.
-/

/-! ## A180742.P13596914313181791839

`A115017(n+1)+∑[A121289(A032559(n+1))]`
-/

namespace A180742.P13596914313181791839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (A032559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115017 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180742.P13596914313181791839

/-!
# A180744: Numbers k such that 7^k - 5^k - 1 is prime.

The programs for A180744, there is no canonical definition to state claims against.
-/

/-! ## A180744.P4575617256781275595

`xor(A000267(A048229(n+1)), A248608(n!))`
-/

namespace A180744.P4575617256781275595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000267 (A048229 (n + 1)).toNat) (A248608 (Nat.factorial n))

end

end A180744.P4575617256781275595

/-!
# A180745: Numbers k such that 7^k - 5^k + 1 is prime.

The programs for A180745, there is no canonical definition to state claims against.
-/

/-! ## A180745.P17806138466787446010

`lcm(A173290(n+1), A183380(A308204(n+1)))`
-/

namespace A180745.P17806138466787446010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A173290 (n + 1)) (A183380 (A308204 (n + 1)).toNat)

end

end A180745.P17806138466787446010

/-!
# A180746: Partial sums of A004144.

The programs for A180746, the canonical program `A180746.P15395400586110658836` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180746 has offset 1).

The definition of A180746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6789 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180746.P11309771755321928226

`∑[A004144(n+1)]`
-/

namespace A180746.P11309771755321928226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P11309771755321928226

namespace A180746

/-- `∑[A004144(n+1)]` -/
def P11309771755321928226.Spec : Prop :=
  ∀ n, P11309771755321928226.a n = A180746 (n + 1)

end A180746

/-! ## A180746.P15395400586110658836

`∑[eq[0, A046080(n+1)]+1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A180746

/-- `∑[eq[0, A046080(n+1)]+1]` -/
def P15395400586110658836.Spec : Prop :=
  ∀ n, (P15395400586110658836.a n : ℤ) = A180746 (n + 1)

theorem P15395400586110658836.correct : P15395400586110658836.Spec := by
  intro n
  simp only [A180746, Nat.add_sub_cancel]

end A180746

/-! ## A180746.P13939660216375532827

`∑[sqrt(A000548(n+1))]`
-/

namespace A180746.P13939660216375532827
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000548 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P13939660216375532827

namespace A180746

/-- `∑[sqrt(A000548(n+1))]` -/
def P13939660216375532827.Spec : Prop :=
  ∀ n, P13939660216375532827.a n = (A180746 (n + 1) : ℝ)

end A180746

/-! ## A180746.P10454041225374208548

`∑[eq[4, A046109(n)]]`
-/

namespace A180746.P10454041225374208548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P10454041225374208548

namespace A180746

/-- `∑[eq[4, A046109(n)]]` -/
def P10454041225374208548.Spec : Prop :=
  ∀ n, (P10454041225374208548.a n : ℤ) = A180746 (n + 1)

end A180746

/-! ## A180746.P14156146715964664607

`∑[record[A072438(n+1)]]`
-/

namespace A180746.P14156146715964664607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P14156146715964664607

namespace A180746

/-- `∑[record[A072438(n+1)]]` -/
def P14156146715964664607.Spec : Prop :=
  ∀ n, P14156146715964664607.a n = A180746 (n + 1)

end A180746

/-! ## A180746.P12869213042654243897

`∑[lt[A108708(n+1), 1]+1]`
-/

namespace A180746.P12869213042654243897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P12869213042654243897

namespace A180746

/-- `∑[lt[A108708(n+1), 1]+1]` -/
def P12869213042654243897.Spec : Prop :=
  ∀ n, (P12869213042654243897.a n : ℤ) = A180746 (n + 1)

end A180746

/-! ## A180746.P5782168761735249135

`∑[lt[A256452(n+1), 2]+1]`
-/

namespace A180746.P5782168761735249135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P5782168761735249135

namespace A180746

/-- `∑[lt[A256452(n+1), 2]+1]` -/
def P5782168761735249135.Spec : Prop :=
  ∀ n, (P5782168761735249135.a n : ℤ) = A180746 (n + 1)

end A180746

/-! ## A180746.P10940221556660754802

`∑[record[n+1-A005081(n+1)]]`
-/

namespace A180746.P10940221556660754802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005081 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P10940221556660754802

namespace A180746

/-- `∑[record[n+1-A005081(n+1)]]` -/
def P10940221556660754802.Spec : Prop :=
  ∀ n, P10940221556660754802.a n = A180746 (n + 1)

end A180746

/-! ## A180746.P10063080079908818530

`∑[eq[A014963(4*n+2), A063014(n)]]`
-/

namespace A180746.P10063080079908818530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P10063080079908818530

namespace A180746

/-- `∑[eq[A014963(4*n+2), A063014(n)]]` -/
def P10063080079908818530.Spec : Prop :=
  ∀ n, (P10063080079908818530.a n : ℤ) = A180746 (n + 1)

end A180746

/-! ## A180746.P5944437069440355386

`∑[eq[1, A025435(n²)]]`
-/

namespace A180746.P5944437069440355386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180746.P5944437069440355386

namespace A180746

/-- `∑[eq[1, A025435(n²)]]` -/
def P5944437069440355386.Spec : Prop :=
  ∀ n, (P5944437069440355386.a n : ℤ) = A180746 (n + 1)

end A180746

/-!
# A180747: G.f.: A(x) = x/Series_Reversion(x*G(x)) where G(x) = Sum_{n>=0} (n+1)^(n-1)*x^n.

The programs for A180747, there is no canonical definition to state claims against.
-/

/-! ## A180747.P9360645705748932967

`A397590(∑[n]+n)`
-/

namespace A180747.P9360645705748932967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397590 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A180747.P9360645705748932967

/-! ## A180747.P751372473034624124

`abs(record[A397590(n+1)])`
-/

namespace A180747.P751372473034624124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A180747.P751372473034624124

/-!
# A180748: Numbers k such that k^2 - k + 1 is semiprime.

The programs for A180748, there is no canonical definition to state claims against.
-/

/-! ## A180748.P11362102987244492155

`A085746(n+1)+1`
-/

namespace A180748.P11362102987244492155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085746 (n + 1) + 1

end

end A180748.P11362102987244492155

/-! ## A180748.P4979418714189782230

`ceil(sqrt(A176069(n+1)))`
-/

namespace A180748.P4979418714189782230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A176069 (n + 1) : ℝ)⌉

end

end A180748.P4979418714189782230

/-! ## A180748.P9881343088262139401

`eq[6, A278251(n)]`
-/

namespace A180748.P9881343088262139401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180748.P9881343088262139401

/-! ## A180748.P16610036587677830948

`A020725(A085746(n+1))`
-/

namespace A180748.P16610036587677830948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A085746 (n + 1)).toNat

end

end A180748.P16610036587677830948

/-! ## A180748.P6181385628845987248

`eq[6, A278260(A004280(n+1))]`
-/

namespace A180748.P6181385628845987248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (A004280 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180748.P6181385628845987248

/-! ## A180748.P4548409647341825300

`eq[A040007(2*n), A278260(2*n+1)]+1`
-/

namespace A180748.P4548409647341825300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180748.P4548409647341825300

/-! ## A180748.P12362548120670924460

`A008619(eq[A040007(n), A278260(n+1)])`
-/

namespace A180748.P12362548120670924460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A180748.P12362548120670924460

/-! ## A180748.P17946603063532549061

`A029579(eq[A040007(n), A278260(n+1)])`
-/

namespace A180748.P17946603063532549061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A180748.P17946603063532549061

/-! ## A180748.P14337257161524590368

`eq[2, ∑{e}[(1-n)²+n, #]]`
-/

namespace A180748.P14337257161524590368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A180748.P14337257161524590368

/-! ## A180748.P3229581539181286786

`eq[2, ∑{e}[∑[A004277(n)], #]]+1`
-/

namespace A180748.P3229581539181286786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A180748.P3229581539181286786

/-! ## A180748.P6329810016654482424

`eq[2, A001222((1-n)²+n)]`
-/

namespace A180748.P6329810016654482424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180748.P6329810016654482424

/-! ## A180748.P14544393015466947166

`eq[4, A001222(n²-(n-1))²]`
-/

namespace A180748.P14544393015466947166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180748.P14544393015466947166

/-! ## A180748.P7364492204968988088

`eq[2, A001222(∑[2*n]+1)]+1`
-/

namespace A180748.P7364492204968988088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A180748.P7364492204968988088

/-! ## A180748.P9854534798884505031

`eq[2, A033273(A002522(n)-n)]`
-/

namespace A180748.P9854534798884505031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A002522 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A180748.P9854534798884505031

/-!
# A180749: G.f.: A(x) = x/Series_Reversion(x*G(x)) where G(x) = Sum_{n>=0} (n+1)^n*x^n.

The programs for A180749, there is no canonical definition to state claims against.
-/

/-! ## A180749.P7162543866802428376

`∑[A005229(A135744(n))]`
-/

namespace A180749.P7162543866802428376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A135744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180749.P7162543866802428376

/-! ## A180749.P2453781298138275029

`∑[∑[A352829(A038410(n))]]`
-/

namespace A180749.P2453781298138275029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (A038410 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180749.P2453781298138275029

/-!
# A180750: a(n) = DP(n) is the total number of k-double-palindromes of n, where 2 <= k <= n.

The programs for A180750, the canonical program `A180750.P8982842106611708069` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180750 has offset 1).

The definition of A180750 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180750.P8982842106611708069

`A180249(n+1)-A179781(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A180750

/-- `A180249(n+1)-A179781(n+1)` -/
def P8982842106611708069.Spec : Prop :=
  ∀ n, P8982842106611708069.a n = A180750 (n + 1)

theorem P8982842106611708069.correct : P8982842106611708069.Spec := by
  intro n
  simp only [A180750, Nat.add_sub_cancel]

end A180750

/-! ## A180750.P13865328396685975526

`A328688(n+1)+1-A179781(n+1)`
-/

namespace A180750.P13865328396685975526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328688 (n + 1) + (1 - A179781 (n + 1))

end

end A180750.P13865328396685975526

namespace A180750

/-- `A328688(n+1)+1-A179781(n+1)` -/
def P13865328396685975526.Spec : Prop :=
  ∀ n, P13865328396685975526.a n = A180750 (n + 1)

end A180750

/-! ## A180750.P854316827350325452

`∑{d}[n+1, A180322(#)]-A179781(n+1)`
-/

namespace A180750.P854316827350325452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A180322 d - A179781 (n + 1)

end

end A180750.P854316827350325452

namespace A180750

/-- `∑{d}[n+1, A180322(#)]-A179781(n+1)` -/
def P854316827350325452.Spec : Prop :=
  ∀ n, P854316827350325452.a n = A180750 (n + 1)

end A180750

/-! ## A180750.P4772285239582384521

`A180249(n+1)+A181135(n+1)-A180322(n+1)`
-/

namespace A180750.P4772285239582384521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180249 (n + 1) + (A181135 (n + 1) - A180322 (n + 1))

end

end A180750.P4772285239582384521

namespace A180750

/-- `A180249(n+1)+A181135(n+1)-A180322(n+1)` -/
def P4772285239582384521.Spec : Prop :=
  ∀ n, P4772285239582384521.a n = A180750 (n + 1)

end A180750

/-! ## A180750.P6184262080148548198

`A007055(n+1)/2-A179781(n+1)`
-/

namespace A180750.P6184262080148548198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007055 (n + 1) : ℚ) / 2 - (A179781 (n + 1) : ℚ)

end

end A180750.P6184262080148548198

namespace A180750

/-- `A007055(n+1)/2-A179781(n+1)` -/
def P6184262080148548198.Spec : Prop :=
  ∀ n, P6184262080148548198.a n = (A180750 (n + 1) : ℚ)

end A180750

/-!
# A180751: Half the number of n X n binary arrays with each element equal to at least two neighbors.

The programs for A180751, there is no canonical definition to state claims against.
-/

/-! ## A180751.P11387144105458419297

`A180760(∑[4*n]+1)`
-/

namespace A180751.P11387144105458419297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180751.P11387144105458419297

/-! ## A180751.P8936535312436643188

`A180760(A001844(n))+A011730(n)`
-/

namespace A180751.P8936535312436643188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A001844 n).toNat + A011730 n

end

end A180751.P8936535312436643188

/-! ## A180751.P7884734348746444398

`A007318(floor(1/(n+1)))*A180760(A001844(n))`
-/

namespace A180751.P7884734348746444398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A180760 (A001844 n).toNat

end

end A180751.P7884734348746444398

/-! ## A180751.P13104213028039270605

`A180760(A001844(n))^A014963(2*A000032(n+1))`
-/

namespace A180751.P13104213028039270605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180760 (A001844 n).toNat : ℚ) ^ (A014963 (2 * A000032 (n + 1)).toNat : ℤ)

end

end A180751.P13104213028039270605

/-!
# A180752: Half the number of nX3 binary arrays with each element equal to at least two neighbors.

The programs for A180752, the canonical program `A180752.P5843443647452936310` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180752 has offset 1).

The definition of A180752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180752.P5843443647452936310

`2*a(n-1)+a(n-2)-a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180752

/-- `2*a(n-1)+a(n-2)-a(n-3)-a(n-5)` -/
def P5843443647452936310.Spec : Prop :=
  ∀ n, P5843443647452936310.a n = A180752 (n + 1)

theorem P5843443647452936310.correct : P5843443647452936310.Spec := by
  intro n
  simp only [A180752, Nat.add_sub_cancel]

end A180752

/-! ## A180752.P5770488247531466180

`A052980(n-2)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A180752.P5770488247531466180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A052980 (n - 2) + a (n - 2)

end

end A180752.P5770488247531466180

namespace A180752

/-- `A052980(n-2)+a(n-2)` -/
def P5770488247531466180.Spec : Prop :=
  ∀ n, P5770488247531466180.a n = A180752 (n + 1)

end A180752

/-! ## A180752.P1562422711570754186

`A193641(n+1)-round(∑[A193641(n+1)]/2)`
-/

namespace A180752.P1562422711570754186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) - SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)

end

end A180752.P1562422711570754186

namespace A180752

/-- `A193641(n+1)-round(∑[A193641(n+1)]/2)` -/
def P1562422711570754186.Spec : Prop :=
  ∀ n, P1562422711570754186.a n = A180752 (n + 1)

end A180752

/-! ## A180752.P2299246748219859517

`A180760(∑[n+2]+4)`
-/

namespace A180752.P2299246748219859517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A180752.P2299246748219859517

namespace A180752

/-- `A180760(∑[n+2]+4)` -/
def P2299246748219859517.Spec : Prop :=
  ∀ n, P2299246748219859517.a n = A180752 (n + 1)

end A180752

/-! ## A180752.P13553429234578806201

`A180760(A167614(n+1))+A025438(n)`
-/

namespace A180752.P13553429234578806201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A167614 (n + 1)).toNat + A025438 n

end

end A180752.P13553429234578806201

namespace A180752

/-- `A180760(A167614(n+1))+A025438(n)` -/
def P13553429234578806201.Spec : Prop :=
  ∀ n, P13553429234578806201.a n = A180752 (n + 1)

end A180752

/-!
# A180753: Half the number of nX4 binary arrays with each element equal to at least two neighbors.

The programs for A180753, there is no canonical definition to state claims against.
-/

/-! ## A180753.P16096406033847115915

`A180760(∑[n+3]+7)`
-/

namespace A180753.P16096406033847115915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A180753.P16096406033847115915

/-! ## A180753.P239210128944213590

`A180760(A027379(n+2))%A099370(n)`
-/

namespace A180753.P239210128944213590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180760 (A027379 (n + 2)).toNat) (A099370 n)

end

end A180753.P239210128944213590

/-! ## A180753.P18142106774480667142

`A180760(A027379(n+2))+A010341(∑{d}[n+1, #]²)`
-/

namespace A180753.P18142106774480667142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A027379 (n + 2)).toNat + A010341 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2)

end

end A180753.P18142106774480667142

/-!
# A180754: Half the number of nX5 binary arrays with each element equal to at least two neighbors.

The programs for A180754, there is no canonical definition to state claims against.
-/

/-! ## A180754.P204177422853945129

`A180760(A374005(n+1))`
-/

namespace A180754.P204177422853945129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A374005 (n + 1)).toNat

end

end A180754.P204177422853945129

/-! ## A180754.P7234685379097583762

`A180760(A167499(n+3))`
-/

namespace A180754.P7234685379097583762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A167499 (n + 3)).toNat

end

end A180754.P7234685379097583762

/-! ## A180754.P7907492165334731991

`A180760(A027379(n+2)+8)`
-/

namespace A180754.P7907492165334731991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A027379 (n + 2) + 8).toNat

end

end A180754.P7907492165334731991

/-! ## A180754.P9259063770511843916

`A180760(A052905(n+1)+10)`
-/

namespace A180754.P9259063770511843916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A052905 (n + 1) + 10).toNat

end

end A180754.P9259063770511843916

/-! ## A180754.P4885001498383604672

`A180760(A038722(Δ[A023545(n+1)]))`
-/

namespace A180754.P4885001498383604672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A180754.P4885001498383604672

/-!
# A180755: Half the number of nX6 binary arrays with each element equal to at least two neighbors.

The programs for A180755, there is no canonical definition to state claims against.
-/

/-! ## A180755.P10931867117275907240

`A180760(A374007(n+1))`
-/

namespace A180755.P10931867117275907240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A374007 (n + 1)).toNat

end

end A180755.P10931867117275907240

/-! ## A180755.P8626994272305392978

`A180760(A000217(n+5)+6)`
-/

namespace A180755.P8626994272305392978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A000217 (n + 5) + 6).toNat

end

end A180755.P8626994272305392978

/-! ## A180755.P14578861403829301729

`A180760(A161680(n+6)+6)`
-/

namespace A180755.P14578861403829301729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A161680 (n + 6) + 6).toNat

end

end A180755.P14578861403829301729

/-! ## A180755.P2829786050935299675

`A180760(A046691(n+3)+10)`
-/

namespace A180755.P2829786050935299675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A046691 (n + 3) + 10).toNat

end

end A180755.P2829786050935299675

/-! ## A180755.P10013013744348671194

`A180760(A055999(n+4)-A005408(n))`
-/

namespace A180755.P10013013744348671194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A055999 (n + 4) - A005408 n).toNat

end

end A180755.P10013013744348671194

/-!
# A180756: Half the number of nX7 binary arrays with each element equal to at least two neighbors.

The programs for A180756, there is no canonical definition to state claims against.
-/

/-! ## A180756.P4855889778855436897

`A180760(A374008(n+1))`
-/

namespace A180756.P4855889778855436897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A374008 (n + 1)).toNat

end

end A180756.P4855889778855436897

/-! ## A180756.P16058248770059108412

`A180760(A167499(n+5)+2)`
-/

namespace A180756.P16058248770059108412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A167499 (n + 5) + 2).toNat

end

end A180756.P16058248770059108412

/-! ## A180756.P10366898246240952152

`A180760(A000124(n+6)+6)`
-/

namespace A180756.P10366898246240952152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A000124 (n + 6) + 6).toNat

end

end A180756.P10366898246240952152

/-! ## A180756.P15761754260732321709

`A180760(A000217(n+6)+7)`
-/

namespace A180756.P15761754260732321709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A000217 (n + 6) + 7).toNat

end

end A180756.P15761754260732321709

/-! ## A180756.P13278047479311536890

`A180760(A161680(n+7)+7)`
-/

namespace A180756.P13278047479311536890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A161680 (n + 7) + 7).toNat

end

end A180756.P13278047479311536890

/-!
# A180757: Half the number of nX8 binary arrays with each element equal to at least two neighbors.

The programs for A180757, there is no canonical definition to state claims against.
-/

/-! ## A180757.P8201533165653447494

`A180760(A374009(n+1))`
-/

namespace A180757.P8201533165653447494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A374009 (n + 1)).toNat

end

end A180757.P8201533165653447494

/-! ## A180757.P7206169807981360521

`A180760(eq[13, A066657(n)])`
-/

namespace A180757.P7206169807981360521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180757.P7206169807981360521

/-! ## A180757.P14098146646101663917

`A180760(eq[9, A131818(n+1)])`
-/

namespace A180757.P14098146646101663917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180757.P14098146646101663917

/-! ## A180757.P3966139613401479169

`A180760(eq[5, A219347(n)])`
-/

namespace A180757.P3966139613401479169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180757.P3966139613401479169

/-! ## A180757.P2112134823759099176

`A180760(eq[7, A193592(n)])`
-/

namespace A180757.P2112134823759099176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180757.P2112134823759099176

/-!
# A180758: Half the number of nX9 binary arrays with each element equal to at least two neighbors.

The programs for A180758, there is no canonical definition to state claims against.
-/

/-! ## A180758.P15551934774668952486

`A180760(A374010(n+1))`
-/

namespace A180758.P15551934774668952486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A374010 (n + 1)).toNat

end

end A180758.P15551934774668952486

/-! ## A180758.P4829691867776191037

`A180760(eq[10, A131818(n+1)])`
-/

namespace A180758.P4829691867776191037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180758.P4829691867776191037

/-! ## A180758.P11546610756248362348

`A180760(eq[10, A135223(n+1)])`
-/

namespace A180758.P11546610756248362348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180758.P11546610756248362348

/-! ## A180758.P16161855626728247152

`A180760(eq[6, A219347(n)])`
-/

namespace A180758.P16161855626728247152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180758.P16161855626728247152

/-! ## A180758.P12495820124126075856

`A180760(eq[8, A193592(n)])`
-/

namespace A180758.P12495820124126075856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180758.P12495820124126075856

/-!
# A180759: Half the number of nX10 binary arrays with each element equal to at least two neighbors.

The programs for A180759, there is no canonical definition to state claims against.
-/

/-! ## A180759.P13462789027762141216

`A180760(A374011(n+1))`
-/

namespace A180759.P13462789027762141216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (A374011 (n + 1)).toNat

end

end A180759.P13462789027762141216

/-! ## A180759.P17307331793375150848

`A180760(eq[10, A130270(n+1)])`
-/

namespace A180759.P17307331793375150848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180759.P17307331793375150848

/-! ## A180759.P16537469305104435923

`A180760(eq[11, A131818(n+1)])`
-/

namespace A180759.P16537469305104435923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180759.P16537469305104435923

/-! ## A180759.P2916719282820967230

`A180760(eq[8, A219347(n)])`
-/

namespace A180759.P2916719282820967230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180759.P2916719282820967230

/-! ## A180759.P12872536301463647129

`A180760(eq[9, A193592(n)])`
-/

namespace A180759.P12872536301463647129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180759.P12872536301463647129

/-!
# A180760: T(n,k)=half the number of nXk binary arrays with each element equal to at least two neighbors.

The programs for A180760, there is no canonical definition to state claims against.
-/

/-! ## A180760.P15915791553257833838

`A298183(n+1)^A271206(A186727(n))`
-/

namespace A180760.P15915791553257833838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298183 (n + 1) : ℚ) ^ (A271206 (A186727 n).toNat : ℤ)

end

end A180760.P15915791553257833838

/-! ## A180760.P4219130145687736262

`A298187(n+1)^A271206(A186727(n))`
-/

namespace A180760.P4219130145687736262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298187 (n + 1) : ℚ) ^ (A271206 (A186727 n).toNat : ℤ)

end

end A180760.P4219130145687736262

/-! ## A180760.P12089933697836687855

`A298183(n+1)^A000009(A317554(n+1))`
-/

namespace A180760.P12089933697836687855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298183 (n + 1) : ℚ) ^ (A000009 (A317554 (n + 1)).toNat : ℤ)

end

end A180760.P12089933697836687855

/-! ## A180760.P16589000641005998260

`A298187(n+1)^A000009(A317554(n+1))`
-/

namespace A180760.P16589000641005998260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298187 (n + 1) : ℚ) ^ (A000009 (A317554 (n + 1)).toNat : ℤ)

end

end A180760.P16589000641005998260

/-! ## A180760.P1839748424955947039

`A298183(n+1)^A167965(A318037(n+1))`
-/

namespace A180760.P1839748424955947039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298183 (n + 1) : ℚ) ^ (A167965 (A318037 (n + 1)).toNat : ℤ)

end

end A180760.P1839748424955947039

/-!
# A180761: Half the number of n X n binary arrays with each element equal to at least one neighbor.

The programs for A180761, there is no canonical definition to state claims against.
-/

/-! ## A180761.P10740199962063381376

`A180771(∑[4*n]+1)`
-/

namespace A180761.P10740199962063381376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180761.P10740199962063381376

/-! ## A180761.P17606724457319390710

`A185063(n)+A180771(A001844(n))`
-/

namespace A180761.P17606724457319390710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 n + A180771 (A001844 n).toNat

end

end A180761.P17606724457319390710

/-! ## A180761.P16434416573786886208

`A054977(n)*A180771(A001844(n))`
-/

namespace A180761.P16434416573786886208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A180771 (A001844 n).toNat

end

end A180761.P16434416573786886208

/-! ## A180761.P12552245280111946345

`lcm(A033999(n), A180771(A001844(n)))`
-/

namespace A180761.P12552245280111946345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A180771 (A001844 n).toNat)

end

end A180761.P12552245280111946345

/-! ## A180761.P9649299059739155650

`A180771(A001844(n))+A038141(n+1)`
-/

namespace A180761.P9649299059739155650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A001844 n).toNat + A038141 (n + 1)

end

end A180761.P9649299059739155650

/-!
# A180762: Half the number of nX2 binary arrays with each element equal to at least one neighbor.

The programs for A180762, the canonical program `A180762.P14794715841614087808` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180762 has offset 1).

The definition of A180762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180762.P8023546402580553495

`ogf((1+x^2-2x^3)/(1-3x-x^2+2x^4))`
-/

namespace A180762.P8023546402580553495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, -2] [1, -3, -1, 0, 2] n

end

end A180762.P8023546402580553495

namespace A180762

/-- `ogf((1+x^2-2x^3)/(1-3x-x^2+2x^4))` -/
def P8023546402580553495.Spec : Prop :=
  ∀ n, P8023546402580553495.a n = A180762 (n + 1)

end A180762

/-! ## A180762.P14794715841614087808

`3*a(n-1)+a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=34`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A180762

/-- `3*a(n-1)+a(n-2)-2*a(n-4)` -/
def P14794715841614087808.Spec : Prop :=
  ∀ n, P14794715841614087808.a n = A180762 (n + 1)

theorem P14794715841614087808.correct : P14794715841614087808.Spec := by
  intro n
  simp only [A180762, Nat.add_sub_cancel]

end A180762

/-! ## A180762.P10204348232177435978

`A240478(n+1)-Δ[A220726(n+1)]`
-/

namespace A180762.P10204348232177435978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240478 (n + 1) - (f1 (n + 1) - f1 n)

end

end A180762.P10204348232177435978

namespace A180762

/-- `A240478(n+1)-Δ[A220726(n+1)]` -/
def P10204348232177435978.Spec : Prop :=
  ∀ n, P10204348232177435978.a n = A180762 (n + 1)

end A180762

/-! ## A180762.P6237398238392816189

`A281469(∑[n+2])-Δ[A220726(n+1)]`
-/

namespace A180762.P6237398238392816189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j) - (f2 (n + 1) - f2 n)

end

end A180762.P6237398238392816189

namespace A180762

/-- `A281469(∑[n+2])-Δ[A220726(n+1)]` -/
def P6237398238392816189.Spec : Prop :=
  ∀ n, P6237398238392816189.a n = A180762 (n + 1)

end A180762

/-! ## A180762.P17795350940887428013

`A180771(∑[n+1]+2)`
-/

namespace A180762.P17795350940887428013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A180762.P17795350940887428013

namespace A180762

/-- `A180771(∑[n+1]+2)` -/
def P17795350940887428013.Spec : Prop :=
  ∀ n, P17795350940887428013.a n = A180762 (n + 1)

end A180762

/-!
# A180763: Half the number of n X 3 binary arrays with each element equal to at least one neighbor.

The programs for A180763, there is no canonical definition to state claims against.
-/

/-! ## A180763.P3076650823697848634

`A180771(∑[n+2]+4)`
-/

namespace A180763.P3076650823697848634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A180763.P3076650823697848634

/-! ## A180763.P3737713160467436771

`gcd(floor(acot(n)), A180771(A167614(n+1)))`
-/

namespace A180763.P3737713160467436771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A180771 (A167614 (n + 1)).toNat)

end

end A180763.P3737713160467436771

/-! ## A180763.P2754088938323895291

`record[A180771(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A180763.P2754088938323895291
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180763.P2754088938323895291

/-! ## A180763.P11496511215085806725

`A180771(A167614(n+1))+A025469(n)`
-/

namespace A180763.P11496511215085806725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A167614 (n + 1)).toNat + A025469 n

end

end A180763.P11496511215085806725

/-! ## A180763.P9234954995437023088

`A185238(n)+A180771(A167614(n+1))`
-/

namespace A180763.P9234954995437023088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A180771 (A167614 (n + 1)).toNat

end

end A180763.P9234954995437023088

/-!
# A180764: Half the number of nX4 binary arrays with each element equal to at least one neighbor.

The programs for A180764, there is no canonical definition to state claims against.
-/

/-! ## A180764.P13697867986558608071

`A180771(∑[n+3]+7)`
-/

namespace A180764.P13697867986558608071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A180764.P13697867986558608071

/-! ## A180764.P12839095809922281090

`A180771(A055998(n+2))+A025469(n)`
-/

namespace A180764.P12839095809922281090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A055998 (n + 2)).toNat + A025469 n

end

end A180764.P12839095809922281090

/-! ## A180764.P9331831462435273053

`A185238(n)+A180771(A055998(n+2))`
-/

namespace A180764.P9331831462435273053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A180771 (A055998 (n + 2)).toNat

end

end A180764.P9331831462435273053

/-! ## A180764.P6212676957483747790

`or(A102683(n), A180771(A055998(n+2)))`
-/

namespace A180764.P6212676957483747790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A180771 (A055998 (n + 2)).toNat)

end

end A180764.P6212676957483747790

/-! ## A180764.P11884118940565423073

`A180771(A055998(n+2))+A000035(2*(n+1))`
-/

namespace A180764.P11884118940565423073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A055998 (n + 2)).toNat + A000035 (2 * (n + 1))

end

end A180764.P11884118940565423073

/-!
# A180765: Half the number of nX5 binary arrays with each element equal to at least one neighbor.

The programs for A180765, there is no canonical definition to state claims against.
-/

/-! ## A180765.P9689629528886784840

`A180771(A374005(n+1))`
-/

namespace A180765.P9689629528886784840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A374005 (n + 1)).toNat

end

end A180765.P9689629528886784840

/-! ## A180765.P14034511669782150645

`A180771(A141214(n+1)+8)`
-/

namespace A180765.P14034511669782150645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A141214 (n + 1) + 8).toNat

end

end A180765.P14034511669782150645

/-! ## A180765.P8391732398209404512

`A180771(eq[4, A193592(n)])`
-/

namespace A180765.P8391732398209404512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180765.P8391732398209404512

/-! ## A180765.P10819873073773877337

`A180771(eq[8, A166065(n)])`
-/

namespace A180765.P10819873073773877337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180765.P10819873073773877337

/-! ## A180765.P9093386674347030167

`A180771(Δ[A023545(n+1)])`
-/

namespace A180765.P9093386674347030167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (f1 (n + 1) - f1 n).toNat

end

end A180765.P9093386674347030167

/-!
# A180766: Half the number of nX6 binary arrays with each element equal to at least one neighbor.

The programs for A180766, there is no canonical definition to state claims against.
-/

/-! ## A180766.P3576969679581027180

`A180771(A374007(n+1))`
-/

namespace A180766.P3576969679581027180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A374007 (n + 1)).toNat

end

end A180766.P3576969679581027180

/-! ## A180766.P7672036806840065746

`A180771(A000217(n+5)+6)`
-/

namespace A180766.P7672036806840065746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A000217 (n + 5) + 6).toNat

end

end A180766.P7672036806840065746

/-! ## A180766.P13597173562430613918

`A180771(eq[3, A219347(n)])`
-/

namespace A180766.P13597173562430613918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180766.P13597173562430613918

/-! ## A180766.P11155361901947818062

`A180771(eq[5, A193592(n)])`
-/

namespace A180766.P11155361901947818062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180766.P11155361901947818062

/-! ## A180766.P10028658242554752328

`A180771(eq[16, A057728(n+1)])`
-/

namespace A180766.P10028658242554752328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180766.P10028658242554752328

/-!
# A180767: Half the number of nX7 binary arrays with each element equal to at least one neighbor.

The programs for A180767, there is no canonical definition to state claims against.
-/

/-! ## A180767.P15325087004454803852

`A180771(A374008(n+1))`
-/

namespace A180767.P15325087004454803852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A374008 (n + 1)).toNat

end

end A180767.P15325087004454803852

/-! ## A180767.P11953714185453064941

`A180771(A152949(n+8)+4)`
-/

namespace A180767.P11953714185453064941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A152949 (n + 8) + 4).toNat

end

end A180767.P11953714185453064941

/-! ## A180767.P3405912431756981665

`A180771(A000124(n+7)-(n+1))`
-/

namespace A180767.P3405912431756981665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A180767.P3405912431756981665

/-! ## A180767.P10079606432436344465

`A180771(eq[4, A219347(n)])`
-/

namespace A180767.P10079606432436344465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180767.P10079606432436344465

/-! ## A180767.P17247007607628722756

`A180771(eq[6, A193592(n)])`
-/

namespace A180767.P17247007607628722756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180767.P17247007607628722756

/-!
# A180768: Half the number of n X 8 binary arrays with each element equal to at least one neighbor.

The programs for A180768, there is no canonical definition to state claims against.
-/

/-! ## A180768.P14250755003458076456

`A180771(A374009(n+1))`
-/

namespace A180768.P14250755003458076456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A374009 (n + 1)).toNat

end

end A180768.P14250755003458076456

/-! ## A180768.P127872481784759041

`A180771(eq[13, A066657(n)])`
-/

namespace A180768.P127872481784759041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180768.P127872481784759041

/-! ## A180768.P2461316966487286932

`A180771(A000217(n+7)+8)`
-/

namespace A180768.P2461316966487286932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A000217 (n + 7) + 8).toNat

end

end A180768.P2461316966487286932

/-! ## A180768.P8959953261514187739

`A180771(eq[9, A131818(n+1)])`
-/

namespace A180768.P8959953261514187739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180768.P8959953261514187739

/-! ## A180768.P1119078825770382429

`A180771(A000124(n+8)-(n+1))`
-/

namespace A180768.P1119078825770382429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A180768.P1119078825770382429

/-!
# A180769: Half the number of nX9 binary arrays with each element equal to at least one neighbor.

The programs for A180769, there is no canonical definition to state claims against.
-/

/-! ## A180769.P9149598412452474520

`A180771(A374010(n+1))`
-/

namespace A180769.P9149598412452474520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A374010 (n + 1)).toNat

end

end A180769.P9149598412452474520

/-! ## A180769.P7990517334891282818

`A180771(eq[8, A193592(n)])`
-/

namespace A180769.P7990517334891282818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180769.P7990517334891282818

/-!
# A180770: Half the number of nX10 binary arrays with each element equal to at least one neighbor.

The programs for A180770, there is no canonical definition to state claims against.
-/

/-! ## A180770.P13629697872277901314

`A180771(A374011(n+1))`
-/

namespace A180770.P13629697872277901314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (A374011 (n + 1)).toNat

end

end A180770.P13629697872277901314

/-! ## A180770.P6884460620864717816

`A180771(eq[9, A193592(n)])`
-/

namespace A180770.P6884460620864717816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180770.P6884460620864717816

/-!
# A180771: T(n,k) = half the number of n X k binary arrays with each element equal to at least one neighbor.

The programs for A180771, there is no canonical definition to state claims against.
-/

/-! ## A180771.P16086934757839771987

`A301615(n+1)+A014707(A022171(n))`
-/

namespace A180771.P16086934757839771987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (n + 1) + A014707 (A022171 n).toNat

end

end A180771.P16086934757839771987

/-! ## A180771.P2705746430760092487

`A301615(n+1)+A025469(A022345(n))`
-/

namespace A180771.P2705746430760092487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (n + 1) + A025469 (A022345 n).toNat

end

end A180771.P2705746430760092487

/-! ## A180771.P14551137843385118063

`A301615(n+1)+A055641(A022112(n))`
-/

namespace A180771.P14551137843385118063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (n + 1) + A055641 (A022112 n).toNat

end

end A180771.P14551137843385118063

/-! ## A180771.P12813459931980753281

`A301615(n+1)+A102683(A000579(n))`
-/

namespace A180771.P12813459931980753281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (n + 1) + A102683 (A000579 n).toNat

end

end A180771.P12813459931980753281

/-! ## A180771.P17739453289500473445

`A301615(n+1)+A007814(A157156(n))`
-/

namespace A180771.P17739453289500473445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301615 (n + 1) + A007814 (A157156 n).toNat

end

end A180771.P17739453289500473445

/-!
# A180772: Number of distinct solutions to the congruence x(1)*x(2) == 0 (mod n), with x() only in 1..n-1.

The programs for A180772, the canonical program `A180772.P1089154253406948827` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180772 has offset 1).

The definition of A180772 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A180772.P1089154253406948827

`A174088(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A180772

/-- `A174088(n+1)-(n+1)` -/
def P1089154253406948827.Spec : Prop :=
  ∀ n, P1089154253406948827.a n = A180772 (n + 1)

theorem P1089154253406948827.correct : P1089154253406948827.Spec := by
  intro n
  simp only [A180772, Nat.add_sub_cancel]

end A180772

/-! ## A180772.P3658869822836669805

`(A018804(n+1)+A000188(n+1))/2-(n+1)`
-/

namespace A180772.P3658869822836669805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) + A000188 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A180772.P3658869822836669805

namespace A180772

/-- `(A018804(n+1)+A000188(n+1))/2-(n+1)` -/
def P3658869822836669805.Spec : Prop :=
  ∀ n, P3658869822836669805.a n = (A180772 (n + 1) : ℚ)

end A180772

/-! ## A180772.P762535017993268615

`A278648(n+1)+A057918(n+1)`
-/

namespace A180772.P762535017993268615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 (n + 1) + A057918 (n + 1)

end

end A180772.P762535017993268615

namespace A180772

/-- `A278648(n+1)+A057918(n+1)` -/
def P762535017993268615.Spec : Prop :=
  ∀ n, P762535017993268615.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P6900881199133390311

`A268631(n+1)-A278648(n+1)`
-/

namespace A180772.P6900881199133390311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) - A278648 (n + 1)

end

end A180772.P6900881199133390311

namespace A180772

/-- `A268631(n+1)-A278648(n+1)` -/
def P6900881199133390311.Spec : Prop :=
  ∀ n, P6900881199133390311.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P3776057149632764441

`A024000(n+4)+A174088(n+1)+2`
-/

namespace A180772.P3776057149632764441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 4) + (A174088 (n + 1) + 2)

end

end A180772.P3776057149632764441

namespace A180772

/-- `A024000(n+4)+A174088(n+1)+2` -/
def P3776057149632764441.Spec : Prop :=
  ∀ n, P3776057149632764441.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P8096492949617595612

`A023443(A174088(n+1)-n)`
-/

namespace A180772.P8096492949617595612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A174088 (n + 1) - (n : ℤ)).toNat

end

end A180772.P8096492949617595612

namespace A180772

/-- `A023443(A174088(n+1)-n)` -/
def P8096492949617595612.Spec : Prop :=
  ∀ n, P8096492949617595612.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P7880441545121825950

`A289207(A174088(n+1)+A024000(n))`
-/

namespace A180772.P7880441545121825950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A174088 (n + 1) + A024000 n).toNat

end

end A180772.P7880441545121825950

namespace A180772

/-- `A289207(A174088(n+1)+A024000(n))` -/
def P7880441545121825950.Spec : Prop :=
  ∀ n, P7880441545121825950.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P570314799036146234

`A180782(∑[n+1])`
-/

namespace A180772.P570314799036146234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180772.P570314799036146234

namespace A180772

/-- `A180782(∑[n+1])` -/
def P570314799036146234.Spec : Prop :=
  ∀ n, P570314799036146234.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P3525315840588594861

`A180823(∑[n+1])`
-/

namespace A180772.P3525315840588594861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180823 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180772.P3525315840588594861

namespace A180772

/-- `A180823(∑[n+1])` -/
def P3525315840588594861.Spec : Prop :=
  ∀ n, P3525315840588594861.a n = A180772 (n + 1)

end A180772

/-! ## A180772.P886875465807775321

`A180803(∑[n+1])-(n+1)`
-/

namespace A180772.P886875465807775321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A180772.P886875465807775321

namespace A180772

/-- `A180803(∑[n+1])-(n+1)` -/
def P886875465807775321.Spec : Prop :=
  ∀ n, P886875465807775321.a n = A180772 (n + 1)

end A180772

/-!
# A180773: Number of distinct solutions of Sum_{i=1..2} (x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180773, there is no canonical definition to state claims against.
-/

/-! ## A180773.P9406262570213736095

`A180782(∑[n+2])`
-/

namespace A180773.P9406262570213736095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180773.P9406262570213736095

/-! ## A180773.P13011153938691634188

`A180782(A000096(n+1))%A022367(n)`
-/

namespace A180773.P13011153938691634188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180782 (A000096 (n + 1)).toNat) (A022367 n)

end

end A180773.P13011153938691634188

/-! ## A180773.P1052640051971769785

`char[A061601(n)]*A180782(A000096(n+1))`
-/

namespace A180773.P1052640051971769785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180782 (A000096 (n + 1)).toNat

end

end A180773.P1052640051971769785

/-! ## A180773.P6611902311805465893

`A180782(A000096(n+1))+char[A001232(n+1)]`
-/

namespace A180773.P6611902311805465893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A180773.P6611902311805465893

/-!
# A180774: Number of distinct solutions of sum{i=1..3}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180774, there is no canonical definition to state claims against.
-/

/-! ## A180774.P2696092003208067759

`A180782(∑[n+3]+1)`
-/

namespace A180774.P2696092003208067759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180774.P2696092003208067759

/-! ## A180774.P8509677569389427181

`A180782(Δ[A008778(n)])%A063262(n)`
-/

namespace A180774.P8509677569389427181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180782 (f1 (n + 1) - f1 n).toNat) (A063262 n)

end

end A180774.P8509677569389427181

/-! ## A180774.P8841210181095978676

`A057427(n)*A180782(A034856(n+2))`
-/

namespace A180774.P8841210181095978676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A180782 (A034856 (n + 2)).toNat

end

end A180774.P8841210181095978676

/-! ## A180774.P15893725006138362582

`A180782(A034856(n+2))%A022727(n)`
-/

namespace A180774.P15893725006138362582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180782 (A034856 (n + 2)).toNat) (A022727 n)

end

end A180774.P15893725006138362582

/-! ## A180774.P9072838753504906512

`A180782(A000124(n+3)-3)%A055799(n)`
-/

namespace A180774.P9072838753504906512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180782 (A000124 (n + 3) - 3).toNat) (A055799 n)

end

end A180774.P9072838753504906512

/-!
# A180775: Number of distinct solutions of sum{i=1..4}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180775, there is no canonical definition to state claims against.
-/

/-! ## A180775.P2525981928569553199

`A180782(A027379(n+2))`
-/

namespace A180775.P2525981928569553199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A027379 (n + 2)).toNat

end

end A180775.P2525981928569553199

/-! ## A180775.P16830525880180151547

`A180782(A055998(n+2))`
-/

namespace A180775.P16830525880180151547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A055998 (n + 2)).toNat

end

end A180775.P16830525880180151547

/-! ## A180775.P8185584100184989296

`A180782(A155212(n)+5)`
-/

namespace A180775.P8185584100184989296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A155212 n + 5).toNat

end

end A180775.P8185584100184989296

/-! ## A180775.P12397558165169791943

`A180782(eq[3, A193592(n)])`
-/

namespace A180775.P12397558165169791943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180775.P12397558165169791943

/-! ## A180775.P9663319996296104149

`A180782(A052905(n+1)+2)`
-/

namespace A180775.P9663319996296104149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A052905 (n + 1) + 2).toNat

end

end A180775.P9663319996296104149

/-! ## A180775.P3924341425981355954

`A180782(Δ[A008778(n+1)]-1)`
-/

namespace A180775.P3924341425981355954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (f1 (n + 1) - f1 n - 1).toNat

end

end A180775.P3924341425981355954

/-! ## A180775.P16263927737658716785

`record[A180782(A027379(A028242(n)))]`
-/

namespace A180775.P16263927737658716785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180775.P16263927737658716785

/-! ## A180775.P2041828980713799218

`record[A180782(A027379(A134478(n)))]`
-/

namespace A180775.P2041828980713799218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A027379 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180775.P2041828980713799218

/-! ## A180775.P12730329653120521777

`record[A180782(A027379(A328399(n)))]`
-/

namespace A180775.P12730329653120521777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A027379 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180775.P12730329653120521777

/-! ## A180775.P3560495927331486065

`A180782(A167614(n+1)+A005408(n))`
-/

namespace A180775.P3560495927331486065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A167614 (n + 1) + A005408 n).toNat

end

end A180775.P3560495927331486065

/-!
# A180776: Number of distinct solutions of sum{i=1..5}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180776, there is no canonical definition to state claims against.
-/

/-! ## A180776.P11363170666223300316

`A180782(A046691(n+3))`
-/

namespace A180776.P11363170666223300316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A046691 (n + 3)).toNat

end

end A180776.P11363170666223300316

/-! ## A180776.P7802162856815566002

`A180782(eq[4, A193592(n)])`
-/

namespace A180776.P7802162856815566002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180776.P7802162856815566002

/-! ## A180776.P12794261912550366049

`A180782(Δ[A023545(n+1)])`
-/

namespace A180776.P12794261912550366049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (f1 (n + 1) - f1 n).toNat

end

end A180776.P12794261912550366049

/-! ## A180776.P4287715644574208360

`A180782(A000096(n+4)-3)`
-/

namespace A180776.P4287715644574208360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000096 (n + 4) - 3).toNat

end

end A180776.P4287715644574208360

/-! ## A180776.P3948738696200904777

`A180782(A005408(n+2)+A000217(n+3))`
-/

namespace A180776.P3948738696200904777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A005408 (n + 2) + A000217 (n + 3)).toNat

end

end A180776.P3948738696200904777

/-! ## A180776.P18444048402235266338

`A180782(A005843(n+3)+A000096(n+2))`
-/

namespace A180776.P18444048402235266338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A005843 (n + 3) + A000096 (n + 2)).toNat

end

end A180776.P18444048402235266338

/-!
# A180777: Number of distinct solutions of sum{i=1..6}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180777, there is no canonical definition to state claims against.
-/

/-! ## A180777.P2411173754430263893

`record[A180782(A052905(n))]`
-/

namespace A180777.P2411173754430263893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180777.P2411173754430263893

/-! ## A180777.P17364048986543162756

`A180782(A052905(n+3))`
-/

namespace A180777.P17364048986543162756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A052905 (n + 3)).toNat

end

end A180777.P17364048986543162756

/-! ## A180777.P12730438901001469339

`A180782(Δ[A023545(n+2)]-1)`
-/

namespace A180777.P12730438901001469339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (f1 (n + 1) - f1 n - 1).toNat

end

end A180777.P12730438901001469339

/-! ## A180777.P18243692126730055536

`A180782(Δ[A026054(n+3)]+1)`
-/

namespace A180777.P18243692126730055536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (f1 (n + 1) - f1 n + 1).toNat

end

end A180777.P18243692126730055536

/-! ## A180777.P5052181158162627535

`record[A180782(A027379(n+1)-2)]`
-/

namespace A180777.P5052181158162627535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A027379 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180777.P5052181158162627535

/-! ## A180777.P10949596179364622866

`record[A180782(A005408(n)+A000096(n))]`
-/

namespace A180777.P10949596179364622866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A005408 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180777.P10949596179364622866

/-! ## A180777.P14225421110593421471

`record[A180782(A016777(n)+A000217(n))]`
-/

namespace A180777.P14225421110593421471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A016777 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A180777.P14225421110593421471

/-!
# A180778: Number of distinct solutions of sum{i=1..7}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180778, there is no canonical definition to state claims against.
-/

/-! ## A180778.P15309985688396794412

`A180782(A055999(n+4))`
-/

namespace A180778.P15309985688396794412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A055999 (n + 4)).toNat

end

end A180778.P15309985688396794412

/-! ## A180778.P16421643217375448329

`A180782(Δ[A026054(n+4)])`
-/

namespace A180778.P16421643217375448329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (f1 (n + 1) - f1 n).toNat

end

end A180778.P16421643217375448329

/-! ## A180778.P5322300641949934131

`A180782(A000096(n+6)-5)`
-/

namespace A180778.P5322300641949934131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000096 (n + 6) - 5).toNat

end

end A180778.P5322300641949934131

/-! ## A180778.P4150125411535947322

`A180782(A000217(n+7)-6)`
-/

namespace A180778.P4150125411535947322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000217 (n + 7) - 6).toNat

end

end A180778.P4150125411535947322

/-! ## A180778.P3463285788615023950

`A180782(A000124(n+7)-7)`
-/

namespace A180778.P3463285788615023950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000124 (n + 7) - 7).toNat

end

end A180778.P3463285788615023950

/-! ## A180778.P10851242616089154567

`A180782(A253145(n+5)+n+1)`
-/

namespace A180778.P10851242616089154567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A253145 (n + 5) + (n + 1 : ℤ)).toNat

end

end A180778.P10851242616089154567

/-! ## A180778.P9174118088653870539

`A180782(A133263(n+6)+n-1)`
-/

namespace A180778.P9174118088653870539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A180778.P9174118088653870539

/-! ## A180778.P13321088419928218599

`A180782(A161680(n+7)+n+1)`
-/

namespace A180778.P13321088419928218599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A180778.P13321088419928218599

/-! ## A180778.P3043545287350141969

`A180782(A166136(n+4)+2*n+1)`
-/

namespace A180778.P3043545287350141969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A180778.P3043545287350141969

/-! ## A180778.P7074987630456169721

`A180782(A005843(n+4)+A000096(n+4))`
-/

namespace A180778.P7074987630456169721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A005843 (n + 4) + A000096 (n + 4)).toNat

end

end A180778.P7074987630456169721

/-!
# A180779: Number of distinct solutions of sum{i=1..8}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180779, there is no canonical definition to state claims against.
-/

/-! ## A180779.P10346757872968316899

`A180782(A134869(n+8)-8)`
-/

namespace A180779.P10346757872968316899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A134869 (n + 8) - 8).toNat

end

end A180779.P10346757872968316899

/-! ## A180779.P7821846007452927185

`A180782(A000096(n+6)+n+2)`
-/

namespace A180779.P7821846007452927185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A180779.P7821846007452927185

/-! ## A180779.P9345369626431726956

`A180782(A152950(n+4)+A008706(n+4))`
-/

namespace A180779.P9345369626431726956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A152950 (n + 4) + A008706 (n + 4)).toNat

end

end A180779.P9345369626431726956

/-! ## A180779.P11713950007191346609

`A180782(A000217(n+7)-A001489(n+1))`
-/

namespace A180779.P11713950007191346609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000217 (n + 7) - A001489 (n + 1)).toNat

end

end A180779.P11713950007191346609

/-! ## A180779.P9759067049606873899

`A180782(A103517(n+3)+A000217(n+6))`
-/

namespace A180779.P9759067049606873899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A103517 (n + 3) + A000217 (n + 6)).toNat

end

end A180779.P9759067049606873899

/-!
# A180780: Number of distinct solutions of sum{i=1..9}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180780, there is no canonical definition to state claims against.
-/

/-! ## A180780.P9449907730990718387

`A180782(A155212(n+5))`
-/

namespace A180780.P9449907730990718387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A155212 (n + 5)).toNat

end

end A180780.P9449907730990718387

/-! ## A180780.P9123273222086986799

`A180782(eq[8, A193592(n)])`
-/

namespace A180780.P9123273222086986799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180780.P9123273222086986799

/-! ## A180780.P15631422573648614522

`A180782(A134869(n+9)-9)`
-/

namespace A180780.P15631422573648614522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A134869 (n + 9) - 9).toNat

end

end A180780.P15631422573648614522

/-! ## A180780.P18077176760675188274

`A180782(A000096(n+7)+n+2)`
-/

namespace A180780.P18077176760675188274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A180780.P18077176760675188274

/-! ## A180780.P16537617677309508435

`A180782(A000217(n+8)+n+1)`
-/

namespace A180780.P16537617677309508435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A180780.P16537617677309508435

/-!
# A180781: Number of distinct solutions of sum{i=1..10}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180781, there is no canonical definition to state claims against.
-/

/-! ## A180781.P14454224075636973232

`A180782(A055998(n+8)-6)`
-/

namespace A180781.P14454224075636973232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A055998 (n + 8) - 6).toNat

end

end A180781.P14454224075636973232

/-! ## A180781.P12800179314962673807

`A180782(A134869(n+10)-10)`
-/

namespace A180781.P12800179314962673807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A134869 (n + 10) - 10).toNat

end

end A180781.P12800179314962673807

/-! ## A180781.P18064018712290510779

`A180782(A167614(n+9)-12)`
-/

namespace A180781.P18064018712290510779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A167614 (n + 9) - 12).toNat

end

end A180781.P18064018712290510779

/-! ## A180781.P7920030163634947415

`A180782(A000096(n+8)+n+2)`
-/

namespace A180781.P7920030163634947415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A000096 (n + 8) + (n + 2 : ℤ)).toNat

end

end A180781.P7920030163634947415

/-! ## A180781.P1914136962372624038

`A180782(A103517(n+4)+A000217(n+8))`
-/

namespace A180781.P1914136962372624038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180782 (A103517 (n + 4) + A000217 (n + 8)).toNat

end

end A180781.P1914136962372624038

/-!
# A180782: T(n,k)=number of distinct solutions of sum{i=1..k}(x(2i-1)*x(2i)) = 0 (mod n), with x() only in 1..n-1.

The programs for A180782, there is no canonical definition to state claims against.
-/

/-! ## A180782.P15442211638933580136

`and(A072966(A099509(n)), A109613(n+2))`
-/

namespace A180782.P15442211638933580136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072966 (A099509 n).toNat) (A109613 (n + 2))

end

end A180782.P15442211638933580136

/-! ## A180782.P5720646567645374859

`and(A327618(n), A335163(A192981(n)))`
-/

namespace A180782.P5720646567645374859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327618 n) (A335163 (A192981 n).toNat)

end

end A180782.P5720646567645374859

/-! ## A180782.P4184413066385275267

`A208989(n+1)%A005117(A208993(n+1))`
-/

namespace A180782.P4184413066385275267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208989 (n + 1)) (A005117 (A208993 (n + 1)).toNat)

end

end A180782.P4184413066385275267

/-!
# A180783: Number of distinct solutions of Sum_{i=1..1} (x(2i-1)*x(2i)) == 1 (mod n), with x() in {1,2,...,n-1}.

The programs for A180783, the canonical program `A180783.P7782268968714750835` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A180783 has offset 1).

The definition of A180783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A180783.P7782268968714750835

`A000010(n+1)%(n+1)-A329152(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A180783

/-- `A000010(n+1)%(n+1)-A329152(n+1)` -/
def P7782268968714750835.Spec : Prop :=
  ∀ n, P7782268968714750835.a n = A180783 (n + 1)

theorem P7782268968714750835.correct : P7782268968714750835.Spec := by
  intro n
  simp only [A180783, Nat.add_sub_cancel]

end A180783

/-! ## A180783.P2391152422626474927

`A060594(n+1)+A329152(n+1)-A000007(n)`
-/

namespace A180783.P2391152422626474927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) + (A329152 (n + 1) - A000007 n)

end

end A180783.P2391152422626474927

namespace A180783

/-- `A060594(n+1)+A329152(n+1)-A000007(n)` -/
def P2391152422626474927.Spec : Prop :=
  ∀ n, P2391152422626474927.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P898536571145432473

`A329152(n+1)+A060594(n+1)%A000124(n)`
-/

namespace A180783.P898536571145432473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329152 (n + 1) + Int.tmod (A060594 (n + 1)) (A000124 n)

end

end A180783.P898536571145432473

namespace A180783

/-- `A329152(n+1)+A060594(n+1)%A000124(n)` -/
def P898536571145432473.Spec : Prop :=
  ∀ n, P898536571145432473.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P17753045563156060435

`(A180804(n+1)-A180784(n+1))/(n+1)`
-/

namespace A180783.P17753045563156060435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180804 (n + 1) - A180784 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A180783.P17753045563156060435

namespace A180783

/-- `(A180804(n+1)-A180784(n+1))/(n+1)` -/
def P17753045563156060435.Spec : Prop :=
  ∀ n, P17753045563156060435.a n = (A180783 (n + 1) : ℚ)

end A180783

/-! ## A180783.P14916643706030693237

`A180824(n+1)+A107286(A151896(n))`
-/

namespace A180783.P14916643706030693237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180824 (n + 1) + A107286 (A151896 n).toNat

end

end A180783.P14916643706030693237

namespace A180783

/-- `A180824(n+1)+A107286(A151896(n))` -/
def P14916643706030693237.Spec : Prop :=
  ∀ n, P14916643706030693237.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P11253186753001928028

`A157230(n+1)+Δ[A008619(A002088(n))]`
-/

namespace A180783.P11253186753001928028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1) + (f1 (n + 1) - f1 n)

end

end A180783.P11253186753001928028

namespace A180783

/-- `A157230(n+1)+Δ[A008619(A002088(n))]` -/
def P11253186753001928028.Spec : Prop :=
  ∀ n, P11253186753001928028.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P16331391669614756003

`A053616(A180824(n+1)+∑[n+1]+2)`
-/

namespace A180783.P16331391669614756003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A180824 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A180783.P16331391669614756003

namespace A180783

/-- `A053616(A180824(n+1)+∑[n+1]+2)` -/
def P16331391669614756003.Spec : Prop :=
  ∀ n, P16331391669614756003.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P10750736367104464057

`A053616(A034856(n+1)-A180824(n+1))`
-/

namespace A180783.P10750736367104464057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A034856 (n + 1) - A180824 (n + 1)).toNat

end

end A180783.P10750736367104464057

namespace A180783

/-- `A053616(A034856(n+1)-A180824(n+1))` -/
def P10750736367104464057.Spec : Prop :=
  ∀ n, P10750736367104464057.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P7273415875659692932

`A180824(n+1)+A130130(n²)`
-/

namespace A180783.P7273415875659692932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180824 (n + 1) + A130130 (n ^ 2)

end

end A180783.P7273415875659692932

namespace A180783

/-- `A180824(n+1)+A130130(n²)` -/
def P7273415875659692932.Spec : Prop :=
  ∀ n, P7273415875659692932.a n = A180783 (n + 1)

end A180783

/-! ## A180783.P4103294581999984432

`A329152(n+1)+A157230(A119416(n+1))`
-/

namespace A180783.P4103294581999984432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329152 (n + 1) + A157230 (A119416 (n + 1)).toNat

end

end A180783.P4103294581999984432

namespace A180783

/-- `A329152(n+1)+A157230(A119416(n+1))` -/
def P4103294581999984432.Spec : Prop :=
  ∀ n, P4103294581999984432.a n = A180783 (n + 1)

end A180783

/-!
# A180784: Number of distinct solutions of sum{i=1..2}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180784, there is no canonical definition to state claims against.
-/

/-! ## A180784.P3462716920815928277

`A180804(n+1)-(n+1)*A180783(n+1)`
-/

namespace A180784.P3462716920815928277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180804 (n + 1) - (n + 1 : ℤ) * A180783 (n + 1)

end

end A180784.P3462716920815928277

/-! ## A180784.P11024833786642545901

`A180793(∑[n+2])`
-/

namespace A180784.P11024833786642545901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180784.P11024833786642545901

/-! ## A180784.P6382607986227749478

`A180793(A000096(n+1))%A000325(n)`
-/

namespace A180784.P6382607986227749478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180793 (A000096 (n + 1)).toNat) (A000325 n)

end

end A180784.P6382607986227749478

/-!
# A180785: Number of distinct solutions of sum{i=1..3}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180785, there is no canonical definition to state claims against.
-/

/-! ## A180785.P15059042756881524312

`A180793(∑[n+3]+1)`
-/

namespace A180785.P15059042756881524312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180785.P15059042756881524312

/-! ## A180785.P9539668384699390860

`A180793(A034856(n+2))%A131066(n)`
-/

namespace A180785.P9539668384699390860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180793 (A034856 (n + 2)).toNat) (A131066 n)

end

end A180785.P9539668384699390860

/-! ## A180785.P4776368387062008832

`char[A029579(n)]*A180793(A034856(n+2))`
-/

namespace A180785.P4776368387062008832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A180793 (A034856 (n + 2)).toNat

end

end A180785.P4776368387062008832

/-! ## A180785.P5204480585739236310

`A180793(Δ[A027965(n+2)])%A028329(n)`
-/

namespace A180785.P5204480585739236310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180793 (f1 (n + 1) - f1 n).toNat) (A028329 n)

end

end A180785.P5204480585739236310

/-! ## A180785.P4383298535875570434

`A209229(3*n)+A180793(A034856(n+2))`
-/

namespace A180785.P4383298535875570434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (3 * n) + A180793 (A034856 (n + 2)).toNat

end

end A180785.P4383298535875570434

/-! ## A180785.P17756803844190423380

`A180793(Δ[A027965(n+2)])+A035363(2*n+1)`
-/

namespace A180785.P17756803844190423380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n).toNat + A035363 (2 * n + 1)

end

end A180785.P17756803844190423380

/-! ## A180785.P4991627126353283460

`A284851(2*n+1)+A180793(Δ[A027965(n+2)])`
-/

namespace A180785.P4991627126353283460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284851 (2 * n + 1) + A180793 (f1 (n + 1) - f1 n).toNat

end

end A180785.P4991627126353283460

/-! ## A180785.P13148106094967676202

`A180793(A034856(n+2))+A074591(A000040(n+1))`
-/

namespace A180785.P13148106094967676202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A034856 (n + 2)).toNat + A074591 (A000040 (n + 1)).toNat

end

end A180785.P13148106094967676202

/-!
# A180786: Number of distinct solutions of sum{i=1..4}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180786, there is no canonical definition to state claims against.
-/

/-! ## A180786.P491988457311566809

`A180793(A027379(n+2))`
-/

namespace A180786.P491988457311566809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A027379 (n + 2)).toNat

end

end A180786.P491988457311566809

/-! ## A180786.P15667485861322028284

`A180793(A055998(n+2))`
-/

namespace A180786.P15667485861322028284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A055998 (n + 2)).toNat

end

end A180786.P15667485861322028284

/-! ## A180786.P12633307051476656901

`A180793(A155212(n)+5)`
-/

namespace A180786.P12633307051476656901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A155212 n + 5).toNat

end

end A180786.P12633307051476656901

/-! ## A180786.P9067495443104766141

`A180793(eq[3, A193592(n)])`
-/

namespace A180786.P9067495443104766141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180786.P9067495443104766141

/-! ## A180786.P14239083944617325211

`A180793(Δ[A006416(n+2)])`
-/

namespace A180786.P14239083944617325211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n).toNat

end

end A180786.P14239083944617325211

/-! ## A180786.P13909770490321188179

`A180793(A046691(n+2)+1)`
-/

namespace A180786.P13909770490321188179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A046691 (n + 2) + 1).toNat

end

end A180786.P13909770490321188179

/-! ## A180786.P15161844184182634926

`A180793(A052905(n+1)+2)`
-/

namespace A180786.P15161844184182634926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A052905 (n + 1) + 2).toNat

end

end A180786.P15161844184182634926

/-! ## A180786.P8898113415818076043

`A180793(A000124(n+4)-4)`
-/

namespace A180786.P8898113415818076043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000124 (n + 4) - 4).toNat

end

end A180786.P8898113415818076043

/-! ## A180786.P3401616110884614218

`A180793(Δ[A008778(n+1)]-1)`
-/

namespace A180786.P3401616110884614218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n - 1).toNat

end

end A180786.P3401616110884614218

/-! ## A180786.P10527713197583899813

`A180793(Δ[A027965(n+3)]-1)`
-/

namespace A180786.P10527713197583899813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027965 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n - 1).toNat

end

end A180786.P10527713197583899813

/-!
# A180787: Number of distinct solutions of sum{i=1..5}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180787, there is no canonical definition to state claims against.
-/

/-! ## A180787.P9722037028390588028

`A180793(A046691(n+3))`
-/

namespace A180787.P9722037028390588028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A046691 (n + 3)).toNat

end

end A180787.P9722037028390588028

/-! ## A180787.P9882741551803833073

`A180793(A056115(n)+11)`
-/

namespace A180787.P9882741551803833073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A056115 n + 11).toNat

end

end A180787.P9882741551803833073

/-! ## A180787.P12183819751480978351

`A180793(eq[4, A193592(n)])`
-/

namespace A180787.P12183819751480978351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180787.P12183819751480978351

/-! ## A180787.P666619339766073277

`A180793(Δ[A023545(n+1)])`
-/

namespace A180787.P666619339766073277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n).toNat

end

end A180787.P666619339766073277

/-! ## A180787.P567345218508935875

`A180793(A000217(n+5)-4)`
-/

namespace A180787.P567345218508935875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000217 (n + 5) - 4).toNat

end

end A180787.P567345218508935875

/-! ## A180787.P12652296203503173037

`A180793(Δ[A006416(n+3)]-1)`
-/

namespace A180787.P12652296203503173037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n - 1).toNat

end

end A180787.P12652296203503173037

/-! ## A180787.P14886296193787765965

`A180793(A005408(n+2)+A000217(n+3))`
-/

namespace A180787.P14886296193787765965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A005408 (n + 2) + A000217 (n + 3)).toNat

end

end A180787.P14886296193787765965

/-!
# A180788: Number of distinct solutions of Sum_{i=1..6} x(2*i-1)*x(2*i) = 1 (mod n), with x() only in 1..n-1.

The programs for A180788, there is no canonical definition to state claims against.
-/

/-! ## A180788.P11644200137378167618

`A180793(A052905(n+3))`
-/

namespace A180788.P11644200137378167618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A052905 (n + 3)).toNat

end

end A180788.P11644200137378167618

/-! ## A180788.P7267291634550158586

`A180793(A046691(n+4)-1)`
-/

namespace A180788.P7267291634550158586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A046691 (n + 4) - 1).toNat

end

end A180788.P7267291634550158586

/-! ## A180788.P3851625979285533449

`A180793(A027379(n+4)-2)`
-/

namespace A180788.P3851625979285533449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A027379 (n + 4) - 2).toNat

end

end A180788.P3851625979285533449

/-! ## A180788.P10351325193916975409

`A180793(A000217(n+6)-5)`
-/

namespace A180788.P10351325193916975409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000217 (n + 6) - 5).toNat

end

end A180788.P10351325193916975409

/-! ## A180788.P12534906911786950627

`A180793(Δ[A023545(n+2)]-1)`
-/

namespace A180788.P12534906911786950627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (f1 (n + 1) - f1 n - 1).toNat

end

end A180788.P12534906911786950627

/-! ## A180788.P11961016719174092308

`A180793(A000124(A020710(n))+n)`
-/

namespace A180788.P11961016719174092308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000124 (A020710 n).toNat + (n : ℤ)).toNat

end

end A180788.P11961016719174092308

/-!
# A180789: Number of distinct solutions of sum{i=1..7}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180789, there is no canonical definition to state claims against.
-/

/-! ## A180789.P3750725606011303623

`A180793(A055999(n+4))`
-/

namespace A180789.P3750725606011303623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A055999 (n + 4)).toNat

end

end A180789.P3750725606011303623

/-! ## A180789.P18137318815684613505

`A180793(A046691(n+5)-2)`
-/

namespace A180789.P18137318815684613505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A046691 (n + 5) - 2).toNat

end

end A180789.P18137318815684613505

/-! ## A180789.P5637848681599266471

`A180793(A000217(n+7)-6)`
-/

namespace A180789.P5637848681599266471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000217 (n + 7) - 6).toNat

end

end A180789.P5637848681599266471

/-! ## A180789.P9729498048062417097

`A180793(A000124(n+7)-7)`
-/

namespace A180789.P9729498048062417097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000124 (n + 7) - 7).toNat

end

end A180789.P9729498048062417097

/-! ## A180789.P8612230240531692044

`A180793(A005408(n+3)+A000217(n+5))`
-/

namespace A180789.P8612230240531692044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A180789.P8612230240531692044

/-!
# A180790: Number of distinct solutions of sum{i=1..8}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180790, there is no canonical definition to state claims against.
-/

/-! ## A180790.P7764102017228259191

`A180793(eq[7, A193592(n)])`
-/

namespace A180790.P7764102017228259191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180790.P7764102017228259191

/-! ## A180790.P965370186553122647

`A180793(A000096(n+7)-6)`
-/

namespace A180790.P965370186553122647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000096 (n + 7) - 6).toNat

end

end A180790.P965370186553122647

/-! ## A180790.P7660710322008881977

`A180793(A000217(n+8)-7)`
-/

namespace A180790.P7660710322008881977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000217 (n + 8) - 7).toNat

end

end A180790.P7660710322008881977

/-! ## A180790.P127591744755112287

`A180793(A000124(n+8)-8)`
-/

namespace A180790.P127591744755112287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000124 (n + 8) - 8).toNat

end

end A180790.P127591744755112287

/-! ## A180790.P110986327820785844

`A180793(A004277(n+4)+A000217(n+6))`
-/

namespace A180790.P110986327820785844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A004277 (n + 4) + A000217 (n + 6)).toNat

end

end A180790.P110986327820785844

/-!
# A180791: Number of distinct solutions of sum{i=1..9}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180791, there is no canonical definition to state claims against.
-/

/-! ## A180791.P2488936848873460666

`A180793(A155212(n+5))`
-/

namespace A180791.P2488936848873460666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A155212 (n + 5)).toNat

end

end A180791.P2488936848873460666

/-! ## A180791.P8882340755133982070

`A180793(eq[8, A193592(n)])`
-/

namespace A180791.P8882340755133982070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180791.P8882340755133982070

/-! ## A180791.P6993718524768819215

`A180793(A000217(n+9)-8)`
-/

namespace A180791.P6993718524768819215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000217 (n + 9) - 8).toNat

end

end A180791.P6993718524768819215

/-! ## A180791.P9999748949092883112

`A180793(A000124(n+9)-9)`
-/

namespace A180791.P9999748949092883112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A000124 (n + 9) - 9).toNat

end

end A180791.P9999748949092883112

/-! ## A180791.P7086131646436481223

`A180793(A005408(n+4)+A000217(n+7))`
-/

namespace A180791.P7086131646436481223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A005408 (n + 4) + A000217 (n + 7)).toNat

end

end A180791.P7086131646436481223

/-!
# A180792: Number of distinct solutions of sum{i=1..10}(x(2i-1)*x(2i)) = 1 (mod n), with x() only in 1..n-1.

The programs for A180792, there is no canonical definition to state claims against.
-/

/-! ## A180792.P4180393237051111667

`A180793(eq[9, A193592(n)])`
-/

namespace A180792.P4180393237051111667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A180792.P4180393237051111667

/-! ## A180792.P6118687859190955326

`A180793(A052905(n+7)-4)`
-/

namespace A180792.P6118687859190955326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A052905 (n + 7) - 4).toNat

end

end A180792.P6118687859190955326

/-! ## A180792.P12850846191056341824

`A180793(A046691(n+7)+A020710(n))`
-/

namespace A180792.P12850846191056341824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A046691 (n + 7) + A020710 n).toNat

end

end A180792.P12850846191056341824

/-! ## A180792.P8025774467618524310

`A180793(A133263(n+7)+A016777(n+5))`
-/

namespace A180792.P8025774467618524310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A133263 (n + 7) + A016777 (n + 5)).toNat

end

end A180792.P8025774467618524310

/-! ## A180792.P5576928365774932473

`A180793(A004277(n+5)+A000217(n+8))`
-/

namespace A180792.P5576928365774932473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180793 (A004277 (n + 5) + A000217 (n + 8)).toNat

end

end A180792.P5576928365774932473

/-!
# A180793: T(n,k) = number of distinct solutions of Sum_{i=1..k} (x(2i-1)*x(2i)) == 1 (mod n), with x() only in {1..n-1}.

The programs for A180793, there is no canonical definition to state claims against.
-/

/-! ## A180793.P9185083516187666678

`A342393(A001405(n))%A085313(n+1)`
-/

namespace A180793.P9185083516187666678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342393 (A001405 n).toNat) (A085313 (n + 1))

end

end A180793.P9185083516187666678

/-! ## A180793.P4981688956129171121

`∑{e}[A148086(n), #]%A059268(n)`
-/

namespace A180793.P4981688956129171121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A059268 n)

end

end A180793.P4981688956129171121

/-! ## A180793.P768796275110484277

`A037180(A214727(n))%A059268(n)`
-/

namespace A180793.P768796275110484277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037180 (A214727 n).toNat) (A059268 n)

end

end A180793.P768796275110484277

/-! ## A180793.P1719944996918198714

`A073092(A169966(n+1))%A145111(n)`
-/

namespace A180793.P1719944996918198714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073092 (A169966 (n + 1)).toNat) (A145111 n)

end

end A180793.P1719944996918198714

/-! ## A180793.P12497250684433254433

`A378068(A268236(2*(n+1)))%A263744(n+1)`
-/

namespace A180793.P12497250684433254433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378068 (A268236 (2 * (n + 1))).toNat) (A263744 (n + 1))

end

end A180793.P12497250684433254433

/-!
# A180794: Number of distinct solutions of sum{i=1..2}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180794, there is no canonical definition to state claims against.
-/

/-! ## A180794.P9216019166712274883

`A180803(∑[n+2])`
-/

namespace A180794.P9216019166712274883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A180794.P9216019166712274883

/-! ## A180794.P3733626836190589639

`A180803(A000096(n+1))+A000007(n+1)`
-/

namespace A180794.P3733626836190589639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A180794.P3733626836190589639

/-! ## A180794.P14125409321547989317

`A133707(n+1)*A180803(A000096(n+1))`
-/

namespace A180794.P14125409321547989317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A180803 (A000096 (n + 1)).toNat

end

end A180794.P14125409321547989317

/-! ## A180794.P17659122182645822279

`A180803(A000096(n+1))%A038821(n+1)`
-/

namespace A180794.P17659122182645822279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180803 (A000096 (n + 1)).toNat) (A038821 (n + 1))

end

end A180794.P17659122182645822279

/-! ## A180794.P18087707058000787379

`lcm(A056594(2*n), A180803(A000096(n+1)))`
-/

namespace A180794.P18087707058000787379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A180803 (A000096 (n + 1)).toNat)

end

end A180794.P18087707058000787379

/-! ## A180794.P5885022237390796522

`A180803(A000096(n+1))+A056594(2*n+1)`
-/

namespace A180794.P5885022237390796522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000096 (n + 1)).toNat + A056594 (2 * n + 1)

end

end A180794.P5885022237390796522

/-!
# A180795: Number of distinct solutions of Sum_{i=1..3}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180795, there is no canonical definition to state claims against.
-/

/-! ## A180795.P7856647531446424519

`A180803(∑[n+3]+1)`
-/

namespace A180795.P7856647531446424519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A180795.P7856647531446424519

/-! ## A180795.P4213390179696022156

`gcd(n, n+1)*A180803(A052905(n)+3)`
-/

namespace A180795.P4213390179696022156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A180803 (A052905 n + 3).toNat

end

end A180795.P4213390179696022156

/-! ## A180795.P13117335533732735430

`A180803(A034856(n+2))*A304042(n)`
-/

namespace A180795.P13117335533732735430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A034856 (n + 2)).toNat * A304042 n

end

end A180795.P13117335533732735430

/-! ## A180795.P11279762817867452845

`A180803(A034856(n+2))%A118417(n)`
-/

namespace A180795.P11279762817867452845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180803 (A034856 (n + 2)).toNat) (A118417 n)

end

end A180795.P11279762817867452845

/-! ## A180795.P777499016791501583

`A180803(A034856(n+2))+A000007(n+1)`
-/

namespace A180795.P777499016791501583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A180795.P777499016791501583

/-! ## A180795.P9908123266285158327

`lcm(A071935(n+1), A180803(A034856(n+2)))`
-/

namespace A180795.P9908123266285158327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071935 (n + 1)) (A180803 (A034856 (n + 2)).toNat)

end

end A180795.P9908123266285158327

/-!
# A180796: Number of distinct solutions of sum{i=1..4}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180796, there is no canonical definition to state claims against.
-/

/-! ## A180796.P13903736471529617128

`A180803(A027379(n+2))`
-/

namespace A180796.P13903736471529617128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A027379 (n + 2)).toNat

end

end A180796.P13903736471529617128

/-! ## A180796.P10991122329168099019

`A180803(A155212(n)+5)`
-/

namespace A180796.P10991122329168099019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A155212 n + 5).toNat

end

end A180796.P10991122329168099019

/-! ## A180796.P14121799794913473246

`A180803(A056000(n)+7)`
-/

namespace A180796.P14121799794913473246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A056000 n + 7).toNat

end

end A180796.P14121799794913473246

/-! ## A180796.P8269456783493343478

`A180803(Δ[A006503(n+1)])`
-/

namespace A180796.P8269456783493343478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (f1 (n + 1) - f1 n).toNat

end

end A180796.P8269456783493343478

/-! ## A180796.P4553556088642285193

`A180803(Δ[A006416(n+2)])`
-/

namespace A180796.P4553556088642285193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (f1 (n + 1) - f1 n).toNat

end

end A180796.P4553556088642285193

/-! ## A180796.P1869436203644021362

`A180803(A052905(n+1)+2)`
-/

namespace A180796.P1869436203644021362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A052905 (n + 1) + 2).toNat

end

end A180796.P1869436203644021362

/-! ## A180796.P12566134800056877634

`A180803(A000124(n+4)-4)`
-/

namespace A180796.P12566134800056877634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000124 (n + 4) - 4).toNat

end

end A180796.P12566134800056877634

/-!
# A180797: Number of distinct solutions of sum{i=1..5}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180797, there is no canonical definition to state claims against.
-/

/-! ## A180797.P11948510316855614025

`A180803(∑[n+5]+6)`
-/

namespace A180797.P11948510316855614025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A180797.P11948510316855614025

/-! ## A180797.P18133173333712608853

`A180803(A000217(n+5)-4)%Δ[A005319(n)]`
-/

namespace A180797.P18133173333712608853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180803 (A000217 (n + 5) - 4).toNat) (f1 (n + 1) - f1 n)

end

end A180797.P18133173333712608853

/-! ## A180797.P8683719558910523126

`A180803(A000217(n+5)-4)+A000007(A008574(n))`
-/

namespace A180797.P8683719558910523126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000217 (n + 5) - 4).toNat + A000007 (A008574 n).toNat

end

end A180797.P8683719558910523126

/-! ## A180797.P17215770837954366607

`A180803(A000217(n+5)-4)*A183096(A031927(n))`
-/

namespace A180797.P17215770837954366607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000217 (n + 5) - 4).toNat * A183096 (A031927 n).toNat

end

end A180797.P17215770837954366607

/-!
# A180798: Number of distinct solutions of sum{i=1..6}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180798, there is no canonical definition to state claims against.
-/

/-! ## A180798.P11135816916555092492

`A180803(A052905(n+3))`
-/

namespace A180798.P11135816916555092492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A052905 (n + 3)).toNat

end

end A180798.P11135816916555092492

/-! ## A180798.P3965223099099060906

`A180803(A056119(n)+16)`
-/

namespace A180798.P3965223099099060906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A056119 n + 16).toNat

end

end A180798.P3965223099099060906

/-! ## A180798.P5740158342498047168

`A180803(A000217(n+6)-5)`
-/

namespace A180798.P5740158342498047168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000217 (n + 6) - 5).toNat

end

end A180798.P5740158342498047168

/-! ## A180798.P15708942255707287634

`A180803(A000124(n+6)-6)`
-/

namespace A180798.P15708942255707287634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000124 (n + 6) - 6).toNat

end

end A180798.P15708942255707287634

/-! ## A180798.P9359278951877843739

`A180803(Δ[A026054(n+3)]+1)`
-/

namespace A180798.P9359278951877843739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (f1 (n + 1) - f1 n + 1).toNat

end

end A180798.P9359278951877843739

/-! ## A180798.P752392844806151491

`A180803(2*(n+1)+A155212(n)+12)`
-/

namespace A180798.P752392844806151491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 ((2 * (n + 1) : ℤ) + (A155212 n + 12)).toNat

end

end A180798.P752392844806151491

/-!
# A180799: Number of distinct solutions of sum{i=1..7}(x(2i-1)*x(2i)) = 0 (mod n), with x() in 0..n-1.

The programs for A180799, there is no canonical definition to state claims against.
-/

/-! ## A180799.P3073146004880162260

`A180803(A055999(n+4))`
-/

namespace A180799.P3073146004880162260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A055999 (n + 4)).toNat

end

end A180799.P3073146004880162260

/-! ## A180799.P9247718875678997198

`A180803(Δ[A026054(n+4)])`
-/

namespace A180799.P9247718875678997198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (f1 (n + 1) - f1 n).toNat

end

end A180799.P9247718875678997198

/-! ## A180799.P2226789239598038881

`A180803(A155212(n+3)+2)`
-/

namespace A180799.P2226789239598038881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A155212 (n + 3) + 2).toNat

end

end A180799.P2226789239598038881

/-! ## A180799.P13586159478636351025

`A180803(A052905(n+4)-1)`
-/

namespace A180799.P13586159478636351025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A052905 (n + 4) - 1).toNat

end

end A180799.P13586159478636351025

/-! ## A180799.P7784605075892836639

`A180803(A000217(n+7)-6)`
-/

namespace A180799.P7784605075892836639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000217 (n + 7) - 6).toNat

end

end A180799.P7784605075892836639

/-! ## A180799.P7981868654498760125

`A180803(A000124(n+7)-7)`
-/

namespace A180799.P7981868654498760125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A000124 (n + 7) - 7).toNat

end

end A180799.P7981868654498760125

/-! ## A180799.P15516812298367974163

`A180803(Δ[Δ[A055832(n+5)]]+1)`
-/

namespace A180799.P15516812298367974163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (f1 (n + 1) - f1 n + 1).toNat

end

end A180799.P15516812298367974163

/-! ## A180799.P5396082037200238248

`A180803(A166136(n+4)+2*n+1)`
-/

namespace A180799.P5396082037200238248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180803 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A180799.P5396082037200238248

