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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
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
import Seq.B008.C001
import Seq.B009.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254000: Numbers equal to the fifth powers of the sums of their digits.

The programs for A254000, there is no canonical definition to state claims against.
-/

/-! ## A254000.P635617556761001838

`A055576(n+1)^5`
-/

namespace A254000.P635617556761001838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055576 (n + 1) ^ 5

end

end A254000.P635617556761001838

/-!
# A254001: a(n) is the least natural number k such that n^k is abundant or perfect, or a(n) is 0 if all n^k are deficient numbers.

The programs for A254001, there is no canonical definition to state claims against.
-/

/-! ## A254001.P16448288426428649745

`A336916(n+1)%A075503(A286144(n+1))`
-/

namespace A254001.P16448288426428649745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336916 (n + 1)) (A075503 (A286144 (n + 1)).toNat)

end

end A254001.P16448288426428649745

/-! ## A254001.P17759156717369818397

`n%2*A336916(A204904(n+1))`
-/

namespace A254001.P17759156717369818397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A336916 (A204904 (n + 1)).toNat

end

end A254001.P17759156717369818397

/-! ## A254001.P979892282721621617

`A000035(n)*A336916(A204904(n+1))`
-/

namespace A254001.P979892282721621617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A336916 (A204904 (n + 1)).toNat

end

end A254001.P979892282721621617

/-! ## A254001.P10478048971678765621

`A336916(A204904(n+1))%A196839(∑[n+1])`
-/

namespace A254001.P10478048971678765621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336916 (A204904 (n + 1)).toNat) (A196839 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A254001.P10478048971678765621

/-! ## A254001.P5158628266040864927

`A007814(A019565(n))*A336916(n+1)`
-/

namespace A254001.P5158628266040864927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A019565 n).toNat * A336916 (n + 1)

end

end A254001.P5158628266040864927

/-! ## A254001.P1758743410689562574

`A336916((n+1)^A276084(n+1))`
-/

namespace A254001.P1758743410689562574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A276084 (n + 1) : ℤ))).toNat

end

end A254001.P1758743410689562574

/-! ## A254001.P2100654714995365439

`(A341621(A225004(n+1))+1)%A225561(n+1)²`
-/

namespace A254001.P2100654714995365439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341621 (A225004 (n + 1)).toNat + 1) (A225561 (n + 1) ^ 2)

end

end A254001.P2100654714995365439

/-!
# A254004: Numbers that divide the reverse of the sum of their divisors.

The programs for A254004, there is no canonical definition to state claims against.
-/

/-! ## A254004.P192691326151697178

`A334202(A124836(n))+A166605(n+1)`
-/

namespace A254004.P192691326151697178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A124836 n).toNat + A166605 (n + 1)

end

end A254004.P192691326151697178

/-!
# A254006: a(0) = 1, a(n) = 3*a(n-2) if n mod 2 = 0, otherwise a(n) = 0.

The programs for A254006, the canonical program `A254006.P8582869198979241148` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254006 has offset 0).

The definition of A254006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)` (program `A254006.P8582869198979241148`, by `A254006.P8582869198979241148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254006.P8582869198979241148

`3*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254006

/-- `3*a(n-2)` -/
def P8582869198979241148.Spec : Prop :=
  ∀ n, (P8582869198979241148.a n : ℤ) = A254006 n

theorem P8582869198979241148.correct : P8582869198979241148.Spec := by
  intro n
  simp only [A254006]

end A254006

/-! ## A254006.P5055484650263476308

`3^(n/2)*(1+(-1)^n)/2`
-/

namespace A254006.P5055484650263476308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (1 + (-1) ^ n : ℝ) / 2

end

end A254006.P5055484650263476308

namespace A254006

/-- `3^(n/2)*(1+(-1)^n)/2` -/
def P5055484650263476308.Spec : Prop :=
  ∀ n, P5055484650263476308.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P11346995745481620880

`ogf(1/(1-3x^2))`
-/

namespace A254006.P11346995745481620880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3] n

end

end A254006.P11346995745481620880

namespace A254006

/-- `ogf(1/(1-3x^2))` -/
def P11346995745481620880.Spec : Prop :=
  ∀ n, P11346995745481620880.a n = A254006 n

end A254006

/-! ## A254006.P7238015853816414743

`sqrt((n²+3)%4)^n`
-/

namespace A254006.P7238015853816414743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n ^ 2 + 3) % 4 : ℕ) : ℝ) ^ n

end

end A254006.P7238015853816414743

namespace A254006

/-- `sqrt((n²+3)%4)^n` -/
def P7238015853816414743.Spec : Prop :=
  ∀ n, P7238015853816414743.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P14458528373337371383

`sqrt(and(3, n²-1))^n`
-/

namespace A254006.P14458528373337371383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 3 ((n ^ 2 : ℤ) - 1) : ℝ) ^ n

end

end A254006.P14458528373337371383

namespace A254006

/-- `sqrt(and(3, n²-1))^n` -/
def P14458528373337371383.Spec : Prop :=
  ∀ n, P14458528373337371383.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P3715210868248941481

`sqrt(3*(n+1)%2)^n`
-/

namespace A254006.P3715210868248941481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((3 * ((n + 1) % 2) : ℕ) : ℝ) ^ n

end

end A254006.P3715210868248941481

namespace A254006

/-- `sqrt(3*(n+1)%2)^n` -/
def P3715210868248941481.Spec : Prop :=
  ∀ n, P3715210868248941481.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P10388025093360808376

`(gcd(2, n)²-1)^(n/2)`
-/

namespace A254006.P10388025093360808376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n ^ 2 : ℤ) - 1 : ℝ) ^ ((n : ℚ) / 2 : ℝ)

end

end A254006.P10388025093360808376

namespace A254006

/-- `(gcd(2, n)²-1)^(n/2)` -/
def P10388025093360808376.Spec : Prop :=
  ∀ n, P10388025093360808376.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P3452443964554639782

`((n²-1)%4)^(n/2)`
-/

namespace A254006.P3452443964554639782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 1) 4 : ℝ) ^ ((n : ℚ) / 2 : ℝ)

end

end A254006.P3452443964554639782

namespace A254006

/-- `((n²-1)%4)^(n/2)` -/
def P3452443964554639782.Spec : Prop :=
  ∀ n, P3452443964554639782.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P434209509710034786

`sqrt(3*and(1, n+1))^n`
-/

namespace A254006.P434209509710034786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * Nat.land 1 (n + 1) : ℝ) ^ n

end

end A254006.P434209509710034786

namespace A254006

/-- `sqrt(3*and(1, n+1))^n` -/
def P434209509710034786.Spec : Prop :=
  ∀ n, P434209509710034786.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P15480228944005969765

`(sqrt(3)*and(1, n-1))^n`
-/

namespace A254006.P15480228944005969765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (3 : ℝ) * (Int.land 1 ((n : ℤ) - 1) : ℝ)) ^ n

end

end A254006.P15480228944005969765

namespace A254006

/-- `(sqrt(3)*and(1, n-1))^n` -/
def P15480228944005969765.Spec : Prop :=
  ∀ n, P15480228944005969765.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P15247166913621688973

`∑[-a(n-1)]^(n/2)` with `a(0)=3`
-/

namespace A254006.P15247166913621688973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ ((n : ℚ) / 2 : ℝ)

end

end A254006.P15247166913621688973

namespace A254006

/-- `∑[-a(n-1)]^(n/2)` -/
def P15247166913621688973.Spec : Prop :=
  ∀ n, P15247166913621688973.a n = (A254006 n : ℝ)

end A254006

/-! ## A254006.P9181749640169239083

`a(n-2)+lcm(2, a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A254006.P9181749640169239083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 2))

end

end A254006.P9181749640169239083

namespace A254006

/-- `a(n-2)+lcm(2, a(n-2))` -/
def P9181749640169239083.Spec : Prop :=
  ∀ n, (P9181749640169239083.a n : ℤ) = A254006 n

end A254006

/-! ## A254006.P9971070683738444802

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A254006.P9971070683738444802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A254006.P9971070683738444802

namespace A254006

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P9971070683738444802.Spec : Prop :=
  ∀ n, (P9971070683738444802.a n : ℤ) = A254006 n

