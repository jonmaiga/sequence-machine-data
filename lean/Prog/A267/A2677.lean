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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A267700: "Tree" sequence in a 90-degree sector of the cellular automaton of A160720.

The programs for A267700, the canonical program `A267700.P3416915831248695542` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267700 has offset 0).

The definition of A267700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A267700.P3416915831248695542

`(A160720(n+1)-1)/4`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267700

/-- `(A160720(n+1)-1)/4` -/
def P3416915831248695542.Spec : Prop :=
  ∀ n, P3416915831248695542.a n = (A267700 n : ℚ)

end A267700

/-! ## A267700.P16105202931524054174

`∑[2*a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A267700.P16105202931524054174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P16105202931524054174

namespace A267700

/-- `∑[2*a(and(n, n-1))+1]` -/
def P16105202931524054174.Spec : Prop :=
  ∀ n, (P16105202931524054174.a n : ℤ) = A267700 n

end A267700

/-! ## A267700.P6213585289170636066

`∑[or(1, 2*a(and(n, n-1)))]` with `a(0)=0`
-/

namespace A267700.P6213585289170636066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor 1 (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P6213585289170636066

namespace A267700

/-- `∑[or(1, 2*a(and(n, n-1)))]` -/
def P6213585289170636066.Spec : Prop :=
  ∀ n, (P6213585289170636066.a n : ℤ) = A267700 n

end A267700

/-! ## A267700.P12919292427525594886

`∑[xor(1, 2*a(and(n, n-1)))]` with `a(0)=0`
-/

namespace A267700.P12919292427525594886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.xor 1 (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P12919292427525594886

namespace A267700

/-- `∑[xor(1, 2*a(and(n, n-1)))]` -/
def P12919292427525594886.Spec : Prop :=
  ∀ n, (P12919292427525594886.a n : ℤ) = A267700 n

end A267700

/-! ## A267700.P6592724549037592750

`∑[lcm(n, 2*(a(n-1)+1))/n-1]` with `a(0)=0`
-/

namespace A267700.P6592724549037592750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (2 * (f1 (n - 1) + 1))) : ℚ) / (n : ℚ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P6592724549037592750

namespace A267700

/-- `∑[lcm(n, 2*(a(n-1)+1))/n-1]` -/
def P6592724549037592750.Spec : Prop :=
  ∀ n, P6592724549037592750.a n = (A267700 n : ℚ)

end A267700

/-! ## A267700.P11903723009519244007

`∑[2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))-1]`
-/

namespace A267700.P11903723009519244007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P11903723009519244007

namespace A267700

/-- `∑[2^(n-(∑[val(n+1, 2)]-val(n+1, 2)))-1]` -/
def P11903723009519244007.Spec : Prop :=
  ∀ n, P11903723009519244007.a n = (A267700 n : ℚ)

end A267700

/-! ## A267700.P341699793002798686

`∑[A038573(n)]`
-/

namespace A267700.P341699793002798686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P341699793002798686

namespace A267700

/-- `∑[A038573(n)]` -/
def P341699793002798686.Spec : Prop :=
  ∀ n, P341699793002798686.a n = A267700 n

end A267700

/-! ## A267700.P7875251039975251410

`∑[A001316(n)-1]`
-/

namespace A267700.P7875251039975251410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P7875251039975251410

namespace A267700

/-- `∑[A001316(n)-1]` -/
def P7875251039975251410.Spec : Prop :=
  ∀ n, P7875251039975251410.a n = A267700 n

end A267700

/-! ## A267700.P11195145461636726132

`∑[n-A048967(n)]`
-/

namespace A267700.P11195145461636726132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P11195145461636726132

namespace A267700

/-- `∑[n-A048967(n)]` -/
def P11195145461636726132.Spec : Prop :=
  ∀ n, P11195145461636726132.a n = A267700 n

end A267700

/-! ## A267700.P8477884497138562695

`∑[n]-A051679(n)`
-/

namespace A267700.P8477884497138562695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A051679 n

end

end A267700.P8477884497138562695

namespace A267700

/-- `∑[n]-A051679(n)` -/
def P8477884497138562695.Spec : Prop :=
  ∀ n, P8477884497138562695.a n = A267700 n

end A267700

/-! ## A267700.P17807574248984731075

`2*A193494(n)-n`
-/

namespace A267700.P17807574248984731075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193494 n - (n : ℤ)

end

end A267700.P17807574248984731075

namespace A267700

/-- `2*A193494(n)-n` -/
def P17807574248984731075.Spec : Prop :=
  ∀ n, P17807574248984731075.a n = A267700 n

end A267700

/-! ## A267700.P11664491504545732265

`∑[sqrt(A102376(n))-1]`
-/

namespace A267700.P11664491504545732265
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P11664491504545732265

namespace A267700

/-- `∑[sqrt(A102376(n))-1]` -/
def P11664491504545732265.Spec : Prop :=
  ∀ n, P11664491504545732265.a n = (A267700 n : ℝ)

end A267700

/-! ## A267700.P9969865470785290048

`∑[Δ[A006046(n)]-1]`
-/

namespace A267700.P9969865470785290048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P9969865470785290048

namespace A267700

/-- `∑[Δ[A006046(n)]-1]` -/
def P9969865470785290048.Spec : Prop :=
  ∀ n, P9969865470785290048.a n = A267700 n

end A267700

/-! ## A267700.P15330502343368322955

`∑[A060632(2*n)-1]`
-/

namespace A267700.P15330502343368322955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P15330502343368322955

namespace A267700

/-- `∑[A060632(2*n)-1]` -/
def P15330502343368322955.Spec : Prop :=
  ∀ n, P15330502343368322955.a n = A267700 n

end A267700

/-! ## A267700.P590859128805099380

`∑[2^A000120(n)-1]`
-/

namespace A267700.P590859128805099380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P590859128805099380

namespace A267700

/-- `∑[2^A000120(n)-1]` -/
def P590859128805099380.Spec : Prop :=
  ∀ n, P590859128805099380.a n = (A267700 n : ℚ)

end A267700

/-! ## A267700.P12935321190341449699

`∑[2*A088512(n)]+n`
-/

namespace A267700.P12935321190341449699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A267700.P12935321190341449699

namespace A267700

/-- `∑[2*A088512(n)]+n` -/
def P12935321190341449699.Spec : Prop :=
  ∀ n, P12935321190341449699.a n = A267700 n

end A267700

/-! ## A267700.P1912853799741304871

`∑[2*n-A071042(n)]`
-/

namespace A267700.P1912853799741304871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A071042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P1912853799741304871

namespace A267700

/-- `∑[2*n-A071042(n)]` -/
def P1912853799741304871.Spec : Prop :=
  ∀ n, P1912853799741304871.a n = A267700 n

end A267700

/-! ## A267700.P4295468696935690046

`∑[2*n]-A171378(n)`
-/

namespace A267700.P4295468696935690046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A171378 n

end

end A267700.P4295468696935690046

namespace A267700

/-- `∑[2*n]-A171378(n)` -/
def P4295468696935690046.Spec : Prop :=
  ∀ n, P4295468696935690046.a n = A267700 n

end A267700

/-! ## A267700.P16093786379983815471

`A006046(n+1)-(n+1)`
-/

namespace A267700.P16093786379983815471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (n + 1) - (n + 1 : ℤ)

end

end A267700.P16093786379983815471

namespace A267700

/-- `A006046(n+1)-(n+1)` -/
def P16093786379983815471.Spec : Prop :=
  ∀ n, P16093786379983815471.a n = A267700 n

end A267700

/-! ## A267700.P9775454570872533064

`∑[n+1-A261366(n+1)]`
-/

namespace A267700.P9775454570872533064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A261366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267700.P9775454570872533064

namespace A267700

/-- `∑[n+1-A261366(n+1)]` -/
def P9775454570872533064.Spec : Prop :=
  ∀ n, P9775454570872533064.a n = A267700 n

end A267700

/-!
# A267701: a(n) = (A160121(n) - A266533(n))/6.

The programs for A267701, there is no canonical definition to state claims against.
-/

/-! ## A267701.P2779927844357041658

`and(A070100(n+1), A070152(2*n+1))²`
-/

namespace A267701.P2779927844357041658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070100 (n + 1)) (A070152 (2 * n + 1)) ^ 2

end

end A267701.P2779927844357041658

/-! ## A267701.P3740270865502828824

`A280440(A211100(n)%A258700(n+2))`
-/

namespace A267701.P3740270865502828824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280440 (Int.tmod (A211100 n) (A258700 (n + 2))).toNat

end

end A267701.P3740270865502828824

/-! ## A267701.P11746428522903456821

`A137744(A211100(n))%A223066(3*n+4)`
-/

namespace A267701.P11746428522903456821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137744 (A211100 n).toNat) (A223066 (3 * n + 4))

end

end A267701.P11746428522903456821

/-! ## A267701.P3090737599569392838

`floor(A033177(A278222(abs(1-n)))/3)`
-/

namespace A267701.P3090737599569392838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033177 (A278222 |1 - (n : ℤ)|.toNat).toNat : ℚ) / 3⌋

end

end A267701.P3090737599569392838

/-!
# A267702: Numbers that are the sum of 3 nonzero squares (A000408) and the sum of 2 positive cubes (A003325).

The programs for A267702, there is no canonical definition to state claims against.
-/

/-! ## A267702.P2828721504117270687

`∩[A000408(n+1), A003325(n+1)]`
-/

namespace A267702.P2828721504117270687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267702.P2828721504117270687

/-! ## A267702.P11467651156620077176

`lt[1, A063691(n*A025455(n))]`
-/

namespace A267702.P11467651156620077176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 ((n : ℤ) * A025455 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267702.P11467651156620077176

/-! ## A267702.P17205914676756966182

`lt[1, A025427(n)*A280618(n)]`
-/

namespace A267702.P17205914676756966182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n * A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267702.P17205914676756966182

/-! ## A267702.P682023311689081551

`lt[1, A063691(n)*A280618(n)]`
-/

namespace A267702.P682023311689081551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n * A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267702.P682023311689081551

/-! ## A267702.P15860823431115345873

`lt[A000038(A025427(n)), A025455(n)]`
-/

namespace A267702.P15860823431115345873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267702.P15860823431115345873

/-! ## A267702.P14821312940663588995

`lt[A000007(A063691(n)), A025455(n)]`
-/

namespace A267702.P14821312940663588995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A063691 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267702.P14821312940663588995

/-! ## A267702.P10984837279293260224

`lt[A000038(A025427(n)), A280618(n)]`
-/

namespace A267702.P10984837279293260224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A025427 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267702.P10984837279293260224

/-! ## A267702.P15485349841257205969

`lt[A000038(A063691(n)), A280618(n)]`
-/

namespace A267702.P15485349841257205969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A063691 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267702.P15485349841257205969

/-!
# A267703: Conjectured list of numbers whose trajectory under the '7x+1' map eventually reaches 1.

The programs for A267703, there is no canonical definition to state claims against.
-/

/-! ## A267703.P3895923917581520415

`lt[A270041(n+6), A318921(A004926(n))]`
-/

namespace A267703.P3895923917581520415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270041 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A004926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267703.P3895923917581520415

/-! ## A267703.P13004817064635103499

`lt[A344292(n+1), A318921(A004926(n))]`
-/

namespace A267703.P13004817064635103499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A004926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267703.P13004817064635103499

/-! ## A267703.P6240126436691131364

`lt[A008593(n), A318921(A004926(2*n))]`
-/

namespace A267703.P6240126436691131364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A004926 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267703.P6240126436691131364

/-! ## A267703.P4184006476899703585

`lt[A001747(n+1), A318921(A004926(2*n))]`
-/

namespace A267703.P4184006476899703585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A004926 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267703.P4184006476899703585

/-! ## A267703.P7959003999288354264

`lt[A342939(n+1), A318921(A004926(2*n))]`
-/

namespace A267703.P7959003999288354264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A004926 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267703.P7959003999288354264

/-!
# A267704: Triangle read by rows giving successive states of cellular automaton generated by "Rule 205" initiated with a single ON (black) cell.

The programs for A267704, the canonical program `A267704.P11767077599225187257` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267704 has offset 0).

The definition of A267704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267704.P13553924869926011729

`1-char[or(1, ∑[C(or(1, n), n)])]`
-/

namespace A267704.P13553924869926011729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267704.P13553924869926011729

namespace A267704

/-- `1-char[or(1, ∑[C(or(1, n), n)])]` -/
def P13553924869926011729.Spec : Prop :=
  ∀ n, P13553924869926011729.a n = A267704 n

end A267704

/-! ## A267704.P6716485994288451409

`1-char[A264754(n)]`
-/

namespace A267704.P6716485994288451409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267704.P6716485994288451409

namespace A267704

/-- `1-char[A264754(n)]` -/
def P6716485994288451409.Spec : Prop :=
  ∀ n, P6716485994288451409.a n = A267704 n

end A267704

/-! ## A267704.P13589237421944235633

`A267679(lcm(2, n)-n)`
-/

namespace A267704.P13589237421944235633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267679 (Nat.lcm 2 n - n)

end

end A267704.P13589237421944235633

namespace A267704

/-- `A267679(lcm(2, n)-n)` -/
def P13589237421944235633.Spec : Prop :=
  ∀ n, P13589237421944235633.a n = A267704 n

end A267704

/-! ## A267704.P14310045396414632444

`A267679(n*and(1, n))`
-/

namespace A267704.P14310045396414632444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267679 (n * Nat.land 1 n)

end

end A267704.P14310045396414632444

namespace A267704

/-- `A267679(n*and(1, n))` -/
def P14310045396414632444.Spec : Prop :=
  ∀ n, P14310045396414632444.a n = A267704 n

end A267704

/-! ## A267704.P5537739788879615455

`char[xor(1, A284359(n)+n)]`
-/

namespace A267704.P5537739788879615455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A284359 n + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267704.P5537739788879615455

namespace A267704

/-- `char[xor(1, A284359(n)+n)]` -/
def P5537739788879615455.Spec : Prop :=
  ∀ n, (P5537739788879615455.a n : ℤ) = A267704 n

end A267704

/-! ## A267704.P10100065926491070625

`A267679(n*a(n-1))` with `a(0)=1`
-/

namespace A267704.P10100065926491070625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267679 ((n : ℤ) * a (n - 1)).toNat

end

end A267704.P10100065926491070625

namespace A267704

/-- `A267679(n*a(n-1))` -/
def P10100065926491070625.Spec : Prop :=
  ∀ n, P10100065926491070625.a n = A267704 n

end A267704

/-! ## A267704.P11767077599225187257

`(1-C(2, A004738(n+1)))²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267704

/-- `(1-C(2, A004738(n+1)))²` -/
def P11767077599225187257.Spec : Prop :=
  ∀ n, P11767077599225187257.a n = A267704 n

theorem P11767077599225187257.correct : P11767077599225187257.Spec := by
  intro n
  simp only [A267704]

end A267704

/-! ## A267704.P1026490195672151885

`1-char[A338041(n+1)-n]`
-/

namespace A267704.P1026490195672151885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267704.P1026490195672151885

namespace A267704

/-- `1-char[A338041(n+1)-n]` -/
def P1026490195672151885.Spec : Prop :=
  ∀ n, P1026490195672151885.a n = A267704 n

end A267704

/-! ## A267704.P4773823642905213627

`1-char[2*eq[1, A007318(n)]+1]`
-/

namespace A267704.P4773823642905213627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267704.P4773823642905213627

namespace A267704

/-- `1-char[2*eq[1, A007318(n)]+1]` -/
def P4773823642905213627.Spec : Prop :=
  ∀ n, P4773823642905213627.a n = A267704 n

end A267704

/-! ## A267704.P4466657069398395020

`A179184(A253580(n))`
-/

namespace A267704.P4466657069398395020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A253580 n).toNat

end

end A267704.P4466657069398395020

namespace A267704

/-- `A179184(A253580(n))` -/
def P4466657069398395020.Spec : Prop :=
  ∀ n, P4466657069398395020.a n = A267704 n

end A267704

/-! ## A267704.P9685547198280984542

`A267810(A053615(n)²)`
-/

namespace A267704.P9685547198280984542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267810 (A053615 n ^ 2).toNat

end

end A267704.P9685547198280984542

namespace A267704

/-- `A267810(A053615(n)²)` -/
def P9685547198280984542.Spec : Prop :=
  ∀ n, P9685547198280984542.a n = A267704 n

end A267704

/-! ## A267704.P4039117912514897314

`A266174(n*A267349(n))`
-/

namespace A267704.P4039117912514897314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 ((n : ℤ) * A267349 n).toNat

end

end A267704.P4039117912514897314

namespace A267704

/-- `A266174(n*A267349(n))` -/
def P4039117912514897314.Spec : Prop :=
  ∀ n, P4039117912514897314.a n = A267704 n

end A267704

/-! ## A267704.P10629704854835191644

`A267679(n*A267349(n))`
-/

namespace A267704.P10629704854835191644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267679 ((n : ℤ) * A267349 n).toNat

end

end A267704.P10629704854835191644

namespace A267704

/-- `A267679(n*A267349(n))` -/
def P10629704854835191644.Spec : Prop :=
  ∀ n, P10629704854835191644.a n = A267704 n

end A267704

/-! ## A267704.P12050082570554026673

`A267773(n)*A267814(n)`
-/

namespace A267704.P12050082570554026673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 n * A267814 n

end

end A267704.P12050082570554026673

namespace A267704

/-- `A267773(n)*A267814(n)` -/
def P12050082570554026673.Spec : Prop :=
  ∀ n, P12050082570554026673.a n = A267704 n

end A267704

/-! ## A267704.P5458304185661640295

`and(A062557(n), A267773(n))`
-/

namespace A267704.P5458304185661640295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062557 n) (A267773 n)

end

end A267704.P5458304185661640295

namespace A267704

/-- `and(A062557(n), A267773(n))` -/
def P5458304185661640295.Spec : Prop :=
  ∀ n, P5458304185661640295.a n = A267704 n

end A267704

/-! ## A267704.P15067400776028270435

`or(A267676(n), A267679(n))`
-/

namespace A267704.P15067400776028270435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267676 n) (A267679 n)

end

end A267704.P15067400776028270435

namespace A267704

/-- `or(A267676(n), A267679(n))` -/
def P15067400776028270435.Spec : Prop :=
  ∀ n, P15067400776028270435.a n = A267704 n

end A267704

/-! ## A267704.P17220067129371529369

`A079813(A053615(n)²+2)`
-/

namespace A267704.P17220067129371529369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (A053615 n ^ 2 + 2).toNat

end

end A267704.P17220067129371529369

namespace A267704

/-- `A079813(A053615(n)²+2)` -/
def P17220067129371529369.Spec : Prop :=
  ∀ n, P17220067129371529369.a n = A267704 n

end A267704

/-! ## A267704.P11001162032531413721

`A087049(2*A196199(n)²)`
-/

namespace A267704.P11001162032531413721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (2 * A196199 n ^ 2).toNat

end

end A267704.P11001162032531413721

namespace A267704

/-- `A087049(2*A196199(n)²)` -/
def P11001162032531413721.Spec : Prop :=
  ∀ n, P11001162032531413721.a n = A267704 n

end A267704

/-! ## A267704.P14087677688229691971

`A104521(C(2, A004738(n+1)))`
-/

namespace A267704.P14087677688229691971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 (Nat.choose 2 (A004738 (n + 1)).toNat)

end

end A267704.P14087677688229691971

namespace A267704

/-- `A104521(C(2, A004738(n+1)))` -/
def P14087677688229691971.Spec : Prop :=
  ∀ n, P14087677688229691971.a n = A267704 n

end A267704

/-! ## A267704.P12615348597472087382

`A267773(n)*A267813(n+1)`
-/

namespace A267704.P12615348597472087382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267773 n * A267813 (n + 1)

end

end A267704.P12615348597472087382

namespace A267704

/-- `A267773(n)*A267813(n+1)` -/
def P12615348597472087382.Spec : Prop :=
  ∀ n, P12615348597472087382.a n = A267704 n

end A267704

/-!
# A267705: Binary representation of the n-th iteration of the "Rule 205" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267705, there is no canonical definition to state claims against.
-/

/-! ## A267705.P10427362466525706659

`or(1, (10^n)²+10*a(n-1))` with `a(0)=1, a(1)=10`
-/

namespace A267705.P10427362466525706659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  Nat.lor 1 ((10 ^ n) ^ 2 + 10 * a (n - 1))

end

end A267705.P10427362466525706659

/-! ## A267705.P10852681032196149001

`abs((10^(2*n+1)-10^n-1-10^n)%(floor(10^(2*n+1)/9)+10^n))-floor(10^(n-1))`
-/

namespace A267705.P10852681032196149001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) - 1 - (10 ^ n : ℤ)) (⌊(10 ^ (2 * n + 1) : ℚ) / 9⌋ + (10 ^ n : ℤ))| - ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A267705.P10852681032196149001

/-! ## A267705.P13228776561752462557

`(4*(10*(10^n)²-1)/9-3*10^n-((10^(2*n+1)-1)/9-10^n))%((10^(2*n+1)-1)/9+4*10^n)-floor(10^(n-1))`
-/

namespace A267705.P13228776561752462557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (4 * (((10 * (10 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9) - (3 * 10 ^ n : ℚ) - (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9 - (10 ^ n : ℚ)))) (SequenceMachineLib.roundAway (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9 + (4 * 10 ^ n : ℚ))) - ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A267705.P13228776561752462557

/-! ## A267705.P4653300172509392203

`A267815(n)-A178501(n)`
-/

namespace A267705.P4653300172509392203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267815 n - A178501 n

end

end A267705.P4653300172509392203

/-! ## A267705.P818351128497292462

`(A011557(n)²+10*a(n-1)+1)%(A332150(n)/5)` with `a(0)=1`
-/

namespace A267705.P818351128497292462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A011557 n ^ 2 + (10 * a (n - 1) + 1)) (SequenceMachineLib.roundAway ((A332150 n : ℚ) / 5))

end

end A267705.P818351128497292462

/-! ## A267705.P12094758024279011181

`(A011557(2*n)+10*a(n-1)+1)%(A332150(n)/5)` with `a(0)=1`
-/

namespace A267705.P12094758024279011181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A011557 (2 * n) + (10 * a (n - 1) + 1)) (SequenceMachineLib.roundAway ((A332150 n : ℚ) / 5))

end

end A267705.P12094758024279011181

/-! ## A267705.P10136562522137165232

`A011557(n)+A332145(n)%A332115(n)-A178501(n)`
-/

namespace A267705.P10136562522137165232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + Int.tmod (A332145 n) (A332115 n) - A178501 n

end

end A267705.P10136562522137165232

/-!
# A267707: a(n) = A000217(A000217(n)+1).

The programs for A267707, the canonical program `A267707.P16541266166220000650` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267707 has offset 0).

The definition of A267707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n)+1)` (program `A267707.P16541266166220000650`, by `A267707.P16541266166220000650.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267707.P17775360715797432312

`(n²+n+2)*(n²+n+4)/8`
-/

namespace A267707.P17775360715797432312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + (n + 2) : ℚ) * ((n ^ 2 + (n + 4) : ℚ) / 8)

end

end A267707.P17775360715797432312

namespace A267707

/-- `(n²+n+2)*(n²+n+4)/8` -/
def P17775360715797432312.Spec : Prop :=
  ∀ n, P17775360715797432312.a n = (A267707 n : ℚ)

end A267707

