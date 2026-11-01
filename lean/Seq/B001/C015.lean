import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C051
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