theorem P9971070683738444802.correct : P9971070683738444802.Spec := by
  intro n
  simp only [A254006, Nat.add_sub_cancel, A254006.P9971070683738444802.a, A254006.P8582869198979241148.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254006

/-! ## A254006.P9665716328564597963

`∑[abs(a(n-1))-a(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A254006.P9665716328564597963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |f1 (n - 1)| - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254006.P9665716328564597963

namespace A254006

/-- `∑[abs(a(n-1))-a(n-1)-a(n-1)]` -/
def P9665716328564597963.Spec : Prop :=
  ∀ n, P9665716328564597963.a n = A254006 n

end A254006

/-! ## A254006.P8933410483188905820

`Δ[A003462(ceil(n/2))]`
-/

namespace A254006.P8933410483188905820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254006.P8933410483188905820

namespace A254006

/-- `Δ[A003462(ceil(n/2))]` -/
def P8933410483188905820.Spec : Prop :=
  ∀ n, P8933410483188905820.a n = A254006 n

end A254006

/-! ## A254006.P3942822313450824216

`Δ[A007051(ceil(n/2))]`
-/

namespace A254006.P3942822313450824216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254006.P3942822313450824216

namespace A254006

/-- `Δ[A007051(ceil(n/2))]` -/
def P3942822313450824216.Spec : Prop :=
  ∀ n, P3942822313450824216.a n = A254006 n

end A254006

/-! ## A254006.P12263988754004731138

`3^(n/2)*A059841(n)`
-/

namespace A254006.P12263988754004731138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (A059841 n : ℝ)

end

end A254006.P12263988754004731138

namespace A254006

/-- `3^(n/2)*A059841(n)` -/
def P12263988754004731138.Spec : Prop :=
  ∀ n, P12263988754004731138.a n = (A254006 n : ℝ)

end A254006

/-!
# A254007: Cardinality of the set of equivalence classes of the set X_n of finite integer sequences {x_1 = 0, x_2, ..., x_n} satisfying |x_k - x_{k+1}| = 1, where two such sequences are deemed equivalent if they are permutations of each other.

The programs for A254007, there is no canonical definition to state claims against.
-/

/-! ## A254007.P16486731046341387015

`A026713(n)+A011739(A240610(n))`
-/

namespace A254007.P16486731046341387015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026713 n + A011739 (A240610 n).toNat

end

end A254007.P16486731046341387015

/-! ## A254007.P2209816817570598725

`A374632(n)-A178651(A374632(n))`
-/

namespace A254007.P2209816817570598725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374632 n - A178651 (A374632 n).toNat

end

end A254007.P2209816817570598725

/-! ## A254007.P5952833033584811752

`A026713(n)+A011739(A173765(n+1))`
-/

namespace A254007.P5952833033584811752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026713 n + A011739 (A173765 (n + 1)).toNat

end

end A254007.P5952833033584811752

/-! ## A254007.P11618552940876666593

`A124761(A177150(n+1))+A026713(n)`
-/

namespace A254007.P11618552940876666593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A177150 (n + 1)).toNat + A026713 n

end

end A254007.P11618552940876666593

/-! ## A254007.P1703286085866604297

`A003056(A173765(n+1))-A173754(n+1)`
-/

namespace A254007.P1703286085866604297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A173765 (n + 1)).toNat - A173754 (n + 1)

end

end A254007.P1703286085866604297

/-!
# A254010: Numbers k such that 4k+1 and 4(k+1)+1 are primes.

The programs for A254010, the canonical program `A254010.P11034487668733509155` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254010 has offset 1).

The definition of A254010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254010.P4813247355496658690

`∩[A005098(n+1), A111199(n+1)+1]`
-/

namespace A254010.P4813247355496658690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254010.P4813247355496658690

namespace A254010

/-- `∩[A005098(n+1), A111199(n+1)+1]` -/
def P4813247355496658690.Spec : Prop :=
  ∀ n, (P4813247355496658690.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P2736159612297704534

`floor(p?[A152680(n+1)-3]/4)`
-/

namespace A254010.P2736159612297704534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A254010.P2736159612297704534

namespace A254010

/-- `floor(p?[A152680(n+1)-3]/4)` -/
def P2736159612297704534.Spec : Prop :=
  ∀ n, P2736159612297704534.a n = A254010 (n + 1)

end A254010

/-! ## A254010.P9490253255863758756

`floor(p?[A002144(n+1)-4]/4)`
-/

namespace A254010.P9490253255863758756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A254010.P9490253255863758756

namespace A254010

/-- `floor(p?[A002144(n+1)-4]/4)` -/
def P9490253255863758756.Spec : Prop :=
  ∀ n, P9490253255863758756.a n = A254010 (n + 1)

end A254010

/-! ## A254010.P11034487668733509155

`floor(p?[A002313(n+2)-4]/4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254010

/-- `floor(p?[A002313(n+2)-4]/4)` -/
def P11034487668733509155.Spec : Prop :=
  ∀ n, P11034487668733509155.a n = A254010 (n + 1)

theorem P11034487668733509155.correct : P11034487668733509155.Spec := by
  intro n
  simp only [A254010, Nat.add_sub_cancel]

end A254010

/-! ## A254010.P13480916769895357342

`round(p?[A002313(n+1)-4]/4)`
-/

namespace A254010.P13480916769895357342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4)

end

end A254010.P13480916769895357342

namespace A254010

/-- `round(p?[A002313(n+1)-4]/4)` -/
def P13480916769895357342.Spec : Prop :=
  ∀ n, P13480916769895357342.a n = A254010 (n + 1)

end A254010

/-! ## A254010.P10971921156429829591

`∩[A005098(n+1), A111215(n+1)]`
-/

namespace A254010.P10971921156429829591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254010.P10971921156429829591

namespace A254010

/-- `∩[A005098(n+1), A111215(n+1)]` -/
def P10971921156429829591.Spec : Prop :=
  ∀ n, (P10971921156429829591.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P13508734638296519696

`∩[A111215(n+2)+1, A111215(n+2)]`
-/

namespace A254010.P13508734638296519696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254010.P13508734638296519696

namespace A254010

/-- `∩[A111215(n+2)+1, A111215(n+2)]` -/
def P13508734638296519696.Spec : Prop :=
  ∀ n, (P13508734638296519696.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P7055158645521410552

`∩[A005098(n+2)-1, A005098(n+2)]`
-/

namespace A254010.P7055158645521410552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254010.P7055158645521410552

namespace A254010

/-- `∩[A005098(n+2)-1, A005098(n+2)]` -/
def P7055158645521410552.Spec : Prop :=
  ∀ n, (P7055158645521410552.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P3210960241148192210

`(A280193(2*n+1)+p?[A002313(n+1)-4])/4`
-/

namespace A254010.P3210960241148192210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280193 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4

end

end A254010.P3210960241148192210

namespace A254010

/-- `(A280193(2*n+1)+p?[A002313(n+1)-4])/4` -/
def P3210960241148192210.Spec : Prop :=
  ∀ n, P3210960241148192210.a n = (A254010 (n + 1) : ℚ)

end A254010

/-! ## A254010.P13960388301113908650

`eq[A116982(n+1), A175833(n)]`
-/

namespace A254010.P13960388301113908650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P13960388301113908650

namespace A254010

/-- `eq[A116982(n+1), A175833(n)]` -/
def P13960388301113908650.Spec : Prop :=
  ∀ n, (P13960388301113908650.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P13503612553604761405

`eq[A116982(n+1), A386685(n)]`
-/

namespace A254010.P13503612553604761405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P13503612553604761405

namespace A254010

/-- `eq[A116982(n+1), A386685(n)]` -/
def P13503612553604761405.Spec : Prop :=
  ∀ n, (P13503612553604761405.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P15482861364562651950

`eq[A116982(n+1), A173259(n+1)]`
-/

namespace A254010.P15482861364562651950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P15482861364562651950

namespace A254010

/-- `eq[A116982(n+1), A173259(n+1)]` -/
def P15482861364562651950.Spec : Prop :=
  ∀ n, (P15482861364562651950.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P12013067199588074602

`eq[4, A096500(A008574(n))]`
-/

namespace A254010.P12013067199588074602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254010.P12013067199588074602

namespace A254010

/-- `eq[4, A096500(A008574(n))]` -/
def P12013067199588074602.Spec : Prop :=
  ∀ n, (P12013067199588074602.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P1913982337726417820

`record[A025480(A047847(n+3))]`
-/

namespace A254010.P1913982337726417820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A047847 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254010.P1913982337726417820

namespace A254010

/-- `record[A025480(A047847(n+3))]` -/
def P1913982337726417820.Spec : Prop :=
  ∀ n, P1913982337726417820.a n = A254010 (n + 1)

end A254010

/-! ## A254010.P13611291244975354975

`eq[A054906(2*n+1), A198020(2*n)]`
-/

namespace A254010.P13611291244975354975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P13611291244975354975

namespace A254010

/-- `eq[A054906(2*n+1), A198020(2*n)]` -/
def P13611291244975354975.Spec : Prop :=
  ∀ n, (P13611291244975354975.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P14769217116882490597

`eq[A064652(2*(n+1)), A198020(2*n)]`
-/

namespace A254010.P14769217116882490597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064652 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198020 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P14769217116882490597

namespace A254010

/-- `eq[A064652(2*(n+1)), A198020(2*n)]` -/
def P14769217116882490597.Spec : Prop :=
  ∀ n, (P14769217116882490597.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P6213101416905537064

`eq[A037039(n+2), A053193(2*(n+1))]+1`
-/

namespace A254010.P6213101416905537064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053193 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A254010.P6213101416905537064

namespace A254010

/-- `eq[A037039(n+2), A053193(2*(n+1))]+1` -/
def P6213101416905537064.Spec : Prop :=
  ∀ n, (P6213101416905537064.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P775851355383924513

`eq[A049653(2*n+3)+2, A049653(2*(n+1))]`
-/

namespace A254010.P775851355383924513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (2 * n + 3) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P775851355383924513

namespace A254010

/-- `eq[A049653(2*n+3)+2, A049653(2*(n+1))]` -/
def P775851355383924513.Spec : Prop :=
  ∀ n, (P775851355383924513.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P11520740153641658866

`eq[2*A255274(2*(n+1)), A255274(2*n+1)]`
-/

namespace A254010.P11520740153641658866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255274 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P11520740153641658866

namespace A254010

/-- `eq[2*A255274(2*(n+1)), A255274(2*n+1)]` -/
def P11520740153641658866.Spec : Prop :=
  ∀ n, (P11520740153641658866.a n : ℤ) = A254010 (n + 1)

end A254010

/-! ## A254010.P13426437975439666237

`eq[A049613(2*(n+2))+2, A049613(2*n+3)]`
-/

namespace A254010.P13426437975439666237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049613 (2 * (n + 2)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049613 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254010.P13426437975439666237

namespace A254010

/-- `eq[A049613(2*(n+2))+2, A049613(2*n+3)]` -/
def P13426437975439666237.Spec : Prop :=
  ∀ n, (P13426437975439666237.a n : ℤ) = A254010 (n + 1)

end A254010

/-!
# A254011: Expansion of (1 - x^18) / ((1 - x^5) * (1 - x^6) * (1 - x^9)) in powers of x.

The programs for A254011, the canonical program `A254011.P1162402624068683902` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254011 has offset 0).

The definition of A254011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254011.P1162402624068683902

`A008676(n)-A079998(n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254011

/-- `A008676(n)-A079998(n+2)` -/
def P1162402624068683902.Spec : Prop :=
  ∀ n, P1162402624068683902.a n = A254011 n

theorem P1162402624068683902.correct : P1162402624068683902.Spec := by
  intro n
  simp only [A254011]

end A254011

/-! ## A254011.P278136938653730341

`A047302(n+1)-A004772(n+1)`
-/

namespace A254011.P278136938653730341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047302 (n + 1) - A004772 (n + 1)

end

end A254011.P278136938653730341

namespace A254011

/-- `A047302(n+1)-A004772(n+1)` -/
def P278136938653730341.Spec : Prop :=
  ∀ n, P278136938653730341.a n = A254011 n

end A254011

/-! ## A254011.P5358042397505334053

`A032793(n+1)-A047511(n+1)`
-/

namespace A254011.P5358042397505334053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1) - A047511 (n + 1)

end

end A254011.P5358042397505334053

namespace A254011

/-- `A032793(n+1)-A047511(n+1)` -/
def P5358042397505334053.Spec : Prop :=
  ∀ n, P5358042397505334053.a n = A254011 n

end A254011

/-! ## A254011.P17864448900014187988

`A008619(A058207(n)+A008611(n))-A058207(n)`
-/

namespace A254011.P17864448900014187988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A058207 n + A008611 n).toNat - A058207 n

end

end A254011.P17864448900014187988

namespace A254011

/-- `A008619(A058207(n)+A008611(n))-A058207(n)` -/
def P17864448900014187988.Spec : Prop :=
  ∀ n, P17864448900014187988.a n = A254011 n

end A254011

/-! ## A254011.P4711058644742160367

`A008651(n+1)+A008651(n)`
-/

namespace A254011.P4711058644742160367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (n + 1) + A008651 n

end

end A254011.P4711058644742160367

namespace A254011

/-- `A008651(n+1)+A008651(n)` -/
def P4711058644742160367.Spec : Prop :=
  ∀ n, P4711058644742160367.a n = A254011 n

end A254011

/-! ## A254011.P13133814057389839022

`A047363(n+2)-A042965(n+2)`
-/

namespace A254011.P13133814057389839022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 2) - A042965 (n + 2)

end

end A254011.P13133814057389839022

namespace A254011

/-- `A047363(n+2)-A042965(n+2)` -/
def P13133814057389839022.Spec : Prop :=
  ∀ n, P13133814057389839022.a n = A254011 n

end A254011

/-! ## A254011.P14762003642159761864

`A047222(n+2)-A047486(n+2)`
-/

namespace A254011.P14762003642159761864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 2) - A047486 (n + 2)

end

end A254011.P14762003642159761864

namespace A254011

/-- `A047222(n+2)-A047486(n+2)` -/
def P14762003642159761864.Spec : Prop :=
  ∀ n, P14762003642159761864.a n = A254011 n

end A254011

/-! ## A254011.P11912041710706997454

`A369611(n+2)-A369611(n)`
-/

namespace A254011.P11912041710706997454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369611 (n + 2) - A369611 n

end

end A254011.P11912041710706997454

namespace A254011

/-- `A369611(n+2)-A369611(n)` -/
def P11912041710706997454.Spec : Prop :=
  ∀ n, P11912041710706997454.a n = A254011 n

end A254011

/-! ## A254011.P5237868315529133548

`A002264(2*n)+A047363(n+2)-(2*n+1)`
-/

namespace A254011.P5237868315529133548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n) + (A047363 (n + 2) - (2 * n + 1 : ℤ))

end

end A254011.P5237868315529133548

namespace A254011

/-- `A002264(2*n)+A047363(n+2)-(2*n+1)` -/
def P5237868315529133548.Spec : Prop :=
  ∀ n, P5237868315529133548.a n = A254011 n

end A254011

/-! ## A254011.P15917892028165863915

`A008676(2*n+3)-A008676(n+2)`
-/

namespace A254011.P15917892028165863915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (2 * n + 3) - A008676 (n + 2)

end

end A254011.P15917892028165863915

namespace A254011

/-- `A008676(2*n+3)-A008676(n+2)` -/
def P15917892028165863915.Spec : Prop :=
  ∀ n, P15917892028165863915.a n = A254011 n

end A254011

/-! ## A254011.P10434798070271390849

`A072154(n+1)-(A042965(n+2)+n+1)`
-/

namespace A254011.P10434798070271390849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (n + 1) - (A042965 (n + 2) + (n + 1 : ℤ))

end

end A254011.P10434798070271390849

namespace A254011

/-- `A072154(n+1)-(A042965(n+2)+n+1)` -/
def P10434798070271390849.Spec : Prop :=
  ∀ n, P10434798070271390849.a n = A254011 n

end A254011

/-! ## A254011.P9918810017643598181

`3*(n+1)+A072154(n+1)-A219529(n+1)`
-/

namespace A254011.P9918810017643598181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + (A072154 (n + 1) - A219529 (n + 1))

end

end A254011.P9918810017643598181

namespace A254011

/-- `3*(n+1)+A072154(n+1)-A219529(n+1)` -/
def P9918810017643598181.Spec : Prop :=
  ∀ n, P9918810017643598181.a n = A254011 n

end A254011

/-! ## A254011.P11256467606148955616

`A008576(n+1)+A072154(n+1)-A008706(n+1)`
-/

namespace A254011.P11256467606148955616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1) + (A072154 (n + 1) - A008706 (n + 1))

end

end A254011.P11256467606148955616

namespace A254011

/-- `A008576(n+1)+A072154(n+1)-A008706(n+1)` -/
def P11256467606148955616.Spec : Prop :=
  ∀ n, P11256467606148955616.a n = A254011 n

end A254011

/-! ## A254011.P2412420943915656959

`A103221(A047263(2*n+1))-A103221(2*n+1)`
-/

namespace A254011.P2412420943915656959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A047263 (2 * n + 1)).toNat - A103221 (2 * n + 1)

end

end A254011.P2412420943915656959

namespace A254011

/-- `A103221(A047263(2*n+1))-A103221(2*n+1)` -/
def P2412420943915656959.Spec : Prop :=
  ∀ n, P2412420943915656959.a n = A254011 n

end A254011

/-! ## A254011.P2385615836006823779

`A047363(n+2)-A004525(A008576(n+1))`
-/

namespace A254011.P2385615836006823779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 2) - A004525 (A008576 (n + 1)).toNat

end

end A254011.P2385615836006823779

namespace A254011

/-- `A047363(n+2)-A004525(A008576(n+1))` -/
def P2385615836006823779.Spec : Prop :=
  ∀ n, P2385615836006823779.a n = A254011 n

end A254011

/-! ## A254011.P9140239904085337470

`A008676(n)-Δ[A008676(3*(n+1))]`
-/

namespace A254011.P9140239904085337470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n - (f1 (n + 1) - f1 n)

end

end A254011.P9140239904085337470

namespace A254011

/-- `A008676(n)-Δ[A008676(3*(n+1))]` -/
def P9140239904085337470.Spec : Prop :=
  ∀ n, P9140239904085337470.a n = A254011 n

end A254011

/-! ## A254011.P14701973494354501417

`A315477(n+1)-A219529(n+1)`
-/

namespace A254011.P14701973494354501417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 (n + 1) - A219529 (n + 1)

end

end A254011.P14701973494354501417

namespace A254011

/-- `A315477(n+1)-A219529(n+1)` -/
def P14701973494354501417.Spec : Prop :=
  ∀ n, P14701973494354501417.a n = A254011 n

end A254011

/-! ## A254011.P5099336187815448937

`A008486(n+1)+A008576(n+1)-A301718(n+1)`
-/

namespace A254011.P5099336187815448937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 1) + (A008576 (n + 1) - A301718 (n + 1))

end

end A254011.P5099336187815448937

namespace A254011

/-- `A008486(n+1)+A008576(n+1)-A301718(n+1)` -/
def P5099336187815448937.Spec : Prop :=
  ∀ n, P5099336187815448937.a n = A254011 n

end A254011

/-! ## A254011.P4464177365710235235

`A313575(2*(n+1))-A250120(2*(n+1))`
-/

namespace A254011.P4464177365710235235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313575 (2 * (n + 1)) - A250120 (2 * (n + 1))

end

end A254011.P4464177365710235235

namespace A254011

/-- `A313575(2*(n+1))-A250120(2*(n+1))` -/
def P4464177365710235235.Spec : Prop :=
  ∀ n, P4464177365710235235.a n = A254011 n

end A254011

/-! ## A254011.P14817397965497510395

`A310440(2*(n+1))-A250120(2*(n+1))`
-/

namespace A254011.P14817397965497510395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310440 (2 * (n + 1)) - A250120 (2 * (n + 1))

end

end A254011.P14817397965497510395

namespace A254011

/-- `A310440(2*(n+1))-A250120(2*(n+1))` -/
def P14817397965497510395.Spec : Prop :=
  ∀ n, P14817397965497510395.a n = A254011 n

end A254011

/-!
# A254012: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254012, there is no canonical definition to state claims against.
-/

/-! ## A254012.P13633541173875576081

`A254020(∑[4*n]+1)`
-/

namespace A254012.P13633541173875576081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254012.P13633541173875576081

/-! ## A254012.P13841891902453154973

`or(char[13], A254020((n+1)²+n²))`
-/

namespace A254012.P13841891902453154973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 ((n + 1) ^ 2 + n ^ 2))

end

end A254012.P13841891902453154973

/-! ## A254012.P16998370776375556886

`A254020(A001844(n))+char[18]`
-/

namespace A254012.P16998370776375556886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254012.P16998370776375556886

/-! ## A254012.P4015953108146788264

`record[A003982(n)*A254020(n+1)]`
-/

namespace A254012.P4015953108146788264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254012.P4015953108146788264

/-! ## A254012.P18255669008032986691

`record[gcd(A003987(n), A254020(n+1))]`
-/

namespace A254012.P18255669008032986691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A254020 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254012.P18255669008032986691

/-!
# A254013: Number of (n+2) X (1+2) 0..1 arrays with every 3 X 3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254013, there is no canonical definition to state claims against.
-/

/-! ## A254013.P616957957797257969

`A254020(∑[n]+1)`
-/

namespace A254013.P616957957797257969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254013.P616957957797257969

/-! ## A254013.P14640874678412439780

`record[A254020(n+1)]`
-/

namespace A254013.P14640874678412439780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254013.P14640874678412439780

/-! ## A254013.P16941021397900691443

`lcm(2, A254020(A000124(n)))`
-/

namespace A254013.P16941021397900691443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254020 (A000124 n).toNat)

end

end A254013.P16941021397900691443

/-! ## A254013.P12678666994220983283

`A254020(A000124(n))+A185238(n)`
-/

namespace A254013.P12678666994220983283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A000124 n).toNat + A185238 n

end

end A254013.P12678666994220983283

/-! ## A254013.P16995684795791751976

`A007318(∑[n])*A254020(A000124(n))`
-/

namespace A254013.P16995684795791751976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A254020 (A000124 n).toNat

end

end A254013.P16995684795791751976

/-!
# A254014: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254014, there is no canonical definition to state claims against.
-/

/-! ## A254014.P2001090522501848527

`A254020(∑[n+2])`
-/

namespace A254014.P2001090522501848527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254014.P2001090522501848527

/-! ## A254014.P13759271296347554909

`record[A254020(abs(A201163(n)))]`
-/

namespace A254014.P13759271296347554909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254014.P13759271296347554909

/-! ## A254014.P16458722296309042256

`or(char[4], A254020(A000096(n+1)))`
-/

namespace A254014.P16458722296309042256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A000096 (n + 1)).toNat)

end

end A254014.P16458722296309042256

/-! ## A254014.P3523047514320706782

`record[gcd(A071919(n+2), A254020(n+2))]`
-/

namespace A254014.P3523047514320706782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071919 (n + 2)) (A254020 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254014.P3523047514320706782

/-! ## A254014.P1202203557836954914

`A254020(A000096(n+1))+A025439(n)`
-/

namespace A254014.P1202203557836954914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A000096 (n + 1)).toNat + A025439 n

end

end A254014.P1202203557836954914

/-!
# A254015: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254015, there is no canonical definition to state claims against.
-/

/-! ## A254015.P5175783435604127113

`A254020(∑[n+3]+1)`
-/

namespace A254015.P5175783435604127113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254015.P5175783435604127113

/-! ## A254015.P10479358686645887190

`or(char[1], A254020(A034856(n+2)))`
-/

namespace A254015.P10479358686645887190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A034856 (n + 2)).toNat)

end

end A254015.P10479358686645887190

/-! ## A254015.P2331042832632592504

`lcm(gcd(2, n), A254020(A055999(n)+4))`
-/

namespace A254015.P2331042832632592504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A254020 (A055999 n + 4).toNat)

end

end A254015.P2331042832632592504

/-! ## A254015.P14916410958613721059

`A254020(A034856(n+2))+A185238(n)`
-/

namespace A254015.P14916410958613721059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A034856 (n + 2)).toNat + A185238 n

end

end A254015.P14916410958613721059

/-! ## A254015.P16155248974311538425

`abs(A020985(n)*A254020(A034856(n+2)))`
-/

namespace A254015.P16155248974311538425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020985 n * A254020 (A034856 (n + 2)).toNat|

end

end A254015.P16155248974311538425

/-!
# A254016: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254016, there is no canonical definition to state claims against.
-/

/-! ## A254016.P12691152936863232070

`A254020(∑[n+4]+3)`
-/

namespace A254016.P12691152936863232070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254016.P12691152936863232070

/-! ## A254016.P15960549180924513348

`or(char[1], A254020(A055998(n+2)))`
-/

namespace A254016.P15960549180924513348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A055998 (n + 2)).toNat)

end

end A254016.P15960549180924513348

/-! ## A254016.P17545502827224163828

`or(char[1], A254020(A000096(n+3)-2))`
-/

namespace A254016.P17545502827224163828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A000096 (n + 3) - 2).toNat)

end

end A254016.P17545502827224163828

/-! ## A254016.P11177106269626978652

`A014963(6*(n+2))*A254020(A055998(n+2))`
-/

namespace A254016.P11177106269626978652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A254020 (A055998 (n + 2)).toNat

end

end A254016.P11177106269626978652

/-! ## A254016.P6274399582908057996

`A007318(C(n+1, 2))*A254020(A055998(n+2))`
-/

namespace A254016.P6274399582908057996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 1) 2) * A254020 (A055998 (n + 2)).toNat

end

end A254016.P6274399582908057996

/-!
# A254017: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254017, there is no canonical definition to state claims against.
-/

/-! ## A254017.P12711775651775611458

`A254020(∑[n+5]+6)`
-/

namespace A254017.P12711775651775611458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A254017.P12711775651775611458

/-! ## A254017.P680238597880712555

`or(char[3], A254020(A046691(n+3)))`
-/

namespace A254017.P680238597880712555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A046691 (n + 3)).toNat)

end

end A254017.P680238597880712555

/-! ## A254017.P10675075491297750638

`or(char[13], A254020(A000217(n+5)-4))`
-/

namespace A254017.P10675075491297750638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A000217 (n + 5) - 4).toNat)

end

end A254017.P10675075491297750638

/-! ## A254017.P11129498092502006469

`A007318(C(n, 2))*A254020(A046691(n+3))`
-/

namespace A254017.P11129498092502006469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254020 (A046691 (n + 3)).toNat

end

end A254017.P11129498092502006469

/-! ## A254017.P17387079464555011377

`A254020(A046691(n+3))/A007318(and(3, -n))`
-/

namespace A254017.P17387079464555011377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254020 (A046691 (n + 3)).toNat : ℚ) / (A007318 (Int.land 3 (-(n : ℤ))).toNat : ℚ)

end

end A254017.P17387079464555011377

/-!
# A254018: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254018, there is no canonical definition to state claims against.
-/

/-! ## A254018.P16004048750694272302

`A254020(A052905(n+3))`
-/

namespace A254018.P16004048750694272302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A052905 (n + 3)).toNat

end

end A254018.P16004048750694272302

/-! ## A254018.P15801802477798284177

`A254020(A056119(n)+16)`
-/

namespace A254018.P15801802477798284177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A056119 n + 16).toNat

end

end A254018.P15801802477798284177

/-! ## A254018.P14474791185982947093

`A254020(eq[3, A219347(n)])`
-/

namespace A254018.P14474791185982947093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254018.P14474791185982947093

/-! ## A254018.P3090269994186467702

`A254020(eq[5, A193592(n)])`
-/

namespace A254018.P3090269994186467702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254018.P3090269994186467702

/-! ## A254018.P6352168160720842079

`A254020(∑[A020715(n)]+10)`
-/

namespace A254018.P6352168160720842079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A254018.P6352168160720842079

/-!
# A254019: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254019, there is no canonical definition to state claims against.
-/

/-! ## A254019.P9468654839303541716

`A254020(A055999(n+4))`
-/

namespace A254019.P9468654839303541716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A055999 (n + 4)).toNat

end

end A254019.P9468654839303541716

/-! ## A254019.P15137072753646310268

`A254020(eq[4, A219347(n)])`
-/

namespace A254019.P15137072753646310268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254019.P15137072753646310268

/-! ## A254019.P41866263269106357

`A254020(eq[6, A193592(n)])`
-/

namespace A254019.P41866263269106357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254019.P41866263269106357

/-! ## A254019.P10301546808153712281

`A254020(A155212(n+3)+2)`
-/

namespace A254019.P10301546808153712281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A155212 (n + 3) + 2).toNat

end

end A254019.P10301546808153712281

/-! ## A254019.P17410363116502563847

`A254020(A052905(n+4)-1)`
-/

namespace A254019.P17410363116502563847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A052905 (n + 4) - 1).toNat

end

end A254019.P17410363116502563847

/-!
# A254021: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254021, there is no canonical definition to state claims against.
-/

/-! ## A254021.P4401784356858788044

`A254020(∑[n+1]+2)`
-/

namespace A254021.P4401784356858788044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254021.P4401784356858788044

/-! ## A254021.P5082457106515389241

`record[A254020(A133263(abs(1-n)))]`
-/

namespace A254021.P5082457106515389241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254021.P5082457106515389241

/-! ## A254021.P11055483453808813406

`or(char[2], A254020(A000096(n)+3))`
-/

namespace A254021.P11055483453808813406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A000096 n + 3).toNat)

end

end A254021.P11055483453808813406

/-! ## A254021.P1187508641470626322

`record[A254020(n+2)/A080852(n)]`
-/

namespace A254021.P1187508641470626322
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254020 (n + 2) : ℚ) / (A080852 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254021.P1187508641470626322

/-! ## A254021.P15748910744068646810

`record[A254020(n+3)/A053122(n)]`
-/

namespace A254021.P15748910744068646810
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254020 (n + 3) : ℚ) / (A053122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254021.P15748910744068646810

/-!
# A254022: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254022, there is no canonical definition to state claims against.
-/

/-! ## A254022.P15511075997948443218

`A254020(∑[n+2]+4)`
-/

namespace A254022.P15511075997948443218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254022.P15511075997948443218

/-! ## A254022.P338461209282104353

`and(-1, A254020(A167614(n+1)))`
-/

namespace A254022.P338461209282104353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A254020 (A167614 (n + 1)).toNat)

end

end A254022.P338461209282104353

/-! ## A254022.P9454567116575100703

`or(char[3], A254020(A000096(n+1)+4))`
-/

namespace A254022.P9454567116575100703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A000096 (n + 1) + 4).toNat)

end

end A254022.P9454567116575100703

/-! ## A254022.P5249472965460548495

`A254020(A167614(n+1))+A025439(n)`
-/

namespace A254022.P5249472965460548495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A167614 (n + 1)).toNat + A025439 n

end

end A254022.P5249472965460548495

/-! ## A254022.P1333983168730910530

`A254020(A167614(n+1))+A185238(n)`
-/

namespace A254022.P1333983168730910530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A167614 (n + 1)).toNat + A185238 n

end

end A254022.P1333983168730910530

/-!
# A254023: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254023, there is no canonical definition to state claims against.
-/

/-! ## A254023.P8259129910017615799

`A254020(∑[n+3]+7)`
-/

namespace A254023.P8259129910017615799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254023.P8259129910017615799

/-! ## A254023.P14013259558814277601

`or(char[3], A254020(A027379(n+1)+7))`
-/

namespace A254023.P14013259558814277601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A027379 (n + 1) + 7).toNat)

end

end A254023.P14013259558814277601

/-! ## A254023.P6066226413388392211

`A254020(A145018(n+4))+n%-1`
-/

namespace A254023.P6066226413388392211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A145018 (n + 4)).toNat + Int.tmod (n : ℤ) (-1)

end

end A254023.P6066226413388392211

/-! ## A254023.P13956262987563079368

`A254020(A145018(n+4))/A007318(C(2, n))`
-/

namespace A254023.P13956262987563079368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254020 (A145018 (n + 4)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A254023.P13956262987563079368

/-! ## A254023.P8347513678792000573

`A000041(C(n, 64))*A254020(A145018(n+4))`
-/

namespace A254023.P8347513678792000573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A254020 (A145018 (n + 4)).toNat

end

end A254023.P8347513678792000573

/-!
# A254024: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254024, there is no canonical definition to state claims against.
-/

/-! ## A254024.P3596949093276256867

`A254020(∑[n+3]+n+12)`
-/

namespace A254024.P3596949093276256867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A254024.P3596949093276256867

/-! ## A254024.P3802686615641140489

`or(char[1], A254020(A155212(n)+13))`
-/

namespace A254024.P3802686615641140489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A254020 (A155212 n + 13).toNat)

end

end A254024.P3802686615641140489

/-! ## A254024.P8600026084889259596

`A007318(C(n, 2))*A254020(A155212(n)+13)`
-/

namespace A254024.P8600026084889259596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254020 (A155212 n + 13).toNat

end

end A254024.P8600026084889259596

/-! ## A254024.P15478108042942374993

`A254020(A155212(n)+13)+A008683(4*(n+1))`
-/

namespace A254024.P15478108042942374993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A155212 n + 13).toNat + A008683 (4 * (n + 1))

end

end A254024.P15478108042942374993

/-! ## A254024.P12050924083099981009

`A000041(C(2, n+2))*A254020(A155212(n)+13)`
-/

namespace A254024.P12050924083099981009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A254020 (A155212 n + 13).toNat

end

end A254024.P12050924083099981009

/-!
# A254025: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254025, there is no canonical definition to state claims against.
-/

/-! ## A254025.P323372936215801465

`A254020(∑[n+5]+16)`
-/

namespace A254025.P323372936215801465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A254025.P323372936215801465

/-! ## A254025.P483890031276858933

`lcm(char[1]+1, A254020(A167499(n+4)+1))`
-/

namespace A254025.P483890031276858933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A254020 (A167499 (n + 4) + 1).toNat)

end

end A254025.P483890031276858933

/-! ## A254025.P6872817669440360422

`A254020(A167499(n+4)+1)+A230642(2*n+1)`
-/

namespace A254025.P6872817669440360422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A167499 (n + 4) + 1).toNat + A230642 (2 * n + 1)

end

end A254025.P6872817669440360422

/-! ## A254025.P737997995353720547

`A254020(A167499(n+4)+1)%A321836(2*n+3)`
-/

namespace A254025.P737997995353720547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254020 (A167499 (n + 4) + 1).toNat) (A321836 (2 * n + 3))

end

end A254025.P737997995353720547

/-!
# A254026: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal median nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254026, there is no canonical definition to state claims against.
-/

/-! ## A254026.P1878757904238949268

`A254020(A167487(n+5))`
-/

namespace A254026.P1878757904238949268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A167487 (n + 5)).toNat

end

end A254026.P1878757904238949268

/-! ## A254026.P16743018380364737831

`A254020(A056119(n)+28)`
-/

namespace A254026.P16743018380364737831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A056119 n + 28).toNat

end

end A254026.P16743018380364737831

/-! ## A254026.P6148433720433405600

`A254020(∑[A020715(n)]+22)`
-/

namespace A254026.P6148433720433405600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (∑ j ∈ Finset.range (n + 1), f1 j + 22).toNat

end

end A254026.P6148433720433405600

/-! ## A254026.P15256353693332440128

`A254020(A166136(n+5)+1)`
-/

namespace A254026.P15256353693332440128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A166136 (n + 5) + 1).toNat

end

end A254026.P15256353693332440128

/-! ## A254026.P14324555451002972698

`A254020(A000124(n+6)+6)`
-/

namespace A254026.P14324555451002972698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254020 (A000124 (n + 6) + 6).toNat

end

end A254026.P14324555451002972698

/-!
# A254027: Table T(n,k) = 3^n - 2^k read by antidiagonals.

The programs for A254027, the canonical program `A254027.P726365621105400960` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254027 has offset 0).

The definition of A254027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254027.P726365621105400960

`A140303(n)-A059268(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A254027

/-- `A140303(n)-A059268(n)` -/
def P726365621105400960.Spec : Prop :=
  ∀ n, P726365621105400960.a n = A254027 n

theorem P726365621105400960.correct : P726365621105400960.Spec := by
  intro n
  simp only [A254027]

end A254027

/-! ## A254027.P10884476190554989041

`A000244(A025581(n))-A059268(n)`
-/

namespace A254027.P10884476190554989041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat - A059268 n

end

end A254027.P10884476190554989041

namespace A254027

/-- `A000244(A025581(n))-A059268(n)` -/
def P10884476190554989041.Spec : Prop :=
  ∀ n, P10884476190554989041.a n = A254027 n

end A254027

/-! ## A254027.P11434981070650380581

`A140303(n)-A000079(A002262(n))`
-/

namespace A254027.P11434981070650380581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n - A000079 (A002262 n).toNat

end

end A254027.P11434981070650380581

namespace A254027

/-- `A140303(n)-A000079(A002262(n))` -/
def P11434981070650380581.Spec : Prop :=
  ∀ n, P11434981070650380581.a n = A254027 n

end A254027

/-! ## A254027.P12544631249108980483

`A108411(A099375(n))-A059268(n)`
-/

namespace A254027.P12544631249108980483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A099375 n).toNat - A059268 n

end

end A254027.P12544631249108980483

namespace A254027

/-- `A108411(A099375(n))-A059268(n)` -/
def P12544631249108980483.Spec : Prop :=
  ∀ n, P12544631249108980483.a n = A254027 n

end A254027

/-! ## A254027.P1678573362320916886

`(A027465(n)-A013609(n))/A007318(n)`
-/

namespace A254027.P1678573362320916886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n - A013609 n : ℚ) / (A007318 n : ℚ)

end

end A254027.P1678573362320916886

namespace A254027

/-- `(A027465(n)-A013609(n))/A007318(n)` -/
def P1678573362320916886.Spec : Prop :=
  ∀ n, P1678573362320916886.a n = (A254027 n : ℚ)

end A254027

/-! ## A254027.P2696647284879394788

`(A038220(n)-A013611(n))/A013609(n)`
-/

namespace A254027.P2696647284879394788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n - A013611 n : ℚ) / (A013609 n : ℚ)

end

end A254027.P2696647284879394788

namespace A254027

/-- `(A038220(n)-A013611(n))/A013609(n)` -/
def P2696647284879394788.Spec : Prop :=
  ∀ n, P2696647284879394788.a n = (A254027 n : ℚ)

end A254027

/-! ## A254027.P5722103445568866044

`A175840(n)/A059268(n)-A059268(n)`
-/

namespace A254027.P5722103445568866044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175840 n : ℚ) / (A059268 n : ℚ) - (A059268 n : ℚ)

end

end A254027.P5722103445568866044

namespace A254027

/-- `A175840(n)/A059268(n)-A059268(n)` -/
def P5722103445568866044.Spec : Prop :=
  ∀ n, P5722103445568866044.a n = (A254027 n : ℚ)

end A254027

/-! ## A254027.P9833984947741931089

`A140303(n)-A175840(n)/A140303(n)`
-/

namespace A254027.P9833984947741931089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140303 n : ℚ) - (A175840 n : ℚ) / (A140303 n : ℚ)

end

end A254027.P9833984947741931089

namespace A254027

/-- `A140303(n)-A175840(n)/A140303(n)` -/
def P9833984947741931089.Spec : Prop :=
  ∀ n, P9833984947741931089.a n = (A254027 n : ℚ)

end A254027

/-! ## A254027.P10421379070936121292

`A098355(n)/A003959(A059268(n))-A059268(n)`
-/

namespace A254027.P10421379070936121292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 n : ℚ) / (A003959 (A059268 n).toNat : ℚ) - (A059268 n : ℚ)

end

end A254027.P10421379070936121292

namespace A254027

/-- `A098355(n)/A003959(A059268(n))-A059268(n)` -/
def P10421379070936121292.Spec : Prop :=
  ∀ n, P10421379070936121292.a n = (A254027 n : ℚ)

end A254027

/-! ## A254027.P4224549461695275551

`A332818(A137688(n)/A059268(n))-A059268(n)`
-/

namespace A254027.P4224549461695275551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332818 (SequenceMachineLib.roundAway ((A137688 n : ℚ) / (A059268 n : ℚ))).toNat - A059268 n

end

end A254027.P4224549461695275551

namespace A254027

/-- `A332818(A137688(n)/A059268(n))-A059268(n)` -/
def P4224549461695275551.Spec : Prop :=
  ∀ n, P4224549461695275551.a n = A254027 n

end A254027

/-! ## A254027.P12589037170569849766

`A120027(n)/A289320(A059268(n))-A059268(n)`
-/

namespace A254027.P12589037170569849766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120027 n : ℚ) / (A289320 (A059268 n).toNat : ℚ) - (A059268 n : ℚ)

end

end A254027.P12589037170569849766

namespace A254027

/-- `A120027(n)/A289320(A059268(n))-A059268(n)` -/
def P12589037170569849766.Spec : Prop :=
  ∀ n, P12589037170569849766.a n = (A254027 n : ℚ)

end A254027

/-! ## A254027.P10154467643089879746

`A003961(A130321(n))-A059268(n)`
-/

namespace A254027.P10154467643089879746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A130321 n).toNat - A059268 n

end

end A254027.P10154467643089879746

namespace A254027

/-- `A003961(A130321(n))-A059268(n)` -/
def P10154467643089879746.Spec : Prop :=
  ∀ n, P10154467643089879746.a n = A254027 n

end A254027

/-! ## A254027.P3660601529909775021

`A005836(A130321(n)+1)-A059268(n)`
-/

namespace A254027.P3660601529909775021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A130321 n + 1).toNat - A059268 n

end

end A254027.P3660601529909775021

namespace A254027

/-- `A005836(A130321(n)+1)-A059268(n)` -/
def P3660601529909775021.Spec : Prop :=
  ∀ n, P3660601529909775021.a n = A254027 n

end A254027

/-!
# A254028: a(n) = 2^(n+1) + 3^n + 3.

The programs for A254028, the canonical program `A254028.P7205106388263872069` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254028 has offset 0).

The definition of A254028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+3^n+3` (program `A254028.P7205106388263872069`, by `A254028.P7205106388263872069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254028.P7205106388263872069

`2^(n+1)+3^n+3`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254028

/-- `2^(n+1)+3^n+3` -/
def P7205106388263872069.Spec : Prop :=
  ∀ n, (P7205106388263872069.a n : ℤ) = A254028 n

theorem P7205106388263872069.correct : P7205106388263872069.Spec := by
  intro n
  simp only [A254028]

end A254028

/-! ## A254028.P15838181047341544552

`2*(A099754(n)+1)`
-/

namespace A254028.P15838181047341544552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099754 n + 1)

end

end A254028.P15838181047341544552

namespace A254028

/-- `2*(A099754(n)+1)` -/
def P15838181047341544552.Spec : Prop :=
  ∀ n, P15838181047341544552.a n = A254028 n

end A254028

/-! ## A254028.P13916808328778992047

`2*(A094374(n)+2)`
-/

namespace A254028.P13916808328778992047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094374 n + 2)

end

end A254028.P13916808328778992047

namespace A254028

/-- `2*(A094374(n)+2)` -/
def P13916808328778992047.Spec : Prop :=
  ∀ n, P13916808328778992047.a n = A254028 n

end A254028

/-! ## A254028.P7123971392305891585

`2*(∑[A085281(n)]+2)`
-/

namespace A254028.P7123971392305891585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254028.P7123971392305891585

namespace A254028

/-- `2*(∑[A085281(n)]+2)` -/
def P7123971392305891585.Spec : Prop :=
  ∀ n, P7123971392305891585.a n = A254028 n

end A254028

/-! ## A254028.P2432606650441628058

`2*(A007051(n)+A000051(n))`
-/

namespace A254028.P2432606650441628058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n + A000051 n)