/-! ## A267707.P63080061376254206

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=28, a(4)=66`
-/

namespace A267707.P63080061376254206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 28, 66] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A267707.P63080061376254206

namespace A267707

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P63080061376254206.Spec : Prop :=
  ∀ n, P63080061376254206.a n = A267707 n

end A267707

/-! ## A267707.P16541266166220000650

`A000217(A000217(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267707

/-- `A000217(A000217(n)+1)` -/
def P16541266166220000650.Spec : Prop :=
  ∀ n, P16541266166220000650.a n = A267707 n

theorem P16541266166220000650.correct : P16541266166220000650.Spec := by
  intro n
  simp only [A267707]

end A267707

/-! ## A267707.P14577347664507520053

`C(∑[n]+2, 2)`
-/

namespace A267707.P14577347664507520053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2

end

end A267707.P14577347664507520053

namespace A267707

/-- `C(∑[n]+2, 2)` -/
def P14577347664507520053.Spec : Prop :=
  ∀ n, (P14577347664507520053.a n : ℤ) = A267707 n

end A267707

/-! ## A267707.P6810939868026833983

`ceil((sqrt(a(n-1))+n/sqrt(2))²)` with `a(0)=1`
-/

namespace A267707.P6810939868026833983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (2 : ℝ)) ^ 2⌉

end

end A267707.P6810939868026833983

namespace A267707

/-- `ceil((sqrt(a(n-1))+n/sqrt(2))²)` -/
def P6810939868026833983.Spec : Prop :=
  ∀ n, P6810939868026833983.a n = A267707 n

end A267707

/-! ## A267707.P1005350650939511333

`∑[∑[∑[a(n-1)+3]]]+1` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A267707.P1005350650939511333
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267707.P1005350650939511333

namespace A267707

/-- `∑[∑[∑[a(n-1)+3]]]+1` -/
def P1005350650939511333.Spec : Prop :=
  ∀ n, (P1005350650939511333.a n : ℤ) = A267707 n

end A267707

/-! ## A267707.P13887513792640363373

`Δ[C(C(n, 2)+2, 2)]+a(n-1)` with `a(0)=1`
-/

namespace A267707.P13887513792640363373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A267707.P13887513792640363373

namespace A267707

/-- `Δ[C(C(n, 2)+2, 2)]+a(n-1)` -/
def P13887513792640363373.Spec : Prop :=
  ∀ n, P13887513792640363373.a n = A267707 n

end A267707

/-! ## A267707.P12015392664305027805

`∑[A229183(n)]+1`
-/

namespace A267707.P12015392664305027805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267707.P12015392664305027805

namespace A267707

/-- `∑[A229183(n)]+1` -/
def P12015392664305027805.Spec : Prop :=
  ∀ n, P12015392664305027805.a n = A267707 n

end A267707

/-! ## A267707.P18379494838943369282

`∑[A158842(n)]+n²`
-/

namespace A267707.P18379494838943369282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A267707.P18379494838943369282

namespace A267707

/-- `∑[A158842(n)]+n²` -/
def P18379494838943369282.Spec : Prop :=
  ∀ n, P18379494838943369282.a n = A267707 n

end A267707

/-! ## A267707.P6159136996934509503

`(∑[A079908(n)]+1)/2`
-/

namespace A267707.P6159136996934509503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A267707.P6159136996934509503

namespace A267707

/-- `(∑[A079908(n)]+1)/2` -/
def P6159136996934509503.Spec : Prop :=
  ∀ n, P6159136996934509503.a n = (A267707 n : ℚ)

end A267707

/-! ## A267707.P11451153283736726210

`∑[n]+A002817(n)+1`
-/

namespace A267707.P11451153283736726210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A002817 n + 1)

end

end A267707.P11451153283736726210

namespace A267707

/-- `∑[n]+A002817(n)+1` -/
def P11451153283736726210.Spec : Prop :=
  ∀ n, P11451153283736726210.a n = A267707 n

end A267707

/-! ## A267707.P7277210727421616188

`∑[A006003(n)+n]+1`
-/

namespace A267707.P7277210727421616188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267707.P7277210727421616188

namespace A267707

/-- `∑[A006003(n)+n]+1` -/
def P7277210727421616188.Spec : Prop :=
  ∀ n, P7277210727421616188.a n = A267707 n

end A267707

/-! ## A267707.P11410345669166039113

`∑[A006001(n)-n]-n`
-/

namespace A267707.P11410345669166039113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006001 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A267707.P11410345669166039113

namespace A267707

/-- `∑[A006001(n)-n]-n` -/
def P11410345669166039113.Spec : Prop :=
  ∀ n, P11410345669166039113.a n = A267707 n

end A267707

/-! ## A267707.P18332873896899443170

`∑[∑[A139482(n+1)]]-n`
-/

namespace A267707.P18332873896899443170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A267707.P18332873896899443170

namespace A267707

/-- `∑[∑[A139482(n+1)]]-n` -/
def P18332873896899443170.Spec : Prop :=
  ∀ n, P18332873896899443170.a n = A267707 n

end A267707

/-! ## A267707.P13536077376538597415

`A176145(n+3)+n²+1`
-/

namespace A267707.P13536077376538597415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) + (n ^ 2 + 1 : ℤ)

end

end A267707.P13536077376538597415

namespace A267707

/-- `A176145(n+3)+n²+1` -/
def P13536077376538597415.Spec : Prop :=
  ∀ n, P13536077376538597415.a n = A267707 n

end A267707

/-! ## A267707.P6949120424585383618

`A004255(n+1)+∑[n]-n`
-/

namespace A267707.P6949120424585383618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004255 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A267707.P6949120424585383618

namespace A267707

/-- `A004255(n+1)+∑[n]-n` -/
def P6949120424585383618.Spec : Prop :=
  ∀ n, P6949120424585383618.a n = A267707 n

end A267707

/-! ## A267707.P3980626380564999090

`a(n-1)+A132127(n)+1` with `a(0)=1`
-/

namespace A267707.P3980626380564999090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A132127 n + 1)

end

end A267707.P3980626380564999090

namespace A267707

/-- `a(n-1)+A132127(n)+1` -/
def P3980626380564999090.Spec : Prop :=
  ∀ n, P3980626380564999090.a n = A267707 n

end A267707

/-! ## A267707.P7720001069402531379

`∑[n-(n²-A006002(n))]+1`
-/

namespace A267707.P7720001069402531379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n ^ 2 : ℤ) - A006002 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267707.P7720001069402531379

namespace A267707

/-- `∑[n-(n²-A006002(n))]+1` -/
def P7720001069402531379.Spec : Prop :=
  ∀ n, P7720001069402531379.a n = A267707 n

end A267707

/-! ## A267707.P3597758664790110123

`∑[(n-1)*A000124(n)+1+n]+1`
-/

namespace A267707.P3597758664790110123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000124 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A267707.P3597758664790110123

namespace A267707

/-- `∑[(n-1)*A000124(n)+1+n]+1` -/
def P3597758664790110123.Spec : Prop :=
  ∀ n, P3597758664790110123.a n = A267707 n

end A267707

/-! ## A267707.P5024104798683896191

`A002817(n)+A000124(n)`
-/

namespace A267707.P5024104798683896191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n + A000124 n

end

end A267707.P5024104798683896191

namespace A267707

/-- `A002817(n)+A000124(n)` -/
def P5024104798683896191.Spec : Prop :=
  ∀ n, P5024104798683896191.a n = A267707 n

end A267707

/-!
# A267708: Triangle read by rows giving successive states of cellular automaton generated by "Rule 206" initiated with a single ON (black) cell.

The programs for A267708, the canonical program `A267708.P17716609350446797913` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267708 has offset 0).

The definition of A267708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267708.P14100672014097833422

`log2(gcd(2, floor(2*sqrt(n))))`
-/

namespace A267708.P14100672014097833422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌊2 * Real.sqrt (n : ℝ)⌋ : ℝ)

end

end A267708.P14100672014097833422

namespace A267708

/-- `log2(gcd(2, floor(2*sqrt(n))))` -/
def P14100672014097833422.Spec : Prop :=
  ∀ n, P14100672014097833422.a n = (A267708 n : ℝ)

end A267708

/-! ## A267708.P11140288890837185211

`∑[char[n²]]-round(sqrt(n))`
-/

namespace A267708.P11140288890837185211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A267708.P11140288890837185211

namespace A267708

/-- `∑[char[n²]]-round(sqrt(n))` -/
def P11140288890837185211.Spec : Prop :=
  ∀ n, P11140288890837185211.a n = A267708 n

end A267708

/-! ## A267708.P3192637896103700280

`(floor(2*sqrt(n))+1)%2`
-/

namespace A267708.P3192637896103700280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊2 * Real.sqrt (n : ℝ)⌋ + 1) 2

end

end A267708.P3192637896103700280

namespace A267708

/-- `(floor(2*sqrt(n))+1)%2` -/
def P3192637896103700280.Spec : Prop :=
  ∀ n, P3192637896103700280.a n = A267708 n

end A267708

/-! ## A267708.P17911145633977506026

`and(1, floor(2*sqrt(n))+1)`
-/

namespace A267708.P17911145633977506026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (⌊2 * Real.sqrt (n : ℝ)⌋ + 1)

end

end A267708.P17911145633977506026

namespace A267708

/-- `and(1, floor(2*sqrt(n))+1)` -/
def P17911145633977506026.Spec : Prop :=
  ∀ n, P17911145633977506026.a n = A267708 n

end A267708

/-! ## A267708.P6430781091205534204

`xor(1, floor(2*sqrt(n))%2)`
-/

namespace A267708.P6430781091205534204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2)

end

end A267708.P6430781091205534204

namespace A267708

/-- `xor(1, floor(2*sqrt(n))%2)` -/
def P6430781091205534204.Spec : Prop :=
  ∀ n, P6430781091205534204.a n = A267708 n

end A267708

/-! ## A267708.P15364637724118734032

`char[C(∑[char[∑[n+1]]], 2)+n]`
-/

namespace A267708.P15364637724118734032
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267708.P15364637724118734032

namespace A267708

/-- `char[C(∑[char[∑[n+1]]], 2)+n]` -/
def P15364637724118734032.Spec : Prop :=
  ∀ n, (P15364637724118734032.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P5225759223831079641

`xor(1, C(comp[(n+1)²], comp[n²+n]))`
-/

namespace A267708.P5225759223831079641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A267708.P5225759223831079641

namespace A267708

/-- `xor(1, C(comp[(n+1)²], comp[n²+n]))` -/
def P5225759223831079641.Spec : Prop :=
  ∀ n, (P5225759223831079641.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P14594975780917595686

`char[A063656(n)]`
-/

namespace A267708.P14594975780917595686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267708.P14594975780917595686

namespace A267708

/-- `char[A063656(n)]` -/
def P14594975780917595686.Spec : Prop :=
  ∀ n, (P14594975780917595686.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P8428453796499456363

`char[∑[abs(A167407(n))]]`
-/

namespace A267708.P8428453796499456363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167407 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267708.P8428453796499456363

namespace A267708

/-- `char[∑[abs(A167407(n))]]` -/
def P8428453796499456363.Spec : Prop :=
  ∀ n, (P8428453796499456363.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P17716609350446797913

`C(2, A023969(n)+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267708

/-- `C(2, A023969(n)+2)` -/
def P17716609350446797913.Spec : Prop :=
  ∀ n, (P17716609350446797913.a n : ℤ) = A267708 n

theorem P17716609350446797913.correct : P17716609350446797913.Spec := by
  intro n
  simp only [A267708]

end A267708

/-! ## A267708.P5018941740872411602

`C(2, 2*A109983(n))`
-/

namespace A267708.P5018941740872411602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * A109983 n).toNat

end

end A267708.P5018941740872411602

namespace A267708

/-- `C(2, 2*A109983(n))` -/
def P5018941740872411602.Spec : Prop :=
  ∀ n, (P5018941740872411602.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P10779096652207025930

`A059841(floor(2*sqrt(n)))`
-/

namespace A267708.P10779096652207025930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat

end

end A267708.P10779096652207025930

namespace A267708

/-- `A059841(floor(2*sqrt(n)))` -/
def P10779096652207025930.Spec : Prop :=
  ∀ n, P10779096652207025930.a n = A267708 n

end A267708

/-! ## A267708.P2970584855228075720

`C(A000196(n), round(sqrt(n)))`
-/

namespace A267708.P2970584855228075720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000196 n).toNat (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A267708.P2970584855228075720

namespace A267708

/-- `C(A000196(n), round(sqrt(n)))` -/
def P2970584855228075720.Spec : Prop :=
  ∀ n, (P2970584855228075720.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P8075704092421720423

`char[2*n-A051162(n)]`
-/

namespace A267708.P8075704092421720423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A051162 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267708.P8075704092421720423

namespace A267708

/-- `char[2*n-A051162(n)]` -/
def P8075704092421720423.Spec : Prop :=
  ∀ n, (P8075704092421720423.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P13506966009616093682

`round(A003059(n+1)-sqrt(n))`
-/

namespace A267708.P13506966009616093682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003059 (n + 1) : ℝ) - Real.sqrt (n : ℝ))

end

end A267708.P13506966009616093682

namespace A267708

/-- `round(A003059(n+1)-sqrt(n))` -/
def P13506966009616093682.Spec : Prop :=
  ∀ n, P13506966009616093682.a n = A267708 n

end A267708

/-! ## A267708.P6009806861578410751

`A079813(n+1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A267708.P6009806861578410751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079813 ((n + 1 : ℤ) - a (n - 1)).toNat

end

end A267708.P6009806861578410751

namespace A267708

/-- `A079813(n+1-a(n-1))` -/
def P6009806861578410751.Spec : Prop :=
  ∀ n, P6009806861578410751.a n = A267708 n

end A267708

/-! ## A267708.P10759103879103553473

`val(A164073(ceil(sqrt(4*n+1))+1), 3)`
-/

namespace A267708.P10759103879103553473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A164073 (⌈Real.sqrt (4 * n + 1 : ℝ)⌉ + 1).toNat).toNat 3

end

end A267708.P10759103879103553473

namespace A267708

/-- `val(A164073(ceil(sqrt(4*n+1))+1), 3)` -/
def P10759103879103553473.Spec : Prop :=
  ∀ n, (P10759103879103553473.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P1193957329187843368

`A060576(A091453(n))`
-/

namespace A267708.P1193957329187843368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A091453 n).toNat

end

end A267708.P1193957329187843368

namespace A267708

/-- `A060576(A091453(n))` -/
def P1193957329187843368.Spec : Prop :=
  ∀ n, P1193957329187843368.a n = A267708 n

end A267708

/-! ## A267708.P159130689294554981

`char[A028391(A061885(n))]`
-/

namespace A267708.P159130689294554981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A061885 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267708.P159130689294554981

namespace A267708

/-- `char[A028391(A061885(n))]` -/
def P159130689294554981.Spec : Prop :=
  ∀ n, (P159130689294554981.a n : ℤ) = A267708 n

end A267708

/-! ## A267708.P5998074390858836795

`A071028(n-A053188(n))`
-/

namespace A267708.P5998074390858836795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 ((n : ℤ) - A053188 n).toNat

end

end A267708.P5998074390858836795

namespace A267708

/-- `A071028(n-A053188(n))` -/
def P5998074390858836795.Spec : Prop :=
  ∀ n, P5998074390858836795.a n = A267708 n

end A267708

/-!
# A267709: Number of partitions of pentagonal numbers.

The programs for A267709, there is no canonical definition to state claims against.
-/

/-! ## A267709.P12678146474815893159

`A000041(A000326(n))`
-/

namespace A267709.P12678146474815893159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000326 n).toNat

end

end A267709.P12678146474815893159

/-! ## A267709.P7792189306092832081

`A000041(C(n, 2)+n²)`
-/

namespace A267709.P7792189306092832081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 2 + n ^ 2)

end

end A267709.P7792189306092832081

/-! ## A267709.P6871671282518760999

`A000041(C(3*n, 2)/3)`
-/

namespace A267709.P6871671282518760999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 3)).toNat

end

end A267709.P6871671282518760999

/-! ## A267709.P7962004220141654459

`A000041(3*C(n, 2)+n)`
-/

namespace A267709.P7962004220141654459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * Nat.choose n 2 + n)

end

end A267709.P7962004220141654459

/-! ## A267709.P16098853452195196359

`A000041(2*n²-∑[n])`
-/

namespace A267709.P16098853452195196359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267709.P16098853452195196359

/-! ## A267709.P5056854686374925658

`A000041(2*n²-C(n, 2)-n)-A010872(3*n)`
-/

namespace A267709.P5056854686374925658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((2 * n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) - (n : ℤ)).toNat - A010872 (3 * n)

end

end A267709.P5056854686374925658

/-! ## A267709.P8506199268178112561

`A000041(lcm(n, 3*n-1)/2)*A057979(2*(n+2))`
-/

namespace A267709.P8506199268178112561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) ((3 * n : ℤ) - 1) : ℚ) / 2)).toNat * A057979 (2 * (n + 2))

end

end A267709.P8506199268178112561

/-! ## A267709.P2127905234513067167

`A035363(A049450(n))`
-/

namespace A267709.P2127905234513067167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A049450 n).toNat

end

end A267709.P2127905234513067167

/-! ## A267709.P13752095025493005130

`A119620(A056106(n))`
-/

namespace A267709.P13752095025493005130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A056106 n).toNat

end

end A267709.P13752095025493005130

/-! ## A267709.P5508437598006407411

`A035444(A033579(n))`
-/

namespace A267709.P5508437598006407411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A033579 n).toNat

end

end A267709.P5508437598006407411

/-!
# A267711: Numbers k such that k mod 3 = k mod 5.

The programs for A267711, the canonical program `A267711.P15145402942221127530` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267711 has offset 1).

The definition of A267711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267711.P15145402942221127530

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=15`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267711

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P15145402942221127530.Spec : Prop :=
  ∀ n, P15145402942221127530.a n = A267711 (n + 1)

theorem P15145402942221127530.correct : P15145402942221127530.Spec := by
  intro n
  simp only [A267711, Nat.add_sub_cancel]

end A267711

/-! ## A267711.P17855148645459676341

`∑[gcd(13, n%3)]-13`
-/

namespace A267711.P17855148645459676341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 13

end

end A267711.P17855148645459676341

namespace A267711

/-- `∑[gcd(13, n%3)]-13` -/
def P17855148645459676341.Spec : Prop :=
  ∀ n, P17855148645459676341.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P9110370168522825111

`12*floor(n/3)+n`
-/

namespace A267711.P9110370168522825111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

end

end A267711.P9110370168522825111

namespace A267711

/-- `12*floor(n/3)+n` -/
def P9110370168522825111.Spec : Prop :=
  ∀ n, P9110370168522825111.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P18324120637894593189

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=13`

`floor` is left out, it is the identity on integers.
-/

namespace A267711.P18324120637894593189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 13] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267711.P18324120637894593189

namespace A267711

/-- `∑[floor(a(n-3))]` -/
def P18324120637894593189.Spec : Prop :=
  ∀ n, (P18324120637894593189.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P18087167548873668533

`(17*n+2)%∑[dr(A005897(n))]`
-/

namespace A267711.P18087167548873668533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005897 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (17 * n + 2) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A267711.P18087167548873668533

namespace A267711

/-- `(17*n+2)%∑[dr(A005897(n))]` -/
def P18087167548873668533.Spec : Prop :=
  ∀ n, (P18087167548873668533.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P12752905110294279202

`A085959(n)%A063089(n+1)`
-/

namespace A267711.P12752905110294279202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085959 n) (A063089 (n + 1))

end

end A267711.P12752905110294279202

namespace A267711

/-- `A085959(n)%A063089(n+1)` -/
def P12752905110294279202.Spec : Prop :=
  ∀ n, P12752905110294279202.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P3693809421477694891

`A304205(n+1)%A063111(n+1)`
-/

namespace A267711.P3693809421477694891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304205 (n + 1)) (A063111 (n + 1))

end

end A267711.P3693809421477694891

namespace A267711

/-- `A304205(n+1)%A063111(n+1)` -/
def P3693809421477694891.Spec : Prop :=
  ∀ n, P3693809421477694891.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P17488664762763388078

`A380485(Δ[n²])/2`
-/

namespace A267711.P17488664762763388078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380485 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A267711.P17488664762763388078

namespace A267711

/-- `A380485(Δ[n²])/2` -/
def P17488664762763388078.Spec : Prop :=
  ∀ n, P17488664762763388078.a n = (A267711 (n + 1) : ℚ)

end A267711

/-! ## A267711.P16643149395140204281

`A047217(A281899(n)+1)`
-/

namespace A267711.P16643149395140204281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (A281899 n + 1).toNat

end

end A267711.P16643149395140204281

namespace A267711

/-- `A047217(A281899(n)+1)` -/
def P16643149395140204281.Spec : Prop :=
  ∀ n, P16643149395140204281.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P12551418201092148082

`A047217(∑[A105395(n+1)])`
-/

namespace A267711.P12551418201092148082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267711.P12551418201092148082

namespace A267711

/-- `A047217(∑[A105395(n+1)])` -/
def P12551418201092148082.Spec : Prop :=
  ∀ n, P12551418201092148082.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P13056256459778140115

`A001068(A004773(A281899(n)))`
-/

namespace A267711.P13056256459778140115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A004773 (A281899 n).toNat).toNat

end

end A267711.P13056256459778140115

namespace A267711

/-- `A001068(A004773(A281899(n)))` -/
def P13056256459778140115.Spec : Prop :=
  ∀ n, P13056256459778140115.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P6368182363507167813

`record[n*A014024(n)]`
-/

namespace A267711.P6368182363507167813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267711.P6368182363507167813

namespace A267711

/-- `record[n*A014024(n)]` -/
def P6368182363507167813.Spec : Prop :=
  ∀ n, P6368182363507167813.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P7436111874982035524

`eq[A014024(n), A059811(n+1)]`
-/

namespace A267711.P7436111874982035524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267711.P7436111874982035524

namespace A267711

/-- `eq[A014024(n), A059811(n+1)]` -/
def P7436111874982035524.Spec : Prop :=
  ∀ n, (P7436111874982035524.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P8901450316501496894

`eq[A014024(n), A307609(n+1)]`
-/

namespace A267711.P8901450316501496894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267711.P8901450316501496894

namespace A267711

/-- `eq[A014024(n), A307609(n+1)]` -/
def P8901450316501496894.Spec : Prop :=
  ∀ n, (P8901450316501496894.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P2402893420283213220

`eq[A014024(n), A376663(n+1)]`
-/

namespace A267711.P2402893420283213220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267711.P2402893420283213220

namespace A267711

/-- `eq[A014024(n), A376663(n+1)]` -/
def P2402893420283213220.Spec : Prop :=
  ∀ n, (P2402893420283213220.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P12751093027836098396

`eq[A376663(n+2), A380484(2*n)]`
-/

namespace A267711.P12751093027836098396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380484 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267711.P12751093027836098396

namespace A267711

/-- `eq[A376663(n+2), A380484(2*n)]` -/
def P12751093027836098396.Spec : Prop :=
  ∀ n, (P12751093027836098396.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P6608765700389357964

`eq[A106356(n+1), A106356(A014024(n)+n)]`
-/

namespace A267711.P6608765700389357964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A014024 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267711.P6608765700389357964

namespace A267711

/-- `eq[A106356(n+1), A106356(A014024(n)+n)]` -/
def P6608765700389357964.Spec : Prop :=
  ∀ n, (P6608765700389357964.a n : ℤ) = A267711 (n + 1)

end A267711

/-! ## A267711.P3958213677544023719

`A023443(A281899(n)+A281899(n)-A023443(n))`
-/

namespace A267711.P3958213677544023719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A281899 n + (A281899 n - A023443 n)).toNat

end

end A267711.P3958213677544023719

namespace A267711

/-- `A023443(A281899(n)+A281899(n)-A023443(n))` -/
def P3958213677544023719.Spec : Prop :=
  ∀ n, P3958213677544023719.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P3783366998416340286

`A023443(A281899(n)-(A023443(n)-A281899(n)))`
-/

namespace A267711.P3783366998416340286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A281899 n - (A023443 n - A281899 n)).toNat

end

end A267711.P3783366998416340286

namespace A267711

/-- `A023443(A281899(n)-(A023443(n)-A281899(n)))` -/
def P3783366998416340286.Spec : Prop :=
  ∀ n, P3783366998416340286.a n = A267711 (n + 1)

end A267711

/-! ## A267711.P1397188915001860561

`A082009(A047259(2*n+1)+n)`
-/

namespace A267711.P1397188915001860561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082009 (A047259 (2 * n + 1) + (n : ℤ)).toNat

end

end A267711.P1397188915001860561

namespace A267711

/-- `A082009(A047259(2*n+1)+n)` -/
def P1397188915001860561.Spec : Prop :=
  ∀ n, P1397188915001860561.a n = A267711 (n + 1)

end A267711

/-!
# A267712: Number of nontrivial prime powers p^k (k > 0) less than 10^n.

The programs for A267712, there is no canonical definition to state claims against.
-/

/-! ## A267712.P13056819869980186948

`A238815(n+1)-1`
-/

namespace A267712.P13056819869980186948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238815 (n + 1) - 1

end

end A267712.P13056819869980186948

/-! ## A267712.P11234933715505685635

`A006880(n+1)+A267574(n+1)`
-/

namespace A267712.P11234933715505685635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) + A267574 (n + 1)

end

end A267712.P11234933715505685635

/-! ## A267712.P9747851439810619493

`A006880(n+1)+A076048(n+1)-1`
-/

namespace A267712.P9747851439810619493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) + (A076048 (n + 1) - 1)

end

end A267712.P9747851439810619493

/-! ## A267712.P228922088641675650

`A076048(n+1)+A090226(n+2)-2`
-/

namespace A267712.P228922088641675650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076048 (n + 1) + (A090226 (n + 2) - 2)

end

end A267712.P228922088641675650

/-! ## A267712.P5644627411754033847

`A006880(n+1)+A089579(n+1)-A365670(n+1)`
-/

namespace A267712.P5644627411754033847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) + (A089579 (n + 1) - A365670 (n + 1))

end

end A267712.P5644627411754033847

/-!
# A267713: Number of n X n 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267713, there is no canonical definition to state claims against.
-/

/-! ## A267713.P16763341436942105679

`A267719(∑[4*n]+1)`
-/

namespace A267713.P16763341436942105679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267713.P16763341436942105679

/-! ## A267713.P13084314541918066784

`lcm(2, A267719(A001844(n)))`
-/

namespace A267713.P13084314541918066784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267719 (A001844 n).toNat)

end

end A267713.P13084314541918066784

