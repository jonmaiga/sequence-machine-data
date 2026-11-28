import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C051
import Seq.B000.C053
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A397897.P10416135777402412473

`∑{#}[n-1, (-1)^(#+1+1)*(#+1)*A000040(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397897.P10416135777402412473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ (k + 1 + 1) * (k + 1 : ℤ) * A000040 (n - k)

end

end A397897.P10416135777402412473

noncomputable section

/-- A397897: a(n) = Sum_{j=1..n} (-1)^(j+1) * j * prime(n-j+1).

Offset 0, canonical program `A397897.P10416135777402412473`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^(#+1+1)*(#+1)*A000040(n-#)]` (program `A397897.P10416135777402412473`, by `A397897.P10416135777402412473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397897 (n : ℕ) : ℤ :=
  A397897.P10416135777402412473.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, (-1)^(#+1+1)*(#+1)*A000040(n-#)]` (program `A397897.P10416135777402412473`, by `A397897.P10416135777402412473.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397897.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398524.P15977062120974542991

`∑{#}[n, A008683(floor((n+1)/(#+1)))²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398524.P15977062120974542991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat ^ 2

end

end A398524.P15977062120974542991

noncomputable section

/-- A398524: a(n) = Sum_{k=1..n} mu(floor(n/k))^2, where mu = A008683 is the Möbius function.

Offset 1, canonical program `A398524.P15977062120974542991`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(floor((n+1)/(#+1)))²]` (program `A398524.P15977062120974542991`, by `A398524.P15977062120974542991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398524 (n : ℕ) : ℤ :=
  A398524.P15977062120974542991.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(floor((n+1)/(#+1)))²]` (program `A398524.P15977062120974542991`, by `A398524.P15977062120974542991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398528.P8306073796892616151

`∑{#}[n, A001221(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398528.P8306073796892616151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A001221 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A398528.P8306073796892616151

noncomputable section

/-- A398528: a(n) = Sum_{k=1..n} omega(floor(n/k)), where omega(n) = A001221(n) is the number of distinct primes dividing n.

Offset 1, canonical program `A398528.P8306073796892616151`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001221(floor((n+1)/(#+1)))]` (program `A398528.P8306073796892616151`, by `A398528.P8306073796892616151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398528 (n : ℕ) : ℤ :=
  A398528.P8306073796892616151.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001221(floor((n+1)/(#+1)))]` (program `A398528.P8306073796892616151`, by `A398528.P8306073796892616151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398528.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399840.P17099530196109704425

`A050443(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399840.P17099530196109704425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050443 (n + 1)) (n + 1 : ℤ)

end

end A399840.P17099530196109704425

noncomputable section

/-- A399840: a(n) = A050443(n) mod n.

Offset 1, canonical program `A399840.P17099530196109704425`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050443(n+1)%(n+1)` (program `A399840.P17099530196109704425`, by `A399840.P17099530196109704425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399840 (n : ℕ) : ℤ :=
  A399840.P17099530196109704425.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A050443(n+1)%(n+1)` (program `A399840.P17099530196109704425`, by `A399840.P17099530196109704425.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399840.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399978.P3565571226522649033

`A001221(n+1)+A008472(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399978.P3565571226522649033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + A008472 (n + 1)

end

end A399978.P3565571226522649033

noncomputable section

/-- A399978: a(n) = omega(n) + sopf(n), where omega(n) is the number of distinct prime factors of n (A001221) and sopf(n) is the sum of the distinct primes dividing n (A008472).

Offset 1, canonical program `A399978.P3565571226522649033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(n+1)+A008472(n+1)` (program `A399978.P3565571226522649033`, by `A399978.P3565571226522649033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399978 (n : ℕ) : ℤ :=
  A399978.P3565571226522649033.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001221(n+1)+A008472(n+1)` (program `A399978.P3565571226522649033`, by `A399978.P3565571226522649033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A399978.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400361.P1889396071312864242

`A018804(n+1)-A384628(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400361.P1889396071312864242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (n + 1) - A384628 (n + 1)

end

end A400361.P1889396071312864242

noncomputable section

/-- A400361: a(n) = A018804(n) - A384628(n).

Offset 1, canonical program `A400361.P1889396071312864242`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400361 (n : ℕ) : ℤ :=
  A400361.P1889396071312864242.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A018804(n+1)-A384628(n+1)` (program `A400361.P1889396071312864242`, by `A400361.P1889396071312864242.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400361.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400418.P16782049149117832626

`∑{#}[n, A007947(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400418.P16782049149117832626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007947 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A400418.P16782049149117832626

noncomputable section

/-- A400418: a(n) = Sum_{k=1..n} A007947(floor(n/k)).

Offset 1, canonical program `A400418.P16782049149117832626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A007947(floor((n+1)/(#+1)))]` (program `A400418.P16782049149117832626`, by `A400418.P16782049149117832626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400418 (n : ℕ) : ℤ :=
  A400418.P16782049149117832626.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A007947(floor((n+1)/(#+1)))]` (program `A400418.P16782049149117832626`, by `A400418.P16782049149117832626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400418.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400694.P3850939055037617322

`A008683(n²+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400694.P3850939055037617322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 2)

end

end A400694.P3850939055037617322

noncomputable section

/-- A400694: a(n) = mu(n^2 + 2).

Offset 0, canonical program `A400694.P3850939055037617322`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+2)` (program `A400694.P3850939055037617322`, by `A400694.P3850939055037617322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400694 (n : ℕ) : ℤ :=
  A400694.P3850939055037617322.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+2)` (program `A400694.P3850939055037617322`, by `A400694.P3850939055037617322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400695.P9639119796023989076

`A008683(n²+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400695.P9639119796023989076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + 3)

end

end A400695.P9639119796023989076

noncomputable section

/-- A400695: a(n) = mu(n^2 + 3).

Offset 0, canonical program `A400695.P9639119796023989076`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+3)` (program `A400695.P9639119796023989076`, by `A400695.P9639119796023989076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400695 (n : ℕ) : ℤ :=
  A400695.P9639119796023989076.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+3)` (program `A400695.P9639119796023989076`, by `A400695.P9639119796023989076.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400695.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400696.P2770596567942535513

`A008966(n²+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400696.P2770596567942535513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n ^ 2 + 2)

end

end A400696.P2770596567942535513

noncomputable section

/-- A400696: a(n) = A008966(n^2 + 2).

Offset 0, canonical program `A400696.P2770596567942535513`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+2)` (program `A400696.P2770596567942535513`, by `A400696.P2770596567942535513.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400696 (n : ℕ) : ℤ :=
  A400696.P2770596567942535513.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+2)` (program `A400696.P2770596567942535513`, by `A400696.P2770596567942535513.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400697.P17424689115559816129

`A008966(n²+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400697.P17424689115559816129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n ^ 2 + 3)

end

end A400697.P17424689115559816129

noncomputable section

/-- A400697: a(n) = A008966(n^2 + 3).

Offset 0, canonical program `A400697.P17424689115559816129`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+3)` (program `A400697.P17424689115559816129`, by `A400697.P17424689115559816129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400697 (n : ℕ) : ℤ :=
  A400697.P17424689115559816129.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008966(n²+3)` (program `A400697.P17424689115559816129`, by `A400697.P17424689115559816129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400697.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400769.P1291810996516571968

`A008683(n²+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400769.P1291810996516571968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + n + 1)

end

end A400769.P1291810996516571968

noncomputable section

/-- A400769: a(n) = mu(n^2 + n + 1).

Offset 0, canonical program `A400769.P1291810996516571968`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+n+1)` (program `A400769.P1291810996516571968`, by `A400769.P1291810996516571968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400769 (n : ℕ) : ℤ :=
  A400769.P1291810996516571968.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+n+1)` (program `A400769.P1291810996516571968`, by `A400769.P1291810996516571968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400769.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A401038.P13661554946352965378

`(a(n-1)+A000040(n+1))*A000040(n+1)` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401038.P13661554946352965378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A401038.P13661554946352965378

noncomputable section

/-- A401038: a(1)=2, a(n)=(a(n-1)+prime(n))*prime(n) for n > 1.

Offset 1, canonical program `A401038.P13661554946352965378`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))*A000040(n+1)` (program `A401038.P13661554946352965378`, by `A401038.P13661554946352965378.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A401038 (n : ℕ) : ℤ :=
  A401038.P13661554946352965378.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+A000040(n+1))*A000040(n+1)` (program `A401038.P13661554946352965378`, by `A401038.P13661554946352965378.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A401038.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A401824.P11099415610956316471

`∑{d}[n+1, #*A000720(#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401824.P11099415610956316471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000720 d

end

end A401824.P11099415610956316471

noncomputable section

/-- A401824: a(n) = Sum_{d|n} d * pi(d), where pi = A000720.

Offset 1, canonical program `A401824.P11099415610956316471`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000720(#)]` (program `A401824.P11099415610956316471`, by `A401824.P11099415610956316471.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A401824 (n : ℕ) : ℤ :=
  A401824.P11099415610956316471.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000720(#)]` (program `A401824.P11099415610956316471`, by `A401824.P11099415610956316471.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A401824.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397801.P10674669512506407556

`a(n-4)+A007949(n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A397801.P10674669512506407556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + A007949 n

end

end A397801.P10674669512506407556

noncomputable section

/-- A397801: 3-adic valuation of the quadruple factorial of n.

Offset 0, canonical program `A397801.P10674669512506407556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801 (n : ℕ) : ℤ :=
  A397801.P10674669512506407556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397833.P6945550512634513775

`2^n-A118870(n)`
-/

namespace A397833.P6945550512634513775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A118870 n

end

end A397833.P6945550512634513775

noncomputable section

/-- A397833: Number of binary words of length n containing the consecutive word abab.

Offset 0, canonical program `A397833.P6945550512634513775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833 (n : ℕ) : ℤ :=
  A397833.P6945550512634513775.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398065.P7452325410805279517

`a(n-1)+A069268(n+1)` with `a(0)=1`
-/

namespace A398065.P7452325410805279517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069268 (n + 1)

end

end A398065.P7452325410805279517

noncomputable section

/-- A398065: Partial sums of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2).

Offset 1, canonical program `A398065.P7452325410805279517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398065 (n : ℕ) : ℤ :=
  A398065.P7452325410805279517.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398268.P17280064720214812827

`a(n-1)+A069268(n+1)^5` with `a(0)=1`
-/

namespace A398268.P17280064720214812827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069268 (n + 1) ^ 5

end

end A398268.P17280064720214812827

noncomputable section

/-- A398268: Sum of fifth powers of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^5.

Offset 1, canonical program `A398268.P17280064720214812827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398268 (n : ℕ) : ℤ :=
  A398268.P17280064720214812827.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398564.P7925307628146078000

`(row(n)+1)*(col(n)+1)/A007947(gcd(row(n)+1, col(n)+1))`
-/

namespace A398564.P7925307628146078000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) : ℚ) / (A007947 (Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1)) : ℚ)

end

end A398564.P7925307628146078000

noncomputable section

/-- A398564: Triangle read by rows: T(n,k) is the greatest common divisor of the numbers of ways to form j simultaneous cross-team handshakes between teams of n and k distinct people, with each person participating in at most one handshake, for 1 <= j <= k <= n.

Offset 1, canonical program `A398564.P7925307628146078000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398564.P7925307628146078000.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398709.P7989658470484696830

`A159289(n)-1`
-/

namespace A398709.P7989658470484696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159289 n - 1

end

end A398709.P7989658470484696830

noncomputable section

/-- A398709: a(n) = floor(((5 + sqrt(17))/2)^n).

Offset 1, canonical program `A398709.P7989658470484696830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398709 (n : ℕ) : ℤ :=
  A398709.P7989658470484696830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398808.P3237987185005976780

`∑{#}[n, A276018(#)*A276018(n-#)]`
-/

namespace A398808.P3237987185005976780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A276018 k * A276018 (n - k)

end

end A398808.P3237987185005976780

noncomputable section

/-- A398808: a(n) = 27^n * [z^n] 2F1(1/3, 1/3; 1; z)^2.

Offset 0, canonical program `A398808.P3237987185005976780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398808 (n : ℕ) : ℤ :=
  A398808.P3237987185005976780.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398924.P1729396585582237570

`A352718((n+1)²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398924.P1729396585582237570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352718 ((n + 1) ^ 2 - 1)

end

end A398924.P1729396585582237570

noncomputable section

/-- A398924: a(n) = A352718(n^2-1).

Offset 1, canonical program `A398924.P1729396585582237570`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A352718((n+1)²-1)` (program `A398924.P1729396585582237570`, by `A398924.P1729396585582237570.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398924 (n : ℕ) : ℤ :=
  A398924.P1729396585582237570.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A352718((n+1)²-1)` (program `A398924.P1729396585582237570`, by `A398924.P1729396585582237570.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398924.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399035.P1234000300610669650

`A000110(n-2)-2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A399035.P1234000300610669650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000110 (n - 2) - 2 * a (n - 1) - a (n - 2)

end

end A399035.P1234000300610669650

noncomputable section

/-- A399035: The unique sequence a(n) such that A000296(n) = a(n) + a(n+1).

Offset 0, canonical program `A399035.P1234000300610669650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399035 (n : ℕ) : ℤ :=
  A399035.P1234000300610669650.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399053.P357460627173344980

`∑{#}[floor((n+1)^(1/3))-1, A008683(#+1)*(#+1)^3*C(floor((n+1)/(#+1)^3)+1, 2)]`
-/

namespace A399053.P357460627173344980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (k + 1) * ((k + 1) ^ 3 : ℤ) * (Nat.choose (⌊(n + 1 : ℚ) / ((k + 1) ^ 3 : ℚ)⌋ + 1).toNat 2 : ℤ)

end

end A399053.P357460627173344980

noncomputable section

/-- A399053: Sum of cubefree numbers <= n.

Offset 1, canonical program `A399053.P357460627173344980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399053 (n : ℕ) : ℤ :=
  A399053.P357460627173344980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399056.P5606043138281039820

`(n+1)²-2*A000720((n+1)²)`
-/

namespace A399056.P5606043138281039820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A000720 ((n + 1) ^ 2)

end

end A399056.P5606043138281039820

noncomputable section

/-- A399056: a(n) = (number of nonprimes <= n^2) - (number of primes <= n^2).

Offset 1, canonical program `A399056.P5606043138281039820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399056 (n : ℕ) : ℤ :=
  A399056.P5606043138281039820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399081.P16471427921113068956

`A000265(A003418(row(n)+1)/(col(n)+1))`
-/

namespace A399081.P16471427921113068956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003418 (SequenceMachineLib.triRow n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ))).toNat

end

end A399081.P16471427921113068956

noncomputable section

/-- A399081: Triangle read by rows: T(n,k) = Product_{p odd prime, 3 <= p <= n} p^(floor(log(n) /log(p)) - v_p(k)), where v_p(k) - p-adic valuation and T(1,1) = T(2,1) = T(2,2) = 1.

Offset 1, canonical program `A399081.P16471427921113068956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399081 (n : ℕ) : ℤ :=
  A399081.P16471427921113068956.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399250.P11468596376330613414

`A174344(n+1)*A274923(n+1)`
-/

namespace A399250.P11468596376330613414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) * A274923 (n + 1)

end

end A399250.P11468596376330613414

noncomputable section

/-- A399250: Product of the x- and y-coordinates of a point moving in a square spiral.

Offset 1, canonical program `A399250.P11468596376330613414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399250 (n : ℕ) : ℤ :=
  A399250.P11468596376330613414.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399251.P6576249541322394034

`A174344(n+1)²-A274923(n+1)²`
-/

namespace A399251.P6576249541322394034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) ^ 2 - A274923 (n + 1) ^ 2

end

end A399251.P6576249541322394034

noncomputable section

/-- A399251: a(n) = x^2 - y^2, where (x, y) are the coordinates of the n-th point of the square counterclockwise spiral with n=1 at the origin.

Offset 1, canonical program `A399251.P6576249541322394034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399251 (n : ℕ) : ℤ :=
  A399251.P6576249541322394034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399431.P9696602572664343429

`(2^A000040(n+1)-2)/A000040(n+1)+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399431.P9696602572664343429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A000040 (n + 1) : ℤ) - 2) / (A000040 (n + 1) : ℚ) + 2

end

end A399431.P9696602572664343429

noncomputable section

/-- A399431: a(n) = (2^prime(n) - 2)/prime(n) + 2.

Offset 1, canonical program `A399431.P9696602572664343429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399431.P9696602572664343429.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399520.P9692045178190648794

`n+1-A000149(A000195(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399520.P9692045178190648794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000149 (A000195 (n + 1)).toNat

end

end A399520.P9692045178190648794

noncomputable section

/-- A399520: a(n) = n - A000149(A000195(n)), where A000149 = floor o exp, A000195 = floor o log.

Offset 1, canonical program `A399520.P9692045178190648794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399520 (n : ℕ) : ℤ :=
  A399520.P9692045178190648794.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399841.P8409433032057062939

`A087935(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399841.P8409433032057062939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087935 (n + 1)) (n + 1 : ℤ)

end

end A399841.P8409433032057062939

noncomputable section

/-- A399841: a(n) = A087935(n) mod n.

Offset 1, canonical program `A399841.P8409433032057062939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399841 (n : ℕ) : ℤ :=
  A399841.P8409433032057062939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399989.P6324952000577847683

`4*a(n-1)+4*a(n-2)+A000108(n-1)-6*A000108(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A399989.P6324952000577847683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) + A000108 (n - 1) - 6 * A000108 (n - 2)

end

end A399989.P6324952000577847683

noncomputable section

/-- A399989: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the permutations {123, 213, 231}.

Offset 0, canonical program `A399989.P6324952000577847683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399989 (n : ℕ) : ℤ :=
  A399989.P6324952000577847683.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400179.P4702326977669117953

`1+a(A053188(n))` with `a(0)=0`
-/

namespace A400179.P4702326977669117953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A053188 n).toNat

end

end A400179.P4702326977669117953

noncomputable section

/-- A400179: a(n) = number of iterations of the map n -> A053188(n) needed to reach 0, starting from n.

Offset 0, canonical program `A400179.P4702326977669117953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400179 (n : ℕ) : ℤ :=
  (A400179.P4702326977669117953.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400210.P12738548307429019763

`A000203(n+1)-A001227(n+1)`
-/

namespace A400210.P12738548307429019763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001227 (n + 1)

end

end A400210.P12738548307429019763

noncomputable section

/-- A400210: a(n) = sigma(n) - tau(m) where m is the largest odd divisor of positive integer n, sigma = A000203 and tau = A000005.

Offset 1, canonical program `A400210.P12738548307429019763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400210 (n : ℕ) : ℤ :=
  A400210.P12738548307429019763.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A400478.P8710240923367081991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) * A007953 (a (n - 1) + a (n - 2)).toNat

end

end A400478.P8710240923367081991

noncomputable section

/-- A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

Offset 1, canonical program `A400478.P8710240923367081991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400478 (n : ℕ) : ℤ :=
  A400478.P8710240923367081991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400575.P15212467629946375614

`∑{#}[n, C(n+1+#-1, 2*#)*A000108(#)*(n+1)^#]`
-/

namespace A400575.P15212467629946375614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose ((n + 1 + k : ℤ) - 1).toNat (2 * k) : ℤ) * A000108 k * ((n + 1) ^ k : ℤ)

end

end A400575.P15212467629946375614

noncomputable section

/-- A400575: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(n,n-k-1) * n^k.

Offset 1, canonical program `A400575.P15212467629946375614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400575 (n : ℕ) : ℤ :=
  A400575.P15212467629946375614.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400687.P16773137454345729550

`a(n-1)+A069268(n+1)²` with `a(0)=1`
-/

namespace A400687.P16773137454345729550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A069268 (n + 1) ^ 2

end

end A400687.P16773137454345729550

noncomputable section

/-- A400687: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^2.

Offset 1, canonical program `A400687.P16773137454345729550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400687 (n : ℕ) : ℤ :=
  A400687.P16773137454345729550.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400797.P15196637446887860738

`A400796(n)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400797.P15196637446887860738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400796 n) 5

end

end A400797.P15196637446887860738

noncomputable section

/-- A400797: a(n) = A400796(n) mod 5.

Offset 0, canonical program `A400797.P15196637446887860738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400797 (n : ℕ) : ℤ :=
  A400797.P15196637446887860738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401008.P3884751415526295586

`A065033(n+1)-A001227(n+1)`
-/

namespace A401008.P3884751415526295586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) - A001227 (n + 1)

end

end A401008.P3884751415526295586

noncomputable section

/-- A401008: a(n) = the number of odd non-divisors of n in 1..n.

Offset 1, canonical program `A401008.P3884751415526295586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401008 (n : ℕ) : ℤ :=
  A401008.P3884751415526295586.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401031.P18122269830751302283

`A001405(floor((1+2*n)/3))`
-/

namespace A401031.P18122269830751302283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 ⌊(1 + 2 * n : ℚ) / 3⌋.toNat

end

end A401031.P18122269830751302283

noncomputable section

/-- A401031: Number of compositions of n using 1's and 2's such that the number of 1's and 2's differ by 0 or 1.

Offset 0, canonical program `A401031.P18122269830751302283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401031 (n : ℕ) : ℤ :=
  A401031.P18122269830751302283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401034.P16809251032672177720

`n+1+A174344(n+1)+A274923(n+1)`
-/

namespace A401034.P16809251032672177720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A174344 (n + 1) + A274923 (n + 1)

end

end A401034.P16809251032672177720

noncomputable section

/-- A401034: a(n) = n + x + y where x and y are the coordinates of n in the square spiral.

Offset 1, canonical program `A401034.P16809251032672177720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401034 (n : ℕ) : ℤ :=
  A401034.P16809251032672177720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401078.P8694535385630549604

`A000040(A000720(a(n-1)))+A000040(A000720(a(n-1))-1)` with `a(0)=2, a(1)=3`
-/

namespace A401078.P8694535385630549604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000040 (A000720 (a (n - 1)).toNat).toNat + A000040 (A000720 (a (n - 1)).toNat - 1).toNat

end

end A401078.P8694535385630549604

noncomputable section

/-- A401078: a(1)=2, a(2)=3, thereafter a(n) is the sum of the two largest primes <= a(n-1).

Offset 1, canonical program `A401078.P8694535385630549604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401078 (n : ℕ) : ℤ :=
  A401078.P8694535385630549604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401122.P1083847370963079364

`(n+1)*C(n, floor(n/2))²+(1+(-1)^(n+1))*A000108(floor((n+1)/2))²/2`
-/

namespace A401122.P1083847370963079364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ) + ((1 + (-1) ^ (n + 1)) * A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat ^ 2 : ℚ) / 2

end

end A401122.P1083847370963079364

noncomputable section

/-- A401122: a(n) is the size of the annular Jones monoid of degree n.

Offset 1, canonical program `A401122.P1083847370963079364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401122 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401122.P1083847370963079364.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401204.P3482120195419209640

`(n+1)*(A003501(n+1)+1)²/3`
-/

namespace A401204.P3482120195419209640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A003501 (n + 1) + 1) ^ 2 : ℚ) / 3

end

end A401204.P3482120195419209640

noncomputable section

/-- A401204: Number of spanning trees of the graph formed by n triangles arranged in a ring, with corresponding vertices of consecutive triangles joined and the ring closed by a cyclic shift of the vertices.

Offset 1, canonical program `A401204.P3482120195419209640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401204.P3482120195419209640.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401674.P12182739136436178416

`a(n-1)+n*(-1)^A000720(n)` with `a(0)=0`
-/

namespace A401674.P12182739136436178416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) * (-1 : ℚ) ^ (A000720 n : ℤ)

end

end A401674.P12182739136436178416

noncomputable section

/-- A401674: a(n) = Sum_{k=1..n} k*(-1)^pi(k), where pi = A000720.

Offset 0, canonical program `A401674.P12182739136436178416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401674.P12182739136436178416.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401693.P15368255342229218036

`∑{#}[n, (1+min(#+1-(n+1)%2, n+1-(#+1)))*A000108(#+1)]`
-/

namespace A401693.P15368255342229218036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 + min ((k + 1 : ℤ) - (((n + 1) % 2 : ℕ) : ℤ)) ((n + 1 : ℤ) - (k + 1 : ℤ))) * A000108 (k + 1)

end

end A401693.P15368255342229218036

noncomputable section

/-- A401693: Number of ways to cut a nonempty Dyck word into a prefix and a suffix with both lengths at most n and of the same parity as n.

Offset 1, canonical program `A401693.P15368255342229218036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401693 (n : ℕ) : ℤ :=
  A401693.P15368255342229218036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402165.P2637134116409634668

`1+a((n+2)/A020639(n+2)-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A402165.P2637134116409634668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  1 + a (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A020639 (n + 2) : ℚ) - 1)).toNat

end

end A402165.P2637134116409634668

noncomputable section

/-- A402165: Number of steps to reach 2 starting from n under the map x -> x/lpf(x) + 1, where lpf(x) is the least prime factor of x (A020639).

Offset 2, canonical program `A402165.P2637134116409634668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402165 (n : ℕ) : ℤ :=
  (A402165.P2637134116409634668.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402325.P1348422923174333742

`∑{d}[n+1, (1-A008683(#)²)*(1-A008683((n+1)/#)²)]`
-/

namespace A402325.P1348422923174333742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A008683 d ^ 2) * (1 - A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2)

end

end A402325.P1348422923174333742

noncomputable section

/-- A402325: Number of ways to write n = x*y with 1 <= x <= n, 1 <= y <= n, where neither x nor y is squarefree.

Offset 1, canonical program `A402325.P1348422923174333742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402325 (n : ℕ) : ℤ :=
  A402325.P1348422923174333742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397835.P15543943406779029277

`3^n-A397837(n)`
-/

namespace A397835.P15543943406779029277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A397837 n

end

end A397835.P15543943406779029277

noncomputable section

/-- A397835: Number of ternary words of length n over {a,b,c} containing the consecutive word abcabc.

Offset 0, canonical program `A397835.P15543943406779029277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835 (n : ℕ) : ℤ :=
  A397835.P15543943406779029277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401501.P17358560477405179724

`A401502(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A401501.P17358560477405179724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401502 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A401501.P17358560477405179724

noncomputable section

/-- A401501: Triangle read by rows: T(n, k) is the number of partitions of the set {1, 2,..., 2*n-k} into n-k nonempty lists, such that the smallest element of each list is not in the initial position. The lists themselves are unordered.

Offset 0, canonical program `A401501.P17358560477405179724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401501 (n : ℕ) : ℤ :=
  A401501.P17358560477405179724.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397991.P10536708789882532052

`floor(A127738(n+1)/(col(n)+1))`
-/

namespace A397991.P10536708789882532052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127738 (n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋

end

end A397991.P10536708789882532052

noncomputable section

/-- A397991: Array read by ascending antidiagonals: A(n,k) = floor(1+k*n/(k-1)) with k >= 2.

Offset 0, canonical program `A397991.P10536708789882532052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991 (n : ℕ) : ℤ :=
  A397991.P10536708789882532052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398105.P14381521786893344065

`A286850(n)²`
-/

namespace A398105.P14381521786893344065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286850 n ^ 2

end

end A398105.P14381521786893344065

noncomputable section

/-- A398105: Number of minimal dominating sets in the 4 X n king graph.

Offset 0, canonical program `A398105.P14381521786893344065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A398105 (n : ℕ) : ℤ :=
  A398105.P14381521786893344065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A398105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398182.P11134999281923761976

`2*A395822(n)`
-/

namespace A398182.P11134999281923761976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A395822 n

end

end A398182.P11134999281923761976

noncomputable section

/-- A398182: Degree of the minimal polynomial whose root is the sidelength of the largest n-cube that fits inside a unit (n+1)-cube.

Offset 0, canonical program `A398182.P11134999281923761976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A398182 (n : ℕ) : ℤ :=
  A398182.P11134999281923761976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A398182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398470.P15258585584443073451

`A036486(A000982(n+1))-A036486(n+1)`
-/

namespace A398470.P15258585584443073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (A000982 (n + 1)).toNat - A036486 (n + 1)

end

end A398470.P15258585584443073451

noncomputable section

/-- A398470: Number of increasing 3-term arithmetic progressions in an n^3 cube.

Offset 1, canonical program `A398470.P15258585584443073451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470 (n : ℕ) : ℤ :=
  A398470.P15258585584443073451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398486.P15435245625190870226

`∩[A023445(A026311(n+1)), A026311(n+1)]`
-/

namespace A398486.P15435245625190870226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A026311 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398486.P15435245625190870226

noncomputable section

/-- A398486: Numbers k such that cos(k) > cos(k+1) > cos(k+2) > cos(k+3) > cos(k+4).

Offset 1, canonical program `A398486.P15435245625190870226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A398486 (n : ℕ) : ℤ :=
  (A398486.P15435245625190870226.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A398486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398844.P8131316336226091348

`A398850(n)+∑[n]`
-/

namespace A398844.P8131316336226091348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398850 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398844.P8131316336226091348

noncomputable section

/-- A398844: Lower (1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398844.P8131316336226091348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398844 (n : ℕ) : ℤ :=
  A398844.P8131316336226091348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398894.P12466504130326028723

`n*A003418(A254667(n))+1`
-/

namespace A398894.P12466504130326028723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003418 (A254667 n).toNat + 1

end

end A398894.P12466504130326028723

noncomputable section

/-- A398894: Minimum value of k such that there exists a subset S of {1, ..., k} of size n for which the average of every nonempty subset of S is an integer.

Offset 1, canonical program `A398894.P12466504130326028723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A398894 (n : ℕ) : ℤ :=
  A398894.P12466504130326028723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A398894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399232.P4777266106439279644

`2*A340806(2*n+3)`
-/

namespace A399232.P4777266106439279644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340806 (2 * n + 3)

end

end A399232.P4777266106439279644

noncomputable section

/-- A399232: a(n) = Sum_{k=1..4*n+2} (k^(4*n+1) mod (2*n+1)).

Offset 1, canonical program `A399232.P4777266106439279644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A399232 (n : ℕ) : ℤ :=
  A399232.P4777266106439279644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A399232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399256.P860508281549201040

`ceil((A025581(n)+1)*exp(A002262(n)+1))-1`
-/

namespace A399256.P860508281549201040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A025581 n + 1 : ℝ) * Real.exp (A002262 n + 1 : ℝ)⌉ - 1

end

end A399256.P860508281549201040

noncomputable section

/-- A399256: Rectangular array read by descending antidiagonals: r(n, k) = floor(k*x^n), where x = e.

Offset 1, canonical program `A399256.P860508281549201040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399256 (n : ℕ) : ℤ :=
  A399256.P860508281549201040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399305.P13457833435346331970

`A063732(A187945(2+n))`
-/

namespace A399305.P13457833435346331970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A187945 (2 + n)).toNat

end

end A399305.P13457833435346331970

noncomputable section

/-- A399305: Integers whose minimal Lucas representation (A130310) ends in a 0 which if removed results in a valid minimal Lucas representation of another integer.

Offset 1, canonical program `A399305.P13457833435346331970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8540 terms. -/
def A399305 (n : ℕ) : ℤ :=
  A399305.P13457833435346331970.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8540 terms. -/
def A399305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399490.P15700466457018084356

`A219054(1+n)-A212760(n)`
-/

namespace A399490.P15700466457018084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (1 + n) - A212760 n

end

end A399490.P15700466457018084356

noncomputable section

/-- A399490: Sum of squares of the elements of R(n), where R(n) is the set of n consecutive integers centered at n, with the center n omitted when n is even.

Offset 1, canonical program `A399490.P15700466457018084356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490 (n : ℕ) : ℤ :=
  A399490.P15700466457018084356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399500.P9205957688936578004

`A339183(n)+A002260(n+1)`
-/

namespace A399500.P9205957688936578004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + A002260 (n + 1)

end

end A399500.P9205957688936578004

noncomputable section

/-- A399500: Triangle read by rows: row n gives the n consecutive integers centered at n, excluding n if n is even.

Offset 1, canonical program `A399500.P9205957688936578004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399500 (n : ℕ) : ℤ :=
  A399500.P9205957688936578004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399516.P12012210511113416735

`∑[A309945(n+5)-1]`
-/

namespace A399516.P12012210511113416735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309945 (n + 5) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399516.P12012210511113416735

noncomputable section

/-- A399516: Indices of jumps in A399515, where first differences A399515(n+1) - A399515(n) are > 1.

Offset 1, canonical program `A399516.P12012210511113416735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A399516 (n : ℕ) : ℤ :=
  A399516.P12012210511113416735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A399516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399553.P3075501320082949688

`2*A059009(n)+1`
-/

namespace A399553.P3075501320082949688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059009 n + 1

end

end A399553.P3075501320082949688

noncomputable section

/-- A399553: a(n) is the least odd k such that neither k nor the odd part of k + 1 is yet in the sequence.

Offset 0, canonical program `A399553.P3075501320082949688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399553 (n : ℕ) : ℤ :=
  A399553.P3075501320082949688.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059009, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399553.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399742.P12674386564686535397

`A193845(n)-A038207(n)`
-/

namespace A399742.P12674386564686535397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 n - A038207 n

end

end A399742.P12674386564686535397

noncomputable section

/-- A399742: Table of B(n, m) read by antidiagonals: B(n, m) = Sum_{k=0..m-1} binomial(k+n, n) * 2^k and B(n, 0) = 0, for n >= 0, m >= 0.

Offset 0, canonical program `A399742.P12674386564686535397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399742 (n : ℕ) : ℤ :=
  A399742.P12674386564686535397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400138.P7100333575480106552

`∑{d}[n+1, A008966(#)*A358260((n+1)/#)]`
-/

namespace A400138.P7100333575480106552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A358260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400138.P7100333575480106552

noncomputable section

/-- A400138: The number of divisors d of n such that gcid(d, n/d) is squarefree, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400138.P7100333575480106552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400138 (n : ℕ) : ℤ :=
  A400138.P7100333575480106552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400485.P3529086219494941568

`n+A135287(n)`
-/

namespace A400485.P3529086219494941568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A135287 n

end

end A400485.P3529086219494941568

noncomputable section

/-- A400485: a(1) = 1; for n > 1: if a(n-1) + n is odd, a(n) = a(n-1) + n else a(n) = (a(n-1) + n)/2.

Offset 1, canonical program `A400485.P3529086219494941568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400485 (n : ℕ) : ℤ :=
  A400485.P3529086219494941568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400693.P5789945913233644557

`∑[A069268(n+1)^3]`
-/

namespace A400693.P5789945913233644557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069268 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400693.P5789945913233644557

noncomputable section

/-- A400693: Sum of cubes of A069268: a(n) = Sum_{k=1..n} gcd(k!, k*(k+1)/2)^3.

Offset 1, canonical program `A400693.P5789945913233644557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9431 terms. -/
def A400693 (n : ℕ) : ℤ :=
  A400693.P5789945913233644557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9431 terms. -/
def A400693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400755.P875578250323055038

`A059026(1+n)+1`
-/

namespace A400755.P875578250323055038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (1 + n) + 1

end

end A400755.P875578250323055038

noncomputable section

/-- A400755: Triangle read by rows: T(n,k) = denominator(n/(n + k)), with 1 <= k <= n.

Offset 1, canonical program `A400755.P875578250323055038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400755 (n : ℕ) : ℤ :=
  A400755.P875578250323055038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400894.P15283623408944251719

`2*A400891(n+1)+1`
-/

namespace A400894.P15283623408944251719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400891 (n + 1) + 1

end

end A400894.P15283623408944251719

noncomputable section

/-- A400894: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with even valuation based on A400891.

Offset 1, canonical program `A400894.P15283623408944251719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400894 (n : ℕ) : ℤ :=
  A400894.P15283623408944251719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400954.P10787418138305735009

`A008278(n+1-2*col(n))`
-/

namespace A400954.P10787418138305735009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (n + 1 - 2 * SequenceMachineLib.triCol n)

end

end A400954.P10787418138305735009

noncomputable section

/-- A400954: Triangle read by rows: T(n,k) is the number of distinct ways to get the minimum runtime for k threads to complete n tasks, where time(n_i) = 2^(i-1), with 1 <= i <= n.

Offset 1, canonical program `A400954.P10787418138305735009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400954 (n : ℕ) : ℤ :=
  A400954.P10787418138305735009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A400954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401083.P6119846372689473028

`∏{e}[n+1, A008805(#+1)]`
-/

namespace A401083.P6119846372689473028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008805 (Nat.factorization (f1 n) p + 1)

end

end A401083.P6119846372689473028

noncomputable section

/-- A401083: The total number of exponentially odd divisors of the exponentially odd divisors of n.

Offset 1, canonical program `A401083.P6119846372689473028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401083 (n : ℕ) : ℤ :=
  A401083.P6119846372689473028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401088.P7983821779382291902

`∏{e}[1+n, A007879(#)]`
-/

namespace A401088.P7983821779382291902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A007879 (Nat.factorization (f1 n) p)

end

end A401088.P7983821779382291902

noncomputable section

/-- A401088: The number of exponentially odd divisors d of n such that n/d is a square.

Offset 1, canonical program `A401088.P7983821779382291902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401088 (n : ℕ) : ℤ :=
  A401088.P7983821779382291902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401191.P5971859324744171854

`a(n-1)+1+A031346(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A401191.P5971859324744171854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 1 + A031346 (a (n - 2)).toNat

end

end A401191.P5971859324744171854

noncomputable section

/-- A401191: a(0)=a(1)=1, a(n) = a(n-1) + 1 + per(a(n-2)), where per(n) is the multiplicative persistence of n.

Offset 0, canonical program `A401191.P5971859324744171854`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401191 (n : ℕ) : ℤ :=
  A401191.P5971859324744171854.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401191.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401293.P6153701285358072561

`2^n-A401290(n)`
-/

namespace A401293.P6153701285358072561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A401290 n

end

end A401293.P6153701285358072561

noncomputable section

/-- A401293: Number of orange squares after n unfoldings in the edge-memory unfolding array.

Offset 0, canonical program `A401293.P6153701285358072561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A401293 (n : ℕ) : ℤ :=
  A401293.P6153701285358072561.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A401293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401436.P13048450187381988359

`A134546(A038722(n+1))`
-/

namespace A401436.P13048450187381988359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134546 (A038722 (n + 1)).toNat

end

end A401436.P13048450187381988359

noncomputable section

/-- A401436: Square array A(n,k), n >= 0, k >= 1, read by descending antidiagonals: A(n,k) is the number of nonnegative integer solutions to x + y + k*z = n.

Offset 0, canonical program `A401436.P13048450187381988359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401436 (n : ℕ) : ℤ :=
  A401436.P13048450187381988359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401437.P81839502749205339

`∑[A401409(n)]`
-/

namespace A401437.P81839502749205339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401437.P81839502749205339

noncomputable section

/-- A401437: Partial sums of A401409.

Offset 0, canonical program `A401437.P81839502749205339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401437 (n : ℕ) : ℤ :=
  A401437.P81839502749205339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401723.P14337066620754754660

`(n+1)*A112622(n+1)`
-/

namespace A401723.P14337066620754754660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112622 (n + 1)

end

end A401723.P14337066620754754660

noncomputable section

/-- A401723: Multiplicative with a(p^e) = (e*p)^e.

Offset 1, canonical program `A401723.P14337066620754754660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112622, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401723 (n : ℕ) : ℤ :=
  A401723.P14337066620754754660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112622, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401886.P9259305142288146394

`∑[A087049(2*(n+1))]`
-/

namespace A401886.P9259305142288146394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P9259305142288146394

noncomputable section

/-- A401886: Maximum size of a subset S of {1, ..., n} such that x*y is not squarefree for all x, y in S.

Offset 1, canonical program `A401886.P9259305142288146394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401886 (n : ℕ) : ℤ :=
  A401886.P9259305142288146394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401979.P11378696931870036672

`∑{#}[floor(n/2), C(n-#, #)*A010056(#)]`
-/

namespace A401979.P11378696931870036672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℤ) * A010056 k

end

end A401979.P11378696931870036672

noncomputable section

/-- A401979: Number of tilings of a strip of length n using squares (length 1) and dominoes (length 2) such that the number of dominoes is a Fibonacci number.

Offset 0, canonical program `A401979.P11378696931870036672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A401979 (n : ℕ) : ℤ :=
  A401979.P11378696931870036672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 408 terms. -/
def A401979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A402292.P139546155512675331

`A047931(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A402292.P139546155512675331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A047931 n + a (n - 1)

end

end A402292.P139546155512675331

noncomputable section

/-- A402292: Maximum number of regions that can be formed in the plane by drawing n noncrossing unit circles.

Offset 0, canonical program `A402292.P139546155512675331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402292 (n : ℕ) : ℤ :=
  A402292.P139546155512675331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A402292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400812.P2266788064144703415

`A400813(n)+A400814(n)`
-/

namespace A400812.P2266788064144703415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400813 n + A400814 n

end

end A400812.P2266788064144703415

noncomputable section

/-- A400812: Number of star triples in the level-n supertile of the Spectre tiling.

Offset 0, canonical program `A400812.P2266788064144703415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400813, A400814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400812 (n : ℕ) : ℤ :=
  A400812.P2266788064144703415.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400813, A400814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A400812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400890.P15796363409859546705

`comp[A400891(1+n)]`
-/

namespace A400890.P15796363409859546705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400891 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400890.P15796363409859546705

noncomputable section

/-- A400890: Numbers k such that the 2-adic valuation of 3*k+2 is odd.

Offset 1, canonical program `A400890.P15796363409859546705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A400890 (n : ℕ) : ℤ :=
  (A400890.P15796363409859546705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A400890.provenance : SequenceMachineLib.Provenance := .conjectured