end

end A254028.P2432606650441628058

namespace A254028

/-- `2*(A007051(n)+A000051(n))` -/
def P2432606650441628058.Spec : Prop :=
  ∀ n, P2432606650441628058.a n = A254028 n

end A254028

/-! ## A254028.P4731229636421506404

`2*(A052548(n)+A003462(n))`
-/

namespace A254028.P4731229636421506404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052548 n + A003462 n)

end

end A254028.P4731229636421506404

namespace A254028

/-- `2*(A052548(n)+A003462(n))` -/
def P4731229636421506404.Spec : Prop :=
  ∀ n, P4731229636421506404.a n = A254028 n

end A254028

/-! ## A254028.P2176028010362133924

`2*(A115098(n)+A000079(n))`
-/

namespace A254028.P2176028010362133924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A115098 n + A000079 n)

end

end A254028.P2176028010362133924

namespace A254028

/-- `2*(A115098(n)+A000079(n))` -/
def P2176028010362133924.Spec : Prop :=
  ∀ n, P2176028010362133924.a n = A254028 n

end A254028

/-! ## A254028.P16043570201157163670

`2*(A003462(n)+Δ[A176691(n)])`
-/

namespace A254028.P16043570201157163670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n + (f1 (n + 1) - f1 n))

end

end A254028.P16043570201157163670

namespace A254028

/-- `2*(A003462(n)+Δ[A176691(n)])` -/
def P16043570201157163670.Spec : Prop :=
  ∀ n, P16043570201157163670.a n = A254028 n

end A254028

/-! ## A254028.P12770840902048301081

`2*(A007051(n)+A000225(n)+2)`
-/

namespace A254028.P12770840902048301081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n + A000225 n + 2)

end

end A254028.P12770840902048301081

namespace A254028

/-- `2*(A007051(n)+A000225(n)+2)` -/
def P12770840902048301081.Spec : Prop :=
  ∀ n, P12770840902048301081.a n = A254028 n

end A254028

/-! ## A254028.P9152415848951030044

`2*(A000392(n+1)+A000051(n+1))`
-/

namespace A254028.P9152415848951030044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000392 (n + 1) + A000051 (n + 1))

end

end A254028.P9152415848951030044

namespace A254028

/-- `2*(A000392(n+1)+A000051(n+1))` -/
def P9152415848951030044.Spec : Prop :=
  ∀ n, P9152415848951030044.a n = A254028 n

end A254028

/-! ## A254028.P16044906512538684476

`2*(∑[A001047(abs(1-n))+A000051(n)-1]+1)`
-/

namespace A254028.P16044906512538684476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 |1 - (n : ℤ)|.toNat + (A000051 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254028.P16044906512538684476

namespace A254028

/-- `2*(∑[A001047(abs(1-n))+A000051(n)-1]+1)` -/
def P16044906512538684476.Spec : Prop :=
  ∀ n, P16044906512538684476.a n = A254028 n

end A254028

/-! ## A254028.P10766840685960027622

`(A254365(n)+A168611(n))/2`
-/

namespace A254028.P10766840685960027622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254365 n + A168611 n : ℚ) / 2

end

end A254028.P10766840685960027622

namespace A254028

/-- `(A254365(n)+A168611(n))/2` -/
def P10766840685960027622.Spec : Prop :=
  ∀ n, P10766840685960027622.a n = (A254028 n : ℚ)

end A254028

/-!
# A254029: Positive solutions of Monkey and Coconuts Problem for the classic case (5 sailors, 1 coconut to the monkey): a(n) = 15625*n - 4 for n >= 1.

The programs for A254029, the canonical program `A254029.P17445973482596724621` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254029 has offset 1).

The definition of A254029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254029.P17445973482596724621