/-! ## A267713.P10259539210673980782

`record[A267719(A330613(n+1))]`
-/

namespace A267713.P10259539210673980782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267713.P10259539210673980782

/-! ## A267713.P8680150835351938620

`record[A003982(n)*A267719(n+1)]`
-/

namespace A267713.P8680150835351938620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A267719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267713.P8680150835351938620

/-! ## A267713.P7187575832466321923

`record[A267719(n+1)/A027420(n)]`
-/

namespace A267713.P7187575832466321923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267719 (n + 1) : ℚ) / (A027420 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267713.P7187575832466321923

/-!
# A267714: Number of nX3 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267714, there is no canonical definition to state claims against.
-/

/-! ## A267714.P13213074115651260644

`A267719(∑[n+2]+4)`
-/

namespace A267714.P13213074115651260644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267714.P13213074115651260644

/-! ## A267714.P10115227887303843683

`lcm(2, A267719(A167614(n+1)))`
-/

namespace A267714.P10115227887303843683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267719 (A167614 (n + 1)).toNat)

end

end A267714.P10115227887303843683

/-! ## A267714.P15254074390517505547

`lcm(3, A267719(A034856(n+1)+5))`
-/

namespace A267714.P15254074390517505547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A267719 (A034856 (n + 1) + 5).toNat)

end

end A267714.P15254074390517505547

/-! ## A267714.P2858537902892484489

`and(-2, A267719(A000096(n+1)+4))`
-/

namespace A267714.P2858537902892484489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A267719 (A000096 (n + 1) + 4).toNat)

end

end A267714.P2858537902892484489

/-! ## A267714.P866847681161445871

`A326292(n)+A267719(A167614(n+1))`
-/

namespace A267714.P866847681161445871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A267719 (A167614 (n + 1)).toNat

end

end A267714.P866847681161445871

/-!
# A267715: Number of nX4 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267715, there is no canonical definition to state claims against.
-/

/-! ## A267715.P15178752510479225059

`A267719(∑[n+3]+7)`
-/

namespace A267715.P15178752510479225059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267715.P15178752510479225059

/-! ## A267715.P14103440669728149481

`or(A000007(n), A267719(A027379(n+2)))`
-/

namespace A267715.P14103440669728149481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A267719 (A027379 (n + 2)).toNat)

end

end A267715.P14103440669728149481

/-! ## A267715.P9075657884575389217

`A267719(A027379(n+2))+A000007(n+3)`
-/

namespace A267715.P9075657884575389217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A027379 (n + 2)).toNat + A000007 (n + 3)

end

end A267715.P9075657884575389217

/-! ## A267715.P16679084951433138929

`A267719(A027379(n+2))%A207756(n+1)`
-/

namespace A267715.P16679084951433138929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267719 (A027379 (n + 2)).toNat) (A207756 (n + 1))

end

end A267715.P16679084951433138929

/-! ## A267715.P8433572525095265164

`or(A101637(n+2), A267719(A027379(n+2)))`
-/

namespace A267715.P8433572525095265164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101637 (n + 2)) (A267719 (A027379 (n + 2)).toNat)

end

end A267715.P8433572525095265164

/-!
# A267716: Number of nX5 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267716, there is no canonical definition to state claims against.
-/

/-! ## A267716.P9794451787302490500

`A267719(A374005(n+1))`
-/

namespace A267716.P9794451787302490500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A374005 (n + 1)).toNat

end

end A267716.P9794451787302490500

/-! ## A267716.P14949911968930377674

`A267719(A167499(n+3))`
-/

namespace A267716.P14949911968930377674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A167499 (n + 3)).toNat

end

end A267716.P14949911968930377674

/-! ## A267716.P5622597645408958829

`A267719(A155212(n)+13)`
-/

namespace A267716.P5622597645408958829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A155212 n + 13).toNat

end

end A267716.P5622597645408958829

/-! ## A267716.P14375769753350988863

`A267719(A056000(n)+15)`
-/

namespace A267716.P14375769753350988863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A056000 n + 15).toNat

end

end A267716.P14375769753350988863

/-! ## A267716.P11508963815832437087

`A267719(A167614(n+3)+2)`
-/

namespace A267716.P11508963815832437087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A167614 (n + 3) + 2).toNat

end

end A267716.P11508963815832437087

/-!
# A267717: Number of nX6 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267717, there is no canonical definition to state claims against.
-/

/-! ## A267717.P3610374061579022349

`A267719(A374007(n+1))`
-/

namespace A267717.P3610374061579022349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A374007 (n + 1)).toNat

end

end A267717.P3610374061579022349

/-! ## A267717.P8925168980812602190

`A267719(A056115(n)+21)`
-/

namespace A267717.P8925168980812602190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A056115 n + 21).toNat

end

end A267717.P8925168980812602190

/-! ## A267717.P17329279521946681315

`A267719(A167499(n+4)+1)`
-/

namespace A267717.P17329279521946681315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A167499 (n + 4) + 1).toNat

end

end A267717.P17329279521946681315

/-! ## A267717.P12189293805559540146

`A267719(A167614(n+4)+3)`
-/

namespace A267717.P12189293805559540146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A167614 (n + 4) + 3).toNat

end

end A267717.P12189293805559540146

/-! ## A267717.P8445614191395520292

`A267719(A000124(n+5)+5)`
-/

namespace A267717.P8445614191395520292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A000124 (n + 5) + 5).toNat

end

end A267717.P8445614191395520292

/-!
# A267718: Number of nX7 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267718, there is no canonical definition to state claims against.
-/

/-! ## A267718.P11762408686602630187

`A267719(A374008(n+1))`
-/

namespace A267718.P11762408686602630187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A374008 (n + 1)).toNat

end

end A267718.P11762408686602630187

/-! ## A267718.P10397798796378140990

`A267719(A167487(n+5))`
-/

namespace A267718.P10397798796378140990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A167487 (n + 5)).toNat

end

end A267718.P10397798796378140990

/-! ## A267718.P1716756427392217214

`A267719(A056119(n)+28)`
-/

namespace A267718.P1716756427392217214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A056119 n + 28).toNat

end

end A267718.P1716756427392217214

/-! ## A267718.P9127500195265384417

`A267719(A167614(n+5)+4)`
-/

namespace A267718.P9127500195265384417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A167614 (n + 5) + 4).toNat

end

end A267718.P9127500195265384417

/-! ## A267718.P2089189775619700938

`A267719(A133263(n+6)+5)`
-/

namespace A267718.P2089189775619700938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267719 (A133263 (n + 6) + 5).toNat

end

end A267718.P2089189775619700938

/-!
# A267719: T(n,k)=Number of nXk 0..1 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A267719, there is no canonical definition to state claims against.
-/

/-! ## A267719.P6455394003093843891

`and(A100198(A207242(n+1)), A207242(n+1))`
-/

namespace A267719.P6455394003093843891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100198 (A207242 (n + 1)).toNat) (A207242 (n + 1))

end

end A267719.P6455394003093843891

/-! ## A267719.P7556511377694463933

`and(A100198(A207123(n+1)), A207752(n+1))`
-/

namespace A267719.P7556511377694463933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100198 (A207123 (n + 1)).toNat) (A207752 (n + 1))

end

end A267719.P7556511377694463933

/-! ## A267719.P8893570705642853273

`and(A100198(A207500(n+1)), A207500(n+1))`
-/

namespace A267719.P8893570705642853273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100198 (A207500 (n + 1)).toNat) (A207500 (n + 1))

end

end A267719.P8893570705642853273

/-! ## A267719.P97433512040160132

`and(A100198(A207908(n+1)), A207752(n+1))`
-/

namespace A267719.P97433512040160132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100198 (A207908 (n + 1)).toNat) (A207752 (n + 1))

end

end A267719.P97433512040160132

/-! ## A267719.P6189377848168512605

`and(A100198(A207960(n+1)), A207752(n+1))`
-/

namespace A267719.P6189377848168512605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100198 (A207960 (n + 1)).toNat) (A207752 (n + 1))

end

end A267719.P6189377848168512605

/-!
# A267721: a(n) is the least term of A030461 with gap = 6*n between consecutive primes or 0 if no such term exists.

The programs for A267721, there is no canonical definition to state claims against.
-/

/-! ## A267721.P820858350754201475

`A267692(ratio[record[A344649(n)!]])`
-/

namespace A267721.P820858350754201475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A344649 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267692 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A267721.P820858350754201475

/-! ## A267721.P9461234143617268313

`A267692(∑[A245860(n+7)+1])`
-/

namespace A267721.P9461234143617268313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245860 (n + 7) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267692 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A267721.P9461234143617268313

/-! ## A267721.P10643024555499157894

`A267692(A220337(3*n+1)+n)`
-/

namespace A267721.P10643024555499157894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267692 (A220337 (3 * n + 1) + (n : ℤ)).toNat

end

end A267721.P10643024555499157894

/-!
# A267722: Number of nX5 arrays of permutations of 5 copies of 0..n-1 with every element equal to at least one horizontal neighbor and the top left element equal to 0.

The programs for A267722, there is no canonical definition to state claims against.
-/

/-! ## A267722.P2916583020252004866

`n!*record[A342381(n)]`
-/

namespace A267722.P2916583020252004866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267722.P2916583020252004866

/-! ## A267722.P3282590581974766459

`n!*A000354(n+1)`
-/

namespace A267722.P3282590581974766459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000354 (n + 1)

end

end A267722.P3282590581974766459

/-! ## A267722.P9091125786555185440

`record[A342381(n)]*A000142(n)`
-/

namespace A267722.P9091125786555185440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000142 n

end

end A267722.P9091125786555185440

/-! ## A267722.P2656507053781497644

`record[A342381(n)]*A061602(n)`
-/

namespace A267722.P2656507053781497644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061602 n

end

end A267722.P2656507053781497644

/-! ## A267722.P2179578597645480060

`A000142(n)*A000354(n+1)`
-/

namespace A267722.P2179578597645480060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000354 (n + 1)

end

end A267722.P2179578597645480060

/-!
# A267723: Number of nX6 arrays of permutations of 6 copies of 0..n-1 with every element equal to at least one horizontal neighbor and the top left element equal to 0.

The programs for A267723, there is no canonical definition to state claims against.
-/

/-! ## A267723.P5036081749296544022

`A267724(A052905(n+3))`
-/

namespace A267723.P5036081749296544022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A052905 (n + 3)).toNat

end

end A267723.P5036081749296544022

/-! ## A267723.P14753287410650306346

`A267724(A056119(n)+16)`
-/

namespace A267723.P14753287410650306346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A056119 n + 16).toNat

end

end A267723.P14753287410650306346

/-!
# A267724: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to at least one horizontal neighbor and the top left element equal to 0.

The programs for A267724, there is no canonical definition to state claims against.
-/

/-! ## A267724.P297698045808867949

`A330957(A267901(n+1))`
-/

namespace A267724.P297698045808867949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (A267901 (n + 1)).toNat

end

end A267724.P297698045808867949

/-! ## A267724.P1415331932588130606

`A001842(A325222(n)+3)`
-/

namespace A267724.P1415331932588130606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A325222 n + 3).toNat

end

end A267724.P1415331932588130606

/-! ## A267724.P7752977761267989451

`A100073(A325222(n)+3)`
-/

namespace A267724.P7752977761267989451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (A325222 n + 3).toNat

end

end A267724.P7752977761267989451

/-! ## A267724.P8810829227663329962

`A001842(xor(3, A325222(n)))`
-/

namespace A267724.P8810829227663329962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Int.xor 3 (A325222 n)).toNat

end

end A267724.P8810829227663329962

/-! ## A267724.P17128285260403436465

`A023416(A256893(n)^A288723(n+1))`
-/

namespace A267724.P17128285260403436465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway ((A256893 n : ℚ) ^ (A288723 (n + 1) : ℤ))).toNat

end

end A267724.P17128285260403436465

/-!
# A267725: Number of 2Xn arrays containing n copies of 0..2-1 with every element equal to at least one horizontal neighbor and the top left element equal to 0.

The programs for A267725, there is no canonical definition to state claims against.
-/

/-! ## A267725.P10319143023574976932

`A267724(∑[n+1]+2)`
-/

namespace A267725.P10319143023574976932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A267725.P10319143023574976932

/-! ## A267725.P15297189102041276427

`A014908(n)*A267724(A133263(n+1))`
-/

namespace A267725.P15297189102041276427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 n * A267724 (A133263 (n + 1)).toNat

end

end A267725.P15297189102041276427

/-! ## A267725.P15212484964136801602

`A267724(A133263(n+1))+A151933(n+3)`
-/

namespace A267725.P15212484964136801602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A133263 (n + 1)).toNat + A151933 (n + 3)

end

end A267725.P15212484964136801602

/-! ## A267725.P1137520550937359773

`A267724(A133263(n+1))/A014908(n+1)`
-/

namespace A267725.P1137520550937359773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267724 (A133263 (n + 1)).toNat : ℚ) / (A014908 (n + 1) : ℚ)

end

end A267725.P1137520550937359773

/-! ## A267725.P10767918836254775621

`A267724(A022856(n+5))+A000007(2*n+3)`
-/

namespace A267725.P10767918836254775621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A022856 (n + 5)).toNat + A000007 (2 * n + 3)

end

end A267725.P10767918836254775621

/-!
# A267726: Number of 3Xn arrays containing n copies of 0..3-1 with every element equal to at least one horizontal neighbor and the top left element equal to 0.

The programs for A267726, there is no canonical definition to state claims against.
-/

/-! ## A267726.P14542785974006794252

`A267724(∑[n+2]+4)`
-/

namespace A267726.P14542785974006794252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267726.P14542785974006794252

/-! ## A267726.P1145426993400613371

`lcm(2, A267724(A167614(n+1)))`
-/

namespace A267726.P1145426993400613371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267724 (A167614 (n + 1)).toNat)

end

end A267726.P1145426993400613371

/-! ## A267726.P4937094964310364036

`A267724(A167614(n+1))+A011738(n)`
-/

namespace A267726.P4937094964310364036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A167614 (n + 1)).toNat + A011738 n

end

end A267726.P4937094964310364036

/-! ## A267726.P1338448812840428718

`A267724(A167614(n+1))+A025439(n)`
-/

namespace A267726.P1338448812840428718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A167614 (n + 1)).toNat + A025439 n

end

end A267726.P1338448812840428718

/-! ## A267726.P948752019342289434

`A267724(A167614(n+1))+A059995(n)`
-/

namespace A267726.P948752019342289434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A167614 (n + 1)).toNat + A059995 n

end

end A267726.P948752019342289434

/-!
# A267727: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to at least one horizontal neighbor and the top left element equal to 0.

The programs for A267727, there is no canonical definition to state claims against.
-/

/-! ## A267727.P17281056372574825840

`A267724(A141214(n)+7)`
-/

namespace A267727.P17281056372574825840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A141214 n + 7).toNat

end

end A267727.P17281056372574825840

/-! ## A267727.P17634632614075486501

`A267724(A052905(n)+9)`
-/

namespace A267727.P17634632614075486501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A052905 n + 9).toNat

end

end A267727.P17634632614075486501

/-! ## A267727.P12245812982916017987

`A267724(A055999(n)+10)`
-/

namespace A267727.P12245812982916017987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A055999 n + 10).toNat

end

end A267727.P12245812982916017987

/-! ## A267727.P17582941575533264354

`A267724(eq[5, A066657(n)])`
-/

namespace A267727.P17582941575533264354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267727.P17582941575533264354

/-! ## A267727.P18284240045005360472

`A267724(A167614(n+2)+1)`
-/

namespace A267727.P18284240045005360472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267724 (A167614 (n + 2) + 1).toNat

end

end A267727.P18284240045005360472

/-!
# A267728: Number of n X n 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267728, there is no canonical definition to state claims against.
-/

/-! ## A267728.P3858332753199243963

`A267735(∑[4*n]+1)`
-/

namespace A267728.P3858332753199243963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267728.P3858332753199243963

/-! ## A267728.P11347344277539986494

`lcm(2, A267735(A001844(n)))`
-/

namespace A267728.P11347344277539986494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267735 (A001844 n).toNat)

end

end A267728.P11347344277539986494

/-! ## A267728.P3861432865929546032

`record[gcd(A114327(n), A267735(n+1))]`
-/

namespace A267728.P3861432865929546032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A267735 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267728.P3861432865929546032

/-! ## A267728.P26068392882640818

`record[A267735(A001844(∑{e}[n+1, #]))]`
-/

namespace A267728.P26068392882640818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A001844 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267728.P26068392882640818

/-! ## A267728.P17180456790860257734

`A267735(A001844(n))+A034576(n+1)`
-/

namespace A267728.P17180456790860257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A001844 n).toNat + A034576 (n + 1)

end

end A267728.P17180456790860257734

/-!
# A267729: Number of n X 2 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267729, the canonical program `A267729.P4113010895853328698` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267729 has offset 1).

The definition of A267729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267729.P4113010895853328698

`Δ[A023610(n)]²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267729

/-- `Δ[A023610(n)]²` -/
def P4113010895853328698.Spec : Prop :=
  ∀ n, P4113010895853328698.a n = A267729 (n + 1)

theorem P4113010895853328698.correct : P4113010895853328698.Spec := by
  intro n
  simp only [A267729, Nat.add_sub_cancel]

end A267729

/-! ## A267729.P16274390233176140156

`A029907(n+2)²`
-/

namespace A267729.P16274390233176140156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 2) ^ 2

end

end A267729.P16274390233176140156

namespace A267729

/-- `A029907(n+2)²` -/
def P16274390233176140156.Spec : Prop :=
  ∀ n, P16274390233176140156.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P9851913531868605042

`(Δ[A113684(n)]+1)²`
-/

namespace A267729.P9851913531868605042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A267729.P9851913531868605042

namespace A267729

/-- `(Δ[A113684(n)]+1)²` -/
def P9851913531868605042.Spec : Prop :=
  ∀ n, P9851913531868605042.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P193176757744951583

`A211228(2*n+3)²`
-/

namespace A267729.P193176757744951583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n + 3) ^ 2

end

end A267729.P193176757744951583

namespace A267729

/-- `A211228(2*n+3)²` -/
def P193176757744951583.Spec : Prop :=
  ∀ n, P193176757744951583.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P11433694431892298542

`(A320947(n+2)/2)²`
-/

namespace A267729.P11433694431892298542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A320947 (n + 2) : ℚ) / 2) ^ 2

end

end A267729.P11433694431892298542

namespace A267729

/-- `(A320947(n+2)/2)²` -/
def P11433694431892298542.Spec : Prop :=
  ∀ n, P11433694431892298542.a n = (A267729 (n + 1) : ℚ)

end A267729

/-! ## A267729.P2895077809876255590

`(∑[A208354(n+1)]+1)²`
-/

namespace A267729.P2895077809876255590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A267729.P2895077809876255590

namespace A267729

/-- `(∑[A208354(n+1)]+1)²` -/
def P2895077809876255590.Spec : Prop :=
  ∀ n, P2895077809876255590.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P12231164890002455285

`Δ[A131913(n)+A001629(n)]²`
-/

namespace A267729.P12231164890002455285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n + A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A267729.P12231164890002455285

namespace A267729

/-- `Δ[A131913(n)+A001629(n)]²` -/
def P12231164890002455285.Spec : Prop :=
  ∀ n, P12231164890002455285.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P2116865632548824857

`Δ[A023610(n)]^ratio[A000079(n)]`
-/

namespace A267729.P2116865632548824857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) ^ ((f2 (n + 1) : ℚ) / (f2 n : ℚ) : ℝ)

end

end A267729.P2116865632548824857

namespace A267729

/-- `Δ[A023610(n)]^ratio[A000079(n)]` -/
def P2116865632548824857.Spec : Prop :=
  ∀ n, P2116865632548824857.a n = (A267729 (n + 1) : ℝ)

end A267729

/-! ## A267729.P15741293733152918668

`(A102702(n)+A001629(n+1))²`
-/

namespace A267729.P15741293733152918668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102702 n + A001629 (n + 1)) ^ 2

end

end A267729.P15741293733152918668

namespace A267729

/-- `(A102702(n)+A001629(n+1))²` -/
def P15741293733152918668.Spec : Prop :=
  ∀ n, P15741293733152918668.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P7868844372242741174

`(A006478(n)-(A023610(n)+1))²`
-/

namespace A267729.P7868844372242741174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006478 n - (A023610 n + 1)) ^ 2

end

end A267729.P7868844372242741174

namespace A267729

/-- `(A006478(n)-(A023610(n)+1))²` -/
def P7868844372242741174.Spec : Prop :=
  ∀ n, P7868844372242741174.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P7090066325612917854

`(A023610(n+1)-A023610(n))²`
-/

namespace A267729.P7090066325612917854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023610 (n + 1) - A023610 n) ^ 2

end

end A267729.P7090066325612917854

namespace A267729

/-- `(A023610(n+1)-A023610(n))²` -/
def P7090066325612917854.Spec : Prop :=
  ∀ n, P7090066325612917854.a n = A267729 (n + 1)

theorem P7090066325612917854.correct : P7090066325612917854.Spec := by
  intro n
  simp only [A267729, Nat.add_sub_cancel, A267729.P7090066325612917854.a, A267729.P4113010895853328698.f1, A267729.P4113010895853328698.a, SequenceMachineLib.memo_apply]

end A267729

/-! ## A267729.P1110971161638711619

`(A136391(n+2)+A006367(n))²`
-/

namespace A267729.P1110971161638711619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136391 (n + 2) + A006367 n) ^ 2

end

end A267729.P1110971161638711619

namespace A267729

/-- `(A136391(n+2)+A006367(n))²` -/
def P1110971161638711619.Spec : Prop :=
  ∀ n, P1110971161638711619.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P3173409101223564327

`(A001628(n+1)-A261055(n))²`
-/

namespace A267729.P3173409101223564327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001628 (n + 1) - A261055 n) ^ 2

end

end A267729.P3173409101223564327

namespace A267729

/-- `(A001628(n+1)-A261055(n))²` -/
def P3173409101223564327.Spec : Prop :=
  ∀ n, P3173409101223564327.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P7114907046365748142

`(A007502(n+2)-A001629(n))²`
-/

namespace A267729.P7114907046365748142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007502 (n + 2) - A001629 n) ^ 2

end

end A267729.P7114907046365748142

namespace A267729

/-- `(A007502(n+2)-A001629(n))²` -/
def P7114907046365748142.Spec : Prop :=
  ∀ n, P7114907046365748142.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P17673668344334779245

`(A055244(n+1)+A000045(n+1))²`
-/

namespace A267729.P17673668344334779245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055244 (n + 1) + A000045 (n + 1)) ^ 2

end

end A267729.P17673668344334779245

namespace A267729

/-- `(A055244(n+1)+A000045(n+1))²` -/
def P17673668344334779245.Spec : Prop :=
  ∀ n, P17673668344334779245.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P2053048243718911573

`(A010049(n+1)+A010049(n+2))²`
-/

namespace A267729.P2053048243718911573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010049 (n + 1) + A010049 (n + 2)) ^ 2

end

end A267729.P2053048243718911573

namespace A267729

/-- `(A010049(n+1)+A010049(n+2))²` -/
def P2053048243718911573.Spec : Prop :=
  ∀ n, P2053048243718911573.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P130117744058817737

`(A001629(n+1)-A001629(n+3))²`
-/

namespace A267729.P130117744058817737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001629 (n + 1) - A001629 (n + 3)) ^ 2

end

end A267729.P130117744058817737

namespace A267729

/-- `(A001629(n+1)-A001629(n+3))²` -/
def P130117744058817737.Spec : Prop :=
  ∀ n, P130117744058817737.a n = A267729 (n + 1)

end A267729

/-! ## A267729.P15304454656465168865

`A029907(n+2)^A020639(A004277(2*(n+1)))`
-/

namespace A267729.P15304454656465168865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029907 (n + 2) : ℚ) ^ (A020639 (A004277 (2 * (n + 1))).toNat : ℤ)

end

end A267729.P15304454656465168865

namespace A267729

/-- `A029907(n+2)^A020639(A004277(2*(n+1)))` -/
def P15304454656465168865.Spec : Prop :=
  ∀ n, P15304454656465168865.a n = (A267729 (n + 1) : ℚ)

end A267729

/-! ## A267729.P5863579173093149687

`A267730(n+1)/A029907(n+2)`
-/

namespace A267729.P5863579173093149687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267730 (n + 1) : ℚ) / (A029907 (n + 2) : ℚ)

end

end A267729.P5863579173093149687

namespace A267729

/-- `A267730(n+1)/A029907(n+2)` -/
def P5863579173093149687.Spec : Prop :=
  ∀ n, P5863579173093149687.a n = (A267729 (n + 1) : ℚ)

end A267729

/-! ## A267729.P16466598557885431992

`A054453(∑[n+1])²`
-/

namespace A267729.P16466598557885431992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A267729.P16466598557885431992

namespace A267729

/-- `A054453(∑[n+1])²` -/
def P16466598557885431992.Spec : Prop :=
  ∀ n, P16466598557885431992.a n = A267729 (n + 1)

end A267729

/-!
# A267730: Number of nX3 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267730, the canonical program `A267730.P9907999590693264910` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267730 has offset 1).

The definition of A267730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267730.P9907999590693264910

`Δ[A023610(n)]^3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267730

/-- `Δ[A023610(n)]^3` -/
def P9907999590693264910.Spec : Prop :=
  ∀ n, P9907999590693264910.a n = A267730 (n + 1)

theorem P9907999590693264910.correct : P9907999590693264910.Spec := by
  intro n
  simp only [A267730, Nat.add_sub_cancel]

end A267730

/-! ## A267730.P15696650970096887929

`A029907(n+2)^3`
-/

namespace A267730.P15696650970096887929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 2) ^ 3

end

end A267730.P15696650970096887929

namespace A267730

/-- `A029907(n+2)^3` -/
def P15696650970096887929.Spec : Prop :=
  ∀ n, P15696650970096887929.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P10099775558016185467

`sqrt(A267729(n+1))^3`
-/

namespace A267730.P10099775558016185467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267729 (n + 1) : ℝ) ^ 3

end

end A267730.P10099775558016185467

namespace A267730

/-- `sqrt(A267729(n+1))^3` -/
def P10099775558016185467.Spec : Prop :=
  ∀ n, P10099775558016185467.a n = (A267730 (n + 1) : ℝ)

end A267730

/-! ## A267730.P12397542298607209569

`A211228(2*n+3)^3`
-/

namespace A267730.P12397542298607209569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n + 3) ^ 3

end

end A267730.P12397542298607209569

namespace A267730

/-- `A211228(2*n+3)^3` -/
def P12397542298607209569.Spec : Prop :=
  ∀ n, P12397542298607209569.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P6597745715235957224

`(A320947(n+2)/2)^3`
-/

namespace A267730.P6597745715235957224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A320947 (n + 2) : ℚ) / 2) ^ 3

end

end A267730.P6597745715235957224

namespace A267730

/-- `(A320947(n+2)/2)^3` -/
def P6597745715235957224.Spec : Prop :=
  ∀ n, P6597745715235957224.a n = (A267730 (n + 1) : ℚ)

end A267730

/-! ## A267730.P6020741033079738499

`(∑[A208354(n+1)]+1)^3`
-/

namespace A267730.P6020741033079738499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 3

end

end A267730.P6020741033079738499

namespace A267730

/-- `(∑[A208354(n+1)]+1)^3` -/
def P6020741033079738499.Spec : Prop :=
  ∀ n, P6020741033079738499.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P13837627238354970733

`Δ[A023610(n)]*A267729(n+1)`
-/

namespace A267730.P13837627238354970733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A267729 (n + 1)

end

end A267730.P13837627238354970733

namespace A267730

/-- `Δ[A023610(n)]*A267729(n+1)` -/
def P13837627238354970733.Spec : Prop :=
  ∀ n, P13837627238354970733.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P5810963408913752336

`A029907(n+2)*A267729(n+1)`
-/

namespace A267730.P5810963408913752336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 2) * A267729 (n + 1)

end

end A267730.P5810963408913752336

namespace A267730

/-- `A029907(n+2)*A267729(n+1)` -/
def P5810963408913752336.Spec : Prop :=
  ∀ n, P5810963408913752336.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P1625780760838777523

`A054453(∑[n+1])^3`
-/

namespace A267730.P1625780760838777523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A267730.P1625780760838777523

namespace A267730

/-- `A054453(∑[n+1])^3` -/
def P1625780760838777523.Spec : Prop :=
  ∀ n, P1625780760838777523.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P8407012423631628977

`record[A054453(n+1)^3]`
-/

namespace A267730.P8407012423631628977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054453 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267730.P8407012423631628977

namespace A267730

/-- `record[A054453(n+1)^3]` -/
def P8407012423631628977.Spec : Prop :=
  ∀ n, P8407012423631628977.a n = A267730 (n + 1)

end A267730

/-! ## A267730.P12899323470799128431

`A209151(∑[n+2])^3`
-/

namespace A267730.P12899323470799128431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209151 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A267730.P12899323470799128431

namespace A267730

/-- `A209151(∑[n+2])^3` -/
def P12899323470799128431.Spec : Prop :=
  ∀ n, P12899323470799128431.a n = A267730 (n + 1)

end A267730

/-!
# A267731: Number of nX4 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267731, there is no canonical definition to state claims against.
-/

/-! ## A267731.P14477439976634070691

`A267735(A374004(n+1))`
-/

namespace A267731.P14477439976634070691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A374004 (n + 1)).toNat

end

end A267731.P14477439976634070691

/-! ## A267731.P10993248901075666062

`A267735(A141214(n)+7)`
-/

namespace A267731.P10993248901075666062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A141214 n + 7).toNat

end

end A267731.P10993248901075666062

/-! ## A267731.P17986241825248845671

`A267735(A052905(n)+9)`
-/

namespace A267731.P17986241825248845671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A052905 n + 9).toNat

end

end A267731.P17986241825248845671

/-! ## A267731.P4836074120373286674

`A267735(A055999(n)+10)`
-/

namespace A267731.P4836074120373286674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A055999 n + 10).toNat

end

end A267731.P4836074120373286674

/-! ## A267731.P5799673913049020123

`A267735(A167614(n+2)+1)`
-/

namespace A267731.P5799673913049020123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A167614 (n + 2) + 1).toNat

end

end A267731.P5799673913049020123

/-!
# A267732: Number of nX5 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267732, there is no canonical definition to state claims against.
-/

/-! ## A267732.P4692188685306174252

`A267735(A374005(n+1))`
-/

namespace A267732.P4692188685306174252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A374005 (n + 1)).toNat

end

end A267732.P4692188685306174252

/-! ## A267732.P12879816781656610493

`A267735(A167499(n+3))`
-/

namespace A267732.P12879816781656610493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A167499 (n + 3)).toNat

end

end A267732.P12879816781656610493

/-! ## A267732.P13639357260941533313

`A267735(A056000(n)+15)`
-/

namespace A267732.P13639357260941533313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A056000 n + 15).toNat

end

end A267732.P13639357260941533313

/-! ## A267732.P9402966444451561252

`A267735(eq[7, A066657(n)])`
-/

namespace A267732.P9402966444451561252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267732.P9402966444451561252

/-! ## A267732.P14567383185186686897

`A267735(A052905(n+1)+10)`
-/

namespace A267732.P14567383185186686897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A052905 (n + 1) + 10).toNat

end

end A267732.P14567383185186686897

/-!
# A267733: Number of nX6 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267733, there is no canonical definition to state claims against.
-/

/-! ## A267733.P4495032854058146526

`A267735(A374007(n+1))`
-/

namespace A267733.P4495032854058146526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A374007 (n + 1)).toNat

end

end A267733.P4495032854058146526

/-! ## A267733.P2112321844784831874

`A267735(A000217(n+5)+6)`
-/

namespace A267733.P2112321844784831874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A000217 (n + 5) + 6).toNat

end

end A267733.P2112321844784831874

/-! ## A267733.P894451274501898784

`A267735(eq[7, A131818(n+1)])`
-/

namespace A267733.P894451274501898784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267733.P894451274501898784

/-! ## A267733.P16917755950038308966

`A267735(eq[3, A219347(n)])`
-/

namespace A267733.P16917755950038308966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267733.P16917755950038308966

/-! ## A267733.P4586177842324962766

`A267735(eq[5, A193592(n)])`
-/

namespace A267733.P4586177842324962766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267733.P4586177842324962766

/-!
# A267734: Number of nX7 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267734, there is no canonical definition to state claims against.
-/

/-! ## A267734.P8691481803040605214

`A267735(A374008(n+1))`
-/

namespace A267734.P8691481803040605214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A374008 (n + 1)).toNat

end

end A267734.P8691481803040605214

/-! ## A267734.P7006370805433309944

`A267735(eq[8, A131818(n+1)])`
-/

namespace A267734.P7006370805433309944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267734.P7006370805433309944

/-! ## A267734.P10993797081026685007

`A267735(A055999(n+4))`
-/

namespace A267734.P10993797081026685007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (A055999 (n + 4)).toNat

end

end A267734.P10993797081026685007

/-! ## A267734.P13050302860906702813

`A267735(eq[4, A219347(n)])`
-/

namespace A267734.P13050302860906702813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267734.P13050302860906702813

/-! ## A267734.P7694671663207819666

`A267735(eq[6, A193592(n)])`
-/

namespace A267734.P7694671663207819666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267734.P7694671663207819666

/-!
# A267735: T(n,k)=Number of nXk 0..1 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A267735, there is no canonical definition to state claims against.
-/

/-! ## A267735.P16115756082680000975

`A189161(n+1)-A185284(A131816(n))`
-/

namespace A267735.P16115756082680000975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (n + 1) - A185284 (A131816 n).toNat

end

end A267735.P16115756082680000975

/-! ## A267735.P9584425094327144534

`A189779(n+1)-A185284(A131816(n))`
-/

namespace A267735.P9584425094327144534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (n + 1) - A185284 (A131816 n).toNat

end

end A267735.P9584425094327144534

/-! ## A267735.P9474089558457945717

`A189905(n+1)-A185284(A131816(n))`
-/

namespace A267735.P9474089558457945717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189905 (n + 1) - A185284 (A131816 n).toNat

end

end A267735.P9474089558457945717

/-! ## A267735.P4170111874728246592

`A189161(n+1)-A288216(A066592(n+1))`
-/

namespace A267735.P4170111874728246592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189161 (n + 1) - A288216 (A066592 (n + 1)).toNat

end

end A267735.P4170111874728246592

/-! ## A267735.P17216593960439359363

`A189779(n+1)-A288216(A066592(n+1))`
-/

namespace A267735.P17216593960439359363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189779 (n + 1) - A288216 (A066592 (n + 1)).toNat

end

end A267735.P17216593960439359363

/-!
# A267736: Number of n X n arrays containing n copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267736, there is no canonical definition to state claims against.
-/

/-! ## A267736.P6364469453303005861

`A267655(∑[4*n]+1)`
-/

namespace A267736.P6364469453303005861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267736.P6364469453303005861

/-! ## A267736.P15337871460856795956

`A267742(∑[4*n]+1)`
-/

namespace A267736.P15337871460856795956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267736.P15337871460856795956

/-! ## A267736.P5954223471165537758

`∑{digits}[n, A267742(A001844(#))]`
-/

namespace A267736.P5954223471165537758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A267742 (A001844 x).toNat).sum

end

end A267736.P5954223471165537758

/-! ## A267736.P6863982597040136337

`record[A267655(Δ[A235355(n)])]`
-/

namespace A267736.P6863982597040136337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267736.P6863982597040136337

/-!
# A267737: Number of nX3 arrays containing 3 copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267737, there is no canonical definition to state claims against.
-/

/-! ## A267737.P17762277114030070727

`A267742(∑[n+3]+1)`
-/

namespace A267737.P17762277114030070727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267737.P17762277114030070727

/-! ## A267737.P14203778282565162960

`record[A267742(n+1)/A132159(n+2)]`
-/

namespace A267737.P14203778282565162960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267742 (n + 1) : ℚ) / (A132159 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267737.P14203778282565162960

/-! ## A267737.P6691425813657550551

`record[A267742(n+1)/A136124(n+4)]`
-/

namespace A267737.P6691425813657550551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267742 (n + 1) : ℚ) / (A136124 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267737.P6691425813657550551

/-! ## A267737.P12864272028729195408

`record[gcd(A267742(n+1), A285229(n+3))]`
-/

namespace A267737.P12864272028729195408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267742 (n + 1)) (A285229 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267737.P12864272028729195408

/-! ## A267737.P9406757608534157340

`A267742(A052905(n)+3)-A065718(n)`
-/

namespace A267737.P9406757608534157340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A052905 n + 3).toNat - A065718 n

end

end A267737.P9406757608534157340

/-!
# A267738: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267738, there is no canonical definition to state claims against.
-/

/-! ## A267738.P9778198237004938838

`A267742(∑[n+4]+3)`
-/

namespace A267738.P9778198237004938838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267738.P9778198237004938838

/-! ## A267738.P14956814790168966112

`-xor(A267742(A027379(n+2))-1, -1)`
-/

namespace A267738.P14956814790168966112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A267742 (A027379 (n + 2)).toNat - 1) (-1)

end

end A267738.P14956814790168966112

/-! ## A267738.P18241852605387753840

`A267742(A027379(n+2))%A060355(n+1)`
-/

namespace A267738.P18241852605387753840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267742 (A027379 (n + 2)).toNat) (A060355 (n + 1))

end

end A267738.P18241852605387753840

/-!
# A267739: Number of nX5 arrays of permutations of 5 copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267739, there is no canonical definition to state claims against.
-/

/-! ## A267739.P17690105705257139644

`A267742(Δ[A264443(n)])`
-/

namespace A267739.P17690105705257139644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (f1 (n + 1) - f1 n).toNat

end

end A267739.P17690105705257139644

/-! ## A267739.P11988637928422526921

`A267742(A046691(n+3))`
-/

namespace A267739.P11988637928422526921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A046691 (n + 3)).toNat

end

end A267739.P11988637928422526921

/-! ## A267739.P7673131543079502200

`A267742(A056115(n)+11)`
-/

namespace A267739.P7673131543079502200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A056115 n + 11).toNat

end

end A267739.P7673131543079502200

/-! ## A267739.P7361807377098114656

`A267742(eq[2, A092921(n)])`
-/

namespace A267739.P7361807377098114656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267739.P7361807377098114656

/-! ## A267739.P1561911419471924743

`A267742(eq[3, A274190(n)])`
-/

namespace A267739.P1561911419471924743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267739.P1561911419471924743

/-!
# A267740: Number of nX6 arrays of permutations of 6 copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267740, there is no canonical definition to state claims against.
-/

/-! ## A267740.P5283377064177440734

`A267742(A052905(n+3))`
-/

namespace A267740.P5283377064177440734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A052905 (n + 3)).toNat

end

end A267740.P5283377064177440734

/-! ## A267740.P9596026285942815526

`A267742(A056119(n)+16)`
-/

namespace A267740.P9596026285942815526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A056119 n + 16).toNat

end

end A267740.P9596026285942815526

/-! ## A267740.P3069575796578671648

`A267742(eq[3, A219347(n)])`
-/

namespace A267740.P3069575796578671648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267740.P3069575796578671648

/-! ## A267740.P6892664748658393667

`A267742(eq[5, A193592(n)])`
-/

namespace A267740.P6892664748658393667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267740.P6892664748658393667

/-! ## A267740.P15536933306859724914

`A267742(eq[8, A258709(n)])`
-/

namespace A267740.P15536933306859724914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267740.P15536933306859724914

/-!
# A267741: Number of nX7 arrays of permutations of 7 copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267741, there is no canonical definition to state claims against.
-/

/-! ## A267741.P5813804433409250707

`A267742(A055999(n+4))`
-/

namespace A267741.P5813804433409250707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A055999 (n + 4)).toNat

end

end A267741.P5813804433409250707

/-! ## A267741.P16486862580955376004

`A267742(eq[4, A219347(n)])`
-/

namespace A267741.P16486862580955376004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267741.P16486862580955376004

/-! ## A267741.P12491115025097160571

`A267742(eq[6, A193592(n)])`
-/

namespace A267741.P12491115025097160571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267741.P12491115025097160571

/-! ## A267741.P14147330059053774653

`A267742(A155212(n+3)+2)`
-/

namespace A267741.P14147330059053774653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A155212 (n + 3) + 2).toNat

end

end A267741.P14147330059053774653

/-! ## A267741.P3210563397478143801

`A267742(A056000(n+3)+4)`
-/

namespace A267741.P3210563397478143801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A056000 (n + 3) + 4).toNat

end

end A267741.P3210563397478143801

/-!
# A267742: T(n,k)=Number of nXk arrays containing k copies of 0..n-1 with every element equal to or 1 greater than any west or northeast neighbors modulo n and the upper left element equal to 0.

The programs for A267742, there is no canonical definition to state claims against.
-/

/-! ## A267742.P16295360250068193416

`A267278(A043317(n+1))-char[8]`
-/

namespace A267742.P16295360250068193416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A043317 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267742.P16295360250068193416

/-! ## A267742.P4069892703328655382

`A267278(A044914(n+1))-char[8]`
-/

namespace A267742.P4069892703328655382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267278 (A044914 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267742.P4069892703328655382

/-! ## A267742.P11558759896788429596

`A267425(n+1)^A229243(n)!`
-/

namespace A267742.P11558759896788429596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267425 (n + 1) ^ Nat.factorial (A229243 n).toNat

end

end A267742.P11558759896788429596

/-! ## A267742.P1938183423783349621

`A267562(n+1)^A229243(n)!`
-/

namespace A267742.P1938183423783349621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267562 (n + 1) ^ Nat.factorial (A229243 n).toNat

end

end A267742.P1938183423783349621

/-! ## A267742.P15482964962584229504

`A339170(A090657(n))+A267425(n+1)`
-/

namespace A267742.P15482964962584229504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339170 (A090657 n).toNat + A267425 (n + 1)

end

end A267742.P15482964962584229504

/-!
# A267743: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any west or northeast neighbors modulo 4 and the upper left element equal to 0.

The programs for A267743, there is no canonical definition to state claims against.
-/

/-! ## A267743.P17659856170124649750

`A267742(∑[n+3]+7)`
-/

namespace A267743.P17659856170124649750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267743.P17659856170124649750

/-!
# A267744: Number of 5 X n arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any west or northeast neighbors modulo 5 and the upper left element equal to 0.

The programs for A267744, there is no canonical definition to state claims against.
-/

/-! ## A267744.P1977686640658528831

`A267742(∑[n+4]+11)`
-/

namespace A267744.P1977686640658528831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A267744.P1977686640658528831

/-!
# A267745: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any west or northeast neighbors modulo 6 and the upper left element equal to 0.

The programs for A267745, there is no canonical definition to state claims against.
-/

/-! ## A267745.P9678280562638264117

`A267742(A056115(n)+21)`
-/

namespace A267745.P9678280562638264117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A056115 n + 21).toNat

end

end A267745.P9678280562638264117

/-! ## A267745.P9808022085795698825

`A267742(A167499(n+4)+1)`
-/

namespace A267745.P9808022085795698825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A167499 (n + 4) + 1).toNat

end

end A267745.P9808022085795698825

/-! ## A267745.P11670277624216394761

`A267742(A167614(n+4)+3)`
-/

namespace A267745.P11670277624216394761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A167614 (n + 4) + 3).toNat

end

end A267745.P11670277624216394761

/-! ## A267745.P13750716700893088329

`A267742(A141214(n+2)+9)`
-/

namespace A267745.P13750716700893088329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A141214 (n + 2) + 9).toNat

end

end A267745.P13750716700893088329

/-! ## A267745.P18054205573321242962

`A267742(A056000(n+1)+16)`
-/

namespace A267745.P18054205573321242962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A056000 (n + 1) + 16).toNat

end

end A267745.P18054205573321242962

/-!
# A267746: Number of 7Xn arrays containing n copies of 0..7-1 with every element equal to or 1 greater than any west or northeast neighbors modulo 7 and the upper left element equal to 0.

The programs for A267746, there is no canonical definition to state claims against.
-/

/-! ## A267746.P7908331938073357060

`A267742(A167487(n+5))`
-/

namespace A267746.P7908331938073357060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A167487 (n + 5)).toNat

end

end A267746.P7908331938073357060

/-! ## A267746.P1217539103448590275

`A267742(A056119(n)+28)`
-/

namespace A267746.P1217539103448590275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A056119 n + 28).toNat

end

end A267746.P1217539103448590275

/-! ## A267746.P13443359185198542365

`A267742(eq[11, A066657(n)])`
-/

namespace A267746.P13443359185198542365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267746.P13443359185198542365

/-! ## A267746.P12193529831640332741

`A267742(A000217(n+6)+7)`
-/

namespace A267746.P12193529831640332741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A000217 (n + 6) + 7).toNat

end

end A267746.P12193529831640332741

/-! ## A267746.P8411602194470190216

`A267742(A027379(n+4)+10)`
-/

namespace A267746.P8411602194470190216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267742 (A027379 (n + 4) + 10).toNat

end

end A267746.P8411602194470190216

/-!
# A267747: Numbers k such that k mod 2 = k mod 3 = k mod 5.

The programs for A267747, the canonical program `A267747.P12235881720017324975` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267747 has offset 1).

The definition of A267747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267747.P12235881720017324975

`15*(n+1)-7*(-1)^(n+1)-22`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267747

/-- `15*(n+1)-7*(-1)^(n+1)-22` -/
def P12235881720017324975.Spec : Prop :=
  ∀ n, P12235881720017324975.a n = A267747 (n + 1)

theorem P12235881720017324975.correct : P12235881720017324975.Spec := by
  intro n
  simp only [A267747, Nat.add_sub_cancel]

end A267747

/-! ## A267747.P8355814624606718748

`∑[C(29, a(n-1))]` with `a(0)=0`
-/

namespace A267747.P8355814624606718748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 29 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267747.P8355814624606718748

namespace A267747

/-- `∑[C(29, a(n-1))]` -/
def P8355814624606718748.Spec : Prop :=
  ∀ n, (P8355814624606718748.a n : ℤ) = A267747 (n + 1)

end A267747

/-! ## A267747.P17149821367876004638