`(n+1)/(1/5)^6-4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254029

/-- `(n+1)/(1/5)^6-4` -/
def P17445973482596724621.Spec : Prop :=
  ∀ n, P17445973482596724621.a n = (A254029 (n + 1) : ℚ)

end A254029

/-!
# A254030: a(n) = 1*4^n + 2*3^n + 3*2^n + 4*1^n.

The programs for A254030, the canonical program `A254030.P4325226106482106897` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254030 has offset 0).

The definition of A254030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+2*3^n+3*2^n+4` (program `A254030.P4325226106482106897`, by `A254030.P4325226106482106897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254030.P4325226106482106897

`4^n+2*3^n+3*2^n+4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254030

/-- `4^n+2*3^n+3*2^n+4` -/
def P4325226106482106897.Spec : Prop :=
  ∀ n, (P4325226106482106897.a n : ℤ) = A254030 n

theorem P4325226106482106897.correct : P4325226106482106897.Spec := by
  intro n
  simp only [A254030]

end A254030

/-! ## A254030.P4270324539632637979

`1*4^n+2*3^n+3*2^n+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254030.P4270324539632637979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 4 ^ n + 2 * 3 ^ n + 3 * 2 ^ n + 4

end

end A254030.P4270324539632637979

namespace A254030

/-- `1*4^n+2*3^n+3*2^n+4` -/
def P4270324539632637979.Spec : Prop :=
  ∀ n, (P4270324539632637979.a n : ℤ) = A254030 n

theorem P4270324539632637979.correct : P4270324539632637979.Spec := by
  intro n
  simp only [A254030, Nat.add_sub_cancel, A254030.P4270324539632637979.a, A254030.P4325226106482106897.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254030

/-! ## A254030.P10822568452379798444

`4^n+2*3^n+3*2^n+4*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254030.P10822568452379798444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 2 * 3 ^ n + 3 * 2 ^ n + 4 * 1

end

end A254030.P10822568452379798444

namespace A254030

/-- `4^n+2*3^n+3*2^n+4*1` -/
def P10822568452379798444.Spec : Prop :=
  ∀ n, (P10822568452379798444.a n : ℤ) = A254030 n

theorem P10822568452379798444.correct : P10822568452379798444.Spec := by
  intro n
  simp only [A254030, Nat.add_sub_cancel, A254030.P10822568452379798444.a, A254030.P4325226106482106897.a, SequenceMachineLib.memo_apply]

end A254030

/-! ## A254030.P2509876115127489155

`1*4^n+2*3^n+3*2^n+4*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254030.P2509876115127489155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 4 ^ n + 2 * 3 ^ n + 3 * 2 ^ n + 4 * 1

end

end A254030.P2509876115127489155

namespace A254030

/-- `1*4^n+2*3^n+3*2^n+4*1` -/
def P2509876115127489155.Spec : Prop :=
  ∀ n, (P2509876115127489155.a n : ℤ) = A254030 n

theorem P2509876115127489155.correct : P2509876115127489155.Spec := by
  intro n
  simp only [A254030, Nat.add_sub_cancel, A254030.P2509876115127489155.a, A254030.P4325226106482106897.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254030

/-! ## A254030.P11557508019081130693

`4^n+2*3^n+3*2^n+4*1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254030.P11557508019081130693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 2 * 3 ^ n + 3 * 2 ^ n + 4 * 1 ^ n

end

end A254030.P11557508019081130693

namespace A254030

/-- `4^n+2*3^n+3*2^n+4*1^n` -/
def P11557508019081130693.Spec : Prop :=
  ∀ n, (P11557508019081130693.a n : ℤ) = A254030 n

theorem P11557508019081130693.correct : P11557508019081130693.Spec := by
  intro n
  simp only [A254030, Nat.add_sub_cancel, A254030.P11557508019081130693.a, A254030.P4325226106482106897.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254030

/-! ## A254030.P12087411051264402451

`1*4^n+2*3^n+3*2^n+4*1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254030.P12087411051264402451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 4 ^ n + 2 * 3 ^ n + 3 * 2 ^ n + 4 * 1 ^ n

end

end A254030.P12087411051264402451

namespace A254030

/-- `1*4^n+2*3^n+3*2^n+4*1^n` -/
def P12087411051264402451.Spec : Prop :=
  ∀ n, (P12087411051264402451.a n : ℤ) = A254030 n

theorem P12087411051264402451.correct : P12087411051264402451.Spec := by
  intro n
  simp only [A254030, Nat.add_sub_cancel, A254030.P12087411051264402451.a, A254030.P4325226106482106897.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254030

/-! ## A254030.P9218109646132084774

`abs(A254362(n)-A254363(n))`
-/

namespace A254030.P9218109646132084774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254362 n - A254363 n|

end

end A254030.P9218109646132084774

namespace A254030

/-- `abs(A254362(n)-A254363(n))` -/
def P9218109646132084774.Spec : Prop :=
  ∀ n, P9218109646132084774.a n = A254030 n

end A254030

/-! ## A254030.P10963121460549531753

`2*(A173657(n)+A007582(n))`
-/

namespace A254030.P10963121460549531753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173657 n + A007582 n)

end

end A254030.P10963121460549531753

namespace A254030

/-- `2*(A173657(n)+A007582(n))` -/
def P10963121460549531753.Spec : Prop :=
  ∀ n, P10963121460549531753.a n = A254030 n

end A254030

/-! ## A254030.P10916151075927812136

`2*(A281481(n)+A001550(n))`
-/

namespace A254030.P10916151075927812136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A281481 n + A001550 n)

end

end A254030.P10916151075927812136

namespace A254030

/-- `2*(A281481(n)+A001550(n))` -/
def P10916151075927812136.Spec : Prop :=
  ∀ n, P10916151075927812136.a n = A254030 n

end A254030

/-! ## A254030.P11048906310109940941

`2*(A034472(n)+A028401(n+2))`
-/

namespace A254030.P11048906310109940941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034472 n + A028401 (n + 2))

end

end A254030.P11048906310109940941

namespace A254030

/-- `2*(A034472(n)+A028401(n+2))` -/
def P11048906310109940941.Spec : Prop :=
  ∀ n, P11048906310109940941.a n = A254030 n

end A254030

/-!
# A254031: a(n) = 1*5^n + 2*4^n + 3*3^n + 4*2^n + 5*1^n.

The programs for A254031, the canonical program `A254031.P9701992009848056109` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254031 has offset 0).

The definition of A254031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+2*4^n+3*3^n+4*2^n+5` (program `A254031.P9701992009848056109`, by `A254031.P9701992009848056109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254031.P9701992009848056109

`5^n+2*4^n+3*3^n+4*2^n+5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254031

/-- `5^n+2*4^n+3*3^n+4*2^n+5` -/
def P9701992009848056109.Spec : Prop :=
  ∀ n, (P9701992009848056109.a n : ℤ) = A254031 n

theorem P9701992009848056109.correct : P9701992009848056109.Spec := by
  intro n
  simp only [A254031]

end A254031

/-! ## A254031.P15870052116264135193

`1*5^n+2*4^n+3*3^n+4*2^n+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254031.P15870052116264135193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 5 ^ n + 2 * 4 ^ n + 3 * 3 ^ n + 4 * 2 ^ n + 5

end

end A254031.P15870052116264135193

namespace A254031

/-- `1*5^n+2*4^n+3*3^n+4*2^n+5` -/
def P15870052116264135193.Spec : Prop :=
  ∀ n, (P15870052116264135193.a n : ℤ) = A254031 n

theorem P15870052116264135193.correct : P15870052116264135193.Spec := by
  intro n
  simp only [A254031, Nat.add_sub_cancel, A254031.P15870052116264135193.a, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254031

/-! ## A254031.P17515319181373553683

`5^n+2*4^n+3*3^n+4*2^n+5*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254031.P17515319181373553683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 2 * 4 ^ n + 3 * 3 ^ n + 4 * 2 ^ n + 5 * 1

end

end A254031.P17515319181373553683

namespace A254031

/-- `5^n+2*4^n+3*3^n+4*2^n+5*1` -/
def P17515319181373553683.Spec : Prop :=
  ∀ n, (P17515319181373553683.a n : ℤ) = A254031 n

theorem P17515319181373553683.correct : P17515319181373553683.Spec := by
  intro n
  simp only [A254031, Nat.add_sub_cancel, A254031.P17515319181373553683.a, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply]

end A254031

/-! ## A254031.P10008792408762727269

`1*5^n+2*4^n+3*3^n+4*2^n+5*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254031.P10008792408762727269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 5 ^ n + 2 * 4 ^ n + 3 * 3 ^ n + 4 * 2 ^ n + 5 * 1

end

end A254031.P10008792408762727269

namespace A254031

/-- `1*5^n+2*4^n+3*3^n+4*2^n+5*1` -/
def P10008792408762727269.Spec : Prop :=
  ∀ n, (P10008792408762727269.a n : ℤ) = A254031 n

theorem P10008792408762727269.correct : P10008792408762727269.Spec := by
  intro n
  simp only [A254031, Nat.add_sub_cancel, A254031.P10008792408762727269.a, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254031

/-! ## A254031.P5598471744701308587

`5^n+2*4^n+3*3^n+4*2^n+5*1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254031.P5598471744701308587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n + 2 * 4 ^ n + 3 * 3 ^ n + 4 * 2 ^ n + 5 * 1 ^ n

end

end A254031.P5598471744701308587

namespace A254031

/-- `5^n+2*4^n+3*3^n+4*2^n+5*1^n` -/
def P5598471744701308587.Spec : Prop :=
  ∀ n, (P5598471744701308587.a n : ℤ) = A254031 n

theorem P5598471744701308587.correct : P5598471744701308587.Spec := by
  intro n
  simp only [A254031, Nat.add_sub_cancel, A254031.P5598471744701308587.a, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254031

/-! ## A254031.P13632798055385976832

`1*5^n+2*4^n+3*3^n+4*2^n+5*1^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254031.P13632798055385976832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 * 5 ^ n + 2 * 4 ^ n + 3 * 3 ^ n + 4 * 2 ^ n + 5 * 1 ^ n

end

end A254031.P13632798055385976832

namespace A254031

/-- `1*5^n+2*4^n+3*3^n+4*2^n+5*1^n` -/
def P13632798055385976832.Spec : Prop :=
  ∀ n, (P13632798055385976832.a n : ℤ) = A254031 n

theorem P13632798055385976832.correct : P13632798055385976832.Spec := by
  intro n
  simp only [A254031, Nat.add_sub_cancel, A254031.P13632798055385976832.a, A254031.P9701992009848056109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254031

/-! ## A254031.P16422497498773184071

`abs(A254363(n)-A254364(n))`
-/

namespace A254031.P16422497498773184071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254363 n - A254364 n|

end

end A254031.P16422497498773184071

namespace A254031

/-- `abs(A254363(n)-A254364(n))` -/
def P16422497498773184071.Spec : Prop :=
  ∀ n, P16422497498773184071.a n = A254031 n

end A254031

/-! ## A254031.P10353210215047339388

`(A254364(n)-A254363(n))%A254367(n)`
-/

namespace A254031.P10353210215047339388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254364 n - A254363 n) (A254367 n)

end

end A254031.P10353210215047339388

namespace A254031

/-- `(A254364(n)-A254363(n))%A254367(n)` -/
def P10353210215047339388.Spec : Prop :=
  ∀ n, P10353210215047339388.a n = A254031 n

end A254031

/-! ## A254031.P18140858698198273188

`lcm(A254363(n)-A254364(n), A057077(n))`
-/

namespace A254031.P18140858698198273188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254363 n - A254364 n) (A057077 n)

end

end A254031.P18140858698198273188

namespace A254031

/-- `lcm(A254363(n)-A254364(n), A057077(n))` -/
def P18140858698198273188.Spec : Prop :=
  ∀ n, (P18140858698198273188.a n : ℤ) = A254031 n

end A254031

/-! ## A254031.P351671993590144942

`abs(A001553(n)-A254144(n))`
-/

namespace A254031.P351671993590144942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001553 n - A254144 n|

end

end A254031.P351671993590144942

namespace A254031

/-- `abs(A001553(n)-A254144(n))` -/
def P351671993590144942.Spec : Prop :=
  ∀ n, P351671993590144942.a n = A254031 n

end A254031

/-!
# A254032: a(0)=0, a(1)=1; for n > 2, a(n) is the smallest prime factor of a(n-1) + a(n-2) not already in the sequence or, if there is no such prime, a(n) = a(n-1) + a(n-2).

The programs for A254032, there is no canonical definition to state claims against.
-/

/-! ## A254032.P4106533012178483227

`A000196((A214094(n)*A278657(n))²)`
-/

namespace A254032.P4106533012178483227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A214094 n * A278657 n) ^ 2).toNat

end

end A254032.P4106533012178483227

/-! ## A254032.P1129660567460820948

`A146906(A146930(n+1))*A214094(n)`
-/

namespace A254032.P1129660567460820948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146906 (A146930 (n + 1)).toNat * A214094 n

end

end A254032.P1129660567460820948

/-!
# A254033: Number of primes dividing exactly one number in the next largest gap between primes.

The programs for A254033, there is no canonical definition to state claims against.
-/

/-! ## A254033.P6010684033938369471

`eq[A077593(n), A275451(n+1)]`
-/

namespace A254033.P6010684033938369471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254033.P6010684033938369471

/-! ## A254033.P16728886388334051922

`eq[A273895(n), A275451(n+1)]`
-/

namespace A254033.P16728886388334051922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254033.P16728886388334051922

/-! ## A254033.P6616993525087933606

`eq[A275451(n+1), A323222(n)]`
-/

namespace A254033.P6616993525087933606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254033.P6616993525087933606

/-! ## A254033.P10382407914920871356

`eq[A275451(n+1), A323224(n)]`
-/

namespace A254033.P10382407914920871356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254033.P10382407914920871356

/-! ## A254033.P16309640625967799101

`eq[A275451(n+1), A327618(n)]`
-/

namespace A254033.P16309640625967799101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254033.P16309640625967799101

/-!
# A254034: Numbers representable as both b^c + b + c and x*y + x + y, where b, c, x, y are integers bigger than 1.

The programs for A254034, there is no canonical definition to state claims against.
-/

/-! ## A254034.P16620335754882864778

`∩[A253775(n+1), A254671(n+1)]`
-/

namespace A254034.P16620335754882864778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254034.P16620335754882864778

/-! ## A254034.P14788094535684216032

`∩[A009188(n+1)-1, A253775(n+1)]`
-/

namespace A254034.P14788094535684216032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254034.P14788094535684216032

/-!
# A254035: Sequence A255412 sorted into ascending order, with duplicates removed.

The programs for A254035, there is no canonical definition to state claims against.
-/

/-! ## A254035.P15744177407061818826

`record[A255412(n+1)/A199356(n+1)]`
-/

namespace A254035.P15744177407061818826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255412 (n + 1) : ℚ) / (A199356 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254035.P15744177407061818826

/-! ## A254035.P3687424275854866467

`A255412(∑[A255985(n)])`
-/

namespace A254035.P3687424275854866467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254035.P3687424275854866467

/-! ## A254035.P16020195903017873580

`A255412(A032551(n+2))`
-/

namespace A254035.P16020195903017873580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255412 (A032551 (n + 2)).toNat

end

end A254035.P16020195903017873580

/-!
# A254036: Number of Lyndon-Bell strings of length n.

The programs for A254036, there is no canonical definition to state claims against.
-/

/-! ## A254036.P5209944597776948923

`A334250(n)-A211270(A014307(n))`
-/

namespace A254036.P5209944597776948923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334250 n - A211270 (A014307 n).toNat

end

end A254036.P5209944597776948923

/-! ## A254036.P3437544738341929520

`ceil(A247002(n)/14)`
-/

namespace A254036.P3437544738341929520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247002 n : ℚ) / 14⌉

end

end A254036.P3437544738341929520

/-! ## A254036.P14291715821928131909

`A262689(∑[(n-1)^n])`
-/

namespace A254036.P14291715821928131909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254036.P14291715821928131909

/-!
# A254038: Prime numbers n such that replacing each digit d in the decimal expansion of n with prime(d) produces a square. Zeros are not allowed.

The programs for A254038, there is no canonical definition to state claims against.
-/

/-! ## A254038.P15030401532820945705

`p?[A048383(n+1)]`
-/

namespace A254038.P15030401532820945705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A254038.P15030401532820945705

/-!
# A254040: Number T(n,k) of primitive (= aperiodic) n-bead necklaces with colored beads of exactly k different colors; triangle T(n,k), n >= 0, 0 <= k <= n, read by rows.

The programs for A254040, there is no canonical definition to state claims against.
-/

/-! ## A254040.P5561630856241993861

`floor(A131689(n)/A055642(A018076(n)))`
-/

namespace A254040.P5561630856241993861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131689 n : ℚ) / (A055642 (A018076 n).toNat : ℚ)⌋

end

end A254040.P5561630856241993861

/-! ## A254040.P10867224022067624164

`floor(A131689(n)/A008621(A187829(n+1)))`
-/

namespace A254040.P10867224022067624164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131689 n : ℚ) / (A008621 (A187829 (n + 1)).toNat : ℚ)⌋

end

end A254040.P10867224022067624164

/-! ## A254040.P13457057280506290897

`floor(A131689(n)/A055642(A134035(n+1)))`
-/

namespace A254040.P13457057280506290897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131689 n : ℚ) / (A055642 (A134035 (n + 1)).toNat : ℚ)⌋

end

end A254040.P13457057280506290897

/-! ## A254040.P15704964019299733924

`A283113(n+1)-A333382(A002366(n+1))`
-/

namespace A254040.P15704964019299733924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283113 (n + 1) - A333382 (A002366 (n + 1)).toNat

end

end A254040.P15704964019299733924

/-! ## A254040.P9261803012372286421

`A097805(n)*A345197(A351467(3*(n+1)))`
-/

namespace A254040.P9261803012372286421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A345197 (A351467 (3 * (n + 1))).toNat

end

end A254040.P9261803012372286421

/-!
# A254044: a(1) = 1, for n>1: a(n) = a(A253889(n)) + (1 if n is of the form 3n or 3n+1, otherwise 0).

The programs for A254044, the canonical program `A254044.P1535441661521657078` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254044 has offset 1).

The definition of A254044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254044.P16043752606520700309

`A253894(n+1)-A254045(n+1)`
-/

namespace A254044.P16043752606520700309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (n + 1) - A254045 (n + 1)

end

end A254044.P16043752606520700309

namespace A254044

/-- `A253894(n+1)-A254045(n+1)` -/
def P16043752606520700309.Spec : Prop :=
  ∀ n, P16043752606520700309.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P1535441661521657078

`A000120(A064216(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A254044

/-- `A000120(A064216(n+1))` -/
def P1535441661521657078.Spec : Prop :=
  ∀ n, P1535441661521657078.a n = A254044 (n + 1)

theorem P1535441661521657078.correct : P1535441661521657078.Spec := by
  intro n
  simp only [A254044, Nat.add_sub_cancel]

end A254044

/-! ## A254044.P12412774305336185563

`∑{e}[A286243(n+1), #]`
-/

namespace A254044.P12412774305336185563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A254044.P12412774305336185563

namespace A254044

/-- `∑{e}[A286243(n+1), #]` -/
def P12412774305336185563.Spec : Prop :=
  ∀ n, (P12412774305336185563.a n : ℤ) = A254044 (n + 1)

end A254044

/-! ## A254044.P5696137809662214167

`A000120(A353413(n+1))`
-/

namespace A254044.P5696137809662214167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A353413 (n + 1)).toNat

end

end A254044.P5696137809662214167

namespace A254044

/-- `A000120(A353413(n+1))` -/
def P5696137809662214167.Spec : Prop :=
  ∀ n, P5696137809662214167.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P11349169389382861520

`A000120(A290099(2*n+1))`
-/

namespace A254044.P11349169389382861520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A290099 (2 * n + 1)).toNat

end

end A254044.P11349169389382861520

namespace A254044

/-- `A000120(A290099(2*n+1))` -/
def P11349169389382861520.Spec : Prop :=
  ∀ n, P11349169389382861520.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P12398910289426541074

`A000120(A353412(2*n+1))`
-/

namespace A254044.P12398910289426541074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A353412 (2 * n + 1)).toNat

end

end A254044.P12398910289426541074

namespace A254044

/-- `A000120(A353412(2*n+1))` -/
def P12398910289426541074.Spec : Prop :=
  ∀ n, P12398910289426541074.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P18108805275433322634

`A000120(A243502(n+1)/2)`
-/

namespace A254044.P18108805275433322634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A254044.P18108805275433322634

namespace A254044

/-- `A000120(A243502(n+1)/2)` -/
def P18108805275433322634.Spec : Prop :=
  ∀ n, P18108805275433322634.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P10707407688697445668

`A000120(A000265(A353412(n+1+n)))`
-/

namespace A254044.P10707407688697445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000265 (A353412 (n + 1 + n)).toNat).toNat

end

end A254044.P10707407688697445668

namespace A254044

/-- `A000120(A000265(A353412(n+1+n)))` -/
def P10707407688697445668.Spec : Prop :=
  ∀ n, P10707407688697445668.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P407107635140914202

`A070939(A064216(n+1))-A254045(n+1)`
-/

namespace A254044.P407107635140914202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A064216 (n + 1)).toNat - A254045 (n + 1)

end

end A254044.P407107635140914202

namespace A254044

/-- `A070939(A064216(n+1))-A254045(n+1)` -/
def P407107635140914202.Spec : Prop :=
  ∀ n, P407107635140914202.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P16211509024594388766

`A253894(n+1)-A080791(A064216(n+1))`
-/

namespace A254044.P16211509024594388766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (n + 1) - A080791 (A064216 (n + 1)).toNat

end

end A254044.P16211509024594388766

namespace A254044

/-- `A253894(n+1)-A080791(A064216(n+1))` -/
def P16211509024594388766.Spec : Prop :=
  ∀ n, P16211509024594388766.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P5676710716178415829

`A000120(A064989(Δ[n²]))`
-/

namespace A254044.P5676710716178415829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A254044.P5676710716178415829

namespace A254044

/-- `A000120(A064989(Δ[n²]))` -/
def P5676710716178415829.Spec : Prop :=
  ∀ n, P5676710716178415829.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P12342746172299261310

`A000120(A252463(Δ[n²]))`
-/

namespace A254044.P12342746172299261310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A252463 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A254044.P12342746172299261310

namespace A254044

/-- `A000120(A252463(Δ[n²]))` -/
def P12342746172299261310.Spec : Prop :=
  ∀ n, P12342746172299261310.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P15211182797503420369

`A000120(A341515(2*n+1))`
-/

namespace A254044.P15211182797503420369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341515 (2 * n + 1)).toNat

end

end A254044.P15211182797503420369

namespace A254044

/-- `A000120(A341515(2*n+1))` -/
def P15211182797503420369.Spec : Prop :=
  ∀ n, P15211182797503420369.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P6338895747067333781

`A000120(A341516(2*n+1))`
-/

namespace A254044.P6338895747067333781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341516 (2 * n + 1)).toNat

end

end A254044.P6338895747067333781

namespace A254044

/-- `A000120(A341516(2*n+1))` -/
def P6338895747067333781.Spec : Prop :=
  ∀ n, P6338895747067333781.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P2589464769388052105

`A000120(A252463(2*n+1))%21`
-/

namespace A254044.P2589464769388052105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A252463 (2 * n + 1)).toNat) 21

end

end A254044.P2589464769388052105

namespace A254044

/-- `A000120(A252463(2*n+1))%21` -/
def P2589464769388052105.Spec : Prop :=
  ∀ n, P2589464769388052105.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P6525148491142327430

`A000120(A200746(2*n+1)/(2*n+1))`
-/

namespace A254044.P6525148491142327430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A200746 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))).toNat

end

end A254044.P6525148491142327430

namespace A254044

/-- `A000120(A200746(2*n+1)/(2*n+1))` -/
def P6525148491142327430.Spec : Prop :=
  ∀ n, P6525148491142327430.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P10005465128673992506

`A000120(A000265(A064989(2*n+1)))`
-/

namespace A254044.P10005465128673992506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000265 (A064989 (2 * n + 1)).toNat).toNat

end

end A254044.P10005465128673992506

namespace A254044

/-- `A000120(A000265(A064989(2*n+1)))` -/
def P10005465128673992506.Spec : Prop :=
  ∀ n, P10005465128673992506.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P9514981030954809080

`A000120(A000265(A252463(2*n+1)))`
-/

namespace A254044.P9514981030954809080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000265 (A252463 (2 * n + 1)).toNat).toNat

end

end A254044.P9514981030954809080

namespace A254044

/-- `A000120(A000265(A252463(2*n+1)))` -/
def P9514981030954809080.Spec : Prop :=
  ∀ n, P9514981030954809080.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P8970537872652060734

`A000120(or(A252463(2*n+1), A292244(n+1)))`
-/

namespace A254044.P8970537872652060734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A252463 (2 * n + 1)) (A292244 (n + 1))).toNat

end

end A254044.P8970537872652060734

namespace A254044

/-- `A000120(or(A252463(2*n+1), A292244(n+1)))` -/
def P8970537872652060734.Spec : Prop :=
  ∀ n, P8970537872652060734.a n = A254044 (n + 1)

end A254044

/-! ## A254044.P10827716800470674951

`A001222(A286243(n+1))`
-/

namespace A254044.P10827716800470674951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286243 (n + 1)).toNat

end

end A254044.P10827716800470674951

namespace A254044

/-- `A001222(A286243(n+1))` -/
def P10827716800470674951.Spec : Prop :=
  ∀ n, P10827716800470674951.a n = A254044 (n + 1)

end A254044

/-!
# A254045: a(1) = 0, for n > 1: a(n) = a(A253889(n)) + floor((n modulo 3)/2).

The programs for A254045, the canonical program `A254045.P11950616173053752032` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254045 has offset 1).

The definition of A254045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253894, A254044, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254045.P11950616173053752032

`A253894(n+1)-A254044(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A254045

/-- `A253894(n+1)-A254044(n+1)` -/
def P11950616173053752032.Spec : Prop :=
  ∀ n, P11950616173053752032.a n = A254045 (n + 1)

theorem P11950616173053752032.correct : P11950616173053752032.Spec := by
  intro n
  simp only [A254045, Nat.add_sub_cancel]

end A254045

/-! ## A254045.P678141676242445781

`A080791(A064216(n+1))`
-/

namespace A254045.P678141676242445781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A064216 (n + 1)).toNat

end

end A254045.P678141676242445781

namespace A254045

/-- `A080791(A064216(n+1))` -/
def P678141676242445781.Spec : Prop :=
  ∀ n, P678141676242445781.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P3339104095140147495

`A253893(n+1)+1-A254044(n+1)`
-/

namespace A254045.P3339104095140147495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253893 (n + 1) + (1 - A254044 (n + 1))

end

end A254045.P3339104095140147495

namespace A254045

/-- `A253893(n+1)+1-A254044(n+1)` -/
def P3339104095140147495.Spec : Prop :=
  ∀ n, P3339104095140147495.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P15241477717481809910

`A000120(A292246(n+1))`
-/

namespace A254045.P15241477717481809910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292246 (n + 1)).toNat

end

end A254045.P15241477717481809910

namespace A254045

/-- `A000120(A292246(n+1))` -/
def P15241477717481809910.Spec : Prop :=
  ∀ n, P15241477717481809910.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P3221899762321797975

`A023416(A243502(n+1)/2)`
-/

namespace A254045.P3221899762321797975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A254045.P3221899762321797975

namespace A254045

/-- `A023416(A243502(n+1)/2)` -/
def P3221899762321797975.Spec : Prop :=
  ∀ n, P3221899762321797975.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P3974233499636163863

`A023416(A292245(n+1)+A292244(n+1))`
-/

namespace A254045.P3974233499636163863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A292245 (n + 1) + A292244 (n + 1)).toNat

end

end A254045.P3974233499636163863

namespace A254045

/-- `A023416(A292245(n+1)+A292244(n+1))` -/
def P3974233499636163863.Spec : Prop :=
  ∀ n, P3974233499636163863.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P2237751367327425646

`A253894(n+1)-A000120(A064216(n+1))`
-/

namespace A254045.P2237751367327425646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (n + 1) - A000120 (A064216 (n + 1)).toNat

end

end A254045.P2237751367327425646

namespace A254045

/-- `A253894(n+1)-A000120(A064216(n+1))` -/
def P2237751367327425646.Spec : Prop :=
  ∀ n, P2237751367327425646.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P8655973678563647020

`A070939(A064216(n+1))-A254044(n+1)`
-/

namespace A254045.P8655973678563647020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A064216 (n + 1)).toNat - A254044 (n + 1)

end

end A254045.P8655973678563647020

namespace A254045

/-- `A070939(A064216(n+1))-A254044(n+1)` -/
def P8655973678563647020.Spec : Prop :=
  ∀ n, P8655973678563647020.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P12243726041274287882

`A080791(A064989(2*n+1))`
-/

namespace A254045.P12243726041274287882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A064989 (2 * n + 1)).toNat

end

end A254045.P12243726041274287882

namespace A254045

/-- `A080791(A064989(2*n+1))` -/
def P12243726041274287882.Spec : Prop :=
  ∀ n, P12243726041274287882.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P339383146566100778

`A023416(A252463(2*n+1))`
-/

namespace A254045.P339383146566100778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A252463 (2 * n + 1)).toNat

end

end A254045.P339383146566100778

namespace A254045

/-- `A023416(A252463(2*n+1))` -/
def P339383146566100778.Spec : Prop :=
  ∀ n, P339383146566100778.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P6866657629233552500

`A080791(A252463(n+1+n))`
-/

namespace A254045.P6866657629233552500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A252463 (n + 1 + n)).toNat

end

end A254045.P6866657629233552500

namespace A254045

/-- `A080791(A252463(n+1+n))` -/
def P6866657629233552500.Spec : Prop :=
  ∀ n, P6866657629233552500.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P4427722105489563918

`A274009(A292246(2*n+n+2))`
-/

namespace A254045.P4427722105489563918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A292246 (2 * n + (n + 2))).toNat

end

end A254045.P4427722105489563918

namespace A254045

/-- `A274009(A292246(2*n+n+2))` -/
def P4427722105489563918.Spec : Prop :=
  ∀ n, P4427722105489563918.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P6882194074779016596

`A023416(A243502(n+1)+1)`
-/

namespace A254045.P6882194074779016596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A243502 (n + 1) + 1).toNat

end

end A254045.P6882194074779016596

namespace A254045

/-- `A023416(A243502(n+1)+1)` -/
def P6882194074779016596.Spec : Prop :=
  ∀ n, P6882194074779016596.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P7206707057528224017

`A080791(A249818(A250470(4*n+2)))`
-/

namespace A254045.P7206707057528224017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A249818 (A250470 (4 * n + 2)).toNat).toNat

end

end A254045.P7206707057528224017

namespace A254045

/-- `A080791(A249818(A250470(4*n+2)))` -/
def P7206707057528224017.Spec : Prop :=
  ∀ n, P7206707057528224017.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P7858770402739783514

`A253556(A252753(A064989(n+1+n)))`
-/

namespace A254045.P7858770402739783514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253556 (A252753 (A064989 (n + 1 + n)).toNat).toNat

end

end A254045.P7858770402739783514

namespace A254045

/-- `A253556(A252753(A064989(n+1+n)))` -/
def P7858770402739783514.Spec : Prop :=
  ∀ n, P7858770402739783514.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P16437744731751902810

`A253893(A253888(n+1))-A254044(n+1)`
-/

namespace A254045.P16437744731751902810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253893 (A253888 (n + 1)).toNat - A254044 (n + 1)

end

end A254045.P16437744731751902810

namespace A254045

/-- `A253893(A253888(n+1))-A254044(n+1)` -/
def P16437744731751902810.Spec : Prop :=
  ∀ n, P16437744731751902810.a n = A254045 (n + 1)

end A254045

/-! ## A254045.P3223124291841502749

`A081603(A292243(n+1))`
-/

namespace A254045.P3223124291841502749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A292243 (n + 1)).toNat

end

end A254045.P3223124291841502749

namespace A254045

/-- `A081603(A292243(n+1))` -/
def P3223124291841502749.Spec : Prop :=
  ∀ n, P3223124291841502749.a n = A254045 (n + 1)

end A254045

/-!
# A254046: Column index of n in A191450: a(3n) = 1, a(3n+1) = 1, a(3n+2) = 1 + a(n+1).

The programs for A254046, the canonical program `A254046.P17306611648514838872` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254046 has offset 1).

The definition of A254046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254046.P12679364520376668074

`A253786(n+1)+1`
-/

namespace A254046.P12679364520376668074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (n + 1) + 1

end

end A254046.P12679364520376668074

namespace A254046

/-- `A253786(n+1)+1` -/
def P12679364520376668074.Spec : Prop :=
  ∀ n, P12679364520376668074.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P17306611648514838872

`A051064(2*n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A254046

/-- `A051064(2*n+1)` -/
def P17306611648514838872.Spec : Prop :=
  ∀ n, P17306611648514838872.a n = A254046 (n + 1)

theorem P17306611648514838872.correct : P17306611648514838872.Spec := by
  intro n
  simp only [A254046, Nat.add_sub_cancel]

end A254046

/-! ## A254046.P3366378047246412331

`val(6*n+3, 3)`
-/

namespace A254046.P3366378047246412331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (6 * n + 3) 3

end

end A254046.P3366378047246412331

namespace A254046

/-- `val(6*n+3, 3)` -/
def P3366378047246412331.Spec : Prop :=
  ∀ n, (P3366378047246412331.a n : ℤ) = A254046 (n + 1)

end A254046

/-! ## A254046.P8715150307206810620

`val(Δ[n²], 3)+1`
-/

namespace A254046.P8715150307206810620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 + 1

end

end A254046.P8715150307206810620

namespace A254046

/-- `val(Δ[n²], 3)+1` -/
def P8715150307206810620.Spec : Prop :=
  ∀ n, (P8715150307206810620.a n : ℤ) = A254046 (n + 1)

end A254046

/-! ## A254046.P12543190612512744518

`Δ[a(round(n/3))+n]` with `a(0)=0`
-/

namespace A254046.P12543190612512744518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A254046.P12543190612512744518

namespace A254046

/-- `Δ[a(round(n/3))+n]` -/
def P12543190612512744518.Spec : Prop :=
  ∀ n, P12543190612512744518.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P15957337658029891424

`log2(A318666(2*n+1))+1`
-/

namespace A254046.P15957337658029891424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A318666 (2 * n + 1) : ℝ) + 1