`∑[30-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A267747.P17149821367876004638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267747.P17149821367876004638

namespace A267747

/-- `∑[30-a(n-1)]` -/
def P17149821367876004638.Spec : Prop :=
  ∀ n, P17149821367876004638.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P5643647998336355025

`∑[A010945(a(n-1))]` with `a(0)=0`
-/

namespace A267747.P5643647998336355025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010945 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267747.P5643647998336355025

namespace A267747

/-- `∑[A010945(a(n-1))]` -/
def P5643647998336355025.Spec : Prop :=
  ∀ n, P5643647998336355025.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P10360501231939036914

`∪[A128470(n), A249674(n)]`
-/

namespace A267747.P10360501231939036914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267747.P10360501231939036914

namespace A267747

/-- `∪[A128470(n), A249674(n)]` -/
def P10360501231939036914.Spec : Prop :=
  ∀ n, (P10360501231939036914.a n : ℤ) = A267747 (n + 1)

end A267747

/-! ## A267747.P18032580607751681581

`∑[A014963(A161714(a(n-1)))]` with `a(0)=0`
-/

namespace A267747.P18032580607751681581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A014963 (A161714 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267747.P18032580607751681581

namespace A267747

/-- `∑[A014963(A161714(a(n-1)))]` -/
def P18032580607751681581.Spec : Prop :=
  ∀ n, P18032580607751681581.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P3848910618397389020

`∪[A008597(2*n)+1, A008597(2*n)]`
-/

namespace A267747.P3848910618397389020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A267747.P3848910618397389020

namespace A267747

/-- `∪[A008597(2*n)+1, A008597(2*n)]` -/
def P3848910618397389020.Spec : Prop :=
  ∀ n, (P3848910618397389020.a n : ℤ) = A267747 (n + 1)

end A267747

/-! ## A267747.P4113026432970732127

`A197652(A047239(n+1))`
-/

namespace A267747.P4113026432970732127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (A047239 (n + 1)).toNat

end

end A267747.P4113026432970732127

namespace A267747

/-- `A197652(A047239(n+1))` -/
def P4113026432970732127.Spec : Prop :=
  ∀ n, P4113026432970732127.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P11460706723629198878

`A197652(A047225(n+1)+1)`
-/

namespace A267747.P11460706723629198878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (A047225 (n + 1) + 1).toNat

end

end A267747.P11460706723629198878

namespace A267747

/-- `A197652(A047225(n+1)+1)` -/
def P11460706723629198878.Spec : Prop :=
  ∀ n, P11460706723629198878.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P16068733143072440919

`A267711(A047225(n+1)+1)`
-/

namespace A267747.P16068733143072440919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (A047225 (n + 1) + 1).toNat

end

end A267747.P16068733143072440919

namespace A267747

/-- `A267711(A047225(n+1)+1)` -/
def P16068733143072440919.Spec : Prop :=
  ∀ n, P16068733143072440919.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P14717970154517919178

`filter[A197652(n+1), A380484(#)]`
-/

namespace A267747.P14717970154517919178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A267747.P14717970154517919178

namespace A267747

/-- `filter[A197652(n+1), A380484(#)]` -/
def P14717970154517919178.Spec : Prop :=
  ∀ n, P14717970154517919178.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P15376982766100572119

`A197652(A047476(2*(n+1))-n)`
-/

namespace A267747.P15376982766100572119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (A047476 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A267747.P15376982766100572119

namespace A267747

/-- `A197652(A047476(2*(n+1))-n)` -/
def P15376982766100572119.Spec : Prop :=
  ∀ n, P15376982766100572119.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P14597078814458026035

`∩[A197652(n+1), A267711(n+1)]`
-/

namespace A267747.P14597078814458026035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267747.P14597078814458026035

namespace A267747

/-- `∩[A197652(n+1), A267711(n+1)]` -/
def P14597078814458026035.Spec : Prop :=
  ∀ n, (P14597078814458026035.a n : ℤ) = A267747 (n + 1)

end A267747

/-! ## A267747.P15243401985461368917

`∩[A197652(n+1), A380485(n+1)]`
-/

namespace A267747.P15243401985461368917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267747.P15243401985461368917

namespace A267747

/-- `∩[A197652(n+1), A380485(n+1)]` -/
def P15243401985461368917.Spec : Prop :=
  ∀ n, (P15243401985461368917.a n : ℤ) = A267747 (n + 1)

end A267747

/-! ## A267747.P6172813526038799023

`A197652(A260181(2*n+1)-(2*n+1))`
-/

namespace A267747.P6172813526038799023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (A260181 (2 * n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A267747.P6172813526038799023

namespace A267747

/-- `A197652(A260181(2*n+1)-(2*n+1))` -/
def P6172813526038799023.Spec : Prop :=
  ∀ n, P6172813526038799023.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P18344207814916238731

`A151972(A047468(n+1))`
-/

namespace A267747.P18344207814916238731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151972 (A047468 (n + 1)).toNat

end

end A267747.P18344207814916238731

namespace A267747

/-- `A151972(A047468(n+1))` -/
def P18344207814916238731.Spec : Prop :=
  ∀ n, P18344207814916238731.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P252798341071295940

`A151972(A047393(n+1)+1)`
-/

namespace A267747.P252798341071295940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151972 (A047393 (n + 1) + 1).toNat

end

end A267747.P252798341071295940

namespace A267747

/-- `A151972(A047393(n+1)+1)` -/
def P252798341071295940.Spec : Prop :=
  ∀ n, P252798341071295940.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P7666249884963972591

`filter[A151972(n+1), A380484(#)]`
-/

namespace A267747.P7666249884963972591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A267747.P7666249884963972591

namespace A267747

/-- `filter[A151972(n+1), A380484(#)]` -/
def P7666249884963972591.Spec : Prop :=
  ∀ n, P7666249884963972591.a n = A267747 (n + 1)

end A267747

/-! ## A267747.P14290392431248237133

`∩[A151972(n+1), A380485(n+1)]`
-/

namespace A267747.P14290392431248237133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267747.P14290392431248237133

namespace A267747

/-- `∩[A151972(n+1), A380485(n+1)]` -/
def P14290392431248237133.Spec : Prop :=
  ∀ n, (P14290392431248237133.a n : ℤ) = A267747 (n + 1)

end A267747

/-!
# A267748: Number of n X 3 arrays containing 3 copies of 0..n-1 with every element equal to or 1 greater than any north neighbor modulo n and the upper left element equal to 0.

The programs for A267748, there is no canonical definition to state claims against.
-/

/-! ## A267748.P12558264369982278699

`A267751(∑[n+3]+1)`
-/

namespace A267748.P12558264369982278699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267748.P12558264369982278699

/-! ## A267748.P14200951214168333229

`record[A267751(A130297(n+1))]`
-/

namespace A267748.P14200951214168333229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267748.P14200951214168333229

/-! ## A267748.P11322451288836000341

`record[A267751(gcd(n, A008290(n)))]`
-/

namespace A267748.P11322451288836000341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (Int.gcd (n : ℤ) (A008290 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267748.P11322451288836000341

/-! ## A267748.P10868526034581218985

`and(-1, A267751(A034856(n+2)))`
-/

namespace A267748.P10868526034581218985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A267751 (A034856 (n + 2)).toNat)

end

end A267748.P10868526034581218985

/-! ## A267748.P17832060278348358390

`record[gcd(A158285(n), A267751(n+1))]`
-/

namespace A267748.P17832060278348358390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158285 n) (A267751 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267748.P17832060278348358390

/-!
# A267749: Number of nX4 arrays of permutations of 4 copies of 0..n-1 with every element equal to or 1 greater than any north neighbor modulo n and the upper left element equal to 0.

The programs for A267749, there is no canonical definition to state claims against.
-/

/-! ## A267749.P11558083244302905151

`A267751(∑[n+4]+3)`
-/

namespace A267749.P11558083244302905151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267749.P11558083244302905151

/-! ## A267749.P8141403560900452980

`record[gcd(A008290(n+2), A267751(n+1))]`
-/

namespace A267749.P8141403560900452980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 (n + 2)) (A267751 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267749.P8141403560900452980

/-!
# A267750: Number of nX5 arrays of permutations of 5 copies of 0..n-1 with every element equal to or 1 greater than any north neighbor modulo n and the upper left element equal to 0.

The programs for A267750, there is no canonical definition to state claims against.
-/

/-! ## A267750.P7820862431649010338

`A267751(Δ[A264443(n)])`
-/

namespace A267750.P7820862431649010338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (f1 (n + 1) - f1 n).toNat

end

end A267750.P7820862431649010338

/-! ## A267750.P9225477539200403956

`A267751(A046691(n+3))`
-/

namespace A267750.P9225477539200403956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A046691 (n + 3)).toNat

end

end A267750.P9225477539200403956

/-! ## A267750.P17487768684608560037

`A267751(eq[2, A092921(n)])`
-/

namespace A267750.P17487768684608560037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267750.P17487768684608560037

/-!
# A267752: Number of 4Xn arrays containing n copies of 0..4-1 with every element equal to or 1 greater than any north neighbor modulo 4 and the upper left element equal to 0.

The programs for A267752, there is no canonical definition to state claims against.
-/

/-! ## A267752.P6724561064879391761

`A267751(∑[n+3]+7)`
-/

namespace A267752.P6724561064879391761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267752.P6724561064879391761

/-!
# A267753: Number of 5Xn arrays containing n copies of 0..5-1 with every element equal to or 1 greater than any north neighbor modulo 5 and the upper left element equal to 0.

The programs for A267753, there is no canonical definition to state claims against.
-/

/-! ## A267753.P807556028281776930

`A267751(A167499(n+3))`
-/

namespace A267753.P807556028281776930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A167499 (n + 3)).toNat

end

end A267753.P807556028281776930

/-! ## A267753.P1163846061443637688

`A267751(A155212(n)+13)`
-/

namespace A267753.P1163846061443637688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A155212 n + 13).toNat

end

end A267753.P1163846061443637688

/-! ## A267753.P10194856910671850810

`A267751(A056000(n)+15)`
-/

namespace A267753.P10194856910671850810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A056000 n + 15).toNat

end

end A267753.P10194856910671850810

/-! ## A267753.P4395192084694401032

`A267751(eq[7, A066657(n)])`
-/

namespace A267753.P4395192084694401032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267753.P4395192084694401032

/-!
# A267754: Number of 6Xn arrays containing n copies of 0..6-1 with every element equal to or 1 greater than any north neighbor modulo 6 and the upper left element equal to 0.

The programs for A267754, there is no canonical definition to state claims against.
-/

/-! ## A267754.P10028793186349391764

`A267751(A166136(n+4))`
-/

namespace A267754.P10028793186349391764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A166136 (n + 4)).toNat

end

end A267754.P10028793186349391764

/-! ## A267754.P11086780083683088874

`A267751(A056115(n)+21)`
-/

namespace A267754.P11086780083683088874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A056115 n + 21).toNat

end

end A267754.P11086780083683088874

/-! ## A267754.P15998893613682344900

`A267751(A167499(n+4)+1)`
-/

namespace A267754.P15998893613682344900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267751 (A167499 (n + 4) + 1).toNat

end

end A267754.P15998893613682344900

/-!
# A267755: Expansion of (1 + 2*x + x^2 + x^3 + 4*x^4 + 2*x^5)/(1 - x - x^5 + x^6).

The programs for A267755, the canonical program `A267755.P15728140447281808493` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267755 has offset 0).

The definition of A267755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267755.P15728140447281808493

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=9, a(5)=12`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267755

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P15728140447281808493.Spec : Prop :=
  ∀ n, P15728140447281808493.a n = A267755 n

theorem P15728140447281808493.correct : P15728140447281808493.Spec := by
  intro n
  simp only [A267755]

end A267755

/-! ## A267755.P14666287557163233569

`n+1+2*floor(n/5)+3*floor((n+1)/5)+floor((n+4)/5)`
-/

namespace A267755.P14666287557163233569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + 2 * ⌊(n : ℚ) / 5⌋) + 3 * ⌊(n + 1 : ℚ) / 5⌋ + ⌊(n + 4 : ℚ) / 5⌋

end

end A267755.P14666287557163233569

namespace A267755

/-- `n+1+2*floor(n/5)+3*floor((n+1)/5)+floor((n+4)/5)` -/
def P14666287557163233569.Spec : Prop :=
  ∀ n, P14666287557163233569.a n = A267755 n

end A267755

/-! ## A267755.P15960993085849741856

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=4, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A267755.P15960993085849741856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 4, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267755.P15960993085849741856

namespace A267755

/-- `∑[floor(a(n-5))]` -/
def P15960993085849741856.Spec : Prop :=
  ∀ n, (P15960993085849741856.a n : ℤ) = A267755 n

end A267755

/-! ## A267755.P5223478108794917269

`record[A267541(n)/A020639(A267541(n))]`
-/

namespace A267755.P5223478108794917269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267541 n : ℚ) / (A020639 (A267541 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267755.P5223478108794917269

namespace A267755

/-- `record[A267541(n)/A020639(A267541(n))]` -/
def P5223478108794917269.Spec : Prop :=
  ∀ n, P5223478108794917269.a n = (A267755 n : ℚ)

end A267755

/-! ## A267755.P14065004790975016856

`lt[n, A011582(n)+n]`
-/

namespace A267755.P14065004790975016856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267755.P14065004790975016856

namespace A267755

/-- `lt[n, A011582(n)+n]` -/
def P14065004790975016856.Spec : Prop :=
  ∀ n, (P14065004790975016856.a n : ℤ) = A267755 n

end A267755

/-! ## A267755.P12108656307920374850

`eq[A011582(n), A329684(n)]`
-/

namespace A267755.P12108656307920374850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267755.P12108656307920374850

namespace A267755

/-- `eq[A011582(n), A329684(n)]` -/
def P12108656307920374850.Spec : Prop :=
  ∀ n, (P12108656307920374850.a n : ℤ) = A267755 n

end A267755

/-! ## A267755.P13603924486731242573

`eq[A070596(n), A329684(n)]`
-/

namespace A267755.P13603924486731242573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267755.P13603924486731242573

namespace A267755

/-- `eq[A070596(n), A329684(n)]` -/
def P13603924486731242573.Spec : Prop :=
  ∀ n, (P13603924486731242573.a n : ℤ) = A267755 n

end A267755

/-! ## A267755.P5930133941406810403

`lt[A025438(n), n*A011582(n)]`
-/

namespace A267755.P5930133941406810403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267755.P5930133941406810403

namespace A267755

/-- `lt[A025438(n), n*A011582(n)]` -/
def P5930133941406810403.Spec : Prop :=
  ∀ n, (P5930133941406810403.a n : ℤ) = A267755 n

end A267755

/-! ## A267755.P10744451427699451387

`eq[A011582(n)*A260196(n), A260196(n)]`
-/

namespace A267755.P10744451427699451387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n * A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267755.P10744451427699451387

namespace A267755

/-- `eq[A011582(n)*A260196(n), A260196(n)]` -/
def P10744451427699451387.Spec : Prop :=
  ∀ n, (P10744451427699451387.a n : ℤ) = A267755 n

end A267755

/-!
# A267756: Indices of Euclid numbers (A006862) of the form x^2 + y^2 + z^2 where x, y and z are integers.

The programs for A267756, there is no canonical definition to state claims against.
-/

/-! ## A267756.P5070759928339120153

`lt[A036467(n)%4, 2]`
-/

namespace A267756.P5070759928339120153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036467 n) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A267756.P5070759928339120153

/-! ## A267756.P10759248362986839770

`eq[0, and(2, -A242188(n))]`
-/

namespace A267756.P10759248362986839770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A242188 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267756.P10759248362986839770

/-! ## A267756.P5407633178649509951

`eq[0, and(2, A007504(n)-n)]`
-/

namespace A267756.P5407633178649509951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A007504 n - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267756.P5407633178649509951

/-! ## A267756.P9068001100186223578

`record[n*floor(A126084(n)%4/2)]`
-/

namespace A267756.P9068001100186223578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(Int.tmod (A126084 n) 4 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267756.P9068001100186223578

/-! ## A267756.P4176782737569360564

`lt[(A000040(n)-a(n-1))%4, 2]` with `a(0)=1`
-/

namespace A267756.P4176782737569360564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (A000040 n - f1 (n - 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A267756.P4176782737569360564

/-! ## A267756.P13272192692987458901

`eq[0, and(2, A006005(n)-a(n-1))]` with `a(0)=0`
-/

namespace A267756.P13272192692987458901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.land 2 (A006005 n - f2 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267756.P13272192692987458901

/-! ## A267756.P1069985993571437397

`eq[0, A021913(A036467(n))]`
-/

namespace A267756.P1069985993571437397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A036467 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267756.P1069985993571437397

/-! ## A267756.P4028418228498796170

`lt[1, A340867(A028310(n))]`
-/

namespace A267756.P4028418228498796170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340867 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A267756.P4028418228498796170

/-! ## A267756.P12145869595151483947

`record[n*A021913(A008347(n))]`
-/

namespace A267756.P12145869595151483947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A021913 (A008347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267756.P12145869595151483947

/-! ## A267756.P15289395863896594758

`eq[3, A153310(and(a(n-1), A000040(n)))]` with `a(0)=3`
-/

namespace A267756.P15289395863896594758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A153310 (Int.land (f2 (n - 1)) (A000040 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267756.P15289395863896594758

/-!
# A267757: Number of terms of A072873 less than or equal to 10^n.

The programs for A267757, there is no canonical definition to state claims against.
-/

/-! ## A267757.P1152955027857464843

`A124157(n+1)+A024787(n+5)`
-/

namespace A267757.P1152955027857464843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124157 (n + 1) + A024787 (n + 5)

end

end A267757.P1152955027857464843

/-! ## A267757.P7305072130814599421

`A339304(A006952(n))+A002623(n)`
-/

namespace A267757.P7305072130814599421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339304 (A006952 n).toNat + A002623 n

end

end A267757.P7305072130814599421

/-! ## A267757.P917379903492058077

`A268317(A353723(2*(n+1)))+A002623(n)`
-/

namespace A267757.P917379903492058077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268317 (A353723 (2 * (n + 1))).toNat + A002623 n

end

end A267757.P917379903492058077

/-! ## A267757.P14474762401028910713

`A112310(A326025(3*(n+1)))+A095944(n+1)`
-/

namespace A267757.P14474762401028910713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A326025 (3 * (n + 1))).toNat + A095944 (n + 1)

end

end A267757.P14474762401028910713

/-!
# A267759: Numbers of the form 10k+u where 0 <= u <= 9 and k has a digit > u or a digit 1 followed by a digit < u.

The programs for A267759, there is no canonical definition to state claims against.
-/

/-! ## A267759.P4323369736546934249

`comp[A355222(A033619(n+1))]`
-/

namespace A267759.P4323369736546934249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (A033619 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A267759.P4323369736546934249

/-! ## A267759.P6754612392591201736

`lt[A321537(n), atan(A076313(n))]`
-/

namespace A267759.P6754612392591201736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A076313 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A267759.P6754612392591201736

/-! ## A267759.P6504363995850315192

`lt[n-A151950(n), A355221(n)]`
-/

namespace A267759.P6504363995850315192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A151950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267759.P6504363995850315192

/-! ## A267759.P7368136657941741591

`lt[A182324(A004086(n)), A355224(n)]`
-/

namespace A267759.P7368136657941741591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267759.P7368136657941741591

/-! ## A267759.P11939674776612975263

`comp[A108782(A087019(n))+A004185(n)]`
-/

namespace A267759.P11939674776612975263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A087019 n).toNat + A004185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A267759.P11939674776612975263

/-! ## A267759.P14632893745294631531

`lt[A340479(n), A355224(n)+A193581(n)]`
-/

namespace A267759.P14632893745294631531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355224 n + A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267759.P14632893745294631531

/-! ## A267759.P216312994297767076

`comp[A108782(A087019(n))+A070196(n)-n]`
-/

namespace A267759.P216312994297767076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 (A087019 n).toNat + (A070196 n - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A267759.P216312994297767076

/-! ## A267759.P5102331546508627162

`eq[16, and(16, A213217(n))]`
-/

namespace A267759.P5102331546508627162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 16 (A213217 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267759.P5102331546508627162

/-! ## A267759.P13188692566286276787

`eq[0, A039964(A213217(n))]`
-/

namespace A267759.P13188692566286276787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267759.P13188692566286276787

/-! ## A267759.P5105694667159561200

`lt[A307651(n), A347689(n)]`
-/

namespace A267759.P5105694667159561200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267759.P5105694667159561200

/-!
# A267761: Records in A267760 (last digit of a(n) + first digit of a(n+1) occurs as substring in a(n+1)).

The programs for A267761, there is no canonical definition to state claims against.
-/

/-! ## A267761.P11335140155905099008

`record[A267760(n)]`
-/

namespace A267761.P11335140155905099008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267761.P11335140155905099008

/-! ## A267761.P5163702584598645473

`A267760(A267762(n+1)%A129804(n))`
-/

namespace A267761.P5163702584598645473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 (Int.tmod (A267762 (n + 1)) (A129804 n)).toNat

end

end A267761.P5163702584598645473

/-! ## A267761.P15256337309757166743

`A001055(A082244(n))*A267760(A267762(n+1))`
-/

namespace A267761.P15256337309757166743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A082244 n).toNat * A267760 (A267762 (n + 1)).toNat

end

end A267761.P15256337309757166743

/-! ## A267761.P10629604005963026435

`A267760(A267762(n+1))%A000045(A141214(n))`
-/

namespace A267761.P10629604005963026435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267760 (A267762 (n + 1)).toNat) (A000045 (A141214 n).toNat)

end

end A267761.P10629604005963026435

/-! ## A267761.P1459496292904255903

`A267760(∪[A267741(n+1), A267762(n+1)])`
-/

namespace A267761.P1459496292904255903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267762 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A267761.P1459496292904255903

/-!
# A267762: Indices of records in A267760 (last digit of a(n) + first digit of a(n+1) occurs as substring in a(n+1)).

The programs for A267762, there is no canonical definition to state claims against.
-/

/-! ## A267762.P10337011119464164035

`lt[A024924(n+1), A023889(A002113(3*n+5))]`
-/

namespace A267762.P10337011119464164035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (A002113 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267762.P10337011119464164035

/-! ## A267762.P4652399372821676765

`lt[A003415(A086062(n+1)), A345794(3*n+1)]`
-/

namespace A267762.P4652399372821676765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A086062 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345794 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267762.P4652399372821676765

/-! ## A267762.P4140021135749915293

`lt[A052410(A001156(2*n+3)), A052410(2*n+5)]`
-/

namespace A267762.P4140021135749915293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A001156 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267762.P4140021135749915293

/-!
# A267763: Numbers whose base-3 representation is a square when read in base 10.

The programs for A267763, there is no canonical definition to state claims against.
-/

/-! ## A267763.P9864433424717908371

`eq[0, A262678(A007089(n))]`
-/

namespace A267763.P9864433424717908371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A007089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267763.P9864433424717908371

/-! ## A267763.P5909127467138689254

`eq[A018796(A343810(n)), A343810(n)]`
-/

namespace A267763.P5909127467138689254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A343810 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267763.P5909127467138689254

/-! ## A267763.P12697224996055857455

`eq[A033684(A007089(n)), A071178(n+1)]`
-/

namespace A267763.P12697224996055857455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A007089 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267763.P12697224996055857455

/-! ## A267763.P7785754913837313516

`eq[A120263(n+1), A169695(A007089(n))]`
-/

namespace A267763.P7785754913837313516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A007089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267763.P7785754913837313516

/-!
# A267764: Numbers whose base-4 representation is a square when read in base 10.

The programs for A267764, there is no canonical definition to state claims against.
-/

/-! ## A267764.P411640254457427308

`eq[A007090(n), A018796(A007090(n))]`
-/

namespace A267764.P411640254457427308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267764.P411640254457427308

/-! ## A267764.P2094206854213878301

`eq[21, or(21, n)]²`
-/

namespace A267764.P2094206854213878301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 21 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A267764.P2094206854213878301

/-! ## A267764.P8727047000389001124

`record[and(21, round(sqrt(n+1))-1)]²`
-/

namespace A267764.P8727047000389001124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 21 (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A267764.P8727047000389001124

/-! ## A267764.P13001736316632180405

`record[and(n, ∏[2^n+1]/2-2)²]`
-/

namespace A267764.P13001736316632180405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2 - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267764.P13001736316632180405

/-!
# A267765: Numbers whose base-5 representation is a square when read in base 10.

The programs for A267765, there is no canonical definition to state claims against.
-/

/-! ## A267765.P5389136173300439477

`eq[1, A169695(A007091(n))]`
-/

namespace A267765.P5389136173300439477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267765.P5389136173300439477

/-! ## A267765.P14711686852646317630

`eq[A002828(A007091(n)), A057427(n)]`
-/

namespace A267765.P14711686852646317630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007091 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267765.P14711686852646317630

/-! ## A267765.P1631231433196534387

`A028900(A158082(n+1))`
-/

namespace A267765.P1631231433196534387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A158082 (n + 1)).toNat

end

end A267765.P1631231433196534387

/-! ## A267765.P15292264971143918337

`A028900(∩[n², A007091(n)])`
-/

namespace A267765.P15292264971143918337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A267765.P15292264971143918337

/-!
# A267766: Numbers whose base-6 representation is a square when read in base 10.

The programs for A267766, there is no canonical definition to state claims against.
-/

/-! ## A267766.P12135830989464208697

`eq[A007092(n), A018796(A007092(n))]`
-/

namespace A267766.P12135830989464208697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267766.P12135830989464208697

/-! ## A267766.P9189111443526916673

`eq[A002828(A007092(n)), A267084(n+1)]`
-/

namespace A267766.P9189111443526916673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007092 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267766.P9189111443526916673

/-! ## A267766.P13528200316311294828

`eq[0, A053186(A007092(n))]`
-/

namespace A267766.P13528200316311294828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267766.P13528200316311294828

/-! ## A267766.P15814542888622365047

`eq[A008835(n+1), A010052(A007092(n))]`
-/

namespace A267766.P15814542888622365047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267766.P15814542888622365047

/-!
# A267767: Numbers whose base-7 representation is a square when read in base 10.

The programs for A267767, there is no canonical definition to state claims against.
-/

/-! ## A267767.P6842941357511651689

`eq[A002828(A007093(n)), A057427(n)]`
-/

namespace A267767.P6842941357511651689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267767.P6842941357511651689

/-! ## A267767.P13348860550502723063

`eq[1, A010052(A007093(n))]`
-/

namespace A267767.P13348860550502723063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267767.P13348860550502723063

/-! ## A267767.P5941482246399604802

`eq[A000007(n), A267635(A007093(n))]`
-/

namespace A267767.P5941482246399604802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267767.P5941482246399604802

/-! ## A267767.P5525772902027300286

`eq[A000122(A007093(n)), A130335(n+1)]`
-/

namespace A267767.P5525772902027300286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A007093 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267767.P5525772902027300286

/-!
# A267768: Numbers whose base-8 representation is a square when read in base 10.

The programs for A267768, there is no canonical definition to state claims against.
-/

/-! ## A267768.P7921681591326345420

`eq[A002828(A007094(n)), A057427(n)]`
-/

namespace A267768.P7921681591326345420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A007094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267768.P7921681591326345420

/-! ## A267768.P8595917981187703831

`eq[0, A053186(A007094(n))]`
-/

namespace A267768.P8595917981187703831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267768.P8595917981187703831

/-! ## A267768.P513905644212778731

`A028903(∩[n², A007094(n)])`
-/

namespace A267768.P513905644212778731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A267768.P513905644212778731

/-! ## A267768.P13516303733517991495

`eq[A002448(A007094(n)), A280560(n)]`
-/

namespace A267768.P13516303733517991495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A007094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267768.P13516303733517991495

/-! ## A267768.P11401423856839647316

`eq[A056191(n+1), A249111(A007094(n))]`
-/

namespace A267768.P11401423856839647316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249111 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267768.P11401423856839647316

/-!
# A267769: Numbers whose base-9 representation is a square when read in base 10.

The programs for A267769, there is no canonical definition to state claims against.
-/

/-! ## A267769.P5840781800390260509

`eq[1, A169695(A007095(n))]`
-/

namespace A267769.P5840781800390260509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A267769.P5840781800390260509

/-! ## A267769.P4624267046334735708

`A028904(∩[n², A007095(n)])`
-/

namespace A267769.P4624267046334735708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A267769.P4624267046334735708

/-! ## A267769.P15783654750291071354

`eq[A000007(n), A267635(A007095(n))]`
-/

namespace A267769.P15783654750291071354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267769.P15783654750291071354

/-! ## A267769.P2918606723988802399

`eq[A057427(n), A338027(A007095(n))]`
-/

namespace A267769.P2918606723988802399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338027 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A267769.P2918606723988802399

/-! ## A267769.P14465402091136073435

`A028904(record[A004184(n²)])`
-/

namespace A267769.P14465402091136073435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A267769.P14465402091136073435

/-!
# A267771: "Late birds" (a(n) < a(k) for all k > n) in A267760 (last digit of a(n) + first digit of a(n+1) occurs as substring in a(n+1)).

The programs for A267771, there is no canonical definition to state claims against.
-/

/-! ## A267771.P10633922250589010841

`A267760(lt[A267760(n)², A002491(n+1)])`
-/

namespace A267771.P10633922250589010841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A267771.P10633922250589010841

/-! ## A267771.P10826938482586409766

`A267760(A267772(n+1))`
-/

namespace A267771.P10826938482586409766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 (A267772 (n + 1)).toNat

end

end A267771.P10826938482586409766

/-! ## A267771.P13634331657518154451

`lt[A202795(A213217(n)), n+2]`
-/

namespace A267771.P13634331657518154451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202795 (A213217 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A267771.P13634331657518154451

/-! ## A267771.P16905922781088005190

`lt[A221001(A213217(n)), A017329(n)]`
-/

namespace A267771.P16905922781088005190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267771.P16905922781088005190

/-! ## A267771.P11816761165132885888

`lt[A333659(n), A372439(A005229(n+1))]`
-/

namespace A267771.P11816761165132885888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372439 (A005229 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267771.P11816761165132885888

/-!
# A267772: Indices n of "late birds" (a(n) < a(k) for all k > n) in A267760 (last digit of a(n) + first digit of a(n+1) occurs as substring in a(n+1)).

The programs for A267772, there is no canonical definition to state claims against.
-/

/-! ## A267772.P16667375210903449028

`lt[A267760(n), A004526(n)+2]`
-/

namespace A267772.P16667375210903449028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P16667375210903449028

/-! ## A267772.P16585839588087666053

`lt[A267760(n)², A002491(n+1)]`
-/

namespace A267772.P16585839588087666053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P16585839588087666053

/-! ## A267772.P11487638824580401493

`lt[n*A267760(n), A066530(n)²]`
-/

namespace A267772.P11487638824580401493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A267760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P11487638824580401493

/-! ## A267772.P4507079363718567398

`lt[n*A267760(n), A134869(n+1)]`
-/

namespace A267772.P4507079363718567398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A267760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P4507079363718567398

/-! ## A267772.P13462235768701606153

`lt[A267760(n), A066530(A066530(n))]`
-/

namespace A267772.P13462235768701606153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066530 (A066530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P13462235768701606153

/-! ## A267772.P531683692649748671

`lt[A267760(n), A024417(A165704(n))]`
-/

namespace A267772.P531683692649748671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A165704 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P531683692649748671

/-! ## A267772.P11843507967370281340

`lt[A032525(A267760(n)), A134869(n+1)]`
-/

namespace A267772.P11843507967370281340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032525 (A267760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P11843507967370281340

/-! ## A267772.P183974738465939683

`lt[A267760(n), A024417(n+2)]`
-/

namespace A267772.P183974738465939683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A267772.P183974738465939683

/-!
# A267773: Triangle read by rows giving successive states of cellular automaton generated by "Rule 207" initiated with a single ON (black) cell.

The programs for A267773, the canonical program `A267773.P6472055355787003497` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267773 has offset 0).

The definition of A267773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267773.P9495141756719019568

`1-char[n*(n+3)+3]`
-/

namespace A267773.P9495141756719019568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267773.P9495141756719019568

namespace A267773

/-- `1-char[n*(n+3)+3]` -/
def P9495141756719019568.Spec : Prop :=
  ∀ n, P9495141756719019568.a n = A267773 n

end A267773

/-! ## A267773.P14330546985857416739

`char[floor(2*sqrt(n))%2+n]`
-/

namespace A267773.P14330546985857416739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267773.P14330546985857416739

namespace A267773

/-- `char[floor(2*sqrt(n))%2+n]` -/
def P14330546985857416739.Spec : Prop :=
  ∀ n, (P14330546985857416739.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P5995811595906292526

`char[xor(1, comp[(n+1)*(n+2)])]`
-/

namespace A267773.P5995811595906292526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P5995811595906292526

namespace A267773

/-- `char[xor(1, comp[(n+1)*(n+2)])]` -/
def P5995811595906292526.Spec : Prop :=
  ∀ n, (P5995811595906292526.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P14956863646211923664

`xor(1-char[1], char[(1-n)²+n])`
-/

namespace A267773.P14956863646211923664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267773.P14956863646211923664

namespace A267773

/-- `xor(1-char[1], char[(1-n)²+n])` -/
def P14956863646211923664.Spec : Prop :=
  ∀ n, P14956863646211923664.a n = A267773 n

end A267773

/-! ## A267773.P14134120987362371468

`A267813(xor(1, n))`
-/

namespace A267773.P14134120987362371468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 (Nat.xor 1 n)

end

end A267773.P14134120987362371468

namespace A267773

/-- `A267813(xor(1, n))` -/
def P14134120987362371468.Spec : Prop :=
  ∀ n, P14134120987362371468.a n = A267773 n

end A267773

/-! ## A267773.P17802310446675947336

`A267813(abs(1-n))`
-/

namespace A267773.P17802310446675947336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267813 |1 - (n : ℤ)|.toNat

end

end A267773.P17802310446675947336

namespace A267773

/-- `A267813(abs(1-n))` -/
def P17802310446675947336.Spec : Prop :=
  ∀ n, P17802310446675947336.a n = A267773 n

end A267773

/-! ## A267773.P6472055355787003497

`C(n, A245552(n)²)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A267773

/-- `C(n, A245552(n)²)` -/
def P6472055355787003497.Spec : Prop :=
  ∀ n, (P6472055355787003497.a n : ℤ) = A267773 n

theorem P6472055355787003497.correct : P6472055355787003497.Spec := by
  intro n
  simp only [A267773]

end A267773

/-! ## A267773.P1251362497011942802

`char[A023969(n)+n]`
-/

namespace A267773.P1251362497011942802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267773.P1251362497011942802

namespace A267773

/-- `char[A023969(n)+n]` -/
def P1251362497011942802.Spec : Prop :=
  ∀ n, (P1251362497011942802.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P8661168198502578460

`char[comp[A028387(n)+2]]`
-/

namespace A267773.P8661168198502578460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P8661168198502578460

namespace A267773

/-- `char[comp[A028387(n)+2]]` -/
def P8661168198502578460.Spec : Prop :=
  ∀ n, (P8661168198502578460.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P8434609281343236254

`char[1-A267708(n)+n]`
-/

namespace A267773.P8434609281343236254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267708 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267773.P8434609281343236254

namespace A267773

/-- `char[1-A267708(n)+n]` -/
def P8434609281343236254.Spec : Prop :=
  ∀ n, (P8434609281343236254.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P16316156299938805759

`char[(n+1)*A267813(n)]`
-/

namespace A267773.P16316156299938805759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A267813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267773.P16316156299938805759

namespace A267773

/-- `char[(n+1)*A267813(n)]` -/
def P16316156299938805759.Spec : Prop :=
  ∀ n, (P16316156299938805759.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P6342947678517405212

`char[n-char[abs(A226940(n))]]`
-/

namespace A267773.P6342947678517405212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226940 n|

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267773.P6342947678517405212

namespace A267773

/-- `char[n-char[abs(A226940(n))]]` -/
def P6342947678517405212.Spec : Prop :=
  ∀ n, (P6342947678517405212.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P2002967140206234406

`A267814((2*n)%(n+2))`
-/

namespace A267773.P2002967140206234406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267814 (2 * n % (n + 2))

end

end A267773.P2002967140206234406

namespace A267773

/-- `A267814((2*n)%(n+2))` -/
def P2002967140206234406.Spec : Prop :=
  ∀ n, P2002967140206234406.a n = A267773 n

end A267773

/-! ## A267773.P11196028905933434804

`A267683(n-a(n-1))` with `a(0)=1`
-/

namespace A267773.P11196028905933434804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267683 ((n : ℤ) - a (n - 1)).toNat

end

end A267773.P11196028905933434804

namespace A267773

/-- `A267683(n-a(n-1))` -/
def P11196028905933434804.Spec : Prop :=
  ∀ n, P11196028905933434804.a n = A267773 n

end A267773

/-! ## A267773.P13516404363903744131

`char[comp[A002378(n+1)+1]]`
-/

namespace A267773.P13516404363903744131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P13516404363903744131

namespace A267773

/-- `char[comp[A002378(n+1)+1]]` -/
def P13516404363903744131.Spec : Prop :=
  ∀ n, (P13516404363903744131.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P3921978127366177252

`char[comp[A131723(n+1)+1]]`
-/

namespace A267773.P3921978127366177252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131723 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P3921978127366177252

namespace A267773

/-- `char[comp[A131723(n+1)+1]]` -/
def P3921978127366177252.Spec : Prop :=
  ∀ n, (P3921978127366177252.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P15890447307990063369

`char[char[A063657(n+1)]+n]`
-/

namespace A267773.P15890447307990063369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P15890447307990063369

namespace A267773

/-- `char[char[A063657(n+1)]+n]` -/
def P15890447307990063369.Spec : Prop :=
  ∀ n, (P15890447307990063369.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P4033301361035694649

`char[char[A004201(n+2)]+n]`
-/

namespace A267773.P4033301361035694649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P4033301361035694649

namespace A267773

/-- `char[char[A004201(n+2)]+n]` -/
def P4033301361035694649.Spec : Prop :=
  ∀ n, (P4033301361035694649.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P11593236455678826401

`char[char[A078358(n+2)]+n]`
-/

namespace A267773.P11593236455678826401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078358 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267773.P11593236455678826401

namespace A267773

/-- `char[char[A078358(n+2)]+n]` -/
def P11593236455678826401.Spec : Prop :=
  ∀ n, (P11593236455678826401.a n : ℤ) = A267773 n

end A267773

/-! ## A267773.P15846383234779112505

`char[n-char[A339267(n+1)]]`
-/

namespace A267773.P15846383234779112505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A267773.P15846383234779112505

namespace A267773

/-- `char[n-char[A339267(n+1)]]` -/
def P15846383234779112505.Spec : Prop :=
  ∀ n, (P15846383234779112505.a n : ℤ) = A267773 n

end A267773

/-!
# A267774: Decimal representation of the n-th iteration of the "Rule 207" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267774, the canonical program `A267774.P14236236855708488686` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267774 has offset 0).

The definition of A267774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267774.P14236236855708488686

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=6, a(2)=29, a(3)=123`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267774

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P14236236855708488686.Spec : Prop :=
  ∀ n, P14236236855708488686.a n = A267774 n

theorem P14236236855708488686.correct : P14236236855708488686.Spec := by
  intro n
  simp only [A267774]

end A267774

/-! ## A267774.P3074187394942978315

`2*4^n-(floor(2^(n-1))+1)`
-/

namespace A267774.P3074187394942978315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)

end

end A267774.P3074187394942978315

namespace A267774

/-- `2*4^n-(floor(2^(n-1))+1)` -/
def P3074187394942978315.Spec : Prop :=
  ∀ n, P3074187394942978315.a n = A267774 n

end A267774

/-! ## A267774.P18304139557759934282

`xor(2*4^n-1, Δ[ceil(2^(n-1))])`
-/

namespace A267774.P18304139557759934282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((2 * 4 ^ n : ℤ) - 1) (f1 (n + 1) - f1 n)

end

end A267774.P18304139557759934282

namespace A267774

/-- `xor(2*4^n-1, Δ[ceil(2^(n-1))])` -/
def P18304139557759934282.Spec : Prop :=
  ∀ n, P18304139557759934282.a n = A267774 n

end A267774

/-! ## A267774.P7788561985519065216

`floor(A187560(n)/2)`
-/

namespace A267774.P7788561985519065216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187560 n : ℚ) / 2⌋

end

end A267774.P7788561985519065216

namespace A267774

/-- `floor(A187560(n)/2)` -/
def P7788561985519065216.Spec : Prop :=
  ∀ n, P7788561985519065216.a n = A267774 n

end A267774

/-! ## A267774.P11018565267934774811

`(A288827(2*n+1)-1)/2`
-/

namespace A267774.P11018565267934774811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288827 (2 * n + 1) - 1 : ℚ) / 2

end

end A267774.P11018565267934774811

namespace A267774

/-- `(A288827(2*n+1)-1)/2` -/
def P11018565267934774811.Spec : Prop :=
  ∀ n, P11018565267934774811.a n = (A267774 n : ℚ)

end A267774

/-! ## A267774.P971182185976028501

`abs(A056469(n)-A087289(n))`
-/

namespace A267774.P971182185976028501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056469 n - A087289 n|

end

end A267774.P971182185976028501

namespace A267774

/-- `abs(A056469(n)-A087289(n))` -/
def P971182185976028501.Spec : Prop :=
  ∀ n, P971182185976028501.a n = A267774 n

end A267774

/-! ## A267774.P15359536138096431687

`or(record[A287470(n)], A083329(n))`
-/

namespace A267774.P15359536138096431687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A083329 n)

end

end A267774.P15359536138096431687

namespace A267774

/-- `or(record[A287470(n)], A083329(n))` -/
def P15359536138096431687.Spec : Prop :=
  ∀ n, P15359536138096431687.a n = A267774 n

end A267774

/-! ## A267774.P5438939072743192468

`or(A006516(n+1), A083329(n))`
-/

namespace A267774.P5438939072743192468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006516 (n + 1)) (A083329 n)

end

end A267774.P5438939072743192468

namespace A267774

/-- `or(A006516(n+1), A083329(n))` -/
def P5438939072743192468.Spec : Prop :=
  ∀ n, P5438939072743192468.a n = A267774 n

end A267774

/-! ## A267774.P14395514511867623749

`or(A083329(n), A287470(2*n))`
-/

namespace A267774.P14395514511867623749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083329 n) (A287470 (2 * n))

end

end A267774.P14395514511867623749

namespace A267774

/-- `or(A083329(n), A287470(2*n))` -/
def P14395514511867623749.Spec : Prop :=
  ∀ n, P14395514511867623749.a n = A267774 n

end A267774

/-! ## A267774.P10938036036051633330

`abs(1-(A004171(n)-A131577(n)))`
-/

namespace A267774.P10938036036051633330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A004171 n - A131577 n)|

end

end A267774.P10938036036051633330

namespace A267774

/-- `abs(1-(A004171(n)-A131577(n)))` -/
def P10938036036051633330.Spec : Prop :=
  ∀ n, P10938036036051633330.a n = A267774 n

end A267774

/-! ## A267774.P4167102076299010667

`(A068156(n)+A126646(n)²)/2`
-/

namespace A267774.P4167102076299010667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068156 n + A126646 n ^ 2 : ℚ) / 2

end

end A267774.P4167102076299010667

namespace A267774

/-- `(A068156(n)+A126646(n)²)/2` -/
def P4167102076299010667.Spec : Prop :=
  ∀ n, P4167102076299010667.a n = (A267774 n : ℚ)

end A267774

/-! ## A267774.P16568699947692426831

`or(A056326(2*n+1), A171476(n))`
-/

namespace A267774.P16568699947692426831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056326 (2 * n + 1)) (A171476 n)

end

end A267774.P16568699947692426831

namespace A267774

/-- `or(A056326(2*n+1), A171476(n))` -/
def P16568699947692426831.Spec : Prop :=
  ∀ n, P16568699947692426831.a n = A267774 n

end A267774

/-! ## A267774.P1058636912881190834

`abs(A000051(2*n+1)-A056469(n))`
-/

namespace A267774.P1058636912881190834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 (2 * n + 1) - A056469 n|

end

end A267774.P1058636912881190834

namespace A267774

/-- `abs(A000051(2*n+1)-A056469(n))` -/
def P1058636912881190834.Spec : Prop :=
  ∀ n, P1058636912881190834.a n = A267774 n

end A267774

/-! ## A267774.P10941612714049419490

`abs(A000225(2*n+1)-A131577(n))`
-/

namespace A267774.P10941612714049419490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n + 1) - A131577 n|

end

end A267774.P10941612714049419490

namespace A267774

/-- `abs(A000225(2*n+1)-A131577(n))` -/
def P10941612714049419490.Spec : Prop :=
  ∀ n, P10941612714049419490.a n = A267774 n

end A267774

/-! ## A267774.P15186399969292631620

`(A288828(2*n)+A255047(2*n+1))/2`
-/

namespace A267774.P15186399969292631620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288828 (2 * n) + A255047 (2 * n + 1) : ℚ) / 2

end

end A267774.P15186399969292631620

namespace A267774

/-- `(A288828(2*n)+A255047(2*n+1))/2` -/
def P15186399969292631620.Spec : Prop :=
  ∀ n, P15186399969292631620.a n = (A267774 n : ℚ)

end A267774

/-!
# A267775: Binary representation of the n-th iteration of the "Rule 207" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267775, there is no canonical definition to state claims against.
-/

/-! ## A267775.P12298033668034057233

`floor(10*(10^n)²/9)-floor(10^(n-1))`
-/

namespace A267775.P12298033668034057233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 * (10 ^ n) ^ 2 : ℚ) / 9⌋ - ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A267775.P12298033668034057233

/-! ## A267775.P6250201353258170186

`floor(A288825(2*n+1)/10)`
-/

namespace A267775.P6250201353258170186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288825 (2 * n + 1) : ℚ) / 10⌋

end

end A267775.P6250201353258170186

/-! ## A267775.P14205606668989842082

`abs(floor(10^(n-1))-A100706(n))`
-/

namespace A267775.P14205606668989842082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A100706 n|

end

end A267775.P14205606668989842082

/-! ## A267775.P5528153605838510627

`abs(A002275(2*n+1)-floor(10^(n-1)))`
-/

namespace A267775.P5528153605838510627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002275 (2 * n + 1) - ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋|

end

end A267775.P5528153605838510627

/-! ## A267775.P7792302532787048556

`abs(A178501(n)-A002275(2*n+1))`
-/

namespace A267775.P7792302532787048556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A178501 n - A002275 (2 * n + 1)|

end

end A267775.P7792302532787048556

/-!
# A267776: Triangle read by rows giving successive states of cellular automaton generated by "Rule 209" initiated with a single ON (black) cell.

The programs for A267776, the canonical program `A267776.P12574266559993545674` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267776 has offset 0).

The definition of A267776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267776.P16527998507825943554

`char[2*floor(sqrt(n))+n]`
-/

namespace A267776.P16527998507825943554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.sqrt n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A267776.P16527998507825943554

namespace A267776

/-- `char[2*floor(sqrt(n))+n]` -/
def P16527998507825943554.Spec : Prop :=
  ∀ n, (P16527998507825943554.a n : ℤ) = A267776 n

end A267776

/-! ## A267776.P12574266559993545674

`1-A267006(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267776

/-- `1-A267006(n+1)` -/
def P12574266559993545674.Spec : Prop :=
  ∀ n, P12574266559993545674.a n = A267776 n

theorem P12574266559993545674.correct : P12574266559993545674.Spec := by
  intro n
  simp only [A267776]

end A267776

/-! ## A267776.P3351656147113184557

`A175454(n+2)%2`
-/

namespace A267776.P3351656147113184557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175454 (n + 2)) 2

end

end A267776.P3351656147113184557

namespace A267776

/-- `A175454(n+2)%2` -/
def P3351656147113184557.Spec : Prop :=
  ∀ n, P3351656147113184557.a n = A267776 n

end A267776

/-! ## A267776.P18336317483501262395

`abs(Δ[A323158(n+2)])`
-/

namespace A267776.P18336317483501262395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323158 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A267776.P18336317483501262395

namespace A267776

/-- `abs(Δ[A323158(n+2)])` -/
def P18336317483501262395.Spec : Prop :=
  ∀ n, P18336317483501262395.a n = A267776 n

end A267776

/-! ## A267776.P12147784828853141783

`1-Δ[A267919(n)]²`
-/

namespace A267776.P12147784828853141783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A267776.P12147784828853141783

namespace A267776

/-- `1-Δ[A267919(n)]²` -/
def P12147784828853141783.Spec : Prop :=
  ∀ n, P12147784828853141783.a n = A267776 n

end A267776

/-! ## A267776.P11487881651298951107

`1-char[A131805(n)-2]`
-/

namespace A267776.P11487881651298951107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131805 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267776.P11487881651298951107

namespace A267776

/-- `1-char[A131805(n)-2]` -/
def P11487881651298951107.Spec : Prop :=
  ∀ n, P11487881651298951107.a n = A267776 n

end A267776

/-! ## A267776.P735574004334978663

`1-char[A135276(n)-2]`
-/

namespace A267776.P735574004334978663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135276 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A267776.P735574004334978663

namespace A267776

/-- `1-char[A135276(n)-2]` -/
def P735574004334978663.Spec : Prop :=
  ∀ n, P735574004334978663.a n = A267776 n

end A267776

/-! ## A267776.P8886681082010581762

`and(1, A051950(n+3)+1)`
-/

namespace A267776.P8886681082010581762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051950 (n + 3) + 1)

end

end A267776.P8886681082010581762

namespace A267776

/-- `and(1, A051950(n+3)+1)` -/
def P8886681082010581762.Spec : Prop :=
  ∀ n, P8886681082010581762.a n = A267776 n

end A267776

/-! ## A267776.P1892479582340160554

`A267919(a(n-1)+n)` with `a(0)=1`
-/

namespace A267776.P1892479582340160554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267919 (a (n - 1) + (n : ℤ)).toNat

end

end A267776.P1892479582340160554

namespace A267776

/-- `A267919(a(n-1)+n)` -/
def P1892479582340160554.Spec : Prop :=
  ∀ n, P1892479582340160554.a n = A267776 n

end A267776

/-! ## A267776.P14717915803594918847

`1-abs(Δ[A049240(n+2)])`
-/

namespace A267776.P14717915803594918847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |f1 (n + 1) - f1 n|

end

end A267776.P14717915803594918847

namespace A267776

/-- `1-abs(Δ[A049240(n+2)])` -/
def P14717915803594918847.Spec : Prop :=
  ∀ n, P14717915803594918847.a n = A267776 n

end A267776

/-! ## A267776.P2329285564181282084

`log2(gcd(2, Δ[A000005(n+2)]))`
-/

namespace A267776.P2329285564181282084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (f1 (n + 1) - f1 n) : ℝ)

end

end A267776.P2329285564181282084

namespace A267776

/-- `log2(gcd(2, Δ[A000005(n+2)]))` -/
def P2329285564181282084.Spec : Prop :=
  ∀ n, P2329285564181282084.a n = (A267776 n : ℝ)

end A267776

/-! ## A267776.P10441877905253474909

`A267800(n-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A267776.P10441877905253474909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A267800 ((n : ℤ) - a (n - 2)).toNat

end

end A267776.P10441877905253474909

namespace A267776

/-- `A267800(n-a(n-2))` -/
def P10441877905253474909.Spec : Prop :=
  ∀ n, P10441877905253474909.a n = A267776 n

end A267776

/-! ## A267776.P17897373346942266046

`A267848(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A267776.P17897373346942266046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267848 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A267776.P17897373346942266046

namespace A267776

/-- `A267848(a(n-1)+1+n)` -/
def P17897373346942266046.Spec : Prop :=
  ∀ n, P17897373346942266046.a n = A267776 n

end A267776

/-! ## A267776.P5475720295412562001

`A267866(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A267776.P5475720295412562001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267866 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A267776.P5475720295412562001

namespace A267776

/-- `A267866(a(n-1)+1+n)` -/
def P5475720295412562001.Spec : Prop :=
  ∀ n, P5475720295412562001.a n = A267776 n

end A267776

/-! ## A267776.P13617944843158805751

`A267922(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A267776.P13617944843158805751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267922 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A267776.P13617944843158805751

namespace A267776

/-- `A267922(a(n-1)-1+n)` -/
def P13617944843158805751.Spec : Prop :=
  ∀ n, P13617944843158805751.a n = A267776 n

end A267776

/-! ## A267776.P3020334769123203103

`A267922(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A267776.P3020334769123203103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267922 ((n : ℤ) - (1 - a (n - 1))).toNat

end

end A267776.P3020334769123203103

namespace A267776

/-- `A267922(n-(1-a(n-1)))` -/
def P3020334769123203103.Spec : Prop :=
  ∀ n, P3020334769123203103.a n = A267776 n

end A267776

/-! ## A267776.P16773246510458954082

`A267845(a(a(n-1))+n)` with `a(0)=1, a(1)=0`
-/

namespace A267776.P16773246510458954082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A267845 (a (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A267776.P16773246510458954082

namespace A267776

/-- `A267845(a(a(n-1))+n)` -/
def P16773246510458954082.Spec : Prop :=
  ∀ n, P16773246510458954082.a n = A267776 n

end A267776

/-! ## A267776.P5773661047258395925

`and(1, 1-Δ[A000005(2*n-(n-2))])`
-/

namespace A267776.P5773661047258395925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (1 - (f1 (n + 1) - f1 n))

end

end A267776.P5773661047258395925

namespace A267776

/-- `and(1, 1-Δ[A000005(2*n-(n-2))])` -/
def P5773661047258395925.Spec : Prop :=
  ∀ n, P5773661047258395925.a n = A267776 n

end A267776

/-! ## A267776.P4696478699121308684

`A179184(A092488(n+1))`
-/

namespace A267776.P4696478699121308684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179184 (A092488 (n + 1)).toNat

end

end A267776.P4696478699121308684

namespace A267776

/-- `A179184(A092488(n+1))` -/
def P4696478699121308684.Spec : Prop :=
  ∀ n, P4696478699121308684.a n = A267776 n

end A267776

/-! ## A267776.P10019822014492723594

`A023532(A259549(n+1))`
-/

namespace A267776.P10019822014492723594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A259549 (n + 1)).toNat

end

end A267776.P10019822014492723594

namespace A267776

/-- `A023532(A259549(n+1))` -/
def P10019822014492723594.Spec : Prop :=
  ∀ n, P10019822014492723594.a n = A267776 n

end A267776

/-!
# A267777: Binary representation of the n-th iteration of the "Rule 209" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267777, there is no canonical definition to state claims against.
-/

/-! ## A267777.P17686858465818933936

`∑[A287130(2*n)]`
-/

namespace A267777.P17686858465818933936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287130 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267777.P17686858465818933936

/-! ## A267777.P6606921416617646091

`∑[A287191(2*n)]`
-/

namespace A267777.P6606921416617646091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287191 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267777.P6606921416617646091

/-! ## A267777.P13598539434816987461

`11*A267599(n)-10`
-/

namespace A267777.P13598539434816987461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A267599 n - 10

end

end A267777.P13598539434816987461

/-! ## A267777.P16727026085911744099

`A266299(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A267777.P16727026085911744099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A266299 n + a (n - 1)

end

end A267777.P16727026085911744099

/-! ## A267777.P2567415924239503414

`A287130(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A267777.P2567415924239503414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287130 (n + n) + a (n - 1)

end

end A267777.P2567415924239503414

/-! ## A267777.P13689677870604433501

`A287191(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A267777.P13689677870604433501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287191 (n + n) + a (n - 1)

end

end A267777.P13689677870604433501

/-! ## A267777.P13809404274736390182

`A267923(A028310(n))-10`
-/

namespace A267777.P13809404274736390182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267923 (A028310 n).toNat - 10

end

end A267777.P13809404274736390182

/-! ## A267777.P6849042481782362320

`A283504(2*n)-A283504(2*n+1)/A290072(2*n+1)`
-/

namespace A267777.P6849042481782362320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283504 (2 * n) : ℚ) - (A283504 (2 * n + 1) : ℚ) / (A290072 (2 * n + 1) : ℚ)

end

end A267777.P6849042481782362320

/-!
# A267778: Triangle read by rows giving successive states of cellular automaton generated by "Rule 211" initiated with a single ON (black) cell.

The programs for A267778, the canonical program `A267778.P18033994300650970323` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267778 has offset 0).

The definition of A267778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267778.P17424375804148679585

`A267919(or(n, A267919(n)))`
-/

namespace A267778.P17424375804148679585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 (Int.lor (n : ℤ) (A267919 n)).toNat

end

end A267778.P17424375804148679585

namespace A267778

/-- `A267919(or(n, A267919(n)))` -/
def P17424375804148679585.Spec : Prop :=
  ∀ n, P17424375804148679585.a n = A267778 n

end A267778

/-! ## A267778.P1579721923858596902

`A263243(A020703(n+1)-1)`
-/

namespace A267778.P1579721923858596902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (A020703 (n + 1) - 1).toNat

end

end A267778.P1579721923858596902

namespace A267778

/-- `A263243(A020703(n+1)-1)` -/
def P1579721923858596902.Spec : Prop :=
  ∀ n, P1579721923858596902.a n = A267778 n

end A267778

/-! ## A267778.P11695488882282718639

`A267848(A267841(n)+1+n)`
-/

namespace A267778.P11695488882282718639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267848 (A267841 n + 1 + (n : ℤ)).toNat

end

end A267778.P11695488882282718639

namespace A267778

/-- `A267848(A267841(n)+1+n)` -/
def P11695488882282718639.Spec : Prop :=
  ∀ n, P11695488882282718639.a n = A267778 n

end A267778

/-! ## A267778.P3326754575467657722

`A267866(A267841(n)+1+n)`
-/

namespace A267778.P3326754575467657722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267866 (A267841 n + 1 + (n : ℤ)).toNat

end

end A267778.P3326754575467657722

namespace A267778

/-- `A267866(A267841(n)+1+n)` -/
def P3326754575467657722.Spec : Prop :=
  ∀ n, P3326754575467657722.a n = A267778 n

end A267778

/-! ## A267778.P18033994300650970323

`1-A267006(A266502(n)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A267778

/-- `1-A267006(A266502(n)+n)` -/
def P18033994300650970323.Spec : Prop :=
  ∀ n, P18033994300650970323.a n = A267778 n

theorem P18033994300650970323.correct : P18033994300650970323.Spec := by
  intro n
  simp only [A267778]

end A267778

/-! ## A267778.P4001854591101086320

`1-A267050(A267050(n)+n)`
-/

namespace A267778.P4001854591101086320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267050 (A267050 n + (n : ℤ)).toNat

end

end A267778.P4001854591101086320

namespace A267778

/-- `1-A267050(A267050(n)+n)` -/
def P4001854591101086320.Spec : Prop :=
  ∀ n, P4001854591101086320.a n = A267778 n

end A267778

/-! ## A267778.P4122584514573510182

`A267776(and(n, A267776(n)-2))`
-/

namespace A267778.P4122584514573510182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267776 (Int.land (n : ℤ) (A267776 n - 2)).toNat

end

end A267778.P4122584514573510182

namespace A267778

/-- `A267776(and(n, A267776(n)-2))` -/
def P4122584514573510182.Spec : Prop :=
  ∀ n, P4122584514573510182.a n = A267778 n

end A267778

/-! ## A267778.P14910355406524480435

`or(A267776(or(2, n)), A267776(n))`
-/

namespace A267778.P14910355406524480435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267776 (Nat.lor 2 n)) (A267776 n)

end

end A267778.P14910355406524480435

namespace A267778

/-- `or(A267776(or(2, n)), A267776(n))` -/
def P14910355406524480435.Spec : Prop :=
  ∀ n, P14910355406524480435.a n = A267778 n

end A267778

/-! ## A267778.P15837911212538585270

`A267919(and(A008794(n), A267919(n))+n)`
-/

namespace A267778.P15837911212538585270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 (Int.land (A008794 n) (A267919 n) + (n : ℤ)).toNat

end

end A267778.P15837911212538585270

namespace A267778

/-- `A267919(and(A008794(n), A267919(n))+n)` -/
def P15837911212538585270.Spec : Prop :=
  ∀ n, P15837911212538585270.a n = A267778 n

end A267778

/-! ## A267778.P1301996100359571211

`A263243(A020703(n+2))`
-/

namespace A267778.P1301996100359571211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263243 (A020703 (n + 2)).toNat

end

end A267778.P1301996100359571211

namespace A267778

/-- `A263243(A020703(n+2))` -/
def P1301996100359571211.Spec : Prop :=
  ∀ n, P1301996100359571211.a n = A267778 n

end A267778

/-! ## A267778.P3772856328977828406

`1-A323158(A286386(n+2))`
-/

namespace A267778.P3772856328977828406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323158 (A286386 (n + 2)).toNat

end

end A267778.P3772856328977828406

namespace A267778

/-- `1-A323158(A286386(n+2))` -/
def P3772856328977828406.Spec : Prop :=
  ∀ n, P3772856328977828406.a n = A267778 n

end A267778

/-! ## A267778.P7420159829608711239

`A002448(and(n, Δ[A002448(n+2)]))`
-/

namespace A267778.P7420159829608711239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat

end

end A267778.P7420159829608711239

namespace A267778

/-- `A002448(and(n, Δ[A002448(n+2)]))` -/
def P7420159829608711239.Spec : Prop :=
  ∀ n, P7420159829608711239.a n = A267778 n

end A267778

/-! ## A267778.P8865078550807199239

`A267687((n+1)*A267687(n+3))`
-/

namespace A267778.P8865078550807199239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 ((n + 1 : ℤ) * A267687 (n + 3)).toNat

end

end A267778.P8865078550807199239

namespace A267778

/-- `A267687((n+1)*A267687(n+3))` -/
def P8865078550807199239.Spec : Prop :=
  ∀ n, P8865078550807199239.a n = A267778 n

end A267778

/-! ## A267778.P13143962398859446747

`A049240(A124625(n+3)+A049240(n+2))`
-/

namespace A267778.P13143962398859446747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A124625 (n + 3) + A049240 (n + 2)).toNat

end

end A267778.P13143962398859446747

namespace A267778

/-- `A049240(A124625(n+3)+A049240(n+2))` -/
def P13143962398859446747.Spec : Prop :=
  ∀ n, P13143962398859446747.a n = A267778 n

end A267778

/-!
# A267779: Binary representation of the n-th iteration of the "Rule 211" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267779, there is no canonical definition to state claims against.
-/

/-! ## A267779.P7424588874759230030

`A007088(A267780(n))`
-/

namespace A267779.P7424588874759230030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267780 n).toNat

end

end A267779.P7424588874759230030

/-! ## A267779.P16787799935332137848

`A007088(A267890(n)-A126664(n))`
-/

namespace A267779.P16787799935332137848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A267890 n - A126664 n).toNat

end

end A267779.P16787799935332137848

/-! ## A267779.P7187923752233302133

`A007088(A000051(2*n+1)-Δ[A092899(n)])`
-/

namespace A267779.P7187923752233302133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000051 (2 * n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A267779.P7187923752233302133

/-! ## A267779.P6254464384275203132

`A007088(2*A000079(n)²-A173014(2*n+1))`
-/

namespace A267779.P6254464384275203132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A000079 n ^ 2 - A173014 (2 * n + 1)).toNat

end

end A267779.P6254464384275203132

/-!
# A267780: Decimal representation of the n-th iteration of the "Rule 211" elementary cellular automaton starting with a single ON (black) cell.

The programs for A267780, the canonical program `A267780.P9954567747926726065` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267780 has offset 0).

The definition of A267780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267780.P9954567747926726065

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=125`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267780

/-- `4*a(n-1)+a(n-2)-4*a(n-3)` -/
def P9954567747926726065.Spec : Prop :=
  ∀ n, P9954567747926726065.a n = A267780 n

theorem P9954567747926726065.correct : P9954567747926726065.Spec := by
  intro n
  simp only [A267780]

end A267780

/-! ## A267780.P18245153482699223486

`a(n-1)%30+4*a(n-1)` with `a(0)=1`
-/

namespace A267780.P18245153482699223486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) % 30 + 4 * a (n - 1)

end

end A267780.P18245153482699223486

namespace A267780

/-- `a(n-1)%30+4*a(n-1)` -/
def P18245153482699223486.Spec : Prop :=
  ∀ n, (P18245153482699223486.a n : ℤ) = A267780 n

end A267780

/-! ## A267780.P727434623379329367

`a(gcd(2, n+1))+4*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A267780.P727434623379329367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (Nat.gcd 2 (n + 1)) + 4 * a (n - 1)

end

end A267780.P727434623379329367

namespace A267780

/-- `a(gcd(2, n+1))+4*a(n-1)` -/
def P727434623379329367.Spec : Prop :=
  ∀ n, (P727434623379329367.a n : ℤ) = A267780 n

end A267780

/-! ## A267780.P18141232824548328884

`A002446(n)-a((n+1)%2)` with `a(0)=1`
-/

namespace A267780.P18141232824548328884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002446 n - a ((n + 1) % 2)

end

end A267780.P18141232824548328884

namespace A267780

/-- `A002446(n)-a((n+1)%2)` -/
def P18141232824548328884.Spec : Prop :=
  ∀ n, P18141232824548328884.a n = A267780 n

end A267780

/-! ## A267780.P3660893887671659078

`A267890(n)-A126664(n)`
-/

namespace A267780.P3660893887671659078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267890 n - A126664 n

end

end A267780.P3660893887671659078

namespace A267780

/-- `A267890(n)-A126664(n)` -/
def P3660893887671659078.Spec : Prop :=
  ∀ n, P3660893887671659078.a n = A267780 n

end A267780

/-! ## A267780.P13629031978891123934

`record[A282453(n)]-and(6, A282454(n))`
-/

namespace A267780.P13629031978891123934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - Int.land 6 (A282454 n)

end

end A267780.P13629031978891123934

namespace A267780

/-- `record[A282453(n)]-and(6, A282454(n))` -/
def P13629031978891123934.Spec : Prop :=
  ∀ n, P13629031978891123934.a n = A267780 n

end A267780

/-! ## A267780.P6669961157373615198

`A000051(2*n+1)-Δ[A092899(n)]`
-/

namespace A267780.P6669961157373615198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A267780.P6669961157373615198

namespace A267780

/-- `A000051(2*n+1)-Δ[A092899(n)]` -/
def P6669961157373615198.Spec : Prop :=
  ∀ n, P6669961157373615198.a n = A267780 n

end A267780

/-! ## A267780.P12751259998269131387

`2*A000079(n)²-A173014(2*n+1)`
-/

namespace A267780.P12751259998269131387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A173014 (2 * n + 1)

end

end A267780.P12751259998269131387

namespace A267780

/-- `2*A000079(n)²-A173014(2*n+1)` -/
def P12751259998269131387.Spec : Prop :=
  ∀ n, P12751259998269131387.a n = A267780 n

end A267780

/-! ## A267780.P9982603570941075643

`A000079(2*n+1)-A173014(2*n+1)`
-/

namespace A267780.P9982603570941075643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A173014 (2 * n + 1)

end

end A267780.P9982603570941075643

namespace A267780

/-- `A000079(2*n+1)-A173014(2*n+1)` -/
def P9982603570941075643.Spec : Prop :=
  ∀ n, P9982603570941075643.a n = A267780 n

end A267780

/-! ## A267780.P1595029891811279108

`A000051(2*n+1)-(A173014(2*n+1)+1)`
-/

namespace A267780.P1595029891811279108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - (A173014 (2 * n + 1) + 1)

end

end A267780.P1595029891811279108

namespace A267780

/-- `A000051(2*n+1)-(A173014(2*n+1)+1)` -/
def P1595029891811279108.Spec : Prop :=
  ∀ n, P1595029891811279108.a n = A267780 n

end A267780

/-! ## A267780.P4870050926523997231

`and(A283506(2*n+1)+A033999(n+1), A283506(2*n))`
-/

namespace A267780.P4870050926523997231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283506 (2 * n + 1) + A033999 (n + 1)) (A283506 (2 * n))

end

end A267780.P4870050926523997231

namespace A267780

/-- `and(A283506(2*n+1)+A033999(n+1), A283506(2*n))` -/
def P4870050926523997231.Spec : Prop :=
  ∀ n, P4870050926523997231.a n = A267780 n

end A267780

/-! ## A267780.P3495519401866346117

`and(A283506(2*n+1)+A174971(n+1), A283506(2*n))`
-/

namespace A267780.P3495519401866346117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283506 (2 * n + 1) + A174971 (n + 1)) (A283506 (2 * n))

end

end A267780.P3495519401866346117

namespace A267780

/-- `and(A283506(2*n+1)+A174971(n+1), A283506(2*n))` -/
def P3495519401866346117.Spec : Prop :=
  ∀ n, P3495519401866346117.a n = A267780 n

end A267780

/-! ## A267780.P12104472010906833082

`and(A290073(2*n+1)+A174971(n+1), A290073(2*n))`
-/

namespace A267780.P12104472010906833082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290073 (2 * n + 1) + A174971 (n + 1)) (A290073 (2 * n))

end

end A267780.P12104472010906833082

namespace A267780

/-- `and(A290073(2*n+1)+A174971(n+1), A290073(2*n))` -/
def P12104472010906833082.Spec : Prop :=
  ∀ n, P12104472010906833082.a n = A267780 n

end A267780

/-! ## A267780.P3084554767491521165

`A083318(2*n+1)-A001316(A233775(2*n)²)`
-/

namespace A267780.P3084554767491521165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (2 * n + 1) - A001316 (A233775 (2 * n) ^ 2).toNat

end

end A267780.P3084554767491521165

namespace A267780

/-- `A083318(2*n+1)-A001316(A233775(2*n)²)` -/
def P3084554767491521165.Spec : Prop :=
  ∀ n, P3084554767491521165.a n = A267780 n

end A267780

/-!
# A267781: Expansion of (x*(-14x^6 - 32x^5 + 16x^4 + 30x^3 - x + 14) + 17)/((x-1)^2*(x+1)).

The programs for A267781, there is no canonical definition to state claims against.
-/

/-! ## A267781.P9679068954662402791

`A267540(A055646(n)+2)`
-/

namespace A267781.P9679068954662402791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267540 (A055646 n + 2).toNat

end

end A267781.P9679068954662402791

/-! ## A267781.P14157049978106313650

`p?[Δ[A286716(A016886(n))]]`
-/

namespace A267781.P14157049978106313650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286716 (A016886 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267781.P14157049978106313650

/-! ## A267781.P1875811067854177535

`A267540(A043320(n+1)+1)`
-/

namespace A267781.P1875811067854177535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267540 (A043320 (n + 1) + 1).toNat

end

end A267781.P1875811067854177535

/-! ## A267781.P3946976120459695674

`∩[A063118(n+1), A090417(n+1)]`
-/

namespace A267781.P3946976120459695674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267781.P3946976120459695674

/-!
# A267782: Number of n X n 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267782, there is no canonical definition to state claims against.
-/

/-! ## A267782.P16235037432701141178

`A267788(∑[4*n]+1)`
-/

namespace A267782.P16235037432701141178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A267782.P16235037432701141178

/-! ## A267782.P10860028351508649275

`record[A267788(Δ[A235355(n)])]`
-/

namespace A267782.P10860028351508649275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267782.P10860028351508649275

/-! ## A267782.P16570151565002955877

`record[A267788(A330613(n+1))]`
-/

namespace A267782.P16570151565002955877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267782.P16570151565002955877

/-! ## A267782.P3273938450785388195

`A267788(A001844(n))+floor(n/10)`
-/

namespace A267782.P3273938450785388195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A001844 n).toNat + ⌊(n : ℚ) / 10⌋

end

end A267782.P3273938450785388195

/-! ## A267782.P12179343502992358864

`record[A003982(n)*A267788(n+1)]`
-/

namespace A267782.P12179343502992358864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A267788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267782.P12179343502992358864

/-!
# A267783: Number of n X 3 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267783, the canonical program `A267783.P7127194827562096763` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267783 has offset 1).

The definition of A267783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A267783.P7127194827562096763

`floor(((n+3)/2)²)^3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267783

/-- `floor(((n+3)/2)²)^3` -/
def P7127194827562096763.Spec : Prop :=
  ∀ n, P7127194827562096763.a n = A267783 (n + 1)

theorem P7127194827562096763.correct : P7127194827562096763.Spec := by
  intro n
  simp only [A267783, Nat.add_sub_cancel]

end A267783

/-! ## A267783.P12518099037975548487

`record[floor(((n-3)/2)²)^3]`
-/

namespace A267783.P12518099037975548487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 3 : ℚ) / 2) ^ 2⌋ ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A267783.P12518099037975548487

namespace A267783

/-- `record[floor(((n-3)/2)²)^3]` -/
def P12518099037975548487.Spec : Prop :=
  ∀ n, P12518099037975548487.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P9036553789170391224

`floor(∑[a(n-2)+1]^3)` with `a(0)=2, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A267783.P9036553789170391224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A267783.P9036553789170391224

namespace A267783

/-- `floor(∑[a(n-2)+1]^3)` -/
def P9036553789170391224.Spec : Prop :=
  ∀ n, (P9036553789170391224.a n : ℤ) = A267783 (n + 1)

end A267783

/-! ## A267783.P2990027634521889200

`root(∑[a(n-2)+1]+1, 1/3)` with `a(0)=1, a(1)=2`
-/

namespace A267783.P2990027634521889200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A267783.P2990027634521889200

namespace A267783

/-- `root(∑[a(n-2)+1]+1, 1/3)` -/
def P2990027634521889200.Spec : Prop :=
  ∀ n, P2990027634521889200.a n = (A267783 (n + 1) : ℝ)

end A267783

/-! ## A267783.P9715138917334040430

`xor(2, (∑[ceil(n/2)+1]+1)^3+2)`
-/

namespace A267783.P9715138917334040430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 3 + 2)

end

end A267783.P9715138917334040430

namespace A267783

/-- `xor(2, (∑[ceil(n/2)+1]+1)^3+2)` -/
def P9715138917334040430.Spec : Prop :=
  ∀ n, P9715138917334040430.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P3123679188778718127

`∑[A065033(n)+1]²*∑[A065033(n)+1]`
-/

namespace A267783.P3123679188778718127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A267783.P3123679188778718127

namespace A267783

/-- `∑[A065033(n)+1]²*∑[A065033(n)+1]` -/
def P3123679188778718127.Spec : Prop :=
  ∀ n, P3123679188778718127.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P7658918786918584624

`abs(Δ[A002623(n)]^3)`
-/

namespace A267783.P7658918786918584624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ 3|

end

end A267783.P7658918786918584624

namespace A267783

/-- `abs(Δ[A002623(n)]^3)` -/
def P7658918786918584624.Spec : Prop :=
  ∀ n, P7658918786918584624.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P8343564130122532917

`abs(A083392(n+2)^3)`
-/

namespace A267783.P8343564130122532917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083392 (n + 2) ^ 3|

end

end A267783.P8343564130122532917

namespace A267783

/-- `abs(A083392(n+2)^3)` -/
def P8343564130122532917.Spec : Prop :=
  ∀ n, P8343564130122532917.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P15365425309555505414

`abs((Δ[A005744(n)]+1)^3)`
-/

namespace A267783.P15365425309555505414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n + 1) ^ 3|

end

end A267783.P15365425309555505414

namespace A267783

/-- `abs((Δ[A005744(n)]+1)^3)` -/
def P15365425309555505414.Spec : Prop :=
  ∀ n, P15365425309555505414.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P13336514461962513065

`A087811(n+2)²*A087811(n+2)`
-/

namespace A267783.P13336514461962513065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 2) ^ 2 * A087811 (n + 2)

end

end A267783.P13336514461962513065

namespace A267783

/-- `A087811(n+2)²*A087811(n+2)` -/
def P13336514461962513065.Spec : Prop :=
  ∀ n, P13336514461962513065.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P15609905093798077412

`A008683(4*(n+1))+Δ[A002623(n)]^3`
-/

namespace A267783.P15609905093798077412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (f1 (n + 1) - f1 n) ^ 3

end

end A267783.P15609905093798077412

namespace A267783

/-- `A008683(4*(n+1))+Δ[A002623(n)]^3` -/
def P15609905093798077412.Spec : Prop :=
  ∀ n, P15609905093798077412.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P14904157748796111001

`(A002620(n+3)^(3/2))²`
-/

namespace A267783.P14904157748796111001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A002620 (n + 3) : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) ^ 2

end

end A267783.P14904157748796111001

namespace A267783

/-- `(A002620(n+3)^(3/2))²` -/
def P14904157748796111001.Spec : Prop :=
  ∀ n, P14904157748796111001.a n = (A267783 (n + 1) : ℝ)

end A267783

/-! ## A267783.P6317143229716393563

`sqrt(A030179(n+3)^3)`
-/

namespace A267783.P6317143229716393563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030179 (n + 3) ^ 3 : ℝ)

end

end A267783.P6317143229716393563

namespace A267783

/-- `sqrt(A030179(n+3)^3)` -/
def P6317143229716393563.Spec : Prop :=
  ∀ n, P6317143229716393563.a n = (A267783 (n + 1) : ℝ)

end A267783

/-! ## A267783.P15124424395807897515

`A002620(n+3)*A030179(n+3)`
-/

namespace A267783.P15124424395807897515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 3) * A030179 (n + 3)

end

end A267783.P15124424395807897515

namespace A267783

/-- `A002620(n+3)*A030179(n+3)` -/
def P15124424395807897515.Spec : Prop :=
  ∀ n, P15124424395807897515.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P3834680689853069739

`A008881(3*(n+3))`
-/

namespace A267783.P3834680689853069739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008881 (3 * (n + 3))

end

end A267783.P3834680689853069739

namespace A267783

/-- `A008881(3*(n+3))` -/
def P3834680689853069739.Spec : Prop :=
  ∀ n, P3834680689853069739.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P12407843047793427329

`A000578(∑[floor((n+1)/2)]+n+2)`
-/

namespace A267783.P12407843047793427329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat

end

end A267783.P12407843047793427329

namespace A267783

/-- `A000578(∑[floor((n+1)/2)]+n+2)` -/
def P12407843047793427329.Spec : Prop :=
  ∀ n, P12407843047793427329.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P11252489098993489457

`A098360(A074133(n+2))`
-/

namespace A267783.P11252489098993489457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (A074133 (n + 2)).toNat

end

end A267783.P11252489098993489457

namespace A267783

/-- `A098360(A074133(n+2))` -/
def P11252489098993489457.Spec : Prop :=
  ∀ n, P11252489098993489457.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P17921472472814541097

`A098360(A080827(n+2))`
-/

namespace A267783.P17921472472814541097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098360 (A080827 (n + 2)).toNat

end

end A267783.P17921472472814541097

namespace A267783

/-- `A098360(A080827(n+2))` -/
def P17921472472814541097.Spec : Prop :=
  ∀ n, P17921472472814541097.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P4109261023372680235

`A114803(A183575(n+2))`
-/

namespace A267783.P4109261023372680235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114803 (A183575 (n + 2)).toNat

end

end A267783.P4109261023372680235

namespace A267783

/-- `A114803(A183575(n+2))` -/
def P4109261023372680235.Spec : Prop :=
  ∀ n, P4109261023372680235.a n = A267783 (n + 1)

end A267783

/-! ## A267783.P9806973617759914828

`A034828(A007590(n+3))`
-/

namespace A267783.P9806973617759914828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A007590 (n + 3)).toNat

end

end A267783.P9806973617759914828

namespace A267783

/-- `A034828(A007590(n+3))` -/
def P9806973617759914828.Spec : Prop :=
  ∀ n, P9806973617759914828.a n = A267783 (n + 1)

end A267783

/-!
# A267784: Number of nX4 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267784, there is no canonical definition to state claims against.
-/

/-! ## A267784.P11153714636613687627

`A267788(∑[n+4]+3)`
-/

namespace A267784.P11153714636613687627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A267784.P11153714636613687627

/-! ## A267784.P12047862080627713560

`A267788(A055998(n+2))+char[18]`
-/

namespace A267784.P12047862080627713560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267784.P12047862080627713560

/-! ## A267784.P2920327563230864476

`A267788(A056000(n)+7)+char[18]`
-/

namespace A267784.P2920327563230864476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267784.P2920327563230864476

/-! ## A267784.P1451756759286126197

`gcd(A185284(n), A267788(A055998(n+2)))`
-/

namespace A267784.P1451756759286126197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A267788 (A055998 (n + 2)).toNat)

end

end A267784.P1451756759286126197

/-! ## A267784.P17479885999261006988

`A267788(A056000(n)+7)%A000108(n+8)`
-/

namespace A267784.P17479885999261006988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267788 (A056000 n + 7).toNat) (A000108 (n + 8))

end

end A267784.P17479885999261006988

/-!
# A267785: Number of nX5 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267785, there is no canonical definition to state claims against.
-/

/-! ## A267785.P18356267590907237257

`A267788(∑[n+5]+6)`
-/

namespace A267785.P18356267590907237257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A267785.P18356267590907237257

/-! ## A267785.P16947284603283606001

`A267788(A000096(n+4)-3)+char[16]`
-/

namespace A267785.P16947284603283606001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A000096 (n + 4) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267785.P16947284603283606001

/-! ## A267785.P5271286850402162495

`A267788(Δ[A023545(n+1)])%A128786(n+2)`
-/

namespace A267785.P5271286850402162495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267788 (f1 (n + 1) - f1 n).toNat) (A128786 (n + 2))

end

end A267785.P5271286850402162495

/-! ## A267785.P1992170035900947203

`A007318(C(2, n))*A267788(A000096(n+4)-3)`
-/

namespace A267785.P1992170035900947203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A267788 (A000096 (n + 4) - 3).toNat

end

end A267785.P1992170035900947203

/-! ## A267785.P12858821765760852549

`A267788(A000096(n+4)-3)/A007318(and(1, -n))`
-/

namespace A267785.P12858821765760852549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267788 (A000096 (n + 4) - 3).toNat : ℚ) / (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A267785.P12858821765760852549

/-!
# A267786: Number of nX6 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267786, there is no canonical definition to state claims against.
-/

/-! ## A267786.P14204165676774940192

`A267788(A052905(n+3))`
-/

namespace A267786.P14204165676774940192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A052905 (n + 3)).toNat

end

end A267786.P14204165676774940192

/-! ## A267786.P18066682000730277041

`A267788(eq[3, A219347(n)])`
-/

namespace A267786.P18066682000730277041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267786.P18066682000730277041

/-! ## A267786.P6556378662980288553

`A267788(eq[5, A193592(n)])`
-/

namespace A267786.P6556378662980288553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267786.P6556378662980288553

/-! ## A267786.P5167689036471516551

`A267788(eq[8, A258709(n)])`
-/

namespace A267786.P5167689036471516551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267786.P5167689036471516551

/-! ## A267786.P13520832416711501385

`A267788(A000096(n+5)-4)`
-/

namespace A267786.P13520832416711501385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A000096 (n + 5) - 4).toNat

end

end A267786.P13520832416711501385

/-!
# A267787: Number of n X 7 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267787, there is no canonical definition to state claims against.
-/

/-! ## A267787.P12343692829400269512

`A267788(A055999(n+4))`
-/

namespace A267787.P12343692829400269512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A055999 (n + 4)).toNat

end

end A267787.P12343692829400269512

/-! ## A267787.P7095860164456693229

`A267788(eq[4, A219347(n)])`
-/

namespace A267787.P7095860164456693229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267787.P7095860164456693229

/-! ## A267787.P16872929620762501348

`A267788(eq[6, A193592(n)])`
-/

namespace A267787.P16872929620762501348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267787.P16872929620762501348

/-! ## A267787.P12014750072196601070

`A267788(Δ[A023551(n+2)])`
-/

namespace A267787.P12014750072196601070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (f1 (n + 1) - f1 n).toNat

end

end A267787.P12014750072196601070

/-! ## A267787.P158948052797295785

`A267788(Δ[A026054(n+4)])`
-/

namespace A267787.P158948052797295785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (f1 (n + 1) - f1 n).toNat

end

end A267787.P158948052797295785

/-!
# A267789: Number of 3Xn 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267789, there is no canonical definition to state claims against.
-/

/-! ## A267789.P12170436140489933596

`A267788(∑[n+2]+4)`
-/

namespace A267789.P12170436140489933596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A267789.P12170436140489933596

/-! ## A267789.P931283237317901695

`lcm(2, A267788(A167614(n+1)))`
-/

namespace A267789.P931283237317901695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A267788 (A167614 (n + 1)).toNat)

end

end A267789.P931283237317901695

/-! ## A267789.P5346265445910233621

`lcm(3, A267788(A055998(n)+6))`
-/

namespace A267789.P5346265445910233621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A267788 (A055998 n + 6).toNat)

end

end A267789.P5346265445910233621

/-! ## A267789.P17505039820030933393

`A267788(A167614(n+1))+A185284(n)`
-/

namespace A267789.P17505039820030933393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A167614 (n + 1)).toNat + A185284 n

end

end A267789.P17505039820030933393

/-! ## A267789.P5636429187879515769

`A267788(A167614(n+1))%A017489(n)`
-/

namespace A267789.P5636429187879515769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267788 (A167614 (n + 1)).toNat) (A017489 n)

end

end A267789.P5636429187879515769

/-!
# A267790: Number of 4Xn 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267790, there is no canonical definition to state claims against.
-/

/-! ## A267790.P15504814416137225383

`A267788(∑[n+3]+7)`
-/

namespace A267790.P15504814416137225383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A267790.P15504814416137225383

/-! ## A267790.P9833000772762680468

`(A267788(A055999(n)+10)^(1/2))²`
-/

namespace A267790.P9833000772762680468
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A267788 (A055999 n + 10).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A267790.P9833000772762680468

/-! ## A267790.P14674576227081714396

`A267788(A167614(n+2)+1)+char[20]`
-/

namespace A267790.P14674576227081714396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A267790.P14674576227081714396

/-! ## A267790.P17623358354931141760

`A007318(C(2, n))*A267788(A055999(n)+10)`
-/

namespace A267790.P17623358354931141760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A267788 (A055999 n + 10).toNat

end

end A267790.P17623358354931141760

/-! ## A267790.P9670141751916096118

`A267788(A000217(n+3)+4)+A111898(n+1)`
-/

namespace A267790.P9670141751916096118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A000217 (n + 3) + 4).toNat + A111898 (n + 1)

end

end A267790.P9670141751916096118

/-!
# A267791: Number of 5Xn 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267791, there is no canonical definition to state claims against.
-/

/-! ## A267791.P8858391570427810598

`A267788(A167499(n+3))`
-/

namespace A267791.P8858391570427810598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A167499 (n + 3)).toNat

end

end A267791.P8858391570427810598

/-! ## A267791.P3922378859277343895

`A267788(A155212(n)+13)`
-/

namespace A267791.P3922378859277343895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A155212 n + 13).toNat

end

end A267791.P3922378859277343895

/-! ## A267791.P16567314437625233200

`A267788(A056000(n)+15)`
-/

namespace A267791.P16567314437625233200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A056000 n + 15).toNat

end

end A267791.P16567314437625233200

/-! ## A267791.P4827367042562730829

`A267788(eq[7, A066657(n)])`
-/

namespace A267791.P4827367042562730829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267791.P4827367042562730829

/-! ## A267791.P1300023679157304238

`A267788(A167614(n+3)+2)`
-/

namespace A267791.P1300023679157304238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A167614 (n + 3) + 2).toNat

end

end A267791.P1300023679157304238

/-!
# A267792: Number of 6Xn 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267792, there is no canonical definition to state claims against.
-/

/-! ## A267792.P835858546293480405

`A267788(∑[n+5]+16)`
-/

namespace A267792.P835858546293480405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A267792.P835858546293480405

/-! ## A267792.P987986755219651019

`A267788(A000124(n+5)+5)+(2*n)%2`
-/

namespace A267792.P987986755219651019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A000124 (n + 5) + 5).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A267792.P987986755219651019

/-! ## A267792.P16671604586118460382

`lcm(A107045(n), A267788(A000124(n+5)+5))`
-/

namespace A267792.P16671604586118460382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A107045 n) (A267788 (A000124 (n + 5) + 5).toNat)

end

end A267792.P16671604586118460382

/-! ## A267792.P6046261857532105083

`A020985(n)²*A267788(A000124(n+5)+5)`
-/

namespace A267792.P6046261857532105083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A267788 (A000124 (n + 5) + 5).toNat

end

end A267792.P6046261857532105083

/-! ## A267792.P1504059322852356823

`A267788(A000124(n+5)+5)/A261517(n)!`
-/

namespace A267792.P1504059322852356823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267788 (A000124 (n + 5) + 5).toNat : ℚ) / (Nat.factorial (A261517 n).toNat : ℚ)

end

end A267792.P1504059322852356823

/-!
# A267793: Number of 7Xn 0..1 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A267793, there is no canonical definition to state claims against.
-/

/-! ## A267793.P11720729470403887197

`A267788(eq[11, A066657(n)])`
-/

namespace A267793.P11720729470403887197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A267793.P11720729470403887197

/-! ## A267793.P731565529678481280

`A267788(A167499(n+5)+2)`
-/

namespace A267793.P731565529678481280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A167499 (n + 5) + 2).toNat

end

end A267793.P731565529678481280

/-! ## A267793.P9449466076636032049

`A267788(A167614(n+5)+4)`
-/

namespace A267793.P9449466076636032049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A167614 (n + 5) + 4).toNat

end

end A267793.P9449466076636032049

/-! ## A267793.P11059543385474699576

`A267788(A000124(n+6)+6)`
-/

namespace A267793.P11059543385474699576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A000124 (n + 6) + 6).toNat

end

end A267793.P11059543385474699576

/-! ## A267793.P4004257315735927809

`A267788(A000096(n+5)+8)`
-/

namespace A267793.P4004257315735927809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267788 (A000096 (n + 5) + 8).toNat

end

end A267793.P4004257315735927809

/-!
# A267794: a(n) = n-2-i, where i (0 <= i < n-2) is the largest number such that [a(n-2)-a(i); a(n-1)-a(i+1)] = [0; 0], or a(n) = 0 if no such i exists.

The programs for A267794, there is no canonical definition to state claims against.
-/

/-! ## A267794.P3812931935925613966

`A339823(A033042(n)^A325334(n))`
-/

namespace A267794.P3812931935925613966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (SequenceMachineLib.roundAway ((A033042 n : ℚ) ^ (A325334 n : ℤ))).toNat

end

end A267794.P3812931935925613966

/-!
# A267795: Integers n such that n, 2n, 3n ... 10n contain almost equally many copies of each base 10 digit.

The programs for A267795, there is no canonical definition to state claims against.
-/

/-! ## A267795.P8826773874408479690

`A051022(lt[(n+1)/10^val(n+1, 10), 3^(n%2)])`
-/

namespace A267795.P8826773874408479690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A267795.P8826773874408479690

/-! ## A267795.P2277493553240941641

`∩[A359925(n+1), A051022(n)]`
-/

namespace A267795.P2277493553240941641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A267795.P2277493553240941641

/-! ## A267795.P7590886866369114615

`∑[A083227(n)%A155885(n+1)]`
-/

namespace A267795.P7590886866369114615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083227 n) (A155885 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267795.P7590886866369114615

/-! ## A267795.P7839773875773464753

`∑[C(A083227(n), A213217(n+2))]`
-/

namespace A267795.P7839773875773464753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083227 n).toNat (A213217 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267795.P7839773875773464753

/-!
# A267796: a(n) = (n+1)*4^(2n+1).

The programs for A267796, the canonical program `A267796.P601220203225263646` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267796 has offset 0).

The definition of A267796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*4^(2*n+1)` (program `A267796.P601220203225263646`, by `A267796.P601220203225263646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267796.P601220203225263646

`(n+1)*4^(2*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267796

/-- `(n+1)*4^(2*n+1)` -/
def P601220203225263646.Spec : Prop :=
  ∀ n, (P601220203225263646.a n : ℤ) = A267796 n

theorem P601220203225263646.correct : P601220203225263646.Spec := by
  intro n
  simp only [A267796]

end A267796

/-! ## A267796.P1105524193330533899

`32*a(n-1)-256*a(n-2)` with `a(0)=4, a(1)=128`
-/

namespace A267796.P1105524193330533899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 128] fun n a =>
  32 * a (n - 1) - 256 * a (n - 2)

end

end A267796.P1105524193330533899

namespace A267796

/-- `32*a(n-1)-256*a(n-2)` -/
def P1105524193330533899.Spec : Prop :=
  ∀ n, P1105524193330533899.a n = A267796 n

theorem P1105524193330533899.correct : P1105524193330533899.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A267796, Nat.add_sub_cancel, A267796.P1105524193330533899.a, A267796.P601220203225263646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A267796, Nat.add_sub_cancel, A267796.P1105524193330533899.a, A267796.P601220203225263646.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267796

/-! ## A267796.P14977340209922192698

`A193132(n+1)/3`
-/

namespace A267796.P14977340209922192698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193132 (n + 1) : ℚ) / 3

end

end A267796.P14977340209922192698

namespace A267796

/-- `A193132(n+1)/3` -/
def P14977340209922192698.Spec : Prop :=
  ∀ n, P14977340209922192698.a n = (A267796 n : ℚ)

end A267796

/-! ## A267796.P16189706266003071789

`floor(4*(4/n+4)*a(n-1))` with `a(0)=4`
-/

namespace A267796.P16189706266003071789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊4 * ((4 / (n : ℚ) + 4) * (a (n - 1) : ℚ))⌋

end

end A267796.P16189706266003071789

namespace A267796

/-- `floor(4*(4/n+4)*a(n-1))` -/
def P16189706266003071789.Spec : Prop :=
  ∀ n, P16189706266003071789.a n = A267796 n

end A267796

/-! ## A267796.P204441129701769775

`A079859(4*(n+1))`
-/

namespace A267796.P204441129701769775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079859 (4 * (n + 1))

end

end A267796.P204441129701769775

namespace A267796

/-- `A079859(4*(n+1))` -/
def P204441129701769775.Spec : Prop :=
  ∀ n, P204441129701769775.a n = A267796 n

end A267796

/-! ## A267796.P11541008957051977202

`A087447(4*n+2)`
-/

namespace A267796.P11541008957051977202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (4 * n + 2)

end

end A267796.P11541008957051977202

namespace A267796

/-- `A087447(4*n+2)` -/
def P11541008957051977202.Spec : Prop :=
  ∀ n, P11541008957051977202.a n = A267796 n

end A267796

/-! ## A267796.P14399137538590370777

`A129953(4*n+2)`
-/

namespace A267796.P14399137538590370777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (4 * n + 2)

end

end A267796.P14399137538590370777

namespace A267796

/-- `A129953(4*n+2)` -/
def P14399137538590370777.Spec : Prop :=
  ∀ n, P14399137538590370777.a n = A267796 n

end A267796

/-! ## A267796.P14799474984543078720

`A268147(n+1)/4`
-/

namespace A267796.P14799474984543078720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268147 (n + 1) : ℚ) / 4

end

end A267796.P14799474984543078720

namespace A267796

/-- `A268147(n+1)/4` -/
def P14799474984543078720.Spec : Prop :=
  ∀ n, P14799474984543078720.a n = (A267796 n : ℚ)

end A267796

/-! ## A267796.P18361801004316405287

`A262258(8*n+4)`
-/

namespace A267796.P18361801004316405287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (8 * n + 4)

end

end A267796.P18361801004316405287

namespace A267796

/-- `A262258(8*n+4)` -/
def P18361801004316405287.Spec : Prop :=
  ∀ n, P18361801004316405287.a n = A267796 n

end A267796

/-!
# A267797: Lucas numbers of the form (x^3 + y^3) / 2 where x and y are distinct positive integers.

The programs for A267797, the canonical program `A267797.P7624270577655389034` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267797 has offset 1).

The definition of A267797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A267797.P7624270577655389034

`A000032(A016945(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A267797

/-- `A000032(A016945(n+1))` -/
def P7624270577655389034.Spec : Prop :=
  ∀ n, P7624270577655389034.a n = A267797 (n + 1)

theorem P7624270577655389034.correct : P7624270577655389034.Spec := by
  intro n
  simp only [A267797, Nat.add_sub_cancel]

end A267797

/-! ## A267797.P11166676110340201504

`(9+4*sqrt(5))^-(n+1)*(2-sqrt(5)+(2+sqrt(5))*(9+4*sqrt(5))^(2*(n+1)))`
-/

namespace A267797.P11166676110340201504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 + 4 * Real.sqrt (5 : ℝ)) ^ (-(n + 1 : ℤ) : ℤ) * (2 - Real.sqrt (5 : ℝ) + (2 + Real.sqrt (5 : ℝ)) * (9 + 4 * Real.sqrt (5 : ℝ)) ^ (2 * (n + 1)))

end

end A267797.P11166676110340201504

namespace A267797

/-- `(9+4*sqrt(5))^-(n+1)*(2-sqrt(5)+(2+sqrt(5))*(9+4*sqrt(5))^(2*(n+1)))` -/
def P11166676110340201504.Spec : Prop :=
  ∀ n, P11166676110340201504.a n = (A267797 (n + 1) : ℝ)

end A267797

/-! ## A267797.P11135251168073359321

`Δ[A115032(n)]`
-/

namespace A267797.P11135251168073359321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267797.P11135251168073359321

namespace A267797

/-- `Δ[A115032(n)]` -/
def P11135251168073359321.Spec : Prop :=
  ∀ n, P11135251168073359321.a n = A267797 (n + 1)

end A267797

/-! ## A267797.P15927059467829388920

`Δ[A132584(n+1)]`
-/

namespace A267797.P15927059467829388920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267797.P15927059467829388920

namespace A267797

/-- `Δ[A132584(n+1)]` -/
def P15927059467829388920.Spec : Prop :=
  ∀ n, P15927059467829388920.a n = A267797 (n + 1)

end A267797

/-! ## A267797.P295026795892186813

`A041030(2*(n+1))`
-/

namespace A267797.P295026795892186813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041030 (2 * (n + 1))

end

end A267797.P295026795892186813

namespace A267797

/-- `A041030(2*(n+1))` -/
def P295026795892186813.Spec : Prop :=
  ∀ n, P295026795892186813.a n = A267797 (n + 1)

end A267797

/-! ## A267797.P3738108438169571238

`A014448(2*n+3)`
-/

namespace A267797.P3738108438169571238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 (2 * n + 3)

end

end A267797.P3738108438169571238

namespace A267797

/-- `A014448(2*n+3)` -/
def P3738108438169571238.Spec : Prop :=
  ∀ n, P3738108438169571238.a n = A267797 (n + 1)

end A267797

/-! ## A267797.P806406521183927753

`A093960(3*(n+2))`
-/

namespace A267797.P806406521183927753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093960 (3 * (n + 2))

end

end A267797.P806406521183927753

namespace A267797

/-- `A093960(3*(n+2))` -/
def P806406521183927753.Spec : Prop :=
  ∀ n, P806406521183927753.a n = A267797 (n + 1)

end A267797

/-! ## A267797.P3045224474576749040

`A245580(2*n+3)`
-/

namespace A267797.P3045224474576749040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245580 (2 * n + 3)

end

end A267797.P3045224474576749040

namespace A267797

/-- `A245580(2*n+3)` -/
def P3045224474576749040.Spec : Prop :=
  ∀ n, P3045224474576749040.a n = A267797 (n + 1)

end A267797

/-! ## A267797.P3167141856376650941

`A281387(6*(n+1))`
-/

namespace A267797.P3167141856376650941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281387 (6 * (n + 1))

end

end A267797.P3167141856376650941

namespace A267797

/-- `A281387(6*(n+1))` -/
def P3167141856376650941.Spec : Prop :=
  ∀ n, P3167141856376650941.a n = A267797 (n + 1)

end A267797

/-!
# A267799: a(n) = (1 + 2^n + 3^n)/2.

The programs for A267799, the canonical program `A267799.P15194145794972698601` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A267799 has offset 1).

The definition of A267799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+2^(n+1)+3^(n+1))/2` (program `A267799.P13120112548245436450`, by `A267799.P13120112548245436450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A267799.P13120112548245436450

`(1+2^(n+1)+3^(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267799.P13120112548245436450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + 2 ^ (n + 1) + 3 ^ (n + 1) : ℚ) / 2

end

end A267799.P13120112548245436450

namespace A267799

/-- `(1+2^(n+1)+3^(n+1))/2` -/
def P13120112548245436450.Spec : Prop :=
  ∀ n, P13120112548245436450.a n = (A267799 (n + 1) : ℚ)

theorem P13120112548245436450.correct : P13120112548245436450.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A267799, Nat.add_sub_cancel, A267799.P13120112548245436450.a, A267799.P15194145794972698601.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A267799, Nat.add_sub_cancel, A267799.P13120112548245436450.a, A267799.P15194145794972698601.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A267799

/-! ## A267799.P15194145794972698601

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=3, a(1)=7, a(2)=18`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A267799

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P15194145794972698601.Spec : Prop :=
  ∀ n, P15194145794972698601.a n = A267799 (n + 1)

theorem P15194145794972698601.correct : P15194145794972698601.Spec := by
  intro n
  simp only [A267799, Nat.add_sub_cancel]

end A267799

/-! ## A267799.P17706741624389221756

`abs(A007051(n)+Δ[A094374(n)])`
-/

namespace A267799.P17706741624389221756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007051 n + (f1 (n + 1) - f1 n)|

end

end A267799.P17706741624389221756

namespace A267799

/-- `abs(A007051(n)+Δ[A094374(n)])` -/
def P17706741624389221756.Spec : Prop :=
  ∀ n, P17706741624389221756.a n = A267799 (n + 1)

end A267799

/-! ## A267799.P5485963367421755801

`Δ[∑[A001550(n)]/2]`
-/

namespace A267799.P5485963367421755801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A267799.P5485963367421755801

namespace A267799

/-- `Δ[∑[A001550(n)]/2]` -/
def P5485963367421755801.Spec : Prop :=
  ∀ n, P5485963367421755801.a n = (A267799 (n + 1) : ℚ)

end A267799

/-! ## A267799.P10502565667375979497

`floor(A173657(n+1)/2)`
-/

namespace A267799.P10502565667375979497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173657 (n + 1) : ℚ) / 2⌋

end

end A267799.P10502565667375979497

namespace A267799

/-- `floor(A173657(n+1)/2)` -/
def P10502565667375979497.Spec : Prop :=
  ∀ n, P10502565667375979497.a n = A267799 (n + 1)

end A267799

/-! ## A267799.P13968402109318573157

`ceil(A007689(n+1)/2)`
-/

namespace A267799.P13968402109318573157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007689 (n + 1) : ℚ) / 2⌉

end

end A267799.P13968402109318573157

namespace A267799

/-- `ceil(A007689(n+1)/2)` -/
def P13968402109318573157.Spec : Prop :=
  ∀ n, P13968402109318573157.a n = A267799 (n + 1)

end A267799