end

end A254046.P15957337658029891424

namespace A254046

/-- `log2(A318666(2*n+1))+1` -/
def P15957337658029891424.Spec : Prop :=
  ∀ n, P15957337658029891424.a n = (A254046 (n + 1) : ℝ)

end A254046

/-! ## A254046.P6351677496205612367

`A000027(val(n+1+n, 3)+1)`
-/

namespace A254046.P6351677496205612367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.valuation (n + 1 + n) 3 + 1)

end

end A254046.P6351677496205612367

namespace A254046

/-- `A000027(val(n+1+n, 3)+1)` -/
def P6351677496205612367.Spec : Prop :=
  ∀ n, P6351677496205612367.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P4386189288607075550

`A110303(val(n+1+n, 3)+1)`
-/

namespace A254046.P4386189288607075550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (SequenceMachineLib.valuation (n + 1 + n) 3 + 1)

end

end A254046.P4386189288607075550

namespace A254046

/-- `A110303(val(n+1+n, 3)+1)` -/
def P4386189288607075550.Spec : Prop :=
  ∀ n, P4386189288607075550.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P2496839655418060488

`A295886(val(n+1+n, 3)+1)`
-/

namespace A254046.P2496839655418060488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295886 (SequenceMachineLib.valuation (n + 1 + n) 3 + 1)

end

end A254046.P2496839655418060488

namespace A254046

/-- `A295886(val(n+1+n, 3)+1)` -/
def P2496839655418060488.Spec : Prop :=
  ∀ n, P2496839655418060488.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P12430945205741935002

`A321801(val(n+1+n, 3)+1)`
-/

namespace A254046.P12430945205741935002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 (SequenceMachineLib.valuation (n + 1 + n) 3 + 1)

end

end A254046.P12430945205741935002

namespace A254046

/-- `A321801(val(n+1+n, 3)+1)` -/
def P12430945205741935002.Spec : Prop :=
  ∀ n, P12430945205741935002.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P11421838660625378486

`A000005(2^val(n+1+n, 3))`
-/

namespace A254046.P11421838660625378486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ SequenceMachineLib.valuation (n + 1 + n) 3)

end

end A254046.P11421838660625378486

namespace A254046

/-- `A000005(2^val(n+1+n, 3))` -/
def P11421838660625378486.Spec : Prop :=
  ∀ n, P11421838660625378486.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P17371483873875515629

`A000005(gcd(2*n+1, (1-n)^10))`
-/

namespace A254046.P17371483873875515629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (2 * n + 1 : ℤ) ((1 - (n : ℤ)) ^ 10))

end

end A254046.P17371483873875515629

namespace A254046

/-- `A000005(gcd(2*n+1, (1-n)^10))` -/
def P17371483873875515629.Spec : Prop :=
  ∀ n, P17371483873875515629.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P6615475452432257463

`A001511(A356248(n))`
-/

namespace A254046.P6615475452432257463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A356248 n).toNat

end

end A254046.P6615475452432257463

namespace A254046

/-- `A001511(A356248(n))` -/
def P6615475452432257463.Spec : Prop :=
  ∀ n, P6615475452432257463.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P17777257637422952775

`A215879(A060373(n+1))+1`
-/

namespace A254046.P17777257637422952775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215879 (A060373 (n + 1)).toNat + 1

end

end A254046.P17777257637422952775

namespace A254046

/-- `A215879(A060373(n+1))+1` -/
def P17777257637422952775.Spec : Prop :=
  ∀ n, P17777257637422952775.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P16232412906834278894

`A000005(A318666(2*n+1))`
-/

namespace A254046.P16232412906834278894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A318666 (2 * n + 1)).toNat

end

end A254046.P16232412906834278894

namespace A254046

/-- `A000005(A318666(2*n+1))` -/
def P16232412906834278894.Spec : Prop :=
  ∀ n, P16232412906834278894.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P10788203966024896738

`A001511(A318509(2*n+1))`
-/

namespace A254046.P10788203966024896738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A318509 (2 * n + 1)).toNat

end

end A254046.P10788203966024896738

namespace A254046

/-- `A001511(A318509(2*n+1))` -/
def P10788203966024896738.Spec : Prop :=
  ∀ n, P10788203966024896738.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P12344555703614120094

`A001222(2*A318666(2*n+1))`
-/

namespace A254046.P12344555703614120094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A318666 (2 * n + 1)).toNat

end

end A254046.P12344555703614120094

namespace A254046

/-- `A001222(2*A318666(2*n+1))` -/
def P12344555703614120094.Spec : Prop :=
  ∀ n, P12344555703614120094.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P12366050031507839847

`∑{d}[A318666(2*n+1), A318666(#)]`
-/

namespace A254046.P12366050031507839847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318666 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A318666 d

end

end A254046.P12366050031507839847

namespace A254046

/-- `∑{d}[A318666(2*n+1), A318666(#)]` -/
def P12366050031507839847.Spec : Prop :=
  ∀ n, P12366050031507839847.a n = A254046 (n + 1)

end A254046

/-! ## A254046.P5632138282016605265

`A000005(2*n+1)/A035218(2*n+1)`
-/

namespace A254046.P5632138282016605265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * n + 1) : ℚ) / (A035218 (2 * n + 1) : ℚ)

end

end A254046.P5632138282016605265

namespace A254046

/-- `A000005(2*n+1)/A035218(2*n+1)` -/
def P5632138282016605265.Spec : Prop :=
  ∀ n, P5632138282016605265.a n = (A254046 (n + 1) : ℚ)

end A254046

/-! ## A254046.P12452348993833218438

`Δ[A127427(n)]`
-/

namespace A254046.P12452348993833218438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254046.P12452348993833218438

namespace A254046

/-- `Δ[A127427(n)]` -/
def P12452348993833218438.Spec : Prop :=
  ∀ n, P12452348993833218438.a n = A254046 (n + 1)

end A254046

/-!
# A254047: Inverse permutation to A191450.

The programs for A254047, there is no canonical definition to state claims against.
-/

/-! ## A254047.P3302932334578053542

`A253887(n+1)+A254052(n+1)-A254046(n+1)`
-/

namespace A254047.P3302932334578053542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (n + 1) + (A254052 (n + 1) - A254046 (n + 1))

end

end A254047.P3302932334578053542

/-! ## A254047.P15364320715915389676

`A254054(A064216(n+1))+A253887(n+1)-A254046(n+1)`
-/

namespace A254047.P15364320715915389676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254054 (A064216 (n + 1)).toNat + (A253887 (n + 1) - A254046 (n + 1))

end

end A254047.P15364320715915389676

/-! ## A254047.P1433014940813720235

`A254052(3*n+2)-2*A254046(n+1)`
-/

namespace A254047.P1433014940813720235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (3 * n + 2) - 2 * A254046 (n + 1)

end

end A254047.P1433014940813720235

/-! ## A254047.P2083929497537856421

`A038722(A254052(n+1))`
-/

namespace A254047.P2083929497537856421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A254052 (n + 1)).toNat

end

end A254047.P2083929497537856421

/-! ## A254047.P6285839222436084380

`A061579(A254052(n+1)-1)+1`
-/

namespace A254047.P6285839222436084380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A254052 (n + 1) - 1).toNat + 1

end

end A254047.P6285839222436084380

/-!
# A254048: a(n) = A126760(A007494(n)).

The programs for A254048, there is no canonical definition to state claims against.
-/

/-! ## A254048.P14416453989303776748

`A126760(A007494(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254048.P14416453989303776748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A007494 n).toNat

end

end A254048.P14416453989303776748

/-! ## A254048.P14913702237633403160

`A126760(comp[a(n-1)+3])` with `a(0)=1`
-/

namespace A254048.P14913702237633403160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A254048.P14913702237633403160

/-! ## A254048.P7658374529891857778

`A126760(2*n-floor(n/2))`
-/

namespace A254048.P7658374529891857778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 ((2 * n : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A254048.P7658374529891857778

/-! ## A254048.P5720987825510804044

`A126759(Δ[n*floor(n/2)])-1`
-/

namespace A254048.P5720987825510804044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (f1 (n + 1) - f1 n).toNat - 1

end

end A254048.P5720987825510804044

/-! ## A254048.P5621543485515847774

`∑{d}[A006370(n), A347233(#)]`
-/

namespace A254048.P5621543485515847774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347233 d

end

end A254048.P5621543485515847774

/-!
# A254049: Odd bisection of A048673: a(n) = A048673(2*n-1).

The programs for A254049, the canonical program `A254049.P1269229269105982742` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254049 has offset 1).

The definition of A254049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254049.P15398021144571696436

`(1+A249735(n+1))/2`
-/

namespace A254049.P15398021144571696436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A249735 (n + 1) : ℚ) / 2

end

end A254049.P15398021144571696436

namespace A254049

/-- `(1+A249735(n+1))/2` -/
def P15398021144571696436.Spec : Prop :=
  ∀ n, P15398021144571696436.a n = (A254049 (n + 1) : ℚ)

end A254049

/-! ## A254049.P1269229269105982742

`A048673(2*n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A254049

/-- `A048673(2*n+1)` -/
def P1269229269105982742.Spec : Prop :=
  ∀ n, P1269229269105982742.a n = A254049 (n + 1)

theorem P1269229269105982742.correct : P1269229269105982742.Spec := by
  intro n
  simp only [A254049, Nat.add_sub_cancel]

end A254049

/-! ## A254049.P11594689822663196235

`A048673(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254049.P11594689822663196235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (2 * (n + 1) - 1)

end

end A254049.P11594689822663196235

namespace A254049

/-- `A048673(2*(n+1)-1)` -/
def P11594689822663196235.Spec : Prop :=
  ∀ n, P11594689822663196235.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P2219481548661440047

`(1+A003961(2*(n+1)-1))/2`
-/

namespace A254049.P2219481548661440047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A003961 (2 * (n + 1) - 1) : ℚ) / 2

end

end A254049.P2219481548661440047

namespace A254049

/-- `(1+A003961(2*(n+1)-1))/2` -/
def P2219481548661440047.Spec : Prop :=
  ∀ n, P2219481548661440047.a n = (A254049 (n + 1) : ℚ)

end A254049

/-! ## A254049.P11805366830430239069

`A032766(A249746(n+1))`
-/

namespace A254049.P11805366830430239069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A249746 (n + 1)).toNat

end

end A254049.P11805366830430239069

namespace A254049

/-- `A032766(A249746(n+1))` -/
def P11805366830430239069.Spec : Prop :=
  ∀ n, P11805366830430239069.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P4606208117683245186

`ceil(A249735(n+1)/2)`
-/

namespace A254049.P4606208117683245186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A249735 (n + 1) : ℚ) / 2⌉

end

end A254049.P4606208117683245186

namespace A254049

/-- `ceil(A249735(n+1)/2)` -/
def P4606208117683245186.Spec : Prop :=
  ∀ n, P4606208117683245186.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P2461421453133088104

`∑{d}[2*n+1, A378521(#)]`
-/

namespace A254049.P2461421453133088104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378521 d

end

end A254049.P2461421453133088104

namespace A254049

/-- `∑{d}[2*n+1, A378521(#)]` -/
def P2461421453133088104.Spec : Prop :=
  ∀ n, P2461421453133088104.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P8234038747273208287

`A349573(2*n+1)+2*n+1`
-/

namespace A254049.P8234038747273208287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349573 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A254049.P8234038747273208287

namespace A254049

/-- `A349573(2*n+1)+2*n+1` -/
def P8234038747273208287.Spec : Prop :=
  ∀ n, P8234038747273208287.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P11564074049824052131

`A000203(2*n+1)-A378751(2*n+1)`
-/

namespace A254049.P11564074049824052131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A378751 (2 * n + 1)

end

end A254049.P11564074049824052131

namespace A254049

/-- `A000203(2*n+1)-A378751(2*n+1)` -/
def P11564074049824052131.Spec : Prop :=
  ∀ n, P11564074049824052131.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P4749106983382046232

`A243501(Δ[n²])/2`
-/

namespace A254049.P4749106983382046232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A254049.P4749106983382046232

namespace A254049

/-- `A243501(Δ[n²])/2` -/
def P4749106983382046232.Spec : Prop :=
  ∀ n, P4749106983382046232.a n = (A254049 (n + 1) : ℚ)

end A254049

/-! ## A254049.P15873563479612804846

`A253885(2*n)/2+1`
-/

namespace A254049.P15873563479612804846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 (2 * n) : ℚ) / 2 + 1

end

end A254049.P15873563479612804846

namespace A254049

/-- `A253885(2*n)/2+1` -/
def P15873563479612804846.Spec : Prop :=
  ∀ n, P15873563479612804846.a n = (A254049 (n + 1) : ℚ)

end A254049

/-! ## A254049.P6817557875254911384

`ceil(A283980(2*n+1)/2)`
-/

namespace A254049.P6817557875254911384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283980 (2 * n + 1) : ℚ) / 2⌉

end

end A254049.P6817557875254911384

namespace A254049

/-- `ceil(A283980(2*n+1)/2)` -/
def P6817557875254911384.Spec : Prop :=
  ∀ n, P6817557875254911384.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P12209005916992649825

`(A283980(2*n+1)+1)/A020639(2*(n+1))`
-/

namespace A254049.P12209005916992649825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283980 (2 * n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A254049.P12209005916992649825

namespace A254049

/-- `(A283980(2*n+1)+1)/A020639(2*(n+1))` -/
def P12209005916992649825.Spec : Prop :=
  ∀ n, P12209005916992649825.a n = (A254049 (n + 1) : ℚ)

end A254049

/-! ## A254049.P10479529192030540504

`A108228(Δ[n²])+1`
-/

namespace A254049.P10479529192030540504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108228 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A254049.P10479529192030540504

namespace A254049

/-- `A108228(Δ[n²])+1` -/
def P10479529192030540504.Spec : Prop :=
  ∀ n, P10479529192030540504.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P5961777542096816131

`round(A003961(Δ[n²])/2)`
-/

namespace A254049.P5961777542096816131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)

end

end A254049.P5961777542096816131

namespace A254049

/-- `round(A003961(Δ[n²])/2)` -/
def P5961777542096816131.Spec : Prop :=
  ∀ n, P5961777542096816131.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P17194691486858661730

`ceil(A003961(2*n+1)/2)`
-/

namespace A254049.P17194691486858661730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003961 (2 * n + 1) : ℚ) / 2⌉

end

end A254049.P17194691486858661730

namespace A254049

/-- `ceil(A003961(2*n+1)/2)` -/
def P17194691486858661730.Spec : Prop :=
  ∀ n, P17194691486858661730.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P16403923521948405609

`ceil(A045965(2*n+1)/2)`
-/

namespace A254049.P16403923521948405609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045965 (2 * n + 1) : ℚ) / 2⌉

end

end A254049.P16403923521948405609

namespace A254049

/-- `ceil(A045965(2*n+1)/2)` -/
def P16403923521948405609.Spec : Prop :=
  ∀ n, P16403923521948405609.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P8350378063365205954

`(A003961(n+1+n)+1)/2`
-/

namespace A254049.P8350378063365205954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1 + n) + 1 : ℚ) / 2

end

end A254049.P8350378063365205954

namespace A254049

/-- `(A003961(n+1+n)+1)/2` -/
def P8350378063365205954.Spec : Prop :=
  ∀ n, P8350378063365205954.a n = (A254049 (n + 1) : ℚ)

end A254049

/-! ## A254049.P1531485549881731606

`A245447(A064216(2*n+1))`
-/

namespace A254049.P1531485549881731606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245447 (A064216 (2 * n + 1)).toNat

end

end A254049.P1531485549881731606

namespace A254049

/-- `A245447(A064216(2*n+1))` -/
def P1531485549881731606.Spec : Prop :=
  ∀ n, P1531485549881731606.a n = A254049 (n + 1)

end A254049

/-! ## A254049.P6576459644405823199

`A249810(4*n+2)`
-/

namespace A254049.P6576459644405823199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249810 (4 * n + 2)

end

end A254049.P6576459644405823199

namespace A254049

/-- `A249810(4*n+2)` -/
def P6576459644405823199.Spec : Prop :=
  ∀ n, P6576459644405823199.a n = A254049 (n + 1)

end A254049

/-!
# A254050: Permutation of odd numbers: a(n) = (2*(A249745(n))) - 1 = A064989(A007310(n)).

The programs for A254050, the canonical program `A254050.P6331139238436620392` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254050 has offset 1).

The definition of A254050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A249745, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254050.P6331139238436620392

`2*A249745(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A254050

/-- `2*A249745(n+1)-1` -/
def P6331139238436620392.Spec : Prop :=
  ∀ n, P6331139238436620392.a n = A254050 (n + 1)

theorem P6331139238436620392.correct : P6331139238436620392.Spec := by
  intro n
  simp only [A254050, Nat.add_sub_cancel]

end A254050

/-! ## A254050.P14008551990897341973

`A064989(A007310(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254050.P14008551990897341973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A007310 (n + 1)).toNat

end

end A254050.P14008551990897341973

namespace A254050

/-- `A064989(A007310(n+1))` -/
def P14008551990897341973.Spec : Prop :=
  ∀ n, P14008551990897341973.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P1114954771567566940

`A353413(A032766(2*n+1-n))`
-/

namespace A254050.P1114954771567566940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353413 (A032766 (2 * n + 1 - n)).toNat

end

end A254050.P1114954771567566940

namespace A254050

/-- `A353413(A032766(2*n+1-n))` -/
def P1114954771567566940.Spec : Prop :=
  ∀ n, P1114954771567566940.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P12711729867624189400

`A004273(A249745(n+1))`
-/

namespace A254050.P12711729867624189400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A249745 (n + 1)).toNat

end

end A254050.P12711729867624189400

namespace A254050

/-- `A004273(A249745(n+1))` -/
def P12711729867624189400.Spec : Prop :=
  ∀ n, P12711729867624189400.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P5528226961913356187

`A064216(∑[n%2+1])`
-/

namespace A254050.P5528226961913356187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254050.P5528226961913356187

namespace A254050

/-- `A064216(∑[n%2+1])` -/
def P5528226961913356187.Spec : Prop :=
  ∀ n, P5528226961913356187.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P6788243766653500860

`A064216(∑[gcd(2, n+1)])`
-/

namespace A254050.P6788243766653500860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254050.P6788243766653500860

namespace A254050

/-- `A064216(∑[gcd(2, n+1)])` -/
def P6788243766653500860.Spec : Prop :=
  ∀ n, P6788243766653500860.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P15769823158989763351

`A064216(ceil(3*n/2)+1)`
-/

namespace A254050.P15769823158989763351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat

end

end A254050.P15769823158989763351

namespace A254050

/-- `A064216(ceil(3*n/2)+1)` -/
def P15769823158989763351.Spec : Prop :=
  ∀ n, P15769823158989763351.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P13399585066034603951

`A353412(Δ[A032528(n)])`
-/

namespace A254050.P13399585066034603951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (f1 (n + 1) - f1 n).toNat

end

end A254050.P13399585066034603951

namespace A254050

/-- `A353412(Δ[A032528(n)])` -/
def P13399585066034603951.Spec : Prop :=
  ∀ n, P13399585066034603951.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P9461858267351458030

`A353412(A038179(n+2))`
-/

namespace A254050.P9461858267351458030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (A038179 (n + 2)).toNat

end

end A254050.P9461858267351458030

namespace A254050

/-- `A353412(A038179(n+2))` -/
def P9461858267351458030.Spec : Prop :=
  ∀ n, P9461858267351458030.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P14980663691140792005

`A353412(or(1, A016777(n)))`
-/

namespace A254050.P14980663691140792005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (Int.lor 1 (A016777 n)).toNat

end

end A254050.P14980663691140792005

namespace A254050

/-- `A353412(or(1, A016777(n)))` -/
def P14980663691140792005.Spec : Prop :=
  ∀ n, P14980663691140792005.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P14840360057774214762

`A353412(record[A000265((n+1)/3^val(n+1, 3))])`
-/

namespace A254050.P14840360057774214762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A254050.P14840360057774214762

namespace A254050

/-- `A353412(record[A000265((n+1)/3^val(n+1, 3))])` -/
def P14840360057774214762.Spec : Prop :=
  ∀ n, P14840360057774214762.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P18027167948502061604

`A353413(∑[A176895(2*n)])`
-/

namespace A254050.P18027167948502061604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254050.P18027167948502061604

namespace A254050

/-- `A353413(∑[A176895(2*n)])` -/
def P18027167948502061604.Spec : Prop :=
  ∀ n, P18027167948502061604.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P17001022412931835716

`A003961(A249823(n+1))`
-/

namespace A254050.P17001022412931835716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A249823 (n + 1)).toNat

end

end A254050.P17001022412931835716

namespace A254050

/-- `A003961(A249823(n+1))` -/
def P17001022412931835716.Spec : Prop :=
  ∀ n, P17001022412931835716.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P8880761534697834735

`filter[A064216(n+1), A000035(#)]`
-/

namespace A254050.P8880761534697834735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A254050.P8880761534697834735

namespace A254050

/-- `filter[A064216(n+1), A000035(#)]` -/
def P8880761534697834735.Spec : Prop :=
  ∀ n, P8880761534697834735.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P2895516615886508150

`filter[A290099(2*n+1), A000035(#)]`
-/

namespace A254050.P2895516615886508150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A254050.P2895516615886508150

namespace A254050

/-- `filter[A290099(2*n+1), A000035(#)]` -/
def P2895516615886508150.Spec : Prop :=
  ∀ n, P2895516615886508150.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P14783219313212783409

`filter[A349122(2*n+1), A000035(#)]`
-/

namespace A254050.P14783219313212783409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A254050.P14783219313212783409

namespace A254050

/-- `filter[A349122(2*n+1), A000035(#)]` -/
def P14783219313212783409.Spec : Prop :=
  ∀ n, P14783219313212783409.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P1447457925826666812

`A064989(or(1, 3*n+1))`
-/

namespace A254050.P1447457925826666812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Nat.lor 1 (3 * n + 1))

end

end A254050.P1447457925826666812

namespace A254050

/-- `A064989(or(1, 3*n+1))` -/
def P1447457925826666812.Spec : Prop :=
  ∀ n, P1447457925826666812.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P6257451245059197827

`A283463(A047238(n+2))`
-/

namespace A254050.P6257451245059197827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A047238 (n + 2)).toNat

end

end A254050.P6257451245059197827

namespace A254050

/-- `A283463(A047238(n+2))` -/
def P6257451245059197827.Spec : Prop :=
  ∀ n, P6257451245059197827.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P17738627493358762458

`A064989(2*A007494(n)+1)`
-/

namespace A254050.P17738627493358762458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A007494 n + 1).toNat

end

end A254050.P17738627493358762458

namespace A254050

/-- `A064989(2*A007494(n)+1)` -/
def P17738627493358762458.Spec : Prop :=
  ∀ n, P17738627493358762458.a n = A254050 (n + 1)

end A254050

/-! ## A254050.P8613405192285093744

`A064989(A091999(n+1)/2)`
-/

namespace A254050.P8613405192285093744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A091999 (n + 1) : ℚ) / 2)).toNat

end

end A254050.P8613405192285093744

namespace A254050

/-- `A064989(A091999(n+1)/2)` -/
def P8613405192285093744.Spec : Prop :=
  ∀ n, P8613405192285093744.a n = A254050 (n + 1)

end A254050

/-!
# A254051: Square array A by downward antidiagonals: A(n,k) = (3 + 3^n*(2*floor(3*k/2) - 1))/6, n,k >= 1; read as A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A254051, the canonical program `A254051.P698183174355435254` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254051 has offset 1).

The definition of A254051 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A254053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254051.P3807917899757167174

`(1+A135765(n+1))/2`
-/

namespace A254051.P3807917899757167174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A135765 (n + 1) : ℚ) / 2

end

end A254051.P3807917899757167174

namespace A254051

/-- `(1+A135765(n+1))/2` -/
def P3807917899757167174.Spec : Prop :=
  ∀ n, P3807917899757167174.a n = (A254051 (n + 1) : ℚ)

end A254051

/-! ## A254051.P17822434894124944924

`A191450(A038722(n+1))`
-/

namespace A254051.P17822434894124944924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (A038722 (n + 1)).toNat

end

end A254051.P17822434894124944924

namespace A254051

/-- `A191450(A038722(n+1))` -/
def P17822434894124944924.Spec : Prop :=
  ∀ n, P17822434894124944924.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P698183174355435254

`A048673(A254053(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A254051

/-- `A048673(A254053(n+1))` -/
def P698183174355435254.Spec : Prop :=
  ∀ n, P698183174355435254.a n = A254051 (n + 1)

theorem P698183174355435254.correct : P698183174355435254.Spec := by
  intro n
  simp only [A254051, Nat.add_sub_cancel]

end A254051

/-! ## A254051.P15034753209408897865

`ceil(A135765(n+1)/2)`
-/

namespace A254051.P15034753209408897865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135765 (n + 1) : ℚ) / 2⌉

end

end A254051.P15034753209408897865

namespace A254051

/-- `ceil(A135765(n+1)/2)` -/
def P15034753209408897865.Spec : Prop :=
  ∀ n, P15034753209408897865.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P5307347972150830095

`A191450(A061579(n)+1)`
-/

namespace A254051.P5307347972150830095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (A061579 n + 1).toNat

end

end A254051.P5307347972150830095

namespace A254051

/-- `A191450(A061579(n)+1)` -/
def P5307347972150830095.Spec : Prop :=
  ∀ n, P5307347972150830095.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P6810054968834969885

`A191450(A093995(n+1)-n)`
-/

namespace A254051.P6810054968834969885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A254051.P6810054968834969885

namespace A254051

/-- `A191450(A093995(n+1)-n)` -/
def P6810054968834969885.Spec : Prop :=
  ∀ n, P6810054968834969885.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P10514026786813486118

`A191450(2-A127948(n)+n)`
-/

namespace A254051.P10514026786813486118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (2 - A127948 n + (n : ℤ)).toNat

end

end A254051.P10514026786813486118

namespace A254051

/-- `A191450(2-A127948(n)+n)` -/
def P10514026786813486118.Spec : Prop :=
  ∀ n, P10514026786813486118.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P3580444834566047085

`A191450(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A254051.P3580444834566047085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191450 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A254051.P3580444834566047085

namespace A254051

/-- `A191450(A004736(n+1)+n-A002260(n+1)+1)` -/
def P3580444834566047085.Spec : Prop :=
  ∀ n, P3580444834566047085.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P1196816972930637574

`A014682(A135765(n+1)+1)`
-/

namespace A254051.P1196816972930637574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A135765 (n + 1) + 1).toNat

end

end A254051.P1196816972930637574

namespace A254051

/-- `A014682(A135765(n+1)+1)` -/
def P1196816972930637574.Spec : Prop :=
  ∀ n, P1196816972930637574.a n = A254051 (n + 1)

end A254051

/-! ## A254051.P9185922176809972989

`A238206(n)+1`
-/

namespace A254051.P9185922176809972989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238206 n + 1

end

end A254051.P9185922176809972989

namespace A254051

/-- `A238206(n)+1` -/
def P9185922176809972989.Spec : Prop :=
  ∀ n, P9185922176809972989.a n = A254051 (n + 1)

end A254051

/-!
# A254052: Inverse permutation to A254051.

The programs for A254052, there is no canonical definition to state claims against.
-/

/-! ## A254052.P7653646137470708125

`A254054(A064216(n+1))`
-/

namespace A254052.P7653646137470708125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254054 (A064216 (n + 1)).toNat

end

end A254052.P7653646137470708125

/-! ## A254052.P5856418967252210682

`A254046(n+1)+A254047(n+1)-A253887(n+1)`
-/

namespace A254052.P5856418967252210682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (n + 1) + (A254047 (n + 1) - A253887 (n + 1))

end

end A254052.P5856418967252210682

/-! ## A254052.P7127101940112177723

`A254054(A064989(Δ[n²]))`
-/

namespace A254052.P7127101940112177723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254054 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A254052.P7127101940112177723

/-! ## A254052.P12826351027462726393

`A254054(A252463(2*n+1))`
-/

namespace A254052.P12826351027462726393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254054 (A252463 (2 * n + 1)).toNat

end

end A254052.P12826351027462726393

/-! ## A254052.P8710455549450331067

`A038722(A254047(n+1))`
-/

namespace A254052.P8710455549450331067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A254047 (n + 1)).toNat

end

end A254052.P8710455549450331067

/-!
# A254053: Square array: A(row,col) = 2^(row-1) * ((2*A249745(col))-1) = A064216(A254051(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A254053, the canonical program `A254053.P7934599667776226274` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254053 has offset 1).

The definition of A254053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254053.P4129531354138980271

`A064216(A254051(n+1))`
-/

namespace A254053.P4129531354138980271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A254051 (n + 1)).toNat

end

end A254053.P4129531354138980271

namespace A254053

/-- `A064216(A254051(n+1))` -/
def P4129531354138980271.Spec : Prop :=
  ∀ n, P4129531354138980271.a n = A254053 (n + 1)

end A254053

/-! ## A254053.P16593602945843353908

`A064989(A135765(n+1))`
-/

namespace A254053.P16593602945843353908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A135765 (n + 1)).toNat

end

end A254053.P16593602945843353908

namespace A254053

/-- `A064989(A135765(n+1))` -/
def P16593602945843353908.Spec : Prop :=
  ∀ n, P16593602945843353908.a n = A254053 (n + 1)

end A254053

/-! ## A254053.P7934599667776226274

`A059268(n)*A254050(A004736(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A254053

/-- `A059268(n)*A254050(A004736(n+1))` -/
def P7934599667776226274.Spec : Prop :=
  ∀ n, P7934599667776226274.a n = A254053 (n + 1)

theorem P7934599667776226274.correct : P7934599667776226274.Spec := by
  intro n
  simp only [A254053, Nat.add_sub_cancel]

end A254053

/-! ## A254053.P6648866344221052433

`A064216(A238206(n)+1)`
-/

namespace A254053.P6648866344221052433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A238206 n + 1).toNat

end

end A254053.P6648866344221052433

namespace A254053

/-- `A064216(A238206(n)+1)` -/
def P6648866344221052433.Spec : Prop :=
  ∀ n, P6648866344221052433.a n = A254053 (n + 1)

end A254053

/-! ## A254053.P2720563484089947703

`∑{d}[A135765(n+1), A348045(#)]`
-/

namespace A254053.P2720563484089947703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A348045 d

end

end A254053.P2720563484089947703

namespace A254053

/-- `∑{d}[A135765(n+1), A348045(#)]` -/
def P2720563484089947703.Spec : Prop :=
  ∀ n, P2720563484089947703.a n = A254053 (n + 1)

end A254053

/-! ## A254053.P8862016705761730291

`A064216((A135765(n+1)+1)/2)`
-/

namespace A254053.P8862016705761730291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (SequenceMachineLib.roundAway ((A135765 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A254053.P8862016705761730291

namespace A254053

/-- `A064216((A135765(n+1)+1)/2)` -/
def P8862016705761730291.Spec : Prop :=
  ∀ n, P8862016705761730291.a n = A254053 (n + 1)

end A254053

/-!
# A254054: Permutation of natural numbers: a(n) = A254052(A048673(n)).

The programs for A254054, there is no canonical definition to state claims against.
-/

/-! ## A254054.P17769430125643227618

`A254052(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254054.P17769430125643227618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (A048673 (n + 1)).toNat

end

end A254054.P17769430125643227618

/-! ## A254054.P12943088392142513803

`A254052(A108228(n+1)+1)`
-/

namespace A254054.P12943088392142513803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (A108228 (n + 1) + 1).toNat

end

end A254054.P12943088392142513803

/-! ## A254054.P10889508994161532083

`A254052(A249810(2*(n+1)))`
-/

namespace A254054.P10889508994161532083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (A249810 (2 * (n + 1))).toNat

end

end A254054.P10889508994161532083

/-! ## A254054.P2293630538032378896

`A254052(A243501(n+1)/2)`
-/

namespace A254054.P2293630538032378896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A254054.P2293630538032378896

/-! ## A254054.P4660730403681520539

`A254052(ceil(A003961(n+1)/2))`
-/

namespace A254054.P4660730403681520539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A254054.P4660730403681520539

/-! ## A254054.P6636536895898527490

`A254052((A003961(n+1)+1)/2)`
-/

namespace A254054.P6636536895898527490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254052 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A254054.P6636536895898527490

/-!
# A254055: Square array: A(row,col) = A003602(A254051(row,col)), read by antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), ...

The programs for A254055, the canonical program `A254055.P3508509321847597637` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254055 has offset 1).

The definition of A254055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254055.P3508509321847597637

`ceil(A254101(n+1)/2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A254055

/-- `ceil(A254101(n+1)/2)` -/
def P3508509321847597637.Spec : Prop :=
  ∀ n, P3508509321847597637.a n = A254055 (n + 1)

theorem P3508509321847597637.correct : P3508509321847597637.Spec := by
  intro n
  simp only [A254055, Nat.add_sub_cancel]

end A254055

/-! ## A254055.P18303494565301244980

`(A254101(n+1)+1)/gcd(2, A005843(n))`
-/

namespace A254055.P18303494565301244980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254101 (n + 1) + 1 : ℚ) / (Int.gcd 2 (A005843 n) : ℚ)

end

end A254055.P18303494565301244980

namespace A254055

/-- `(A254101(n+1)+1)/gcd(2, A005843(n))` -/
def P18303494565301244980.Spec : Prop :=
  ∀ n, P18303494565301244980.a n = (A254055 (n + 1) : ℚ)

end A254055

/-! ## A254055.P7283255632999014512

`(A254101(n+1)+1)/A020639(2*(n+1))`
-/

namespace A254055.P7283255632999014512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254101 (n + 1) + 1 : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A254055.P7283255632999014512

namespace A254055

/-- `(A254101(n+1)+1)/A020639(2*(n+1))` -/
def P7283255632999014512.Spec : Prop :=
  ∀ n, P7283255632999014512.a n = (A254055 (n + 1) : ℚ)

end A254055

/-! ## A254055.P18102654335856415463

`(A254101(n+1)+1)/A000005(A057673(n))`
-/

namespace A254055.P18102654335856415463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254101 (n + 1) + 1 : ℚ) / (A000005 (A057673 n).toNat : ℚ)

end

end A254055.P18102654335856415463

namespace A254055

/-- `(A254101(n+1)+1)/A000005(A057673(n))` -/
def P18102654335856415463.Spec : Prop :=
  ∀ n, P18102654335856415463.a n = (A254055 (n + 1) : ℚ)

end A254055

/-! ## A254055.P17245823246856555327

`round(A254101(n+1)/A066086(A000040(n+1)))`
-/

namespace A254055.P17245823246856555327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A254101 (n + 1) : ℚ) / (A066086 (A000040 (n + 1)).toNat : ℚ))

end

end A254055.P17245823246856555327

namespace A254055

/-- `round(A254101(n+1)/A066086(A000040(n+1)))` -/
def P17245823246856555327.Spec : Prop :=
  ∀ n, P17245823246856555327.a n = A254055 (n + 1)

end A254055

/-! ## A254055.P2728536461635327994

`(A254101(n+1)+1)/A000005(A106483(n+1))`
-/

namespace A254055.P2728536461635327994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254101 (n + 1) + 1 : ℚ) / (A000005 (A106483 (n + 1)).toNat : ℚ)

end

end A254055.P2728536461635327994

namespace A254055

/-- `(A254101(n+1)+1)/A000005(A106483(n+1))` -/
def P2728536461635327994.Spec : Prop :=
  ∀ n, P2728536461635327994.a n = (A254055 (n + 1) : ℚ)

end A254055

/-! ## A254055.P6160033339725659913

`(floor(A254101(n+1)/2)+1)%A000045(2*n+3)`
-/

namespace A254055.P6160033339725659913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(A254101 (n + 1) : ℚ) / 2⌋ + 1) (A000045 (2 * n + 3))

end

end A254055.P6160033339725659913

namespace A254055

/-- `(floor(A254101(n+1)/2)+1)%A000045(2*n+3)` -/
def P6160033339725659913.Spec : Prop :=
  ∀ n, P6160033339725659913.a n = A254055 (n + 1)

end A254055

/-! ## A254055.P32621376517879410

`round(A254101(n+1)/A020639(A090988(n+1)))`
-/

namespace A254055.P32621376517879410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A254101 (n + 1) : ℚ) / (A020639 (A090988 (n + 1)).toNat : ℚ))

end

end A254055.P32621376517879410

namespace A254055

/-- `round(A254101(n+1)/A020639(A090988(n+1)))` -/
def P32621376517879410.Spec : Prop :=
  ∀ n, P32621376517879410.a n = A254055 (n + 1)

end A254055

/-! ## A254055.P12913628042582249857

`round(A254101(n+1)/2)*A014963(A000096(n+7))`
-/

namespace A254055.P12913628042582249857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A254101 (n + 1) : ℚ) / 2) * A014963 (A000096 (n + 7)).toNat

end

end A254055.P12913628042582249857

namespace A254055

/-- `round(A254101(n+1)/2)*A014963(A000096(n+7))` -/
def P12913628042582249857.Spec : Prop :=
  ∀ n, P12913628042582249857.a n = A254055 (n + 1)

end A254055

/-! ## A254055.P9975422857027585077

`floor((A254101(n+1)-A141727(n))/2)+1`
-/

namespace A254055.P9975422857027585077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254101 (n + 1) - A141727 n : ℚ) / 2⌋ + 1

end

end A254055.P9975422857027585077

namespace A254055

/-- `floor((A254101(n+1)-A141727(n))/2)+1` -/
def P9975422857027585077.Spec : Prop :=
  ∀ n, P9975422857027585077.a n = A254055 (n + 1)

end A254055

/-! ## A254055.P11693286468386288834

`floor(A254101(n+1)%A016134(n)/2)+1`
-/

namespace A254055.P11693286468386288834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A254101 (n + 1)) (A016134 n) : ℚ) / 2⌋ + 1

end

end A254055.P11693286468386288834

namespace A254055

/-- `floor(A254101(n+1)%A016134(n)/2)+1` -/
def P11693286468386288834.Spec : Prop :=
  ∀ n, P11693286468386288834.a n = A254055 (n + 1)

end A254055

/-!
# A254056: Sum two last digits of the sequence to get next term, starting with 1,2.

The programs for A254056, the canonical program `A254056.P15925411799378388036` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254056 has offset 1).

The definition of A254056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254056.P15925411799378388036

`A185596(a(n-1))%15` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254056

/-- `A185596(a(n-1))%15` -/
def P15925411799378388036.Spec : Prop :=
  ∀ n, P15925411799378388036.a n = A254056 (n + 1)

theorem P15925411799378388036.correct : P15925411799378388036.Spec := by
  intro n
  simp only [A254056, Nat.add_sub_cancel]

end A254056

/-!
# A254058: Smallest a(n) such that C(a(n),n) >= 2^n.

The programs for A254058, there is no canonical definition to state claims against.
-/

/-! ## A254058.P13418170063363075555

`A003057(A210062(∑[2*(n+1)]))`
-/

namespace A254058.P13418170063363075555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A210062 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A254058.P13418170063363075555

/-! ## A254058.P9074169153020517711

`A000196(∑[A278040(n)+6])`
-/

namespace A254058.P9074169153020517711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254058.P9074169153020517711

/-! ## A254058.P834071475883829437

`A137735(∑[A278040(n)+6])`
-/

namespace A254058.P834071475883829437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254058.P834071475883829437

/-! ## A254058.P4347444278488932407

`A000196(∑[A003145(n+1)+5])`
-/

namespace A254058.P4347444278488932407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254058.P4347444278488932407

/-! ## A254058.P6410679061578929754

`A137735(∑[A003145(n+1)+5])`
-/

namespace A254058.P6410679061578929754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003145 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254058.P6410679061578929754

/-! ## A254058.P15763497144364551851

`A000196(A277722(∑[n+1])+4*(n+1))`
-/

namespace A254058.P15763497144364551851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A277722 (∑ j ∈ Finset.range (n + 1), f1 j) + (4 * (n + 1) : ℤ)).toNat

end

end A254058.P15763497144364551851

/-!
# A254059: a(n) is the numerator of the generalized continued fraction with terms sigma(m)/m for m=1 to n.

The programs for A254059, there is no canonical definition to state claims against.
-/

/-! ## A254059.P2268429634573053592

`A333762(p?[record[A263266(n)]])`
-/

namespace A254059.P2268429634573053592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333762 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A254059.P2268429634573053592

/-! ## A254059.P14575324907800965425

`A327527(A098461(n))+A201921(n+1)`
-/

namespace A254059.P14575324907800965425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (A098461 n).toNat + A201921 (n + 1)

end

end A254059.P14575324907800965425

/-!
# A254060: a(n) is the denominator of the generalized continued fraction with terms sigma(m)/m for m=1 to n.

The programs for A254060, there is no canonical definition to state claims against.
-/

/-! ## A254060.P9777231278618128430

`A219674(A378801(n))`
-/

namespace A254060.P9777231278618128430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219674 (A378801 n).toNat

end

end A254060.P9777231278618128430

/-!
# A254063: Positive integers whose square is expressible in exactly one way as x^2 + 5xy + y^2, with 0 < x < y.

The programs for A254063, there is no canonical definition to state claims against.
-/

/-! ## A254063.P7444388018938214400

`eq[3, A035203(A253909(n))]`
-/

namespace A254063.P7444388018938214400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254063.P7444388018938214400

/-! ## A254063.P8336572524297666526

`eq[3, A035203(A257088(n)²)]`
-/

namespace A254063.P8336572524297666526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035203 (A257088 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254063.P8336572524297666526

/-! ## A254063.P337149457983326917

`A009000(lt[A001611(n), A079171(n+1)])`
-/

namespace A254063.P337149457983326917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009000 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254063.P337149457983326917

/-! ## A254063.P14764896828272929386

`A009000(lt[A098151(n), A079171(n+1)])`
-/

namespace A254063.P14764896828272929386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009000 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254063.P14764896828272929386

/-! ## A254063.P16362925919639868670

`A009000(lt[A279786(n), A079171(n+1)])`
-/

namespace A254063.P16362925919639868670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279786 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009000 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254063.P16362925919639868670

/-!
# A254064: Positive integers whose square is expressible in exactly one way as x^2 + 6xy + y^2, with 0 < x < y.

The programs for A254064, the canonical program `A254064.P8256548670162255891` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254064 has offset 1).

The definition of A254064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254064.P8256548670162255891

`eq[1, A331671(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A254064

/-- `eq[1, A331671(n+1)]+1` -/
def P8256548670162255891.Spec : Prop :=
  ∀ n, (P8256548670162255891.a n : ℤ) = A254064 (n + 1)

theorem P8256548670162255891.correct : P8256548670162255891.Spec := by
  intro n
  simp only [A254064, Nat.add_sub_cancel]

end A254064

/-! ## A254064.P4048090478758842371

`eq[2, A082523(n+2)]+2`
-/

namespace A254064.P4048090478758842371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082523 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A254064.P4048090478758842371

namespace A254064

/-- `eq[2, A082523(n+2)]+2` -/
def P4048090478758842371.Spec : Prop :=
  ∀ n, (P4048090478758842371.a n : ℤ) = A254064 (n + 1)

end A254064

/-! ## A254064.P17494922030173236465

`eq[n, n-a(A082523(n))]` with `a(0)=2, a(1)=2`
-/

namespace A254064.P17494922030173236465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  (n : ℤ) - f2 (A082523 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254064.P17494922030173236465

namespace A254064

/-- `eq[n, n-a(A082523(n))]` -/
def P17494922030173236465.Spec : Prop :=
  ∀ n, (P17494922030173236465.a n : ℤ) = A254064 (n + 1)

end A254064

/-! ## A254064.P14978976327990512748

`eq[8, A000732(a(A082523(n)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A254064.P14978976327990512748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f2 =>
  A000732 (f2 (A082523 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254064.P14978976327990512748

namespace A254064

/-- `eq[8, A000732(a(A082523(n)))]` -/
def P14978976327990512748.Spec : Prop :=
  ∀ n, (P14978976327990512748.a n : ℤ) = A254064 (n + 1)

end A254064

/-! ## A254064.P1584542253126545501

`eq[1, A331671(A008574(n))]`
-/

namespace A254064.P1584542253126545501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331671 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254064.P1584542253126545501

namespace A254064

/-- `eq[1, A331671(A008574(n))]` -/
def P1584542253126545501.Spec : Prop :=
  ∀ n, (P1584542253126545501.a n : ℤ) = A254064 (n + 1)

end A254064

/-!
# A254065: Vulgar fractions whose denominators are numbers ending with nine, the case 1/19.

The programs for A254065, the canonical program `A254065.P1565246550795193810` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254065 has offset 1).

The definition of A254065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254065.P1565246550795193810

`A036120(n)%10`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254065

/-- `A036120(n)%10` -/
def P1565246550795193810.Spec : Prop :=
  ∀ n, P1565246550795193810.a n = A254065 (n + 1)

theorem P1565246550795193810.correct : P1565246550795193810.Spec := by
  intro n
  simp only [A254065, Nat.add_sub_cancel]

end A254065

/-!
# A254066: Primitive numbers n such that the sums of the digits of n and n^2 coincide.

The programs for A254066, the canonical program `A254066.P6804668024201466388` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254066 has offset 1).

The definition of A254066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254066.P6804668024201466388

`∩[A058369(n+1), A067251(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254066

/-- `∩[A058369(n+1), A067251(n+1)]` -/
def P6804668024201466388.Spec : Prop :=
  ∀ n, (P6804668024201466388.a n : ℤ) = A254066 (n + 1)

theorem P6804668024201466388.correct : P6804668024201466388.Spec := by
  intro n
  simp only [A254066, Nat.add_sub_cancel]

end A254066

/-! ## A254066.P9706633777065383981

`filter[A058369(n+1), A168184(#)]`
-/

namespace A254066.P9706633777065383981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A254066.P9706633777065383981

namespace A254066

/-- `filter[A058369(n+1), A168184(#)]` -/
def P9706633777065383981.Spec : Prop :=
  ∀ n, P9706633777065383981.a n = A254066 (n + 1)

end A254066

/-! ## A254066.P4398782543570106233

`record[A004086(A004086(A058369(n+2)))]`
-/

namespace A254066.P4398782543570106233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A058369 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254066.P4398782543570106233

namespace A254066

/-- `record[A004086(A004086(A058369(n+2)))]` -/
def P4398782543570106233.Spec : Prop :=
  ∀ n, P4398782543570106233.a n = A254066 (n + 1)

end A254066

/-!
# A254067: Rectangular array A read by upward antidiagonals in which the entry in row n and column k is defined by A(n,k) = S(4*A257499(n,k) - 3), n,k >= 1, where the function S is as defined in A257480.

The programs for A254067, there is no canonical definition to state claims against.
-/

/-! ## A254067.P4262777779138620875

`A257499(n+1)+A254131(n+1)`
-/

namespace A254067.P4262777779138620875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257499 (n + 1) + A254131 (n + 1)

end

end A254067.P4262777779138620875

/-! ## A254067.P12468153688009826746

`A254131(n+1)+2*A258415(n+1)-1`
-/

namespace A254067.P12468153688009826746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254131 (n + 1) + (2 * A258415 (n + 1) - 1)

end

end A254067.P12468153688009826746

/-! ## A254067.P17215519948687522621

`A254131(n+1)+A004273(A258415(n+1))`
-/

namespace A254067.P17215519948687522621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254131 (n + 1) + A004273 (A258415 (n + 1)).toNat

end

end A254067.P17215519948687522621

/-! ## A254067.P11807803830119424334

`A254131(n+1)+A005408(A258415(n+1)-1)`
-/

namespace A254067.P11807803830119424334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254131 (n + 1) + A005408 (A258415 (n + 1) - 1).toNat

end

end A254067.P11807803830119424334

/-! ## A254067.P17791758487781517685

`A254131(n+1)+A014681(2*A258415(n+1))`
-/

namespace A254067.P17791758487781517685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254131 (n + 1) + A014681 (2 * A258415 (n + 1)).toNat

end

end A254067.P17791758487781517685

/-! ## A254067.P8943329441527976573

`A254131(n+1)+A257791(n+1)-A257852(n+1)`
-/

namespace A254067.P8943329441527976573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254131 (n + 1) + (A257791 (n + 1) - A257852 (n + 1))

end

end A254067.P8943329441527976573

/-!
# A254068: Irregular triangle T read by rows in which the entry in row n and column k is given by T(n,k) = 4*A253676(n,k) - 3, k = 1..A253720(n), assuming the 3x+1 (or Collatz) conjecture.

The programs for A254068, there is no canonical definition to state claims against.
-/

/-! ## A254068.P332663615915429985

`4*A253676(n+1)-3`
-/

namespace A254068.P332663615915429985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A253676 (n + 1) - 3

end

end A254068.P332663615915429985

/-! ## A254068.P14782130443740320134

`A016813(A253676(n+1)-1)`
-/

namespace A254068.P14782130443740320134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A253676 (n + 1) - 1).toNat

end

end A254068.P14782130443740320134

/-! ## A254068.P6474270284267103103

`A168277(2*A253676(n+1))`
-/

namespace A254068.P6474270284267103103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (2 * A253676 (n + 1)).toNat

end

end A254068.P6474270284267103103

/-! ## A254068.P4547673472296765949

`A347378(2*A253676(n+1))`
-/

namespace A254068.P4547673472296765949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (2 * A253676 (n + 1)).toNat

end

end A254068.P4547673472296765949

/-! ## A254068.P4169768333153180344

`A023445(4*A253676(n+1))`
-/

namespace A254068.P4169768333153180344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (4 * A253676 (n + 1)).toNat

end

end A254068.P4169768333153180344

/-! ## A254068.P10168094618882836128

`3*A033999(2*n+1)+4*A253676(n+1)`
-/

namespace A254068.P10168094618882836128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033999 (2 * n + 1) + 4 * A253676 (n + 1)

end

end A254068.P10168094618882836128

/-! ## A254068.P5181199238119680052

`A004273(A004273(A253676(n+1)))`
-/

namespace A254068.P5181199238119680052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004273 (A253676 (n + 1)).toNat).toNat

end

end A254068.P5181199238119680052

/-! ## A254068.P11333970517271743740

`A005408(A005408(A253676(n+1))-3)`
-/

namespace A254068.P11333970517271743740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 (A253676 (n + 1)).toNat - 3).toNat

end

end A254068.P11333970517271743740

/-! ## A254068.P10012493038422962631

`A130824(A253676(n+1))-A007318(∑[n])`
-/

namespace A254068.P10012493038422962631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A253676 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254068.P10012493038422962631

/-! ## A254068.P17134560178537917855

`A130824(A253676(n+1))-char[A001057(n)]`
-/

namespace A254068.P17134560178537917855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A253676 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254068.P17134560178537917855

/-!
# A254070: a(n) = -1 + (3/2)^(-1 + v(1 + F(4*n - 3)))*(1 + F(4*n - 3)), where v(y) is the 2-adic valuation of y, F(x) = (3*x + 1)/2^v(3*x + 1), and x == 1 (mod 2).

The programs for A254070, there is no canonical definition to state claims against.
-/

/-! ## A254070.P2366555598880148384

`4*A257480(n+1)-3`
-/

namespace A254070.P2366555598880148384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A257480 (n + 1) - 3

end

end A254070.P2366555598880148384

/-! ## A254070.P11144033775071272636

`A093544(A257480(n+1))`
-/

namespace A254070.P11144033775071272636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (A257480 (n + 1)).toNat

end

end A254070.P11144033775071272636

/-! ## A254070.P17410415615349419137

`A016813(A257480(n+1)-1)`
-/

namespace A254070.P17410415615349419137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A257480 (n + 1) - 1).toNat

end

end A254070.P17410415615349419137

/-! ## A254070.P16437092509555627894

`A168277(2*A257480(n+1))`
-/

namespace A254070.P16437092509555627894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168277 (2 * A257480 (n + 1)).toNat

end

end A254070.P16437092509555627894

/-! ## A254070.P2212218779506434564

`A347378(2*A257480(n+1))`
-/

namespace A254070.P2212218779506434564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (2 * A257480 (n + 1)).toNat

end

end A254070.P2212218779506434564

/-! ## A254070.P7733108640741252736

`A023445(4*A257480(n+1))`
-/

namespace A254070.P7733108640741252736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (4 * A257480 (n + 1)).toNat

end

end A254070.P7733108640741252736

/-! ## A254070.P11480623342597214088

`A008586(A257480(n+1)-1)+1`
-/

namespace A254070.P11480623342597214088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A257480 (n + 1) - 1).toNat + 1

end

end A254070.P11480623342597214088

/-! ## A254070.P17899563550559621752

`A016825(A257480(n+1)-1)-1`
-/

namespace A254070.P17899563550559621752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A257480 (n + 1) - 1).toNat - 1

end

end A254070.P17899563550559621752

/-! ## A254070.P2738914360038796997

`or(1, A008574(A257480(n+1)-1))`
-/

namespace A254070.P2738914360038796997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008574 (A257480 (n + 1) - 1).toNat)

end

end A254070.P2738914360038796997

/-! ## A254070.P13539933441302991412

`A004273(A005843(A257480(n+1))-1)`
-/

namespace A254070.P13539933441302991412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005843 (A257480 (n + 1)).toNat - 1).toNat

end

end A254070.P13539933441302991412

/-!
# A254075: Integer area A of triangles with side lengths in the commutative ring Z[sqrt(5)].

The programs for A254075, there is no canonical definition to state claims against.
-/

/-! ## A254075.P14944455560229758909

`∑[A040001(A048142(n+1)*A161953(n+1))]`
-/

namespace A254075.P14944455560229758909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A048142 (n + 1) * A161953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254075.P14944455560229758909

/-! ## A254075.P16647642939725826720

`record[A325277(n+1)+A304095(n+1)]`
-/

namespace A254075.P16647642939725826720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325277 (n + 1) + A304095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254075.P16647642939725826720

/-! ## A254075.P14198979627764591559

`∑[A038548(A001644(A124522(n+1)))]`
-/

namespace A254075.P14198979627764591559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A001644 (A124522 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254075.P14198979627764591559

/-!
# A254076: a(n) = 2*a(n-1) + a(n-2) - 2*a(n-3) for n>2, a(0)=-1, a(1)=-2, a(2)=-4.

The programs for A254076, the canonical program `A254076.P884533366038847135` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254076 has offset 0).

The definition of A254076 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-2*a(n-3)` (program `A254076.P884533366038847135`, by `A254076.P884533366038847135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254076.P884533366038847135

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=-1, a(1)=-2, a(2)=-4, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254076

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P884533366038847135.Spec : Prop :=
  ∀ n, P884533366038847135.a n = A254076 n

theorem P884533366038847135.correct : P884533366038847135.Spec := by
  intro n
  simp only [A254076]

end A254076

/-! ## A254076.P4864738493921311135

`A056469(n)-A136188(n)`
-/

namespace A254076.P4864738493921311135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n - A136188 n

end

end A254076.P4864738493921311135

namespace A254076

/-- `A056469(n)-A136188(n)` -/
def P4864738493921311135.Spec : Prop :=
  ∀ n, P4864738493921311135.a n = A254076 n

end A254076

/-! ## A254076.P14840299447416110228

`A052950(n)-or(3, A040001(n)²)`
-/

namespace A254076.P14840299447416110228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 n - Int.lor 3 (A040001 n ^ 2)

end

end A254076.P14840299447416110228

namespace A254076

/-- `A052950(n)-or(3, A040001(n)²)` -/
def P14840299447416110228.Spec : Prop :=
  ∀ n, P14840299447416110228.a n = A254076 n

end A254076

/-! ## A254076.P8148695529660544368

`A011782(n)-A267352(A267352(n))`
-/

namespace A254076.P8148695529660544368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A267352 (A267352 n).toNat

end

end A254076.P8148695529660544368

namespace A254076

/-- `A011782(n)-A267352(A267352(n))` -/
def P8148695529660544368.Spec : Prop :=
  ∀ n, P8148695529660544368.a n = A254076 n

end A254076

/-! ## A254076.P2567560341235725023

`A156067(n)-(∑[A156067(n)]+1)`
-/

namespace A254076.P2567560341235725023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n - (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254076.P2567560341235725023

namespace A254076

/-- `A156067(n)-(∑[A156067(n)]+1)` -/
def P2567560341235725023.Spec : Prop :=
  ∀ n, P2567560341235725023.a n = A254076 n

end A254076

/-! ## A254076.P15672763005703246477

`A000079(n)+A156067(n)-A010704(n)`
-/

namespace A254076.P15672763005703246477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A156067 n - A010704 n)

end

end A254076.P15672763005703246477

namespace A254076

/-- `A000079(n)+A156067(n)-A010704(n)` -/
def P15672763005703246477.Spec : Prop :=
  ∀ n, P15672763005703246477.a n = A254076 n

end A254076

/-! ## A254076.P11368168469752200554

`A156067(n)-(A157823(n+1)+A010704(n))`
-/

namespace A254076.P11368168469752200554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156067 n - (A157823 (n + 1) + A010704 n)

end

end A254076.P11368168469752200554

namespace A254076

/-- `A156067(n)-(A157823(n+1)+A010704(n))` -/
def P11368168469752200554.Spec : Prop :=
  ∀ n, P11368168469752200554.a n = A254076 n

end A254076

/-! ## A254076.P7903331859490731119

`A011782(n)-dr(A042950(n))`
-/

namespace A254076.P7903331859490731119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (SequenceMachineLib.digitalRoot (A042950 n) : ℤ)

end

end A254076.P7903331859490731119

namespace A254076

/-- `A011782(n)-dr(A042950(n))` -/
def P7903331859490731119.Spec : Prop :=
  ∀ n, P7903331859490731119.a n = A254076 n

end A254076

/-! ## A254076.P10103307094870836982

`A131577(n)-dr(A003945(n))`
-/

namespace A254076.P10103307094870836982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - (SequenceMachineLib.digitalRoot (A003945 n) : ℤ)

end

end A254076.P10103307094870836982

namespace A254076

/-- `A131577(n)-dr(A003945(n))` -/
def P10103307094870836982.Spec : Prop :=
  ∀ n, P10103307094870836982.a n = A254076 n

end A254076

/-! ## A254076.P11140604438740307744

`Δ[A011782(n)]-dr(A003945(n))`
-/

namespace A254076.P11140604438740307744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.digitalRoot (A003945 n) : ℤ)

end

end A254076.P11140604438740307744

namespace A254076

/-- `Δ[A011782(n)]-dr(A003945(n))` -/
def P11140604438740307744.Spec : Prop :=
  ∀ n, P11140604438740307744.a n = A254076 n

end A254076

/-! ## A254076.P14435604630513243120

`A011782(n)-dr(A098011(n+3))`
-/

namespace A254076.P14435604630513243120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (SequenceMachineLib.digitalRoot (A098011 (n + 3)) : ℤ)

end

end A254076.P14435604630513243120

namespace A254076

/-- `A011782(n)-dr(A098011(n+3))` -/
def P14435604630513243120.Spec : Prop :=
  ∀ n, P14435604630513243120.a n = A254076 n

end A254076

/-! ## A254076.P4952296437189005703

`A131577(n)-A175805(n)%A322417(n)`
-/

namespace A254076.P4952296437189005703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - Int.tmod (A175805 n) (A322417 n)

end

end A254076.P4952296437189005703

namespace A254076

/-- `A131577(n)-A175805(n)%A322417(n)` -/
def P4952296437189005703.Spec : Prop :=
  ∀ n, P4952296437189005703.a n = A254076 n

end A254076

/-!
# A254077: a(n) = n if n <= 3, otherwise the smallest number not occurring earlier such that gcd(a(n),a(n-2)) > gcd(a(n),a(n-1)).

The programs for A254077, there is no canonical definition to state claims against.
-/

/-! ## A254077.P14350809098548900291

`A256974(n)+A255582(n+1)`
-/

namespace A254077.P14350809098548900291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A255582 (n + 1)

end

end A254077.P14350809098548900291

/-! ## A254077.P12815398525541997986

`A255582(n+1)+∑{p}[A124774(A186727(n)), #]`
-/

namespace A254077.P12815398525541997986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A186727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255582 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A254077.P12815398525541997986

/-! ## A254077.P5292194085731019631

`A255582(n+1)+∑{digits}[A319472(A186747(n)), #]`
-/

namespace A254077.P5292194085731019631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319472 (A186747 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255582 (n + 1) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A254077.P5292194085731019631

/-! ## A254077.P18190063791110907641

`A255582(n+1)+A185037(A109395(n+1))%20`
-/

namespace A254077.P18190063791110907641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255582 (n + 1) + Int.tmod (A185037 (A109395 (n + 1)).toNat) 20

end

end A254077.P18190063791110907641

/-! ## A254077.P2929750027972489672

`A255582(n+1)+A011742(n)*A033676(A032153(n))`
-/

namespace A254077.P2929750027972489672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255582 (n + 1) + A011742 n * A033676 (A032153 n).toNat

end

end A254077.P2929750027972489672

/-!
# A254078: a(n) is the number of steps after which n variables with increasing value ranges all have equal values when the values of all variables are decreased by 1 at each step and the value is set to the maximum value again when the resulting value would be 0.

The programs for A254078, the canonical program `A254078.P5488597702140630501` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254078 has offset 2).

The definition of A254078 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254078.P5488597702140630501

`A003418(n+3)-2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254078

/-- `A003418(n+3)-2` -/
def P5488597702140630501.Spec : Prop :=
  ∀ n, P5488597702140630501.a n = A254078 (n + 2)

theorem P5488597702140630501.correct : P5488597702140630501.Spec := by
  intro n
  simp only [A254078, Nat.add_sub_cancel]

end A254078

/-! ## A254078.P11913975952576317628

`lcm(a(n-1)+2, n+3)-2` with `a(0)=4`
-/

namespace A254078.P11913975952576317628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm (a (n - 1) + 2) (n + 3 : ℤ) : ℤ) - 2

end

end A254078.P11913975952576317628

namespace A254078

/-- `lcm(a(n-1)+2, n+3)-2` -/
def P11913975952576317628.Spec : Prop :=
  ∀ n, P11913975952576317628.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P9427954420325557620

`∑[A119944(n+2)]`
-/

namespace A254078.P9427954420325557620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254078.P9427954420325557620

namespace A254078

/-- `∑[A119944(n+2)]` -/
def P9427954420325557620.Spec : Prop :=
  ∀ n, P9427954420325557620.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P2924871209318121386

`A070198(n+2)-1`
-/

namespace A254078.P2924871209318121386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (n + 2) - 1

end

end A254078.P2924871209318121386

namespace A254078

/-- `A070198(n+2)-1` -/
def P2924871209318121386.Spec : Prop :=
  ∀ n, P2924871209318121386.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P8114053731255923198

`A121934(n+3)-1`
-/

namespace A254078.P8114053731255923198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121934 (n + 3) - 1

end

end A254078.P8114053731255923198

namespace A254078

/-- `A121934(n+3)-1` -/
def P8114053731255923198.Spec : Prop :=
  ∀ n, P8114053731255923198.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P662726724971501118

`A075059(n+3)-3`
-/

namespace A254078.P662726724971501118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 3) - 3

end

end A254078.P662726724971501118

namespace A254078

/-- `A075059(n+3)-3` -/
def P662726724971501118.Spec : Prop :=
  ∀ n, P662726724971501118.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P5720408813263796095

`A174554(n+3)-4`
-/

namespace A254078.P5720408813263796095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174554 (n + 3) - 4

end

end A254078.P5720408813263796095

namespace A254078

/-- `A174554(n+3)-4` -/
def P5720408813263796095.Spec : Prop :=
  ∀ n, P5720408813263796095.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P7673133522769586246

`Δ[A173185(n+2)]-2`
-/

namespace A254078.P7673133522769586246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A254078.P7673133522769586246

namespace A254078

/-- `Δ[A173185(n+2)]-2` -/
def P7673133522769586246.Spec : Prop :=
  ∀ n, P7673133522769586246.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P4561937123812864243

`Δ[A236856(n+2)]-2`
-/

namespace A254078.P4561937123812864243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A254078.P4561937123812864243

namespace A254078

/-- `Δ[A236856(n+2)]-2` -/
def P4561937123812864243.Spec : Prop :=
  ∀ n, P4561937123812864243.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P1891270079265704960

`∑[abs(Δ[A003418(n+2)])]`
-/

namespace A254078.P1891270079265704960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254078.P1891270079265704960

namespace A254078

/-- `∑[abs(Δ[A003418(n+2)])]` -/
def P1891270079265704960.Spec : Prop :=
  ∀ n, P1891270079265704960.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P6370482982997017360

`∑[abs(Δ[A075059(n+2)])]`
-/

namespace A254078.P6370482982997017360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254078.P6370482982997017360

namespace A254078

/-- `∑[abs(Δ[A075059(n+2)])]` -/
def P6370482982997017360.Spec : Prop :=
  ∀ n, P6370482982997017360.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P15793445941657444616

`2*(A025555(n+2)-1)`
-/

namespace A254078.P15793445941657444616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A025555 (n + 2) - 1)

end

end A254078.P15793445941657444616

namespace A254078

/-- `2*(A025555(n+2)-1)` -/
def P15793445941657444616.Spec : Prop :=
  ∀ n, P15793445941657444616.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P15376727665362454838

`A051426(n+3)/2-2`
-/

namespace A254078.P15376727665362454838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 (n + 3) : ℚ) / 2 - 2

end

end A254078.P15376727665362454838

namespace A254078

/-- `A051426(n+3)/2-2` -/
def P15376727665362454838.Spec : Prop :=
  ∀ n, P15376727665362454838.a n = (A254078 (n + 2) : ℚ)

end A254078

/-! ## A254078.P6636492541467224466

`∑[abs(Δ[∏[A014963(n+2)]])]`
-/

namespace A254078.P6636492541467224466
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254078.P6636492541467224466

namespace A254078

/-- `∑[abs(Δ[∏[A014963(n+2)]])]` -/
def P6636492541467224466.Spec : Prop :=
  ∀ n, P6636492541467224466.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P15209397125131982820

`2*(∏[A051543(n+1)]-1)`
-/

namespace A254078.P15209397125131982820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A254078.P15209397125131982820

namespace A254078

/-- `2*(∏[A051543(n+1)]-1)` -/
def P15209397125131982820.Spec : Prop :=
  ∀ n, P15209397125131982820.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P13056852919104701195

`2*(∏[A014963(n+3)]-1)`
-/

namespace A254078.P13056852919104701195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A254078.P13056852919104701195

namespace A254078

/-- `2*(∏[A014963(n+3)]-1)` -/
def P13056852919104701195.Spec : Prop :=
  ∀ n, P13056852919104701195.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P17869043353549983946

`(n+3)*A002944(n+3)-2`
-/

namespace A254078.P17869043353549983946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A002944 (n + 3) - 2

end

end A254078.P17869043353549983946

namespace A254078

/-- `(n+3)*A002944(n+3)-2` -/
def P17869043353549983946.Spec : Prop :=
  ∀ n, P17869043353549983946.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P8591643202427849731

`A051451(A065515(n+3))-2`
-/

namespace A254078.P8591643202427849731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A065515 (n + 3)).toNat - 2

end

end A254078.P8591643202427849731

namespace A254078

/-- `A051451(A065515(n+3))-2` -/
def P8591643202427849731.Spec : Prop :=
  ∀ n, P8591643202427849731.a n = A254078 (n + 2)

end A254078

/-! ## A254078.P9730415982484669368

`A081528(n+3)/(n+3)-2`
-/

namespace A254078.P9730415982484669368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081528 (n + 3) : ℚ) / (n + 3 : ℚ) - 2

end

end A254078.P9730415982484669368

namespace A254078

/-- `A081528(n+3)/(n+3)-2` -/
def P9730415982484669368.Spec : Prop :=
  ∀ n, P9730415982484669368.a n = (A254078 (n + 2) : ℚ)

end A254078

/-!
# A254079: Number of primitive (=aperiodic) n-bead necklaces with colored beads of exactly 7 different colors.

The programs for A254079, there is no canonical definition to state claims against.
-/

/-! ## A254079.P5277618788088690238

`A254040(eq[7, A002262(n)])`
-/

namespace A254079.P5277618788088690238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254079.P5277618788088690238

/-! ## A254079.P240095462417236441

`A254040(eq[7, A130270(n+1)])`
-/

namespace A254079.P240095462417236441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254079.P240095462417236441

/-! ## A254079.P14060915957784397941

`A254040(eq[7, A144328(n+1)])`
-/

namespace A254079.P14060915957784397941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254079.P14060915957784397941

/-! ## A254079.P6723521063054060005

`A254040(eq[8, A002260(n+1)])`
-/

namespace A254079.P6723521063054060005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254079.P6723521063054060005

/-! ## A254079.P6597896869156485850

`A254040(eq[8, A135223(n+1)])`
-/

namespace A254079.P6597896869156485850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254079.P6597896869156485850

/-!
# A254080: Number of primitive (=aperiodic) n-bead necklaces with colored beads of exactly 8 different colors.

The programs for A254080, there is no canonical definition to state claims against.
-/

/-! ## A254080.P8940987430104451276

`A254040(eq[8, A002262(n)])`
-/

namespace A254080.P8940987430104451276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254080.P8940987430104451276

/-! ## A254080.P9670420473793399757

`A254040(eq[8, A130270(n+1)])`
-/

namespace A254080.P9670420473793399757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254080.P9670420473793399757

/-! ## A254080.P8744896715389449354

`A254040(eq[8, A144328(n+1)])`
-/

namespace A254080.P8744896715389449354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254080.P8744896715389449354

/-! ## A254080.P3842089329628271190

`A254040(eq[9, A002260(n+1)])`
-/

namespace A254080.P3842089329628271190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254080.P3842089329628271190

/-! ## A254080.P18165339162439430529

`A254040(eq[9, A135223(n+1)])`
-/

namespace A254080.P18165339162439430529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254080.P18165339162439430529

/-!
# A254081: Number of primitive (=aperiodic) n-bead necklaces with colored beads of exactly 9 different colors.

The programs for A254081, there is no canonical definition to state claims against.
-/

/-! ## A254081.P14394670867097207613

`A254040(eq[9, A002262(n)])`
-/

namespace A254081.P14394670867097207613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254081.P14394670867097207613

/-! ## A254081.P9872157217998976153

`A254040(eq[9, A130270(n+1)])`
-/

namespace A254081.P9872157217998976153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254081.P9872157217998976153

/-! ## A254081.P5502590872330381481

`A254040(eq[9, A144328(n+1)])`
-/

namespace A254081.P5502590872330381481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254081.P5502590872330381481

/-! ## A254081.P2795462024946436894

`A254040(eq[10, A002260(n+1)])`
-/

namespace A254081.P2795462024946436894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254081.P2795462024946436894

/-! ## A254081.P4071537516544942116

`A254040(eq[9, A133233(n)])`
-/

namespace A254081.P4071537516544942116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254081.P4071537516544942116

/-!
# A254082: Number of primitive (=aperiodic) n-bead necklaces with colored beads of exactly 10 different colors.

The programs for A254082, there is no canonical definition to state claims against.
-/

/-! ## A254082.P199174017913291216

`A254040(eq[10, A002262(n)])`
-/

namespace A254082.P199174017913291216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254082.P199174017913291216

/-! ## A254082.P10084448839070397027

`A254040(eq[10, A144328(n+1)])`
-/

namespace A254082.P10084448839070397027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254082.P10084448839070397027

/-! ## A254082.P13124391588574807539

`A254040(eq[11, A002260(n+1)])`
-/

namespace A254082.P13124391588574807539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254082.P13124391588574807539

/-! ## A254082.P18377452956752161441

`A254040(eq[11, A134868(n+1)])`
-/

namespace A254082.P18377452956752161441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254082.P18377452956752161441

/-! ## A254082.P1687083956681653671

`A254040(eq[11, A135223(n+1)])`
-/

namespace A254082.P1687083956681653671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254082.P1687083956681653671

/-!
# A254083: Number of primitive (=aperiodic) 2n-bead necklaces with colored beads of exactly n different colors.

The programs for A254083, there is no canonical definition to state claims against.
-/

/-! ## A254083.P2266312489944870200

`A254040(∑[4*n])`
-/

namespace A254083.P2266312489944870200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254083.P2266312489944870200

/-! ## A254083.P6293790995478924131

`gcd(A000038(n), A254040(A046092(n)))`
-/

namespace A254083.P6293790995478924131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A254040 (A046092 n).toNat)

end

end A254083.P6293790995478924131

/-! ## A254083.P9744349558299697219

`A007318(C(n, 2))*A254040(A046092(n))`
-/

namespace A254083.P9744349558299697219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254040 (A046092 n).toNat

end

end A254083.P9744349558299697219

/-! ## A254083.P12264246194056588383

`A254040(A046092(n))^A007318(C(n+1, 2))`
-/

namespace A254083.P12264246194056588383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254040 (A046092 n).toNat : ℚ) ^ (A007318 (Nat.choose (n + 1) 2) : ℤ)

end

end A254083.P12264246194056588383

/-! ## A254083.P17217114529549153089

`A254040(A046092(n))^A000045(round(n/(n+1)))`
-/

namespace A254083.P17217114529549153089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254040 (A046092 n).toNat : ℚ) ^ (A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A254083.P17217114529549153089

/-!
# A254084: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254084, there is no canonical definition to state claims against.
-/

/-! ## A254084.P7459668433092387631

`A254092((n+1)²+n²)`
-/

namespace A254084.P7459668433092387631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 ((n + 1) ^ 2 + n ^ 2)

end

end A254084.P7459668433092387631

/-!
# A254085: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254085, there is no canonical definition to state claims against.
-/

/-! ## A254085.P4079166400353602511

`A254092(∑[n]+1)`
-/

namespace A254085.P4079166400353602511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254085.P4079166400353602511

/-! ## A254085.P17691245237971824401

`lcm(2, A254092(A000124(n)))`
-/

namespace A254085.P17691245237971824401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254092 (A000124 n).toNat)

end

end A254085.P17691245237971824401

/-! ## A254085.P4409359435280868335

`record[A010054(n)*A254092(n+1)]`
-/

namespace A254085.P4409359435280868335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254085.P4409359435280868335

/-! ## A254085.P9989951737088732908

`record[A103451(n)*A254092(n+1)]`
-/

namespace A254085.P9989951737088732908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A254092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254085.P9989951737088732908

/-! ## A254085.P11104393060276250356

`record[root(A254092(n+1), A038137(n))]`
-/

namespace A254085.P11104393060276250356
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254092 (n + 1) : ℝ) ^ (1 / (A038137 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254085.P11104393060276250356

/-!
# A254086: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254086, there is no canonical definition to state claims against.
-/

/-! ## A254086.P6211270259340065201

`A254092(∑[n+2])`
-/

namespace A254086.P6211270259340065201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254086.P6211270259340065201

/-! ## A254086.P8775914548670033786

`record[A254092(abs(A201163(n)))]`
-/

namespace A254086.P8775914548670033786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254086.P8775914548670033786

/-! ## A254086.P15978915787064525900

`record[A254092(Δ[A003453(n+5)])]`
-/

namespace A254086.P15978915787064525900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254086.P15978915787064525900

/-! ## A254086.P5335809046665808624

`record[A254092(A131818(n+1)+A038722(n+1))]`
-/

namespace A254086.P5335809046665808624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A131818 (n + 1) + A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254086.P5335809046665808624

/-! ## A254086.P6361391673591999014

`record[A254092(A254112(n+1)+A254106(n+1))]`
-/

namespace A254086.P6361391673591999014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A254112 (n + 1) + A254106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254086.P6361391673591999014

/-!
# A254087: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254087, there is no canonical definition to state claims against.
-/

/-! ## A254087.P16105242156667912630

`A254092(∑[n+3]+1)`
-/

namespace A254087.P16105242156667912630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254087.P16105242156667912630

/-! ## A254087.P3148860158225350317

`record[gcd(A254092(n+4), A299769(n+5))]`
-/

namespace A254087.P3148860158225350317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254092 (n + 4)) (A299769 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254087.P3148860158225350317

/-! ## A254087.P11334164958233656152

`A254092(A034856(n+2))+A035363(2*n+3)`
-/

namespace A254087.P11334164958233656152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A034856 (n + 2)).toNat + A035363 (2 * n + 3)

end

end A254087.P11334164958233656152

/-! ## A254087.P3084515223734481115

`A038712(2*n+1)*A254092(A034856(n+2))`
-/

namespace A254087.P3084515223734481115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A254092 (A034856 (n + 2)).toNat

end

end A254087.P3084515223734481115

/-!
# A254088: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254088, there is no canonical definition to state claims against.
-/

/-! ## A254088.P4173471507940411723

`A254092(A141214(n+1))`
-/

namespace A254088.P4173471507940411723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A141214 (n + 1)).toNat

end

end A254088.P4173471507940411723

/-! ## A254088.P4088222782679580182

`A254092(A027379(n+2))`
-/

namespace A254088.P4088222782679580182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A027379 (n + 2)).toNat

end

end A254088.P4088222782679580182

/-! ## A254088.P15248660095703635314

`A254092(A155212(n)+5)`
-/

namespace A254088.P15248660095703635314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A155212 n + 5).toNat

end

end A254088.P15248660095703635314

/-! ## A254088.P13686478416573114942

`A254092(A056000(n)+7)`
-/

namespace A254088.P13686478416573114942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A056000 n + 7).toNat

end

end A254088.P13686478416573114942

/-! ## A254088.P15100258708745676273

`A254092(A052905(n+1)+2)`
-/

namespace A254088.P15100258708745676273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A052905 (n + 1) + 2).toNat

end

end A254088.P15100258708745676273

/-!
# A254089: Number of (n+2) X (5+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254089, there is no canonical definition to state claims against.
-/

/-! ## A254089.P294224769346522131

`A254092(A141214(n+2)-1)`
-/

namespace A254089.P294224769346522131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A141214 (n + 2) - 1).toNat

end

end A254089.P294224769346522131

/-!
# A254090: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254090, there is no canonical definition to state claims against.
-/

/-! ## A254090.P8501223666449136267

`A254092(A052905(n+3))`
-/

namespace A254090.P8501223666449136267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A052905 (n + 3)).toNat

end

end A254090.P8501223666449136267

/-! ## A254090.P321019674715879034

`A254092(A141214(n+2)+Δ[A141214(n)])`
-/

namespace A254090.P321019674715879034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A141214 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A254090.P321019674715879034

/-!
# A254093: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254093, there is no canonical definition to state claims against.
-/

/-! ## A254093.P11691458288952640352

`A254092(∑[n+1]+2)`
-/

namespace A254093.P11691458288952640352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254093.P11691458288952640352

/-! ## A254093.P7533884476107675700

`record[A010054(n)*A254092(n+2)]`
-/

namespace A254093.P7533884476107675700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254092 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254093.P7533884476107675700

/-! ## A254093.P17459773797498229708

`record[A254092(A133263(val(n+1, 2)+1))]`
-/

namespace A254093.P17459773797498229708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254093.P17459773797498229708

/-!
# A254094: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254094, there is no canonical definition to state claims against.
-/

/-! ## A254094.P170644305120545195

`A254092(∑[n+2]+4)`
-/

namespace A254094.P170644305120545195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254094.P170644305120545195

/-! ## A254094.P2167671934132317234

`A254092(A167614(n+1))+A178798(n)`
-/

namespace A254094.P2167671934132317234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A167614 (n + 1)).toNat + A178798 n

end

end A254094.P2167671934132317234

/-! ## A254094.P4295481636002613971

`A254092(A167614(n+1))+A185238(n)`
-/

namespace A254094.P4295481636002613971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A167614 (n + 1)).toNat + A185238 n

end

end A254094.P4295481636002613971

/-! ## A254094.P2097776027945383273

`A254092(A167614(n+1))+A185284(n)`
-/

namespace A254094.P2097776027945383273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A167614 (n + 1)).toNat + A185284 n

end

end A254094.P2097776027945383273

/-! ## A254094.P7090568874323855298

`lcm(A219347(n), A254092(A167614(n+1)))`
-/

namespace A254094.P7090568874323855298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219347 n) (A254092 (A167614 (n + 1)).toNat)

end

end A254094.P7090568874323855298

/-!
# A254095: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254095, there is no canonical definition to state claims against.
-/

/-! ## A254095.P7749692446224439914

`A254092(A141214(n)+7)`
-/

namespace A254095.P7749692446224439914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A141214 n + 7).toNat

end

end A254095.P7749692446224439914

/-! ## A254095.P10029098844134167364

`A254092(A052905(n)+9)`
-/

namespace A254095.P10029098844134167364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A052905 n + 9).toNat

end

end A254095.P10029098844134167364

/-! ## A254095.P3996062219825216677

`A254092(A055999(n)+10)`
-/

namespace A254095.P3996062219825216677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A055999 n + 10).toNat

end

end A254095.P3996062219825216677

/-! ## A254095.P1399051223199644234

`A254092(A167614(n+2)+1)`
-/

namespace A254095.P1399051223199644234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A167614 (n + 2) + 1).toNat

end

end A254095.P1399051223199644234

/-! ## A254095.P7474889834879640867

`A254092(A166136(n+2)-2)`
-/

namespace A254095.P7474889834879640867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A166136 (n + 2) - 2).toNat

end

end A254095.P7474889834879640867

/-!
# A254096: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254096, there is no canonical definition to state claims against.
-/

/-! ## A254096.P6725395401767965786

`A254092(A167614(n+3)+2)`
-/

namespace A254096.P6725395401767965786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A167614 (n + 3) + 2).toNat

end

end A254096.P6725395401767965786

/-!
# A254097: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254097, there is no canonical definition to state claims against.
-/

/-! ## A254097.P8704718931286978936

`A254092(A141214(n+2)+9)`
-/

namespace A254097.P8704718931286978936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A141214 (n + 2) + 9).toNat

end

end A254097.P8704718931286978936

/-! ## A254097.P781448220010069039

`A254092(A055999(n+2)+12)`
-/

namespace A254097.P781448220010069039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254092 (A055999 (n + 2) + 12).toNat

end

end A254097.P781448220010069039

/-!
# A254099: Fixed points of A254115 and A254116.

The programs for A254099, there is no canonical definition to state claims against.
-/

/-! ## A254099.P14790410056613676651

`record[gcd(n+1, A254115(n+1))]`
-/

namespace A254099.P14790410056613676651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A254115 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254099.P14790410056613676651

/-! ## A254099.P17600363143197927193

`eq[n+1, A254116(n+1)]+1`
-/

namespace A254099.P17600363143197927193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A254099.P17600363143197927193

/-! ## A254099.P16475970218982390810

`eq[A048673(n+1), A254103(n+1)]+1`
-/

namespace A254099.P16475970218982390810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A254099.P16475970218982390810

/-! ## A254099.P4886840042805105272

`A254115(eq[n+1, A254115(n+1)]+1)`
-/

namespace A254099.P4886840042805105272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A254099.P4886840042805105272

/-! ## A254099.P9447545254917904847

`A254115(record[(n+1)/(A254115(n+1)-n)])`
-/

namespace A254099.P9447545254917904847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A254115 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254115 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A254099.P9447545254917904847

